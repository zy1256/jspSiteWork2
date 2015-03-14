<%@page import="com.itwill.student.Student"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("euc-kr");
/*
	template.jsp?content=news
	template.jsp?content=main
*/
String content=request.getParameter("content");
if(content==null){
	content="main";
}
String contentPage="6-2."+content+"_content.jsp";
String contentKor = "";
if(content.equals("main")){
	contentKor = "메인";
}else if(content.equals("news")){
	contentKor="뉴스";
}

Student st=new Student();
st.setName("김경호");
st.setNo(1);
request.setAttribute("st", st);

%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="6-2.top.jsp">
		<jsp:param value="<%=content%>" name="content"/>
		<jsp:param value="<%=contentKor%>" name="contentKor"/>
	</jsp:include>
	<jsp:include page="<%=contentPage %>"></jsp:include>
	<jsp:include page="6-2.bottom.jsp">
		<jsp:param value="<%=contentKor%>" name="contentKor"/>
		<jsp:param value="<%=content%>" name="content"/>
	</jsp:include>
</body>
</html>