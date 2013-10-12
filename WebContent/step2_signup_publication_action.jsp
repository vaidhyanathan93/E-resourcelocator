<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date" errorPage="ErrorPage.jsp"%>


<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
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










String name=session.getAttribute("name").toString();
String emailid=session.getAttribute("emailid").toString();
String About,yearofstarting1;
About=request.getParameter("About").toString();
yearofstarting1=request.getParameter("yearofstarting").toString();


String s[]=new String[10];
s=yearofstarting1.split("/");
String yearofstarting=s[2]+"-"+s[0]+"-"+s[1];




Connection conn=null;	
ResultSet rs=null;
Statement st=null;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");

String myquery="INSERT INTO VAIDHYANATHAN.USER_PUBLICATION (USERID, ABOUT, STARTDATE, NEXTUPLOADKEY, NAME) VALUES (?,?,?,?,?)  ";

PreparedStatement pre=conn.prepareStatement(myquery);
String nuk="2";
pre.setString(1,emailid);
pre.setString(2, About);
pre.setString(3, yearofstarting);
pre.setString(4, nuk);
pre.setString(5, name);
pre.executeUpdate();
pre.close();
conn.close();



String url = response.encodeRedirectURL("home.jsp");
response.sendRedirect(url);










%>



</body>

</html>