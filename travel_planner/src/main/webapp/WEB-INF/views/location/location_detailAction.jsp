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
    
    .location_detail {
    	display: block;
    	 width:70%;
    	 margin: auto;
    	 padding:30px 10px 10px
    }
    
    #place {
    	margin: 50px;
    }
    
    .place_detail_1 table {
    	width: 50%;
    }
    
    
    .place_detail_2 table {
    	width: 50%;
    	margin: 50px
    }
    
    .place_detail_2 th {
    	text-align: left;
    	colspan: 2;
    	color: black;
    	font-size: 15px;
    }
    
    .place_detail_2 td {
    	colspan: 3;
    	color: #495057;
    	font-size: 14px;
    }
    
    /* 상세내용 '더보기' 버튼 클릭 시 전체 내용 보여짐 */
    .container {
    	display: -webkit-box;
	    -webkit-line-clamp: 4;	/* 블록 컨테이너의 콘텐츠를 지정한 줄 수만큼으로 제한 */
	    -webkit-box-orient: vertical; 
	    overflow: hidden;
    }
    
    .container_more-btn {
    	appearance: none;
	    border: 1px solid black;
	    padding: 0.5em;
	    border-radius: 0.25em;
	    cursor: pointer;
	    margin: 1rem;
    }
    
    .container_more-btn::before {
	  content: '더보기';
	}
	
	.container_more-btn:checked::before {
	  content: '닫기';
	}
	
	.container:has(+ .container_more-btn:checked) {
	  -webkit-line-clamp:unset
	}
	
	/* 더보기 버튼 클릭 시 색상 변경 */
	.container_more-btn:hover {
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
        $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);	/* top으로 이동 0.5초 */
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
					<td>
						<img src="resources/local_images/북촌한옥1.jpg" class="location_detail">
					</td>
				</tr>
				<tr>
					<td>
						<img src="resources/local_images/북촌한옥2.jpg" class="location_detail">
					</td>
				</tr>
				</table>
				
			<div id="place">
				<div class="place_detail_1">
					<table style="margin-left: auto; margin-right: auto;">
						<tr>
							
							<th><h2> 공간소개 </h2></th>
						</tr>
						<tr>
							<td>
							<p class="container">
							북촌은 경복궁과 창덕궁, 종묘 사이에 위치한 곳으로 전통한옥이 밀집되어 있는 서울의 대표적인 전통 주거지역이다.
							그리고 많은 사적들과 문화재, 민속자료가 있어 도심 속의 거리 박물관이라 불리어지는 곳이기도 하다.
							청계천과 종로의 윗동네라는 뜻에서 ‘북촌(North Village)’이라고 이름으로 불리었으며, 가회동과 송현동, 안국동, 그리고 삼청동이 있다.
							사간동과 계동, 소격동 그리고 재동에는 역사의 흔적이 동네이름으로 남아 수백 년을 지켜온 곳이기도 하다.
							<br><br>
							
							북촌은 조선시대에 조성된 양반층 주거지로서 1920년대까지 그다지 큰 변화가 없었는데,
							1930년대에 서울의 행정구역이 확장되고, 도시구조도 근대적으로 변형되면서 변화가 일어났다.
							주택경영회사들이 북촌의 대형 필지와 임야를 매입하여, 그 자리에 중소 규모의 한옥들을 집단적으로 건설하였는데,
							현재 한옥들이 밀집되어 있는 가회동 11번지와 31번지, 삼청동 35번지, 계동 135번지의 한옥주거지들이 모두 이 시기에 형성되었다. 
							대청에 유리문을 달고, 처마에 잇대어 함석 챙을 다는 등, 새로운 재료를 사용한 북촌의 한옥은 전통적인 한옥이 갖고 있는 유형적 성격을 잃지 않으면서,
							근대적인 도시조직에 적응하여 새로운 도시주택유형으로 진화했다는 점에 주목할 수 있다.
							<br><br>
							
							북촌 지역이 모두 한옥으로 이루어져 있던 1960년대와 달리, 1990년대 이후 급속하게 들어선 다세대가구 주택 때문에 많은 수의 한옥이 사라졌지만, 
							일부지역은 양호한 한옥들이 군집을 이룬 채 많이 남아 있다. <br>
							여러 채의 한옥이 지붕처마를 잇대고 벽과 벽을 이웃과 함께 사용하고 있는 풍경은 우리가 잊고 살았던 따뜻한 정과 살아갈 맛을 느끼게 해 준다.
							북촌 지역을 걷다 보면 이어진 처마선의 아름다운만큼이나 골목길의 정겨움을 느낄 수 있다. 북촌한옥마을이 지속가능한 관광지가 될 수 있도록 침묵관광을 하도록 주의를 요한다.
							※ 침묵관광이란 외부 관광객들의 관광지 방문으로 인해 주민들의 생활권과 환경권이 침해받지 않도록 큰 소리로 떠들지 않고 조용히 여행하는 관광형태를 말한다.
							<br><br><br><br>
							
							<strong>※ 북촌마을 방문 시 지켜야 할 ‘에티켓’</strong><br>
							- 단체관광객 방문 시 반드시 가이드 동행<br>
							- 관광버스 불법주차 금지<br>
							- 무단 침입, 무단 촬영, 무단 투기, 노상방뇨, 소음 금지<br>
							- 마을 방문시간 준수<br>
							<br>
							</p>
							<input type="checkbox" class="container_more-btn">
							</td>
						</tr>
					</table>
				</div>
			</div>
			
			<div class="place_detail_2">
				<table style="margin-left: auto; margin-right: auto;">
					<tr>
						<th> 문의 및 안내 </th>
						<td> 북촌마을안내소 02-2148-4161 </td>
						<th> 홈페이지 </th>
						<td> http://hanok.seoul.go.kr/ </td>
					</tr>
					<tr>
						<th> 주소 </th>
						<td> 서울특별시 종로구 계동길 37 (계동) </td>
						<th> 이용시간 </th>
						<td> ※ 제한시간 : 17:00~익일 10:00 / 특별관리지역(레드존) 방문 금지 </td>
					</tr>
					<tr>
						<th> 휴일 </th>
						<td> 매주 일요일(골목길 쉬는 날) </td>
						<th> 주차 </th>
						<td> 불가능 </td>
					</tr>
					<tr>
						<th> 입장료 </th>
						<td> 무료 </td>
						<th> 장애인 주차 안내 </th>
						<td> 장애인 전용 주차구역 있음(창덕궁 주차장,정독도서관)_무장애 편의시설 </td>
					</tr>
				</table>
			</div>
		</form>
		<br><br>
		<hr>
		<br><br><br>

				
		<!-- 여행 후기 -->
		<div align="center" id="review">
			<h2>여행 후기를 작성해주세요!</h2> <br>
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