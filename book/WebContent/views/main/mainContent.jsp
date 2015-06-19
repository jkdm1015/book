<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html> <!-- html:5  html5로 기본 구성잡기 -->
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Only Content Frame</title>
	<style>@import url("<%=request.getContextPath()%>/css/main/onlyContent.css");</style>
</head>
<body>
<div id="wrap" class="clear">
	<jsp:include page="header.jsp"/>
		<section class="content">
			<div>
			<br />
				<table class="tab" align="center">
					<tr class="tab" style="height: 50px">
						<td class="tab"><a href="#">공지</a></td>
						<td class="tab"><a href="#">자유</a></td>
					</tr>
					<tr class="tab">
					<style>
						@import url("<%=request.getContextPath()%>/css/board/boardWrite.css");
					</style>
					<td colspan="2"><jsp:include page="../board/mainBoard.jsp" /></td>
					</tr>
				</table>
				<style>@import url(<%=request.getContextPath()%>/css/main/onlyContent.css);</style>
				<br /><br /><br /><br />
				<table class="tab" align="center">
					<tr class="tab" style="height: 50px">
						<td class="tab">신간</td>
					</tr>
					<tr class="tab">
						<td class="tab centTd">내용</td>
					</tr>
				</table>
				<br /><br /><br /><br />
				<table class="tab" align="center">
					<tr class="tab" style="height: 50px">
						<td class="tab">베스트</td>
					</tr>
					<tr class="tab">
						<td class="tab centTd">내용</td>
					</tr>
				</table>
				</div>
			</section>
</div>
		
<jsp:include page="footer.jsp"/>
</body>
</html>