<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/common/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<script src="${path}/resources/js/common/request.js" defer></script>
<script type="text/javascript">

	function load(url) {
		// sendRequest(callback, url, method, params) {}
		sendRequest(loadNews_callback, url, "post", "");
	}
	
	
	// 콜백함수 - 결과처리
	function loadNews_callback() {
		let result = document.getElementById("contents");	
		if(httpRequest.readyState == 4) {	// 4 : completed => 전체 데이터 취득 완료
			if(httpRequest.status == 200) {	// 200 :  정상종료
				// 6-1. 응답결과가 html이면 responseText로 받고, xml이면 responseXML로 받는다.
				result.innerHTML = httpRequest.responseText;
			}
			else {
				result.innerHTML = "status 상태 : " + httpRequest.Status;
			}
			
		}else {
			result.innerHTML = "readyState 상태 : " + httpRequest.readyState;
		}
}

</script>
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
				<li class="home"><a onclick="load('${path}/main.do')" class="movePage">홈</a></li>
				<li><a onclick="load('${path}/location_main.lc')" class="movePage" >여행지</a></li>
				<li><a onclick="load('${path}/regionList.rc')" class="movePage" >추천코스</a></li>
				<li><a onclick="load('${path}/reviewList.do')" class="movePage" >커뮤니티</a></li>
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