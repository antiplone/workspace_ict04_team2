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
<link rel="stylesheet" href="${path}/resources/css/location/location_detailAction.css">

<!-- js -->
<script src="${path}/resources/js/location/location_detailAction.js" defer></script>

</head>
<body>

		<hr>
		<br><br><br><br>
		
		<form name="localDetail">
			<table style="margin-left: auto; margin-right: auto;">

				<tr>
					<th><h1 align="center"><span class="title_n">${dto.ti_name} </span></h1></th>
				</tr>
				
				<tr>
					<td class="title_little"> ${dto.ti_location} </td>
				</tr>
				
				<tr>
					<td class="title_n2"> # ${dto.ti_content} </td>
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
							<td class="title_place"><b> 공간소개 </b></td>
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
						<th class="title_little"> 문의 및 안내 </th>
						<td class="title_little"> ${dto.ti_qna} </td>
						<th class="title_little"> 홈페이지 </th>
						<td class="title_little"> ${dto.ti_url} </td>
					</tr>
					<tr>
						<th class="title_little"> 주소 </th>
						<td class="title_little"> ${dto.ti_address} </td>
						<th class="title_little"> 이용시간 </th>
						<td class="title_little"> ${dto.ti_open} </td>
					</tr>
					<tr>
						<th class="title_little"> 휴일 </th>
						<td class="title_little"> ${dto.ti_holiday} </td>
						<th class="title_little"> 주차 </th>
						<td class="title_little"> ${dto.ti_parking} </td>
					</tr>
					<tr>
						<th class="title_little"> 입장료 </th>
						<td class="title_little"> ${dto.ti_admission} </td>
						<th class="title_little"> 장애인 주차 안내 </th>
						<td class="title_little"> ${dto.ti_parking2} </td>
					</tr>
				</table>
			</div>
		</form>
		<br><br>
		<hr>
		<br><br><br>

				
		<!-- 여행 후기 -->
		<div align="center" id="review">
			<div class="rw_title">여행 후기를 작성해주세요! </div> <br>
			<a href="reviewList.do">
			<img src="resources/local_images/detail_review.png" style="width:700px"></a>
		</div>
		<br>
		<hr>
		<br>

</body>
</html>