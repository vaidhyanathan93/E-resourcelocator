<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet">
	<script src="js/jquery-1.8.3.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.js"></script>
<script src="js/myscript.js"></script>
   
	
<link href="css/custom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">

function validate(){
	
	var errmsg="";
	var x=document.forms["form1"]["nme"].value;
	if (x==null || x=="")
	  {
		  errmsg=errmsg +"Name <br>" ;

	 
	  }
	var x=document.forms["form1"]["mail"].value;
	if (x==null || x=="")
	  {
		  errmsg=errmsg +"Email <br>" ;

	 
	  }
	var x=document.forms["form1"]["pwd"].value;
	if (x==null || x=="")
	  {
		  errmsg=errmsg +"Password <br>" ;

	 
	  }

var x=document.forms["form1"]["datepicke"].value;
if (x==null || x=="")
  {
	  errmsg=errmsg +"Date Of Birth <br>" ;

 
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

#probody		{
	background-color:ghostwhite;
	height:750px;
	width:1000px;
	margin:0 auto;
}

</style>





</head>
<body>
<div id="probody">
<br/>
<h3 align="left" style="padding-left:30px;"> Mentor Registration </h3>
<div align="center" style="margin:0 0 0 30px;">

  <form action="InsertMentor.jsp" method="post" onsubmit="validate()" name="form1" class="feedback" id="form1">
    
    <table width="902" border="0" cellpadding="5px">
      <tr>
    <td>Name*</td>
    <td><label for="nme">
      <input name="SignUp_Name" type="text" maxlength="25" class="index_textbox" id="SignUp_Name" autocomplete="on"   width="150px" />
    </label></td>    
  </tr>
  <tr>
    <td>Email Id*</td>
    <td><label for="mail">
      <input name="SignUp_EmailId" maxlength="50" type="email" class="index_textbox" id="textfield3"  autocomplete="on"  width="150px"/>
    </label></td>    
  </tr>
  <tr>
    <td>Password*</td>
    <td><label for="pwd">
      <input name="SignUp_Password" maxlength="20" type="password" class="index_textbox" id="textfield"  width="150px" />
    </label></td>
      </tr>
      <tr>
        <td width="138">Date Of Birth*</td>
        <td width="738"><label for="feedback_name"></label>
          <label for="datepicke"></label>
        <input name="datepicke" type="text" class="feedbackmaterial" id="datepicke" /></td>
      </tr><br />
      <tr>
        <td>Gender*</td>
        <td><div id="radio">
		<input type="radio" id="radio1" name="radio" checked="checked" value="1" /><label for="radio1">Male</label>
		<input type="radio" id="radio2" name="radio" value="0"  /><label for="radio2">Female</label>
		
	</div></td>
      </tr><br />
      <tr>
        <td>About*</td>
        <td><label for="About"></label>
        <textarea name="About"  id="About" cols="34" rows="5"></textarea></td>
      </tr><br/>
      <tr>
        <td>Field*</td>
        <td> <select style="width:290px;" name="field" size="1" id="Professtion" style="width:145px">
      <option value="-1" selected="selected">Select one </option>
       <option value="E">Engineering</option>
       <option value="M">Medicine</option>
       <option value="S">Science</option>
       <option value="O">Social Science</option>
       <option value="L">Literature </option>
       <option value="R">Arts</option>
       <option value="E">General</option>
       <option value="H">Maths</option>
       <option value="U">Language</option>
       <option value="W">Law</option>
       <option value="P">Computer Studies</option>
             
     </select></td>
      </tr><br />
      
      
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
    
  </form>
</div>
</div></body>
</html>


</body>
</html>