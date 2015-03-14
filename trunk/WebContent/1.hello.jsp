<%@ page language="java" 
		 contentType="text/html; charset=EUC-KR"
    	 pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
for( int i=0;i<1000;i++){
%>
<h1>Hello JSP!!!안녕[change1]</h1>
<hr/>
<!-- HTML 주석 클라이언트에 뿌려집니다 -->
<%-- JSP  주석 클라이언트에 안뿌려집니다 --%>
<%-- JSP 주석 JAVA SOURCE  FILE에 포함되지않습니다. --%>
<%
}
%>
</body>
</html>