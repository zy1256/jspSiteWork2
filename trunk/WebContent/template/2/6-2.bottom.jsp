<%@page import="com.itwill.student.Student"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String content = request.getParameter("content");
    String contentKor = request.getParameter("contentKor");
	
    Student st=(Student)request.getAttribute("st");
%>   
<hr/>
<center><font size="3"><%=contentKor%>[<%=content %>] bottom </font></center>
Student객체 참조변수:<%= st%>