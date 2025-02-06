<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역 목록</title>
</head>
<body>
	
	<h1> 고객 </h1>
	
	<img src="resources/images/추천코스_지역.png" alt="추천코스">
	
	<hr>
	<br><br>
	SELECT * <br>
  	  FROM travel_tourInfo_tbl <br>
     ORDER BY ti_area DESC; <br>
	
</body>
</html>