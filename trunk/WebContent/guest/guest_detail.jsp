<%@page import="com.itwill.guest.Guest"%>
<%@page import="com.itwill.guest.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//��ûURL==>
	//http://192.168.2.1/jspSite/guest/guest_detail.jsp?guest_no=4
	String guest_noStr=request.getParameter("guest_no");
	if(guest_noStr==null){
		out.println("<script>");
		out.println("alert('���������ʴ� �Խù��Դϴ�.');");
		out.println("location.href='guest_list_title.jsp';");
		out.println("</script>");
		return;
	}
	
	GuestDao guestDao=new GuestDao();
	Guest guest=
			guestDao.selectByGuestNo(Integer.parseInt(guest_noStr));
	
%>    
<html>

<head>
<title>::: ����:::</title>
<link rel="stylesheet" type="text/css" href="../css/com.css">

</head>

<body>
<table width=80% align=center border=0 cellspacing=0 cellpadding=0>
	<tr bgcolor=#000080 valign=middle>
		<td height=25 class=t1 align=center><b><font color=#FFFFFF>:::
		���� �󼼺��� :::</font></b></td>
	</tr>

	

	<tr>
		<td>
		<table width=100% align=center border=1 cellspacing=0
			bordercolordark=white bordercolorlight=#ADADAD bgcolor=#f5f5f5>
			<tr>
				<td>
				<table width=100% align=center border=0 cellspacing=0>
					<tr>
						<td bgcolor=#808000 align=center height=20 width=20% class=t1>
						<font color=#FFFFFF>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</font></td>
						<td height=20 width=80% class=t1><b><font color=#0000FF><%=guest.getGuest_title() %></font></b></td>
					</tr>
				</table>
				</td>
			</tr>

			<tr>
				<td>
				<table width=100% align=center border=0 cellspacing=0>
					<tr>
						<td bgcolor=#808000 align=center height=20 width=20% class=t1><font
							color=#FFFFFF>�� �� ��</font></td>
						<td align=center height=20 width=30% class=t1><%=guest.getGuest_name() %></td>
						<td bgcolor=#808000 align=center height=20 width=20% class=t1><font
							color=#FFFFFF>�� �� ��</font></td>
						<td align=center height=20 width=30% class=t1><%=guest.getGuest_date() %></td>
					</tr>
				</table>
				</td>
			</tr>

			<tr>
				<td>
				<table width=100% align=center border=0 cellspacing=0>
					<tr>
						<td bgcolor=#808000 align=center height=20 width=20% class=t1><font
							color=#FFFFFF>�� �� ��</font></td>
						<td align=center height=20 width=30% class=t1><a
							href=mailto:<%=guest.getGuest_email()%>><%=guest.getGuest_email() %></a></td>
						<td bgcolor=#808000 align=center height=20 width=20% class=t1><font
							color=#FFFFFF>Ȩ������</font></td>
						<td align=center height=20 width=30% class=t1><a href=<%=guest.getGuest_homepage()%>><%=guest.getGuest_homepage() %></a></td>
					</tr>
				</table>
				</td>
			</tr>

			<tr>
				<td>
				<table width=100% align=center border=0 cellspacing=10>
					<tr>
						<td height=50 width=1000% class=t1><%=guest.getGuest_content()%></td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		</td>
	</tr>

	<tr>
		<td height=20>
		<hr color=#000077>
		</td>
	</tr>
	<tr>
		<td height=20>
		<a href='guest_list_title.jsp'>1.Ÿ��Ʋ����Ʈ����</a>
		&nbsp;&nbsp;
		<a href='guest_delete_action.jsp?guest_no=<%=guest.getGuest_no()%>'>2.����</a>
		&nbsp;&nbsp;
		<a href='guest_update_form.jsp?guest_no=<%=guest.getGuest_no()%>'>3.����</a>
		
	</tr>
	<tr>
		
	</tr>
		

	

</table>
</body>
</html>
