<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>

  <!-- 파비콘 -->
<link rel="icon" href="${path}/resources/images/common/logo.svg" />
<link rel="trip-icon" href="${path}/resources/images/common/logo.svg" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script async src="https://cdn.jsdelivr.net/npm/es-module-shims@1/dist/es-module-shims.min.js" crossorigin="anonymous"></script>

<script src="${path}/resources/js/common/main.js" defer></script>
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
	
	$(function() {
		$("#mainClick").click(function() {
			window.location = "${path}/home.do";
		});
	});

</script>
</head>
<body>

	<!-- header 시작 -->
	<header>
		<ul class="navbar_title">
			<li>
				<ul id="mainClick" class="pointerBtn">
					<li class="icon">
						<!-- 				<img src="../../../resources/images/paper_airplane.png" /> -->
						<img src="${path}/resources/images/paper_airplane.svg" />
					</li>
					<li>여기닷!!</li>
				</ul>
			</li>
		</ul>

		<nav class="navbar">
			<ul class="navbar_menu">
				<li class="active pointerBtn"><a onclick="window.location=('${path}/home.do')" class="movePage">홈</a></li>
				<li class="pointerBtn"><a onclick="homeMove('${path}/location_main.lc')" class="movePage" >여행지</a></li>
				<li class="pointerBtn"><a onclick="homeMove('${path}/regionList.rc')" class="movePage" >추천코스</a></li>
				<li class="pointerBtn flex-shrink-0 dropdown">
					<a data-bs-toggle="dropdown"  class="movePage -block link-body-emphasis text-decoration-none dropdown-toggle" >여행톡톡</a>
					<ul class="dropdown-menu text-small shadow" style="">
            			<li><a class="dropdown-item" onclick="homeMove('${path}/reviewList.do')">후기</a></li>
			            <li><a class="dropdown-item" onclick="homeMove('${path}/noticeList.nt')">공지사항</a></li>
			            <li><a class="dropdown-item" onclick="load('${path}/test_tour.do')">테스트_투어</a></li>
			            <li><hr class="dropdown-divider"></li>
			            <li><a class="dropdown-item" href="#">Sign out</a></li>
          			</ul>
				</li>
			</ul>
		</nav>
		<ul class="navbar_icons">
			<li class="searhMain_input">
				<div class="id_check">
					<c:choose>
						<c:when test="${m_name != null}">
							<%= request.getAttribute("m_name") %>님 접속중
						</c:when>
						<c:otherwise>
							<p>게스트님 환영합니다.😄😄</p>
						</c:otherwise>
					</c:choose>
				</div> 
			</li>
			<li>
				<a href="${path}/login.do"> 
					<i class="fa-solid fa-solid fa-user login_shape"></i>
				</a>
			</li>
		</ul>

		<!-- 반응형웹 (1). 햄버거 아이콘 : -->
		<a href="#" class="navbar_toggleBtn">
			<i class="fa-solid fa-burger"></i>
		</a>
	</header>

	<!-- header 끝 -->
</body>
</html>