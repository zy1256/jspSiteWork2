<%@page import="com.itwill.guest.Guest"%>
<%@page import="com.itwill.guest.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//1.파라메타데이타바끼
	//2.DAO 메쏘드 호출
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
		alert('방명록쓰기실패 다시해바바요!!!');
		location.href='guest_insert_form.jsp';
	</script>
<%
	}

%>
