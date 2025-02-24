<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>

<!-- CSS -->
<link rel="stylesheet" href="${path}/resources/css/common/reset.css">
<link rel="stylesheet" href="${path}/resources/css/common/font.css">
<link rel="stylesheet" href="${path}/resources/css/common/common.css">
<link rel="stylesheet" href="${path}/resources/css/review/reviewDetail.css">

<script type="text/javascript">
	$(function() {
 		$("#btnDelete").click(function() {
    		
	 		//	삭제버튼 눌렀을 때 뜨는 모달창
	    	if(confirm("삭제하시겠습니까?")){
	    		location.href = '${path}/reviewdeleteAction.do?r_num=${dto.r_num}';
	    	} else {
	    		location.href = '${path}/reviewDetail.do?r_num=${dto.r_num}';
	    	}
		});

		comment_list();
		
		// 댓글쓰기 버튼
		$("#commentSaveBtn").click(function() {
			comment_add();
		});
		
		// 댓글작성
		function comment_add() {
//			alert("comment_add 확인");
			
			// 후기글번호, 댓글작성자, 댓글 내용을 파라미터로 넘김
			let param = {
				"review_num" : ${dto.r_num},	// key:value => 댓글 번호: 후기글 번호
				"comment" : $('#rc_comment').val(),
				"name" : "${sessionScope.m_name}"
			}		// key-value 형식으로 지정해서 param으로 감싸고 값을 넘김
			
			$.ajax({
				url: '${path}/comment_insert.do',
				type: 'POST',
				data: param,
				
				success: function() {
					$('#rc_comment').val("");		// 작성한 값 초기화
					comment_list();	
				},
				error: function() {
					alert("댓글 작성 오류나요~!");
				}
			});
		}
		
		// 댓글목록
		function comment_list() {
//			alert("comment_list");	// 확인용
			$.ajax({
				url: '${path}/comment_list.do',		// 컨트롤러로 이동 - (9)
				type: 'POST',
				data: 'review_num=${dto.r_num}',
				
				success: function(result) {		// (13) - result는 comment_list.jsp(컨트롤러에서 넘긴) 데이터
					$('.commentList').html(result);		// div id가 commentList인 자리에 댓글 리스트페이지 출력
				},
				error: function() {
					alert("댓글목록 오류나요~!");
				}
			});
		}
	});
</script>
</head>
<body>
	<div id="review_details" class="pretendardfont">
		<div id="reviewDetail_t">
			<h1 align="center">여행 후기</h1>
		</div>
		
		<div id="reviewDetail">
			<form name="review_detail" action="reviewUpdate.do?r_num=${dto.r_num}" method="post" enctype="multipart/form-data">
				<!-- hidden :직업 input 박스에서 입력받지 못한 값들을 전달할 때 사용 -->
				<input type="hidden" name="hiddenPageNum" value="${pageNum}" />
				<input type="hidden" name="hiddenR_num" value="${dto.r_num}" />
				
				<div class="reviewDetail_top">
					<div class="reviewDetail_city">${dto.r_city}</div>
					<div class="reviewDetail_title size25">${dto.r_title}</div>
					
					<div class="reviewDetail_info size15">
						<div class="reviewDetail_writer">${dto.r_name}<span></span>${dto.r_regDate}</div>
						<div class="reviewDetail_views">조회수 ${dto.r_readCnt}</div>
					</div>
				</div>
				
				<div class="reviewDetail_middle">
					<div>
						<div class="reviewDetail_contents">${dto.r_content}</div>
						<div class="reviewDetail_image" align="center">
							<img alt="이미지" src="${dto.r_img}" width="500px" />
						</div>
					</div>
				
					<!-- <div class="reviewDetail_tag">태그</div> -->
				</div>
				
				<div class="reviewDetail_bottom">
					<input type="button" value="목록" class="reviewDetail_listBtn" id="btnRevie" onclick="window.location='${path}/reviewList.do'">
					<input type="submit" value="수정" class="reviewDetail_corBtn">
					<input type="button" value="삭제" class="reviewDetail_corBtn" id="btnDelete">
				</div>
			</form>
		</div>
		<!-- 리뷰 끝 -->
		
		<div id="review_comment">
			<%-- 후기 댓글 --%>
			<div class="reviewComment">
				<div class="size25" style="font-weight: 600;">
					여기톡
					<c:if test="${dto.r_comment_count > 0}">
						<span>${dto.r_comment_count}</span>
					</c:if>	<!-- 해당 게시글의 댓글 갯수 -->
				</div>
				<div class="commentTable">
					<div class="commentInput">
						<span class="input_text"><textarea id="rc_comment" name="rc_comment" placeholder="후기에 대한 생각을 작성해주세요!" class="pretendardfont size15"></textarea></span>
						<span class="input_btn"><input type="button" value="등록" id="commentSaveBtn"></span>
					</div>
					<div class="commentList">
						<%-- 댓글이 있으면 for문 돌려짐 --%>
					</div>
				</div>
			</div>
		</div>
		
		<table style="display: none;">
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
</body>
</html>