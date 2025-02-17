<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">


<script>

/* $(function() {
    let tourAPI = "https://apis.data.go.kr/B551011/EngService1/areaCode1?serviceKey=iT9iBhvgZ32wgE4Y3jGX1MrKqGm2tHBX72Y3BIKN9D57mVnFLFdS7FmG8njDdCgZr3YvY2KBDzpLsK%2FbxGkFCg%3D%3D&MobileApp=AppTest&MobileOS=ETC&pageNo=1&numOfRows=10&areaCode=1&_type=json";
    $.getJSON(tourAPI)
       .done(function(data) {
          $.each(data.response, function(i, item) {
             console.log(item);
             $("body").append(JSON.stringify(item));
//             window.location = "login_action.do?item=" + item;
          });
       });
 }); */

/* 버튼 선택 시 색상 변경  */
/* function changeColor(button) {}
    var button = document.getElementById("gu_choice1");
    button.style.backgroundColor = "#343a40"; // 원하는 색상으로 변경
    button.style.color = "white"; // 글자색 변경 
}
 */
 
 function gu_choice() {
	 
	 // 선택한 '구' 정보 가져오기
	 let checks = "";
		for(let i=0; i<document.gu_form.gu_select.length; i++){
			if(document.gu_form.gu_select[i].checked){
				checks += document.gu_form.gu_select[i].value + " ";
			}
		}
	
	// 해당 팝업창 닫으면서 페이지 이동 (선택한 '구'에 해당되는 리스트 페이지로)
	// alert(checks);
	 opener.location.href = "${path}/location_mainListAction.lc"; // 추가
	 self.close();
}
 
</script>

<title>여기닷 - 여행지</title>

 <style>
 	
 	.gu_table {
	 	display: flex;
    	width: 520px;
    	flex-wrap: wrap;
    	justify-content: center;
 	}
 	.gu_tr {
	 	display: flex;
	    flex-wrap: wrap;
	    justify-content: center;
 	}
 	
 	/* '구' 선택하는 checkbox 디자인 설정 */
	 .gu_select {
	 	display: flex;
	 	margin: 10px;
	 	
	 }
	 
	 .gu_select input[type=checkbox] {
	 	display: none;
	 }
	 
	 .gu_select input[type=checkbox]+label {
	 	display: inline-block;
	    cursor: pointer;
	    height: 30px;
	    width: 80px;
	    border: none; /* 테두리 없음 */
	    border-radius: 30px;
	    line-height: 30px;
	    text-align: center;
	    font-weight:bold;
	    font-size: 15px;
	 }
	 
	 .gu_select input[type=checkbox]+label{
	    background-color: #ced4da;
	    color: black;
	}
	
	/* '구' 클릭 시 색상 변경 */
	.gu_select input[type=checkbox]:checked+label{
	    background-color: #343a40;
	    color: white;
	}

	.choice_button {
        background-color: #ced4da; /* 기본 색 */
        color: black; /* 글자 색 */
        border: none; /* 테두리 없음 */
        padding: 7px 20px; /* 버튼 크기 */
        text-align: center;
        text-decoration: none;
        font-size: 16px;
        cursor: pointer;
        border-radius: 30px; /* 둥근 모서리 */
        
    }
	

    /* 버튼 호버시 색상 변경 */
    .choice_button:hover {
        background-color: #343a40; /* 호버 색 */
        color: white; /* 글자 색 */
    }
</style>
</head>
<body>

	<form name="gu_form" action="#" method="post">
		
		<table>
			<tbody class="gu_table">
			<!-- 선택한 '시'에 맞는 '구' 목록 가져오기 -->
			<tr class="gu_tr">
				<c:forEach var="list" items="${list}">
				<td align="center">
					<div class="gu_select" align="center">
						<input type="checkbox" name="gu_select" id="check_${list.tc_gu_num}"  value="${list.tc_gu}"><label for="check_${list.tc_gu_num}">${list.tc_gu}</label>
						<!-- <input type="checkbox" name="gu_select" id="check_2"  value="강남구"><label for="check_2">강남구</label>
						<input type="checkbox" name="gu_select" id="check_3"  value="도봉구"><label for="check_3">도봉구</label>
						<input type="checkbox" name="gu_select" id="check_4"  value="동대문구"><label for="check_4">동대문구</label>
						<input type="checkbox" name="gu_select" id="check_5"  value="동작구"><label for="check_5">동작구</label> -->
					</div>
				</td>
				</c:forEach>
			</tr>
			
			<tr>
				<td align="center">
				<input type="button" class="choice_button" value="선택 완료" onclick="gu_choice()">
				<!-- 해당 구 선택 시 해당 리스트들 보이는 페이지로 이동 -->
				</td>
			</tr>
			
			</tbody>
		</table>
		
		
		
	</form>
	
	
	
	<!-- 제일 최근 것 -->
			<!-- 	<tr>
				<td align="center">
					<div class="gu_select" align="center">
						<input type="checkbox" name="gu_select" id="check_1"  value="전체"><label for="check_1">전체</label>
						<input type="checkbox" name="gu_select" id="check_2"  value="강남구"><label for="check_2">강남구</label>
						<input type="checkbox" name="gu_select" id="check_3"  value="도봉구"><label for="check_3">도봉구</label>
						<input type="checkbox" name="gu_select" id="check_4"  value="동대문구"><label for="check_4">동대문구</label>
						<input type="checkbox" name="gu_select" id="check_5"  value="동작구"><label for="check_5">동작구</label>
					</div>
				</td>
			</tr>
			<tr>
				<td align="center">
					<div class="gu_select" align="center">
						<input type="checkbox" name="gu_select" id="check_6"  value="마포구"><label for="check_6">마포구</label>
						<input type="checkbox" name="gu_select" id="check_7"  value="서대문구"><label for="check_7">서대문구</label>
						<input type="checkbox" name="gu_select" id="check_8"  value="서초구"><label for="check_8">서초구</label>
						<input type="checkbox" name="gu_select" id="check_9"  value="성동구"><label for="check_9">성동구</label>
					</div>
				</td>
				
			</tr>
			 -->
		<%-- <table>
			
			<!-- hidden : 직접 input 박스에서 입력받지 못한 값들을 전달할 때 사용  -->
			<!-- 원하는 '구' 선택 후 해당 리스트들 조회를 위해 service에 '시' 값 전달용  -->
			<input type="hidden" name="hiddenLocation_si" value="${list.tc_area}">
										
			<!-- 선택한 '시'에 맞는 '구' 목록 가져오기 -->
			<c:set var="location_gu" value="${fn:split(list.getTc_area(), '@'}" />
			<tr>
				<td><input type="button" class="gu_button" name="gu_choice" id="gu_choice" value="${location_gu[2]}" onclick="changeColor()"></td>
			</tr>
			
			
			<tr>
				<td colspan="4" align="center"><input type="submit" value="선택 완료"></td>
				<!-- 해당 구 선택 시 해당 리스트들 보이는 페이지로 이동 -->
			</tr>
		</table> --%>
		
</body>
</html>