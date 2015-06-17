
$(function(){
	
	$(document).ready(function(){
		selectTab("all");
	});
	
}());


/*
selectTab 파라미터들
	all			: 전체
	humanities	: 인문학
	it			: 컴퓨터 
	economy		: 경제
*/
function selectTab(category){
	toggleSelectedButton(category);
	
	var tableSelector = "table.rankTable";
	getBookData(tableSelector, category);
}

function toggleSelectedButton(category){
	$(".tabPanel ul li[class='selected']").removeClass("selected");
	$(".tabPanel ul li[data-category='" + category + "']").addClass("selected");
}

function getBookData(tableSelector, category){
	// AJAX 통신으로 결과값을 가져와서 화면에 뿌려주는 기능 (XML로 전달받음)
	// 나중에 코드로 구현..
	
}

