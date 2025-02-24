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

			let asJson = ${requestAreaBasedList1};
			console.log(asJson);
			let tourAPI = "<%= Location_APIConfig.TourAPI.valueOfLabel("한국어/지역기반관광정보") %>";
			
			// 선택한 '시'의 code 값
			<% int si_code = Integer.parseInt(request.getParameter("location_si"));
			String location_gu = request.getParameter("location_gu");
			System.out.println("최종 시 코드: " + si_code);
			System.out.println("최종 구 코드: " + location_gu);
			
/*  			List<String> location_list = new ArrayList<String>();
			 
			String[] sigu_code = gu_code.split("@");
			  
			for(int i=0; i<sigu_code.length; i++) {
				sigu_code[i];
			  }   */
			
			%>
			
			let gu_slice = "<%= location_gu %>";
			gu_slice = gu_slice.split("@");
			console.log(gu_slice);
			
			asJson.areaCode.sigunguCode = <%= si_code %> + gu_slice;
			
			$.getJSON(tourAPI, asJson).done(function(data) {
				console.log(data);
				
				 $.ajax({
				    url: "api_location_mainList_result.lc",
				    type: "POST",
				    data: JSON.stringify(data.response.body.items.item),
				    contentType: "application/json; charset=utf-8",
				    success: function(response) {
				        console.log(response);
						$("#list_contents").html(response);
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

	</c:otherwise></c:choose>

<!-- 	<input id="tour_data" type="hidden" value="" > -->
	<div id="list_contents">
		
	</div>
</body>
</html>
