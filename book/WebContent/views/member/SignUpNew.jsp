<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>회원가입 창</title>

<script type="text/javascript">
	
	
	var regChk = function regChk(){
		 var id = document.form.id.value;
		 var regx = /^[a-zA-Z0-9]*$/;
		 if(id.length==0 || id==null){
		  alert("아이디를 입력하십시오");
		  return false;
		 }
		 if (!regx.test(id)){
		  alert("아이디는 영어, 숫자만 입력가능합니다.");
		  document.form.id.focus();
		  return false;
		 }
		 document.form.submit();
		}
	
	

	function passchk(){
		 var pass = document.form.pass.value;
		 var pass2 = document.form.pass2.value;
		 if (pass2.length == 0 || pass2 == null) {
		  document.form.chk.value = "비밀번호를 입력하세요";
		  right = 0;
		 } else if (pass != pass2) {
		  document.form.chk.value = "비밀번호가 다릅니다.";
		  right = 0;
		 } else {   
		  document.form.chk.value = "비밀번호가 동일합니다.";
		  right = 1;
		 }
		 return;
		}


	function regCancel() {
		location.href = "<%=request.getContextPath()%>/views/member/loginForm.jsp";
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

			<form action="<%=request.getContextPath()%>/views/member/regFormProc.jsp" name="form" method="post">
				<table width="1400" height="650">
					<tr>
						<td width="100%" height="63px"><b>회원가입</b></td>
					</tr>
					<tr>
						<td height="60%" align="center" valign="top">
							<hr> <br>
							<p align="left" style="padding-left: 160px">
								<b>동네북 개인정보입력</b> <br> <br> ID : <input type="text"
									class="col-lg-2 control-label" size="23" maxlength="10"
									name="id" data-rule-required="true"
									placeholder="알파벳, 숫자만 입력하세요 "><br> <br> 비밀번호
								: <input type="password" size="16" maxlength="15" name="pass"
									placeholder="패스워드"><br> <br> 비밀번호 확인 : <input
									type="password" size="15" maxlength="20" name="pass2"
									onblur="passchk()">&nbsp; <input type="text"
									style="border-width: 0px" size="20" name="chk"
									readonly="readonly"><br> <br> 이름 : <input
									type="text" size="13" maxlength="12" name="name"
									placeholder="한글만 입력 가능"><br> <br> 이메일 : <input
									type="email" class="form-control" name="email"
									data-rule-required="true" placeholder="이메일" maxlength="20"><br>
								<br> 이메일 수신여부 : <input type="radio" name="sent" value="ok"
									checked="checked"> 수신함&nbsp;&nbsp; <input type="radio"
									name="sent" value="no"> 수신거절<br> <br> 휴대폰 : <input
									type="tel" class="form-control onlyNumber" id="ph"
									data-rule-required="true" placeholder="-를 제외하고 숫자만 입력"
									maxlength="11"><br> <br> 성별 : <input
									type="radio" name="gender" value="남자" checked="checked">
								남자&nbsp;&nbsp; <input type="radio" name="gender" value="여자">
								여자<br> <br> 생년월일 : <input id="birth" name="birth"
									type="date"><br> <br> 주소 : <input type="text"
									name="address" size="15" maxlength="15" placeholder="(시/도)만 입력"><br>
							</p>
						</td>
					</tr>
					<tr>
						<td align="center">
							<hr> <br> <input type="submit" value="가입신청"
							onclick="regChk()"> <input type="reset" value="다시입력">&nbsp;
							<input type="button" value="취소" onclick="regCancel()">
						</td>
					</tr>
				</table>
			</form>
		</section>
	</article>
	<div><jsp:include page="../main/footer.jsp"/></div>	
</body>
</html>

