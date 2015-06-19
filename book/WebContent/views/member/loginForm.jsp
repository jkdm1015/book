<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>loginForm</title>

<script type="text/javascript">

	function loginchk() {
		var regx = /^[a-zA-Z0-9]*$/;
		var id = document.form.id.value;
		var pass = document.form.pass.value;
		
		if (id.length == 0 || id == null) {
			alert("아이디를 입력하시오");
			document.form.id.focus();
			return;
		}
		if (!regx.test(id)) {
			alert("아이디는 영어, 숫자만 입력가능합니다.");
			document.form.id.focus();
			return false;
		}
		if (pass.length < 6 || pass == null) {
			alert("비밀번호는 6글자이상입니다^^");
			document.form.pass.focus();
			return;
		}
		if (!regx.test(pass)) {
			alert("비밀번호는 영어, 숫자만 입력가능합니다.");
			document.form.pass.focus();
			return false;
		}
		document.form.submit();
	}

	function Agree() {
		location.href = "../member/Agree.jsp";
	}

	function searchIdForm() {
		 location.href = "../member/searchIdForm.jsp";
	}

	function searchPassForm() {
		 location.href = "../member/searchPassForm.jsp";
	}
</script>

<style>
@IMPORT
	url("<%=request.getContextPath()%>/css/member/member-common.css");
</style>
</head>
<body>
<div><jsp:include page="../main/header.jsp"/></div>
<br /><br />

	<article id="reservationContent">

		<jsp:include page="memberMenu.jsp" />
		<section class="rightContent">

			<form action="<%=request.getContextPath()%>/views/member/loginProc.jsp" method="post" name="form">
				<table width="1400" height="650">
					<tr>
						<td width="100%" height="63px"><b>동네북에 오신걸 환영합니다.</b></td>
					</tr>
					<tr>
						<td height="100px" align="center" valign="top">
							<hr>
							<br>
							<p align="left" style="padding-left: 160px">
								<b>동네북 로그인</b> <br>
								<br> <b>아이디 : </b><input type="text" size="10"
									maxlength="15" name="id" class="inputid">&nbsp; <b>비밀번호
									: </b><input type="password" size="10" maxlength="15" name="pass"
									class="inputpass">&nbsp;&nbsp; <input type="submit"
									value="로그인" width="50" height="30" align="middle"
									onclick="loginchk()">
								<!--  <br> <br>
 -->
							</p>
						</td>
					</tr>
					<td align="center">
						<hr>
						<br> <input type="button" value="회원가입" onclick="Agree()">
						<input type="button" value="아이디 찾기" onclick="searchIdForm()">
						<input type="button" value="비밀번호 찾기" onclick="searchPassForm()">
					</tr>
				</table>
			</form>
		</section>
	</article>
<div><jsp:include page="../main/footer.jsp"/></div>	
</body>
</html>

