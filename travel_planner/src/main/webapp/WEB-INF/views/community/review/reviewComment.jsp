<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글</title>

<!-- CSS -->
<link rel="stylesheet" href="${path}/resources/css/common/reset.css">

</head>
<body>
<c:forEach var="dto" items="${list}">
	<div class="comment_lst hor-line">
		<div class="comment_text">
			<div style="display: inline-block;">${dto.rc_comment}</div>
			<%-- <input type="button" value="삭제" onclick="${path}/comment_delete.do" /> --%>
		</div>
		<div class="list_text">
			<span class="ver-line">${dto.rc_name}</span>
			<span>${dto.rc_regDate}</span>
		</div>
	</div>
</c:forEach>

</body>
</html>