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
<link rel="stylesheet" href="${path}/resources/css/common/font.css">
<link rel="stylesheet" href="${path}/resources/css/common/common.css">
<link rel="stylesheet" href="${path}/resources/css/review/reviewWrite.css">

<script type="text/javascript">
   $(function(){
      $("#cancel").click(function(){
         if(confirm("취소 시 작성 내용이 저장되지 않습니다.\n작성을 취소하시겠습니까?")){
			window.location="${path}/reviewList.do";
		} else {
			window.location="${path}/reviewWrite.do";
		}
      })
      
      $("#save").click(function(){
         const title = $("#r_title").val();
         const content = $("#r_content").val();
         const city = $("#r_city").val();
         
         if(city == "") {
            alert("도시를 입력하세요");
            $("#r_city").focus();
            return false;
         }
         
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
         /* window.location = "${path}/reviewInsertAction.do"; */
      })
   })
   
   
</script>

</head>
<body>
   <div class="pretendardfont">
      <!-- 후기작성 상단 시작 -->
      <div id="writeTop">
         <div id="writeTitle_top">   <!-- 리뷰 게시판 제목 -->
               <h1 align="center">여행후기 작성</h1>
         </div>
      </div>
      
      <!-- 후기작성 상단 종료 -->
      <form name="review" id ="review" action="reviewInsertAction.do" method="post" enctype="multipart/form-data">
         <div id="reviewWrite">
            <div id="reviewWrite1">
               <!-- 후기 내용 시작 -->
               <div class="reviewWrite_form">
                  
                  <!-- 작성자 -->
                  <input type="hidden" name="hiddenR_name" value="${sessionScope.m_name}"/>
				<input type="hidden" name="hiddenPageNum" value="${pageNum}">
				<input type="hidden" name="hiddenR_num" value="${dto.r_num}">
				<input type="hidden" name="hiddenR_img" value="${dto.r_img}">
                  
                  <!-- 도시 시작 -->
                  <div class="reviewWrite_city">
                     <div class="reviewWrite_city1 size20 fontnormal2">지역</div>
                     <input type="text" class="reviewWrite_in pretendardfont size16" name="r_city" id="r_city" placeholder="여행도시를 입력해주세요"/>
                  </div>
                  <!-- 도시 종료 -->
                  
                  <!-- 제목 시작  -->
                  <div class="reviewWrite_title">
                     <div class="reviewWrite_title1 size20 fontnormal2">제목</div>
                     <input type="text" class="reviewWrite_in pretendardfont size16" name="r_title" id="r_title" placeholder="제목을 입력해주세요" required/>
                  </div>
                  <!-- 제목 종료 -->
                  
                  <!-- 내용 시작 -->
                  <div class="reviewWrite_content">
                     <div class="reviewWrite_content1">
                        <div class="reviewWrite_content2">
                           <div class="reviewWrite_content3 size20 fontnormal2">내용</div>
                        </div>
                        
                        <!-- 내용 입력 시작 -->
                        <div class="reviewWrite_content4">
                           <textarea placeholder="내용을 입력해주세요" name="r_content" id="r_content" class="pretendardfont size16"required></textarea>
                        </div>
                        
                        <!-- 내용 입력 종료 -->
                        
                        <!-- 파일 선택 버튼 시작 -->
                        
                        <div class="btn-img">
                           <div class="review10">   
                              <input type="file" name="r_img" id="r_img" accept="/images/*" required>
                           </div>
                        </div>
                        
                     </div>
                     
                  </div>
                  
                  <!-- 내용 종료 -->
               </div>
            </div>
         
            <!-- 태그 시작 -->
            <div class="reviewWrite_tag">Tag
               <div class="tag">
                  <span class="tag1">#</span>
                  <input type="text" class="reviewWrite_in" placeholder="태그를 입력해주세요" >
               </div>
            </div>
            <!-- 태그 종료 -->
               
            <!-- 버튼 시작 -->
            <div class="reviewWrite_btn">
               <div class="reviewWrite_btn1">
                  <input type="button" value="취소" class="inputButton pretendardfont size15" id="cancel"/>
                  <input type="submit" value="등록" class="inputButton pretendardfont size15" id="save"/>
               </div>
            </div>
            <!-- 버튼 종료 -->
            
         </div>
      </form>
   </div>
</body>
</html>