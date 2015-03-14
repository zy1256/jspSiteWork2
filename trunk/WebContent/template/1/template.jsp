<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	
	String contentPage=request.getParameter("page");
	if(contentPage==null){
		contentPage="newitem";	
	}
	contentPage = contentPage+".jsp";
%>
<html>
<head>
<title>Template Test</title>
</head>
<body>
<table style="margin: 0 auto" width="700" border="1" color="gray" align="center">
	<tr>
		<td height="43" colspan=3 align=left>
			<!-- top-->
			<jsp:include page="top.jsp"/>
		</td>
	</tr>
	<tr>
		<td width="15%" align=right valign=top><br>
			<!--left-->
			<jsp:include page="left.jsp"/>
		</td>
		<td colspan=2 align=center>
			<!--content-->
			<jsp:include page="<%=contentPage%>"/>
		</td>
	</tr>
	<tr>
		<td width="100%" height="40" colspan="3">
			<!-- bottom -->
			<jsp:include page="bottom.jsp"/>
		</td>
	</tr>
</table>
</body>
</html>
