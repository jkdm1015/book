<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>통계 페이지</title>
	
	<style>
		@IMPORT url("<%=request.getContextPath()%>/css/stat/realTimeBookSearchStat.css");
	</style>
	
	
	<!-- HighCharts -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script src="http://code.highcharts.com/highcharts.js"></script>
	
	<!-- JQuery UI -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	
	<script src="<%=request.getContextPath()%>/js/stat/stat-common.js"></script>
	<script src="<%=request.getContextPath()%>/js/stat/realTimeBookSearchStat.js"></script>
	
</head>
<body>
	
		
	<article id="statContent">
		<jsp:include page="/views/stat/jsp/parts/leftSnb.jsp" />
	
		<article id="rightContent">

			<section class="tabPanel">
				<ul>
					<li data-category="all" onclick="selectTab('all');">전체</li>
					<li data-category="humanities" onclick="selectTab('humanities');">인문학</li>
					<li data-category="it" onclick="selectTab('it');">IT</li>
					<li data-category="economy" onclick="selectTab('economy');">경제</li>
				</ul>
			</section>
	
	
			<section class="rankBox">
				
				<table class="rankTable">
					<colgroup>
						<col width="30px" />
						<col width="200px" />
						<col width="60px" />
						<col width="100px" />
					</colgroup>
					<thead>
						<tr>
							<th>순위</th>
							<th>책 제목</th>
							<th>저자</th>
							<th>출판사</th>
						</tr>
					</thead>
					<tbody>
						<tr class="odd">
							<td>1</td>
							<td><a href="#">아트인문학 여행</a></td>
							<td>김태진</td>
							<td>카시오페아</td>
						</tr>
						<tr class="even">
							<td>2</td>
							<td><a href="#">고독육강</a></td>
							<td>장쉰</td>
							<td>이야기가있는집</td>
						</tr>
						<tr class="odd">
							<td>3</td>
							<td><a href="#">옛 공부벌레들의 좌우명</a></td>
							<td>박수밀</td>
							<td>샘터</td>
						</tr>
						<tr class="even">
							<td>4</td>
							<td><a href="#">집 나간 책</a></td>
							<td>서민</td>
							<td>인물과상사</td>
						</tr>
						<tr class="odd">
							<td>5</td>
							<td><a href="#">글쓰기의 최전선</a></td>
							<td>은유</td>
							<td>메멘토</td>
						</tr>
						<tr class="even">
							<td>6</td>
							<td><a href="#">심플</a></td>
							<td>임정섭</td>
							<td>다산초당</td>
						</tr>
						<tr class="odd">
							<td>7</td>
							<td><a href="#">담론</a></td>
							<td>신영복</td>
							<td>돌베개</td>
						</tr>
						<tr class="even">
							<td>8</td>
							<td><a href="#">직관펌프, 생각을 열다</a></td>
							<td>대니얼 데닛</td>
							<td>동아시아</td>
						</tr>
						<tr class="odd">
							<td>9</td>
							<td><a href="#">씨네상떼</a></td>
							<td>강신주, 이상용</td>
							<td>민음사</td>
						</tr>
						<tr class="even">
							<td>10</td>
							<td><a href="#">유시민의 글쓰기 특강</a></td>
							<td>정당인</td>
							<td>생각의길</td>
						</tr>
						<tr class="odd">
							<td>11</td>
							<td><a href="#">안드로이드 스튜디오</a></td>
							<td>닐 스미스, 심재철</td>
							<td>제이펍</td>
						</tr>
						<tr class="even">
							<td>12</td>
							<td><a href="#">유니티 5 게임 제작 가이드</a></td>
							<td>주동근</td>
							<td>위키북스</td>
						</tr>
						<tr class="odd">
							<td>13</td>
							<td><a href="#">RPG 레벨 디자인</a></td>
							<td>장명곤</td>
							<td>비엘북스</td>
						</tr>
						<tr class="even">
							<td>14</td>
							<td><a href="#">POS 시스템 해킹과 방어</a></td>
							<td>슬라바 곰진</td>
							<td>에이콘</td>
						</tr>
						<tr class="odd">
							<td>15</td>
							<td><a href="#">안드로이드 통신+보안 프로그래밍 기초편</a></td>
							<td>박현재</td>
							<td>투에이치앤에스</td>
						</tr>
						<tr class="even">
							<td>16</td>
							<td><a href="#">24시간 잠들지 않는 모바일 마케팅</a></td>
							<td>강기우</td>
							<td>정보문화사</td>
						</tr>
						<tr class="odd">
							<td>17</td>
							<td><a href="#">아래아 한글 편집노트</a></td>
							<td>이종운</td>
							<td>오래</td>
						</tr>
						<tr class="even">
							<td>18</td>
							<td><a href="#">빅데이터 분석 기획</a></td>
							<td>한국디지털정책학회, 빅데이터전략연구회</td>
							<td>와우패스</td>
						</tr>
						<tr class="odd">
							<td>19</td>
							<td><a href="#">객체지향의 사실과 오해</a></td>
							<td>조영호</td>
							<td>위키북스</td>
						</tr>
						<tr class="even">
							<td>20</td>
							<td><a href="#">러시아, 지금부터 10년이 기회다</a></td>
							<td>강남영</td>
							<td>라온북</td>
						</tr>
						<tr class="odd">
							<td>21</td>
							<td><a href="#">세계 시장을 지배하는 작은 기업들은 어떤 생각을 할까</a></td>
							<td>안자이 히로유키</td>
							<td>비즈니스북스</td>
						</tr>
						<tr class="even">
							<td>22</td>
							<td><a href="#">숫자의법칙</a></td>
							<td>노구치 데츠노리</td>
							<td>어바웃어북</td>
						</tr>
						<tr class="odd">
							<td>23</td>
							<td><a href="#">슈퍼차이나</a></td>
							<td>KBS 슈퍼차이나 제작팀</td>
							<td>가나출판사</td>
						</tr>
						<tr class="even">
							<td>24</td>
							<td><a href="#">중국본토 1등주에 투자하라</a></td>
							<td>조용준</td>
							<td>한스미디어</td>
						</tr>
						<tr class="odd">
							<td>25</td>
							<td><a href="#">2016 업계지도</a></td>
							<td>한국비즈니스정보</td>
							<td>어바웃어북</td>
						</tr>
					
					</tbody>
				</table>
			</section>
			
			
			<div class="statRule">
				<ul>
					<li>
						<img src="<%=request.getContextPath() %>/images/stat/li_bullet.png" alt="li_bullet.png" width="15" />
						실시간으로 검색되는 책 이름을 순위로 매깁니다. 단, 책 이름은 저희 도서관에서 제공하는 책일 경우로 한정합니다.
					</li>
					
					<li>
						<img src="<%=request.getContextPath() %>/images/stat/li_bullet.png" alt="li_bullet.png" width="15" />
						30초마다 책 검색 순위가 자동으로 업데이트됩니다.
					</li>
					<li>
						<img src="<%=request.getContextPath() %>/images/stat/li_bullet.png" alt="li_bullet.png" width="15" />
						순위는 최대 25위까지 보여줍니다.
					</li>
				</ul>
			</div>
			
		</article><!-- rightContent -->
	</article><!-- statContent -->

<script>


</script>		

	
</body>
</html>