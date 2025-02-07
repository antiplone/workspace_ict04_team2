<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>여행지 선택</title>
</head>
<body>

	<h2> 여행지 선택 </h2>

<!-- 			<div class="local_1" style="margin-right: 15px">
			<img src="resources/local_images/서울.png" width=70, height=70><br>
			<span> 서울 </span>
			<img src="resources/local_images/부산.png" width=70, height=70>
			<span> 부산 </span>
			</div>
			<div class="local_2">
			<img src="resources/local_images/인천.png" width=70, height=70>
			<span> 인천 </span>
			<img src="resources/local_images/부산.png" width=70, height=70>
			<span> 대전 </span>
			</div>
			<a href="#">전국</a> <a href="#">서울</a> <a href="#">인천</a> <a href="#">대전</a> <a href="#">대구</a> <a href="#">제주</a> <br>
			<a href="#">광주</a> <a href="#">부산</a> <a href="#">울산</a> <a href="#">경기</a> <a href="#">강원</a> <a href="#">세종</a> <br>
			<a href="#">충북</a> <a href="#">충남</a> <a href="#">경북</a> <a href="#">경남</a> <a href="#">전북</a> <a href="#">전남</a> <br>
			

  여행지 선택
	
 -->
	<img src="resources/local_images/여행지메인.png">
	
	<pre>
	
	
	CREATE TABLE travel_tourInfo_tbl(
    		ti_num         NUMBER(38)    PRIMARY KEY,    	-- 여행지 번호
		ti_language    VARCHAR2(50),       	 	-- 언어 
		ti_thema   	   VARCHAR2(50),       		-- 유형 분류
		ti_service     VARCHAR2(50),       		-- 서비스 분류
		ti_area    	   VARCHAR2(50)      		-- 지역 
	); </pre>
	
</body>
</html>