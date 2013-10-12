<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="MyPackage.Utilities"%>

    <%
    
    Connection conn=null;
    Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
    conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","TGMC","b");

    PreparedStatement ps=conn.prepareStatement("SELECT REPLY,TIME FROM BARATH.FORUM_REPLIES");
    ResultSet rs= ps.executeQuery();
    
    while(rs.next())
    {
    	
    	%>
    	
<div class="oneanswer">

<div class="imgname">

<img src="images/profle.jpg" width="80" height="80" /> <br/>

</div> <!--end of imgname-->

<div class="newanswer"> 

<a href="profilelink"><span class="profilename"> This is B </span> </a>

<span class="forum_comment">

<%= rs.getString("REPLY") %>

</span>
<br/> <br/>
<span class="time"> <%= Utilities.DBDateToJavaDate(rs.getString("TIME")) %> </span>

</div> <!--end of answer-->

</div> <!-- end of one answer-->
    	
  
  <% 	
    }
    
  %>
   
  
  