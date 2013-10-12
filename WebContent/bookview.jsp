<%@ page session="true" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" errorPage="ErrorPage.jsp"%>
    <%@ page import="java.text.DateFormat" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.text.*" %>
    <%@ include file="common-header-logout.jsp" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Profile  </title>

<link href="css/profile.css" rel="stylesheet"/>
<link href="css/demo_page.css" rel="stylesheet" type="text/css" />
<link href="css/demo_table.css" rel="stylesheet" type="text/css" />       
<link href="css/demo_table_jui.css" rel="stylesheet" type="text/css" />
<link href="css/jquery-ui-1.8.24.custom.css" rel="stylesheet" type="text/css" media="all" />
<!-- Scripts -->

<link href="css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet">
	<script src="js/jquery-1.8.3.js"></script>
	
	<script src="js/jquery-ui-1.9.2.custom.js"></script>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery.dataTables.js" type="text/javascript"></script>
 <script type="text/javascript">
 $(document).ready(function(){
		$('#docs').dataTable({
			"bJQueryUI": true,
			"sPaginationType": "full_numbers",

		});
	});
 </script>
</head>




<body>

<div id="Body">
<div id="booby">
<%!String name,experience,gender,dob,field,institution,qulaification,city,country,about,emailid;  %>
 
 
 
 
 
 
 
 
 
 

 












<div id="DocumentsList">

<div id="Heading"> 
DOCUMENTS
</div> <br/>





<table id="docs" class="display">
    <thead>
        <tr>
            <th>Documents</th>
            <th>Ratings</th>
            <th>Uploaded On</th>
        </tr>
    </thead>
        <tbody>
<%! String docname,likes,dislike,time,url;
Connection conn;	
Timestamp timestamp;
		double rating,l,d;%>
<%
ResultSet docrs;
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
String docsql="SELECT * FROM VAIDHYANATHAN.BOOKS AS BOOKS ORDER BY BOOKS.TIMESTAMP DESC" ;
PreparedStatement doc=conn.prepareStatement(docsql);


docrs=doc.executeQuery();


while(docrs.next())
{  
	docname=docrs.getString("DOCNAME").toString();
	likes=docrs.getString("LIKES").toString();
	dislike=docrs.getString("DISLIKE").toString();
	timestamp=docrs.getTimestamp("timestamp");
	SimpleDateFormat dateFormat = new SimpleDateFormat(" dd-MM-yyyy ");
	
	time = dateFormat.format(timestamp);	

	
	l=Double.parseDouble(likes);
	d=Double.parseDouble(dislike);
	rating=(l-d)/(l+d);
	rating = Math.round( rating * 10.0 ) / 10.0;
	if(l==0&&d==0){rating=0.0;}
	url="bookdesctiption.jsp?src="+docrs.getString("DOCID").toString();
	%>




        <tr>
            <td><a href=<%=url %>><%=docname %></a></td>
            <td><%=rating %></td>
            <td><%=time %></td>
        </tr>
         <%

	
}
conn.close();


%>
    </tbody>
</table>

        

</div>










<br/>
 <!--End of DocumentsList--> 










</div>
</div>
</div>
</body>
</html>













