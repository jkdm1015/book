<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>소메뉴바</title>
	<style>
	 @import url("<%=request.getContextPath()%>/css/book/Aside.css");
	</style>
</head>
<body>
	<aside class="aside">
	<table class="center">
		<tr>
			<td><a href="<%=request.getContextPath()%>/book/Aside/BookInfoSearch.soso"><b style="font-size: 32px">통합검색</b></a></td>
		</tr>
		
		<tr>
			<td><a href="<%=request.getContextPath()%>/book/Aside/BookGroupSearch.soso"><b style="font-size: 32px">분류별검색</b></a></td>
		</tr>
		<tr>
			<td><a href="<%=request.getContextPath()%>/book/Aside/OverdueBookSearch.soso"><b style="font-size: 32px">연체도서검색</b></a></td>
		</tr>
		<tr>
			<td><a href="<%=request.getContextPath()%>/book/Aside/BookInfoAddForm.soso"><b style="font-size: 32px">책정보 입력</b></a></td>
		</tr>
	</table>
	</aside>
	
</body>
</html>