<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>지역 목록</title>

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/recommendCourse/regionList.css">

<!-- js -->
<script src="https://kit.fontawesome.com/4901c67f37.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<!-- (3-3-2). 자바스크립트 소스 연결 -->
<!-- defer : html을 다 읽은 후에 자바스크립트를 실행한다. 페이지가 모두 로드된 후에 해당 외부 스크립트가 실행된다. -->
<script src="${path}/resources/js/recommendCourse/regionDetail.js" defer></script>

</head>
<body>
	<div class="wrap">
		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<!-- header 끝 -->
		
		<!-- 컨텐츠 시작 -->
		<div id="container">
			<div id="contents">
				<!-- 상단 중앙1 시작 -->
				<div id="title">
					<br><br>
					<h3 align="center">내가 가고싶은 여행지는 여기닷!</h3>
					<br><br>
					
					<div class="search" align="center">
					  <div class="container-fluid">
					    <form class="search-box" action="" method="get">
					      <input class="search-text" type="text" placeholder="가고 싶은 여행지를 입력해보세요." size="50">
					      <button class="search-btn" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
					    </form>
					  </div>
					</div>
				</div>	
				<!-- 상단 중앙1 종료 -->
				
				<!-- 중앙화면 시작 -->
					<div id="section2">
						<div class="table_div">
							<form name="areaList">
								<table>
									<tr>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Jeju.jpg" class="area_img" alt="제주" onclick="showJeju()">
											</a>
										</th>
										
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Busan.jpg" class="area_img" alt="부산" onclick="showBusan()">
											</a>
										</th>
										
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Seoul.jpg" class="area_img" alt="서울" onclick="showSeoul()">
											</a>
										</th>
										
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Gyeongju.jpg" class="area_img" alt="경주" onclick="showGyeongju()">
											</a>
										</th>
										
									 </tr>
									
									<tr>
										<td class="area-english"> JEJU </td>
										<td class="area-english"> BUSAN </td> 
										<td class="area-english"> SEOUL </td>
										<td class="area-english"> GYEONGJU</td>
									 </tr>

									<tr>
										<td class="area-korea"> 대한민국 제주 </td>
										<td class="area-korea"> 대한민국 부산 </td> 
										<td class="area-korea"> 대한민국 서울 </td>
										<td class="area-korea"> 대한민국 경주 </td>
									 </tr>
									
									<tr>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Gangneung.jpg" class="area_img" alt="강릉" onclick="showJeju()">
											</a>
										</th>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Yeosu.jpg" class="area_img" alt="여수" onclick="showBusan()">
											</a>
										</th>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Geojetongyeong.jpg" class="area_img" alt="거제통영" onclick="showSeoul()">
											</a>
										</th>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Namwon.jpg" class="area_img" alt="남원" onclick="showGyeongju()">
											</a>
										</th>
									 </tr>
									 
									<tr>
										<td class="area-english"> GANGNEUNG </td>
										<td class="area-english"> YEOSU </td> 
										<td class="area-english"> GEOJETONGYEONG </td>
										<td class="area-english"> NAMWON</td>
									 </tr>
									
									<tr>
										<td class="area-korea"> 대한민국 강릉 </td>
										<td class="area-korea"> 대한민국 여수 </td> 
										<td class="area-korea"> 대한민국 거제통영 </d>
										<td class="area-korea"> 대한민국 남원 </td>
									 </tr>
									
									<tr>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Jeonju.jpg" class="area_img" alt="전주" onclick="showJeju()">
											</a>
										</th>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Pohang.jpg" class="area_img" alt="포항" onclick="showBusan()">
											</a>
										</th>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Daejeon.jpg" class="area_img" alt="대전" onclick="showSeoul()">
											</a>
										</th>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Incheon.jpg" class="area_img" alt="인천" onclick="showGyeongju()">
											</a>
										</th>
									 </tr>
									 
									<tr>
										<td class="area-english"> JEONJU </td>
										<td class="area-english"> POHANG </td> 
										<td class="area-english"> DAEJEON </td>
										<td class="area-english"> INCHEON </td>
									 </tr>
									
									<tr>
										<td class="area-korea"> 대한민국 전주 </td>
										<td class="area-korea"> 대한민국 포항 </td> 
										<td class="area-korea"> 대한민국 대전 </td>
										<td class="area-korea"> 대한민국 인천</td>
									 </tr>
									
									<tr>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Jecheon.jpg" class="area_img" alt="춘천" onclick="showJeju()">
											</a>
										</th>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Gunsan.jpg" class="area_img" alt="군산" onclick="showBusan()">
											</a>
										</th>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Mokpo.jpg" class="area_img" alt="목포" onclick="showSeoul()">
											</a>
										</th>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Andong.jpg" class="area_img" alt="안동" onclick="showGyeongju()">
											</a>
										</th>
									 </tr>
									 
									 <tr>
										<td class="area-english"> CHUNCHEON </td>
										<td class="area-english"> GUNSAN </td> 
										<td class="area-english"> MOKPO </td>
										<td class="area-english"> ANDONG </td>
									 </tr>
									
									 <tr>
										<td class="area-korea"> 대한민국 춘천 </td>
										<td class="area-korea"> 대한민국 군산 </td> 
										<td class="area-korea"> 대한민국 목포 </td>
										<td class="area-korea"> 대한민국 안동 </td>
									 </tr>
									
									 <tr>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Ulleung.jpg" class="area_img" alt="울릉도" onclick="showJeju()">
											</a>
										</th>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Gapyeong.jpg" class="area_img" alt="가평" onclick="showBusan()">
											</a>
										</th>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Jecheon.jpg" class="area_img" alt="제천" onclick="showSeoul()">
											</a>
										</th>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Suwon.jpg" class="area_img" alt="수원" onclick="showGyeongju()">
											</a>
										</th>
									 </tr>										

									 <tr>
										<td class="area-english"> ULLEUNG </td>
										<td class="area-english"> GAPYEONG </td> 
										<td class="area-english"> JECHEON </td>
										<td class="area-english"> SUWON </td>
									 </tr>
									
									 <tr>
										<td class="area-korea"> 대한민국 울릉도 </td>
										<td class="area-korea"> 대한민국 가평 </td> 
										<td class="area-korea"> 대한민국 제천 </td>
										<td class="area-korea"> 대한민국 수원 </td>
									  </tr>
									 
									 <tr>
										<th>
											<a href="${path}/regionDetail.rc">
												<img src="${path}/resources/images/recommendCourse/area/Yeongwol.jpg" class="area_img" alt="영월" onclick="showJeju()">
											</a>
										</th>
									 </tr>	
									 
									 <tr>
										<td class="area-english"> YEONGWOL </td>
									 </tr>
									 
									 <tr>
										<td class="area-korea"> 대한민국 영월 </td>
									 </tr>
								</table>
							</form>
						</div>
					</div>
				<!-- 중앙 화면 종료 -->
				<!-- 상단 중앙2 종료 -->
			</div>
		</div>

		<!-- 컨텐츠 끝 -->
		
		<!-- footer 시작 -->
		<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		<!-- footer 끝 -->
	</div>
</body>
</html>