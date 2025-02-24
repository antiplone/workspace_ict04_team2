<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰작성</title>

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/reset.css">
<link rel="stylesheet" href="${path}/resources/css/review/reviewWrite.css">

<!-- 버튼 클릭시 -->
<script type="text/javascript">
	$(function() {
		// 취소버튼 클릭시
 		$("#cancel").click(function() {
			if(confirm("취소 시 작성 내용이 저장되지 않습니다.\n작성을 취소하시겠습니까?") == true) {
				window.location = "${path}/reviewList.do";
			} else {
				window.href = "${path}/reviewUpdate.do?r_num=${dto.r_num}";
				return false;
			}
		});
      
		$("#save").click(function() {
			const title = $("#r_title").val();
			const content = $("#r_content").val();
			const city = $("#r_city").val();
         
			/* if( city == "") {
			   alert("도시를 입력하세요");
			   $("#r_city").focus();
			   return false;
			} */
          
			if(title == "") {
				alert("제목을 입력하세요");
				$("#r_title").focus();
				return false;
			}
         
			if(content == "") {
				alert("내용을 입력하세요");
				$("#r_content").focus();
				return false;
			}
		});
   });
</script>

</head>
<body>
	<div>
		<div id="writeTop">
			<div id="writeTitle_top">
					<h1 align="center">여행후기 수정</h1>
			</div>
		</div>
		
		<form name="review" action="reviewUpdateAction.do" method="post" enctype="multipart/form-data">
			<div id="reviewWrite">
				<div id="reviewWrite1">
					<div class="reviewWrite_form">
						
						<!-- 작성자 -->
						<input type="hidden" name="hiddenR_name" value="${dto.r_name}"/>
						<input type="hidden" name="hiddenPageNum" value="${pageNum}"/>
						<input type="hidden" name="hiddenR_img" value="${dto.r_img}"/>
						<input type="hidden" name="hiddenR_num" value="${dto.r_num}"/>
						
						<div class="reviewWrite_city">
							<div class="reviewWrite_city1">지역</div>
							<input type="text" class="reviewWrite_in" id="r_city" value="${dto.r_city}" placeholder="여행도시를 입력해주세요"/>
						</div>
						
						<div class="reviewWrite_title">
							<div class="reviewWrite_title1">제목</div>
							<input type="text" class="reviewWrite_in" name="r_title" id="r_title" value="${dto.r_title}" placeholder="제목을 입력해주세요" required/>
						</div>
						
						<div class="reviewWrite_content">
							<div class="reviewWrite_content2">
								<div class="reviewWrite_content3">내용</div>
							</div>
							
							<div class="reviewWrite_content4">
								<textarea placeholder="내용을 입력해주세요" name="r_content" id="r_content" required>${dto.r_content}</textarea>
							</div>
							
							<div class="btn-img">
								<img alt="이미지" src="${dto.r_img}" width="200px"><br>
								<input type="file" name="r_img" id="r_img" accept="images/*" />
							</div>
						</div>
					</div>
				</div>
			
				<div class="reviewWrite_tag">
					Tag
					<div class="tag">
						<span class="tag1">#</span>
						<input type="text" class="reviewWrite_in" placeholder="태그를 입력해주세요" disabled>
					</div>
				</div>
					
				<div class="reviewWrite_btn">
					<div class="reviewWrite_btn1">
						<input type=button value="취소" class="inputButton" id="cancel" />
						<input type="submit" value="등록" class="inputButton" id="save" />
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>