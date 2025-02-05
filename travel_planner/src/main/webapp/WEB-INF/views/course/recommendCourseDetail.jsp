<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추천 코스 상세페이지</title>
</head>
<body>
	
	<h1> 고객 </h1>
	
	<div align="center">
		<img src="resources/images/추천코스_상세_1.png" alt="추천코스상세1">
		<img src="resources/images/추천코스_상세_2.png" alt="추천코스상세2">
		<img src="resources/images/추천코스_상세_3.png" alt="추천코스상세3">
		
	</div>
	
	<hr>
	<br><br>
	SELECT * <br>
  	  FROM travel_tourInfo_tbl <br>
     ORDER BY ti_service DESC; <br>
	
</body>
</html>