<%@page import="com.spring.travel_planner.sys.APIConfig"%>
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
<script type="text/javascript">
	$(function() {
		console.log("들어오나?");
		let asJson = ${requestAreaCode1};
		console.log(asJson);
		let tourAPI = "<%= APIConfig.TourAPI.valueOfLabel("한국어/지역코드조회") %>";
		$.getJSON(tourAPI, asJson).done(function(data) {

			const modalBtn = document.querySelectorAll(".modal_btn");

			let areaCode = data.response.body.items.item;
			console.log(areaCode);
			for (let ac of areaCode) {
//				console.log(code.name);
				modalBtn.forEach(function (btn) {
					let areaKorea = btn.getAttribute("area_korea");
//					console.log("areaKorea : " + areaKorea);
					let acName = ac.name.slice(0, 2); // 지역명칭을 앞에서부터 두글자만 자른다.
 					if (areaKorea.includes(acName)) {
						console.log(acName + " 찾았다");
						btn.setAttribute("area_id", ac.code);
						console.log(btn.getAttribute("area_id"));
					}
				});

				asJson.areaCode = ac.code;
				$.getJSON(tourAPI, asJson).done(function(data) {

					let exclude = ["부산", "제주"];
					let sigunguCode = data.response.body.items.item;
					sigunguCode = sigunguCode.filter(function(value, index, arr) { // 부산, 제주가 들어간 시군구 명칭은 뺸다.
						let sgcName = value.name;
						for(let loc of exclude) {
							if (sgcName.includes(loc))
								return false;
						}

						return true;
					});

					for (let sgc of sigunguCode) {
						modalBtn.forEach(function (btn) {
							let areaKorea = btn.getAttribute("area_korea");
//							console.log("areaKorea : " + areaKorea);
							let sgcName = sgc.name.slice(0, 2); // 지역명칭을 앞에서부터 두글자만 자른다.
		 					if (areaKorea.includes(sgcName)) {
								console.log(sgcName + " 찾았다");
								let areaId = btn.getAttribute("area_id");
								if (areaId == "")
									btn.setAttribute("area_id", sgc.code);
								else btn.setAttribute("area_id", areaId + '@' + sgc.code);
								console.log(btn.getAttribute("area_id"));
							}
						});
					}

					if (asJson.areaCode == 39)
						areaList.setAttribute("style", "visibility: visible;");
				});
			}

/*			asJson.areaCode = 35;
 			$.getJSON(tourAPI, asJson).done(function(data) {
				const areaList = document.getElementById("areaList");
				document.querySelectorAll(".modal_btn").forEach(function (button) {
					let areaID = button.getAttribute("area_id");
					console.log("area_id : " + areaID);
				});
				console.log(data);
			}); */
		});
	});
</script>

</head>
<body>
	<div class="wrap">
		
		<!-- 컨텐츠 시작 -->
		<div class="container">
		
			<!-- 상단 중앙1 시작 -->
			<div id="title">
				<br><br>
				<h3 align="center" class="title">내가 가고싶은 여행지는 여기닷!</h3>
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
			
			<!-- 모달 버튼 -->
			<div id="areaList" style="visibility: hidden;">
				<c:forEach var="dto" items="${list}">
				    <div class="area_list">
				            <div class="modal_popup_button">
				                <button type="button" class="modal_btn"
				                		area_id=""
				                		sigungu_id=""
				                        area_english="${dto.tr_area_english}"
				                        area_korea="${dto.tr_area_korea}"
				                        area_content="${dto.tr_area_content}"
				                        area_image="${path}${dto.tr_area_image}">
				                    <img src="${path}${dto.tr_area_image}"
				                         class="area_img" 
				                        <%--  alt="${dto.tr_area_english}" --%>>
				                </button>
				            </div>
				            <div class="area_english">${dto.tr_area_english}</div>
				            <div class="area_korea">${dto.tr_area_korea}</div>
				    </div>
				</c:forEach>
					
				<!-- 모달 팝업 (forEach 바깥에 위치) -->
				<div class="modal" id="regionModal">
				    <div class="modal_popup">
				        <div class="content_box">
				            <div class="content">
				                <div class="areaContent">
				                    <div id="modalAreaEnglish"></div>
				                    <div id="modalAreaKorea"></div>
				                    <p id="modalAreaContent"></p>
				                    <div align="center">
				                        <input class="recommendCourseDetailButton" type="button" value="추천코스 보기>" onclick="modalClick('${path}')"> 
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