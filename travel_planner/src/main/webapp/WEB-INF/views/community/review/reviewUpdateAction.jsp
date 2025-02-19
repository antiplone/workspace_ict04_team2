<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- 반응형 웹 -->
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<title>main</title>
</head>
<body>
<c:if test="${updateCnt == 1}">
	<script type="text/javascript">
		setTimeout(function() {
			alert("후기 수정 성공");
			window.location = "${path}/reviewList.do";
		}, 1000);
	</script>
</c:if>

<c:if test="${updateCnt != 1}">
	<script type="text/javascript">
		setTimeout(function() {
			alert("후기 수정 실패");
			window.location = "${path}/reviewUpdate.do";
		}, 1000);
	</script>
</c:if>

</body>
</html>