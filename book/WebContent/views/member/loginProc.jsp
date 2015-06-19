<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
     String id = (String)request.getParameter("id");
     String pass = (String)request.getParameter("pass");
    %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
<title>loginPro.jsp</title>
</head>
<body>
<div><jsp:include page="../main/header.jsp"/></div>
<br /><br />
<%=id %>님 반갑습니다<br>
<%=pass %>
<div><jsp:include page="../main/footer.jsp"/></div>	
</body>
</html>