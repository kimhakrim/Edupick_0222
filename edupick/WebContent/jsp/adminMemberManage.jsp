<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>ȸ������</title>
		<!-- title ������ -->
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
				<div class="logdiv">�ۡۡ�(��)</div>
				<div class="logdiv2">
				<a href="<%= request.getContextPath() %>/Common/main.do">Home</a>
				<a href="<%= request.getContextPath() %>/Common/logout.do">�α׾ƿ�</a>
				</div>
			</div>
		</header>
		<nav class="nav">
			<div class="admin" >������ ��������</div>
			<div>
				<div class="navuser">ȸ������ ��</div>
				<div class="navuser_1">
					<a href="#" id="navuser_1_1">ȸ�����</a><br>
					<a href="#" id="navuser_1_2">Ż��ȸ��</a><br>
					<a href="#" id="navuser_1_3">��������</a><br>
					<a href="#" id="navuser_1_4">FAQ����</a>
				</div>
			</div>
		</nav>
		<nav>
			<div class="adminmenu">
				<div class="subnav" id="subnav1" style="background:#FA5858;">ȸ������</div>
				<div class="subnav" id="subnav2">��ǰ����</div>
				<div class="subnav" id="subnav3">�ֹ�����</div>
				<div class="subnav" id="subnav4">�Խ��ǰ���</div>
				<div class="subnav" id="subnav5">����������</div>
				<div class="subnav" id="subnav6">��Ÿ����</div>
			</div>
		</nav>
		<section>
			<article>
				<div class="usermainpage">
					<form class="shfrm">
						<div class="selectsh">
							<select>
								<option selected>ȸ����</option>
								<option>ȸ�����̵�</option>
								<option>ȸ������ó</option>
								<option>ȸ���̸���</option>
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
								<option>ȸ������</option>
							</select>
						</div>
						<div class="selectsh">
							<select>
								<option selected>ȸ����</option>
								<option>ȸ�����̵�</option>
								<option>ȸ������ó</option>
								<option>ȸ���̸���</option>
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
								<option selected>ȸ����</option>
								<option>ȸ�����̵�</option>
								<option>ȸ������ó</option>
								<option>ȸ���̸���</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="<%= request.getContextPath() %>/webimage/search.jpg"></div>
					</form>
				</div>
				<div class="userup">
					<div><button type="button">����</button></div>
					<div>�� ȸ���� :</div>
					<div>�˻� ȸ���� :</div>
				</div>
				<div class="userup2">
					<div><button type="button">����</button></div>
					<div>�� Ż�� ȸ���� :</div>
					<div>�� Ż�� ȸ���� :</div>
				</div>
				<div class="userup3">
					<div><button type="button">����</button></div>
					<div>�� ������ :</div>
					<div>�˻� ������ :</div>
				</div>
				<form class="mainfrm">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>ȸ������</th>
							<th>���̵�</th>
							<th>ȸ����</th>
							<th>����ó</th>
							<th>�̸���</th>
							<th>����Ʈ</th>
							<th>������</th>
							<th>���</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>�Ϲ�ȸ��</td>
							<td>real</td>
							<td>�ܹ���</td>
							<td>010-8282-9999</td>
							<td>imhungry@hambug.com</td>
							<td>27630point</td>
							<td>2021-01-13</td>
							<td><button type="button" id="btbt">����</button></td>
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
							<td><button type="button" id="btbt">����</button></td>
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
							<td><button type="button" id="btbt">����</button></td>
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
							<td><button type="button" id="btbt">����</button></td>
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
							<td><button type="button" id="btbt">����</button></td>
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
							<td><button type="button" id="btbt">����</button></td>
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
							<td><button type="button" id="btbt">����</button></td>
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
							<td><button type="button" id="btbt">����</button></td>
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
							<td><button type="button" id="btbt">����</button></td>
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
							<td><button type="button" id="btbt">����</button></td>
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
							<td><button type="button" id="btbt">����</button></td>
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
							<td><button type="button" id="btbt">����</button></td>
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
							<td><button type="button" id="btbt">����</button></td>
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
							<td><button type="button" id="btbt">����</button></td>
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
							<td><button type="button" id="btbt">����</button></td>
						</tr>
					</table>
					<div id="divPaging">
						<div>��</div>
						<div><a href="#"><b>1</b></a></div>
						<div><a href="#">2</a></div>
						<div><a href="#">3</a></div>
						<div><a href="#">4</a></div>
						<div><a href="#">5</a></div>
						<div>��</div>
					</div>
				</form>
				<form class="mainfrm2">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>ȸ������</th>
							<th>ȸ����</th>
							<th>Ż����</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>�Ϲ�ȸ��</td>
							<td>�ܹ���</td>
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
						<div>��</div>
						<div><a href="#"><b>1</b></a></div>
						<div><a href="#">2</a></div>
						<div><a href="#">3</a></div>
						<div><a href="#">4</a></div>
						<div><a href="#">5</a></div>
						<div>��</div>
					</div>
				</form>
				<form class="mainfrm3">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>ȸ����</th>
							<th>����</th>
							<th>�ۼ���</th>
							<th>�з�</th>
							<th>����</th>
							<th>�亯</th>
							<th>���</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>�ܹ���</td>
							<td>���� ������ �����</td>
							<td>2021-01-25</td>
							<td>*</td>
							<td>�亯�Ϸ�</td>
							<td><button type="button" id="btbtn">�亯�ϱ�</button></td>
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
							<td><button type="button" id="btbtn">�亯�ϱ�</button></td>
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
							<td><button type="button" id="btbtn">�亯�ϱ�</button></td>
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
							<td><button type="button" id="btbtn">�亯�ϱ�</button></td>
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
							<td><button type="button" id="btbtn">�亯�ϱ�</button></td>
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
							<td><button type="button" id="btbtn">�亯�ϱ�</button></td>
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
							<td><button type="button" id="btbtn">�亯�ϱ�</button></td>
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
							<td><button type="button" id="btbtn">�亯�ϱ�</button></td>
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
							<td><button type="button" id="btbtn">�亯�ϱ�</button></td>
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
							<td><button type="button" id="btbtn">�亯�ϱ�</button></td>
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
							<td><button type="button" id="btbtn">�亯�ϱ�</button></td>
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
							<td><button type="button" id="btbtn">�亯�ϱ�</button></td>
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
							<td><button type="button" id="btbtn">�亯�ϱ�</button></td>
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
							<td><button type="button" id="btbtn">�亯�ϱ�</button></td>
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
							<td><button type="button" id="btbtn">�亯�ϱ�</button></td>
							<td></td>
						</tr>
					</table>
					<div id="divPaging">
						<div>��</div>
						<div><a href="#"><b>1</b></a></div>
						<div><a href="#">2</a></div>
						<div><a href="#">3</a></div>
						<div><a href="#">4</a></div>
						<div><a href="#">5</a></div>
						<div>��</div>
					</div>
				</form>
				<div class="usermainpage4">
					<form class="shfrm">
						<div class="selectsh">
							<select>
								<option selected>ȸ����</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="<%= request.getContextPath() %>/webimage/search.jpg"></div>
					</form>
				</div>
				<div class="ftaplus">
					<button type="button" id="ftaplusbtn">FAQ �߰��ϱ�<img src="<%= request.getContextPath() %>/webimage/���ϱ�.png"></button>
				</div>
				<form class="mainfrm4">
					<ul id="ul1">
						<li style="width:10%;">No</li>
						<li style="width:59.25%;">����</li>
						<li style="width:10%;">�ۼ���</li>
						<li style="width:10%;">�ۼ���</li>
						<li style="width:10%;">ī�װ�</li>
					</ul>
					<ul id="ul2">
						<li>1</li>
						<li>��ī�ݶ󿡼� �ܸ��̳���</li>
						<li>��ī�ݶ�</li>
						<li>2021-02-18</li>
						<li>������</li>
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
						<div>��</div>
						<div><a href="#"><b>1</b></a></div>
						<div><a href="#">2</a></div>
						<div><a href="#">3</a></div>
						<div><a href="#">4</a></div>
						<div><a href="#">5</a></div>
						<div>��</div>
					</div>
					<div class="ftacontent">
						<div class="faqhead">
							<img src="<%= request.getContextPath() %>/webimage/FAQ.png">
							<div class="faqcont">��ī�ݶ󿡼� �ܸ��̳���</div>
							<div class="closeimg"><img src="<%= request.getContextPath() %>/webimage/�ݱ�.png"></div>
						</div>
						<div class="faqcontentmain">������ ����;</div>
					</div>
					<div class="cathead">ī�װ�</div>
					<div class="ftacontent2">
						<div class="faqhead">
							<img src="<%= request.getContextPath() %>/webimage/FAQ.png">
							<div class="faqcont"><input type="text"></div>
							<div class="closeimg2"><img src="<%= request.getContextPath() %>/webimage/�ݱ�.png"></div>
						</div>
						<div class="faqcontentmain"><input type="text"></div>
						<div class="catgo"><button type="button">���</button></div>
					</div>
				</form>
			</article>
		</section>
	</body>
</html>