<%@ page session="true" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.* " errorPage="ErrorPage.jsp"%>
    <%@ page import="java.text.DateFormat" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.text.*" %>
    <%@ include file="common-header-logout.jsp" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Profile  </title>

<link href="css/profile.css" rel="stylesheet"/>
<link href="css/demo_page.css" rel="stylesheet" type="text/css" />
<link href="css/demo_table.css" rel="stylesheet" type="text/css" />       
<link href="css/demo_table_jui.css" rel="stylesheet" type="text/css" />
<link href="css/jquery-ui-1.8.24.custom.css" rel="stylesheet" type="text/css" media="all" />
<!-- Scripts -->

<link href="css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet">
	<script src="js/jquery-1.8.3.js"></script>
	
	<script src="js/jquery-ui-1.9.2.custom.js"></script>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery.dataTables.js" type="text/javascript"></script>
 <script type="text/javascript">
 $(document).ready(function(){
		$('#forums').dataTable({
			"bJQueryUI": true,
			"sPaginationType": "full_numbers",

		});
	});
 $(document).ready(function(){
		$('#likesdocs').dataTable({
			"bJQueryUI": true,
			"sPaginationType": "full_numbers",

		});
	});
 $(document).ready(function(){
		$('#dislikesdocs').dataTable({
			"bJQueryUI": true,
			"sPaginationType": "full_numbers",

		});
	});
 </script>
</head>

<body>

<div id="Body">
<div id="booby">
<%!String name,experience,gender,dob,field,institution,qulaification,city,country,about,emailid;  %>
 <%

if(session.getAttribute("emailid")==null)
{
	String url = response.encodeRedirectURL("index.jsp");
    response.sendRedirect(url);
	}

else {

String profess=session.getAttribute("profession").toString();
if(!(profess.equalsIgnoreCase("5")))
{

	String url = response.encodeRedirectURL("index.jsp");
    response.sendRedirect(url);
	}
emailid=session.getAttribute("emailid").toString();

}
%>

<%



Connection conn=null;
ResultSet rs=null;
ResultSet rs1=null;
Statement st=null;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
String getsql="SELECT * FROM VAIDHYANATHAN.USER_STUDENT WHERE USERID=?" ;
String qualquery="SELECT * FROM VAIDHYANATHAN.FIELD WHERE FIELDID=?";
PreparedStatement precheck=conn.prepareStatement(getsql);
PreparedStatement precheck1=conn.prepareStatement(qualquery);


precheck.setString(1, emailid);

rs=precheck.executeQuery();

if(rs.next())
{  
	name=rs.getString("name").toString();
	gender=rs.getString("gender").toString();
	dob=rs.getString("dob").toString();
	field=rs.getString("field").toString();
	institution=rs.getString("institution").toString();
	qulaification=rs.getString("qualification").toString();
	city=rs.getString("city").toString();
	country=rs.getString("country").toString();
	about=rs.getString("about").toString();
session.setAttribute("name", name);
	rs.close();
	
	precheck1.setString(1, field);
	rs1=precheck1.executeQuery();
	rs1.next();
	field=rs1.getString("FIELDNAME").toString();
	
	if(gender.equals("1"))
	{
		gender="Male";
		
	}
	else{
		gender="female";
	}
	
	
	
	conn.close();
}







%>




 
 
 
 
 
 
 
 
 
 
 <div id="OtherDetails">


<div id="Heading"> 
DETAILS
</div>

<table style="table-layout: fixed; width: 450px;"> 

<tr> <td id="Left"> Name </td> <td id="Right"> <%=name  %></td> </tr>

<tr> <td id="Left"> Gender </td> <td id="Right"> <%=gender %> </td> </tr>
<tr> <td id="Left"> Field </td> <td id="Right"> <%=field %></td> </tr>
<tr> <td id="Left"> Institution </td> <td id="Right"><%=institution %>  </td> </tr>
<tr> <td id="Left"> Qualification </td> <td id="Right"> <%=qulaification %></td> </tr>
<tr> <td id="Left"> About</td> <td id="Right" style="word-wrap: break-word"> <%=about %> </td> </tr>





</table>

 
</div> <!--End Of Other Details-->
 

<div id="FolloweesList">

<div id="Heading">
FOLLOWEES TABLE
</div> <!--End of one name-->


<table>
    <thead>
        <tr>
            <th>Followees</th>
            
        </tr>
    </thead>
        <tbody>
<%!String nameid,innername,innerurl,innerid,ftype;
ResultSet innerrs;%><%! int i,fid; %>
<%
ResultSet frs;
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
String fsql="SELECT * FROM VAIDHYANATHAN.FOLLOWERS WHERE FOLLOWERSID=?" ;
PreparedStatement fdoc=conn.prepareStatement(fsql);

