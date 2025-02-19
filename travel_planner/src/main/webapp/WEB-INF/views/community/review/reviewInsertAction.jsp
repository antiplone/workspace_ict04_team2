<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <!-- 반응형 웹 -->
   <meta name="viewport" content="width=device-width, initial-scale=1">   
   
   <!-- JS -->
   <!-- kits -->
   <script src="https://kit.fontawesome.com/8c5ec1910f.js" crossorigin="anonymous"></script>
   <!-- (3-3-2). 햄버거 버튼 - 자바스크립트 연결 -->
   <!-- defer : HTML을 다 읽은 후에 자바스크립트를 실행하라. 즉 페이지가 모두 로드된 후에 해당 외부스크립트를 실행 -->
   <script src="${path}/resources/js/common/main.js" defer></script>

</head>
<body>
<div class="wrap">
   
   <div id="container">
      <div id="contents">
         
         <div>   <!-- 상단 중앙1 -->
            <h1 align="center">후기 등록처리</h1>
         </div>
         
         <div id="section2">   <!-- 상단 중앙2 -->
            <c:if test="${insertCnt == 1}">
            	<script type="text/javascript">
            		setTimeout(function(){
            			alert("후기를 저장하였습니다");
            			window.location="${path}/reviewList.do";
            		}, 1000);
            	</script>
            
            </c:if>
            
            <c:if test="${insertCnt != 1}">
            	<script type="text/javascript">
            		setTimeout(function(){
            			alert("다시 등록해주세요");
            			window.location="${path}/reviewWrite.do";
            		}, 1000);
            	</script>
            
            </c:if>
         </div>
      </div>
   </div>
   
</div>
</body>
</html>