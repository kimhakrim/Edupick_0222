<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원관리</title>
		<!-- title 아이콘 -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<link href="<%= request.getContextPath() %>/css/adminmain.css" rel="stylesheet" type="text/css" />
		<link href="<%= request.getContextPath() %>/css/adminmembermanage.css" rel="stylesheet" type="text/css" />
		<link href="<%= request.getContextPath() %>/css/adminfaqmanage.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%= request.getContextPath() %>/js/admin.js"></script>
	</head>
	<body>
		<header>
			<div class="herdiv">
				<div class="logodiv"><img src="<%= request.getContextPath() %>/webimage/edupick2.jpg"></div>
				<div class="logdiv">○○○(님)</div>
				<div class="logdiv2">
				<a href="<%= request.getContextPath() %>/Common/main.do">Home</a>
				<a href="<%= request.getContextPath() %>/Common/logout.do">로그아웃</a>
				</div>
			</div>
		</header>
		<nav class="nav">
			<div class="admin" >관리자 계정관리</div>
			<div>
				<div class="navuser">회원관리 ▼</div>
				<div class="navuser_1">
					<a href="#" id="navuser_1_1">회원목록</a><br>
					<a href="#" id="navuser_1_2">탈퇴회원</a><br>
					<a href="#" id="navuser_1_3">질문관리</a><br>
					<a href="#" id="navuser_1_4">FAQ관리</a>
				</div>
			</div>
		</nav>
		<nav>
			<div class="adminmenu">
				<div class="subnav" id="subnav1" style="background:#FA5858;">회원관리</div>
				<div class="subnav" id="subnav2">상품관리</div>
				<div class="subnav" id="subnav3">주문관리</div>
				<div class="subnav" id="subnav4">게시판관리</div>
				<div class="subnav" id="subnav5">페이지관리</div>
				<div class="subnav" id="subnav6">기타관리</div>
			</div>
		</nav>
		<section>
			<article>
				<div class="usermainpage">
					<form class="shfrm">
						<div class="selectsh">
							<select>
								<option selected>회원명</option>
								<option>회원아이디</option>
								<option>회원연락처</option>
								<option>회원이메일</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="<%= request.getContextPath() %>/webimage/search.jpg"></div>
					</form>
				</div>
				<div class="usermainpage2">
					<form class="shfrm">
						<div class="selectsh0">
							<select>
								<option>회원구분</option>
							</select>
						</div>
						<div class="selectsh">
							<select>
								<option selected>회원명</option>
								<option>회원아이디</option>
								<option>회원연락처</option>
								<option>회원이메일</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="<%= request.getContextPath() %>/webimage/search.jpg"></div>
					</form>
				</div>
				<div class="usermainpage3">
					<form class="shfrm">
						<div class="selectsh">
							<select>
								<option selected>회원명</option>
								<option>회원아이디</option>
								<option>회원연락처</option>
								<option>회원이메일</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="<%= request.getContextPath() %>/webimage/search.jpg"></div>
					</form>
				</div>
				<div class="userup">
					<div><button type="button">삭제</button></div>
					<div>총 회원수 :</div>
					<div>검색 회원수 :</div>
				</div>
				<div class="userup2">
					<div><button type="button">삭제</button></div>
					<div>총 탈퇴 회원수 :</div>
					<div>총 탈퇴 회원수 :</div>
				</div>
				<div class="userup3">
					<div><button type="button">삭제</button></div>
					<div>총 질문수 :</div>
					<div>검색 질문수 :</div>
				</div>
				<form class="mainfrm">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>회원구분</th>
							<th>아이디</th>
							<th>회원명</th>
							<th>연락처</th>
							<th>이메일</th>
							<th>포인트</th>
							<th>가입일</th>
							<th>기능</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>일반회원</td>
							<td>real</td>
							<td>햄버거</td>
							<td>010-8282-9999</td>
							<td>imhungry@hambug.com</td>
							<td>27630point</td>
							<td>2021-01-13</td>
							<td><button type="button" id="btbt">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all2"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all3"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all4"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all5"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all6"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all7"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all8"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all9"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all10"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all11"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all12"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all13"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all14"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt">보기</button></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all15"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbt">보기</button></td>
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
				<form class="mainfrm2">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>회원구분</th>
							<th>회원명</th>
							<th>탈퇴일</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>일반회원</td>
							<td>햄버거</td>
							<td>2021-02-11</td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all2"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all3"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all4"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all5"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all6"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all7"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all8"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all9"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all10"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all11"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all12"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all13"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all14"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all15"></th>
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
				<form class="mainfrm3">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>회원명</th>
							<th>제목</th>
							<th>작성일</th>
							<th>분류</th>
							<th>상태</th>
							<th>답변</th>
							<th>기능</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>햄버거</td>
							<td>결제 오류가 났어요</td>
							<td>2021-01-25</td>
							<td>*</td>
							<td>답변완료</td>
							<td><button type="button" id="btbtn">답변하기</button></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all2"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbtn">답변하기</button></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all3"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbtn">답변하기</button></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all4"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbtn">답변하기</button></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all5"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbtn">답변하기</button></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all6"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbtn">답변하기</button></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all7"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbtn">답변하기</button></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all8"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbtn">답변하기</button></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all9"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbtn">답변하기</button></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all10"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbtn">답변하기</button></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all11"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbtn">답변하기</button></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all12"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbtn">답변하기</button></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all13"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbtn">답변하기</button></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all14"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbtn">답변하기</button></td>
							<td></td>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all15"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><button type="button" id="btbtn">답변하기</button></td>
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
				<div class="usermainpage4">
					<form class="shfrm">
						<div class="selectsh">
							<select>
								<option selected>회원명</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="<%= request.getContextPath() %>/webimage/search.jpg"></div>
					</form>
				</div>
				<div class="ftaplus">
					<button type="button" id="ftaplusbtn">FAQ 추가하기<img src="<%= request.getContextPath() %>/webimage/더하기.png"></button>
				</div>
				<form class="mainfrm4">
					<ul id="ul1">
						<li style="width:10%;">No</li>
						<li style="width:59.25%;">제목</li>
						<li style="width:10%;">작성자</li>
						<li style="width:10%;">작성일</li>
						<li style="width:10%;">카테고리</li>
					</ul>
					<ul id="ul2">
						<li>1</li>
						<li>코카콜라에서 단맛이나요</li>
						<li>코카콜라</li>
						<li>2021-02-18</li>
						<li>컨텐츠</li>
					</ul>
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
					<div id="divPaging" style="margin-top:40px;">
						<div>◀</div>
						<div><a href="#"><b>1</b></a></div>
						<div><a href="#">2</a></div>
						<div><a href="#">3</a></div>
						<div><a href="#">4</a></div>
						<div><a href="#">5</a></div>
						<div>▶</div>
					</div>
					<div class="ftacontent">
						<div class="faqhead">
							<img src="<%= request.getContextPath() %>/webimage/FAQ.png">
							<div class="faqcont">코카콜라에서 단맛이나요</div>
							<div class="closeimg"><img src="<%= request.getContextPath() %>/webimage/닫기.png"></div>
						</div>
						<div class="faqcontentmain">구라임 ㅎㅎ;</div>
					</div>
					<div class="cathead">카테고리</div>
					<div class="ftacontent2">
						<div class="faqhead">
							<img src="<%= request.getContextPath() %>/webimage/FAQ.png">
							<div class="faqcont"><input type="text"></div>
							<div class="closeimg2"><img src="<%= request.getContextPath() %>/webimage/닫기.png"></div>
						</div>
						<div class="faqcontentmain"><input type="text"></div>
						<div class="catgo"><button type="button">등록</button></div>
					</div>
				</form>
			</article>
		</section>
	</body>
</html>