<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assign Project to Gram Panchayat</title>
</head>
<body background="images/tricolor.jpg" style="background-size:cover;">
<div align="center">
<img src="images/mgnregalogo.JPG">
</div>

<hr>
<body>
<button><a href="bdoHome.jsp">Home</a></button>  <button>Logout</button><br><br><br><br>
<form action="AssignProjectDone" method="post">
<div>
<center>

Select GP Id:
<select name="gpsid">

<%
Object obj=session.getAttribute("gpid");
if(obj!=null)
{
	ArrayList<String> alist=(ArrayList<String>)obj;
    for(String str:alist)
    {
%>
    <option><%=str%></option>
   <%}} %>

</select>


Select Project Id:
<select name="psid">

<%
Object obj1=session.getAttribute("pid");
if(obj1!=null)
{
	ArrayList<String> pidlist=(ArrayList<String>)obj1;
    for(String str1:pidlist)
    {
%>
    <option><%=str1%></option>
   <%}} %></select></center></div>
<br>
<div align="center"> <input type="submit" value="submit" ></div>



</form>
<%Object obj2=session.getAttribute("flag");
if(obj2!=null)
{
	String str=(String)obj2;
	if(str.equals("true"))
	{
%>
  <h3>Project Assigned to Gram Panchayat</h3>
  <%session.invalidate();}
else{%>
<h3>Sorry...Project not assigned</h3>
<%session.invalidate();}} %>

</body>
</html>