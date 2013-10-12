<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp"%>
    
    <%@ include file="common-header-logout.jsp" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>upload a document</title>
<link href="css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet">
	<script src="js/jquery-1.8.3.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.js"></script>

	
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





<%

if(session.getAttribute("emailid")==null)
{
	String url = response.encodeRedirectURL("index.jsp");
    response.sendRedirect(url);
	}

else{

String profess=session.getAttribute("profession").toString();
if((profess.equalsIgnoreCase("5"))||(profess.equalsIgnoreCase("6"))||(profess.equalsIgnoreCase("2")))
{

	String url = response.encodeRedirectURL("index.jsp");
    response.sendRedirect(url);
	}
}


%>
<div class="booby"><div align="center">
  <form action="file_upload_action.jsp" enctype="multipart/form-data" method="post" name="form1" onsubmit="return validate()" class="feedback" id="form1">
    <p>
   
    <table width="703" border="0" cellpadding="5px">
    <tr>
    <td colspan="2"> <h1 align="center">Upload A Document</h1></td>
      <tr>
        <td width="146">Document Title</td>
        <td width="290">
         
          <input name="document_title" type="text" class="feedbackmaterial" id="document_title" /></td>
      </tr><br /><br /><br /><br />
      <tr>
        <td>Description</td>
        <td><label for="About"></label>
        <textarea name="About"  id="About" cols="34" rows="5"></textarea></td>
      </tr>
      <td>Category</td>
      <td><select name="category"  style="width:290px"size="1" id="Professtion" style="width:145px">
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
     <tr>
     <td>Upload(Max 50MB)</td>
     <td><input id="fileuploaad"  name="file" type="file" style="width:290px" /></td>
     </tr>
     
     
     <tr>
    <td colspan="2">
    
   <div id="error_message"></div>
    
    </td>
    
  </tr>
     
     
     
     
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="submit" onclick="validate()" id="button" value="Upload" /></td>
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
