<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>상품 Q&A</title>

<!-- Required CSS files -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
<link rel="stylesheet" href="/assets/css/owl.carousel.css">
<link rel="stylesheet" href="/assets/css/barfiller.css">
<link rel="stylesheet" href="/assets/css/animate.css">
<link rel="stylesheet" href="/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/assets/css/slicknav.css">
<link rel="stylesheet" href="/assets/css/main.css">
<link rel="stylesheet" href="/bootstrap.min.css">

<!-- 달력으로 날짜 선택 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
            $.datepicker.setDefaults($.datepicker.regional['ko']); 
            $( "#birthDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yymmdd",
                 maxDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                     
 
            });
             
    });
</script>
</head>
<body>
	<div style="overflow: hidden;" class="container">
		<header style="padding-bottom: 10px; padding-top: 5px;">
			<div class="container">
				<div class="row">
					<div class="col-6 col-sm-3 logo-column">
						<a href="index.html" class="logo" style="height: 70px;"> <img src="/img/branches_text.png" alt="logo" style="width: 160px; height: 70px;">
						</a>
					</div>
					<div class="col-6 col-sm-9 nav-column clearfix">
						<div class="right-nav">
							<span class="search-icon fa fa-search"></span>
							<form action="#" class="search-form">
								<input type="search" placeholder="search now">
								<button type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
							<div class="header-social">
								<a href="#" class="fa fa-facebook"></a> <a href="#" class="fa fa-twitter"></a> <a href="#" class="fa fa-github"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<nav id="menu" class="d-none d-lg-block">
				<ul style="padding: 10px; background-color: black;">
					<li class="current-menu-item has-child"><a href="index.html">OUTER</a>
						<ul class="sub-menu">
							<li><a href="index.html">Coat</a></li>
							<li><a href="index-2.html">Jarket</a></li>
							<li><a href="index-3.html">Jumper / Mustang</a></li>
							<li><a href="index-3.html">Cardigan</a></li>
							<li><a href="index-3.html">Padding</a></li>
						</ul></li>
					<li class="current-menu-item has-child"><a href="index.html">TOP</a>
						<ul class="sub-menu">
							<li><a href="index.html">T-shirt</a></li>
							<li><a href="index-2.html">Blouse / Shirt</a></li>
							<li><a href="index-3.html">Neat / Sweater</a></li>
							<li><a href="index-3.html">Hoddie</a></li>
							<li><a href="index-3.html">Sweater shirt</a></li>
							<li><a href="index-3.html">Sleeveless</a></li>
						</ul></li>
					<li class="current-menu-item has-child"><a href="index.html">BOTTOM</a>
						<ul class="sub-menu">
							<li><a href="index.html">Denim</a></li>
							<li><a href="index-2.html">Cotten</a></li>
							<li><a href="index-3.html">Short</a></li>
							<li><a href="index-3.html">Slacks</a></li>
							<li><a href="index-3.html">Training / Jogger</a></li>
							<li><a href="index-3.html">Leggings</a></li>
							<li><a href="index-3.html">Skirt</a></li>
						</ul></li>
					<li class="current-menu-item has-child"><a href="index.html">Dress</a>
						<ul class="sub-menu">
							<li><a href="index.html">Mini</a></li>
							<li><a href="index-2.html">Midi</a></li>
							<li><a href="index-3.html">Maxi</a></li>
							<li><a href="index-3.html">Overrall</a></li>
						</ul></li>
					<li class="current-menu-item has-child"><a href="index.html">Back</a>
						<ul class="sub-menu">
							<li><a href="index.html">Backpack</a></li>
							<li><a href="index-2.html">Messenger / Cross</a></li>
							<li><a href="index-3.html">Shoulder / Tod</a></li>
							<li><a href="index-2.html">Eco back</a></li>
							<li><a href="index-3.html">Clutch</a></li>
						</ul></li>
					<li class="current-menu-item has-child"><a href="index.html">Shoes</a>
						<ul class="sub-menu">
							<li><a href="index.html">Dress shoes</a></li>
							<li><a href="index-2.html">Boots</a></li>
							<li><a href="index-3.html">Sandal</a></li>
							<li><a href="index-2.html">slipper</a></li>
							<li><a href="index-3.html">Sneakers</a></li>
						</ul></li>
					<li class="current-menu-item has-child"><a href="index.html">ETC</a>
						<ul class="sub-menu">
							<li><a href="index.html">Socks</a></li>
							<li><a href="index-2.html">Cap</a></li>
							<li><a href="index-3.html">Acc</a></li>
						</ul></li>
					<li><a href="index.html" style="color: white;">|</a></li>
					<li class="current-menu-item has-child"><a href="index.html">BRAND</a>
						<ul class="sub-menu">
							<li><a href="index.html">Nike</a></li>
							<li><a href="index-2.html">Thisisneverthat</a></li>
							<li><a href="index-3.html">Covernat</a></li>
							<li><a href="index-3.html">AnderssonBell</a></li>
							<li><a href="index-3.html">Vans</a></li>
						</ul></li>
					<li class="current-menu-item has-child"><a href="index.html">MAGAZINE</a>
						<ul class="sub-menu">
							<li><a href="index.html">바로가기</a></li>
						</ul></li>
					<li class="current-menu-item has-child"><a href="index.html" style="margin-right: 38px;">NOTICE</a>
						<ul class="sub-menu">
							<li><a href="index.html">바로가기</a></li>
						</ul></li>
				</ul>
			</nav>
		</header>

		<hr style="margin: 15px 15px 40px 15px;">

		<div class="container">
			<div class="row">
				<div class="col-md-2 contact-info" align="left" style="padding-left: 40px">
					<h2>${mem.mbr_name}</h2>
					<h2>${mem.mbr_id}</h2>
				</div>
				<div class="col-md-1 contact-info" align="center" style="padding-top: 20px">
					<a href="#">정보수정</a>
				</div>
				<div class="col-md-6 contact-info"></div>
				<div class="col-md-2 contact-info" align="center" style="padding-right: 10px">
					<h2>Point</h2>
					<h3>${mem.mbr_point}</h3>
				</div>
			</div>
			<span style="margin-left: 14px;"> </span> <span style="margin-left: 400px;" align="center"> </span>
		</div>

		<hr style="margin: 15px 15px 40px 15px;">


		<!-- 리뷰 페이지 tab -->
		<div class="container">
			<div class="row">
				<div class="col-md-3 contact-info" align="center">
					<div class="single-info" style="margin-bottom: 40px">
						<h3>나의 쇼핑활동</h3>
						<hr>
						<h5>
							<a href="#">주문내역 조회</a>
						</h5>
						<h5>
							<a href="#">최근 본 상품보기</a>
						</h5>
						<h5>
							<a href="#">찜한 목록</a>
						</h5>
					</div>
					<div class="single-info" style="margin-bottom: 40px">
						<h3>매거진</h3>
						<hr>
						<h5>
							<a href="#">매거진</a>
						</h5>
					</div>
					<div class="single-info" style="margin-bottom: 40px">
						<h3>내가 쓴 글보기</h3>
						<hr>
						<h5>
							<a href="#">구매후기</a>
						</h5>
						<h5>
							<a href="#">상품문의</a>
						</h5>
						<h5>
							<a href="#">고객Q&A</a>
						</h5>
					</div>
				</div>


				<div class="col-md-9 contact-info">
					<h3>
						<strong>내가 쓴 Q&A</strong>
					</h3>
					<hr>
					<!-- Tab panes -->
					<div class="tab-content">
						<div id="review" class="container tab-pane active">
							<div class="container">
								<div class="section-title" data-margin="0 0 40px">
									<!-- 리뷰 틀 -->
									<div class="card bg-light mb-3" style="max-width: 1000px;">
										<div class="card-header">
											<div class="postContents container style_est_cont">
												<div class="profile" style="text-align: left; align-content: center;">
													<p>
														<span class="gallery_lv"> <span class="notCrawlText" style="font-weight: bold;">${board.board_name }글제목</span>
														</span> <span class="date last" style="clear: left; float: right;">${board.board_date }작성날짜</span>
												</div>
												<div class="connect_review_info" style="align-content: center;"></div>
												</p>

											</div>
										</div>
									</div>
									<div class="card-body" style="text-align: left;">
										<!--관련 상품-->
										<div class="connect_product estimate-item"></div>

										<div class="pContent">
											<!-- 요약보기 -->
											<!-- 본문 -->
											<div class="cArea">
												<div class="pContent_text">
													<span class="content-review"> 문의유형 &nbsp; </span> <strong>문의유형 맞추기</strong>
												</div>
											</div>
											<div class="cArea">
												<div class="pContent_text">
													<span class="content-review"> 주문번호 &nbsp; </span> <strong>주문번호 맞추기</strong>
												</div>
											</div>
											</br>
											<div class="cArea">
												<div class="pContent_text">
													<span class="content-review">글내용 (사진 있으면 사진 추가)
												</div>
											</div>
										</div>
									</div>
									</br>

								</div>

								<hr>

							</div>
						</div>
						<br>


						<!-- footer -->
						<footer>
							<div class="footer-top">
								<div class="container">
									<div class="row">
										<div class="col-md-6 col-lg-3 footer_widget">
											<div class="inner">
												<h4>About</h4>
											</div>
										</div>
										<div class="col-md-6 col-lg-3 footer_widget">
											<div class="inner">
												<h4>Company</h4>

											</div>
										</div>
										<div class="col-md-6 col-lg-3 footer_widget">
											<div class="inner">
												<h4>Recent Posts</h4>
											</div>
										</div>
										<div class="col-md-6 col-lg-3 footer_widget">
											<div class="inner">
												<h4 style="padding-left: 100px;">Address</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="footer-bottom">
								<div class="container">
									<div class="row">
										<div class="col-lg-6">
											<div class="copyright-txt">© 2017 Flat Pro. All Rights Reserved.</div>
										</div>
										<div class="col-lg-6 text-right">
											<div class="footer-nav">
												<a href="#">Home</a> <a href="#">Portfolio</a> <a href="#">Pages</a> <a href="#">Shortcode</a> <a href="#">Blog</a>
											</div>
										</div>
									</div>
								</div>
							</div>

						</footer>
						<div class="container-fluid">
							<small style="color: black;"> <strong>상호명 :</strong> (주)브랜치스 <strong>소재지 :</strong> 서울특별시 00구 00로00길 00 00빌딩 0층 <strong>팩스 :</strong>
								000-0000-0000 <strong>사업자등록번호 :</strong> 000-00-000000 <strong>통신판매업신고 :</strong> 0000-서울종로-00000
							</small> <br /> <small style="color: black;"><strong>고객센터</strong> 0000-0000 평일 10:00 ~ 17:00 / Off-time 12:00 ~ 14:00 (토/일/공휴일 휴무) <strong>이메일</strong>
								admin@branches.co.kr <strong>대표이사</strong> 000 <strong>개인정보책임자</strong> 000 <strong>호스팅서비스</strong> (주)00000</small>
						</div>
						<br /> <br />

						<!--Required JS files-->
						<script src="/assets/js/jquery-2.2.4.min.js"></script>
						<script src="/assets/js/vendor/popper.min.js"></script>
						<script src="/assets/js/vendor/bootstrap.min.js"></script>
						<script src="/assets/js/vendor/owl.carousel.min.js"></script>
						<script src="/assets/js/vendor/isotope.pkgd.min.js"></script>
						<script src="/assets/js/vendor/jquery.barfiller.js"></script>
						<script src="/assets/js/vendor/loopcounter.js"></script>
						<script src="/assets/js/vendor/slicknav.min.js"></script>
						<script src="/assets/js/active.js"></script>
</body>
</html>