package edu.bit.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import edu.bit.ex.config.auth.MemberDetails;
import edu.bit.ex.joinvo.PrdctRegisterImageVO;
import edu.bit.ex.page.PrdQnACriteria;
import edu.bit.ex.page.PrdReviewCriteria;
import edu.bit.ex.page.PrdReviewPageVO;
import edu.bit.ex.page.PrdctListCriteria;
import edu.bit.ex.page.PrdctListPageVO;
import edu.bit.ex.service.CommonService;
import edu.bit.ex.service.SecurityService;
import edu.bit.ex.vo.BoardCommentVO;
import edu.bit.ex.vo.MbrVO;
import edu.bit.ex.vo.PrdctLikeVO;
import edu.bit.ex.vo.PrdctVO;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@AllArgsConstructor
@RestController
public class CommonController {
	@Autowired
	private SecurityService securityService;
	private CommonService commonService;

	// 메인 페이지
	@GetMapping("/main")
	public ModelAndView main(ModelAndView mav, PrdctVO prdctVO) throws Exception {
		log.info("main.......");
		mav.setViewName("common/main");
		// mav.addObject("prdct", commonService.getProduct("테스트"));
		/* 하나씩 불러올때 ("해당 컬럼속성의 db값을 적기") */
		mav.addObject("prdct", commonService.getProduct());
		return mav;
	}

	// 전체 상품리스트 필요없을
	@GetMapping("/prdct")
	public ModelAndView prdctList(ModelAndView mav, PrdctListCriteria cri) {
		mav.setViewName("common/prdct_list");
		// mav.addObject("prdct", commonService.getPrdctListWithCri(cri));
		// mav.addObject("pageMaker", new PrdctListPageVO(cri, total));
		// log.info("total : " + total);
		return mav;
	}

	// 상품 상세페이지
	// @RequestMapping(value = "/prdct/{prdct_id}", method = { RequestMethod.POST, RequestMethod.GET })
	/* (나민우) 찜하기를 POST로 해놨는데 해당 method 속성에 RequestMethod.POST가 있어 충돌이 생겨 GetMapping으로 수정했습니다 */
	/* 자세한 사항은 https://imucoding.tistory.com/217 */
	@RequestMapping(value = "/prdct/{prdct_id}", method = { RequestMethod.GET })
	public ModelAndView productDetail(@PathVariable("prdct_id") String p_id, @AuthenticationPrincipal MemberDetails memberDetails,
			PrdReviewCriteria rcri, PrdQnACriteria qacri, PrdctLikeVO prdctLikeVO, ModelAndView mav) throws Exception {
		// MemberDetails이 null일 때 ModelAndView에 addObject를 하면 예외처리가 된다
		// 따라서 null일 때(로그인 상태가 아닐때) 해당 정보를 addObject 하지 않고 페이지를 출력한다
		if (memberDetails != null) {
			// 인증 회원 정보
			MbrVO getMbr = securityService.getMbr(memberDetails.getUserID());
			// 회원 정보 받아오기(찜하기 기능시 필요함)
			mav.addObject("mbr", getMbr);
		}

		PrdctRegisterImageVO prdctvo = commonService.getPrdctBoard(p_id);
		// == (나민우) 찜하기 하는데 해당 라인 때문에 에러가 나서... 이거 뭔가요 ㅠ ==
		// prdctvo.setCategory_name(commonService.getCategoryName(prdctvo.getCategory_number()));
		// ============================================================
		log.info("product..");
		// 상품 정보
		mav.setViewName("common/productDetail");

		// 상품정보 뿌리기
		mav.addObject("prdct", prdctvo);
		// mav.addObject("id", commonService.getboardId(board_id));

		// 리뷰 관련
		log.info("reviewList..");
		mav.addObject("reviewList", commonService.getReviewList(rcri, p_id));
		int r_total = commonService.getPrdctReviewTotal(rcri, p_id);
		mav.addObject("PageMaker", new PrdReviewPageVO(rcri, r_total));

		// 큐앤에이 관련
		log.info("prdQnAList...");
		mav.addObject("prdQnAList", commonService.getPrdQnAList(qacri, p_id));
		// int total = commonService.getPrdQnATotal(cri);
		// log.info("total" + total);
		// mav.addObject("pageMaker", new PrdQnAPageVO(cri, total));

		// 해당 상품 찜 여부 확인용 데이터 가져오기
		log.info("prdLike...");
		mav.addObject("prdLikeVal", commonService.getPrdLikeVal(p_id));

		return mav;
	}

	// 모달 댓글
	@PutMapping("/prdct/{prdct_id}")
	public ResponseEntity<String> modalReply(@RequestBody BoardCommentVO boardCommentVO, ModelAndView modelAndView) {
		ResponseEntity<String> entity = null;

		log.info("modalReply...");
		try {
			// commonService.setModalReply(boardCommentVO);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	// 상품 상세페이지 찜하기 기능
	@Transactional(rollbackFor = Exception.class)
	@PostMapping("/prdct/{prdct_id}")
	public ResponseEntity<String> prdctLike(@RequestBody PrdctLikeVO prdctLikeVO) {
		ResponseEntity<String> entity = null;

		log.info("prdctLike...");
		try {
			commonService.setPrdctLike(prdctLikeVO);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	// 상품 상세페이지 찜취소 기능
	@Transactional(rollbackFor = Exception.class)
	@DeleteMapping("/prdct/{prdct_id}")
	public ResponseEntity<String> prdctLikeCancel(PrdctLikeVO prdctLikeVO) {
		ResponseEntity<String> entity = null;

		log.info("prdctLikeCancel...");
		try {
			commonService.prdctLikeCancel(prdctLikeVO);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	// 카테고리별 상품리스트
	// @RequestMapping(value = "/category/{category_id}", method = { RequestMethod.POST, RequestMethod.GET })
	@RequestMapping(value = "/category/{category_id}", method = { RequestMethod.GET })
	public ModelAndView categoryPrdctList(@PathVariable("category_id") int c_id, PrdctListCriteria cri, ModelAndView mav) {
		mav.setViewName("common/category_prdct_list");
		mav.addObject("prdct", commonService.getCategoryPrdctListWithCri(cri, c_id));
		mav.addObject("category", commonService.getCategory(c_id));
		int total = commonService.getCategoryTotalCount(cri, c_id);
		mav.addObject("pageMaker", new PrdctListPageVO(cri, total));
		log.info("total : " + total);
		return mav;
	}

	// 브랜드별 상품리스트
	// @RequestMapping(value = "/brand/{brand_id}", method = { RequestMethod.POST, RequestMethod.GET })
	@RequestMapping(value = "/brand/{brand_id}", method = { RequestMethod.GET })
	public ModelAndView brandPrdctList(@PathVariable("brand_id") String b_id, PrdctListCriteria cri, ModelAndView mav) {
		mav.setViewName("common/brand_prdct_list");
		/*
		 * mav.addObject("mbr", commonService.getMemberInfo(b_id)); mav.addObject("prdct", commonService.getBrandPrdctListWithCri(cri, b_id)); int
		 * total = commonService.getBrandTotalCount(cri, b_id); mav.addObject("pageMaker", new PrdctListPageVO(cri, total)); log.info("total : " +
		 * total);
		 */
		return mav;
	}
}