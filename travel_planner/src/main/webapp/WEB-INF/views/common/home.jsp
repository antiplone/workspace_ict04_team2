<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 파비콘 -->
<link rel="icon" href="${path}/resources/images/common/logo.svg" />
<link rel="trip-icon" href="${path}/resources/images/common/logo.svg" />

<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/reset.css" />
<link rel="stylesheet" href="${path}/resources/css/common/common.css">
<link rel="stylesheet" href="${path}/resources/css/common/main.css">
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/common/slide.css">

<!-- js -->
<script src="https://kit.fontawesome.com/3f6025c3d2.js" crossorigin="anonymous"></script>
<script src="${path}/resources/js/common/main2.js" defer></script>
<script src="${path}/resources/js/common/slider.js" defer></script>
<script src="${path}/resources/js/common/slider2.js" defer></script>
<script src="${path}/resources/js/common/request.js" defer></script>
<script src="${path}/resources/js/common/headerLink.js" defer></script>
<script type="text/javascript" defer>

	function contents_main(){
		let	url:'${path}/main2.do';
		
		function load(url) {
		sendRequest(loadNews_callback, url, "post", "");
		}
		
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
	}

</script>


</head>
<body>
	<c:if test="${m_name != null}">
		<%= request.getAttribute("m_name") %>님 안녕하세요.
	</c:if>
	<div class="wrap">
		<!-- header 시작 -->
		<div class="header_wrap">
			<%@ include file="/WEB-INF/views/common/header.jsp"%>
		</div>
		
		<div id="contents">
		
		</div>

		<div>
			<!-- footer 시작 -->
			<%@ include file="/WEB-INF/views/common/footer.jsp"%>
			<!-- footer 끝 -->
		</div>
	</div>
</body>

</html>