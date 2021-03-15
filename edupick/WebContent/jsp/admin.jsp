<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
	String loginname = (String)session.getAttribute("loginname");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자페이지</title>
		<!-- title 아이콘 -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<link href="<%= request.getContextPath() %>/css/adminmain.css" rel="stylesheet" type="text/css" />
			<link href="<%= request.getContextPath() %>/css/adminpage.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%= request.getContextPath() %>/js/admin.js"></script>
	</head>
	<body>
		<header>
			<div class="herdiv">
				<div class="logodiv"><img src="<%= request.getContextPath() %>/webimage/edupick2.jpg"></div>
				<div class="logdiv"><%=loginname %> (님)</div>
				<div class="logdiv2">
				<a href="<%= request.getContextPath() %>/Common/main.do">Home</a>
				<a href="<%= request.getContextPath() %>/Common/logout.do">로그아웃</a>
				</div>
			</div>
		</header>
		<nav class="nav">
			<div class="admin">관리자 계정관리</div>
		</nav>
		<nav>
			<div class="adminmenu">
				<div class="subnav" id="subnav1">회원관리</div>
				<div class="subnav" id="subnav2">상품관리</div>
				<div class="subnav" id="subnav3">주문관리</div>
				<div class="subnav" id="subnav4">게시판관리</div>
				<div class="subnav" id="subnav5">페이지관리</div>
				<div class="subnav" id="subnav6">기타관리</div>
			</div>
		</nav>
		<section>
			<article>
				<div class="mainuser">
					<div class="userimg"><img src="<%= request.getContextPath() %>/webimage/member.png">&nbsp;회원수 :</div>
					<div class="todayjoin">오늘 가입 :</div>
					<div class="alluesr">총 회원수 :</div>
				</div>
				<div class="mainvisit">
					<div class="visitimg"><img src="<%= request.getContextPath() %>/webimage/visitor.png">&nbsp;방문자 수 :</div>
					<div class="todayvisit">오늘 방문자 :</div>
					<div class="allvisit">총 방문자 :</div>
				</div>
				<div class="question">
					<img src="<%= request.getContextPath() %>/webimage/question.png">
					<div class="question1">등록된 질문</div>
				</div>
				<div class="num1">
					<div>등록한 학원</div>
				</div>
				<div class="num2">
					<div>등록한 강의</div>
				</div>
			</article>
		</section>
	</body>
</html>