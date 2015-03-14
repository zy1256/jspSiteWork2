<%--

<%@ page 
	language="java"
	contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import="com.itwill.guest.GuestDao,com.itwill.guest.Guest,java.util.List"
%>

--%>
<%@page import="com.itwill.guest.Guest"%>
<%@page import="java.util.List"%>
<%@page import="com.itwill.guest.GuestDao"%>
<%@page 
	language="java"
	contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
%>
<%
	GuestDao guestDao=new GuestDao();	
	List<Guest> guestList=guestDao.selectAll();
%>    
<html>

<head>
<title>::: 방명록:::</title>
<link rel="stylesheet" type="text/css" href="../css/com.css">

</head>

<body>
	<table width=80% align=center border=0 cellspacing=0 cellpadding=0>
		<tr bgcolor=#000080 valign=middle>
			<td height=25 class=t1 align=center><b><font color=#FFFFFF>:::
						방명록 리스트 :::</font></b></td>
		</tr>

		<tr>
			<td height=30 align=right valign=bottom class=t1><a
				href=guest_insert_form.jsp>방명록 쓰기</a></td>
		</tr>
		<% for(Guest guest:guestList){%>
		<!-- start -->
		
		<tr>
			<td>
				<table width=100% align=center border=1 cellspacing=0
					bordercolordark=white bordercolorlight=#ADADAD bgcolor=#f5f5f5>
					<tr>
						<td>
							<table width=100% align=center border=0 cellspacing=0>
								<tr>
									<td bgcolor=#808000 align=center height=20 width=20% class=t1>
										<font color=#FFFFFF><%=guest.getGuest_no()%></font>
									</td>
									<td height=20 width=80% class=t1><b><font
											color=#0000FF>
											<a href='guest_detail.jsp?guest_no=<%=guest.getGuest_no()%>'>
												<%=guest.getGuest_title() %>
											</a></font></b></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<!-- end -->
		<% }%>
		

		<tr>
			<td height=20>
				<hr color=#000077>
			</td>
		</tr>



	</table>
</body>
</html>
