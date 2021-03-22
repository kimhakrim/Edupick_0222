<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
	String loginname = (String)session.getAttribute("loginname");
%>     	
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>강의상세보기</title>
		<!-- title 아이콘 -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<link href="<%= request.getContextPath() %>/css/adminmain.css" rel="stylesheet" type="text/css" />
		<link href="<%= request.getContextPath() %>/css/adminmembermanage.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%= request.getContextPath() %>/js/admin.js"></script>
		<!-- 폰트 -->
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/css/admincouresdetail.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<header>
			<div class="herdiv">
				<div class="logodiv"><img src="<%= request.getContextPath() %>/webimage/edupick2.jpg"></div>
				<div class="logdiv"><%= loginname%>(님)</div>
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
					<a href="상품관리.html" id="navuser_1_1">학원관리</a><br>
					<a href="상품관리.html" id="navuser_1_2">강의관리</a><br>
					<a href="상품관리.html" id="navuser_1_3">수강생관리</a><br>
					<a href="상품관리.html" id="navuser_1_4">수강평관리</a><br>
					<a href="상품관리.html" id="navuser_1_5">커뮤니티 관리</a><br>
					<a href="상품관리.html" id="navuser_1_6">상담관리</a><br>
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
				<form class="cladmain">
					<ul id="main1">
						<li>수강명 : <input disabled></li>
						<li>수강비 : <input disabled></li>
						<li>수강기간 : 시작일 : <input type="date" disabled> 종료일 : <input type="date" disabled> 상시<input type="checkbox" disabled></li>
						<li>모집기간 : 시작일 : <input type="date" disabled> 종료일 : <input type="date" disabled> 상시<input type="checkbox" disabled></li>
						<li>수강시간 : <input type="time" disabled> ~ <input type="time" disabled></li>
						<li>모집인원 : <input type="number" disabled> <input type="checkbox" disabled> 제한없음</li>
					</ul>
					<ul id="main2">
						<li>강의교재 : <input disabled></li>
						<li>강의시간 : <input type="time" disabled> ~ <input type="time" disabled></li>
						<li>강의목표 : <input disabled></li>
						<li>강사이력 : <input disabled></li>
					</ul>
					<button type="button" id="listbt">목록</button>
					<button type="button" id="modibtt">수정</button>
				</form>
			</article>
		</section>
	</body>
</html>