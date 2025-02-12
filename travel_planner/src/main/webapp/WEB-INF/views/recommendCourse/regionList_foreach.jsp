<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>지역 목록</title>

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/recommendCourse/regionList.css">

<!-- js -->
<script src="https://kit.fontawesome.com/4901c67f37.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="${path}/resources/js/recommendCourse/regionDetail_modal.js" defer></script>

<!-- (3-3-2). 자바스크립트 소스 연결 -->
<!-- defer : html을 다 읽은 후에 자바스크립트를 실행한다. 페이지가 모두 로드된 후에 해당 외부 스크립트가 실행된다. -->
<script src="${path}/resources/js/recommendCourse/regionDetail.js" defer></script>

</head>
<body>
	<div class="wrap">
		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<!-- header 끝 -->
		
		
		<!-- 컨텐츠 시작 -->
		<div id="container">
			<div id="contents">
				<!-- 상단 중앙1 시작 -->
				<div id="title">
					<br><br>
					<h3 align="center">내가 가고싶은 여행지는 여기닷!</h3>
					<br><br>
					
					<div class="search" align="center">
					  <div class="container-fluid">
					    <form class="search-box" action="" method="get">
					      <input class="search-text" type="text" placeholder="가고 싶은 여행지를 입력해보세요." size="50">
					      <button class="search-btn" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
					    </form>
					  </div>
					</div>
				</div>	
				<!-- 상단 중앙1 종료 -->
				
				<!-- 중앙화면 시작 -->
				<div id="areaList">
					<c:forEach var="dto" items="${list}">
						<div id="section2">
							<div class="table_div">
								<div class="area-click-box">
									<div class="area-img">
										<a href="${path}/regionDetail.rc">
											<img src="${path}/resources/images/recommendCourse/area/${dto.tr_area_image}.jpg" class="area_img" alt="${dto.tr_area_english}" onclick="showJeju()">
										</a>
									</div>
									<div class="area-english">
										 ${dto.tr_area_english} 
									</div>

									<div class="area-korea">
										 ${dto.tr_area_korea}
									</div>
								</div>
							</div>
						</div>
					 </c:forEach>
				 </div> 
				<!-- 중앙 화면 종료 -->
			</div>
		</div>
		
		<!-- 컨텐츠 끝 -->
		
		<!-- footer 시작 -->
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		<!-- footer 끝 -->
	</div>
</body>
</html>