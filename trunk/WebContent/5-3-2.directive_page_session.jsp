<%@page contentType="text/html; charset=EUC-KR" session="false"%>
<%
	HttpSession mySession = request.getSession();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>page ���þ� [contentType]</h1>
	<h2>����:&lt;%@page contentType="text/html;charset=euc-kr"&gt;</h2>
	<hr />
	<ol>
		<li>���Ǿ��̵�:<%=mySession.getId()%></li>
	</ol>
</body>
</html>