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
<link rel="stylesheet" href="${path}/resources/css/location/location_detailAction.css">

<!-- js -->
<script src="${path}/resources/js/location/location_detailAction.js" defer></script>

</head>
<body>

		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<!-- header 끝 -->

		<hr>
		<br><br><br><br>
		
		<form name="localDetail">
			<table style="margin-left: auto; margin-right: auto;">

				<tr>
					<th><h1 align="center"><span> ${dto.ti_name} </span> </h1></th>
				</tr>
				
				<tr>
					<td align="center" style="padding: 10px 0px 30px"> ${dto.ti_location} </td>
				</tr>
				
				<tr>
					<td align="center" style="padding: 0px 0px 70px; font-size: 20px;"><i><b> # ${dto.ti_content} </b></i></td>
				</tr>
				
				<!-- '상세보기', '후기작성' 클릭 시 해당 위치로 스크롤 이동 -->
				<tr>
					<td align="center">
						<a href="#place" class="place_move"> <input type="button" class="button" value="상세보기"> </a>
						<a href="#review" class="place_move"> <input type="button" class="button" value="후기작성"></a>
					</td>
				</tr>
				<tr>
					<td>
						<img src="resources/local_images/${dto.ti_detail_url}" class="location_detail">
					</td>
				</tr>
				<tr>
					<td>
						<img src="resources/local_images/${dto.ti_detail_url2}" class="location_detail">
					</td>
				</tr>
				</table>
				
			<div id="place">
				<div class="place_detail_1">
					<table style="margin-left: auto; margin-right: auto;">
						<tr>
							<td><h4 class="title_place"><b> 공간소개 </b></h4></td>
						</tr>
						<tr>
							<td>
							<p class="container">
							${dto.ti_content_big}
							</p>
							<input type="checkbox" class="container_more-btn">
							</td>
						</tr>
					</table>
				</div>
			</div>
			
			<div class="place_detail_2">
				<table style="margin-left: auto; margin-right: auto;">
					<tr>
						<th> 문의 및 안내 </th>
						<td> ${dto.ti_qna} </td>
						<th> 홈페이지 </th>
						<td> ${dto.ti_url} </td>
					</tr>
					<tr>
						<th> 주소 </th>
						<td> ${dto.ti_address} </td>
						<th> 이용시간 </th>
						<td> ${dto.ti_open} </td>
					</tr>
					<tr>
						<th> 휴일 </th>
						<td> ${dto.ti_holiday} </td>
						<th> 주차 </th>
						<td> ${dto.ti_parking} </td>
					</tr>
					<tr>
						<th> 입장료 </th>
						<td> ${dto.ti_admission} </td>
						<th> 장애인 주차 안내 </th>
						<td> ${dto.ti_parking2} </td>
					</tr>
				</table>
			</div>
		</form>
		<br><br>
		<hr>
		<br><br><br>

				
		<!-- 여행 후기 -->
		<div align="center" id="review">
			<h4><b>여행 후기를 작성해주세요!</b></h4> <br>
			<a href="reviewList.do">
			<img src="resources/local_images/detail_review.png" style="width:700px"></a>
		</div>
		<br>
		<hr>
		<br>
		<!-- footer 시작 -->
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
		<!-- footer 끝 -->
	
</body>
</html>