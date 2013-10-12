<%@page import="javax.jms.Session"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" errorPage="ErrorPage.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=request.getParameter("SignUp_Name").toString();

String s2=request.getParameter("SignUp_EmailId").toString();

String s3=request.getParameter("SignUp_Password").toString();

String sk=request.getParameter("Profession").toString();

int s4=Integer.parseInt(sk);



if((s1.length()>25)||(s2.length()>50)||(s3.length()>20)||(s4<0)||(s4>6))
{
int jj=5/0;
}



Connection conn=null;
ResultSet rs=null;
Statement st=null;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
String checksql="SELECT * FROM VAIDHYANATHAN.MAINLOGINTABLE WHERE USERID='" +s2 + "'";

PreparedStatement precheck=conn.prepareStatement(checksql);
//precheck.setString(1, s2);
rs=precheck.executeQuery();
if(rs.next())
{
	
	conn.close();
	session.setAttribute("index_signup_error", "EmailID already Exists");
	String url = response.encodeRedirectURL("index.jsp");
    response.sendRedirect(url);
	
	}






String myquery="INSERT INTO VAIDHYANATHAN.MAINLOGINTABLE (USERID, PASSWORD, PROFILETYPE, PROFILEPIC) VALUES (?,?,?,?)  ";


PreparedStatement pre=conn.prepareStatement(myquery);
pre.setString(1, s2);
pre.setString(2, s3);
pre.setInt(3, s4);
pre.setString(4, "default.jpg");
pre.executeUpdate();

conn.close();

session.setAttribute("name", s1);
session.setAttribute("emailid", s2);
session.setAttribute("profession", s4);


if(s4==2)
{
	String url = response.encodeRedirectURL("step_2_publication.jsp");
    response.sendRedirect(url);
	}

if(s4==3)
{
	String url = response.encodeRedirectURL("step_2_professor.jsp");
    response.sendRedirect(url);
	}if(s4==5)
	{
		String url = response.encodeRedirectURL("step_2_student.jsp");
	    response.sendRedirect(url);
		}








%>
</body>
</html>