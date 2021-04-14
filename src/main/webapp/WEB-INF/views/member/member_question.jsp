<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Branches : My User Q&A Write</title>
	
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
	
	<!-- AJAX 처리용 JQUERY -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<!-- 작성 폼 스크립트 -->
	<script type="text/javascript">
   	$(document).ready(function(){
      $("#writeForm").submit(function(event){         
           event.preventDefault();
           var mbr_id = $("#mbr_id").val();
           var inquiry_number = $("#inquiry_number").val();
           var board_name = $("#board_name").val();
           var board_content = $("#board_content").val();           
           
           console.log(mbr_id);
           console.log(inquiry_number);
           console.log(board_name);
           console.log(board_content);
           console.log($(this).attr("action"));    
           
           var form = {
        		 mbr_id: mbr_id,
        		 inquiry_number: inquiry_number,
                 board_name: board_name,
                 board_content: board_content
           };
           $.ajax({
             type : "POST",
             url : $(this).attr("action"),
             cache : false,
             contentType:'application/json; charset=utf-8',
             data: JSON.stringify(form),
             success: function (result) {       
               if(result == "SUCCESS"){     
                  $(location).attr('href', '${pageContext.request.contextPath}/member/mypage/myqna/list')                            
               }                       
             },
             error: function (e) {
                 console.log(e);
                 alert('업로드에 실패하였습니다.');
                 location.reload(); // 실패시 새로고침하기
             }
         })            
       });       
   	});
	</script>
</head>
<body>
	<div style="overflow: hidden;" class="container">
		<!-- header -->
		<jsp:include page="${pageContext.request.contextPath }/WEB-INF/views/common/header.jsp"></jsp:include>

		<div class="container">

			<span style="margin-left: 14px;"> </span> <span style="margin-left: 400px;" align="center"> </span>
		</div>


		<div class="container" style="">
			<div class="row">

				<div class="col-md-9 contact-info" style="margin: auto;">
					<hr>
					<h3 style="text-align: center;">
						<strong>고객 Q&A 작성</strong>
					</h3>
					<hr>
					<!-- 작성 폼 -->
					<form id="writeForm" method="post" action="${pageContext.request.contextPath}/member/mypage/myqna/write">
						<fieldset>
							<input type="hidden" id="mbr_id" value="${mbr.mbr_id}">
							<div class="form-group row">
								<label class="col-md-2 col-form-label">문의유형</label>
								<div class="col-sm-10">
									<select id="inquiry_number" class="form-control" title="유형을 선택하세요" style="height: 45px;">
										<option value="8" <c:if test="${inquiry_number eq 8}">selected</c:if>>포인트</option>
										<option value="9" <c:if test="${inquiry_number eq 9}">selected</c:if>>회원관련</option>
										<option value="10" <c:if test="${inquiry_number eq 10}">selected</c:if>>기타</option>
									</select>
								</div>
							</div>

							<!-- 							<div class="form-group row">
								<label for="staticEmail" class="col-sm-2 col-form-label">주문번호</label>
								<div class="col-sm-10">
									<input type="text" class="form-control col-sm-8" placeholder="주문번호를 입력하세요">		
									<button type="button" class="btn btn-primary" style="display: inline-block; float: left;">조회</button>
									<div>
										<label class="form-check-label"> 
											<input class="form-check-input" type="checkbox" value="" style="float: left;">주문번호 없이 문의 
										</label>
									</div>
								</div>
								
							</div> -->

							<div class="form-group row">
								<label class="col-sm-2 col-form-label">제목</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="board_name" name="board_name" placeholder="제목을 입력하세요">
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-2 col-form-label">내용</label>
								<div class="col-sm-10">
									<textarea class="form-control" rows="10" id="board_content" name="board_content" placeholder="문의 내용을 입력하세요"></textarea>
								</div>
							</div>
						</fieldset>

						<div align="center" style="padding: 1% 0px 1% 0px;">
							<div>
								<button type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/member/mypage/myqna/list'">목록보기</button>
								&nbsp;
								<button type="submit" class="btn btn-primary">작성하기</button>
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>

		<hr>

		<!-- footer -->
		<jsp:include page="${pageContext.request.contextPath }/WEB-INF/views/common/footer.jsp"></jsp:include>

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
	</div>
</body>
</html>