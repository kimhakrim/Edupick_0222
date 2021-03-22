<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%  
	String loginname = (String)session.getAttribute("loginname");
%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>�Խ����߰�</title>
		<!-- title ������ -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<link href="<%= request.getContextPath() %>/css/adminmain.css" rel="stylesheet" type="text/css" />
		<link href="<%= request.getContextPath() %>/css/adminmembermanage.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%= request.getContextPath() %>/js/admin.js"></script>
		<!-- ��Ʈ -->
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/css/adminboardadd.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<header>
			<div class="herdiv">
				<div class="logodiv"><img src="edupick2.jpg"></div>
				<div class="logdiv"><%=loginname %>(��)</div>
				<div class="logdiv2">
				<a href="<%= request.getContextPath() %>/Common/main.do">Home</a>
				<a href="<%= request.getContextPath() %>/Common/logout.do">�α׾ƿ�</a>
				</div>
			</div>
		</header>
		<nav class="nav">
			<div class="admin" >������ ��������</div>
			<div>
				<div class="navuser">�Խ��ǰ��� ��</div>
				<div class="navuser_1">
					<a href="�Խ��ǰ���.html" id="navuser_1_1">�Խ��� ����</a><br>
					<a href="�Խ��ǰ���.html" id="navuser_1_2">�ڸ�Ʈ ����</a><br>
				</div>
			</div>
		</nav>
		<nav>
			<div class="adminmenu">
				<div class="subnav" id="subnav1">ȸ������</div>
				<div class="subnav" id="subnav2">��ǰ����</div>
				<div class="subnav" id="subnav3">�ֹ�����</div>
				<div class="subnav" id="subnav4" style="background:#FA5858;">�Խ��ǰ���</div>
				<div class="subnav" id="subnav5">����������</div>
				<div class="subnav" id="subnav6">��Ÿ����</div>
			</div>
		</nav>
		<section>
			<article>
				<form class="jusicfrm">
					<ul>
						<li>�Խ��� ��</li>
						<li><input value="�����Խ���"></li>
						<li>ī�װ�</li>
						<li style="width:100px;">
							<select>
								<option selected>ī�װ�</option>
							</select>
						</li>
						<li><button type="button">�׷����</button></li>
						<li>�Խ��� ������</li>
						<li><input value="������"></li>
						<li>�ڵ���б�</li>
						<li><input type="checkbox"></li>
						<li>����</li>
						<li>��</li>
						<li>��Ϻ���<br>
							<select>
								<option>�Ϲ�</option>
								<option>��ȸ��</option>
								<option>���ȸ��</option>
								<option>������</option>
							</select>
						</li>
						<li>���뺸��<br>
							<select>
								<option>�Ϲ�</option>
								<option>��ȸ��</option>
								<option>���ȸ��</option>
								<option>������</option>
							</select>
						</li>
						<li>�۾���<br>
							<select>
								<option>�Ϲ�</option>
								<option>��ȸ��</option>
								<option>���ȸ��</option>
								<option>������</option>
							</select>
						</li>
						<li>��۾���<br>
							<select>
								<option>�Ϲ�</option>
								<option>��ȸ��</option>
								<option>���ȸ��</option>
								<option>������</option>
							</select>
						</li>
						<li><br>������ ���� ���</li>
						<li>��</li>
						<li style="width:500px;"><br>���޼��� = ( ) ����� �̵������� = ( )</li>
					</ul>
					<button type="button" id="postbtn">����</button>
					<button type="button" id="postlist">���</button>
				</form>
			</article>
		</section>
	</body>
</html>	