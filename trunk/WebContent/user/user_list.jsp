<%@page import="com.itwill.user.User"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.user.UserManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="loginCheck.jspf" %> 
<%
String msg=(String)request.getAttribute("MSG");
if(msg==null){
	msg="";
}
List<User> userList=UserManager.getInstance().findeUserList();
%>
<html>
<head>
<title> ����� ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel=stylesheet href="css/user.css" type="text/css">
<%
	if(!msg.equals("")){
		out.println("<script>");
		out.println("alert('"+msg+"')");
		out.println("</script>");
	}
%>	
	
	
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<br>
<form name="f" method="post" action="user_write.jsp">
<table width=780 border=0 cellpadding=0 cellspacing=0>
<tr>
	<td width="20"></td>
	<td>
	  	<!--contents-->
	  	<table width=590 border=0 cellpadding=0 cellspacing=0>
		  	<tr>
				<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>����� ���� - ����Ʈ</b></td>
		  	</tr>
	  	</table>  
	  	<br>
	  	
	  	<%@include file="loginUI.jspf" %>
	  	
	  	<%-- ���� include
	  	<%
	  		String loginPage="";
	  		if(sUserId==null){
	  		 	loginPage="login.jsp";
	  		}else{
	  			loginPage="logout.jsp";
	  		}
	  	%>
	  	<jsp:include page="<%=loginPage%>"></jsp:include>
	  	--%>
	  	<!-- list -->
	  	<table border="0" cellpadding="0" cellspacing="1" width="590" bgcolor="BBBBBB">
		  	<tr>
				<td width=190 align=center bgcolor="E6ECDE" height="22">����� ���̵�</td>
				<td width=200 align=center bgcolor="E6ECDE">�̸�</td>
				<td width=200 align=center bgcolor="E6ECDE">�̸���</td>
		  	</tr>
		  	<%for(User user:userList){%>
		  	<tr>
				<td width=190 align=center bgcolor="ffffff" height="20">
					<%=user.getUserId()%>
				</td>
				<td width=200 bgcolor="ffffff" style="padding-left:10">
					<a href="user_view.jsp?userId=<%=user.getUserId()%>" class="user">
						<%=user.getName() %>
					</a>
				</td>
				<td width=200 align=center bgcolor="ffffff">
					<%=user.getEmail()%>
				</td>
		  	</tr>
		  	<% }%>
		  	
		  	
	  	</table>
	  	<!-- /list -->	 

		<br>
		<!-- button -->
	  	<table border="0" cellpadding="0" cellspacing="1" width="590">
			<tr>
				<td align="right">
					<input type="submit" value="����� �߰�"/>
				</td>
			</tr>
		</table>		
	</td>
</tr>
</table>  
</form>
</body>
</html>