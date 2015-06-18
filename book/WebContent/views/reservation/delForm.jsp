<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
 <meta charset="UTF-8" />
 <title>예약 삭제 페이지</title>
</head>
<body>
 <div>
 신청하신 열람실의 
 <mark>자리번호 확인 : <%= request.getAttribute("seatNo") %></mark>
 <mark>시간 확인 : <%= request.getAttribute("wanted") %>  <%-- <%= request.getAttribute("time") %> --%></mark> <br />
 의  예약을 취소하였습니다.
 <form action="<%= request.getContextPath()%>/views/reservation/onlyContent.jsp">
 	<input type="submit" value="예약 페이지로 이동" />
 </form>
 </div>
</body>
</html>