<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date" errorPage="ErrorPage.jsp"%>


<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errorpage.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%










String name=session.getAttribute("name").toString();
String emailid=session.getAttribute("emailid").toString();
String radio,field,qualification,institutename,city,country,About,DOB1,experience;

radio=request.getParameter("radio").toString();
field=request.getParameter("field").toString();
qualification=request.getParameter("qualification").toString();
experience=request.getParameter("experience").toString();
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

String myquery="INSERT INTO VAIDHYANATHAN.USER_PROFESSOR (NAME, USERID, GENDER, DOB, FIELD, QUALIFICATION, EXPERIENCE, INSTITUTION, CITY, COUNTRY, ABOUT, NEXTFORUMKEY, NEXTUPLOADKEY, PREFERENCES) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)  ";

String nfk="1";
String nuk="0";
String pref="1";
PreparedStatement pre=conn.prepareStatement(myquery);
pre.setString(1, name);
pre.setString(2, emailid);
pre.setString(3, radio);
pre.setString(4, DOB);
pre.setString(5, field);
pre.setString(6, qualification);
pre.setString(7, experience);
pre.setString(8, institutename);
pre.setString(9, city);
pre.setString(10, country);
pre.setString(11, About);
pre.setString(12, nfk);
pre.setString(13, nuk);
pre.setString(14, pref);
pre.executeUpdate();


pre.close();
conn.close();




String url = response.encodeRedirectURL("home.jsp");
response.sendRedirect(url);







%>



</body>
</html>