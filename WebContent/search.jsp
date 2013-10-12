<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ page import="java.sql.*" %>
    <%@include file="common-header-logout.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
<style type="text/css">
#srch
{
bgcolor:#f5f5f5;
width:1000px;
height:auto;

}
</style>
</head>
<body>
<table border="0" id="srch"><th>RECOMMENDATIONS FOR SEARCH</th>
<%! String desc; %>
<%
String innerid,innername,innerurl,innerid1,innername1,innerurl1;
String s1=request.getParameter("search").toString();


Connection conn=null;
ResultSet rs=null;
Statement st=null;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
s1="%" + s1 +"%";
String c="SELECT * FROM VAIDHYANATHAN.BOOKS WHERE DOCNAME LIKE '" + s1 +"' ";
PreparedStatement innerdoc=conn.prepareStatement(c);

//innerdoc.setString(1,s1);

rs=innerdoc.executeQuery();
while(rs.next())
{
innerid=rs.getString("DOCID").toString();
innername=rs.getString("DOCNAME").toString();
desc=rs.getString("DOCDESCRIPTION").toString();
innerurl="bookdescription.jsp?src=" + innerid;
%>
<tr>
            <td><a href=<%=innerurl %>><%=innername %></a></td>
           
        </tr><br/>
        <tr>
        <td>
        <%=desc %>
        </td>
        </tr>
<%
}


ResultSet  rs1=null;
String sql="SELECT * FROM VAIDHYANATHAN.DOCUMENTS WHERE DOCNAME LIKE '" + s1 + "' ";
PreparedStatement innerdoc1=conn.prepareStatement(sql);

//innerdoc1.setString(1,s1);

rs1=innerdoc1.executeQuery();
while(rs1.next())
{
innerid1=rs1.getString("DOCID").toString();
innername1=rs1.getString("DOCNAME").toString();
desc=rs1.getString("DOCDESCRIPTION").toString();
innerurl1="documentdescription.jsp?src=" + innerid1;
%>
<tr>
            <td><a href=<%= innerurl1 %>><%= innername1 %></a></td>
           
        </tr><br/>
<tr>
        <td>
        <%=desc %>
        </td>
        </tr>
        
<%
}
%>
</table> 

</body>
</html>