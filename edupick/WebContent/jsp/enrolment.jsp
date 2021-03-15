<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>수강신청</title>
		<!-- title 아이콘 -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
		<!-- top 위로올리기 -->
		<link href="<%= request.getContextPath() %>/css/top.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/top.js"></script>
		<!-- 반응형 -->
		<link href="<%= request.getContextPath() %>/css/rp.css" rel="stylesheet" type="text/css" />
		<link href="<%= request.getContextPath() %>/css/enrolment.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/enrolment.js"></script>
	</head>
	<body>
		<header>
			<div class="headerimg">
				<a href="<%= request.getContextPath() %>/Common/main.do">
				<img class="img1" src="<%= request.getContextPath() %>/webimage/edupick2.jpg">	
				</a>
			</div>
			<div class="logoutdiv">
				○○○(님) <a href="#">로그아웃</a><img src="<%= request.getContextPath() %>/webimage/알림.png" style="width:10%; height:10%;">
			</div>
		</header>
		<section>
			<article class="lisiz">
				<form name="creditfrm" class="lisiz_1">
					<h5 class="box1">주문 정보</h5>
					<table border="1px black solid" width="760px">
						<tr>
							<td>학원명</td>
							<td width="25%"></td>
							<td>수강명</td>
							<td width="25%"></td>
							<td>주문가격</td>
							<td width="25%"></td>
						</tr>
					</table>
					<p>
					<img src="<%= request.getContextPath() %>/webimage/1.jpg" width="200px" height="150px" border="1px black solid">
					<p>
					<span id="more" style="CURSOR: hand" onclick="if(story.style.display=='none')
						{story.style.display='';more.innerText='▶접기'} 
						else {story.style.display='none';more.innerText='▶자세히보기'}">▶자세히보기
					</span>
					<div id="story" style="display: none">
						이 학원은 이제 제껍니다.
					</div>
					<hr class="hr0001" width="760px"/>
					<h3 class="box2" border="1px black solid">결제자 정보</h3>
					<table class="credittablenpa">
						<tr>
							<td>
								<span>*</span>이름
							</td>
							<td>
								<input name="cname" size="15">
							</td>
						</tr>
						<tr>
							<td>
								<span>*</span>휴대폰 번호
							</td>							
							<td>
								<select>
									<option selected>010</option>
									<option >011</option>
									<option >016</option>
									<option >019</option>
								</select> -
								<input name="cphone" size="5" maxlength="4"> - <input name="cphone2" size="5" maxlength="4">
							</td>
						</tr>
						<p>	
						<tr id="addressva">
							<td>
								<span>*</span>주소
							</td>
							<td>
								<input name="caddress" size="5"> <br>
								<input name="caddress2" size="37"> 
							</td>
						</tr>
					</table>
					<hr class="hr0002" width="760px"/>			
					<h3 class="box3" border="1px red solid">결제 방법</h3>	
					<div class="radio1">
						<input type="radio" name="pay" id="pay1" value="신용카드" checked>신용카드
						<input type="radio" name="pay" id="pay2" value="계좌이체">계좌이체
						<input type="radio" name="pay" id="pay3" value="방문결제">방문결제
					</div>
					<p>
					<div class="msg">
						<table class="credittablecb">
							<tr>
								<td>
								*기간단위 강의의 연장을 원하실 때에는 기간 만료 3~5일 전에 <br> 미리  마이페이지 > 수강중인 강의에서 결제하셔야 합니다.<br>
								*결제 후 동일 상품의 결제 방법을  변경하시려면 <br> 마이페이지 > 수강중인 강의에서 변경 가능합니다.  
								</td>
							</tr>
						</table>
					</div>
					<hr class="hr0003" width="760px"/>
					<h3 class="box4" border="1px red solid">할인 혜택</h3>
					<br>	
					<div class="point">
						<table class="credittablepoint" width="700px">
							<tr>
								<td>보유 포인트</td>
								<td><input name="nowpoint" size="15"></td> 
								<td><button>보기</button></td>
								<td>사용할 포인트</td>
								<td><input name="allpoint" size="10"></td> 
								<td><button>전액</button></td>
							</tr>
						</table>
					</div>	
					<hr class="hr0004" width="760px"/>
					<p>
					<h3 class="box5" border="1px red solid">총 주문 금액</h3>	
					<br>
					<table border="1px black solid" width="760px">
						<tr>
							<td>상품 가격</td>
							<td width="15%"></td>
							<td>사용할 포인트</td>
							<td width="15%"></td>
							<td>총 결제금액</td>
							<td width="15%"></td>
						</tr>
					</table>
					<br>
					<div class="btn0001">
						<button type="button" id="creditbtn01" onclick="credit()">결제하기</button>
						<button type="button" id="creditbtn02" onclick="cancel01()">취소하기</button>
					</div>
					<div class="btn0002">
						<button type="button" id="creditbtn03" onclick="credit2()">결제하기</button>
						<button type="button" id="creditbtn04" onclick="cancel01()">취소하기</button>
					</div>
					<div class="btn0003">
						<button type="button" id="creditbtn05" onclick="credit3()">결제하기</button>
						<button type="button" id="creditbtn06" onclick="cancel01()">취소하기</button>
					</div>
				</form>
				<button onclick="topFunction()" id="scrollTopBtn" title="Go to top">▲TOP</button>
			</article>
		</section>
	</body>
</html>