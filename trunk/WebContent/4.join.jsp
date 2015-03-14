<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("4.form.jsp");
		return;
	}
	String id=request.getParameter("id");
	String name=request.getParameter("name");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr><td>아이디:</td><td><%out.print(id); %></td></tr>
	<tr><td>이름:</td><td><% out.print(name);%></td></tr>
	<tr><td>아이디:</td><td><%=id%></td></tr>
	<tr><td>이름:</td><td>  <%=name%></td></tr>
</table>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
</body>
</html>