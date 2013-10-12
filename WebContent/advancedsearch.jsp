<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp"%>
    <%@ include file="common-header-logout.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<link href= "css/advancedsearch.css" rel="stylesheet" type="text/css" />
<link href= "css/custom.css" rel="stylesheet" type="text/css" />

<link href="css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet">
<script src="js/jquery-1.8.3.js"></script>
<script src="js/jquery-ui-1.9.2.custom.js"></script>
<script src="js/myscript.js"></script>

</head>

<body>
<div id="advancedsrch_layout">
<h2 style="color:#10253F">Advanced Search</h2>
<div id="search_details"><form action="#" method="post" enctype="application/x-www-form-urlencoded" name="adsrch"><table align="center"><tr><td><h3>Select a Category</td>
<td>:<select name="category" style="width:290px;">
<option>Document</option>
<option>Profile</option>
<option>Book</option>
</select></h3></td></tr>
<tr><td><h3>Search By</td>
<td>:<input name="type" type="radio" value="Title" checked />Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="type" type="radio" value="Description" />Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="type" type="radio" value="author" />Author</h3></td></tr>
<tr>
<td><h3>What to search</td>
<td>:<input name="searchitem" type="text" size="50" maxlength="100" class="feedbackmaterial"/></td>
</tr>
<tr>
<td><h3>Display results</td>
<td>:<input name="num" type="radio" value="r10" checked />10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="num" type="radio" value="r20" />20&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="num" type="radio" value="r30" />30</h3></td></tr>
</td>
</tr>
<tr>
<td><h3>Order by</td><td>:
<select name="order" style="width:290px;">
<option>Newest to Oldest</option>
<option>Oldest to Newest</option>
<option>Popular Documents</option>
</select></h3></td>
</tr>

<tr><td colspan="2" align="center"><input name="" type="submit" value="Submit" id="button" /></td></tr>
</table>
</form> </div>

</div>
</body>
<%@ include file="common.jsp" %>
</html>

