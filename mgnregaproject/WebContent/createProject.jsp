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
<% String l=request.getParameter("id");
%>
<form action="CreateProjectSrv?uid=<%out.print(l); %>" method="post">
  <br><fieldset>
    <legend><b>Project Creation:</b></legend>
   
    Project Name:<br>
    <input type="text" name="pname" placeholder="Enter name" required><br>
    
    Starting Date:<br>
    <input type="date" name="date"><br>
    
    
    Project Duration:<br>
    <input type="text" name="duration"><br>
    Project Purpose:<br>
   <input type="text" name="projectpurpose"style="height:100px;width:180px; maxlength="50"><br>
    Project Budjet:<br>
    <input type="text" name="budget"><br><br>
    <input type="submit" value="Submit">
    
		</fieldset>
</form>
<%
if(session.getAttribute("invalid")!=null)
{
	String str=(String)session.getAttribute("invalid");

%>

<h3>Project is created and project Id is:<%=str %></h3>
<%} %>
</body>
<div="down">
<center><button> <a href="bdoHome.jsp">Back</button></a></center>
</div>
</html>