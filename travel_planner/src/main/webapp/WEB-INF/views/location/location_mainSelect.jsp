<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 웹 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- css -->
<link rel="stylesheet" href="${path}/resources/css/common/font.css">
<link rel="stylesheet" href="${path}/resources/css/common/common.css">
<link rel="stylesheet" href="${path}/resources/css/location/location_mainSelect.css">

<!-- js -->
<%-- <script src="${path}/resources/js/location/location_mainSelect.js" defer></script> --%>

<title>여기닷 - 여행지</title>
<script>
 function gu_choice() {
	 // 선택한 '구' 정보 가져오기
	 let checks = "";
		for(let i=0; i<document.gu_form.gu_select.length; i++){
			if(document.gu_form.gu_select[i].checked){
				checks += document.gu_form.gu_select[i].value + "@";
			}
		}
	
	// 해당 팝업창 닫으면서 페이지 이동 (선택한 '구'에 해당되는 리스트 페이지로)
	//alert(checks);
	 opener.location.href = "${path}/location_mainListAction.lc?location_si=${tc_si_num}&location_gu=" + checks; // 추가
	 self.close();
}</script>
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
						<input type="checkbox" name="gu_select" id="check_${list.tc_gu_num}" value="${list.tc_gu}"><label for="check_${list.tc_gu_num}">${list.tc_gu}</label>
					</div>
				</td>
				</c:forEach>
			</tr>
			</tbody>
		</table>
				
				<!-- '선택 완료' 버튼 -->
				<div class="gu_select2" align="center">
					<input type="button" class="choice_button" value="선택 완료" onclick="gu_choice()">
					<!-- 해당 구 선택 시 해당 리스트들 보이는 페이지로 이동 -->
				</div>
	</form>
</body>
</html>