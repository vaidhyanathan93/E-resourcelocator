<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp"%>

<%
    
    String s2=request.getParameter("password");
	if(s2=="hello")
		out.println("Right password");
	else
		out.println("Wrong password");
%>