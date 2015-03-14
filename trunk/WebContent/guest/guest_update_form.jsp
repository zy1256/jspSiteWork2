<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>::: 방명록:::</title>

<link rel="stylesheet" type="text/css" href="../css/com.css">

<SCRIPT language="JavaScript">
	function loading(form) {
		form.g_name.focus();
	}
	
	function form_submit(form){
		
		//null
		if(form.g_name.value==""){
			alert('이름');
			form.g_name.focus();
			return;
		}
		if(form.g_homepage.value==""){
			alert('홈피');
			form.g_homepage.focus();
			return;
		}
		if(form.g_title.value==""){
			alert('제목');
			form.g_title.focus();
			return;
		}
		if(form.g_email.value==""){
			alert('이멜');
			form.g_email.focus();
			return;
		}
		if(form.g_content.value==""){
			alert('내용');
			form.g_content.focus();
			return;
		}
		//sumbit
		form.action='guest_insert_action.jsp';
		form.method='POST';
		form.submit();
	}
</SCRIPT>

</head>


<body onLoad="javascript:loading(document.guest);">

	<form name="guest" method="POST"
		action="javascript:form_submit(document.guest);">
		<input type="hidden" name="guest_no" value="<%=%>">
		<table width="80%" align="center" border="0" cellspacing="0"
			cellpadding="0">
			<tr bgcolor="#556b2f" valign="middle">
				<td height="25" class="t1" align="center"><b><font
						color="#FFFFFF">::: 방명록 쓰기 :::</font></b></td>
			</tr>

			<tr>
				<td height="20">&nbsp;</td>
			</tr>


			<tr>
				<td>
					<table width="100%" align="center" border=1 cellspacing=0
						bordercolordark="white" bordercolorlight="#ADADAD">
						<tr>
							<td>
								<table width="100%" align="center" border="0" cellspacing="0">
									<tr>
										<td bgcolor="#808000" align="center" height="20" width="20%"
											class="t1"><font color="#FFFFFF">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</font>
										</td>
										<td height="20" width="80%" class="t1">&nbsp;<input
											type="text" name="g_name" maxlength="24" size="24"
											class="TXTFLD">
										</td>
									</tr>
								</table>
							</td>
						</tr>

						<tr>
							<td>
								<table width="100%" align="center" border="0" cellspacing="0">
									<tr>
										<td bgcolor="#808000" align="center" height="20" width="20%"
											class="t1"><font color="#FFFFFF">이 메 일</font></td>
										<td align="left" height="20" width="30%" class="t1">
											&nbsp;<input type="text" name="g_email" maxlength="27"
											size="27" class="TXTFLD">
										</td>
										<td bgcolor="#808000" align="center" height="20" width="20%"
											class="t1"><font color="#FFFFFF">홈페이지</font></td>
										<td align="left" height="20" width="30%" class="t1">
											&nbsp;<input type="text" name="g_homepage" value="http://"
											maxlength="27" size="27" class="TXTFLD">
										</td>
									</tr>
								</table>
							</td>
						</tr>

						<tr>
							<td>
								<table width="100%" align="center" border="0" cellspacing="0">
									<tr>
										<td bgcolor="#808000" align="center" height="20" width="20%"
											class="t1"><font color="#FFFFFF">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</font>
										</td>
										<td height="20" width="80%" class="t1">&nbsp;<input
											type="text" name="g_title" maxlength="80" size="80"
											class="TXTFLD">
										</td>
									</tr>
								</table>
							</td>
						</tr>


						<tr>
							<td>
								<table width="100%" align="center" border="0" cellspacing="10">
									<tr>
										<td height="50" width="1000%" class="t1"><textarea
												cols="98" name="g_content" rows="10" wrap="hard"
												class="TXTFLD"></textarea></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>

			<tr>
				<td height="50" align="center"><input type="submit"
					value="올라가거라..." class="TXTFLD">&nbsp;<input type="reset"
					value="다시 작성할껴..." class="TXTFLD"></td>
			</tr>
		</table>
	</form>

</body>
</html>