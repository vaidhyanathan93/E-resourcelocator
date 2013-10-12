<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="css/forum.css" rel="stylesheet" type="text/css" />

<link href="css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet">
	<script src="js/jquery-1.8.3.js"></script>
	<script src="js/jquery-ui-1.9.2.custom.js"></script>
	<script src="js/myscript.js"></script>




<style>
.list_forum{
display:inline;
}

</style>

<script type="text/javascript">

window.onload=function(){
	
	fetchcomments();

}

function entercomment()
{
	
	var t=document.getElementById("newcomment").value;
	var xmlhttp=new XMLHttpRequest();
	var parameter=new String("insertreply.jsp?text=");
	parameter+=t;
	var mmm=document.getElementById("answer_container");
	//parameter+=t;
	xmlhttp.open("GET",parameter,true);
	document.getElementById("newcomment").value="";
	xmlhttp.send();

xmlhttp.onreadystatechange=function()	{
		
		if(xmlhttp.readyState==4 && xmlhttp.status==200)
			{
			//alert(xmlhttp.responseText);
			fetchcomments();
			}
	}
}


function fetchcomments()

{
	var divv=document.getElementById("answer_container");
	divv.innerHTML="Loading comments......";
	
	var xmlhttp=new XMLHttpRequest();
	var parameter=new String("fetchcomments.jsp");
	//parameter+=t;
	xmlhttp.open("GET",parameter,"true");
	xmlhttp.send();

xmlhttp.onreadystatechange=function()	{
		
		if(xmlhttp.readyState==4 && xmlhttp.status==200)
			{
			divv.innerHTML=xmlhttp.responseText;
			}
	}
	
	}


</script>


</head>

<body bgcolor="#99FF99">
<div id="forum_main">
<div id="forum_head" class="forumhd">
<a href="index.html"><img src="images/home_nav.png" alt="home" width="20" style="margin:4 auto;" /></a>&nbsp;&nbsp;<span>Forum</span><span style="padding-left:750px;"><a href="#" target="_top" class="forum_hdlnk">FAQ</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" target="_top" class="forum_hdlnk">Help</a></span></div>
<br/>

<div id="forum_time"><img src="images/fileicon.png" alt="file" /> <span class="forumdate">Yesterday</span>, <span class="">2.00 PM</span></div>
<div id="forum_fullcontent">
  <div id="forum_content_display">
    <p><b>Re: Do you think Itachi is evil?     </b> </p>
    <p style="font-size:16px;">Evil is a very opinion biased word. In some ways people can view it and say "he was definitely evil" and others " he's not evil".
      
      It all depends on your morals and beliefs. Evil is subjective, not everyone is going to agree that he was or wasn't evil. 
      
    I believe that Itachi wasn't evil. He acted upon what he believed in and no one can tell him he was wrong. The hard decisions hurt the most. He may have done it to save the village, but I'm sure he had no pleasure doing it. It was a ethical decision he made in a Right vs. Right scenario. Which are always the hardest to make. </p>
  </div>
  
  <div id="profile_display" class="forum_body_indescription">
    <p><span class="" style="padding-left:8px;  font-family:'Segoe UI';"><a href="#">Vaidhy</a><br/>
          <span class=""  style="padding-left:65px; font-size:12px;">Professor</span><br/>
          <span class=""  style="padding-left:25px; border:thin; border-color:#000000;"><img src="images/profle.jpg" alt="vaidhy" width="150" height="138" /></span></span><br/>
          </p>
    <p><span class="" style="padding-left:40px; font-size:14px; font-weight:bold; color:#1C6D77"><span style="padding-left:8px;">Posts: <span class="count">179</span></span><br/>
    </span> </p>
  </div>
  <p align="right" style="color:#595EF4; margin-right:25px;"><a href="#" class="reply">Report Abuse</a></p>
</div>

<span style="font-size:20px;font-weight:bolder; padding-left:15px; margin-top:25px; color:#061E5B;">Comments</span>

<input type="button" id="refresh" value="Refresh" onclick="fetchcomments();"/>

<input type="button" id="viewmore"  value="View more replies" />

<br/>


<div id="answer_container">

Loading comments.......

</div> <!-- end of answer_container-->

<div class="oneanswer">

<div class="imgname">

<img src="images/profle.jpg" width="80" height="80" /> <br/>

</div> <!--end of imgname-->

<div class="answer">
 
 <textarea name="comment" id="newcomment"> </textarea>
 
<input type="button" id="button" class="enterbutton" value="Enter" onclick="entercomment();" />

</div> <!--end of answer-->

</div> <!-- end of one answer-->



</div>
</body>
</html>
