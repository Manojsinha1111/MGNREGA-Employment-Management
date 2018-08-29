<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Gp</title>
</head>
<body background="images/tricolor-1286684_960_720.jpg" size="100%" repeat="no-repeat">
<div align="center">
<img src="images/mgnregalogo.JPG">
</div>

<hr>
<body>
<button><a href="bdoHome.jsp">Home</a></button>  <button>Logout</button><br>
<% String k=request.getParameter("id");
%>
<form action="RegisterGpSrv?uid=<%out.print(k); %>" method="post">
  <br><fieldset>
    <legend><b>Personal Information:</b></legend>
    First name:<br>
    <input type="text" name="firstname" placeholder="Enter first name" required><br>
    Last name:<br>
    <input type="text" name="lastname" placeholder="Enter last name"><br>
    
    Gender:<br>
    <input type="radio" name="gender" value="male"> Male
    <input type="radio" name="gender" value="female"> Female<br>
    Marital Status:<br>
    <input type="radio" name="maritalstatus" value="married"> Married
    <input type="radio" name="maritalstatus" value="unmarried"> Unmarried<br>
    <value="required">
    Salary:<br>
    <input type="text" name="salary" placeholder="Enter salary"><br>
    Date Of Joining:<br>
    <input type="date" name="date"><br>
    
    Enter Password:<br>
    <input type="password"  name="password" placeholder="Enter password" required><br>
    Confirm Password:<br>
    <input type="password"  name="confirm_pass" placeholder="Confirm password" required><br><br>
     <input type="submit" value="submit" >   <input type="reset" value="Reset">
     
     
  </fieldset>
</form>
<%
if(session.getAttribute("invalid")!=null)
{
String str=(String)session.getAttribute("invalid");
if(str.equals("true"))
{
%>
<h3>Password did not matched.Please enter again.</h3>
<%
session.invalidate();
}
else{
%>
<h3>GP registered and Id is <%=str%></h3>
<%} }%>
</body>
<div="down">
<center><button> <a href="bdoHome.jsp">Back</button></a></center>
</div>
</html>