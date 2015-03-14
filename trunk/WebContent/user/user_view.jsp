<%@page import="com.itwill.user.UserNotFoundException"%>
<%@page import="com.itwill.user.User"%>
<%@page import="com.itwill.user.UserManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="loginCheck.jspf" %>
<%
	String userId=request.getParameter("userId");
	if(userId==null){
		response.sendRedirect("user_list.jsp");
		return;
	}
	User user =null;
	try{
		
		user = UserManager.getInstance().findUser(userId);
		
	}catch(UserNotFoundException e){
		request.setAttribute("MSG", e.getMessage());
		RequestDispatcher rd= request.getRequestDispatcher("user_list.jsp");
		rd.forward(request,response);
		return;		
	}
	
%>
    
<html>
<head>
<title> ����� ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel=stylesheet href="css/user.css" type="text/css">
<script language="JavaScript">
function userList() {
	f.action = "user_list.jsp";
	f.submit();
}

function userModify() {
	f.action = "user_modify.jsp";
	f.submit();
}

function userRemove() {
	/*
	window.alert("alert");
	var b=window.confirm("confirm");
	alert("confirm:"+b);
	var c=window.prompt("text", "value");	
	alert("prompt:"+c);
	*/
	
	if ( window.confirm("���� �����Ͻðڽ��ϱ�?") ) {
		f.action = "user_remove_action.jsp";
		f.submit();
	}
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
			<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>����� ���� - ����� ��������</b></td>
		  </tr>
	  </table>  
	  <br>
	  <%@include file="loginUI.jspf" %>
	  <!-- view Form  -->
	  <form name="f" method="post">
	  <input type="hidden" name="userId" value="<%=userId%>"/>
	  <table border="0" cellpadding="0" cellspacing="1" width="590" bgcolor="BBBBBB">
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">����� ���̵�</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				<%=user.getUserId()%>
			</td>
		  </tr>
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">�̸�</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				<%=user.getName()%>
			</td>
		  </tr>
		  <tr>
			<td width=100 align=center bgcolor="E6ECDE" height="22">�̸��� �ּ�</td>
			<td width=490 bgcolor="ffffff" style="padding-left:10">
				<%=user.getEmail()%>
			</td>
		  </tr>		  
	  </table>
	  </form>
	  <br>
	  
	  <table width=590 border=0 cellpadding=0 cellspacing=0>
		  <tr>
			<td align=center>
			<%-- if(sUserId.equals(userId)) {--%>
			<input type="button" value="����" onClick="userModify();"> &nbsp;
			<input type="button" value="����" onClick="userRemove();"> &nbsp;
			<input type="button" value="���" onClick="userList();"> 
			<%--} --%>
			</td>
		  </tr>
	  </table>

	  </td>
	</tr>
</table>  

</body>
</html>