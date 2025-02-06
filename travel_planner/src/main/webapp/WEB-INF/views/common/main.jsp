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

<title>여기닷</title>
<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/common.css">
<link rel="stylesheet" href="${path}/resources/css/common/main.css">
<link rel="stylesheet" href="${path}/resources/css/common/slide.css">
<!-- 아이콘 CDN -->
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>

<!-- js -->
<script src="https://kit.fontawesome.com/3f6025c3d2.js" crossorigin="anonymous"></script>
<script src="${path}/resources/js/common/main2.js" defer></script>
<script src="${path}/resources/js/common/slider.js" defer></script>
<script src="${path}/resources/js/common/slider2.js" defer></script>
<script src="${path}/resources/js/common/request.js" defer></script>
<script src="${path}/resources/js/common/headerLink.js" defer></script>
</head>
<body>
	<c:if test="${m_name != null}">
		<%=request.getAttribute("m_name")%>님 안녕하세요.
	</c:if>
	<div class="wrap">
		<!-- header 시작 -->
		<div class="header_wrap">
			<%@ include file="/WEB-INF/views/common/header.jsp"%>
		</div>
	<div class="wrap">
	<!-- header 끝내기 -->
	
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
									src="${path}/resources/images/landscape/book_store_after_rain.png">
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
									src="${path}/resources/images/landscape/boys_are_coming.png">
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
								<img src="${path}/resources/images/landscape/vegetarian.png">
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
									src="${path}/resources/images/landscape/book_store_after_rain.png">
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
									src="${path}/resources/images/landscape/boys_are_coming.png">
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
					<div id="recomment_tour_list" align="center">
						<div id="firstClone" class="recommend_slide_item"
							data-color="gray">
							<div>
								<div class="right_img">
									<img
										src="${path}/resources/images/landscape/boys_are_coming.png">
								</div>
								<div class="left_comment">
									<div>
										<strong style="color: #3d3d3d">경남 의령으로 떠나는<br>특별한
											일출 여행🌞
										</strong>
									</div>
								</div>
							</div>
							<div>
								<div class="right_img">
									<img src="${path}/resources/images/landscape/vegetarian.png">
								</div>
								<div class="left_comment">
									<div>
										<strong style="color: #3d3d3d">남해로 떠나는<br>특별한 기차
											여행
										</strong>
									</div>
								</div>
							</div>
							<div>
								<div class="right_img">
									<img
										src="${path}/resources/images/landscape/book_store_after_rain.png">
								</div>
								<div class="left_comment">
									<div>
										<strong style="color: #3d3d3d">남해의 멋과 맛을 담아,<br>스페이스
											미조
										</strong>
									</div>
								</div>
							</div>
						</div>
						<div class="recommend_slide_item" data-color="skyblue">
							<div>
								<div class="right_img">
									<img src="${path}/resources/images/landscape/vegetarian.png">
								</div>
								<div class="left_comment">
									<div>
										<strong style="color: #3d3d3d">남해로 떠나는<br>특별한 기차
											여행
										</strong>
									</div>
								</div>
							</div>
							<div>
								<div class="right_img">
									<img
										src="${path}/resources/images/landscape/book_store_after_rain.png">
								</div>
								<div class="left_comment">
									<div>
										<strong style="color: #3d3d3d">남해의 멋과 맛을 담아,<br>스페이스
											미조
										</strong>
									</div>
								</div>
							</div>
							<div>
								<div class="right_img">
									<img
										src="${path}/resources/images/landscape/boys_are_coming.png">
								</div>
								<div class="left_comment">
									<div>
										<strong style="color: #3d3d3d">경남 의령으로 떠나는<br>특별한
											일출 여행🌞
										</strong>
									</div>
								</div>
							</div>
						</div>
						<div class="recommend_slide_item" data-color="yellow">
							<div>
								<div class="right_img">
									<img
										src="${path}/resources/images/landscape/boys_are_coming.png">
								</div>
								<div class="left_comment">
									<div>
										<strong style="color: #3d3d3d">경남 의령으로 떠나는<br>특별한
											일출 여행🌞
										</strong>
									</div>
								</div>
							</div>
							<div>
								<div class="right_img">
									<img
										src="${path}/resources/images/landscape/book_store_after_rain.png">
								</div>
								<div class="left_comment">
									<div>
										<strong style="color: #3d3d3d">남해의 멋과 맛을 담아,<br>스페이스
											미조
										</strong>
									</div>
								</div>
							</div>
							<div>
								<div class="right_img">
									<img src="${path}/resources/images/landscape/vegetarian.png">
								</div>
								<div class="left_comment">
									<div>
										<strong style="color: #3d3d3d">남해로 떠나는<br>특별한 기차
											여행
										</strong>
									</div>
								</div>
							</div>
						</div>
						<!-- <button type="button" id="viewMore"></button> -->
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

				<%-- 후기 게시글들 --%>
				<div class="rev_imgs">
					<%-- <img alt="이미지" src="${path}/resources/images/main/imgs.jpg"> --%>
					<div class="rev_img">
						<div class="rev_img_1">
							<img alt="1" src="${path}/resources/images/main/main_review_img1.jpg">
						</div>
						<div class="rev_img_title">
							<div class="rev_img_text1">다대포 꿈의 낙조분수에서 세계 최대, 최고 수준의 음악분수를 즐기고 왔습니다.</div>
							<div class="rev_img_text2">
								<div>김*지</div>
								<div>
									<i class="fi fi-rr-eye"></i>
									2560
								</div>
								<div>2025-02-06</div>
							</div>
						</div>
					</div>
					
					<div class="rev_img">
						<div class="rev_img_1">
							<img alt="1" src="${path}/resources/images/main/main_review_img2.jpg">
						</div>
						<div class="rev_img_title">
							<div class="rev_img_text1">아름다운 섬 흑산도에서 가족들과 잊지못할 추억을 쌓고 왔습니다.</div>
							<div class="rev_img_text2">
								<div>이*지</div>
								<div>
									<i class="fi fi-rr-eye"></i>
									1506
								</div>
								<div>2024-01-26</div>
							</div>
						</div>
					</div>
					
					<div class="rev_img">
						<div class="rev_img_1">
							<img alt="1" src="${path}/resources/images/main/main_review_img3.jpg">
						</div>
						<div class="rev_img_title">
							<div class="rev_img_text1">푸르디 푸른 검은 바닷물이 일렁이는 도시!</div>
							<div class="rev_img_text2">
								<div>한*원</div>
								<div>
									560
									<i class="fi fi-rr-eye"></i>
								</div>
								<div>2022-11-05</div>
							</div>
						</div>
					</div>
					
					<div class="rev_img">
						<div class="rev_img_1">
							<img alt="1" src="${path}/resources/images/main/main_review_img4.jpg">
						</div>
						<div class="rev_img_title">
							<div class="rev_img_text1">초등학생 아이와 함께 다녀왔어요. 아이가 정말 행복했다고 다음에 또 오자고 하네요.</div>
							<div class="rev_img_text2">
								<div>박*지</div>
								<div>
									450
									<i class="fi fi-rr-eye"></i>
								</div>
								<div>2020-01-03</div>
							</div>
						</div>
					</div>
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

		<footer>
			<!-- footer 시작 -->
			<%@ include file="/WEB-INF/views/common/footer.jsp"%>
			<!-- footer 끝 -->
		</footer>
	</div>
	</div>
</body>

</html>