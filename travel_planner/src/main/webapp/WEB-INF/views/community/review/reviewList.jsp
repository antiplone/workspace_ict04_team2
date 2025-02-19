<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/header.css">
<link rel="stylesheet" href="${path}/resources/css/common/footer.css">
<link rel="stylesheet" href="${path}/resources/css/review/reviewList.css">

<script type="text/javascript">
	$(function(){
		$("#btnIsert").click(function(){
			location.href="${path}/reviewWrite.do";
		})
	})
</script>

</head>
<body>
	<div>
		<!-- 컨텐츠 시작 -->
		<div id="reviewTop">
			<div id="reviewTitle_top">	<!-- 리뷰 게시판 제목 -->
				<!-- 상단 시작 -->
				<div>
					<h1 align="center">여행 후기</h1>
				</div>
				
				<div>
					<h3 align="center">자유롭게 후기를 남겨보세요</h3>
				</div>
				<!-- 상단 끝 -->
			</div>
			
		</div>
		
		<div id="review">
			<div class="reviewList_top">		<!-- 게시글 건수, 작성하기 버튼 -->
				<!-- 리뷰 목록 상단 시작 -->
					<span class="reviewTotal">
					총 ${total}건
					</span>
					
					<button type="button" class="btnimg" onclick="window.location='${path}/reviewWrite.do'">
  						<img src="${path}/resources/images/review/작성하기_아이콘.jpg" alt="작성하기 버튼">작성하기
					</button>
			</div>
				<!-- 리뷰 목록 상단 끝 -->
			
			<div class="reviewList_middle">
				<!-- 게시글 목록 시작 -->
				<div class="review_pre">
					
					<!-- 리뷰 정보 미리보기 시작 -->
					<c:forEach var="dto" items="${list}">
					<a href="${path}/reviewDetail.do?r_num=${dto.r_num}">
						<div class="review_pre2">
							<div class="review_info">
								<div class="reviewTitle">${dto.r_title}</div>
								<div class="reviewContents_pre">${dto.r_content}</div>
								<div class="review_info2">${dto.m_name}/${dto.r_regDate}</div>
								
							</div>
							
							<!-- 리뷰 사진 시작 -->
							<div class="review_img">
								<img alt="리뷰 사진1" src="${dto.r_img}">
							</div>
						</div>
					</a>
					</c:forEach>
					<!-- 리뷰 사진 끝 -->
					<!-- 리뷰 정보 미리보기 끝 -->
					
				</div>
				
				
			</div>	
			
			<table margin-left: auto; margin-right: auto;>
				<tr>
					<td colspan="5" align="center">
						<!-- 페이징 처리 -->
						<!-- 이전 버튼 활성화 -->
						<c:if test="${paging.startPage > 10}">
							<a href="${path}/reviewList.do?pageNum=${paging.prev}">[이전]</a>
						</c:if>
						
						<!-- 페이지 번호 처리 -->
						<c:forEach var="num" begin="${paging.startPage}" end="${paging.endPage}">
							<a href="${path}/reviewList.do?pageNum=${num}">${num}</a>
						</c:forEach>
						
						<!-- 다음 버튼 활성화 -->
						<c:if test="${paging.endPage < paging.pageCount}">
							<a href="${path}/reviewList.do?pageNum=${paging.next}">[다음]</a>
						</c:if>
					</td>
				</tr>
			</table>
		</div>
		
		<!-- 컨텐츠 끝 -->
		
	</div>
	
	
</body>
</html>