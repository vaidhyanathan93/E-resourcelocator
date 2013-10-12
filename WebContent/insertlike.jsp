<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%  Connection conn=null;
    Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
    conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","TGMC","b");

 String bookid=(String)request.getParameter("bookid"),userid="dhrhdrhrhrdh",profiletype="4";    
    
    PreparedStatement ps=conn.prepareStatement("INSERT INTO VAIDHYANATHAN.BOOKS_LIKES(BOOKID,USERID,PROFILETYPE) VALUES(?,?,?)");
    ps.setString(1,bookid);
    ps.setString(2,userid);
    ps.setString(3,profiletype);    
    if(ps.executeUpdate()==1)
    	out.write("Done");
    
  
    %>