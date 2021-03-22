<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%  
	String loginname = (String)session.getAttribute("loginname");
%>     
<!DOCTYPE html>
<html>
	<head>
		<title>�������</title>
		<!-- title ������ -->
		<link rel="shortcut icon" type="image/x-icon" href="<%= request.getContextPath() %>/webimage/titlelogo.png">
		<link href="<%= request.getContextPath() %>/css/adminmain.css" rel="stylesheet" type="text/css" />
		<link href="<%= request.getContextPath() %>/css/adminmembermanage.css" rel="stylesheet" type="text/css" />
		<script src="<%= request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
		<script src="<%= request.getContextPath() %>/js/admin.js"></script>
		<link href="<%= request.getContextPath() %>/css/adminreviewdetail.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<header>
			<div class="herdiv">
				<div class="logodiv"><img src="<%= request.getContextPath() %>/webimage/edupick2.jpg"></div>
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
					<a href="��ǰ����.html" id="navuser_1_1">�п�����</a><br>
					<a href="��ǰ����.html" id="navuser_1_2">���ǰ���</a><br>
					<a href="��ǰ����.html" id="navuser_1_3">����������</a><br>
					<a href="��ǰ����.html" id="navuser_1_4">���������</a><br>
					<a href="��ǰ����.html" id="navuser_1_5">Ŀ�´�Ƽ ����</a><br>
					<a href="��ǰ����.html" id="navuser_1_6">������</a><br>
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
				<form class="starfrm">
						<table class="startable">
							<tr>
								<th width="100px" height="68px">�п���</th>
								<td height="68px"><input type="text" value="����IT" disabled></td>
								<th width="100px" height="68px">���Ǹ�</th>
								<td height="68px"><input type="text" value="��ġ�������ϱ�" disabled></td>
							</tr>
							<tr>
								<th height="68px">�з�</th>
								<td><input type="text" value="��â" disabled></td>
								<th height="68px">�ۼ���</th>
								<td><input type="text" value="2021-02-22" disabled></td>
							</tr>
							<tr>
								<th>����</th>
								<td colspan=3><textarea disabled>�׽�Ʈ�Դϴ�.</textarea></td>
							</tr>
						</table>
						<table class="startable2">
							<tr>
								<th rowspan=5 height=90% width=25%>�����򸮽�Ʈ</th>
								<td width=10%>�ڡڡ�</td>
								<td width=50% height="100px">�׷����� ���׿�.</td>
								<td width=5%><button type="button" id="delbtn">����</button></td>
								<td width=10%>����ŷ</td>
								
							</tr>
							<tr>
								<td></td>
								<td height="100px"></td>
								<td width=5%><button type="button" id="delbtn">����</button></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td height="100px"></td>
								<td width=5%><button type="button" id="delbtn">����</button></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td height="100px"></td>
								<td width=5%><button type="button" id="delbtn">����</button></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td height="100px"></td>
								<td width=5%><button type="button" id="delbtn">����</button></td>
								<td></td>
							</tr>
							<tr>
								<th>������</th>
								<td width="500px" height="100px" colspan=3><input type="text" id="textbox2"></td>
								<td width="120px;" style="border-top:1px solid white;"><button type="button" id="submit2">���</button></td>
							</tr>
						</table>
						<button type="button" id="starbtn">���</button>
					</form>
			</article>
		</section>
	</body>
</html>					