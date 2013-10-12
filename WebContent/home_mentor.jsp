<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp"%>
    <%@ page import="java.text.DateFormat" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.text.*" %>
    <%@ page import="java.sql.*" %>
    <%@ include file="common-header-logout.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Home</title>


</head>

<body  bgcolor="#F8F8F8" background="images/bg.png">

  <div id="dyna" > 
    <div id="dyna_body">
      <div id="body_mnu">
        <ul id="mnu_top" style="padding-left:2px;">
          <li class="mnutop" ><a href="home_professor.jsp" class="tabmnu" > Recent&nbsp;Uploads</a></li>
          <li class="mnutop"><a href="home_professor.jsp?sort=ranking" class="tabmnu">Popular&nbsp;Documents</a></li>
          <li class="mnutop"><a href="fileupload.jsp" class="tabmnu">Upload A Document</a></li>
        </ul>
      </div><!--end of body_mnu-->
      
      
      <div id="doc_display">
      
      
      
             <tbody>

<%! String docsql,docname,likes,dislike,time,url,emailid,desc;
int i=0;		
Timestamp timestamp;
		double rating,l,d;
		Connection conn=null;%>
<%
ResultSet docrs;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
if(request.getQueryString()==null){
 docsql="SELECT * FROM VAIDHYANATHAN.DOCUMENTS AS DOCUMENTS ORDER BY DOCUMENTS.TIMESTAMP DESC" ;
}else
{docsql="SELECT * FROM VAIDHYANATHAN.DOCUMENTS AS DOCUMENTS ORDER BY DOCUMENTS.LIKES DESC" ;
	}
PreparedStatement doc=conn.prepareStatement(docsql);
emailid=session.getAttribute("emailid").toString();


docrs=doc.executeQuery();
while(docrs.next())
{  i++;
	docname=docrs.getString("DOCNAME").toString();
	desc=docrs.getString("DOCDESCRIPTION").toString();
		url="bookdesctiption.jsp?src=" + docrs.getString("DOCID").toString();
	%>


<!-- start of each doc -->
      <div class="doc">
      
      
    
         
          <br/> <br/> <br/>
          
          
          <span style="font-size:x-large; color:#333366;" title="" class="tt"><a href="bookdescription.jsp?src=<%=url %>>"><%=docname %> </a></span><br/>
          <br/>
          <span class="doc_nme" style="font-size:15px;"><%=desc %>
          
          <br/>
          
          
   
          
         <!--  end of each doc -->
       </div> <!-- end of doc-->
   

      
         <%

	if(i>=6)
	{i=0;
		break;
	}
}docrs.close();
conn.close();


%>
      
             
      </div> 
      <!-- end of doc_display-->
      
     </div><!--End of dyna body -->
   </div> <!-- End of dyna-->
   
   
   
    <div id="dyna_det" >
      <div id="SideTable">
        <div id="SideTableHead"> Popular Uploads </div>
       
       		
<%

Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");

 docsql="SELECT * FROM VAIDHYANATHAN.BOOKS AS BOOKS ORDER BY BOOKS.TIMESTAMP DESC" ;

doc=conn.prepareStatement(docsql);
emailid=session.getAttribute("emailid").toString();


docrs=doc.executeQuery();
while(docrs.next())
{  i++;
	docname=docrs.getString("DOCNAME").toString();
	
		url="bookdescription.jsp?src=" + docrs.getString("DOCID").toString();
	%>

 <div id="SideTableElement" style="word-wrap: break-word; "> <a href="<%=url %>"><%=docname %></a> </div>
          
         
     
          
          
   
          
         <!--  end of each doc -->
       </div> <!-- end of doc-->
   

      
         <%

	if(i>=6)
	{i=0;
		break;
	}
}docrs.close();
conn.close();


%>
      
       
       
       
       
       
       
       
       
       
       
       
       
      </div>
      
      
    </div>
</div>
</div>

</body>
</html>
