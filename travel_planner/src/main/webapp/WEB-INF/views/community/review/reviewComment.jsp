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

						<div class="comment_lst">
							<div>날이 따뜻해지면 꼭 가고싶어요~</div>
							<div class="list_text">
								<span class="ver-line">강한무</span>
								<span>2024-08-15</span>
							</div>
						</div>
						
						<div class="comment_lst hor-line">
							<div>우와 새로운 곳이네요! 저도 언젠가 꼭 가보고 싶네요!</div>
							<div class="list_text">
								<span class="ver-line">이지민</span>
								<span>2024-05-05</span>
							</div>
						</div>
						
						<div class="comment_lst hor-line">
							<div>우와 저도 한 번 가보겠습니다!</div>
							<div class="list_text">
								<span class="ver-line">풀무원</span>
								<span>2022-10-10</span>
							</div>
						</div>
						
						<div class="comment_lst hor-line">
							<div>날이 따뜻해지면 꼭 가고싶어요~</div>
							<div class="list_text">
								<span class="ver-line">박연진</span>
								<span>2020-02-10</span>
							</div>
						</div>
						
<c:forEach var="dto" items="">

	<c:if test="${dto.rc_comment_count > 0}">
	<div class="comment_lst">
		<div>날이 따뜻해지면 꼭 가고싶어요~</div>
		<div class="list_text">
			<span class="ver-line">풀무원</span>
			<span>댓글 등록일</span>
		</div>
	</div>
	</c:if>
	
	<c:if test="${dto.rc_comment_count > 1}">
	<div class="comment_lst hor-line">
		<div>${dto.rc_comment}</div>
		<div class="list_text">
			<span class="ver-line">${dto.m_member}</span>
			<span>${dto.rc_regDate}</span>
		</div>
	</div>
	</c:if>

</c:forEach>
</body>
</html>