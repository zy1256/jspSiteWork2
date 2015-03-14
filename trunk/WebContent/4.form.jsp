<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>

<title>회원 가입</title>
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
		//window.alert("자바스크립트 경고!!!!");
		//location.href="http://www.daum.net";
		window.document.join.id.focus();
	}
	//null check function
	/*
	function isNull(){
		if(document.join.id.value==""){
			alert("id 넣어라야~~~~");
			return false;
		}
		return true;
		//alert("null function....call");
	}
	 */

	function checkForm(form) {
		if (isNull(form.id)) {
			alert('id 입력하세요~~~');
			return false;
		}
		if (!isAlphabet(form.id)) {
			alert('id 시작은 영문~~~');
			return false;
		}
		if (isNull(form.pass)) {
			alert('패쓰워드 입력하s세요');
			return false;
		}

		if (!isSame(form.pass, form.repass)) {
			alert('패스워드와 패스워드 확인 불일치');
			return false;
		}
		return true;
	}
</script>


</head>
<body onLoad="loading();">

	<h3 align="center">◆◆◆ 회원가입 ◆◆◆</h3>
	<form name="join" method="post" action="4.join.jsp"
		onSubmit="return checkForm(document.join);">
		<table bgcolor="black" cellspacing="1" cellpadding="5" align="center">
			<tr>
				<th bgcolor="44ff44"><font size="2">아이디</font></th>
				<td bgcolor="white" width="300"><input type="text" size="10"
					name="id" class="TXTFLD"></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">비밀번호</font></th>
				<td bgcolor="white" width="300"><input type="password"
					size="10" name="pass" class="TXTFLD1"></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">비밀번호확인</font></th>
				<td bgcolor="white" width="300"><input type="password"
					size="10" name="repass" class="TXTFLD"></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">이름</font></th>
				<td bgcolor="white" width="300"><input type="text" size="10"
					name="name" class="TXTFLD"></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">주소</font></th>
				<td bgcolor="white" width="300"><input type="text" size="30"
					name="addr" class="TXTFLD"></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">성별</font></th>
				<td bgcolor="white" width="300"><input type="radio" name="sex"
					value="남자"><font size="2">남자</font> <input type="radio"
					name="sex" value="여자" checked><font size="2">여자</font></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">직업</font></th>
				<td bgcolor="white" width="300"><select name="job">
						<option value="학생"><font size="2">학생</font>
						<option value="주부"><font size="2">주부</font>
						<option value="회사원"><font size="2">회사원</font>
						<option value="기타"><font size="2">기타</font>
				</select></td>
			</tr>
			<tr>
				<th bgcolor="44ff44"><font size="2">취미</font></th>
				<td bgcolor="white" width="300"><input type="checkbox"
					name="hobby" value="컴퓨터" checked><font size="2">컴퓨터</font>
					<input type="checkbox" name="hobby" value="낮잠"><font
					size="2">낮잠</font> <input type="checkbox" name="hobby" value="연애"><font
					size="2">연애</font> <input type="checkbox" name="hobby" value="운동"><font
					size="2">운동</font> <input type="checkbox" name="hobby" value="기타"><font
					size="2">기타</font></td>
			</tr>
			<th colspan="2" bgcolor="ff8888"><input type="submit" value="가입">
				<input type="reset" value="취소"></th>
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
