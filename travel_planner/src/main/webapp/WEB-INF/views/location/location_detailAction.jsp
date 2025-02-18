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
					<th><h1> <span>${dto.ti_name}</span> </h1></th>
				</tr>
				
				<tr>
					<td align="center" style="padding:0px 0px 30px"> ${dto.ti_location} </td>
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
						<img src="resources/local_images/${dto.ti_detail_url}" class="location_detail">
					</td>
				</tr>
				<tr>
					<td>
						<img src="resources/local_images/${dto.ti_detail_url2}" class="location_detail">
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
							${dto.ti_content_big}
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
						<td> ${dto.ti_qna} </td>
						<th> 홈페이지 </th>
						<td> ${dto.ti_url} </td>
					</tr>
					<tr>
						<th> 주소 </th>
						<td> ${dto.ti_address} </td>
						<th> 이용시간 </th>
						<td> ${dto.ti_open} </td>
					</tr>
					<tr>
						<th> 휴일 </th>
						<td> ${dto.ti_holiday} </td>
						<th> 주차 </th>
						<td> ${dto.ti_parking} </td>
					</tr>
					<tr>
						<th> 입장료 </th>
						<td> ${dto.ti_admission} </td>
						<th> 장애인 주차 안내 </th>
						<td> ${dto.ti_parking2} </td>
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