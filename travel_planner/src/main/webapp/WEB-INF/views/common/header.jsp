<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<!-- <script type="text/javascript">
document.addEventListener("DOMContentLoaded", () => {
	const moveLogIn= document.querySelector(".moveLogIn");
	
	moveLogIn.addEventListener('click', function(){
		location.href="${path}/login.dr", "post", "");
	});
}
</script> -->
</head>
<body>

	<!-- header 시작 -->
	<header>
		<ul class="navbar_title">
			<li class="icon">
				<!-- 				<img src="../../../resources/images/paper_airplane.png" /> -->
				<img src="resources/images/paper_airplane.svg" />
			</li>
			<li>여기닷!!</li>
		</ul>

		<nav class="navbar">
			<ul class="navbar_menu">
				<li class="home"><a href="#">홈</a></li>
				<li><a href="location_main.lc?contents=location_main">여행지</a></li>
				<li><a href="regionList.rc?contents=regionList">추천코스</a></li>
				<li><a href="reviewList.do?contents=reviewList">커뮤니티</a></li>
			</ul>
		</nav>
		<ul class="navbar_icons">
			<li class="searhMain_input">
				<input type="input" class="search"/>
				<input type="button" value="검색" class="search_button"/> 
			</li>
			<li>
				<a href="${path}/login.do"> 
					<i class="fa-solid fa-solid fa-user login_shape"></i>
				</a>
			</li>
		</ul>

		<!-- 반응형웹 (1). 햄버거 아이콘 : -->
		<a href="#" class="navbar_toggleBtn"> <i
			class="fa-solid fa-burger"></i>
		</a>
	</header>

	<!-- header 끝 -->
</body>
</html>