<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<title>학원상세</title>
		<!-- title 아이콘 -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<!-- 폰트 -->
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/css/adminmain.css" rel="stylesheet" type="text/css" />
		<link href="<%= request.getContextPath() %>/css/adminmembermanage.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%= request.getContextPath() %>/js/admin.js"></script>
		<link href="<%= request.getContextPath() %>/css/admininstitutedetail.css" rel="stylesheet" type="text/css" />
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
				<div class="clmain">
					<form>
						<div class="clmain1">
							<img id="mainbanner" src="테스트펭귄.jpg">
							<div id="slide">
								<input type="radio" name="pos" id="pos1" checked>
								<input type="radio" name="pos" id="pos2">
								<input type="radio" name="pos" id="pos3">
								<input type="radio" name="pos" id="pos4">
								<ul>
									<li></li>
									<li></li>
									<li></li>
									<li></li>
								</ul>
								<p class="pos">
									<label for="pos1"></label>
									<label for="pos2"></label>
									<label for="pos3"></label>
									<label for="pos4"></label>
								</p>
							</div>
						</div>
						<div class="clmain2">
							<ul>
								<li style="line-height:100px;">학원명 : 이젠IT</li>
								<li>학원위치 : <img src="B.jpg"><a href="#">위치보기</a><br><br>전라북도 전주시 덕진구 백제대로 572 5층</li>
								<li style="line-height:100px;">전화번호 : 0507-1363-2684</li>
								<li style="line-height:50px;">개설과목 : 자바,파이썬,포토샵,일러스트<br>컴활1급,컴활2급,캐드,영상편집,C 언어</li>
								<li style="line-height:100px;">편의사항 : 흡연장,주차장,커피제공</li>
							</ul>
						</div>
						<div class="clmain3">
							<div>
								<span>학원 소개</span>
								<div>/ 최고사양 컴퓨터와 기타장비 /</div>
								<div>/ 카페형 인테리어 /</div>
								<div>/ 최고의 강사진 /</div>
								<div>/ 넓은 주차장 /</div>
								<div>/ 휴게실 및 상담실 /</div>
								<div>/ 동영상 강좌 시청실 /</div>
								<div>/ 향후 진로와 취업상담 /</div>
							</div>
						</div>
						<div class="clmainsub">
							<button type="button" id="clmodi">수정</button>
							<button type="button" id="cllist">목록</button>
						</div>
					</form>
				</div>
			</article>
		</section>
	</body>