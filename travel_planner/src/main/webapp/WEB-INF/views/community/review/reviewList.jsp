<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/setting.jsp" %>
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
		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<!-- header 끝 -->
		
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
					<span class="reviewTotal">총 100건</span>
					
					<button type="button" class="btnimg" onclick="window.location='${path}/reviewWrite.do'">
  						<img src="${path}/resources/images/review/작성하기_아이콘.jpg" alt="작성하기 버튼">작성하기
					</button>
			</div>
				<!-- 리뷰 목록 상단 끝 -->
			
			<div class="reviewList_middle">
				<!-- 게시글 목록 시작 -->
				<div class="review_pre" id>
					<a href="${path}/reviewDetail.do" class="review_detail">
					<!-- 리뷰 정보 미리보기 시작 -->
					<div class="review_info">
						<div class="reviewTitle">가족과 떠난 함께 웃고 함께 느낀 서유럽</div>
						<div class="reviewContents_pre">먼저 여행이지를 통해 서유럽 패키지 선택을 했던 신랑을 칭찬하고 시작합니다^^</div>
						<div class="review_info2">작성자/작성일</div>
					</div>
					<!-- 리뷰 정보 미리보기 끝 -->
					
					<!-- 리뷰 사진 시작 -->
					<div class="review_img">
						<div class="review_img1">
							<img alt="리뷰 사진1" src="${path}/resources/images/review/리뷰사진.jpg">
						</div>
					</div>
					<!-- 리뷰 사진 끝 -->
					</a>
				</div>
				
				<div class="review_pre">
					<!-- 리뷰 정보 미리보기 시작 -->
					<div class="review_info">
						<div class="reviewTitle">가족과 떠난 함께 웃고 함께 느낀 서유럽</div>
						<div class="reviewContents_pre">먼저 여행이지를 통해 서유럽 패키지 선택을 했던 신랑을 칭찬하고 시작합니다^^</div>
						<div class="review_info2">작성자/작성일</div>
					</div>
					<!-- 리뷰 정보 미리보기 끝 -->
					
					<!-- 리뷰 사진 시작 -->
					<div class="review_img">
						<div class="review_img1">
							<img alt="리뷰 사진1" src="${path}/resources/images/review/리뷰사진.jpg">
						</div>
					</div>
					<!-- 리뷰 사진 시작 -->
					
				</div>
				
				<div class="review_pre">
					<!-- 리뷰 정보 미리보기 시작 -->
					<div class="review_info">
						<div class="reviewTitle">가족과 떠난 함께 웃고 함께 느낀 서유럽</div>
						<div class="reviewContents_pre">먼저 여행이지를 통해 서유럽 패키지 선택을 했던 신랑을 칭찬하고 시작합니다^^</div>
						<div class="review_info2">작성자/작성일</div>
					</div>
					<!-- 리뷰 정보 미리보기 끝 -->
					
					<!-- 리뷰 사진 시작 -->
					<div class="review_img">
						<div class="review_img1">
							<img alt="리뷰 사진1" src="${path}/resources/images/review/리뷰사진.jpg">
						</div>
					</div>
					<!-- 리뷰 사진 끝 -->
					
				</div>
				
				<div class="review_pre">
					<!-- 리뷰 정보 미리보기 시작 -->
					<div class="review_info">
						<div class="reviewTitle">가족과 떠난 함께 웃고 함께 느낀 서유럽</div>
						<div class="reviewContents_pre">먼저 여행이지를 통해 서유럽 패키지 선택을 했던 신랑을 칭찬하고 시작합니다^^</div>
						<div class="review_info2">작성자/작성일</div>
					</div>
					<!-- 리뷰 정보 미리보기 끝 -->
					
					<!-- 리뷰 사진 시작 -->
					<div class="review_img">
						<div class="review_img1">
							<img alt="리뷰 사진1" src="${path}/resources/images/review/리뷰사진.jpg">
						</div>
					</div>
					<!-- 리뷰 사진 끝 -->
					
				</div>
				
				<div class="review_pre">
					<!-- 리뷰 정보 미리보기 시작 -->
					<div class="review_info">
						<div class="reviewTitle">가족과 떠난 함께 웃고 함께 느낀 서유럽</div>
						<div class="reviewContents_pre">먼저 여행이지를 통해 서유럽 패키지 선택을 했던 신랑을 칭찬하고 시작합니다^^</div>
						<div class="review_info2">작성자/작성일</div>
					</div>
					<!-- 리뷰 정보 미리보기 끝 -->
					
					<!-- 리뷰 사진 시작 -->
					<div class="review_img">
						<div class="review_img1">
							<img alt="리뷰 사진1" src="${path}/resources/images/review/리뷰사진.jpg">
						</div>
					</div>
					<!-- 리뷰 사진 끝 -->
					
				</div>
				
				<div class="review_pre">
					<!-- 리뷰 정보 미리보기 시작 -->
					<div class="review_info">
						<div class="reviewTitle">가족과 떠난 함께 웃고 함께 느낀 서유럽</div>
						<div class="reviewContents_pre">먼저 여행이지를 통해 서유럽 패키지 선택을 했던 신랑을 칭찬하고 시작합니다^^</div>
						<div class="review_info2">작성자/작성일</div>
					</div>
					<!-- 리뷰 정보 미리보기 끝 -->
					
					<!-- 리뷰 사진 시작 -->
					<div class="review_img">
						<div class="review_img1">
							<img alt="리뷰 사진1" src="${path}/resources/images/review/리뷰사진.jpg">
						</div>
					</div>
					<!-- 리뷰 사진 끝 -->
					
				</div>
				
				<div class="review_pre">
					<!-- 리뷰 정보 미리보기 시작 -->
					<div class="review_info">
						<div class="reviewTitle">가족과 떠난 함께 웃고 함께 느낀 서유럽</div>
						<div class="reviewContents_pre">먼저 여행이지를 통해 서유럽 패키지 선택을 했던 신랑을 칭찬하고 시작합니다^^</div>
						<div class="review_info2">작성자/작성일</div>
					</div>
					<!-- 리뷰 정보 미리보기 끝 -->
					
					<!-- 리뷰 사진 시작 -->
					<div class="review_img">
						<div class="review_img1">
							<img alt="리뷰 사진1" src="${path}/resources/images/review/리뷰사진.jpg">
						</div>
					</div>
					<!-- 리뷰 사진 끝 -->
					
				</div>
				
				<div class="review_pre">
					<!-- 리뷰 정보 미리보기 시작 -->
					<div class="review_info">
						<div class="reviewTitle">가족과 떠난 함께 웃고 함께 느낀 서유럽</div>
						<div class="reviewContents_pre">먼저 여행이지를 통해 서유럽 패키지 선택을 했던 신랑을 칭찬하고 시작합니다^^</div>
						<div class="review_info2">작성자/작성일</div>
					</div>
					<!-- 리뷰 정보 미리보기 끝 -->
					
					<!-- 리뷰 사진 시작 -->
					<div class="review_img">
						<div class="review_img1">
							<img alt="리뷰 사진1" src="${path}/resources/images/review/리뷰사진.jpg">
						</div>
					</div>
					<!-- 리뷰 사진 끝 -->
					
				</div>
				
				<div class="review_pre">
					<!-- 리뷰 정보 미리보기 시작 -->
					<div class="review_info">
						<div class="reviewTitle">가족과 떠난 함께 웃고 함께 느낀 서유럽</div>
						<div class="reviewContents_pre">먼저 여행이지를 통해 서유럽 패키지 선택을 했던 신랑을 칭찬하고 시작합니다^^</div>
						<div class="review_info2">작성자/작성일</div>
					</div>
					<!-- 리뷰 정보 미리보기 끝 -->
					
					<!-- 리뷰 사진 시작 -->
					<div class="review_img">
						<div class="review_img1">
							<img alt="리뷰 사진1" src="${path}/resources/images/review/리뷰사진.jpg">
						</div>
					</div>
					<!-- 리뷰 사진 끝 -->
					
				</div>
				
				<div class="review_pre" id="review_pre_last">
					<!-- 리뷰 정보 미리보기 시작 -->
					<div class="review_info">
						<div class="reviewTitle">가족과 떠난 함께 웃고 함께 느낀 서유럽</div>
						<div class="reviewContents_pre">먼저 여행이지를 통해 서유럽 패키지 선택을 했던 신랑을 칭찬하고 시작합니다^^</div>
						<div class="review_info2">작성자/작성일</div>
					</div>
					<!-- 리뷰 정보 미리보기 끝 -->
					
					<!-- 리뷰 사진 시작 -->
					<div class="review_img">
						<div class="review_img1">
							<img alt="리뷰 사진1" src="${path}/resources/images/review/리뷰사진.jpg">
						</div>
					</div>
					<!-- 리뷰 사진 끝 -->
					
				</div>
				
				
				<!-- 게시글 목록 끝 -->
			</div>	
				
			
		</div>
		
		<!-- 컨텐츠 끝 -->
		
		<!-- footer 시작 -->
		<%@ include file="/WEB-INF/views/common/footer.jsp" %>
		<!-- footer 끝 -->
	</div>
	
	
</body>
</html>