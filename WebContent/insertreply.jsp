<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>


<%
String reply=(String)request.getParameter("text");

//out.write(reply);

Connection conn=null;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","TGMC","b");

String forumid="hdbfdnnfg",userid="lhnndhd";

PreparedStatement prestat=conn.prepareStatement("INSERT INTO BARATH.FORUM_REPLIES(FORUMID,USERID,PROFILETYPE,REPLY,TIME) VALUES(?,?,?,?,?)");

prestat.setString(1,forumid);
prestat.setString(2,userid);
prestat.setString(3,"2");
prestat.setString(4,reply);
prestat.setString(5, MyPackage.Utilities.JavaDateToDBDate(new java.util.Date()));

prestat.executeUpdate();
	//out.write("Reply has been submitted"); 

//catch(Exception e) { out.write("Error"); }



%>
