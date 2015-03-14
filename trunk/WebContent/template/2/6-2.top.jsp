<%@page import="com.itwill.student.Student"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	
	String content=request.getParameter("content");
	String contentKor=request.getParameter("contentKor");
	
	Student st=(Student)request.getAttribute("st");
%>   
<center><h1><%=contentKor%>[<%=content %>] 제목</h1></center>
<hr/>
Student객체 참조변수:<%=st%>