<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>커뮤니티상세보기</title>
		<!-- title 아이콘 -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<link href="<%= request.getContextPath() %>/css/adminmain.css" rel="stylesheet" type="text/css" />
		<link href="<%= request.getContextPath() %>/css/adminmembermanage.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%= request.getContextPath() %>js/admin.js"></script>
		<link href="<%= request.getContextPath() %>/css/admincommunitydetail.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<header>
			<div class="herdiv">
				<div class="logodiv"><img src="edupick2.jpg"></div>
				<div class="logdiv">○○○(님)</div>
				<div class="logdiv2">
				<a href="에듀픽.html">Home</a>
				<a href="<%= request.getContextPath() %>/Common/logout.do">로그아웃</a>
				</div>
			</div>
		</header>
		<nav class="nav">
			<div class="admin" >관리자 계정관리</div>
			<div>
				<div class="navuser">상품관리 ▼</div>
				<div class="navuser_1">
					<a href="#" id="navuser_1_1">학원관리</a><br>
					<a href="#" id="navuser_1_2">강의관리</a><br>
					<a href="#" id="navuser_1_3">수강생관리</a><br>
					<a href="#" id="navuser_1_4">수강평관리</a><br>
					<a href="#" id="navuser_1_5">커뮤니티 관리</a><br>
					<a href="#" id="navuser_1_6">상담관리</a><br>
				</div>
			</div>
		</nav>
		<nav>
			<div class="adminmenu">
				<div class="subnav" id="subnav1">회원관리</div>
				<div class="subnav" id="subnav2" style="background:#FA5858;">상품관리</div>
				<div class="subnav" id="subnav3">주문관리</div>
				<div class="subnav" id="subnav4">게시판관리</div>
				<div class="subnav" id="subnav5">페이지관리</div>
				<div class="subnav" id="subnav6">기타관리</div>
			</div>
		</nav>
		<section>
			<article>
				<form class="cmnfrm">
					<div class="cmnul">본글</div>
					<ul id="titleli">
						<li style="width:150px;">번호</li>
						<li style="width:150px;">작성자</li>
						<li style="width:510px;">제목</li>
						<li style="width:150px;">작성날짜</li>
						<li style="width:150px;">카테고리</li>
					</ul>
					<ul>
						<li style="width:150px;"></li>
						<li style="width:150px;"></li>
						<li style="width:510px;"></li>
						<li style="width:150px;"></li>
						<li style="width:150px;"></li>
					</ul>
					<ul>
						<li colspan=5 style="width:1118px; height:200px;"></li>
					</ul>
					<ul>
						<li style="width:150px;">첨부파일</li>
						<li colspan=4 style="width:966px;"></li>
					</ul>
					<ul id="titleli2">
						<li style="width:100px;">댓글</li>
						<li style="width:253px;">번호</li>
						<li style="width:253px;">작성자</li>
						<li style="width:252px;">작성날짜</li>
						<li style="width:252px;">카테고리</li>
					</ul>
					<ul>
						<li style="width:100px;">O</li>
						<li style="width:253px;"></li>
						<li style="width:253px;"></li>
						<li style="width:252px;"></li>
						<li style="width:252px;"></li>
					</ul>
					<ul>
						<li colspan=5 style="width:1118px; height:200px;"></li>
					</ul>
					<button type="button" id="listbtn3">목록</button>
					<button type="button" id="delbtn2">삭제</button>
				</form>
			</article>