<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.sql.*,java.io.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
			

			<table class="tablesorter" cellspacing="0"> 
			<thead> 
				<tr> 
   					<th></th> 
    				<th>Document Name</th> 
    				<th>Category</th>     			
    				<th>Action</th> 
				</tr> 
			</thead> 
			<tbody> 
<%
String path= request.getQueryString();
String s[]=new String[2];
s=path.split("=");
String DOCID=s[1];



Connection Conn=null, Conn1=null, Conn2=null;
Statement Stmt=null,Stmt1=null, Stmt2=null;
ResultSet rs1=null, rs2=null;

     try
     {
	 Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();	 
	 
	 
     Conn2=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
	 
	 
	 
	 
	 
	 String queryn="select * from VAIDHYANATHAN.Documents_Comment where DOCID='"+DOCID+"'";
	 
	 Stmt2=Conn2.createStatement();
	 rs2= Stmt2.executeQuery(queryn);
	 if(rs2.next())
	 {
		
		queryn="delete from VAIDHYANATHAN.Documents_Comment where DOCID='"+DOCID+"'";
		Stmt2=Conn2.createStatement();
		Stmt2.executeUpdate(queryn);
		
	 }
	 Conn2.commit();
	 
	 
	 
	 Conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
	 
	 
	 
	 
	 
	 String query="delete from VAIDHYANATHAN.Documents where DOCID='"+DOCID+"'";
	 
	 Stmt=Conn.createStatement();
	 Stmt.executeUpdate(query);

	 Conn.commit();
	 
	 
	
	 
	//
	 Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();	 
	 Conn1=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
	 
	 
	 String query1="select DOCNAME,CATEGORY,DOCID from VAIDHYANATHAN.DOCUMENTS";
	 
	 Stmt1=Conn1.createStatement();
	 
	 rs1=Stmt1.executeQuery(query1);
	 
	 while(rs1.next())
	 {
		 %>
		 <tr> 
			<td><input type="radio" name="DocsList" value="<%=rs1.getString("DOCID").toString()%>" onclick="aja1(this.value)"></td> 
			<td><% out.print(rs1.getString("DOCNAME")); %></td> 
			<td><% out.print(rs1.getString("CATEGORY")); %></td>
			 			
			<td><input type="image" value="<%=rs1.getString("DOCID").toString()%>" onclick="Cnfm_Delete1(this.value)" src="images/icn_trash.png" title="Trash"></td> 
		</tr>
<%  
	 }
	 
	
	}
	catch(Exception e)
	{
		System.out.println("Error");
	}

%>
</tbody>
</table>

</body>
</html>