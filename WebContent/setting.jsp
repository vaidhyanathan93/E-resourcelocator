<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp"%>
    <%@ include file="common-header-logout.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Settings</title>
<link href="css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet">
	<script src="js/jquery-1.8.3.js"></script>
	<script src="js/jquery-ui-1.9.2.custom1.js"></script>
<script src="js/myscript.js"></script>
   
	
<link href="css/custom.css" rel="stylesheet" type="text/css" />








<script type="text/javascript">




  </script>






</head>

<body>
<div class="booby" style="width:1000px; margin:0px auto">

<div id="accordion">
	<h3>Change Password	</h3>
	<div>
		<form id="form1" name="change_password" action="change_password_action.jsp" onsubmit="return validate()" method="post">
		  <%
		  if(session.getAttribute("setting_error")!=null){
			 session.removeAttribute("setting_error");		  %><h4 class="alert_error">Password Invalid</h4><%} %>
		  <table  border="0">
		 
		    <tr>
		      <td width="166">Old Password</td>
		      <td width="150"><input name="Old_Password" type="password" maxlength="20" class="feedbackmaterial" id="Old Password" /> </td>
              <td> <img src="images/blank.png" height="25" width="25"/> </td>
	        </tr>
		    <tr>
		      <td>New Password</td>
		      <td><input name="Newpassword" type="password" maxlength="20" class="feedbackmaterial" id="Newpassword" /></td>
              <td> <img src="images/blank.png" height="25" width="25" /> </td>
	        </tr>
		    <tr>
		      <td>Confirm Password</td>
		      <td><input name="confirmpassword" type="password" maxlength="20" class="feedbackmaterial" id="confirmpassword" /></td>
              <td> <img src="images/blank.png" height="25" width="25" /> </td>
	        </tr><tr>
    <td colspan="2">
    
   <div id="error_message"> <font color="green"> Passwords match </font></div>
    
    </td>
    
  </tr>
		    <tr>
		      <td>&nbsp;</td>
		      <td><input type="submit" name="button1" id="button1" value="Submit" /></td>
	        </tr>
	      </table>
      </form>
		
	</div><td colspan="2">
    
   <div id="error_message1"></div>
    
    </td>
    
  </tr>
		  <tr>
		    <td>&nbsp;</td>
		    <td><input type="submit" name="button2" id="button2" value="Submit" /></td>
	      </tr>
	  </table></form>
		<p>&nbsp;</p>
	</div>
</div>
</div>
</body>
</html>
