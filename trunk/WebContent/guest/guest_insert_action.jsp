<%@page import="com.itwill.guest.Guest"%>
<%@page import="com.itwill.guest.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//1.�Ķ��Ÿ����Ÿ�ٳ�
	//2.DAO �޽�� ȣ��
	//3.guest_list.jsp redirection
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("guest_insert_form.jsp");
	}
	request.setCharacterEncoding("euc-kr");
	String name = request.getParameter("g_name");
	String email = request.getParameter("g_email");
	String homepage = request.getParameter("g_homepage");
	String title = request.getParameter("g_title");
	String content = request.getParameter("g_content");
	
	GuestDao guestDao = new GuestDao();
	Guest inserGuest = new Guest(-1,name,null,email,homepage,title,content);
	boolean inserOK = guestDao.insert(inserGuest);
	if(inserOK){
		response.sendRedirect("guest_list_title.jsp");
	}else{
%>
	<script>
		alert('���Ͼ������ �ٽ��عٹٿ�!!!');
		location.href='guest_insert_form.jsp';
	</script>
<%
	}

%>
