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

<title>LOGIN</title>
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
		padding-bottom: 32px;
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

	.form_input .col2 input {
		border-style: none;
		border-bottom-style: solid;
		font-size: 20px;
	}

	.form_input .col2 input:focus { /* :가상요소 = 예약어 느낌? */
		outline: none;
	}

	.form_input .col1 {
		width: 20%;
		text-align: right;
		padding: 4px 4px;
	}

	.form_input .col2 {
		width: auto;
		padding: 16px;
		padding-left: 8px;
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
	<c:if test="${param.failed != null}">
		<script type="text/javascript">
			alert("로그인 정보가 맞지 않습니다!");
			history.back();
			window.location.replace(window.location.href);
		</script>
	</c:if>
	<div style="display: flex; justify-content: center; padding-top: 10%;">
		<img alt="logo" src="${path}/resources/images/logo.svg" width="10%" height="auto" />
	</div>

	<form action="login_action.do" method="POST">
		<fieldset class="form_input">
			<legend>로그인</legend>
			<table>
				<tr>
					<td colspan="2" class="col2"><input type="email" name="login_email" placeholder=" 이메일" required /></td>
				</tr>
				<tr>
					<td colspan="2" class="col2"><input type="password" name="login_password" placeholder=" 비밀번호" required /></td>
				</tr>
				<tr>
					<td>
						<!-- calc-size가 실험적인 기술이라 변경필요 -->
						<div align="left" style="width: calc-size(max-content, size + 4px);">
							<input type="button" value="회원가입" style="inline-size: max-content" />
						</div>
					</td>
					<td align="right" style="width: max-content;">
						<div class="btn_group">
							<input type="submit" value="로그인" />
							<input type="button" value="돌아가기" onclick="window.location='${path}/home.do'"/>
						</div>
					</td>
				</tr>
					<!-- 나중에 flex-basis이용해서 배치 -->
<!-- 				<tr>
					<td colspan="2" align="right" style="width: max-content">
						<div class="btn_group">
							<input type="submit" value="로그인" />
							<input type="button" value="돌아가기" />
						</div>
					</td>
				</tr>
 -->			</table>
		</fieldset>
	</form>
</body>
</html>