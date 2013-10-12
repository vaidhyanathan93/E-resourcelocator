<%@ page import="java.sql.*"   language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
	<meta charset="utf-8"/>
	<title>Dashboard I Admin Panel</title>
	
	<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen" />
	<!--[if lt IE 9]>
	<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" />
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<script src="js/jquery-1.5.2.min.js" type="text/javascript"></script>
	<script src="js/hideshow.js" type="text/javascript"></script>
	<script src="js/jquery.tablesorter.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery.equalHeight.js"></script>
	<script type="text/javascript">
	$(document).ready(function() 
    	{ 
      	  $(".tablesorter").tablesorter(); 
   	 } 
	);
	$(document).ready(function() {

	//When page loads...
	$(".tab_content").hide(); //Hide all content
	$("ul.tabs li:first").addClass("active").show(); //Activate first tab
	$(".tab_content:first").show(); //Show first tab content

	//On Click Event
	$("ul.tabs li").click(function() {

		$("ul.tabs li").removeClass("active"); //Remove any "active" class
		$(this).addClass("active"); //Add "active" class to selected tab
		$(".tab_content").hide(); //Hide all tab content

		var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
		$(activeTab).fadeIn(); //Fade in the active ID content
		return false;
	});

});
    </script>
    <script type="text/javascript">
    $(function(){
        $('.column').equalHeight();
    });
    
    
