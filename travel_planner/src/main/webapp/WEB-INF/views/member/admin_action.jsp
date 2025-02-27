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

<title>관리자-처리</title>
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
	
		.admin_input {
			border-style: none;
			border-bottom-style: solid;
			width: 50%;
		}
		
		.admin_input td {
			border-style: none;
		}
	
		.admin_input input {
			width: 95%;
			padding: 1px 0px;
		}
	
		.admin_input .col input {
			border-style: none;
			border-bottom-style: solid;
			font-size: 20px;
		}
	
		.admin_input .col input:focus { /* :가상요소 = 예약어 느낌? */
			outline: none;
		}
	
		.admin_input .col {
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
		function executeCMD() {
			let adminCmd = document.getElementById("admin_cmd");
			$.ajax({
			    url: "admin_action.do",
			    type: "POST",
			    data: adminCmd.value,
			    contentType: "application/javascript; charset=utf-8;",
			    dataType: "html",
			    success: function(response) {
			    	if (response.error == null) {
				        console.log(response);
						$("#cmd_contents").html(response);
						if (adminCmd.value.includes("목록")) {
							$(".btnimg").hide(10);
							$("#cmd_contents table").hide(10);
						}
						else if (adminCmd.value == "후기:작성") {
							$("header").hide(10);
							$("#footer").hide(10);
						}
			    	}
			    	else {
			    		$("#failed").html(JSON.stringify(response));
			    	}
			    },
			    error: function(xhr, status, error) {
			    	console.log("[AJAX:ERROR-STATUS] " + status);
			        console.log(xhr.responseText);
			    }
			});
		}
	</script>
	<div style="display: flex; justify-content: center; padding-top: 10%;">
		<img alt="logo" src="${path}/resources/images/logo.svg" width="10%" height="auto" />
	</div>

	<form action="#" method="POST">
		<fieldset class="admin_input">
			<legend>관리자 명령</legend>
			<table>
				<tr>
					<td colspan="3" align="center" style="padding-bottom: 48px;">명령어 입력 = 페이지:기능</td>
				</tr>
				<tr>
					<td colspan="2" class="col"><input type="text" id="admin_cmd" name="admin_cmd" placeholder=" 명령어" required /></td>
					<td><input type="button" value="실행" onclick="executeCMD()" style="border-width: 1px; border-radius: 4px; background-color: white; width: max-content; padding: 8px 12px;" /></td>
				</tr>
				<tr>
					<td id="failed" style="text-align: center; color: red"></td>
				</tr>
			</table>
		</fieldset>
	</form>

	<div id="cmd_contents">
		<!-- 명령처리 -->
	</div>
</body>
</html>