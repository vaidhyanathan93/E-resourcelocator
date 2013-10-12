<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  errorPage="ErrorPage.jsp"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- This is my index page --%>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Index</title>
<link href="css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet">
	<script src="js/jquery-1.8.3.js"></script>
	
	<script src="js/jquery-ui-1.9.2.custom.js"></script>
	<script src="js/myscript.js"></script>
<link href="css/custom.css" rel="stylesheet" type="text/css" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">

function validate(){
	var errmsg="Please correct the following:<br>";
var x=document.forms["signin"]["SignIn_EmailID"].value;
if (x==null || x=="")
  {
	  errmsg=errmsg +"EMailId <br>" ;

 
  }
  var x=document.forms["signin"]["SignIn_Password"].value;
if (x==null || x=="")
  {
errmsg=errmsg + "password<br>";
  
  }
 if(errmsg==null || x=="")
 {
	
  document.getElementById("error_message").innerHTML=errmsg;
  return false;
  
  }}
  
  
  function validate1(){
	  var errmsg1="";
var x=document.forms["signup"]["SignUp_Name"].value;
if (x==null || x=="")
  {
	  errmsg1=errmsg1+"Name <br>" ;

 
  }
  var x=document.forms["signup"]["SignUp_EmailId"].value;
if (x==null || x=="")
  {
errmsg1=errmsg1 + "EmailId<br>";
  
  }
  
    var x=document.forms["signup"]["SignUp_Password"].value;
if (x==null || x=="")
  {
errmsg1=errmsg1 + "Password<br>";
  
  }
  
    var x=document.forms["signup"]["Profession"].value;
if (x=="-1")
  {
errmsg1=errmsg1 + "Profession<br>";
  
  }
  
  
  
  if(errmsg1!=""){
 errmsg1="Please correct the following<br>" +errmsg1;
  document.getElementById("error_message1").innerHTML=errmsg1;
  return false;
  
  }}
  
  
  
  
  
  
  
  
  
</script>

</head>

<body background="images/bg.png" onload="setwidth();">


<%

if(session.getAttribute("emailid")!=null)
{
	String url= response.encodeRedirectURL("home.jsp");
    response.sendRedirect(url);
	}

%>



<div id="info">


<span id="title" >MEGADEUS</span>
<br/><br/><br/><br/><br/><br/>

<span id="subtitle"> Learn - </span>
<span id="desc"> Study materials available for all subjects </span>
<br/><br/>
<span id="subtitle"> Explore - </span>
<span id="desc"> Browse through books of various disciplines </span>
<br/><br/>
<span id="subtitle"> Teach - </span>
<span id="desc"> Help in the learning process through mentorship </span>
<br/><br/>
<span id="subtitle">  Discuss - </span>
<span id="desc"> Share ideas and communicate with others through forums </span>
<br/><br/>

</div>

<div id="back">

<form action="index_signin_action.jsp" method="post" onsubmit="return validate()" name="signin">
  <p>&nbsp;</p>
  <div align='center'>
  <table border="0">
    <tr>
      <td>Email ID</td>
      <td><label>
        <input name="SignIn_EmailID" onfinishinput="validate_emailID1();" type="email" class="index_textbox" id="textfield emailID_ip" autocomplete="on"  width="150px"/>
      </label></td>
      <td>  </td>
    </tr>
    <tr>
      <td>Password</td>
      <td><label>
        <input name="SignIn_Password" type="password" class="index_textbox" id="textfield password_ip"   width="150px" />
      </label></td>
      <td> </td>
    </tr> </table>
    
      
      <div id="error_message">
      
      </div> <br/>
      
      <input type="submit"  name="SignIn" id="button" value="Sign In" /> <br/>
      <br/>
      
      <a href="forgotpassword.jsp"> Forgot Password ? </a>
      
  </div>
  <p>&nbsp;</p>
</form>


<form action="index_signup_action.jsp" method="post"  onsubmit="return validate1()" name="signup">
<div align='center'>

<table  border="0">
  <tr>
    <td>Name</td>
    <td><label>
      <input name="SignUp_Name" type="text" maxlength="25" class="index_textbox" id="SignUp_Name" autocomplete="on"   width="150px" />
    </label></td>
    <td>  </td>
  </tr>
  <tr>
    <td>Email Id</td>
    <td><label>
      <input name="SignUp_EmailId" maxlength="50" type="email" class="index_textbox" id="textfield3"  autocomplete="on"  width="150px"/>
    </label></td>
    <td> </td>
  </tr>
  <tr>
    <td>Password</td>
    <td><label>
      <input name="SignUp_Password" maxlength="20" type="password" class="index_textbox" id="textfield"  width="150px" />
    </label></td>
    <td> </td>
  </tr>
  <tr>
    <td>Profession</td>
   <td>
     <select name="Profession" size="1" class="index_textbox" id="Professtion"  width="150px">
      <option value="-1" selected="selected">Select one </option>
       <option value="5">Student</option>
       <option value="3">Professor</option>
       <option value="2">Publication</option>
      
     </select></td>
     <td>  </td>
  </tr>
  </table>
  
    
   <div id="error_message1"></div>  <br/>  
    
  <input type="submit"  onclick="validate1()" name="SignUp" id="button1" value="Sign Up" />
  
</div>
</form>
<div align="center">
<%
if(session.getAttribute("index_signin_error")!=null){

	

session.removeAttribute("index_signin_error");%>

<h4 style="color:red">Email Id Or Password is Invalid</h4>
<%} %><%
if(session.getAttribute("index_signup_error")!=null){

	


session.removeAttribute("index_signup_error");%>

<h4 style="color:red">EmailId Exists</h4>
<%} %></div>
</div>

</body>
 
</html>

