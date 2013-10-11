<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="InsertAdmin.jsp" method="post" onsubmit="validate()" name="form1" class="feedback" id="form1">
    
    <table width="902" border="0" cellpadding="5px">
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
        <td>&nbsp;</td>
        <td><input type="submit" name="submit" id="button" value="Submit" /></td>
      </tr>
      </table>
      </form>
      
</body>
</html>