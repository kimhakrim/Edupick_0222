<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>결제내역상세보기</title>
		<!-- title 아이콘 -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<link href="<%= request.getContextPath() %>/css/adminmain.css" rel="stylesheet" type="text/css" />
		<link href="<%= request.getContextPath() %>/css/adminmembermange.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%= request.getContextPath() %>/js/admin.js"></script>
		<link href="<%= request.getContextPath() %>/css/adminpaydetail.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<header>
			<div class="herdiv">
				<div class="logodiv"><img src="<%= request.getContextPath() %>/webimage/edupick2.jpg"></div>
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
				<div class="navuser">주문관리 ▼</div>
				<div class="navuser_1">
					<a href="주문관리.html" id="navuser_1_1">결제내역</a><br>
					<a href="주문관리.html" id="navuser_1_2">방문결제 관리</a><br>
				</div>
			</div>
		</nav>
		<nav>
			<div class="adminmenu">
				<div class="subnav" id="subnav1">회원관리</div>
				<div class="subnav" id="subnav2">상품관리</div>
				<div class="subnav" id="subnav3" style="background:#FA5858;">주문관리</div>
				<div class="subnav" id="subnav4">게시판관리</div>
				<div class="subnav" id="subnav5">페이지관리</div>
				<div class="subnav" id="subnav6">기타관리</div>
			</div>
		</nav>
		<section>
			<article>
				<form class="crpfrm">
					<ul>
						<li>학원명</li>
						<li><input name="text" disabled></li>
						<li>수강명</li>
						<li><input name="text" disabled></li>
					</ul>
					<ul>
						<li>주문금액</li>
						<li><input name="text" disabled></li>
						<li>사용포인트</li>
						<li><input name="text" disabled></li>
					</ul>
					<ul>
						<li>결제금액</li>
						<li><input name="text2" disabled></li>
					</ul>
					<ul>
						<li>결제방법</li>
						<li id="exception">온라인 결제&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="radio1" checked disabled> 방문결제 <input type="radio" name="radio1" disabled></li>
					</ul>
					<ul>
						<li>신청자 이름</li>
						<li><input name="text" disabled></li>
						<li>신청자 전화번호</li>
						<li><input name="text" disabled></li>
					</ul>
					<ul>
						<li>수강생 이름</li>
						<li><input name="text" disabled></li>
						<li>수강생 전화번호</li>
						<li><input name="text" disabled></li>
					</ul>
					<ul>
						<li>우편번호</li>
						<li><input name="text" disabled></li>
						<li>주소</li>
						<li><input name="text" disabled>기존 주소와 동일</li>
					</ul>
					<ul>
						<li>학원차량 탑승여부</li>
						<li id="exception2"><input type="radio" name="yn" checked disabled>예 &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="yn" disabled>아니오</li>
						<li>학원차량 탑승주소</li>
						<li><input name="text" disabled></li>
					</ul>
					<ul>
						<li>비상연락처</li>
						<li><input name="text2" disabled></li>
					</ul>
					<button type="button" id="cdlist">목록</button>
				</form>
			</article>
		</section>
	</body>
</html>