<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Password Recovery</title>
 	
<link href="css/custom.css" rel="stylesheet" type="text/css" />

</head>

<body>

<div id="rlsbody">

<br/>

 <h3 align='justify' style="padding-left:30px;"> Password Recovery </h3>
 
 <br/> <br/>
<h4 align="justify" style="padding-left:80px;"> A password recovery link has been sent to 
<%
String s1= request.getParameter("forgotmailid").toString();
out.print(s1);
%>
</h4>  <br/> <br/>
  Note: For security reasons, the sent link will expire after 24 hours.
  If you haven't reset the password within 24 hours, you have to opt for a new password reset link
 


  
</div>

</body>
</html>
