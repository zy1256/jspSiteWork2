<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	ArrayList<String>  memberList=
			(ArrayList<String>)request.getAttribute("memberList");

%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>ȸ������Ʈ����[6-1.member_list.jsp]</h1>
<hr/>
<%
	for(int i=0;i<memberList.size();i++){
		out.println("<li>"+memberList.get(i)+"</li>");
	}
%>

</body>
</html>






