<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.Connection" import="java.sql.PreparedStatement" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>upload a document</title>
<link href="css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet">
	<script src="js/jquery-1.8.3.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.js"></script>
<script src="js/myscript.js"></script>
   
	
<link href="css/custom.css" rel="stylesheet" type="text/css" />






<script type="text/javascript">

function validate(){
	
	var errmsg="";
var x=document.forms["form1"]["document_title"].value;
if (x==null || x=="")
  {
	  errmsg=errmsg +"Document Title <br>" ;

 
  }
  
  
  
  var x=document.forms["form1"]["About"].value;
   
if (x==null || x=="" )
  {
	  errmsg=errmsg +"Description <br>" ;

 
  }
  
  
  
  
  
  
  
  
  
   var x=document.forms["form1"]["category"].value;
   
if (x==null || x=="-1" )
  {
	  errmsg=errmsg +"category <br>" ;

 
  }
  
  
  
  
  
  var x=document.forms["form1"]["fileupload"].value;
   
if (x==null || x=="" )
  {
	  errmsg=errmsg +"No files uploaded <br>" ;

 
  }
  
  
  
  
  
  
 if(errmsg!="")
 {
	errmsg="Please check the following errors<br>" + errmsg;
  document.getElementById("error_message").innerHTML=errmsg;
  return false;
  
  }}




 </script>



</head>

<body>

<div class="booby"><div align="center">
  <form action="insertforum.jsp"  method="post" name="form1" class="feedback" id="form1">
    <p>
   
    <table width="703" border="0" cellpadding="5px">
    <tr>
    <td colspan="2"> <h1 align="center">New Forum</h1></td>
      <tr>
        <td width="146">Forum Title</td>
        <td width="290">
        <input name="document_title" type="text" class="feedbackmaterial" id="document_title" style="width:660px;" value="" maxlength="200" width="50" draggable="auto"/></td>
      </tr><br /><br /><br /><br />
      <tr>
        <td>Forum Description</td>
        <td><label for="About"></label>
        <textarea name="About" id="About" cols="80" rows="5">
        </textarea></td>
      </tr>
      <td>Category</td>
      <td>
      <select name="category"  style="width:290px"size="1" id="Professtion" style="width:145px">
       <option value="E" selected="selected">Engineering</option>
       <option value="M">Medicine</option>
       <option value="S">Science</option>
       <option value="O">Social Science</option>
       <option value="L">Literature </option>
       <option value="R">Arts</option>
       <option value="G">General</option>
       <option value="H">Maths</option>
       <option value="U">Language</option>
       <option value="W">Law</option>
       <option value="P">Computer Studies</option>
      </select></td>
          
     <tr>
    <td colspan="2">
    
   <div id="error_message"></div>
    
    </td>
    
  </tr>
     
     
     
     
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="submit" id="button" value="Create" /></td>
      </tr>
      <br />
  </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </form>
</div>
</div>
</body>
</html>