fdoc.setString(1, emailid);

frs=fdoc.executeQuery();


while(frs.next()&&i<5)
{  i++;

	nameid=frs.getString("FOLLOWEESID").toString();
	ftype=frs.getString("FOLLOWEESPROFILE").toString();
	String psql;
	fid=Integer.parseInt(ftype);
	if(fid==2){
psql="SELECT * FROM VAIDHYANATHAN.USER_PUBLICATION WHERE USERID=?" ;
		PreparedStatement innerdoc=conn.prepareStatement(psql);

	innerdoc.setString(1,nameid);

		innerrs=innerdoc.executeQuery();
		innerrs.next();
		innername=innerrs.getString("NAME").toString();
		innerid=innerrs.getString("USERID").toString();
		innerurl="public_publication.jsp?src=" + innerid;
	}
	else if(fid==3){
		psql="SELECT * FROM VAIDHYANATHAN.USER_PROFESSOR WHERE USERID=?" ;
		PreparedStatement innerdoc=conn.prepareStatement(psql);

	innerdoc.setString(1,nameid);

		innerrs=innerdoc.executeQuery();
		innerrs.next();
		innername=innerrs.getString("NAME").toString();
		innerid=innerrs.getString("USERID").toString();
		innerurl="public_professor.jsp?src=" + innerid;
		
		
	}
	else if(fid==4){
		psql="SELECT * FROM VAIDHYANATHAN.USER_TOPPER WHERE USERID=?" ;
		PreparedStatement innerdoc=conn.prepareStatement(psql);

	innerdoc.setString(1,nameid);

		innerrs=innerdoc.executeQuery();
		innerrs.next();
		innername=innerrs.getString("NAME").toString();
		innerid=innerrs.getString("USERID").toString();
		innerurl="public_topper.jsp?src=" + innerid;
	}
	else if(fid==5){
		
		psql="SELECT * FROM VAIDHYANATHAN.USER_STUDENT WHERE USERID=?" ;
		PreparedStatement innerdoc=conn.prepareStatement(psql);

	innerdoc.setString(1,nameid);

		innerrs=innerdoc.executeQuery();
		innerrs.next();
		innername=innerrs.getString("NAME").toString();
		innerid=innerrs.getString("USERID").toString();
		innerurl="public_student.jsp?src=" + innerid;
		
	}
	
	
	%>




        <tr>
            <td><a href=<%=innerurl %>><%=innername %></a></td>
           
        </tr>
         <%

	
}
conn.close();


%>
    </tbody>
</table>












</div> <!--End of FolloweesList-->
<div id="NamePhoto" >
<%ServletContext context = pageContext.getServletContext();
 String filePath = context.getInitParameter("profile-upload");
String photourl=filePath + session.getAttribute("profilepic").toString(); %>
<img src=<%=photourl %> width="150px" height="150px" style="margin:30px 25px 0 25px;"/> <br/>

<b style="color:#140F55;"><%=name  %></b> <br/><%=city %><br/> <%=country %> <br/>

</div>

<!-- End Of NamePhoto-->

<br/>
<%! String docname,likes,dislike,time,url;
		Timestamp timestamp;
		double rating,l,d;%>

        










<br/>
 <!--End of DocumentsList--> 



<div id="ForumsList">

<div id="Heading"> 
FORUMS
</div> <br/>


<table id="forums" class="display">
    <thead>
        <tr>
            <th>Forum Title</th>
            <th>Views</th>
            <th>Uploaded On</th>
        </tr>
    </thead>
        <tbody>
<%! String forumname,forumtime;
		Timestamp timestampforum;
		int forumviews;
%>
<%
ResultSet forumrs;
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
String forumsql="SELECT * FROM VAIDHYANATHAN.FORUMS AS FORUMS WHERE FORUMS.EMAILID=? ORDER BY FORUMS.TIMESTAMP DESC" ;
PreparedStatement forum=conn.prepareStatement(forumsql);

forum.setString(1, emailid);

forumrs=forum.executeQuery();


while(forumrs.next())
{  
	
	timestamp=forumrs.getTimestamp("timestamp");
	SimpleDateFormat dateFormat = new SimpleDateFormat(" dd-MM-yyyy ");
	
	forumtime = dateFormat.format(timestamp);	
forumviews=forumrs.getInt("VIEWS");
forumname=forumrs.getString("NAME");
	
	url="forum_action.jsp?src=" +forumrs.getString("FORUMID").toString();
	
	%>




        <tr>
            <td><a href=<%=url %>><%=forumname %></a></td>
            <td><%=forumviews %></td>
            <td><%=forumtime %></td>
        </tr>
         <%

	
}
conn.close();


