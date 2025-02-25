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

<title>지역 목록_ 모달</title>

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/recommendCourse/regionList.css">


<!-- js -->
<script src="https://kit.fontawesome.com/4901c67f37.js" crossorigin="anonymous"></script>
<script src="${path}/resources/js/recommendCourse/regionList.js" defer></script>

</head>
<body>
	<div class="wrap">
		
		<!-- 컨텐츠 시작 -->
		<div class="container">
		
			<!-- 상단 중앙1 시작 -->
			<div id="title">
				<br><br>
				<h3 align="center" class="title pretendardfont">내가 가고싶은 여행지는 여기닷!</h3>
				<br><br>
				<!-- 
				<div class="search" align="center">
				  <div class="container-fluid">
				    <form class="rc_search-box" action="" method="get">
				      <input class="search-text pretendardfont" type="text" placeholder="가고 싶은 여행지를 입력해보세요." size="50">
				      <button class="search-btn" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
				    </form>
				  </div>
				</div>
				 -->
			</div>	
			<!-- 상단 중앙1 종료 -->
			
			<!-- 모달 버튼 -->
			<div id="areaList">
				<c:forEach var="dto" items="${list}">
				    <div class="area_list">
				            <div class="modal_popup_button">
				                <button type="button" class="modal_btn"
				                		area_id="${dto.tr_area_id}"
				                        area_english="${dto.tr_area_english}"
				                        area_korea="${dto.tr_area_korea}"
				                        area_content="${dto.tr_area_content}"
				                        area_image="${path}${dto.tr_area_image}">
				                    <img src="${path}${dto.tr_area_image}"
				                         class="area_img" 
				                        <%--  alt="${dto.tr_area_english}" --%>>
				                </button>
				            </div>
				            <div class="area_english pretendardfont">${dto.tr_area_english}</div>
				            <div class="area_korea pretendardfont">${dto.tr_area_korea}</div>
				    </div>
				</c:forEach>
					
				<!-- 모달 팝업 (forEach 바깥에 위치) -->
				<div class="modal" id="regionModal">
				    <div class="modal_popup">
				        <div class="content_box">
				            <div class="content">
				                <div class="areaContent pretendardfont">
				                    <div id="modalAreaEnglish"></div>
				                    <div id="modalAreaKorea"></div>
				                    <p id="modalAreaContent"></p>
				                    <div align="center">
				                        <input class="recommendCourseDetailButton pretendardfont" type="button" value="추천코스 보기>" onclick="modalClick('${path}')"> 
				                    </div>
				                </div>
				                <div class="area_detail_image_box">
				                    <img id="modalAreaImage" class="area_detail_image" src=""  alt="">
				                </div>
				            </div>
				        </div>
				        <button type="button" class="close_btn"><i class="fa-solid fa-xmark"></i></button>
				    </div>
				</div>
			 </div>
		 </div> 	
	</div>
</body>
</html>