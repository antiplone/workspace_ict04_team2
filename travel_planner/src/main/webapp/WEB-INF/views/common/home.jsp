<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
<!-- 파비콘 -->
<link rel="icon" href="${path}/resources/images/common/logo.svg" />
<link rel="trip-icon" href="${path}/resources/images/common/logo.svg" />

<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>여기닷</title>
<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/reset.css" />
<link rel="stylesheet" href="${path}/resources/css/common/common.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">

<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<!-- js -->
<script src="https://kit.fontawesome.com/3f6025c3d2.js" crossorigin="anonymous"></script>
<script src="${path}/resources/js/common/main.js" defer></script>
<script src="${path}/resources/js/common/request.js" defer></script>

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
		<div class="contents_wrap" id="contents">
			<%@ include file="/WEB-INF/views/common/main3.jsp"%>
		</div>
		<div>
			<!-- footer 시작 -->
			<%@ include file="/WEB-INF/views/common/footer.jsp"%>
			<!-- footer 끝 -->
		</div>
	</div>
</body>
<script type="text/javascript">
    let counter = 1;
	function changePrev(width){
	  let recommWrap = document.querySelector("#recomment_in_wrap");
	  if (counter <= 0) {
		  counter = 1
		  event.preventDefault()
		  event.stopPropagation();
		  event.stopImmediatePropagation()
		  return;
	  }
	  else{
		  recommWrap.style.transition = "transform 0.3s ease-in-out";
		  counter--;
		  recommWrap.style.transform = "translateX(-" + width * counter + "%)";
	  }
	  // 마지막에는 오른쪽 클릭버튼 안나오게 하기
		console.log(counter)
		e.target.parentElement.parentElement.classList.remove('on');
	}
	
	function changeNext(width){
	  let recommWrap = document.querySelector("#recomment_in_wrap");
	  if (counter >= 3){
		  event.preventDefault()
		  event.stopPropagation();
		  event.stopImmediatePropagation()
		 return false;
	  } 
	  else{
		  recommWrap.style.transition = "transform 0.3s ease-in-out";
		  recommWrap.style.transform = "translateX(-" + width * counter + "%)";
		  counter++;
	  }
		console.log(counter)
		e.target.parentElement.parentElement.classList.add('on');
		
	  // 마지막에는 오른쪽 클릭버튼 안나오게 하기
	}
	
	$(function() {
		$("#mainClick").click(function() {
			window.location = "${path}/home.do";
		});
	});
	
	function si_select(){
		 window.open("${path}/location_mainSelect.lc", "_blank", "width=500, height=200")
	}

</script>
</html>