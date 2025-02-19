<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/reset.css" />
<link rel="stylesheet" href="${path}/resources/css/common/common.css">
<link rel="stylesheet" href="${path}/resources/css/common/main.css">
<link rel="stylesheet" href="${path}/resources/css/common/slide.css">

<!-- bootstrap -->
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.3/examples/carousel/">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script async src="https://cdn.jsdelivr.net/npm/es-module-shims@1/dist/es-module-shims.min.js" crossorigin="anonymous"></script>

<script src="https://kit.fontawesome.com/3f6025c3d2.js" crossorigin="anonymous"></script>

</head>
<body>
	<div id="mainbottomListWrap">
		<%-- 후기 게시글들 --%>
		<div class="rev_imgs">
			<%-- 리뷰 게시글이 있으면 반복 --%>
			<c:forEach var="dto" items="${list}">
			
			 <div class="rev_img revBtn" id="revImg${dto.r_num}">
			 	<a href="${path}/reviewDetail.do?r_num=${dto.r_num}">	<!-- 해당 번호의 게시글로 이동하는 버튼 -->
					<div class="rev_image">
						<img alt="${dto.r_num}" src="${dto.r_img}">
					</div>
					<div class="rev_img_title">
						<div class="rev_img_text1">${fn:substring(dto.r_title, 0, 16)}...</div>
						<div class="rev_img_text2">
							<div>${dto.m_name}</div>
							<div>
								<img alt="조회수" src="${path}/resources/images/eyes.svg">
								${dto.r_readCnt}
							</div>
							<div>${dto.r_regDate}</div>
						</div>
					</div>
				</a>
			</div>
			
			</c:forEach>
		</div>
	</div>
</body>

</html>