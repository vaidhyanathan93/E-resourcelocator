<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp"%>
   <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Publication signup</title>
<link href="css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet">
	<script src="js/jquery-1.8.3.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.js"></script>
<script src="js/myscript.js"></script>
   
	
<link href="css/custom.css" rel="stylesheet" type="text/css" />










<script type="text/javascript">

function validate(){
	
	var errmsg="";
var x=document.forms["form1"]["yearofstarting"].value;
if (x==null || x=="")
  {
	  errmsg=errmsg +"Year Of Starting <br>" ;

 
  }
  var x=document.forms["form1"]["About"].value;
if (x==null || x=="")

  {
errmsg=errmsg + "About<br>";
  
  }
  
  
  
 if(errmsg!="")
 {
	errmsg="Please check the following errors<br>" + errmsg;
  document.getElementById("error_message").innerHTML=errmsg;
  return false;
  
  }}
  </script>

<style type="text/css">

#prbody		{
	background-color:ghostwhite;
	height:470px;
	width:1000px;
	margin:0 auto;
}

</style>



</head>

<body>

<%

if(session.getAttribute("emailid")==null)
{
	String url = response.encodeRedirectURL("index.jsp");
    response.sendRedirect(url);
	}

%>
<% 

String profess=session.getAttribute("profession").toString();
if(!(profess.equalsIgnoreCase("2")))
{

	String url = response.encodeRedirectURL("index.jsp");
    response.sendRedirect(url);
	}
%>










<div id="prbody">
<br/>
<h3 align="left" style="padding-left:30px;"> Registration : Step 2 </h3> 
<div align="center" style="margin:0 0 0 30px;">
  <form action="step2_signup_publication_action.jsp"method="post" name="form1" class="feedback"  onclick="return validate()" id="form1">
    <% session.setAttribute("profilepic", "default.jpg"); %>
    <table width="462" border="0" cellpadding="5px">
   
      <tr>
        <td width="146">Year Of Starting*</td>
        <td width="290"><label for="feedback_name"></label>
          <label for="datepicke"></label>
          <label for="yearofstarting"></label>
          <input name="yearofstarting" type="text" class="feedbackmaterial" id="datepicke" /></td>
      </tr><br /><br /><br /><br />
      <tr>
        <td>About*</td>
        <td><label for="About"></label>
        <textarea name="About"  id="About" cols="34" rows="5"></textarea></td>
      </tr>
      
      
       <tr>
    <td colspan="2">
    
   <div id="error_message"></div>
    
    </td>
    
  </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="submit" id="button" value="Submit" /></td>
      </tr>
      <br />
    </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </form>
</div>
</div></body>
</html>