%>
    </tbody>
</table>

        




















</div> <!--End of ForumsList-->
<br />
<div id="likelist"height="300px">
<div id="Heading">Liked Documents</div>
<table id="likesdocs" class="display">
    <thead>
        <tr>
            <th>Documents Title</th>
            <th>Views</th>
            <th>Uploaded On</th>
        </tr>
    </thead>
        <tbody>
<%! String likesname,likestime,lstring,dstring; int llikes,ldislikes;
Double lrating,ll,ld;
		Timestamp likestimestamp;
		int likesviews;
%>
<%
ResultSet likesrs;
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
String likessql="SELECT DOCUMENTS.DOCNAME, DOCUMENTS.LIKES, DOCUMENTS.DISLIKE, DOCUMENTS.TIMESTAMP, DOCUMENTS.DOCID FROM VAIDHYANATHAN.DOCUMENTS AS DOCUMENTS, VAIDHYANATHAN.LIKES AS LIKES WHERE LIKES.EMAILID = ? AND DOCUMENTS.DOCID = LIKES.DOCID ORDER BY DOCUMENTS.TIMESTAMP ASC" ;
PreparedStatement likes=conn.prepareStatement(likessql);

likes.setString(1, emailid);

likesrs=likes.executeQuery();


while(likesrs.next())
{  
	likesname=likesrs.getString(1).toString();
	llikes=likesrs.getInt(2);
	
	ldislikes=likesrs.getInt(3);
	likestimestamp=likesrs.getTimestamp(4);
	lstring=Integer.toString(llikes);
	dstring=Integer.toString(ldislikes);
	l=Double.parseDouble(lstring);
	d=Double.parseDouble(dstring);
	lrating=(l-d)/(l+d);
	lrating = Math.round( lrating * 10.0 ) / 10.0;
	if(l==0&&d==0){lrating=0.0;}
	
SimpleDateFormat dateFormat = new SimpleDateFormat(" dd-MM-yyyy ");
	
	likestime = dateFormat.format(likestimestamp);	
	url="bookdescription.jsp?src="+likesrs.getString(5).toString();
	
	
	%>




        <tr>
            <td><a href=<%=url %>><%=likesname %></a></td>
            <td><%=lrating %></td>
            <td><%=likestime %></td>
        </tr>
         <%

	
}
conn.close();


%>
    </tbody>
</table>
</div>
<br />
<div id="dislikelist" height="300px">
<div id="Heading">Liked Books</div>


<table id="dislikesdocs" class="display">
    <thead>
        <tr>
            <th>Documents Title</th>
            <th>Views</th>
            <th>Uploaded On</th>
        </tr>
    </thead>
        <tbody>

<%

conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
 likessql="SELECT BOOKS.DOCNAME, BOOKS.LIKES, BOOKS.DISLIKE, BOOKS.TIMESTAMP, BOOKS.DOCID FROM VAIDHYANATHAN.BOOKS AS BOOKS, VAIDHYANATHAN.LIKES AS LIKES WHERE LIKES.EMAILID = ? AND BOOKS.DOCID = LIKES.DOCID ORDER BY BOOKS.TIMESTAMP ASC" ;
 likes=conn.prepareStatement(likessql);

likes.setString(1, emailid);

likesrs=likes.executeQuery();


while(likesrs.next())
{  
	likesname=likesrs.getString(1).toString();
	llikes=likesrs.getInt(2);
	
	ldislikes=likesrs.getInt(3);
	likestimestamp=likesrs.getTimestamp(4);
	lstring=Integer.toString(llikes);
	dstring=Integer.toString(ldislikes);
	l=Double.parseDouble(lstring);
	d=Double.parseDouble(dstring);
	lrating=(l-d)/(l+d);
	lrating = Math.round( lrating * 10.0 ) / 10.0;
	if(l==0&&d==0){lrating=0.0;}
	
SimpleDateFormat dateFormat = new SimpleDateFormat(" dd-MM-yyyy ");
	
	likestime = dateFormat.format(likestimestamp);	
	url="bookdescription.jsp?src="+likesrs.getString(5).toString();
	
	%>




        <tr>
            <td ><a href=<%=url %>><%=likesname %></a></td>
            <td><%=lrating %></td>
            <td><%=likestime %></td>
        </tr>
         <%

	
}
conn.close();


%>
    </tbody>
</table>










</div>
</div>
</div>
</body>
</html>
