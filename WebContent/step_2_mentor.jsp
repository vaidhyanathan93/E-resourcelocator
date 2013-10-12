<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mentor Registration</title>
<link href="css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet">
	<script src="js/jquery-1.8.3.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.js"></script>
<script src="js/myscript.js"></script>
   
	
<link href="css/custom.css" rel="stylesheet" type="text/css" />





<script type="text/javascript">

function validate(){
	
	var errmsg="";
var x=document.forms["form1"]["datepicke"].value;
if (x==null || x=="")
  {
	  errmsg=errmsg +"Date Of Birth <br>" ;

 
  }
  var x=document.forms["form1"]["field"].value;
if (x=="-1")
  {
errmsg=errmsg + "Profession<br>";
  
  }
  
  
   var x=document.forms["form1"]["qualification"].value;
if (x==null || x=="")
  {
errmsg=errmsg + "Qualification<br>";
  
  }
  
  
  
  
  
  var x=document.forms["form1"]["experience"].value;
if (x==null || x=="")
  {
errmsg=errmsg + "Experience<br>";
  
  }
  
  
  
  
  var x=document.forms["form1"]["institutename"].value;
if (x==null || x=="")
  {
errmsg=errmsg + "Institute name<br>";
  
  }
  
  
  
  
   var x=document.forms["form1"]["city"].value;
if (x==null || x=="")
  {
errmsg=errmsg + "City name<br>";
  
  } 
  
  
   var x=document.forms["form1"]["country"].value;
if (x==null || x=="")
  {
errmsg=errmsg + "Country name<br>";
  
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
	height:470px;
	width:1000px;
	margin:0 auto;
}

</style>






</head>

<body>
<div id="probody">
<br/>
<h3 align="left" style="padding-left:30px;"> Registration : Step 2 </h3>
<div align="center" style="margin:0 0 0 30px;">

  <form action="post" method="post" onsubmit="return validate()" name="form1" class="feedback" id="form1">
    
    <table width="902" border="0" cellpadding="5px">
      <tr>
        <td width="138">Date Of Birth*</td>
        <td width="738"><label for="feedback_name"></label>
          <label for="datepicke"></label>
        <input name="datepicke" type="text" class="feedbackmaterial" id="datepicke" /></td>
      </tr><br />
      <tr>
        <td>Gender*</td>
        <td><div id="radio">
		<input type="radio" id="radio1" name="radio" checked="checked" /><label for="radio1">Male</label>
		<input type="radio" id="radio2" name="radio" /><label for="radio2">Female</label>
		
	</div></td>
      </tr><br />
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
      <tr>
        <td>Qualification*</td>
        <td><label for="qualification"></label>
        <input name="qualification" type="text" class="feedbackmaterial" id="qualification" />          <label for="Url To report"></label></td>
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
