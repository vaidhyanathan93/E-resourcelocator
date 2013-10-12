<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp"%>
 
  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Forgot Password</title>
<link href="css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet">
	<script src="js/jquery-1.8.3.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.js"></script>
<script src="js/myscript.js"></script>

<link href="css/custom.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

  
  
  function validate1(){
	  var errmsg1="";

  var x=document.forms["form1"]["forgotmailid"].value;
if (x==null || x=="")
  {
errmsg1=errmsg1 + "EmailId<br>";
  
  }
  

  
  
  
  if(errmsg1!=""){
 errmsg1="Please correct the following<br>" +errmsg1;
  document.getElementById("error_message").innerHTML=errmsg1;
  return false;
  
  }}
  
     
  
</script>

<style type="text/css"> 

#fpbody		{
	background-color:ghostwhite;
	height:400px;
	width:1000px;
	margin:0 auto;
}

</style>
</head>

<body>

<div align="center" id="fpbody">

<br/>

 <h3 align='justify' style="padding-left:30px;"> Password Recovery </h3>

  <form action="passwordrecovery.jsp" method="post" onsubmit="return validate1()" name="form1" class="feedback" id="form1">

    <table border="0" cellpadding="5px">
      <tr>
        <td width="116">Email ID</td>
        <td width="324"><label for="feedback_name"></label>
          <label for="forgotmailid"></label>
          <input name="forgotmailid" type="email" class="feedbackmaterial" id="forgotmailid" />
          <label for="datepicke"></label></td>
          <td> <img src="images/blank.png" /> </td>
      </tr>
      
       <tr>
       
    <td colspan="2">
    
   <div id="error_message">
   
   
   </div>
    
    </td>
    
  </tr>
      
      
      <br /><br />
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="submit" id="button" value="Submit" /></td>
      </tr>
      <br />
    </table>
    
  </form>
</div>

</body>
</html>
