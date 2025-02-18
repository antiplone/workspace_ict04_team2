<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/reset.css">
<link rel="stylesheet" href="${path}/resources/css/review/reviewDetail.css">

<script type="text/javascript">
	$(function() {
 		$("#btnDelete").click(function() {
    		
	 		//	삭제버튼 눌렀을 때 뜨는 모달창
	    	if(confirm("삭제하시겠습니까?") == true){
	    		location.href = '${path}/reviewdeleteAction.do?r_num=${dto.r_num}';
	    	} else {
	    		location.href = '${path}/reviewDetail.do?r_num=${dto.r_num}';
	    	}
		});
	});
</script>
</head>
<body>
	<div>
		<!-- header 시작 -->
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		<!-- header 끝 -->
		
		<!-- 컨텐츠 시작 -->
		<div id="reviewDetail_t">
			<h1 align="center">여행 후기</h1>
			<!-- 상단 끝 -->
		</div>
		
		<!-- 리뷰 시작 -->	
		<div id="reviewDetail">
			<!-- hidden :직업 input 박스에서 입력받지 못한 값들을 전달할 때 사용 -->
			<input type="hidden" name = "hiddenPageNum" value="${pageNum}" />
			<input type="hidden" name="hidden_r_num" value="${dto.r_num}" />
			
			<div class="reviewDetail_top">
			
				<!-- 도시/제목/작성자 시작 -->
				
				<div class="reviewDetail_city">
				도시
				</div>
				<div>${dto.r_num}</div>
				
				<div class="reviewDetail_title">${dto.r_title}</div>
				
				<!-- 작성자/작성일/조회수 시작 -->
				<div class="reviewDetail_info">
					<div class="reviewDetail_writer">${dto.m_name}/${dto.r_regDate}</div>
					<div class="reviewDetail_views">조회수 ${dto.r_readCnt}</div>
				</div>
				<!-- 작성자/작성일/조회수 시작 끝 -->
				<!-- 도시/제목/작성자 끝 -->
				
			</div>
			
			
			<div class="reviewDetail_middle">
				<!-- 후기 시작 -->
				<div>
					<div class="reviewDetail_contents">${dto.r_content}</div>
					<div class="reviewDetail_image" align="center">
						<img alt="이미지" src="${dto.r_img}" width="500px" />
					</div>
				</div>
				<!-- 후기 끝 -->
			
				<!-- 태그 시작 -->
				<div class="reviewDetail_tag">태그</div>
				<!-- 태그 끝 -->
				
			</div>
			
			<!-- 후기 하단 시작 -->
			<div class="reviewDetail_bottom">
				<input type="button" value="목록" class="reviewDetail_listBtn" id="btnRevie" onclick="window.location='${path}/reviewList.do'">
				<input type="button" value="수정" class="reviewDetail_corBtn">
				<input type="button" value="삭제" class="reviewDetail_corBtn" id="btnDelete">
			</div>
			<!-- 후기 하단 끝 -->
			
		</div>
		<!-- 리뷰 끝 -->
		
		
		
		<!-- 컨텐츠 끝 -->
		
	</div>

</body>
</html>