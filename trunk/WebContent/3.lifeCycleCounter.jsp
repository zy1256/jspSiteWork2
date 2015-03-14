<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
int count=0;
%>
<%!
	public void jspInit(){
		System.out.println("0.jspInit()");
	}
%>
<%!
public void jspDestroy(){
		System.out.println("2.jspDestroy()");
	}
%>

<%
	System.out.println("1.jspService()");	
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html> 
			<body bgcolor=#40e0d0 style=font-size:9pt;line-height:140%;> 
			<center>			
			 현재까지의 접속자수
			<font color=#0000FF>
				<%
				count++;
				out.println(count);
				%>
			</font>
			 명입니다 
			</center> 
			</body> 
	</html> 

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
