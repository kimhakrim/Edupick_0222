<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%  
	String loginname = (String)session.getAttribute("loginname");
%> 

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>��ǰ����</title>
		<!-- title ������ -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<link href="<%= request.getContextPath() %>/css/adminmain.css" rel="stylesheet" type="text/css" />
		<link href="<%= request.getContextPath() %>/css/adminmembermanage.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%= request.getContextPath() %>/js/admin.js"></script>
	</head>
	<body>
		<header>
			<div class="herdiv">
				<div class="logodiv"><img src="edupick2.jpg"></div>
				<div class="logdiv"><%=loginname %>(��)</div>
				<div class="logdiv2">
				<a href="������.html">Home</a>
				<a href="<%= request.getContextPath() %>/Common/logout.do">�α׾ƿ�</a>
				</div>
			</div>
		</header>
		<nav class="nav">
			<div class="admin" >������ ��������</div>
			<div>
				<div class="navuser">��ǰ���� ��</div>
				<div class="navuser_1">
					<a href="#" id="navuser_1_1">�п�����</a><br>
					<a href="#" id="navuser_1_2">���ǰ���</a><br>
					<a href="#" id="navuser_1_3">����������</a><br>
					<a href="#" id="navuser_1_4">���������</a><br>
					<a href="#" id="navuser_1_5">Ŀ�´�Ƽ ����</a><br>
					<a href="#" id="navuser_1_6">������</a><br>
				</div>
			</div>
		</nav>
		<nav>
			<div class="adminmenu">
				<div class="subnav" id="subnav1">ȸ������</div>
				<div class="subnav" id="subnav2" style="background:#FA5858;">��ǰ����</div>
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
								<option selected>�п���</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="<%= request.getContextPath() %>/webimage/search.jpg"></div>
					</form>
				</div>
				<div class="userup">
					<div><button type="button">����</button></div>
					<div>�� �п��� :</div>
					<div>�˻� �п��� :</div>
				</div>
				<form class="mainfrm">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>���̵�</th>
							<th>ȸ����</th>
							<th>�п� ����ó</th>
							<th>�����</th>
							<th>���</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>real</td>
							<td>����IT</td>
							<td>0507-1363-2684</td>
							<td>2021-01-13</td>
							<td><button type="button" id="btbtcl">����</button></td>
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
					<div class="clplus"><button type="button" id="clplus_1">�߰��ϱ�</button></div>
				</form>
				<div class="usermainpage2">
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
				<div class="userup2">
					<div><button type="button">����</button></div>
					<div>�� ȸ���� :</div>
					<div>�˻� ȸ���� :</div>
				</div>
				<form class="mainfrm2">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>�п���</th>
							<th>������</th>
							<th>�����Ⱓ</th>
							<th>�����Ⱓ</th>
							<th>�����ο�</th>
							<th>�����</th>
							<th>���</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>����IT</td>
							<td>257,000��</td>
							<td>2020-11-23~2021-04-16</td>
							<td>2020-11-01~2020-11-18</td>
							<td>20��</td>
							<td>2020-11-01</td>
							<td><button type="button" id="btbt99">����</button></td>
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
				<div class="userup3">
					<div><button type="button">����</button></div>
					<div>�� �������� :</div>
					<div>�˻� �������� :</div>
				</div>
				<form class="mainfrm3">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>�̸�</th>
							<th>�п���</th>
							<th>���Ǹ�</th>
							<th>�����ð�</th>
							<th>���� ������</th>
							<th>���� ������</th>
							<th>���</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>�ޱ׸�</td>
							<td>����IT</td>
							<td>��ġ�������ϱ�</td>
							<td>11:00 ~ 15 : 30</td>
							<td>2021-03-22</td>
							<td>2021-02-22</td>
							<td><button type="button" id="btbt88">����</button></td>
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
								<option selected>�п���</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="<%= request.getContextPath() %>/webimage/search.jpg"></div>
					</form>
				</div>
				<div class="userup4">
					<div><button type="button">����</button></div>
					<div>�� ������ :</div>
					<div>�˻� ������ :</div>
				</div>
				<form class="mainfrm4">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>�̸�</th>
							<th>�п���</th>
							<th>���Ǹ�</th>
							<th>�ۼ�����</th>
							<th>���</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>�ޱ׸�</td>
							<td>����IT</td>
							<td>��ġ�������ϱ�</td>
							<td>2021-02-22</td>
							<td><button type="button" id="btbt77">����</button></td>
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
				<div class="usermainpage5">
					<form class="shfrm">
						<div class="comsh">
							<select>
								<option>����</option>
								<option>���</option>
							</select>
						</div>
						<div class="comsh2">
							<select>
								<option>���ǻ���</option>
								<option>��������</option>
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
				<div class="userup5">
					<div><button type="button">����</button></div>
					<div>�� Ŀ�´�Ƽ �� :</div>
					<div>�˻� Ŀ�´�Ƽ �� :</div>
				</div>
				<form class="mainfrm5">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>ī�װ�</th>
							<th>�۱���</th>
							<th>�ۼ���</th>
							<th>�п���</th>
							<th>������</th>
							<th>�ۼ���</th>
							<th>���</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>��â</td>
							<td>���</td>
							<td>��������</td>
							<td>����IT</td>
							<td>��ġ�������ϱ�</td>
							<td>2021-02-22</td>
							<td><button type="button" id="btbt66">����</button></td>
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
				<div class="usermainpage6">
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
				<div class="userup6">
					<div><button type="button">����</button></div>
					<div>�� ���� :</div>
					<div>�˻� ���� :</div>
				</div>
				<form class="mainfrm6">
					<table class="maintable">
						<tr id="table1">
							<th><input type="checkbox" id="usercheck"></th>
							<th>No</th>
							<th>ȸ����</th>
							<th>�п���</th>
							<th>���۽ð�</th>
							<th>����ð�</th>
							<th>���</th>
						</tr>
						<tr>
							<th><input type="checkbox" id="usercheck_all1"></th>
							<td>1</td>
							<td>�ޱ׸�</td>
							<td>����IT</td>
							<td>2021-02-22</td>
							<td>2021-03-22</td>
							<td><button type="button" id="btbt55">����</button></td>
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
			</article>
		</section>
	</body>