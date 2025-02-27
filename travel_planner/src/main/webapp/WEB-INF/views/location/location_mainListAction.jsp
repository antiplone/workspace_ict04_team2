<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>여기닷 - 여행지</title>

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/font.css">
<link rel="stylesheet" href="${path}/resources/css/common/common.css">
<link rel="stylesheet" href="${path}/resources/css/location/locationMain.css">

<!-- '시' 선택 시 service로 값 전달 + '구'선택 팝업창 --> 
<script>
function si_select(){
	if(document.locationMain.si_choice.value == '0'){  // '시' 값이 '전국'이면 해당 메인 페이지로 새로고침
		homeMove('${path}/location_main.lc');
	}
	else{
		window.open("${path}/location_mainSelect.lc?location_si=" + document.locationMain.si_choice.value, "child", "width=500, height=200");
	}
 }
</script>

</head>
<body>
		
		<!-- 이미지 클릭 시 '구' 선택 팝업창 => 선택 완료 시 해당 '구'에 맞는 리스트 페이지로 이동 -->
		<div class="main_select" style='background-color: #e1ecf7'>
			<form name="locationMain" action="#" method="post">
				<div class="container">
					<table style="margin-left: auto; margin-right: auto;">
						<tbody class="si_container">
							<tr>
								<c:forEach var="si_list" items="${si_list}">
									<td class="si_menu">
										<div class="si_seconde">
											<input type="radio" name="si_choice" id="location_${si_list.tc_si_num}" value="${si_list.tc_si_num}" onclick="si_select()">
											<label for="location_${si_list.tc_si_num}">
												<img src="resources/local_images/${si_list.tc_area}.png" class="location_si">
											</label>
											<div>${si_list.tc_area}</div>
										</div>
									</td>
								</c:forEach>
							</tr>
						</tbody>
					</table>
				</div>
			</form>
		</div>
		
		<!-- 지역 선택 시 보여지는 리스트 / 선택한 '구'에 맞는 리스트 -->
		<div class="main_list">
			<form name="localList">
				<table style="margin-left: auto; margin-right: auto;">
					<div class="main_list_tb">
						<tr class="main_list_tr">
							<c:choose>
								<c:when test="${not empty list}">
									<c:forEach var="dto" items="${list}">
									<td>
										<a onclick="homeMove('${path}/location_detailAction.lc?location_num=${dto.ti_num}')">
										<img src="resources/local_images/${dto.ti_detail_url}" id="list_images"></a><br>
										<div class="local_name"><strong >${dto.ti_name}</strong></div><br>
										<div class="local_gu">${dto.ti_location}</div>
									</td>
									</c:forEach>
								</c:when>
						
								<c:otherwise>
									<script>
										alert("해당 지역으로 조회되는 여행지가 없습니다!");
									</script>
									
								</c:otherwise>
							</c:choose>
						</tr>
					</div>
					
					<div class="main_paging">
						<tr>
							<td colspan="5" align="center">
								<!-- 페이징 처리 -->
								<!-- 이전 버튼 활성화 -->
								<c:if test="${paging.startPage > 5}">
									<a onclick="homeMove('${path}/location_mainListAction.lc?location_si=${tc_si_num}&location_gu=${selcet_gu}&pageNum=${paging.prev}')"><input type="button" value="[이전]" class="page_btn"></a>
								</c:if>
								
								<!-- 페이지 번호 처리 -->
								<c:forEach var="num" begin="${paging.startPage}" end="${paging.endPage}">
									<a onclick="homeMove('${path}/location_mainListAction.lc?location_si=${tc_si_num}&location_gu=${selcet_gu}&pageNum=${num}')"><input type="button" value="${num}" class="page_btn"></a>
								</c:forEach>
								 
								<!-- 다음 버튼 활성화 -->
								<c:if test="${paging.endPage < paging.pageCount}">
									<a onclick="homeMove('${path}/location_mainListAction.lc?location_si=${tc_si_num}&location_gu=${selcet_gu}&pageNum=${paging.next}')"><input type="button" value="[다음]" class="page_btn"></a>
								</c:if>
							</td>
						</tr>
					</div>
				</table>
			</form>
		</div>
</body>
</html>