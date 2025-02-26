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
<%-- <script src="${path}/resources/js/recommendCourse/regionList.js" defer></script> --%>

</head>

<body>
	<div class="regionList_wrap">
		
		<!-- 컨텐츠 시작 -->
		<div class="regionList_container">
		
			<!-- 상단 중앙1 시작 -->
			<div id="regionList_title">
				<br><br>
				<h3 align="center" class="regionList_title pretendardfont">내가 가고싶은 여행지는 여기닷!</h3>
				<br><br>
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
				            <div class="regionList_content">
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
<script>
function modalClick(path) {
	const modal = document.getElementById("regionModal");
	homeMove(path + "/recommendCourseList.rc?area_id=" + $("#regionModal").attr("area_id"));
    $("body").css("overflow","unset");
}

$(function(){
	// 모달 열기
	$(".modal_btn").on('click',function(){
		alert("떴다떴다");
		alert($(this).attr("area_english"))
		$("#modalAreaEnglish").text($(this).attr("area_english"));
        $("#modalAreaKorea").text($(this).attr("area_korea"));
        $("#modalAreaContent").text($(this).attr("area_content"));
        $("#modalAreaImage").attr("src", $(this).attr("area_image"));
        $("#modalAreaImage").attr("alt", $(this).attr("area_english"));
        
        $("#regionModal").css("display","block");
        $("#regionModal").attr("area_id", $(this).attr("area_id"));
        $("body").css("overflow","hidden");
	})
	
	// 모달 닫기
	$(".close_btn").on('click', function(){
		$("#modalAreaEnglish").text('');
        $("#modalAreaKorea").text('');
        $("#modalAreaContent").text('');
        $("#modalAreaImage").attr("src", '');
        $("#modalAreaImage").attr("alt", '');
        
		$("#regionModal").css("display","none");
	    $("#regionModal").attr("area_id", '');
	    $("body").css("overflow","unset");
	})
});
</script>
</html>