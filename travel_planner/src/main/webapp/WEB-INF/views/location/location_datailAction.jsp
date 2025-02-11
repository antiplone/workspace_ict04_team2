<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
span {
    background: linear-gradient(to top, #90a955 20%, transparent 20%);
  }
  
   	/* 버튼 색상 및 모양 */
    .button {
        background-color: #ced4da; /* 기본 색 */
        color: black; /* 글자 색 */
        border: none; /* 테두리 없음 */
        padding: 7px 20px; /* 버튼 크기 */
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        cursor: pointer;
        border-radius: 20px; /* 둥근 모서리 */
        margin: 5px;
    }
    
    /* 버튼 호버시 색상 변경 */
    .button:hover {
        background-color: #343a40; /* 호버 색 */
        color: white; /* 글자 색 */
    }
    
</style>
<title>여기닷 - 여행지</title>
<script type="text/javascript">

/* '상세보기', '후기작성' 클릭 시 해당 위치로 스크롤 이동 */
$(document).ready(function($) {
    $(".place_move").click(function(event){
        console.log(".place_move");         
        event.preventDefault();
        $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
    });

});

</script>
</head>
<body>


		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<!-- header 끝 -->

		<hr>
		<br><br><br><br>
		
		<form name="localDetail">
			<table style="margin-left: auto; margin-right: auto;">

				<tr>
					<th><h1> <span>북촌한옥마을</span> </h1></th>
				</tr>
				
				<tr>
					<td align="center" style="padding:0px 0px 30px"> 서울 종로구 </td>
				</tr>
				
				<!-- '상세보기', '후기작성' 클릭 시 해당 위치로 스크롤 이동 -->
				<tr>
					<td align="center">
						<a href="#place" class="place_move"> <input type="button" class="button" value="상세보기"> </a>
						<a href="#review" class="place_move"> <input type="button" class="button" value="후기작성"></a>
					</td>
				</tr>
				<tr>
					<td style="padding:40px 0px 30px">
						<img src="resources/local_images/북촌한옥1.jpg" style="width:700px">
						<img src="resources/local_images/북촌한옥2.jpg" style="width:700px">
					</td>
				</tr>
				</table>
				
			<div id="place">
			<table style="margin-left: auto; margin-right: auto;">
				<tr>
					
					<th><h2> 공간소개 </h2></th>
				</tr>
				<tr>
					<td align="center">
					북촌은 경복궁과 창덕궁, 종묘 사이에 위치한 곳으로 전통한옥이 밀집되어 있는 서울의 대표적인 전통 주거지역이다.<br>
					그리고 많은 사적들과 문화재, 민속자료가 있어 도심 속의 거리 박물관이라 불리어지는 곳이기도 하다.<br>
					청계천과 종로의 윗동네라는 뜻에서 ‘북촌(North Village)’이라고 이름으로 불리었으며, 가회동과 송현동, 안국동, 그리고 삼청동이 있다.<br>
					사간동과 계동, 소격동 그리고 재동에는 역사의 흔적이 동네이름으로 남아 수백 년을 지켜온 곳이기도 하다. <br>
					</td>
				</tr>
			</table>
			</div>
		</form>
		<br><br>
		<hr>
		<br><br><br>
		
				
				
		<!-- 여행 후기 -->
		<div align="center" id="review">
			<h2>여행 후기를 작성해주세요!</h2>
			<a href="reviewList.do">
			<img src="resources/local_images/detail_review.png" style="width:700px"></a>
		</div>
		<br>
		<hr>
		<br>
		<!-- footer 시작 -->
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
		<!-- footer 끝 -->
	
</body>
</html>