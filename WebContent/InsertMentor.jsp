<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*,java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
String s1=request.getParameter("SignUp_Name").toString();

String s2=request.getParameter("SignUp_EmailId").toString();

String s3=request.getParameter("SignUp_Password").toString();


String s4=request.getParameter("datepicke").toString();

String s5=request.getParameter("radio").toString();

String s6=request.getParameter("About").toString();

String s7=request.getParameter("field").toString();




Connection conn=null;
ResultSet rs=null;
Statement st=null;

Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");


String queryn="insert into VAIDHYANATHAN.mainlogintable(userid,password,profiletype) values (?,?,?)";
PreparedStatement pre1=conn.prepareStatement(queryn);
pre1.setString(1,s2);
pre1.setString(2,s3);
pre1.setString(3,"6");
pre1.executeUpdate();
System.out.println("two ");

String sn[]=new String[10];
sn=s4.split("/");
s4=sn[2]+"-"+sn[0]+"-"+sn[1];

String myquery="INSERT INTO VAIDHYANATHAN.USER_MENTOR ( USERID, GENDER , DOB , ABOUT , FIELD, PREFERENCES, NAME ) VALUES ('" +s2 + "','" +s5 + "','" +s4 + "','" +s6 + "','" +"E" + "','" +"E" + "','" +s1 + "') ";

Statement pre=conn.createStatement();


pre.executeUpdate(myquery);



	String url = response.encodeRedirectURL("index.jsp");
    response.sendRedirect(url);
}	
catch(Exception E)
{
	out.println("Email ID Already Exist");
}

%>
</body>
</html>