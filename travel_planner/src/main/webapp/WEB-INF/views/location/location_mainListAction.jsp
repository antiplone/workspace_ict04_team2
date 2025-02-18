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
<link rel="stylesheet" href="${path}/resources/css/location/locationMain.css">



<script>
/* $(function() {
    let tourAPI = "http://apis.data.go.kr/B551011/KorService1/detailCommon1?ServiceKey=vQkOIwgxBt6hPrd9oi4ilRgPxTnXhFRqIz7ouD4HcxfgOEeCxXczaQREqB%2BjK4xU5q2kdCMqR1HxfC4woJd9Yg%3D%3D&contentTypeId=38&contentId=2750143&MobileOS=ETC&MobileApp=AppTest&defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&_type=json";
    $.getJSON(tourAPI)
       .done(function(data) {
          $.each(data.response, function(i, item) {
             console.log(item);
             $("body").append(JSON.stringify(item));
//             window.location = "login_action.do?item=" + item;
          });
       });
 }); */

 
/* '시' 선택 시 service로 값 전달 + '구'선택 팝업창 */
    function si_select(){
	 window.open("${path}/location_mainSelect.lc?location_si=" + document.locationMain.si_choice.value, "_blank", "width=500, height=200")
 } 
 
 

 /* '전국' 클릭 시 메인페이지 새로고침 */
/*  function si_selectAll() {
	 location.href="${path}/location_mainSelect.lc";
 } */
 
 </script>
 
<%--  <script src="${path}/resources/js/location_select.js" defer> </script> --%>
</head>
<body>
		
		<!-- 이미지 클릭 시 '구' 선택 팝업창 => 선택 완료 시 해당 '구'에 맞는 리스트 페이지로 이동 -->
		<div class="main_select" style='background-color: #e1ecf7'>
			<form name="locationMain" action="#" method="post">
				<table style="margin-left: auto; margin-right: auto;">
					<div class="container">
						<tr>
							<td>	<!-- 전국 선택 시 별도 구 선택 없이 모든 지역 리스트 보임 -->
								<a href="${path}/location_main.lc">
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
							
							<td>
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
							
							<td>
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
							
							<td>
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
							
							<td>
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
							
							<td>
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
							
							<td>
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

							<td>
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
							
							<td>
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
		
		<!-- 지역 선택 시 보여지는 리스트 / 메인(전국) 리스트 -->
		<div class="main_list">
			<form name="localList">
				<table style="margin-left: auto; margin-right: auto;">
					<div class="main_list_tb">
						<tr class="main_list_tr">
							<c:forEach var="dto" items="${list}">
								<td>
									<a href="${path}/${dto.ti_detail_imgUrl}">
									<img src="resources/local_images/${dto.ti_detail_url}" id="list_images"></a> <br>
									<div class="local_name"><strong >${dto.ti_name}</strong></div><br>
									<div class="local_gu">${dto.ti_location}</div>
								</td>
							</c:forEach>
						</tr>
					</div>
<!-- 						<td>
							<img src="resources/local_images/서울 명동성당.png" id="list_images"><br>
						</td>
						<td>
							<img src="resources/local_images/하늘공원.png" id="list_images"><br>
						</td>
						<td>
							<img src="resources/local_images/창경궁.png" id="list_images"><br>
						</td>
						 -->

					<%-- <tr>
						<c:forEach var="dto" items="${dto}">
							<td><strong>${dto.detail_name}</strong><br>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach var="dto" items="${dto}">
							<td style="padding:0px 60px 50px"><p style="font-size:13px">${dto.detail_location}</p></td>
						</c:forEach>
					</tr> --%>
					
					<div class="main_paging">
						<tr>
							<td colspan="5" align="center">
								<!-- 페이징 처리 -->
								<!-- 이전 버튼 활성화 -->
								<c:if test="${paging.startPage > 10}">
									<a href="${path}/location_main.lc?pageNum=${paging.prev}">[이전]</a>
								</c:if>
								
								<!-- 페이지 번호 처리 -->
								<c:forEach var="num" begin="${paging.startPage}" end="${paging.endPage}">
									<a href="${path}/location_main.lc?pageNum=${num}">${num}</a>
								</c:forEach>
								 
								<!-- 다음 버튼 활성화 -->
								<c:if test="${paging.endPage < paging.pageCount}">
									<a href="${path}/location_main.lc?pageNum=${paging.next}">[다음]</a>
								</c:if>
							</td>
						</tr>
					</div>
				</table>
			</form>
		</div>
		
		<!-- 제일 최근것 -->
<%-- 		

 						<tr>
							<td>	<!-- 전국 선택 시 별도 구 선택 없이 모든 지역 리스트 보임 -->
								<a href="${path}/location_main.lc">
								<img src="resources/local_images/select_all.png" name="si_choice" id="location_all" class="location_si"></a><br>
								전국
							</td>
							
							<td align="center">
						<input type="radio" name="si_choice" id="location_seoul" value="1" onclick="si_select()"><br>
						<img src="resources/local_images/select_seoul.png" width="70px">
						<td><label for="location_seoul">서울</label>
					</td>
							
							<td>
								<input type="radio" name="si_choice" id="location_seoul" value="1" onclick="si_select()"><br>
								<label for="location_seoul">
									<!-- <img src="resources/local_images/select_seoul.png" class="location_si"> -->
								</label><br>
								서울
							</td>
							<td>
								<input type="radio" name="si_choice" id="location_daegu" value="2" onclick="si_select()"><br>
								<label for="location_daegu">
									<img src="resources/local_images/select_incheon.png" class="location_si">
								</label><br>
								대구
							</td>
							
							<td>
								<input type="radio" name="si_choice" id="location_daejeon" value="3" onclick="si_select()"><br>
								<label for="location_daejeon" id="choice_daejeon">
									<img src="resources/local_images/select_daejeon.png" class="location_si">
								</label><br>
								대전
							</td>
							
							<td>
								<input type="radio" name="si_choice" id="location_incheon" value="4" onclick="si_select()"><br>
								<label for="location_incheon">
									<img src="resources/local_images/select_daegu.png" class="location_si">
								</label><br>
								인천
							</td>
						</tr> --%>




