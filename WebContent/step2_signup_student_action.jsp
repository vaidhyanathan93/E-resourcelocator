<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date" errorPage="ErrorPage.jsp"%>


<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=session.getAttribute("name").toString();
String emailid=session.getAttribute("emailid").toString();
String radio,field,qualification,institutename,city,country,About,DOB1;

radio=request.getParameter("radio").toString();
field=request.getParameter("field").toString();
qualification=request.getParameter("qualification").toString();
institutename=request.getParameter("institutename").toString();
city=request.getParameter("city").toString();
country=request.getParameter("country").toString();
About=request.getParameter("About").toString();
DOB1=request.getParameter("datepicke").toString();


String s[]=new String[10];
s=DOB1.split("/");
String DOB=s[2]+"-"+s[0]+"-"+s[1];




Connection conn=null;	
ResultSet rs=null;
Statement st=null;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");

String myquery="INSERT INTO VAIDHYANATHAN.USER_STUDENT (NAME, USERID, GENDER, DOB, FIELD, QUALIFICATION, INSTITUTION, CITY, COUNTRY, ABOUT, NEXTFORUMKEY, PREFERENCES) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)  ";

String ss="1";
String sss="0";
PreparedStatement pre=conn.prepareStatement(myquery);
pre.setString(1, name);
pre.setString(2, emailid);
pre.setString(3, radio);
pre.setString(4, DOB);
pre.setString(5, field);
pre.setString(6, qualification);
pre.setString(7, institutename);
pre.setString(8, city);
pre.setString(9, country);
pre.setString(10, About);
pre.setString(11, sss);
pre.setString(12, ss);

pre.executeUpdate();
pre.close();
conn.close();






String url = response.encodeRedirectURL("home.jsp");
response.sendRedirect(url);







%>



</body>
</html>