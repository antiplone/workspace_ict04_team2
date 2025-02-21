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
<c:if test="${deleteCnt == 1}">
	<script type="text/javascript">
		setTimeout(function() {
<<<<<<< HEAD
			alert("후기삭제 성공");
			window.location = "${path}/reviewList.do";
		}, 1000);
=======
//			alert("후기삭제 성공");
			window.location = "${path}/reviewList.do";
		});
>>>>>>> origin/ysj_topic
	</script>
</c:if>

<c:if test="${deleteCnt != 1}">
	<script type="text/javascript">
		setTimeout(function() {
<<<<<<< HEAD
			alert("후기삭제 실패");
			window.location = "${path}/reviewList.do";
		}, 1000);
=======
//			alert("후기삭제 실패");
			window.location = "${path}/reviewList.do";
		});
>>>>>>> origin/ysj_topic
	</script>
</c:if>

</body>
</html>