<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>��Ÿ����</title>
		<!-- title ������ -->
		<link rel="shortcut icon" type="image/x-icon" href="titlelogo.png">
		<link href="adminmain.css" rel="stylesheet" type="text/css" />
		<link href="adminmembermanage.css" rel="stylesheet" type="text/css" />
		<script src="jquery-3.5.1.min.js"></script>
		<script src="admin.js"></script>
		<link href="adminother.css" rel="stylesheet" type="text/css" />
	</head>
	<body style="overflow-x:hidden; overflow-y:scroll;">
		<header>
			<div class="herdiv">
				<div class="logodiv"><img src="edupick2.jpg"></div>
				<div class="logdiv">�ۡۡ�(��)</div>
				<div class="logdiv2">
				<a href="������.html">Home</a>
				<a href="#">�α׾ƿ�</a>
				</div>
			</div>
		</header>
		<nav class="nav">
			<div class="admin">������ ��������</div>
			<div>
				<div class="navuser">����Ʈ ���� ��</div>
				<div class="navuser_1">
					<a href="#" id="navuser_1_1">����Ʈ ����</a><br>
					<a href="#" id="navuser_1_2">����Ʈ ����</a><br>
				</div>
			</div>
		</nav>
		<nav>
			<div class="adminmenu">
				<div class="subnav" id="subnav1">ȸ������</div>
				<div class="subnav" id="subnav2">��ǰ����</div>
				<div class="subnav" id="subnav3">�ֹ�����</div>
				<div class="subnav" id="subnav4">�Խ��ǰ���</div>
				<div class="subnav" id="subnav5">����������</div>
				<div class="subnav" id="subnav6" style="background:#FA5858;">��Ÿ����</div>
			</div>
		</nav>
		<section>
			<article>
				<div class="usermainpage">
					<form class="shfrm">
						<div class="point0">����(���)�� : <input type="date"></div>
						<div class="selectsh">
							<select>
								<option selected>�̸�</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="search.jpg"></div>
					</form>
				</div>
				<form class="mainfrm">
					<table class="maintable">
						<tr id="table1">
							<th>��ȣ</th>
							<th>�̸�</th>
							<th>����(���)����</th>
							<th>����(���)��</th>
							<th>����(���)��</th>
						</tr>
						<tr>
							<th>1</th>
							<td>���и�</td>
							<td>�Ｚ���� �ֽ�</td>
							<td>384,840,046��</td>
							<td>2021-02-25</td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
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
				<div class="usermainpage2">
					<form class="shfrm">
						<div class="selectsh">
							<select>
								<option selected>����</option>
								<option>���̵�</option>
							</select>
						</div>
						<div class="selectsh2"><input size=30></div>
						<div class="selectsh3"><img src="search.jpg"></div>
						<div class="clplus"><button type="button" id="clplus_4">���� �߰��ϱ�</button></div>
					</form>
				</div>
				<form class="mainfrm2">
					<table class="maintable">
						<tr id="table1">
							<th>��ȣ</th>
							<th>����</th>
							<th>���̵�</th>
							<th>���� ����Ʈ</th>
						</tr>
						<tr>
							<th>1</th>
							<td id="quizs">������ �ڲ� �� �Դ´�. �� ������ �����ϱ�?</td>
							<td>��</td>
							<td>100Point</td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<th></th>
							<td id="quizs"></td>
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
					<div class="quiz">
						<div class="quizmain">������ �ڲ� �� �Դ´�. �� ������ �����ϱ�?</div>
						<div class="quiz_close"><img src="�ݱ�.png"></div>
						<div class="quiz_contents">
							<div id="joke1">1. �Ｚ���� �ֽ��� �ż��� ���</div>
							<div id="joke2">2. ����IT �п����� ������ ��� ���</div>
							<div id="joke3">3. ������ �����ִ� ���</div>
							<div id="joke4">4. ���½ð����� ���Ÿ���� ������ ���</div>
						</div>
					</div>
				</form>
			</article>
		</section>
	</body>
</html>