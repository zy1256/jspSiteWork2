<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<TITLE>방가워요 JSP</TITLE>
</HEAD>
<BODY>
	<center>
		<H2>JSP 잘났어 정말 별꼴이야!!!!!!!!!</H2>

		<img src='images/tomcat.gif'>
		<center>
			<H2>JSP 구구단</H2>
		</center>
		<table border=1 width=600 bgcolor=#CCFF33 bordercolordark=#FF6600
			cellspacing=0>
			<%for(int i=0;i<8;i++){ %>
			<tr>
				<%for(int j=0;j<9;j++){ %>
					<td align=center>
					<% out.print(i+2);%>
					*
					<% out.print(j+1);%>
					=
					<% out.print((i+2)*(j+1));%>
					</td>
				<%}%>
			</tr>
			<% } %>
		</table>
		<br />
	</center>
<br/>
<br/>
<br/>
<br/>
<br/>
<%@include file="5-6.directive_included_file.jspf" %>

</BODY>
</HTML>











