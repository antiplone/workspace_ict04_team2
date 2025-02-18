<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">	<!-- 반응형 웹 -->
<title>footer</title>
<link rel="stylesheet" href="${path}/resources/css/common/footer.css" />

<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-straight/css/uicons-regular-straight.css'>

<!-- JS -->
<script src="${path}/resources/js/common/main.js" defer></script>
</head>
<body>

<div id="footer">
	<div class="footer">
		<div class="footer_toggle">
			<label for="entre">사업자 정보</label>
			<i class="fi fi-rs-angle-down" id="entre"></i>
		</div>
		
		<div class="footer_detail">
			<span>㈜</span>여기닷<span class="vertical_bar_b">대표 : 전영대</span><br>
			사업자 등록번호 824-81-12345<br>
			통신판매업 신고번호 2024-마포-233<br>
			서울시 마포구 신수동 63-14 (스타벅스 건물 3층)
		</div>
		
		<div class="footer_discription">
			<div><span>㈜</span>여기닷은 통신판매중개로서 통신판매의 당사자가 아니며 상품 거래정보 및 거래 등에 대해 책임을 지지 않습니다.</div>
			<div class="br">여기닷 서비스의 모든 콘텐츠는 저작자에게 저작권이 있으므로 무단 업로드 혹은 사용 시 법적 책임이 발생할 수 있습니다.</div>
		</div>
		
		<div class="footer_btn">
			<div class="vertical_bar_a"><a href="#">서비스 이용약관</a></div>
			<div><a href="#">개인정보 처리방침</a></div>
			<div class="vertical_bar_b"><a href="#">고객센터</a></div>
			<div class="tour_link">여기닷은 "<a href="https://api.visitkorea.or.kr/#/" target="blank">한국관광공사 TourAPI가 제공하는 관광정보를 활용합니다.</a>"</div>
		</div>
	</div>
</div>
	
</body>
</html>