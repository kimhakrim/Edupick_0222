<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학원찾기상세보기</title>
		<!-- 폰트 -->
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
		<!-- title 아이콘 -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<!-- 기본틀 css -->
		<link href="<%= request.getContextPath() %>/css/edupick.css" rel="stylesheet" type="text/css" />
		<!-- 폰트 -->
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<!-- 제이쿼리 -->
		<script src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<!-- top 위로올리기 -->
		<link href="<%= request.getContextPath() %>/css/top.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/top.js"></script>
		<!-- 메인 css -->
		<link href="<%= request.getContextPath() %>/css/edupickmain.css" rel="stylesheet" type="text/css" />
		<!-- 반응형 -->
		<link href="<%= request.getContextPath() %>/css/rp.css" rel="stylesheet" type="text/css" />
		<!-- 검색 css js -->
		<link href="<%= request.getContextPath() %>/css/edupicksearch.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/edupicksearch.js"></script>
		<link href="<%= request.getContextPath() %>/css/instituteDetail.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/instituteDetail.js"></script>
	</head>
	<body style="overflow-x:hidden; overflow-y:scroll;">
		<header>
			<!-- 메인로고 -->
			<div class="headerimg">
				<a href="<%= request.getContextPath() %>/Common/main.do">
				<img class="img1" src="<%= request.getContextPath() %>/webimage/edupick2.jpg">	
				</a>
			</div>
			<div class="logoutdiv">
				○○○(님) <a href="#">로그아웃</a><img src="<%= request.getContextPath() %>/webimage/알림.png" style="width:10%; height:10%;">
			</div>
			<div id="topmenumain">
				<ul>
					<li>
						<a href="<%= request.getContextPath() %>/Institute/institute.do" class="menua" style="background:#FA5858">학원찾기</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/Notice/notice.do" class="menua">공지사항</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/Eduinformation/eduinformation.do" class="menua">교육정보</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/Customerservice/customerservice.do" class="menua">고객센터</a>
					</li>
					<li>
						<a href="<%= request.getContextPath() %>/Myservice/myservice.do" class="menua">My 서비스</a>
					</li>
				</ul>
			</div>
		</header>
		<div class="main">
			<h1>학원이름</h1>
			<input id="tab1" type="radio" name="tabs" checked> <!--디폴트 메뉴-->
			<label for="tab1">학원정보</label>

			<input id="tab2" type="radio" name="tabs">
			<label for="tab2">진행중인 강의</label>
			
			<input id="tab3" type="radio" name="tabs">
			<label for="tab3">한줄 수강평</label>
			
			<input id="tab4" type="radio" name="tabs">
			<label for="tab4">학원커뮤니티</label>
			
			<input id="tab5" type="radio" name="tabs">
			<label for="tab5">상담하기</label>
		
			
			<section id="content1">
			<div id="main1">
				<p>
				<p>	
						
				<div id="img11">
					<img src="<%= request.getContextPath() %>/webimage/1.jpg" width="350px" height="250px">
					<div id="table1">
						<table id="table1" width="400px" height="400px">
							<tr>
								<td width="20%">학원명</td>
								<td width="50%">2</td>
							</tr>
							<tr>
								<td>학원위치</td>
								<td>2</td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td>2</td>
							</tr>
							<tr>
								<td>개설과목</td>
								<td>2</td>
							</tr>
							<tr>
								<td>편의사항</td>
								<td>2</td>
							</tr>
						</table>
					</div>
					<p>	
				</div>
					
				<div id="img22">	
					<img src="<%= request.getContextPath() %>/webimage/2.jpg" width="80px" height="50px">
					<img src="<%= request.getContextPath() %>/webimage/3.jpg" width="80px" height="50px">
					<img src="<%= request.getContextPath() %>/webimage/4.jpg" width="80px" height="50px">
					<img src="<%= request.getContextPath() %>/webimage/5.jpg" width="80px" height="50px">
				</div>		
				<hr class="hr1" width="420" color="red" noshade/>
				<div id="img33">
					<img src="<%= request.getContextPath() %>/webimage/up.jpg" width="100px" height="80px">
				</div>
				<div id="img44">
					<img src="<%= request.getContextPath() %>/webimage/down.jpg" width="100px" height="80px">	
				</div>
			</div>
			<hr class="hr2" width="800" color="red" noshade/>
			<div class="div1">
				<b>학원소개</b>
			</div>
			<p>
					
			<button id="more" style="CURSOR: hand" onclick="if(story.style.display=='none')
			{story.style.display='';more.innerText='접기'} 
			else {story.style.display='none';more.innerText='더보기'}">더보기
			</button>
		
		<div id="story" style="display: none">
			<hr>	
			<div id="table2">
				<table width="400px" height="400px">
					<tr>
						<td width="20%">수강명</td>
						<td width="50%">2</td>
					</tr>
					<tr>
						<td>수강비</td>
						<td>2</td>
					</tr>
					<tr>
						<td>수강기간</td>
						<td>2</td>
					</tr>
					<tr>
						<td>모집기간</td>
						<td>2</td>
					</tr>
					<tr>
						<td>모집인원</td>
						<td>2</td>
					</tr>
				</table>
			</div>		
			<hr>
			
			<h3>커리큘럼</h3>
			<div id="table3">
				<table width="100%">
					<tr>
						<td width="200px">강의책</td>
						<td width="400px">1</td>
						<td width="200px">강의시간</td>
						<td width="400px">2</td>
					</tr>
					<tr>
						<td width="200px" rowspan=2>강의목표</td>
						<td colspan="3" rowspan="2">1</td>
					</tr>
					<tr>
						<td height="400px"></td>
					</tr>
				</table>
			</div>
			<hr>
			<div id="btn1">
				<div id="img55">
					<img src="<%= request.getContextPath() %>/webimage/shop.JPG" width="80px" height="60px">
				</div>
				<button id = "b1" class="credit010">신청하기</button>
				<a href="#"><button id = "bb2" name="bb2">닫기</button></a>
			</div>
			</section>
				
			<section id="content2">
				<p>
								
				<table border="0" id ="trTable" width="100%">
					<thead>
						<tr>
							<td width="15%">수강과목</td>
							<td class="left"  width="45%">수강명</td>
							<td width="10%">수강비</td>
							<td width="10%">수강기간</td>
							<td width="10%">모집기간</td>
							
						</tr>
					</thead>
					<tbody id="tbodyjoy">
						<tr>
							<td width="15%">1</td>
							<td class="left"  width="45%">주식오르자</td>
							<td width="10%">.</td>
							<td width="10%">.</td>
							<td width="10%">.</td>
						</tr>
					
						<tr>
							<td width="15%">2</td>
							<td class="left"  width="45%">영차영차</td>
							<td width="10%">.</td>
							<td width="10%">.</td>
							<td width="10%">.</td>
						</tr>
					
						<tr>
							<td width="15%">3</td>
							<td class="left"  width="45%">빨간색보고싶다</td>
							<td width="10%">.</td>
							<td width="10%">.</td>
							<td width="10%">.</td>
						</tr>
					
						<tr>
							<td width="15%">4</td>
							<td class="left"  width="45%">파란색그만보자</td>
							<td width="10%">.</td>
							<td width="10%">.</td>
							<td width="10%">.</td>
						</tr>
					
						<tr>
							<td width="15%">5</td>
							<td class="left"  width="45%">ㅠㅠ</td>
							<td width="10%">.</td>
							<td width="10%">.</td>
							<td width="10%">.</td>
						</tr>
					</tbody>
				</table>			
			</section>
			
			<section id="content3">
				<div class="content3_main">
					<div>1</div>
					<div>2</div>
					<div>3</div>
					<div>4</div>
					<div>5</div>
					<div>6</div>
				</div>
				<div>
					<img src="<%= request.getContextPath() %>/webimage/left-arrow.png" id="left_aw">
				</div>
				<div>
					<img src="<%= request.getContextPath() %>/webimage/right-arrow.png" id="right_aw">
				</div>
				<button type="button" id="content3_btn">작성하기</button>
				<div id="rep_form">
					<form method="post" name="replyForm" action="#.html">
						<input type="hidden" id="c_idx" name="c_idx" value="">
						<input type="text" id="nicktxt" name="nick" placeholder="닉네임">
						<p>
						<textarea id="textbox" name="content" placeholder="댓글을 적어보세요."></textarea>
						<p>
						<input id="put" type="submit" value="입력하기">
						<input id="put2" type="submit" value="닫기">
					</form>
				</div>
			</section>
			
			<section id="content4">
				<h3>무엇이든 물어보세요!</h3>
				<hr color=blue;>
				<p>		
				<table border="0" id ="trTable" width="100%">
					<thead>
						<tr>
							<td width="15%">작성자1</td>
							<td width="10%">강의명1</td>
							<td class="left"  width="45%">내용</td>
							<td width="10%">1</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td width="15%">작성자2</td>
							<td width="10%">강의명2</td>
							<td class="left"  width="45%">내용</td>
							<td width="10%">1</td>
						</tr>
					
						<tr>
							<td width="15%">작성자3</td>
							<td width="10%">강의명3</td>
							<td class="left"  width="45%">내용</td>
							<td width="10%">1</td>
						</tr>
					
						<tr>
							<td width="15%">작성자4</td>
							<td width="10%">강의명4</td>
							<td class="left"  width="45%">내용</td>
							<td width="10%">1</td>
						</tr>
					
						<tr>
							<td width="15%">작성자5</td>
							<td width="10%">강의명5</td>
							<td class="left"  width="45%">내용</td>
							<td width="10%">1</td>
						</tr>
					</tbody>			
				</table>
				<div id="div3">
					<a href="#"><h3>답글</h3></a>
				</div>
				<div id="divPaging">
					<div>◀</div></a>
					<div><a href="#"><b>1</b></div></a>
					<div><a href="#">2</div></a>
					<div><a href="#">3</div></a>
					<div><a href="#">4</div></a>
					<div><a href="#">5</div></a>
					<div>▶</div></a>
				</div>
					
				<p>
				<hr color=blue;>
				<h2>건의사항</h2>	
				<hr color=blue;>
				<table border="0" id ="trTable" width="100%">
					<thead>
						<tr>
							<td width="15%">작성자1</td>
							<td width="10%">강의명1</td>
							<td class="left"  width="45%">내용</td>
							<td width="10%">1</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td width="15%">작성자2</td>
							<td width="10%">강의명2</td>
							<td class="left"  width="45%">내용</td>
							<td width="10%">1</td>
						</tr>
					
						<tr>
							<td width="15%">작성자3</td>
							<td width="10%">강의명3</td>
							<td class="left"  width="45%">내용</td>
							<td width="10%">1</td>
						</tr>
					
						<tr>
							<td width="15%">작성자4</td>
							<td width="10%">강의명4</td>
							<td class="left"  width="45%">내용</td>
							<td width="10%">1</td>
						</tr>
					
						<tr>
							<td width="15%">작성자5</td>
							<td width="10%">강의명5</td>
							<td class="left"  width="45%">내용</td>
							<td width="10%">1</td>
						</tr>
					</tbody>				
				</table>
					
				<a href="#"><button id = "b2">작성하기</button></a>	
					
				<div id="divPaging">
					<div>◀</div></a>
					<div><a href="#"><b>1</b></div></a>
					<div><a href="#">2</div></a>
					<div><a href="#">3</div></a>
					<div><a href="#">4</div></a>
					<div><a href="#">5</div></a>
					<div>▶</div></a>
				</div>
			</section>
			
			<section id="content5">
				<h6 class="box1">입학상담과 궁금한 점을 온라인으로 쉽고 빠르게 해결하세요!</h6>
				<div class="wrap">	
					<a href="#"><h6 class="box2" >상담시작</h6></a>
				</div>
			</section>
		</div>	
		<button onclick="topFunction()" id="scrollTopBtn" title="Go to top">▲TOP</button>
		<footer>
			<!-- footer hr -->
			<hr class="hr02">
				<!-- footer 로고 -->
				<div class="footerdiv">
					<div>
						<img id="img3" src="<%= request.getContextPath() %>/webimage/logo.jpg">
					</div>
					<!-- footer 링크 -->
					<div class="fer01">	
						<ul>
							<li style="margin:3%;">
								<a href="#" class="fera"><h5>회사소개</h5></a>
							</li>	
							<li style="margin:3%;">	
								<a href="#" class="fera"><h5>개인정보처리방침</h5></a>
							</li>
							<li style="margin:3%;">	
								<a href="#" class="fera"><h5>사업자 정보 확인</h5></a>
							</li>
						</ul>
					</div>
					<!-- footer 홈페이지정보 -->
					<div class="fer02">
						㈜ 에듀픽<br/>
						주소 : 전라북도 전주시<br/>
						대표조장 : 김학림 | 사업자등록번호 : 498-65-65421
					</div>
					<!-- footer 전화번호 -->
					<div class="ct01">
						고객센터 : 1577-8888<br/>
						<p/>
						근무시간 : 월 ~ 금 AM 9:00 ~ PM 7:00<br/>
						점심시간 : PM12 :00 ~ PM 1 : 00<br/>
						고객센터 : AM 10: 00 ~ PM6 : 00<br/>
					</div>
				</div>	
		</footer>
	</body>
</html>