</script>
<script type="text/javascript">
	function Cnfm_Delete(v)
    {
		var r=confirm("Are you Sure to delete the Book and its related details?");
		if (r==true)
		  {
			// var radios = document.getElementsByName("BooksList");

			  //  for (var i = 0; i < radios.length; i++) {       
			    //    if (radios[i].checked) {
			      //      var t=radios[i].value;
			        //    break;
			    
			    //document.getElementByName("SelectedOne").innerHTML=t.toString();
			   // document.getElementById("SelectedOne").value=t.toString();
			t=v;
			
			
			    var xreq1;
				if(t=="")
				{
				document.getElementById("tab1").innerHTML="";
				return;
				}
				if(window.XMLHttpRequest)
				{
				xreq1=new XMLHttpRequest();
				}
				else
				{
				xreq1=new ActiveXObject("Microsoft.XMLHTTP");
				}
				xreq1.onreadystatechange=function ()
				{
				if( (xreq1.readyState==4) && (xreq1.status==200) )
				{
				document.getElementById("tab1").innerHTML 
				                                   =xreq1.responseText;

				}
				}
				xreq1.open("get","BookDelete.jsp?q="+t,"true");
				xreq1.send();
				document.getElementById("message_id").innerHTML ="";

		  }
		else
		  {
		
		  }
			
			   
	
    }
	function Cnfm_Delete1(v)
    {
		var r=confirm("Are you Sure to delete the Document and its related details?");
		if (r==true)
		  {
			 
			//var radios = document.getElementsByName("DocsList");

			  //  for (var i = 0; i < radios.length; i++) {       
			    //    if (radios[i].checked) {
			      //      var t=radios[i].value;
			        //    break;
			     
			  t=v;
			    //document.getElementByName("SelectedOne").innerHTML=t.toString();
			   // document.getElementById("SelectedOne").value=t.toString();
			
			
			    var xreq1;
				if(t=="")
				{
				document.getElementById("tab2").innerHTML="";
				return;
				}
				if(window.XMLHttpRequest)
				{
				xreq1=new XMLHttpRequest();
				}
				else
				{
				xreq1=new ActiveXObject("Microsoft.XMLHTTP");
				}
				xreq1.onreadystatechange=function ()
				{
				if( (xreq1.readyState==4) && (xreq1.status==200) )
				{
				document.getElementById("tab2").innerHTML 
				                                   =xreq1.responseText;

				}
				}
				xreq1.open("get","DocumentDelete.jsp?q="+t,"true");
				xreq1.send();
				document.getElementById("message_id").innerHTML ="";
			//window.location.assign("NewFile1.jsp?Doc="+t.toString());
		  }
		else
		  {
		
		  }
			
			   
	
    }
	function aja(str)
	{		
		document.getElementById("message_id").innerHTML="Loading...";
		var xreq;
		if(str=="")
		{
		document.getElementById("message_id").innerHTML="";
		return;
		}
		if(window.XMLHttpRequest)
		{
		xreq=new XMLHttpRequest();
		}
		else
		{
		xreq=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xreq.onreadystatechange=function ()
		{
		if( (xreq.readyState==4) && (xreq.status==200) )
		{
		document.getElementById("message_id").innerHTML 
		                                   =xreq.responseText;

		}
		}
		xreq.open("get","BookComment.jsp?q="+str,"true");
		xreq.send();

		
	}
	
	function aja1(str)
	{		
		document.getElementById("message_id").innerHTML="Loading...";
		var xreq;
		if(str=="")
		{
		document.getElementById("message_id").innerHTML="";
		return;
		}
		if(window.XMLHttpRequest)
		{
		xreq=new XMLHttpRequest();
		}
		else
		{
		xreq=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xreq.onreadystatechange=function ()
		{
		if( (xreq.readyState==4) && (xreq.status==200) )
		{
		document.getElementById("message_id").innerHTML 
		                                   =xreq.responseText;

		}
		}
		xreq.open("get","DocumentComment.jsp?q="+str,"true");
		xreq.send();

		
	}
	
	function clear()
	{
		document.getElementById("message_id").innerHTML="";
	
	}
	</script>

</head>


<body>






<%
String url=null;
String profes=session.getAttribute("profession").toString();
int i=Integer.parseInt(profes);
if(i!=1)
{
	url=response.encodeRedirectURL("index.jsp");
	response.sendRedirect(url);
	}



%>









	<header id="header">
		<hgroup>
			<h1 class="site_title">MEGADEUS Admin</h1>
			
		</hgroup>
	</header> <!-- end of header bar -->
	
	
	<aside id="sidebar" class="column">
		
		
		<h3>Content</h3>
		<ul class="toggle">
			<li class="icn_new_article"><a href="fileupload.jsp">Document Upload</a></li>
			<li class="icn_new_article"><a href="publication_upload.jsp">Book Upload</a></li>				
		</ul>
		<h3>Users</h3>
		<ul class="toggle">
			<li class="icn_add_user"><a href="AddAdmin.jsp">Add New Admin</a></li>
			<li class="icn_view_users"><a href="AddMentor.jsp">Add New Mentor</a></li>			
		</ul>
		
		<h3>Admin</h3>
		<ul class="toggle">			
			<li class="icn_jump_back"><a href="logout.jsp">Logout</a></li>
		</ul>
		
		<footer>
			<hr />
			<p><strong style="color:black">Copyright &copy; 2013 MEGADEUS</strong></p>
			
		</footer>
	</aside><!-- end of sidebar -->
	
	<section id="main" class="column">
		
		
		
		<article class="module width_full">
			<header><h3>Stats</h3></header>
			<div class="module_content">
				<article class="stats_graph">
					<img src="http://chart.apis.google.com/chart?chxr=0,0,3000&chxt=y&chs=520x140&cht=lc&chco=76A4FB,80C65A&chd=s:Tdjpsvyvttmiihgmnrst,OTbdcfhhggcTUTTUadfk&chls=2|2&chma=40,20,20,30" width="520" height="140" alt="" />
				</article>
		
		<%
		String s="", category="";
		Connection Connn=null;
		Statement Stmtn1=null;
		ResultSet rsn1=null;
		String count_student="",count_topper="",count_professor="",count_mentor="",count_publication="";
		int t=0;
		     try
		     {
			 Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();	 
			 Connn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
			 
			 
			 String queryn="SELECT userid FROM VAIDHYANATHAN.MAINLOGINTABLE where profiletype='5'";			
			 Stmtn1=Connn.createStatement();
			 rsn1=Stmtn1.executeQuery(queryn);
			 
			 while(rsn1.next())
			 {
				 t++;
			 }
			 count_student=String.valueOf(t);
		
			  
			 queryn="SELECT userid FROM VAIDHYANATHAN.MAINLOGINTABLE where profiletype='4'";			
			 Stmtn1=Connn.createStatement();
			 rsn1=Stmtn1.executeQuery(queryn);
			 t=0;
			 while(rsn1.next())
			 {
				 t++;
			 }
			 count_topper=String.valueOf(t);
			 
			 queryn="SELECT userid FROM VAIDHYANATHAN.MAINLOGINTABLE where profiletype='3'";			
			 Stmtn1=Connn.createStatement();
			 rsn1=Stmtn1.executeQuery(queryn);
			 t=0;
			 while(rsn1.next())
			 {
				 t++;
			 }
			 count_professor=String.valueOf(t);
			 
			 queryn="SELECT userid FROM VAIDHYANATHAN.MAINLOGINTABLE where profiletype='2'";			
			 Stmtn1=Connn.createStatement();
			 rsn1=Stmtn1.executeQuery(queryn);
			 t=0;
			 while(rsn1.next())
			 {
				 t++;
			 }
			 count_publication=String.valueOf(t);
			 
			 
			
				
			}
			catch(Exception e)
			{
				System.out.println("Error in stats");
			}
			%>
		
				<article class="stats_overview">
					<div class="overview_today">
						<p class="overview_day">Students</p>
						<p class="overview_count"><%= count_student %></p>
						
						<p class="overview_day">Professors</p>
						<p class="overview_count"><%= count_professor %></p>
					</div>
					<div class="overview_today">
						<p class="overview_day">Toppers</p>
						<p class="overview_count"><%= count_topper %></p>
						
						<p class="overview_day">Publication</p>
						<p class="overview_count"><%= count_publication %></p>
					</div>
				</article>
				<div class="clear"></div>
			</div>
		</article><!-- end of stats article -->
		
		<article class="module width_3_quarter">
		<header><h3 class="tabs_involved">Content Manager</h3>
		<ul class="tabs">
   			<li><a href="#tab1">Books</a></li>
    		<li><a href="#tab2">Documents</a></li>
		</ul>
		</header>

		<div class="tab_container">
			<div id="tab1" class="tab_content">
			
			<table class="tablesorter" cellspacing="0"> 
			<thead> 
				<tr> 
   					<th></th> 
    				<th>Book Name</th> 
    				<th>Category</th>     			
    				<th>Action</th> 
				</tr> 
			</thead> 
			<tbody> 
<%
Connection Conn=null;
Statement Stmt=null;
ResultSet rs=null;
     try
     {
	 Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();	 
	 Conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
	 
	 
	 String query="select DOCNAME,CATEGORY,DOCID from VAIDHYANATHAN.BOOKS";
	 
	 Stmt=Conn.createStatement();
	 rs=Stmt.executeQuery(query);
	 
	 while(rs.next())
	 {
		s=rs.getString("CATEGORY"); 
	    if(s.equals("E"))
	    {
	    	category="Engineering";
	    }
	    else if(s.equals("M"))
	    {
	    	category="Medicine";
	    }
	    else if(s.equals("S"))
	    {
	    	category="Science";
	    }
	    else if(s.equals("O"))
	    {
	    	category="Social Science";
	    }
	    else if(s.equals("L"))
	    {
	    	category="Literature";
	    }
	    else if(s.equals("R"))
	    {
	    	category="Arts";
	    }
	    else if(s.equals("G"))
	    {
	    	category="General";
	    }
	    else if(s.equals("H"))
	    {
	    	category="Maths";
	    }
	    else if(s.equals("U"))
	    {
	    	category="Language";
	    }
	    else if(s.equals("W"))
	    {
	    	category="Law";
	    }  
	    else
	    {
	    	category="Computer Studies";
	    }
		 %>
		 <tr> 
			<td><input type="radio" name="BooksList" value="<%=rs.getString("DOCID").toString()%>" onclick="aja(this.value)"></td> 
			<td><% out.print(rs.getString("DOCNAME")); %></td> 
			<td><%= category %></td>
			 			
			<td><input type="image" value="<%=rs.getString("DOCID").toString()%>" onclick="Cnfm_Delete(this.value)" src="images/icn_trash.png" title="Trash"></td> 
		</tr>
		<%  
	 }
	 
	
	}
	catch(Exception e)
	{
		System.out.println("Error");
	}
	%>
	
			
			</tbody> 
			</table>
			
			</div><!-- end of #tab1 -->
			
			<div id="tab2" class="tab_content">
			<table class="tablesorter" cellspacing="0"> 
			<thead> 
			<tr>			
   					<th></th> 
    				<th>Document Name</th> 
    				<th>Category</th>     			
    				<th>Action</th> 
				</tr> 			
			</thead> 
			<tbody> 
				<%

     try
     {
	 Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();	 
	 Conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
	 
	 
	 String query="select DOCNAME,CATEGORY,DOCID from VAIDHYANATHAN.DOCUMENTS";
	 
	 Stmt=Conn.createStatement();
	 rs=Stmt.executeQuery(query);
	 
	 while(rs.next())
	 {
		 
		 s=rs.getString("CATEGORY"); 
		    if(s.equals("E"))
		    {
		    	category="Engineering";
		    }
		    else if(s.equals("M"))
		    {
		    	category="Medicine";
		    }
		    else if(s.equals("S"))
		    {
		    	category="Science";
		    }
		    else if(s.equals("O"))
		    {
		    	category="Social Science";
		    }
		    else if(s.equals("L"))
		    {
		    	category="Literature";
		    }
		    else if(s.equals("R"))
		    {
		    	category="Arts";
		    }
		    else if(s.equals("G"))
		    {
		    	category="General";
		    }
		    else if(s.equals("H"))
		    {
		    	category="Maths";
		    }
		    else if(s.equals("U"))
		    {
		    	category="Language";
		    }
		    else if(s.equals("W"))
		    {
		    	category="Law";
		    }  
		    else
		    {
		    	category="Computer Studies";
		    }
		 %>
		 <tr> 
			<td><input type="radio" name="DocsList" value="<%=rs.getString("DOCID").toString()%>" onclick="aja1(this.value)"></td> 
			<td><% out.print(rs.getString("DOCNAME")); %></td> 
			<td><% out.print(category); %></td>
			 			
			<td><input type="image" value="<%=rs.getString("DOCID").toString()%>" onclick="Cnfm_Delete1(this.value)" src="images/icn_trash.png" title="Trash"></td> 
		</tr>
		<%  
	 }
	 
	
	}
	catch(Exception e)
	{
		System.out.println("Error");
	}
	%>
			</tbody> 
			</table>

		</div>	<!-- end of #tab2 -->
			
		</div><!-- end of .tab_container -->
		
		</article><!-- end of content manager article -->
		
		<article class="module width_quarter">
			<header><h3>Comments</h3></header>
			<div class="message_list" id="message_id">
				
			</div>			
		</article><!-- end of messages article -->
		
		
		<div class="clear"></div>
		
		
			
		
		<div class="spacer"></div>
	</section>


</body>

</html>