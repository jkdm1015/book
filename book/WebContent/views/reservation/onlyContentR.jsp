<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>  <!-- html:5  +  tab키 -->
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Only Content Frame</title>
	<style>
		@IMPORT url("<%= request.getContextPath()%>/css/reservation/onlyContent.css");
	</style>
</head>
<body>
<div> <jsp:include page="../main/header.jsp" /></div>
<div id="wrap">
	
	<jsp:include page="resultForm.jsp" />
</div>
<jsp:include page="../main/footer.jsp" />
</body>
</html>

