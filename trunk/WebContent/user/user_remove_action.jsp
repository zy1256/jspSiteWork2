<%@page import="com.itwill.user.UserManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="loginCheck.jspf"%>
<%
	String userId = request.getParameter("userId");
	if (request.getMethod().equalsIgnoreCase("GET") || userId == null) {
		response.sendRedirect("user_list.jsp");
		return;
	}
	try {
		
		int row=UserManager.getInstance().remove(userId);
		if(userId.equals(sUserId)){
			session.invalidate();
			response.sendRedirect("user_login.jsp");
		}else{
			response.sendRedirect("user_list.jsp");
		}
		
	} catch (Exception e) {
		response.sendRedirect("../error/error.jsp");
	}
%>
