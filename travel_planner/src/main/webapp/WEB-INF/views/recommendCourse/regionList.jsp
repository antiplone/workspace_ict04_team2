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
<link rel="stylesheet" href="${path}/resources/css/recommendCourse/regionDetail.css">

<!-- js -->
<script src="https://kit.fontawesome.com/4901c67f37.js" crossorigin="anonymous"></script>
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
					      <input class="search-text" type="text" placeholder="가고 싶은 여행지를 입력해보세요." size="50 aria-label="검색">
					      <button class="search-btn" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
					    </form>
					  </div>
					</div>
				</div>	
				<!-- 상단 중앙1 종료 -->
				
				<!-- 상단 중앙2 시작 -->
				<div id="section2">

					<!-- 중앙 화면 시작 -->
						<div id="center">
							<div class="table_div">
								
										<form name="areaList">
										
										<table>
										<tr>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Jeju.jpg" alt="제주" width="250px" height="250px">
												</a>
												
											</th>
											
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Busan.jpg" alt="부산" onclick="showBusan()" width="250px" height="250px">
												</a>
											</th>
											
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Seoul.jpg" alt="서울" onclick="showSeoul()" width="250px" height="250px">
												</a>
											</th>
											
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Gyeongju.jpg" alt="경주" onclick="showGyeongju()" width="250px" height="250px">
												</a>
											</th>
											
										 </tr>
										
										<tr>
											<th style="width: 25%"> JEJU </th>
											<th style="width: 50%"> BUSAN </th> 
											<th style="width: 75%"> SEOUL </th>
											<th style="width: 100%"> GYEONGJU</th>
										 </tr>

										<tr>
											<th style="width: 25%"> 대한민국 제주 </th>
											<th style="width: 50%"> 대한민국 부산 </th> 
											<th style="width: 75%"> 대한민국 서울 </th>
											<th style="width: 100%"> 대한민국 경주 </th>
										 </tr>
										
										<tr>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Gangneung.jpg" alt="강릉" onclick="showJeju()" width="250px" height="250px">
												</a>
											</th>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Yeosu.jpg" alt="여수" onclick="showBusan()" width="250px" height="250px">
												</a>
											</th>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Geojetongyeong.jpg" alt="거제통영" onclick="showSeoul()" width="250px" height="250px">
												</a>
											</th>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Namwon.jpg" alt="남원" onclick="showGyeongju()" width="250px" height="250px">
												</a>
											</th>
										 </tr>
										 
										<tr>
											<th style="width: 25%"> GANGNEUNG </th>
											<th style="width: 50%"> YEOSU </th> 
											<th style="width: 75%"> GEOJETONGYEONG </th>
											<th style="width: 100%"> NAMWON</th>
										 </tr>
										
										<tr>
											<th style="width: 25%"> 대한민국 강릉 </th>
											<th style="width: 50%"> 대한민국 여수 </th> 
											<th style="width: 75%"> 대한민국 거제통영 </th>
											<th style="width: 100%"> 대한민국 남원 </th>
										 </tr>
										
										<tr>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Jeonju.jpg" alt="전주" onclick="showJeju()" width="250px" height="250px">
												</a>
											</th>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Pohang.jpg" alt="포항" onclick="showBusan()" width="250px" height="250px">
												</a>
											</th>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Daejeon.jpg" alt="대전" onclick="showSeoul()" width="250px" height="250px">
												</a>
											</th>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Incheon.jpg" alt="인천" onclick="showGyeongju()" width="250px" height="250px">
												</a>
											</th>
										 </tr>
										 
										<tr>
											<th style="width: 25%"> JEONJU </th>
											<th style="width: 50%"> POHANG </th> 
											<th style="width: 75%"> DAEJEON </th>
											<th style="width: 100%"> INCHEON </th>
										 </tr>
										
										<tr>
											<th style="width: 25%"> 대한민국 전주 </th>
											<th style="width: 50%"> 대한민국 포항 </th> 
											<th style="width: 75%"> 대한민국 대전 </th>
											<th style="width: 100%"> 대한민국 인천</th>
										 </tr>
										
										<tr>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Jecheon.jpg" alt="춘천" onclick="showJeju()" width="250px" height="250px">
												</a>
											</th>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Gunsan.jpg" alt="군산" onclick="showBusan()" width="250px" height="250px">
												</a>
											</th>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Mokpo.jpg" alt="목포" onclick="showSeoul()" width="250px" height="250px">
												</a>
											</th>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Andong.jpg" alt="안동" onclick="showGyeongju()" width="250px" height="250px">
												</a>
											</th>
										 </tr>
										 
										 <tr>
											<th style="width: 25%"> CHUNCHEON </th>
											<th style="width: 50%"> GUNSAN </th> 
											<th style="width: 75%"> MOKPO </th>
											<th style="width: 100%"> ANDONG </th>
										 </tr>
										
										 <tr>
											<th style="width: 25%"> 대한민국 춘천 </th>
											<th style="width: 50%"> 대한민국 군산 </th> 
											<th style="width: 75%"> 대한민국 목포 </th>
											<th style="width: 100%"> 대한민국 안동 </th>
										 </tr>
										
										 <tr>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Ulleung.jpg" alt="울릉도" onclick="showJeju()" width="250px" height="250px">
												</a>
											</th>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Gapyeong.jpg" alt="가평" onclick="showBusan()" width="250px" height="250px">
												</a>
											</th>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Jecheon.jpg" alt="제천" onclick="showSeoul()" width="250px" height="250px">
												</a>
											</th>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Suwon.jpg" alt="수원" onclick="showGyeongju()" width="250px" height="250px">
												</a>
											</th>
										 </tr>										

										 <tr>
											<th style="width: 25%"> ULLEUNG </th>
											<th style="width: 50%"> GAPYEONG </th> 
											<th style="width: 75%"> JECHEON </th>
											<th style="width: 100%"> SUWON </th>
										 </tr>
										
										 <tr>
											<th style="width: 25%"> 대한민국 울릉도 </th>
											<th style="width: 50%"> 대한민국 가평 </th> 
											<th style="width: 75%"> 대한민국 제천 </th>
											<th style="width: 100%"> 대한민국 수원 </th>
										  </tr>
										 
										 <tr>
											<th>
												<a href="${path}/regionDetail.rc">
													<img src="${path}/resources/images/recommendCourse/area/Yeongwol.jpg" alt="영월" onclick="showJeju()" width="250px" height="250px">
												</a>
											</th>
										 </tr>	
										 
										 <tr>
											<th style="width: 25%"> YEONGWOL </th>
										 </tr>
										 
										 <tr>
											<th style="width: 25%"> 대한민국 영월 </th>
										 </tr>
										
										<!-- 상품이 있으면 -->
										<c:forEach var="dto" items="${list}">
											<tr>
												<td>${dto.pdNo}</td>
												<td>${dto.pdName}</td>
												<td>${dto.pdBrand}</td>
												<!-- upload 폴더를 새로고침, 브라우저도 새로고침해야 깨진 이미지가 보임 -->
												<td>
													<img src="${dto.pdImg}" width="100px">
												</td>
												<td>${dto.pdCategory}</td>
												<td>${dto.pdPrice}</td>
												<td>${dto.pdQuantity}</td>
												<td>${dto.pdStatus}</td>
												<td>${dto.pdIndate}</td>
											</tr>
										</c:forEach>	
										
										
									</table>
								</form>
							</div>
						</div>
					<!-- 중앙 화면 종료 -->
				</div>
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