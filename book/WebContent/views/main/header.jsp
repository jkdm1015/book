<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@import url(<%=request.getContextPath()%>/css/main/header.css);
</style>

<!-- wrap, wrapper 의미를 주어지는 클래스나 아이디는 body 바로 밑
	최상위 div에게 보통 주어진다. 문법적 의미는 없다. -->
<header id="top">
	<div id="login">
		<a href="#">회원가입</a> | <a href="#">로그인</a> | <a href="#">사이트맵</a>
	</div>
	<div class="clear"></div>
	<nav id="topMenu">
		<table id="noneT" align="center" style="width: 80%; height: 50px;">
			<tr>
				<td id="centT"><a href="<%=request.getContextPath()%>/MainController">HOME</a></td>
				<td id="centT"><a href="#">자료검색</a></td>
				<td id="centT"><a href="#">신청/예약</a></td>
				<td id="centT"><a href="#">게시판</a></td>
				<td id="centT"><a href="<%=request.getContextPath()%>/stat/favBook.soso">통계</a></td>
			</tr>
		</table>
		
	</nav>
</header>
<div class="clear"></div>
