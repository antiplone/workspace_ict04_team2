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
	SELECT *<br>
      FROM<br>
	    (SELECT A.*,<br>
	           rownum AS rn   <br>
	      FROM  <br>
	            (SELECT * FROM travel_tourInfo_tbl <br>
	             ORDER BY ti_service DESC) A  <br>
	     )   <br>
	  WHERE rn BETWEEN 1 AND 10;  <br>
</body>
</html>