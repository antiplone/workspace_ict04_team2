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
<link rel="stylesheet" href="${path}/resources/css/location/locationMain.css">

<!-- js 
<script src="${path}/resources/js/location/location_main.js" defer></script>-->

<!-- '시' 선택 시 service로 값 전달 + '구'선택 팝업창 --> 
<script>
function si_select(){
	 window.open("${path}/location_mainSelect.lc?location_si=" + document.locationMain.si_choice.value, "_blank", "width=500, height=200")
 }
</script>

</head>
<body>

		
		<!-- 지역 선택 시 보여지는 리스트 / 선택한 '구'에 맞는 리스트 -->
		<div class="main_list">
			<form name="localList">
				<table style="margin-left: auto; margin-right: auto;">
					<div class="main_list_tb">
						<tr class="main_list_tr">
							<c:choose>
								<c:when test="${not empty main_result}">
									<c:forEach var="main_list" items="${main_result}">
									<td>
										<a href="${path}/location_detailAction.lc?location_num=${main_list.contentid}">
										<img src="${main_list.firstimage}" id="list_images"></a><br>
										<div class="local_name"><strong>${main_list.title}</strong></div><br>
										<div class="local_gu">${main_list.addr1}</div>
									</td>
									</c:forEach>
								</c:when>
						
								<c:otherwise>
									<script>
										alert("해당 지역으로 조회되는 여행지가 없습니다!");
									</script>
									
								</c:otherwise>
							</c:choose>
								<!-- 검색결과 없을 시 아래 js 사용하여 여행지 메인페이지로 이동 예정 -->
								<%-- homeMove('${path/location_main.lc}'); --%>
						</tr>
					</div>
					
					<div class="main_paging">
						<tr>
							<td colspan="5" align="center">
								<!-- 페이징 처리 -->
								<!-- 이전 버튼 활성화 -->
								<c:if test="${paging.startPage > 10}">
									<a href="${path}/api_location_mainListAction.lc?pageNum=${paging.prev}"><input type="button" value="[이전]" class="page_btn"></a>
								</c:if>
								
								<!-- 페이지 번호 처리 -->
								<c:forEach var="num" begin="${paging.startPage}" end="${paging.endPage}">
									<a href="${path}api_location_mainListAction.lc?pageNum=${num}"><input type="button" value="${num}" class="page_btn"></a>
								</c:forEach>
								 
								<!-- 다음 버튼 활성화 -->
								<c:if test="${paging.endPage < paging.pageCount}">
									<a href="${path}/api_location_mainListAction.lc?pageNum=${paging.next}"><input type="button" value="[다음]" class="page_btn"></a>
								</c:if>
							</td>
						</tr>
					</div>
				</table>
			</form>
		</div>
</body>
</html>