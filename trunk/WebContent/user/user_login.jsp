<%@page import="com.itwill.user.User"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	String msg=(String)request.getAttribute("MSG");
	if(msg==null){
		msg="";
	}
	User fuser=(User)request.getAttribute("fuser");
	if(fuser==null){
		fuser=new User("","","","");
	}
	
	
%>   
<html>

<head>
<title>����� ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel=stylesheet href="css/user.css" type="text/css">
<script language="JavaScript">
function userCreate() {
	f.action = "user_write.jsp";
	f.submit();
}

function login() {
	if ( f.userId.value == "" ) {
		alert("����� ���̵� �Է��Ͻʽÿ�.");
		f.userId.focus();
		return false;
	} 
	if ( f.password.value == "" ) {
		alert("��й�ȣ�� �Է��Ͻʽÿ�.");
		f.password.focus();
		return false;
	}	
	
	f.action = "user_login_action.jsp";
	f.submit();
}
</script>
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<br>
<table width=780 border=0 cellpadding=0 cellspacing=0>
	<tr>
	  <td width="20"></td>
	  <td>
  <!--contents-->
	  <table width=590 border=0 cellpadding=0 cellspacing=0>
		  <tr>
			<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>����� ���� - �α���</b></td>
		  </tr>
	  </table>  
	  <br>
	  <font color="red"><%=msg %></font>
	  <!-- Login Form  -->
	  <form name="f" method="post">
	  <table border="0" cellpadding="0" cellspacing="1" width="590" bgcolor="BBBBBB">
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">����� ���̵�</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10" >
				<input type="text" style="width:150" name="userId" value="<%=fuser.getUserId()%>">
			</td>
		  </tr>
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">��й�ȣ</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				<input type="password" style="width:150" name="password" value="<%=fuser.getPassword()%>" >
			</td>
		  </tr>
	  </table>
	  </form>
	  <br>
	  
	  <table width=590 border=0 cellpadding=0 cellspacing=0>
		  <tr>
			<td align=center>
			<input type="button" value="�α���" onClick="login()"> &nbsp;
			<input type="button" value="ȸ������" onClick="userCreate()">
			</td>
		  </tr>
	  </table>

	  </td>
	</tr>
</table>  

</body>
</html>