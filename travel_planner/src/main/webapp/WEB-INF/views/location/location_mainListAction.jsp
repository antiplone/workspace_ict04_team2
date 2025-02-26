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
		
		<!-- 이미지 클릭 시 '구' 선택 팝업창 => 선택 완료 시 해당 '구'에 맞는 리스트 페이지로 이동 -->
		<div class="main_select" style='background-color: #e1ecf7'>
			<form name="locationMain" action="#" method="post">
				<table style="margin-left: auto; margin-right: auto;">
					<div class="container">
						<tr>
							<td class="si_title">	<!-- 전국 선택 시 별도 구 선택 없이 모든 지역 리스트 보임 -->
								<a onclick="homeMove('${path}/location_main.lc')" style="display: inline-block;width:150px"">
								<img src="resources/local_images/전국.png" name="si_choice" id="location_all" class="location_si"></a>
								전국 <br>
								
								<div class="si_seconde">
									<input type="radio" name="si_choice" id="location_kangwon" value="32" onclick="si_select()">
									<label for="location_kangwon">
										<img src="resources/local_images/강원.png" class="location_si">
									</label>
									강원
								</div>
							</td>
							
							<td class="si_title">
								<input type="radio" name="si_choice" id="location_seoul" value="1" onclick="si_select()">
								<label for="location_seoul">
									<img src="resources/local_images/select_seoul.png" class="location_si">
								</label>
								서울<br>
								
								<div class="si_seconde">
									<input type="radio" name="si_choice" id="location_chungbuk" value="33" onclick="si_select()">
									<label for="location_chungbuk">
										<img src="resources/local_images/충북.png" class="location_si">
									</label>
									충북
								</div>
							</td>
							
							<td class="si_title">
								<input type="radio" name="si_choice" id="location_incheon" value="2" onclick="si_select()">
								<label for="location_incheon">
									<img src="resources/local_images/select_incheon.png" class="location_si">
								</label>
								인천<br>
								
								<div class="si_seconde">
									<input type="radio" name="si_choice" id="location_chungnam" value="34" onclick="si_select()">
									<label for="location_chungnam">
										<img src="resources/local_images/충남.png" class="location_si">
									</label>
									충남
								</div>
							</td>
							
							<td class="si_title">
								<input type="radio" name="si_choice" id="location_daejeon" value="3" onclick="si_select()">
								<label for="location_daejeon" id="choice_daejeon">
									<img src="resources/local_images/대전.png" class="location_si">
								</label>
								대전<br>
								
								<div class="si_seconde">
									<input type="radio" name="si_choice" id="location_keongbuk" value="35" onclick="si_select()">
									<label for="location_keongbuk">
										<img src="resources/local_images/경북.png" class="location_si">
									</label>
									경북
								</div>
							</td>
							
							<td class="si_title">
								<input type="radio" name="si_choice" id="location_daegu" value="4" onclick="si_select()">
								<label for="location_daegu">
									<img src="resources/local_images/대구.png" class="location_si">
								</label>
								대구<br>
								
								<div class="si_seconde">
									<input type="radio" name="si_choice" id="location_keongnam" value="36" onclick="si_select()">
									<label for="location_keongnam">
										<img src="resources/local_images/경남.png" class="location_si">
									</label>
									경남
								</div>
							</td>
							
							<td class="si_title">
								<input type="radio" name="si_choice" id="location_gwangju" value="5" onclick="si_select()">
								<label for="location_gwangju" id="choice_daejeon">
									<img src="resources/local_images/광주.png" class="location_si">
								</label>
								광주<br>
								
								<div class="si_seconde">
									<input type="radio" name="si_choice" id="location_jeonbuk" value="37" onclick="si_select()">
									<label for="location_jeonbuk">
										<img src="resources/local_images/전북.png" class="location_si">
									</label>
									전북
								</div>
							</td>
							
							<td class="si_title">
								<input type="radio" name="si_choice" id="location_busan" value="6" onclick="si_select()">
								<label for="location_busan">
									<img src="resources/local_images/select_busan.png" class="location_si">
								</label>
								부산<br>
								
								<div class="si_seconde">
									<input type="radio" name="si_choice" id="location_jeonnam" value="38" onclick="si_select()">
									<label for="location_jeonnam">
										<img src="resources/local_images/전남.png" class="location_si">
									</label>
									전남
								</div>
							</td>

							<td class="si_title">
								<input type="radio" name="si_choice" id="location_ulsan" value="7" onclick="si_select()">
								<label for="location_ulsan">
									<img src="resources/local_images/울산.png" class="location_si">
								</label>
								울산
								
								<div class="si_seconde">
									<input type="radio" name="si_choice" id="location_jaeju" value="39" onclick="si_select()">
									<label for="location_jaeju">
										<img src="resources/local_images/제주.png" class="location_si">
									</label>
									제주
								</div>
							</td>
							
							<td class="si_title">
								<input type="radio" name="si_choice" id="location_keongki" value="31" onclick="si_select()">
								<label for="location_keongki">
									<img src="resources/local_images/경기.png" class="location_si">
								</label>
								경기<br>
								
								<div class="si_seconde">
									<input type="radio" name="si_choice" id="location_saejong" value="8" onclick="si_select()">
									<label for="location_saejong">
										<img src="resources/local_images/세종.png" class="location_si">
									</label>
									세종
								</div>
							</td>
						</tr>
					</div>
				</table>
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