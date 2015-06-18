<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>예약 확인 페이지</title>

<style>
@import
	url("<%=request.getContextPath()%>/css/reservation/reservation-common.css")
	;
</style>

</head>
<body>
<div><jsp:include page="../main/header.jsp"/></div>
<br /><br />
	<article id="reservationContent">

		<jsp:include page="/views/reservation/reservationMenu.jsp" />

		<section class="rightContent">

			<div>
				<b style="font-size: 32px">예약 완료</b>
				<form action="<%=request.getContextPath()%>/del.soso" style="font-size: 21px">
					<%=request.getAttribute("memberId")%>
					님의 예약이 완료 되었습니다. <br />
					<mark style="font-size: 21px">
						자리번호 확인 :
						<%=request.getAttribute("seatNo")%></mark>
					<mark style="font-size: 21px">
						시간 확인 :
						<%=request.getAttribute("wanted")%>
						<%--  <%= request.getAttribute("time") %> --%>
					</mark>


					<br /><br />
					<b style="font-size: 32px">열람실 예약 자리</b>
						<p><input type="radio" name="seatNo" 
						value="one" checked="checked" /><b class="font18px">1번 자리</b> 
						<input type="radio" name="seatNo"
							value="two" /><b class="font18px">2번 자리</b><br /> 
							<input type="radio" name="seatNo"
							value="three" /><b class="font18px">3번 자리</b> 
							<input type="radio" name="seatNo"
							value="four" /><b class="font18px">4번 자리</b><br /> 
							<input type="radio" name="seatNo"
							value="five" /><b class="font18px">5번 자리</b>
							<input type="radio" name="seatNo"
							value="six" /><b class="font18px">6번 자리</b><br /> 
							<input type="radio" name="seatNo"
							value="seven" /><b class="font18px">7번 자리</b>
							<input type="radio" name="seatNo"
							value="eight" /><b class="font18px">8번 자리</b><br /> 
							<input type="radio" name="seatNo"
							value="nine" /><b class="font18px">9번 자리</b>
							<input type="radio" name="seatNo"
							value="ten" /><b class="font18px">10번 자리</b>
							<br /></p>
							
					<input type="submit" value="예약 취소" />
				</form>
			</div>

		</section>

	</article>
<div><jsp:include page="../main/footer.jsp"/></div>
</body>
</html>