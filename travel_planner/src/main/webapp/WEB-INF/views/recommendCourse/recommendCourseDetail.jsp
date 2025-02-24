<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	<!-- lib 추가 -->
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추천 코스 리스트</title>

</head>
<body>
	  <c:forEach var="dto" items="${list}">
	  	  <div class="courseInfo_box">
  	  	   	   <!-- <hr> -->
               <div class="course_location pretendardfont">
               		<div id="modalLocation">${dto.tr_Course_subId} 코스: ${dto.tr_course_location}</div>
               </div>
               <!-- <hr> -->
               <div class="courseInfo_list pretendardfont">  
			       <div class="course_location_image_box">
			       		<img src="${dto.tr_course_locationImage}" id="modalLocationImage" alt="${dto.tr_course_location}">
			       </div>
			       <div class="location_content pretendardfont">
				       <p>코스개요</p>
				       <div id="modalLocationContent">${dto.tr_course_locationContent}</div>
			       </div>
		       </div>
		   </div>    
	   </c:forEach>
</body>
</html>