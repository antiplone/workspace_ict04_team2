<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/common/slide.css">

<script src="https://kit.fontawesome.com/3f6025c3d2.js"
	crossorigin="anonymous"></script>
<script src="${path}/resources/js/common/main2.js" defer></script>
<script src="${path}/resources/js/common/slide.js" defer></script>
<script src="${path}/resources/js/common/slide2.js" defer></script>
</head>
<body>
	<div id="slide_box_wrap" data-color="gray">
		<div class="slide_box">
			<div class="slide_list">
				<div class="carousel_wrapper">
					<div id="lastClone" class="slide_item" data-color="yellow"
						data-num="3">
						<div class="left_comment">
							<div>
								<strong style="color: #3d3d3d">남해의 멋과 맛을 담아, 스페이스 미조</strong> <br>
								<a href="#">자세히 보기</a>
							</div>
						</div>
						<div class="right_img">
							<img
								src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=4e21ed06-0075-4498-a9c2-8ec62c9d60aa&mode=raw">
						</div>
					</div>
					<div class="slide_item" data-color="gray" data-num="1">
						<div class="left_comment">
							<div>
								<strong style="color: #3d3d3d">경남 의령으로 떠나는<br>특별한
									일출 여행🌞
								</strong> <br> <a href="#">자세히 보기</a>
							</div>
						</div>
						<div class="right_img">
							<img
								src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=66f8e340-29fd-43fb-884c-ac28f94fbbf4&mode=raw">
						</div>
					</div>
					<div class="slide_item" data-color="skyblue" data-num="2">
						<div class="left_comment">
							<div>
								<strong style="color: #3d3d3d">남해로 떠나는<br>특별한 기차
									여행
								</strong> <br> <a href="#">자세히 보기</a>
							</div>
						</div>
						<div class="right_img">
							<img
								src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=7b43ffe6-74e9-4021-b071-df3691145f78&mode=raw">
						</div>
					</div>
					<div class="slide_item" data-color="yellow" data-num="3">
						<div class="left_comment">
							<div>
								<strong style="color: #3d3d3d">남해의 멋과 맛을 담아,<br>스페이스
									미조
								</strong> <br> <a href="#">자세히 보기</a>
							</div>
						</div>
						<div class="right_img">
							<img
								src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=4e21ed06-0075-4498-a9c2-8ec62c9d60aa&mode=raw">
						</div>
					</div>
					<div id="firstClone" class="slide_item" data-color="gray"
						data-num="1">
						<div class="left_comment">
							<div>
								<strong style="color: #3d3d3d">경남 의령으로 떠나는<br>특별한
									일출 여행🌞
								</strong> <br> <a href="#">자세히 보기</a>
							</div>
						</div>
						<div class="right_img">
							<img
								src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=66f8e340-29fd-43fb-884c-ac28f94fbbf4&mode=raw">
						</div>
					</div>
				</div>
			</div>
			<div class="carousel_notice_box">
				<div class="progress_bar_wrap">
					<div class="progress-bar">
						<span class="progress_bar_fill"><span class="fill"></span></span>
					</div>
					<div class="paging_num">
						<span id="page_current" class="page_current" data-num="">01</span>
						/ <span class="page_total">03</span>
					</div>
				</div>
			</div>
			<button class="prevBtn arr"></button>
			<button class="nextBtn"></button>
		</div>
	</div>
	<div class="recomment_tour_list_wrap">
		<h2>함께 떠나는 지역 여행</h2>
		<div class="recommend_box">
			<div class="recommend_carousel_wrapper">
				<div id="right">
					<div class="table_div">
						<form name="boardList">
							<table>
								<tr>
									<th style="width: 5%">글번호</th>
									<th style="width: 5%">작성자</th>
									<th style="width: 5%">글제목</th>
									<th style="width: 5%">작성일</th>
									<th style="width: 5%">조회수</th>
								</tr>
								<h1>${revewimg} 나왔어?</h1>
								<!-- 게시글이 있으면 -->
								<c:forEach var="dto" items="${list}">
									<tr>
										<td>${reviewno}</td>
										<td>${reviewimg}</td>
										<td><a
											href="${path}/board_list.dol?mName=$${mName}">${mName}
												<span style="color: blue">[${mName}]</span>
										</a></td>
										<td>${reviewtitle}</td>
										<td>${reviewhits}</td>
									</tr>
								</c:forEach>

								<tr>
									<td colspan="5" align="center">
										<!-- 페이징 처리 --> <!-- 이전 버튼 활성화 --> <c:if
											test="${paging.startPage > 10}">
											<a href="${path}/board_list.brl?pageNum=${paging.prev}">[이전]</a>
										</c:if> <!--  페이지 번호 처리 --> <c:forEach var="num"
											begin="${paging.startPage}" end="${paging.endPage}">
											<a href="${path}/board_list.brl?pageNum=${num}">${num}</a>
										</c:forEach> <c:if test="${paging.endPage < paging.pageCount}">
											<a href="${path}/board_list.brl?pageNum=${paging.next}">[다음]</a>
										</c:if>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
		<button class="recommondPrevBtn"></button>
		<button class="recommondNextBtn"></button>
	</div>

	<%-- 추천코스 --%>
	<div class="recom">
		<div class="recom_wrap">
			<div>날짜는 정했지만 어디로 놀러가야 할지 모르겠어요!</div>
			<div>여행 일정을 짜기 어렵다면 여기닷에서 정해드릴게요</div>
			<div class="recom_img">
				<img alt="여행가는 여성"
					src="${path}/resources/images/main/trip-woman.svg">
			</div>
			<div class="recom_btn">
				<a href="#"> 추천코스 자세히보기 <i class="fi fi-rs-arrow-right"></i>
				</a>
			</div>
		</div>
	</div>

	<%-- 여행후기 --%>
	<div class="rev">
		<div class="revs">
			<div class="rev_title">
				<h2>여행후기로 여행지 미리보기</h2>
				<div>
					<a href="#"> 더보기 <i class="fi fi-rs-arrow-right rev_btn"></i>
					</a>
				</div>
			</div>

			<div class="rev_img">
				<img alt="이미지" src="${path}/resources/images/main/imgs.jpg">
				<!-- <div>
						<img alt="1" src="">
						<div>다대포 꿈의 낙조분수에서 세계 최대, 최고 수준의 음악분수를 즐기고 왔습니다.</div>
						<div>김*지</div>
					</div> -->
			</div>

		</div>
	</div>

	<%-- 공지사항 & QnA --%>
	<div class="rev_notice">
		<div class="rev_notices">
			<div class="revs_notice">
				<div>공지사항</div>
				<div>
					<a href="#">2025년 1월 고객만족도조사 참여 고객 당첨자 공지</a>
				</div>
			</div>
		</div>
	</div>
</body>

</html>