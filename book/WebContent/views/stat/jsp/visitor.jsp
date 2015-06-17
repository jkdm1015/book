<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>통계 페이지</title>
	
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/stat/visitor.css");
	</style>
	
	
	<!-- HighCharts -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script src="http://code.highcharts.com/highcharts.js"></script>
	
	<!-- JQuery UI -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	
	<script src="<%=request.getContextPath()%>/js/stat/stat-common.js"></script>
	<script src="<%=request.getContextPath()%>/js/stat/visitor.js"></script>
	
</head>
<body>
	
	
<article id="statContent">
	<jsp:include page="/views/stat/jsp/parts/leftSnb.jsp" />

	<article id="rightContent">
		
		<div id="dateControlPanel">
			<span>날짜 <input type="text" name="startDate" id="datepicker" /></span>
			<button id="">검색</button>
		</div>
		
		<div class="chartBox">
			<div class="highChartContainer"></div>
		</div>
		
		<div class="statRule">
			<ul>
				<li>
					<img src="<%=request.getContextPath() %>/images/stat/li_bullet.png" alt="li_bullet.png" width="15" />
					선택하신 날짜로부터 7일 전까지의 저희 사이트에 방문한 사람 수를 표시합니다.
				</li>
				
				<li>
					<img src="<%=request.getContextPath() %>/images/stat/li_bullet.png" alt="li_bullet.png" width="15" />
					만약, 날짜가 지정되지 않으면 현재 날짜로부터 7일 전까지의 방문자 수를 표시합니다.
				</li>
			</ul>
		</div>
		
		
	</article>
</article>


<script>

$(function(){
	var xCategories = ['13일', '14일', '15일', '16일', '17일', '18일', '19일']; 
	var chartData = [
	                 	{
	                	 	name:'사람 수', 
	                	 	data:[87, 96, 110, 88, 90, 82, 81]
	                	 }
	                 
	                 ];
	
	drawChart(".highChartContainer", "?년?월?일 ~ ?년?월?일", xCategories, chartData);
	

	/*['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
	'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']*/
}());





</script>

	
	
</body>
</html>