<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
<!-- css -->
<%-- <link rel="stylesheet" href="${path}/resources/css/common/reset.css" />
<link rel="stylesheet" href="${path}/resources/css/common/common.css">
<link rel="stylesheet" href="${path}/resources/css/common/main.css">
<link rel="stylesheet" href="${path}/resources/css/common/slide.css"> --%>

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
	<div id="maintopListWrap">
		<div id="carouselShow" class="recomment_tour_list_wrap carousel slide esamanrufont">
			<h2>함께 떠나는 지역 여행</h2>
			<div class="recommend_box">
				<div class="recommend_carousel_wrapper">
					<ul id="recomment_in_wrap" class="recomment_in_wrap carousel-inner">
						<c:forEach var="dto1" items="${list1}">
							<li class="abc d_block">
								<a onclick="mainRecommend('${dto1.tr_area_id}','${dto1.tr_course_id}', '2')">
<%-- 								<a onclick="javascript:history.forward(homeMove('${path}/recommendCourseList.rc?area_id=${dto1.tr_course_id}'))"> --%>
									<%-- <input id="couseId" name="couseId" type="hidden" value="${dto1.tr_course_id}" > --%>
									<div class="text_center">글번호 : ${dto1.tr_course_id}</div>
									<div class="text_center recImgWrap">
										<img src="${dto1.tr_course_image}" />
									</div>
									<div class="text_center">${fn:substring(dto1.tr_course_title,0,10)}... </div>
									<div class="text_center">추천기간 : ${dto1.tr_course_taketime}</div>
									<div class="text_center">관련태그 : ${fn:substring(dto1.tr_course_tag,0,7)}</div>
								</a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<button id="recommondPrevBtn" class="recommondPrevBtn" onclick="changePrev(28)"></button>
			<button id="recommondNextBtn" class="recommondNextBtn" onclick="changeNext(28)"></button>
		</div>
	</div>
</body>
<!-- <script type="text/javascript">
	
	bottomList()

	// 댓글 목록
	function bottomList(){ // (8)
		alert("mainAction")
		$.ajax({
			url:'mainAction.do', // 컨트롤러로 이동(9)
			type: 'POST',
			success : function(result){ // 콜백함수(13) => result는 comment_list
				$('#mainbottomListWrap').html(result);
			},
			error:function(j,t, errorThrown){
				alert(errorThrown);
			},
		});
	}
	
</script> -->

</html>