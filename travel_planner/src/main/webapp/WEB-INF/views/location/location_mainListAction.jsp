<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp" %>
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


/*    function si_select(){
	 window.open("${path}/location_mainSelect.lc?location_si=" + document.locationMain.si_choice.value, "_blank", "width=500, height=200")
 }  */
 function si_select(){
	 window.open("${path}/location_mainSelect.lc", "_blank", "width=500, height=200")
 }
 
 
 </script>
 
<%--  <script src="${path}/resources/js/location_select.js" defer> </script> --%>
</head>
<body>
		<h2>선택한 '구' 리스트 페이지</h2>
		
		<!-- 이미지 클릭 시 '구' 선택 팝업창 => 선택 완료 시 해당 '구'에 맞는 리스트 페이지로 이동 -->
		<div class="main_select" style='background-color: #cad2c5'>
			<form name="locationMain" action="#" method="post">
				<br><br><br>
				<table style="margin-left: auto; margin-right: auto;">
				<tr>
					<td>
					<a href="location_main.lc">
					<img src="resources/local_images/select_all.png" class="location_si"><br></a>
						<!-- 이미지 클릭 시 '구' 선택 팝업창 => 선택 완료 시 해당 '구'에 맞는 리스트 페이지로 이동 -->
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
				</tr>
				</table>
				<br><br><br>		
			</form>
		</div>
		

		<!-- 지역 선택 시 보여지는 리스트 / 메인(전국) 리스트 -->
		<div class="main_list">
			<form name="localList">
				<table style="margin-left: auto; margin-right: auto;">
				
					<tr>
						<td>
							<a href="${path}/location_datailAction.lc" >
							<img src="resources/local_images/북촌한옥마을.png" id="list_images">
							</a> <br>
						</td>
						<td>
							<img src="resources/local_images/서울 명동성당.png" id="list_images"><br>
						</td>
						<td>
							<img src="resources/local_images/하늘공원.png" id="list_images"><br>
						</td>
						<td>
							<img src="resources/local_images/창경궁.png" id="list_images"><br>
						</td>
						
					</tr>
					
					<tr>
						<td><strong>북촌한옥마을</strong><br>
						<td><strong>서울명동성당</strong></td>
						<td><strong>하늘공원</strong></td>
						<td><strong>창경궁</strong></td>
					</tr>
					<tr>
						<td style="padding:0px 60px 50px"><p style="font-size:13px">서울 종로구</p></td>
						<td style="padding:0px 60px 50px"><p style="font-size:13px">서울 중구</p></td>
						<td style="padding:0px 60px 50px"><p style="font-size:13px">서울 마포구</p></td>
						<td style="padding:0px 60px 50px"><p style="font-size:13px">서울 종로구</p></td>
					</tr>
					
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
				</table>
			</form>
		</div>
		
	
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
</body>
</html>