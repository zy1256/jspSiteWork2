<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="loginCheck.jspf" %>
<%
	session.invalidate();
	response.sendRedirect("user_login.jsp");
	return;
%>