<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>진행중인 강의상세보기</title>
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
		<link href="<%= request.getContextPath() %>/css/progresslecture.css" rel="stylesheet" type="text/css" />
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
		<section>
			<article>
				<div class="div1">
				<table id="veryangry" border="2" width="800px" height="200px">
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th id="th1" width="50%">제목</th>
						<th>작성날짜</th>
						<th>조회수</th>						
					</tr>					
					<tr height="30px">
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>					
					<tr>
						<td colspan="5" height="300px">내용</td>		
					</tr>
					</tr>
						<td id="td1">첨부파일</td>
						<td colspan="4"></td>		
					</tr>
				</table>
					<h3 id="h3">댓글</h3>
					<p>
					<input id="input1"type="text" style="text-align:center;" placeholder="로그인 하셔야 댓글쓰기가 가능합니다.">
					<hr size="3" align="left" width="100%" noshade="noshade" color="red"></hr>
					<h5 id="h5">작성자<p>작성날짜</h5>
					<p>
					<input id="input2"type="text">
					<p>
					<p>
					<input id="input2"type="text">
					<p>
					<img id="img111" src="<%= request.getContextPath() %>/webimage/up.jpg" width="40px" height="30px">
					<img src="<%= request.getContextPath() %>/webimage/down.jpg" width="40px" height="30px">
					<p>
					<a href="#"><button id = "b111">답글달기</button></a>
					<hr size="3" align="left" width="100%" noshade="noshade" color="red"></hr>
					<h5 id="h5">작성자<p>작성날짜</h5>
					<p>						
					<input id="input2"type="text">
					<p>
					<p>
					<input id="input2"type="text">
					<p>					
					<img id="img111" src="<%= request.getContextPath() %>/webimage/up.jpg" width="40px" height="30px">
					<img src="<%= request.getContextPath() %>/webimage/down.jpg" width="40px" height="30px">
					<p>
					<a href="#"><button id = "b111">답글달기</button></a>
					<hr size="3" align="left" width="100%" noshade="noshade" color="red"></hr>
					<h5 id="h5">작성자<p>작성날짜</h5>
					<p>
					<input id="input2"type="text">
					<p>
					<p>
					<input id="input2"type="text">
					<p>
					<img id="img111" src="<%= request.getContextPath() %>/webimage/up.jpg" width="40px" height="30px">
					<img src="<%= request.getContextPath() %>/webimage/down.jpg" width="40px" height="30px">
					<p>
					<a href="#"><button id = "b111">답글달기</button></a>
					<hr size="3" align="left" width="100%" noshade="noshade" color="red"></hr>					
					<div id="divPaging">
						<div>◀</div></a>
						<div><a href="#"><b>1</b></div></a>
						<div><a href="#">2</div></a>
						<div><a href="#">3</div></a>
						<div><a href="#">4</div></a>
						<div><a href="#">5</div></a>
						<div>▶</div></a>
					</div>
				</div>
			</article>
		</section>
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