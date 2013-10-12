<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" errorPage="ErrorPage.jsp"%>
     <%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String emailid=request.getParameter("SignIn_EmailID").toString();
String pass=request.getParameter("SignIn_Password").toString();
Connection conn=null;
ResultSet rs=null;
Statement st=null;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
String checksql="SELECT * FROM VAIDHYANATHAN.MAINLOGINTABLE WHERE USERID=? AND PASSWORD=?" ;

PreparedStatement precheck=conn.prepareStatement(checksql);
precheck.setString(1, emailid);
precheck.setString(2, pass);
rs=precheck.executeQuery();


if(rs.next())
{
	String s1=rs.getString("USERID");
	String  s2=rs.getString("PROFILETYPE");
	String s3=rs.getString("PROFILEPIC");
	session.setAttribute("emailid", s1);
	session.setAttribute("profession", s2);
	session.setAttribute("profilepic", s3);
conn.close();	
	String url = response.encodeRedirectURL("home.jsp");
    response.sendRedirect(url);
	}

else{
	session.setAttribute("index_signin_error", "EmailID already Exists");
	String url = response.encodeRedirectURL("index.jsp");
    response.sendRedirect(url);
    conn.close();
}
%>
</body>
</html>