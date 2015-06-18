<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>예약 삭제 페이지</title>

<style>
@IMPORT
	url("<%=request.getContextPath()%>/css/reservation/reservation-common.css")
	;
</style>

</head>
<body>
<div><jsp:include page="../main/header.jsp"/></div>
	<article id="reservationContent">

		<jsp:include page="/views/reservation/reservationMenu.jsp" />

		<section class="rightContent">
		<br /><br />
			<div>
				
					<p style="font-size: 32px">
						신청하신 열람실의
					<mark style="font-size: 32px">
						자리번호 확인 :
						<%=request.getAttribute("seatNo")%>
					</mark>
					<mark style="font-size: 32px">
						시간 확인 :
						<%=request.getAttribute("wanted")%>
					</mark>	
						<%-- <%= request.getAttribute("time") %> --%>
						
					<br /> <b style="font-size: 32px">의 예약을 취소하였습니다.</b>
					
				</p>
				<br /><br />
				
				<a href="<%=request.getContextPath()%>/views/reservation/reservationSeatForm.jsp" style="font-size: 32px"><mark>예약 페이지로 이동</mark></a>
			</div>


		</section>
	</article>
<div><jsp:include page="../main/footer.jsp"/></div>
</body>
</html>