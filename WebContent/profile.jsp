<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String url=null;
String profes=session.getAttribute("profession").toString();
int i=Integer.parseInt(profes);

if(i==5){url = response.encodeRedirectURL("profile_student.jsp");
response.sendRedirect(url);	}
if(i==4)
{
url=response.encodeRedirectURL("profile_topper.jsp");
	response.sendRedirect(url);
	}
if(i==3)
{
	url=response.encodeRedirectURL("profile_professor.jsp");
	response.sendRedirect(url);
	}
if(i==2)
{
	url=response.encodeRedirectURL("profile_publication.jsp");
	response.sendRedirect(url);
	}
if(i==1)
{
	url=response.encodeRedirectURL("profile_admin.jsp");
	response.sendRedirect(url);
	}
if(i==6)
{
	url=response.encodeRedirectURL("profile_mentor.jsp");
	response.sendRedirect(url);
	}


%>
</body>
</html>