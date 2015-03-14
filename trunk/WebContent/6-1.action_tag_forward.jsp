<%@page import="com.itwill.student.Student"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	
	System.out.println("6-1.action_forward.jsp");
	request.setAttribute("id", "guard");
	request.setAttribute("name", "KIM");
	request.setAttribute("address", "SEOUL");
	request.setAttribute("student", new Student(3,"±è°æÈ£","ÀÚ¹Ù"));
%>
<jsp:forward page="6-1.action_tag_forwarded.jsp"/>
