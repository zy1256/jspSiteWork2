<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>

<title>ȸ�� ����</title>
<link rel="stylesheet" type="text/css" href="css/com.css">
<style type="text/css">
a:link {
	color: #444444;
	text-decoration: none;
}

a:visited {
	color: #444444;
	text-decoration: none;
}

a:hover {
	color: #438A01;
	text-decoration: underline;
}

a:active {
	text-decoration: none;
}
</style>
<script language="javascript" src="js/com.js"></script>
<script language="javascript">
	function loading() {
		//window.alert("�ڹٽ�ũ��Ʈ ���!!!!");
		//location.href="http://www.daum.net";
		window.document.join.id.focus();
	}
	//null check function
	/*
	function isNull(){
		if(document.join.id.value==""){
			alert("id �־���~~~~");
			return false;
		}
		return true;
		//alert("null function....call");
	}
	 */

	function checkForm(form) {
		if (isNull(form.id)) {
			alert('id �Է��ϼ���~~~');
			return false;
		}
		if (!isAlphabet(form.id)) {
			alert('id ������ ����~~~');
			return false;
		}
		if (isNull(form.pass)) {
			alert('�о����� �Է���s����');
			return false;
		}

		if (!isSame(form.pass, form.repass)) {
			alert('�н������ �н����� Ȯ�� ����ġ');
			return false;
		}
		return true;
	}
</script>


</head>
<body onLoad="loading();">

	<h3 align="center">�ߡߡ� ȸ������ �ߡߡ�</h3>
	<form name="join" method="post" action="4.join.jsp"
		onSubmit="return checkForm(document.join);">
		<table bgcolor="black" cellspacing="1" cellpadding="5" align="center">
			<tr>
				<th bgcolor="44ff44"><font size="2">���̵�</font></th>
				<td bgcolor="white" width="300"><input type="text" size="10"
					name="id" class="TXTFLD"></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">��й�ȣ</font></th>
				<td bgcolor="white" width="300"><input type="password"
					size="10" name="pass" class="TXTFLD1"></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">��й�ȣȮ��</font></th>
				<td bgcolor="white" width="300"><input type="password"
					size="10" name="repass" class="TXTFLD"></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">�̸�</font></th>
				<td bgcolor="white" width="300"><input type="text" size="10"
					name="name" class="TXTFLD"></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">�ּ�</font></th>
				<td bgcolor="white" width="300"><input type="text" size="30"
					name="addr" class="TXTFLD"></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">����</font></th>
				<td bgcolor="white" width="300"><input type="radio" name="sex"
					value="����"><font size="2">����</font> <input type="radio"
					name="sex" value="����" checked><font size="2">����</font></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">����</font></th>
				<td bgcolor="white" width="300"><select name="job">
						<option value="�л�"><font size="2">�л�</font>
						<option value="�ֺ�"><font size="2">�ֺ�</font>
						<option value="ȸ���"><font size="2">ȸ���</font>
						<option value="��Ÿ"><font size="2">��Ÿ</font>
				</select></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">���</font></th>
				<td bgcolor="white" width="300"><input type="checkbox"
					name="hobby" value="��ǻ��" checked><font size="2">��ǻ��</font>
					<input type="checkbox" name="hobby" value="����"><font
					size="2">����</font> <input type="checkbox" name="hobby" value="����"><font
					size="2">����</font> <input type="checkbox" name="hobby" value="�"><font
					size="2">�</font> <input type="checkbox" name="hobby" value="��Ÿ"><font
					size="2">��Ÿ</font></td>
			</tr>
			<th colspan="2" bgcolor="ff8888"><input type="submit" value="����">
				<input type="reset" value="���"></th>
			</tr>
		</table>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<%@include file="5-6.directive_included_file.jspf" %>

	</form>
</body>
</html>
