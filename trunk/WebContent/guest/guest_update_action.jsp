<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	/*
	1.�Ķ��Ÿ�ޱ�
	2.GuestDao.update()ȣ��
	3.guest_detail.jsp?guest_no=23 redireation
	*/
	response.sendRedirect("guest_datail.jps?guest_no=");
%>