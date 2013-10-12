<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.Connection" import="java.sql.PreparedStatement" import="java.sql.*" %>

    <% try {
    String title=(String)request.getParameter("document_title");
    String description=(String)request.getParameter("About");
    String category=(String)request.getParameter("category");
    
   // Connection conn=(Connection)session.getAttribute("con");
    
   Connection conn=null;
   Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
   conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","TGMC","b");
   
   // String forumid=(String)session.getAttribute("userid");
    //forumid+=(String)session.getAttribute("nextforumkey"); //Adding userid and nextforumkey
    
    String forumid="hehehshmskjhjksh";
    //String profiletype=(String)session.getAttribute("profiletype");
    String profiletype="4";
    
    Integer view=0,reply=0;
    PreparedStatement ps=conn.prepareStatement("INSERT INTO BARATH.FORUMS(FORUMID, PROFILETYPE,FORUMTITLE,FORUMDESCRIPTION,CATEGORY) VALUES(?,?,?,?,?)");
    
    ps.setString(1, forumid);
    ps.setString(2, profiletype);
    ps.setString(3, title);
    ps.setString(4, description);
   // ps.setInt(5, view);
    //ps.setInt(6, reply);
    ps.setString(5, category);
    
    if(ps.executeUpdate()==1)
    	out.write("Forum has been inserted");
    }
    
    catch(Exception e)
    {
    e.printStackTrace();	
    e.getMessage();
    
    out.write("Error");
    }
    
    
    %>