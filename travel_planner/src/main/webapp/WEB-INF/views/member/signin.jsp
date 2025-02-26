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
			border-bottom-style: solid;
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
	<div style="display: flex; justify-content: center; padding-top: 10%;">
		<img alt="logo" src="${path}/resources/images/logo.svg" width="10%" height="auto" />
	</div>

	<form action="sendAuthMember.do" method="POST">
		<fieldset class="form_input">
			<legend>이메일 확인</legend>
			<table>
				<tr>
					<td colspan="3" align="center" style="padding-bottom: 48px;">여기닷 서비스는 사용중인 메일로 인증 후 회원가입을 실시할 수 있습니다.</td>
				</tr>
				<tr>
					<td colspan="2" class="col"><input type="email" name="login_email" placeholder=" 이메일" required /></td>
					<td><input type="submit" value="인증번호발송" style="border-width: 1px; border-radius: 4px; background-color: white; width: max-content; padding: 8px 12px;" /></td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>