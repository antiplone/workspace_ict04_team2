<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추천코스 목록</title>
</head>
<body>

	<h1> 고객 </h1>
	
	<img src="resources/images/추천코스_목록.png" alt="추천코스선택">
	
	<hr>
	<br><br>
	  SELECT * FROM travel_tourinfo_tbl <br>
 	   WHERE ti_num BETWEEN 시작_num AND 끝_num; <br>
</body>
</html>