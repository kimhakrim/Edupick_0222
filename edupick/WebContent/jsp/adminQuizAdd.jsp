<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>포인트 추가</title>
		<!-- title 아이콘 -->
		<link rel="shortcut icon" type="image/x-icon" href="titlelogo.png">
		<link href="adminmain.css" rel="stylesheet" type="text/css" />
		<link href="adminmembermanage.css" rel="stylesheet" type="text/css" />
		<script src="jquery-3.5.1.min.js"></script>
		<script src="admin.js"></script>
		<link href="adminquizadd.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
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
					<a href="기타관리.html" id="navuser_1_1">포인트 내역</a><br>
					<a href="기타관리.html" id="navuser_1_2">포인트 퀴즈</a><br>
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
				<form class="quizplusfrm">
					<div class="quizdiv1">난이도
						<select>
							<option selected>상</option>
							<option>중</option>
							<option>하</option>
						</select>
					</div>
					<div>문제지문
						<input type="text">
					</div>
						<ul>
							<li>1 <input></li>
							<li>2 <input></li>
							<li>3 <input></li>
							<li>4 <input></li>
						</ul>
					<div class="quizdiv2">정답
						<select>
							<option selected>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						</select>
					</div>
					<div>문제 풀이
						<input type="text">
					</div>
					<button type="button" id="quizsave">저장</button>
				</form>
			</article>
		</section>
	</body>
</html>