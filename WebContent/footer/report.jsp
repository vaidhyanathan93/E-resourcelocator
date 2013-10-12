<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Report</title>
<link href="../css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet">
	<script src="../js/jquery-1.8.3.js"></script>
	<script src="../js/jquery-ui-1.9.2.custom.js"></script>
<script src="../myscript.js"></script>
   
	
<link href="../custom.css" rel="stylesheet" type="text/css" />




<script type="text/javascript">

function validate(){
	var errmsg="Please correct the following:<br>";
var x=document.forms["form1"]["feedback_name"].value;
if (x==null || x=="")
  {
	  errmsg=errmsg +"name <br>" ;

 
  }
  var x=document.forms["form1"]["feedback_email"].value;
if (x==null || x=="")
  {
errmsg=errmsg + "EmailID<br>";
  
  }
  
  
   var x=document.forms["form1"]["feedback_feedback"].value;
if (x==null || x=="")
  {
errmsg=errmsg + "Report<br>";
  
  }
  
  
  
   var x=document.forms["form1"]["Url To report"].value;
if (x==null || x=="")
  {
errmsg=errmsg + "Url To report<br>";
  
  }
  
  
  
  
 if(errmsg==null || x=="")
 {
	
  document.getElementById("error_message").innerHTML=errmsg;
  return false;
  
  }}
  </script>

</head>

<body>
<h3>&nbsp;</h3>
<div align="center">
  <form action=""method="post" name="form1" onsubmit="return validate()" class="feedback" id="form1">
    <p>&nbsp;</p>
    <table width="447" border="0">
    <tr>
    <td colspan="2"><h3  align="center">Report a Problem</h3></td>
    </tr>
      <tr>
        <td width="107">Name</td>
        <td width="330"><label for="feedback_name"></label>
          <input name="feedback_name" type="text" class="feedbackmaterial"  /></td>
      </tr><br />
      <tr>
        <td>Email Id</td>
        <td><input name="feedback_email" type="email" class="feedbackmaterial" style="width:290px" " /></td>
      </tr><br />
      <tr>
        <td>Report</td>
        <td><label for="feedback_feedback"></label>
          <textarea name="feedback_feedback" cols="45" rows="5" style="width:290px"></textarea></td>
      </tr><br />
      <tr>
        <td>Url To Report</td>
        <td><label for="Url To report"></label>
        <input name="Url To report" type="text" class="feedbackmaterial" id="Url To report" /></td>
        
        
         <tr>
    <td colspan="2">
    
   <div id="error_message"
    
    </td>
    
  </tr>
      </tr><br />
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="button1" id="button1" value="Submit" /></td>
      </tr><br />
    </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </form>
</div>
</body>
</html>
