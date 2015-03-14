<%@page import="com.itwill.student.Student"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String id=(String)request.getAttribute("id");
String name=(String)request.getAttribute("name");
String address=(String)request.getAttribute("address");
Student student=(Student)request.getAttribute("student");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>6-1.action_forwarded.jsp</h1>
<hr>
<p>
	나는 6-1.action_forward.jsp에서 forwading
	당한 jsp입니다..
	제가 응답합니다.
</p>
<h3>request스코프객체로부터 얻은공유객체</h3>
<p>id:<%=id %></p>
<p>name:<%=name %></p>
<p>address:<%=address %></p>
<p>student:<%=student.getNo()+","+student.getName()+","+student.getClazz() %></p>

</body>
</html>