<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 파비콘 -->
<link rel="icon" href="${path}/resources/images/common/logo.svg"/>
<link rel="trip-icon" href="${path}/resources/images/common/logo.svg"/>

<title>여기닷</title>
<link rel="stylesheet" href="${path}/resources/css/reset.css" />
<link rel="stylesheet" href="${path}/resources/css/common/main.css" />
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-straight/css/uicons-regular-straight.css'>

</head>
<body>
<div id="wrap">
	<main id="container">
		<%@ include file="header.jsp" %>
		
		<%-- 추천코스 --%>
		<div class="recom">
			<div>날짜는 정했지만 어디로 놀러가야 할지 모르겠어요!</div>
			<div>여행 일정을 짜기 어렵다면 여기닷에서 정해드릴게요</div>
			<div class="recom_img">
				<img alt="여행가는 여성" src="${path}/resources/images/main/trip-woman.svg">
			</div>
			<div class="recom_btn">
				<a href="#">
					추천코스 자세히보기
					<i class="fi fi-rs-arrow-right"></i>
				</a>
			</div>
		</div>
		
		<%-- 여행후기 --%>
		<div class="rev">
			<div class="revs">
				<div class="rev_title">
					<div>여행후기로 여행지 미리보기</div>
					<div>
						<a href="#">
							더보기
							<i class="fi fi-rs-arrow-right rev_btn"></i>
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
					<div><a href="#">2025년 1월 고객만족도조사 참여 고객 당첨자 공지</a></div>
				</div>
			</div>
		</div>
		
		<%@ include file="footer.jsp" %>
	</main>
</div>
</body>
</html>