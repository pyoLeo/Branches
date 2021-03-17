<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<section>
		<article>
			<div id="demo" class="carousel slide" data-ride="carousel">
				<!-- 밑 사진 갯수 표시 -->
				<ul class="carousel-indicators">
					<li data-target="#demo" data-slide-to="0" class="active"></li>
					<li data-target="#demo" data-slide-to="1"></li>
					<li data-target="#demo" data-slide-to="2"></li>
					<li data-target="#demo" data-slide-to="3"></li>
				</ul>

				<!-- The slideshow -->
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="<c:url value="/img/1.jpg"/>" width="100%" height="650px">
					</div>
					<div class="carousel-item">
						<img src="<c:url value="/img/2.jpg"/>" width="100%" height="650px">
					</div>
					<div class="carousel-item">
						<img src="<c:url value="/img/3.jpg"/>" width="100%" height="650px">
					</div>
					<div class="carousel-item">
						<img src="<c:url value="/img/4.jpg"/>" width="100%" height="650px">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span class="carousel-control-prev-icon"></span>
				</a> <a class="carousel-control-next" href="#demo" data-slide="next"> <span class="carousel-control-next-icon"></span>
				</a>
			</div>
		</article>
		<br />
		<br />
		<br />
		<br />
		<br />
		<article>
			<!-- 상품소개 1 -->
			<div>
				<h2 style="text-align: center; font-family: fantasy;">New Arrival</h2>
				<br />
				<br /> <span class="col"> <img src="<c:url value="/img/5.jpg"/>" width="345px" height="500px">
				</span> <span class="col"> <img src="<c:url value="/img/6.jpg"/>" width="345px" height="500px">
				</span> <span class="col"> <img src="<c:url value="/img/7.jpg"/>" width="345px" height="500px">
				</span> <span class="col"> <img src="<c:url value="/img/8.jpg"/>" width="350px" height="500px">
				</span>
			</div>
		</article>
		<article>
			<a class="text-dark" href="#" style="text-decoration: none; float: left;">
				<p>
					<strong><h5>&nbsp;&nbsp;&nbsp;Balenciaga</h5></strong>
				</p>
				<h6>
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>[단독]</strong> Denim Jaket & Denim Pants
				</h6> <br />
				<h5>
					&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
				</h5>
			</a> <a class="text-dark" href="#" style="text-decoration: none; float: left; margin-left: 110px;">
				<p>
					<strong><h5>&nbsp;&nbsp;&nbsp;&nbsp;Balenciaga</h5></strong>
				</p>
				<h6>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>[단독]</strong> Denim Jaket & Denim Pants
				</h6> <br />
				<h5>
					&nbsp;&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
				</h5>
			</a> <a class="text-dark" href="#" style="text-decoration: none; float: left; margin-left: 110px;">
				<p>
					<strong><h5>&nbsp;&nbsp;&nbsp;&nbsp;Balenciaga</h5></strong>
				</p>
				<h6>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>[단독]</strong> Denim Jaket & Denim Pants
				</h6> <br />
				<h5>
					&nbsp;&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
				</h5>
			</a> <a class="text-dark" href="#" style="text-decoration: none; float: left; margin-left: 110px;">
				<p>
					<strong><h5>&nbsp;&nbsp;&nbsp;&nbsp;Balenciaga</h5></strong>
				</p>
				<h6>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>[단독]</strong> Denim Jaket & Denim Pants
				</h6> <br />
				<h5>
					&nbsp;&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
				</h5>
			</a>
		</article>
		<!-- 상품소개 1 end -->
		<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
		<!-- 상품소개 2 -->
		<article>
			<div>
				<h2 style="text-align: center; font-family: fantasy;">Best Pick</h2>
				<br />
				<br /> <span class="col"> <img src="<c:url value="/img/5.jpg"/>" width="345px" height="500px">
				</span> <span class="col"> <img src="<c:url value="/img/6.jpg"/>" width="345px" height="500px">
				</span> <span class="col"> <img src="<c:url value="/img/7.jpg"/>" width="345px" height="500px">
				</span> <span class="col"> <img src="<c:url value="/img/8.jpg"/>" width="350px" height="500px">
				</span>
			</div>
		</article>
		<article>
			<a class="text-dark" href="#" style="text-decoration: none; float: left;">
				<p>
					<strong><h5>&nbsp;&nbsp;&nbsp;Balenciaga</h5></strong>
				</p>
				<h6>
					&nbsp;&nbsp;&nbsp;&nbsp;<strong>[단독]</strong> Denim Jaket & Denim Pants
				</h6> <br />
				<h5>
					&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
				</h5>
			</a> <a class="text-dark" href="#" style="text-decoration: none; float: left; margin-left: 110px;">
				<p>
					<strong><h5>&nbsp;&nbsp;&nbsp;&nbsp;Balenciaga</h5></strong>
				</p>
				<h6>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>[단독]</strong> Denim Jaket & Denim Pants
				</h6> <br />
				<h5>
					&nbsp;&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
				</h5>
			</a> <a class="text-dark" href="#" style="text-decoration: none; float: left; margin-left: 110px;">
				<p>
					<strong><h5>&nbsp;&nbsp;&nbsp;&nbsp;Balenciaga</h5></strong>
				</p>
				<h6>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>[단독]</strong> Denim Jaket & Denim Pants
				</h6> <br />
				<h5>
					&nbsp;&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
				</h5>
			</a> <a class="text-dark" href="#" style="text-decoration: none; float: left; margin-left: 110px;">
				<p>
					<strong><h5>&nbsp;&nbsp;&nbsp;&nbsp;Balenciaga</h5></strong>
				</p>
				<h6>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>[단독]</strong> Denim Jaket & Denim Pants
				</h6> <br />
				<h5>
					&nbsp;&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
				</h5>
			</a>
		</article>
		<!-- 상품소개 2 end -->
		<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
			<h1 style="text-align: center;">나중에 추가사항있으시면 반영해서 넣겠습니다.</h1>
		<!-- footer -->
	</section>
	<article>
		<nav>
			<ul class="nav justify-content-center bg-dark" style="font-family: sans-serif;">
				<li class="nav-item col-md"><a class="nav-link text-white" href="#">회사소개</a></li>
				<li class="nav-item col-md"><a class="nav-link text-white" href="#">제휴문의</a></li>
				<li class="nav-item col-md"><a class="nav-link text-white" href="#">이용약관</a></li>
				<li class="nav-item col-md"><a class="nav-link text-white" href="#">고객센터</a></li>
				<li class="nav-item col-md"><a class="nav-link text-white" href="#">채용정보</a></li>
				<li class="nav-item col-md"><a class="nav-link text-white" href="#">개인정보처리방침</a></li>
			</ul>
		</nav>
	</article>
	<footer style="overflow: hidden;">
		<br/>
		<div style="float: left; margin-left: 160px; font-family: fantasy;">
			<h4>Notice</h4>
			<ul class="nav flex-column">
				<li class="nav-item"><a class="nav-link text-dark" href="#">[공지] 개인정보 처리방침 변경 사전 안내</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">[공지] 개인정보 처리방침 변경 사전 안내</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">[공지] 개인정보 처리방침 변경 사전 안내</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">[공지] 이용약관 변경 사전 안내</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">[공지] 이용약관 변경 사전 안내</a></li>
			</ul>
		</div>
		<div style="float: left; margin-left: 160px; font-family: fantasy;">
			<h4>User Q&A</h4>
			<ul class="nav flex-column">
				<li class="nav-item"><a class="nav-link text-dark" href="#">[질문] 배송소요일 질문!</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">[질문] 상품반품 질문!</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">[질문] 비밀번호 변경 질문입니다.</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">[질문] 결제관련 질문입니다.</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">[질문] 고객센터 안내질문입니다.</a></li>
			</ul>
		</div>
		<div style="float: left; margin-left: 160px; font-family: fantasy;">
			<h4>Review</h4>
			<ul class="nav flex-column ">
				<li class="nav-item"><a class="nav-link text-dark" href="#">[리뷰] 첫 구매 리뷰입니다~</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">[리뷰] 너무 맘에 들어요!!</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">[리뷰] 믿고 사는 브랜드입니다^^</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">[리뷰] 배송빠르고 상품퀼리티도 좋아여!!</a></li>
				<li class="nav-item"><a class="nav-link text-dark" href="#">[리뷰] 매일입고싶은 옷이에요!!</a></li>
			</ul>
		</div>
	</footer>
	<hr>
	<div class="container-fluid">
		<small> <strong>상호명 :</strong> (주)브랜치스 <strong>소재지 :</strong> 서울특별시 00구 00로00길 00 00빌딩 0층 <strong>팩스 :</strong> 000-0000-0000 <strong>사업자등록번호
				:</strong> 000-00-000000 <strong>통신판매업신고 :</strong> 0000-서울종로-00000
		</small> <br /> <small><strong>고객센터</strong> 0000-0000 평일 10:00 ~ 17:00 / Off-time 12:00 ~ 14:00 (토/일/공휴일 휴무) <strong>이메일</strong>
			customer@29cm.co.kr <strong>대표이사</strong> 000 <strong>개인정보책임자</strong> 000 <strong>호스팅서비스</strong> (주)00000</small>
	</div>
	<br/><br/>
</body>
</html>