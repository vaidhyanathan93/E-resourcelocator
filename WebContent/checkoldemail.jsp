<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp"%>
    
 <%
 
 String email=(String)request.getParameter("emailID");
 

 if(email.equals("mentor12@gmail.com"))
	 out.print("EMail ID exists");
 else
	 out.print("EMail ID doesnot exist"); 
 
 %>   
    
