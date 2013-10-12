<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href= "css/style.css" rel="stylesheet" type="text/css" />
<link href="css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.8.3.js"></script>
<script src="js/jquery-ui-1.9.2.custom.js"></script>
<script src="js/myscript.js"></script>
<link href="css/custom.css" rel="stylesheet" type="text/css" />
<link href="css/home.css" rel="stylesheet" type="text/css" />
<link href="css/tooltip.css" rel="stylesheet" type="text/css" />
<link href="css/tooltip_large.css" rel="stylesheet" type="text/css" />
</head>
<body  bgcolor="#F5F5F5" background="images/bg.png">
<div id="Pagelayout"   align="justify" style="background-color:white;">
  <div id="Header" oncontextmenu="return false" >&nbsp;<img src="images/logo.gif"  alt="logo" width="375" height="63" style="position:relative; left:2px; top:5px; float:left; margin:0 5px 0 0;"/><br />
    <p id="Search_tab">
    <%!String id; %>
    <form method="post" action="search.jsp"> 
<table cellpadding="0px" cellspacing="0px" align="right"> 
<tr> 
<td style="border-style:solid none solid solid;border-color:transparent;border-width:0px;">
<input type="search" name="search" style="width:290px; height:20px; border:1px solid; padding:0px 3px; position:relative; font-family:'Segoe UI'; color:gray; font-style:italic;height:20px;" value="Search" 
onfocus="javascript:

if(this.value == 'Search')
{ 
this.value = '';
}
this.style.fontStyle='normal';
this.style.color='black';
"  
onblur="javascript:
 if(this.value=='')
 {
 this.value='Search';
 this.style.fontStyle='italic';
 this.style.color='gray';
 
 }
 else
 {
 this.style.fontStyle='normal';
this.style.color='black';
 }
 "
 />
</td>
<td style="border-color:#4B7B9F;border-width:1px;"> 
<input type="submit" value="" style="border-style: none; background:url(SearchButton.gif) no-repeat; width: 24px; height: 20px;">
</td>
<td style="padding-top:10px;"s></a> <span class="adsrch" >&nbsp;&nbsp;<a href="#" class="Hd_hyp_link" target="_top" style="font-size:14px; font-family:'Segoe UI'; " >Advanced Search</a> </span></p></td>
</tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</form>

  </div>
  
  <div class="Line" style="background-color:#fff;"> </div>
  
  
  
  <div align="right" id="profile_desc" style="margin-top:-20px; background-color:#193e66; font-family:'Segoe UI'; color:#CCC;"><a href="#"  class="Hd_hyp_link" ></a>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="setting.jsp"  class="Hd_hyp_link">Settings&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="logout.jsp"  class="Hd_hyp_link">Logout</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
  <div style="height:4px; width:inherit; color:#fff;"></div>
  <div id="menu_list"  style="margin-top:-3px;">
    <ul id="coolMenu" >
      <li><a href="home.jsp" target="" style=" background-color:#193e66;"><b>Home</b></a></li>
      <li><a href="profile.jsp"   style=" background-color:#193e66;">Profile</a></li>
      <li> <a href="bookview.jsp" target="#"  style=" background-color:#193e66;">Books</a> </li>
      <li><a href="forum.jsp"   style=" background-color:#193e66;">Forum</a></li>
    </ul>
  </div>
  
<div id="dyna"></div>
</body>
</html>
