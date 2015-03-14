
<%@page import="com.itwill.student.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>page 지시어 [import]</h1>
<h2>형태:&lt;%@page import="com.itwill.student.Student"&gt;</h2>
<hr/>
<%
	ArrayList<Student> studentList=new ArrayList<Student>();
	studentList.add(new Student(1,"KIM","JAVA"));
	studentList.add(new Student(2,"LEE","ANDROID"));
	studentList.add(new Student(3,"SIM","LINUX"));
%>
<ol>
<%
for(Student student:studentList){
%>
	<li>
		번호:<%=student.getNo() %>,
		이름:<%=student.getName() %>,
		반:<%=student.getClazz() %>
	</li>

<%} %>
</ol>
</body>
</html>




