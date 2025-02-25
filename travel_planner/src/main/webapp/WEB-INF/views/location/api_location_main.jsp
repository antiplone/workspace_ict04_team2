<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<%@page import="com.spring.travel_planner.sys.Location_APIConfig"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>여기닷 - 여행지</title>

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/location/api_locationMain.css">

<%-- <!-- js -->
<script src="${path}/resources/js/location/location_main.js" defer></script>
 --%>
 
<!-- '시' 선택 시 service로 값 전달 + '구'선택 팝업창 --> 
<script>
function si_select(){
	 window.open("${path}/api_location_Select.lc?location_si=" + document.locationMain.si_choice.value, "_blank", "width=500, height=200")
 }

</script>

</head>
<body>
		<!-- 이미지 클릭 시 '구' 선택 팝업창 => 선택 완료 시 해당 '구'에 맞는 리스트 페이지로 이동 -->
		<div class="main_select" style='background-color: #e1ecf7'>
			<form name="locationMain" action="#" method="post">
				<table style="margin-left: auto; margin-right: auto;">
					<div class="container">
						<tr>
							<td class="select_td">	<!-- 전국 선택 시 별도 구 선택 없이 모든 지역 리스트 보임 -->
								
								
								<a href="${path}/location_main.lc">
								<img src="resources/local_images/전국.png" name="si_choice" id="location_all" class="location_si"></a><br>
								전국
								
								<c:forEach var="si_list" items="${si_result}">
									<input type="radio" name="si_choice" id="location_${si_list.code}" value="${si_list.code}" onclick="si_select()">
									<label for="location_${si_list.code}">
										<img src="resources/local_images/${si_list.name}.png" class="location_si">
									</label><br>
									${si_list.name}
								</c:forEach>
							</td>
							
						</tr>
					</div>
				</table>
			</form>
		</div>
		
		<!-- 지역 선택 시 보여지는 리스트 / 메인(전국) 리스트 -->
		<div class="main_list">
			<form name="localList">
				<table style="margin-left: auto; margin-right: auto;">
					<div class="main_list_tb">
						<tr class="main_list_tr">
							<c:forEach var="dto" items="${dto}">
								<td>
									<a href="${path}/location_detailAction.lc?location_num=${dto.ti_num}">
									<img src="resources/local_images/${dto.ti_detail_url}" id="list_images"></a><br>
									<div class="local_name"><strong >${dto.ti_name}</strong></div><br>
									<div class="local_gu">${dto.ti_location}</div>
								</td>
							</c:forEach>
						</tr>
					</div>
					
					<div class="main_paging">
						<tr>
							<td colspan="5" align="center">
								<!-- 페이징 처리 -->
								<!-- 이전 버튼 활성화 -->
								<c:if test="${paging.startPage > 5}">
									<a href="${path}/location_main.lc?pageNum=${paging.prev}"><input type="button" value="<<" class="page_btn"></a>
								</c:if>
								
								<!-- 페이지 번호 처리 -->
								<c:forEach var="num" begin="${paging.startPage}" end="${paging.endPage}">
									<a href="${path}/location_main.lc?pageNum=${num}"><input type="button" value="${num}" class="page_btn"></a>
								</c:forEach>
								 
								<!-- 다음 버튼 활성화 -->
								<c:if test="${paging.endPage < paging.pageCount}">
									<a href="${path}/location_main.lc?pageNum=${paging.next}"><input type="button" value=">>" class="page_btn"></a>
								</c:if>
							</td>
						</tr>
					</div>
				</table>
			</form>
		</div>
</body>
</html>