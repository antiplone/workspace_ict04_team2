<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.spring.travel_planner.sys.Location_APIConfig"%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8" />
<title>Tour</title>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous">
	</script>
</head>
<body>
	<script type="text/javascript">
		$(function() {
			console.log("테스트");
			let asJson = ${requestAreaCode1};
			
			console.log(asJson);
			let tourAPI = "<%= Location_APIConfig.TourAPI.valueOfLabel("한국어/지역코드조회") %>";
			
			// 선택한 '시'의 code 값
			<% int code = Integer.parseInt(request.getParameter("location_si")); %>
			
			asJson.areaCode = <%= code %>;
			
		 	$.getJSON(tourAPI, asJson).done(function(data) {
				for (let it of data.response.body.items.item) {
					it.areaCode = asJson.areaCode;
				}
				console.log(data);
				$.ajax({
				    url: "api_location_Select_result.lc",
				    type: "POST",
				    data: JSON.stringify(data.response.body.items.item),
				    contentType: "application/json; charset=utf-8",
				    dataType: "html",
				    success: function(response) {
//				        console.log(response);
				        $("#gu_contents").html(response);
				    },
				    error: function(xhr, status, error) {
				    	console.log("[AJAX:ERROR-STATUS] " + status);
				        console.log(xhr.responseText);
				    }
				});
			});
		});
	</script>
	<c:choose><c:when test="${!existDB}">


		</c:when>
		
		<c:otherwise>
			DB가 있다고합니다!
		</c:otherwise>
	</c:choose>

<!-- 	<input id="tour_data" type="hidden" value="" > -->
	<div id="gu_contents">
		
	</div>
</body>
</html>
