<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 파비콘 -->
<link rel="icon" href="${path}/resources/images/common/logo.svg" />
<link rel="trip-icon" href="${path}/resources/images/common/logo.svg" />

<title>회원가입사항</title>
	<style>
		/* css도 구조적으로 나중에 정리 */
		form, fieldset {
			width: inherit;
		}
	
		form {
			padding-top: 5%;
			display: flex;
	  		justify-content: center;
		}
	
		legend {
			text-align: center;
			font-size: 36px;
			font-weight: bold;
			padding-bottom: 8px;
		}
	
		table {
			width: 100%;
		}
	
		.form_input {
			border-style: none;
			width: 50%;
		}
	
		.form_input input {
			width: 95%;
			padding: 1px 0px;
		}
	
		.form_input .col input {
			border-style: none;
			border-bottom-style: solid;
			font-size: 20px;
		}
	
		.form_input .col input:focus { /* :가상요소 = 예약어 느낌? */
			outline: none;
		}
	
		.form_input .col {
			width: auto;
			padding: 16px;
		}
	
		/* 그룹단위로 묶을것과 개별로 적용할부분 생각 */
		.btn_group {
			display: inline-flex;
			align-content: space-between;
			flex-direction: row;
			width: 20%;
			gap: 8px;
			padding: 4px 0px;
			padding-right: 4px;
		}

		.btn_group input {
			padding: 2px 4px;
		}
	</style>
</head>
<body>
	<script type="text/javascript">
		function checkCode() {
			let code = document.getElementById("auth").value;
			let failed = document.getElementById("failed");
			let auth = "${authCode}";

			if (code != auth) {
				failed.innerHTML = "인증코드가 올바르지 않습니다.";
			}
			else {
				alert("회원가입이 완료되었습니다.");
				window.location = "signinMemberAction.do?email=${email}&" + $( "form" ).serialize();
			}
		}
	</script>
	<div style="display: flex; justify-content: center; padding-top: 10%;">
		<img alt="logo" src="${path}/resources/images/logo.svg" width="10%" height="auto" />
	</div>

	<form action="#" method="POST">
		<fieldset class="form_input">
			<legend>${email}로 전달했습니다.</legend>
			<table>
				<tr>
					<td colspan="3" align="center" style="padding-bottom: 48px;"><span style="text-decoration: underline;">이메일</span>이 정확한지 확인해주세요.</td>
				</tr>
				<tr>
					<td colspan="2" class="col"><input type="text" name="name" placeholder=" 이름" required /></td>
				</tr>
				<tr>
					<td colspan="2" class="col"><input type="password" name="password" placeholder=" 비밀번호" required /></td>
				</tr>
				<tr>
					<td colspan="2" class="col"><input type="text" id="auth" placeholder=" 인증코드" required /></td>
					<td><input type="button" value="완료" style="border-width: 1px; border-radius: 4px; background-color: white; width: max-content; padding: 8px 12px;" onclick="checkCode()" /></td>
				</tr>
				<tr>
					<td id="failed" style="text-align: center; color: red"></td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>