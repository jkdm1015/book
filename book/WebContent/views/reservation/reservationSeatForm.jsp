<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>예약 페이지</title>

<style>
@IMPORT
	url("<%=request.getContextPath()%>/css/reservation/reservation-common.css")
	;
</style>


</head>
<body>
<div><jsp:include page="../main/header.jsp"/></div>
<article id="reservationContent">

	<jsp:include page="reservationMenu.jsp" />
	
	
	<section class="rightContent">
		<form action="<%=request.getContextPath()%>/result.soso" method="get" style="height: 500px">
			<fieldset class="hidden">
				<table style="border: 1px solid black; border-collapse: collapse;">
					<tr style="border: 1px solid black;">
						<td style="border: 1px solid black;">ID :</td>
						<td style="border: 1px solid black;"><input type="text"
							name="memberId" id="memberId" placeholder="아이디" /></td>
					</tr>
					<tr style="border: 1px solid black;">
						<td style="border: 1px solid black;">비밀번호 :</td>
						<td style="border: 1px solid black;"><input type="password"
							name="pass" id="pass" /></td>
					</tr>
				</table>
			</fieldset>
			
			<br /><br />
			<b style="font-size: 32px">예약일</b>
			<br /> <br />
				<b style="font-size: 21px">최대 예약일은 7일간 입니다.</b>
				<br /><br />
				<label for="wanted" style="font-size: 18px">원하는 예약일</label>
			
				<input id="wanted" name="wanted" type="date" /> <!-- date month week time datetime -->
					<!-- <input type="time" name="time" id="time" /> -->
			
			<br /><br />
			<b style="font-size: 32px">열람실 예약 자리</b>
				<br /><br />
				<input type="radio" name="seatNo" value="1" checked="checked" /><b class="font18px">1번 자리</b>
				<input type="radio" name="seatNo" value="2" /><b class="font18px">2번 자리</b><br /> 
				<input type="radio" name="seatNo" value="3" /><b class="font18px">3번 자리</b>
				<input type="radio" name="seatNo" value="4" /><b class="font18px">4번 자리</b><br /> 
				<input type="radio" name="seatNo" value="5" /><b class="font18px">5번 자리</b>
				<input type="radio" name="seatNo" value="6" /><b class="font18px">6번 자리</b><br /> 
				<input type="radio" name="seatNo" value="7" /><b class="font18px">7번 자리</b>
				<input type="radio" name="seatNo" value="8" /><b class="font18px">8번 자리</b><br /> 
				 <input type="radio"	name="seatNo" value="9" /><b class="font18px">9번 자리</b>
				<input type="radio" name="seatNo" value="10" /><b class="font18px">10번 자리</b>
				<br />	<br />
			<input type="submit" value="등록" />
		</form>
	</section>

</article>
<div><jsp:include page="../main/footer.jsp"/></div>	
</body>
</html>
