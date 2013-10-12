<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*,java.io.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<div class="module_content" id="Comments">
<%
String path= request.getQueryString();
String s[]=new String[2];
s=path.split("=");
String DOCID=s[1];




Connection Conn=null, Conn1=null, Conn2=null;
Statement Stmt=null,Stmt1=null,Stmt2=null;
ResultSet rs=null,rs1=null,rs2=null;

     try
     {
	 Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();	 
	 Conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");	 	 
	 String query="Select USERID,DOCUMENT_COMMENT from VAIDHYANATHAN.DOCUMENTS_COMMENT where DOCID='"+DOCID+"'";
	 //
	 	 Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();	 
		 Conn1=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");	 	  
		 Stmt1=Conn1.createStatement();
		 
		 Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();	 
		 Conn2=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");	 	  
		 Stmt2=Conn2.createStatement();
		 //
	 Stmt=Conn.createStatement();
	 rs=Stmt.executeQuery(query); 
	 while(rs.next())
	 {
		 String tablename="";
		
	
		 String query1="Select PROFILETYPE from VAIDHYANATHAN.mainlogintable where userid='"+rs.getString("USERID")+"'";
		
		
		 rs1=Stmt1.executeQuery(query1); 
		 if(rs1.next())
		 {
			 String h=rs1.getString("PROFILETYPE");
			
			 
		if(h.equals("6"))	
		 {
			 tablename="MENTOR";
		 }
		 else if(h.equals("2"))
		 {
			 tablename="PUBLICATION";
		 }
		 else if(h.equals("3"))
		 {
			 tablename="PROFESSOR";
		 }
		 else if(h.equals("4"))
		 {
			 tablename="TOPPER";
		 }
		 else
		 {
			 tablename="STUDENT";
		 }
		 }
		
	
		
		String query2="Select NAME from VAIDHYANATHAN.user_"+tablename+" where userid='"+rs.getString("USERID")+"'";
		
		
		 rs2=Stmt2.executeQuery(query2);  
		 if(rs2.next())
		 {
			 String Name=rs2.getString("NAME");
			 
		 }
		 %>
		
			<div class="message">
			<p><strong><%= rs2.getString("name") %></strong></p>
			<p><%= rs.getString("DOCUMENT_COMMENT") %></p>
			</div>
			
					
			 			
			 
		
		<%  
		
		 
	 }
	 
	 
		
      }
	 

	
	catch(Exception e)
	{
		System.out.println("Errorda");
	}
%>

</body>
</html>