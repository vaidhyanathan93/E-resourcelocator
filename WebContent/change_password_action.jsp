<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" errorPage="ErrorPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String oldpass=request.getParameter("Old_Password");
String newpass=request.getParameter("Newpassword");
String emailid=session.getAttribute("emailid").toString();

Connection conn=null;
ResultSet rs=null;
Statement st=null;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
String checksql="SELECT * FROM VAIDHYANATHAN.MAINLOGINTABLE WHERE USERID=? AND PASSWORD=?" ;
String newsql="UPDATE VAIDHYANATHAN.MAINLOGINTABLE MAINLOGINTABLE SET PASSWORD =? WHERE MAINLOGINTABLE.USERID = ? ";
PreparedStatement precheck=conn.prepareStatement(checksql);
PreparedStatement precheck1=conn.prepareStatement(newsql);

precheck.setString(1, emailid);
precheck.setString(2, oldpass);
precheck1.setString(1, newpass);
precheck1.setString(2, emailid);
rs=precheck.executeQuery();
if(rs.next())
{
	precheck1.executeUpdate();
	precheck.close();
	precheck1.close();
	conn.close();
	String url = response.encodeRedirectURL("home.jsp");
    response.sendRedirect(url);
}
else{
	session.setAttribute("setting_error", "Wrong password");
	String url = response.encodeRedirectURL("setting.jsp");
    response.sendRedirect(url);
}
%>
</body>
</html>