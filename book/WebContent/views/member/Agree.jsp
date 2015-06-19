<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>회원가입 창</title>

<script type="text/javascript">
	function chk() {
		var req = document.form.req.checked;
		var num = 0;
		if (req == true) {
			num = 1;
		}
		if (num == 1) {
			document.form.submit();
		} else {
			alert("개인정보 약관에 동의하셔야 합니다.");
		}
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
		
			<form action="<%=request.getContextPath()%>/member/SignUpNew.soso" name="form" method="post">
				<table height="650">
					<tr>
						<td width="100%" height="63px"><b>회원가입</b></td>
					</tr>
					<tr>
						<td width="100%" height="50%" align="center">
							<hr> <br>
							<p align="left">
								<span style="padding-left: 160px"> <b>동네북 약관동의 </b></span>
							</p> <br> <textarea rows="20" cols="150">가. 수집하는 개인정보의 항목첫째, 회사는 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.
회원가입
- 이름, 생년월일, 성별, 아이디, 비밀번호, 별명, 연락처(메일주소, 휴대폰 번호 중 선택), 가입인증정보
만14세 미만 아동 회원가입 
   </textarea> <br> <input type="checkbox" name="req"> 개인정보 수집 및 이용에
							동의합니다.
						</td>
					</tr>
					<tr>
						<td align="center" valign="top"><br/> <input type="button"
							value="동의" onclick="chk()" /></td>
					</tr>
				</table>
			</form>

		</section>
	</article>
	<div><jsp:include page="../main/footer.jsp"/></div>	
</body>
</html>