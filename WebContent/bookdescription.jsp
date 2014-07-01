<%@ page session="true" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
    <%@ page import="java.text.DateFormat" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.text.*" %>
    <%@ include file="common-header-logout.jsp" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="css/forum.css" rel="stylesheet" type="text/css" />

<link href="css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet">
	<script src="js/jquery-1.8.3.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.js"></script>
	<script src="js/myscript.js"></script>

<style>
.list_forum{
display:inline;
}




</style>

<script type="text/javascript"> 

function createajaxobj()
{
	return new XMLHttpRequest();
	
	}

function insertlike()
{
	var xmlhttp=createajaxobj();
	alert("obj");
	parameter="insertlike.jsp?bookid=";
	parameter+="hehhshshs";
	xmlhttp.open("GET",paramater,true);
	xmlhtp.send();
	
	xmlhttp.onreadystatechange=function() {
	
		if(xmlhttp.status==200 && xmlhttp.readyState==4) {
			alert(xmlhttp.responseText); like();
		}
	}
	
	}

function like()
{
	var lb=document.getElementById('likeb');
	var db=document.getElementById('dislikeb');
	lb.setAttribute('value','Liked');
	db.setAttribute('style','visibility:hidden;');
	lb.setAttribute('onclick','liked();');
}

function liked()
{
	var lb=document.getElementById('likeb');
	var db=document.getElementById('dislikeb');
	lb.setAttribute('value','Like');
	db.removeAttribute('style');
	lb.setAttribute('onclick','like();');
}

function dislike()
{
	var lb=document.getElementById('likeb');
	var db=document.getElementById('dislikeb');
	db.setAttribute('value','Disliked');
	db.setAttribute('style','margin-left:-50px; !important');
	lb.setAttribute('style','visibility:hidden;');
	db.setAttribute('onclick','disliked();');
}

function disliked()
{
	var lb=document.getElementById('likeb');
	var db=document.getElementById('dislikeb');
	db.setAttribute('value','Dislike');
	lb.removeAttribute('style');
	db.removeAttribute('style');
	db.setAttribute('onclick','dislike();');
}

</script>

</head>

<body bgcolor="#F5F5F5">

<div id="forum_main">

<div id="forum_time"><img src="images/fileicon.png" alt="file" /> <span class="forumdate">Yesterday</span>, <span class="">2.00 PM</span></div>

<div id="forum_fullcontent">
  <div id="forum_content_display">
  
  
  <%! String docid,name,about;%>
  <% docid=request.getParameter("src").toString();
  




Connection conn=null;
ResultSet rs=null;
ResultSet rs1=null;
Statement st=null;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
String getsql="SELECT * FROM VAIDHYANATHAN.BOOKS WHERE DOCID=?" ;
PreparedStatement precheck=conn.prepareStatement(getsql);



precheck.setString(1, docid);

rs=precheck.executeQuery();

if(rs.next())
{  
	name=rs.getString("DOCNAME").toString();
	
	about=rs.getString("DOCDESCRIPTION").toString();

session.setAttribute("name", name);
	rs.close();
	
	conn.close();

  
  
  
  
  
  
}
  
  
  
  
  
  
  
  %>
  
  
  
  
    <p><b><%=name %>    </b> </p>
    <p style="font-size:16px;">
    
    
    
    <%=about %>
    
    
    
    </p> </div>
  
  <div id="profile_display" class="forum_body_indescription">
    <p>
    <span class="" style="padding-left:8px;  font-family:'Segoe UI';"><a href="#">Vaidhy</a><br/>
          <span class=""  style="padding-left:65px; font-size:12px;">Professor</span><br/>
          <span class=""  style="padding-left:25px; border:thin; border-color:#000000;">
          
          </p>
          
          

  </div>
  <input type="button" id="likeb" value="Like" class="smallbutton" onclick="insertlike();" />
  
    <input type="button" id="dislikeb" value="Dislike" class="smallbutton" onclick="insertdislike();" />
  
   
  
  <input type="button" id="downloadb" value="Download this book" class="downloadbutton" />
  
  <p align="right" style="color:#595EF4; margin-right:25px;"><a href="#" class="reply">Report Abuse</a></p>
</div>

<span style="font-size:20px;font-weight:bolder; padding-left:15px; margin-top:25px; color:#061E5B;">Comments(<span class="">2</span> of 20)</span>

<input type="button" id="refresh" value="Refresh" />

<input type="button" id="viewmore"  value="View more replies" />

<br/> 
<div id="answer_container">

<div class="oneanswer">

<div class="imgname">

<img src="images/profle.jpg" width="80" height="80" /> <br/>

</div> <!--end of imgname-->

<div class="answer"> 

<a href="profilelink"> <span class="profilename"> This is B</span> </a>

</div> <!--end of answer-->

</div> <!-- end of one answer-->

<div class="oneanswer">

<div class="imgname">

<img src="images/profle.jpg" width="80" height="80" /> <br/>

</div> <!--end of imgname-->

<div class="newanswer"> 

<div class="oneanswer">

<div class="imgname">

<img src="images/profle.jpg" width="80" height="80" /> <br/>

</div> <!--end of imgname-->

<div class="answer"> 
 

 
 <textarea name="comment" id="newcomment"> </textarea>
 
<input type="submit" name="enter" id="button" value="Enter" class="ui-button ui-widget ui-state-default ui-corner-all enterbutton" role="button" aria-disabled="false" />

</div> <!--end of answer-->

</div> <!-- end of one answer-->


</div> <!-- end of answer_container-->





</div>
</body>
</html>
