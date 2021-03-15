<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>기타관리</title>
		<!-- title 아이콘 -->
		<link rel="shortcut icon" type="image/x-icon" href="titlelogo.png">
		<link href="adminmain.css" rel="stylesheet" type="text/css" />
		<link href="adminmembermanage.css" rel="stylesheet" type="text/css" />
		<script src="jquery-3.5.1.min.js"></script>
		<script src="admin.js"></script>
		<link href="adminother.css" rel="stylesheet" type="text/css" />
	</head>
	<body style="overflow-x:hidden; overflow-y:scroll;">
		<header>
			<div class="herdiv">
				<div class="logodiv"><img src="edupick2.jpg"></div>
				<div class="logdiv">○○○(님)</div>
				<div class="logdiv2">
				<a href="에듀픽.html">Home</a>
				<a href="#">로그아웃</a>
				</div>
			</div>
		</header>
		<nav class="nav">
			<div class="admin">관리자 계정관리</div>
			<div>
				<div class="navuser">포인트 관리 ▼</div>
				<div class="navuser_1">
					<a href="#" id="navuser_1_1">포인트 내역</a><br>
					<a href="#" id="navuser_1_2">포인트 퀴즈</a><br>
				</div>
			</div>
		</nav>
		<nav>
			<div class="adminmenu">
				<div class="subnav" id="subnav1">회원관리</div>
				<div class="subnav" id="subnav2">상품관리</div>
				<div class="subnav" id="subnav3">주문관리</div>
				<div class="subnav" id="subnav4">게시판관리</div>
				<div class="subnav" id="subnav5">페이지관리</div>
				<div class="subnav" id="subnav6" style="background:#FA5858;">기타관리</div>
			</div>
		</nav>
		<section>
			<article>
				<div class="usermainpage">
					<form class="shfrm">
						<div class="point0">적립(사용)일 : <input type="date"></div>
						<div class="selectsh">
							<select>
								<option selected>이름</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="search.jpg"></div>
					</form>
				</div>
				<form class="mainfrm">
					<table class="maintable">
						<tr id="table1">
							<th>번호</th>
							<th>이름</th>
							<th>적립(사용)내역</th>
							<th>적립(사용)액</th>
							<th>적립(사용)일</th>
						</tr>
						<tr>
							<th>1</th>
							<td>김학림</td>
							<td>삼성전자 주식</td>
							<td>384,840,046원</td>
							<td>2021-02-25</td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</table>
					<div id="divPaging">
						<div>◀</div>
						<div><a href="#"><b>1</b></a></div>
						<div><a href="#">2</a></div>
						<div><a href="#">3</a></div>
						<div><a href="#">4</a></div>
						<div><a href="#">5</a></div>
						<div>▶</div>
					</div>
				</form>
				<div class="usermainpage2">
					<form class="shfrm">
						<div class="selectsh">
							<select>
								<option selected>문제</option>
								<option>난이도</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="search.jpg"></div>
						<div class="clplus"><button type="button" id="clplus_4">퀴즈 추가하기</button></div>
					</form>
				</div>
				<form class="mainfrm2">
					<table class="maintable">
						<tr id="table1">
							<th>번호</th>
							<th>문제</th>
							<th>난이도</th>
							<th>적립 포인트</th>
						</tr>
						<tr>
							<th>1</th>
							<td id="quizs">돼지가 자꾸 뭘 먹는다. 이 돼지는 누구일까?</td>
							<td>하</td>
							<td>100Point</td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
					</table>
					<div id="divPaging">
						<div>◀</div>
						<div><a href="#"><b>1</b></a></div>
						<div><a href="#">2</a></div>
						<div><a href="#">3</a></div>
						<div><a href="#">4</a></div>
						<div><a href="#">5</a></div>
						<div>▶</div>
					</div>
					<div class="quiz">
						<div class="quizmain">돼지가 자꾸 뭘 먹는다. 이 돼지는 누구일까?</div>
						<div class="quiz_close"><img src="닫기.png"></div>
						<div class="quiz_contents">
							<div id="joke1">1. 삼성전자 주식을 매수한 사람</div>
							<div id="joke2">2. 이젠IT 학원에서 수업을 듣는 사람</div>
							<div id="joke3">3. 문제를 보고있는 당신</div>
							<div id="joke4">4. 쉬는시간마다 담배타임을 가지는 사람</div>
						</div>
					</div>
				</form>
			</article>
		</section>
	</body>
</html>