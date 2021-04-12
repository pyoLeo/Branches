package edu.bit.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.bit.ex.joinvo.BoardPrdctImageVO;
import edu.bit.ex.joinvo.MbrShippingVO;
import edu.bit.ex.joinvo.PrdctRegisterImageVO;
import edu.bit.ex.page.SearchCriteria;
import edu.bit.ex.vo.BoardVO;
import edu.bit.ex.vo.CategoryVO;
import edu.bit.ex.vo.MbrVO;
import edu.bit.ex.vo.OrderDetailVO;
import edu.bit.ex.vo.PrdctOrderVO;
import edu.bit.ex.vo.PrdctVO;
import edu.bit.ex.vo.ShippingVO;

@Mapper
public interface SellerMapper {

	public List<OrderDetailVO> getOrderDetail();

	public List<PrdctRegisterImageVO> getProduct();

	public List<PrdctOrderVO> getPrdOrder();

	public List<BoardVO> getBoard(SearchCriteria cri);

	// 회원 정보 수정
	public MbrVO getMemberInfo(String s_id);

	public ShippingVO getSellerAddress(String m_id);

	public void sellerInfoUpdate(MbrShippingVO mavo);

	public void sellerAddressUpdate(MbrShippingVO mavo);

	// 상품 수정
	public void prdctUpdate(PrdctRegisterImageVO prvo);

	public void prdctContentUpdate(PrdctRegisterImageVO prvo);

	// 상품 삭제
	public void prdctDelete(String prdct_id);

	// 상품 등록
	public void prdInsert(PrdctRegisterImageVO PrdctImageVO);

	// 회원정보 불러오기
	public MbrVO getSellerInfo(String mbr_id);

	/* public void setPrdctImage(String saveName); */

	public ShippingVO getAddress(String getMbr_id);

	public List<BoardPrdctImageVO> getFileName(int getBoard_id);

	public List<CategoryVO> getCategory();

	public BoardVO getContent(String getPrdct_id);

	public List<BoardVO> getbNum(int board_id);

	public BoardVO getboardId(int board_id);

	public int getTotal(SearchCriteria cri);

	public int getTotal1(SearchCriteria cri);

	public List<PrdctVO> getPrdInfo(String prdct_id);

	public PrdctVO getOption(String getPrdct_id);

}