<%--
<tr>
						<td> <!-- '전국' 클릭 시에는 메인 페이지 새로고침 -->
						<a href="${path}/location_mainList.lc">
						<input type="image" src="resources/local_images/select_all.png" class="location_si"></a><br>
							전국
						</td>
						<td>
							<img src="resources/local_images/select_seoul.png" class="location_si" onclick="si_select()"><br>
							서울
						</td>
						<td>
							<img src="resources/local_images/select_daegu.png" class="location_si" onclick="si_select()"><br>
							대구
						</td>
						<td>
							<img src="resources/local_images/select_daejeon.png" class="location_si" onclick="si_select()"><br>
							대전
						</td>
						<td>
							<img src="resources/local_images/select_incheon.png" class="location_si" onclick="si_select()"><br>
							인천
						</td>
					</tr> --%>
	
<!-- 	<td align="center">
						<input name="location_si" type="hidden" value="서울">
						<input type="image" src="resources/local_images/서울.png" width="70px" onclick="si_select()"><br>
						이미지 클릭 시 '구' 선택 팝업창 => 선택 완료 시 해당 '구'에 맞는 리스트 페이지로 이동
						서울
						</button>
					</td>
					<td align="center">
						<input name="location_si" type="hidden" value="부산">
						<input type="image" src="resources/local_images/인천.png" style="width:70px" onclick="si_select()"><br>
						부산
					</td>
					
					<td align="center">
						<input name="location_si" type="hidden" value="대구">
						<input type="image" src="resources/local_images/인천.png" style="width:70px" onclick="si_select()"><br>
						대구
					</td>
					
					<td align="center">
						<input name="location_si" type="hidden" value="인천">
						<input type="image" src="resources/local_images/인천.png" style="width:70px" onclick="si_select()"><br>
						인천
					</td> -->
	
	
	
				<!-- 		<td align="center">
						<img src="resources/local_images/서울.png" style="width:70px" id="location_si" value="서울" onclick="si_select()"><br>
						이미지 클릭 시 '구' 선택 팝업창 => 선택 완료 시 해당 '구'에 맞는 리스트 페이지로 이동
						서울
					</td>
					<td align="center">
						<img src="resources/local_images/인천.png" style="width:70px" id="location_si" value="부산" onclick="si_select()"><br>
						부산
					</td>
					
					<td align="center">
						<img src="resources/local_images/인천.png" style="width:70px" id="location_si" value="대구" onclick="si_select()"><br>
						대구
					</td>
					
					<td align="center">
						<img src="resources/local_images/인천.png" style="width:70px" id="location_si" value="인천" onclick="si_select()"><br>
						인천
					</td> -->
					
					<%-- <tr>
					<td align="center">
						<a herf="${path}/location_mainList.lc">
						<img src="resources/local_images/select_all.png" width="70px" name="si_choice" id="location_seoul"></a><br>
						<td>전국</label>
						<!-- 전국 선택 시 별도 구 선택 없이 모든 지역 리스트 보임 -->
						<!-- class="lo1" style="background-image:url(resources/local_images/서울.png) -->
					</td>
					
					<td align="center">
						<input type="radio" name="si_choice" id="location_seoul" value="1" onclick="si_select()"><br>
						<img src="resources/local_images/select_seoul.png" width="70px">
						<td><label for="location_seoul">서울</label>
					</td>
					<td align="center">
						<input type="radio" name="si_choice" id="location_busan" value="2" onclick="si_select()"><br>
						<img src="resources/local_images/select_incheon.png" style="width:70px" >
						<td><label for="location_busan">인천</label>
					</td>
					
					<td align="center">
						<input type="radio" name="si_choice" id="location_daegu" value="3" onclick="si_select()"><br>
						<img src="resources/local_images/select_daejeon.png" style="width:70px" >
						<label for="location_daegu">대전</label>
					</td>
					
					<td align="center">
						<input type="radio" name="si_choice" id="location_incheon" value="4" onclick="si_select()"><br>
						<img src="resources/local_images/select_daegu.png" style="width:70px" >
						<label for="location_incheon">대구</label>
					</td>
				</tr> --%>
				
				
				
									<%-- 
					<tr>
						<td>
							<a href="${path}/location_datailAction.lc">
							<img src="resources/local_images/세빛섬.png" id="list_images">
							</a> <br>
						</td>
						<td>
							<img src="resources/local_images/서울어린이대공원.png"  id="list_images"><br>
						</td>
						<td>
							<img src="resources/local_images/잠원한강공원.png" id="list_images"><br>
						</td>
						<td>
							<img src="resources/local_images/서울숲.png" id="list_images"><br>
						</td>
					</tr>
					
					<tr>
						<td><strong>세빛섬</strong></td>
						<td><strong>서울어린이대공원</strong></td>
						<td><strong>잠원한강공원</strong></td>
						<td><strong>서울숲</strong></td>
					</tr>
					<tr>
						<td style="padding:0px 60px 50px"><p style="font-size:13px">서울 서초구</p></td>
						<td style="padding:0px 60px 50px"><p style="font-size:13px">서울 광진구</p></td>
						<td style="padding:0px 60px 50px"><p style="font-size:13px">서울 서초구</p></td>
						<td style="padding:0px 60px 50px"><p style="font-size:13px">서울 성동구</p></td>
					</tr>
					 --%>
</body>
</html>