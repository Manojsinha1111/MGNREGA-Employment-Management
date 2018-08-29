<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update Project</title>
</head>
<body background="images/tricolor.jpg" style="background-size:cover;">
<div align="center">
<img src="images/mgnregalogo.JPG">
</div>

<hr>
<body>
<button><a href="bdoHome.jsp">Home</a></button>  <button>Logout</button><br>

<form action="UpdateProjectSrv" method="post">
  <br><fieldset style="margin-left: 25%;margin-right: 25%" onmouseover="blur()">
    <legend><b>Project Updation:</b></legend>
	Project Id:<br>
    <input type="text" name="pid" placeholder="Enter Project Id" required><br>
    Project Name:<br>
    <input type="text" name="pname" placeholder="Enter Name" required><br>
   <div><img align="right" width="30%" height="30%" src="images/update_ico.png"></div>
    Starting Date:<br>
    <input type="date" name="pdate"><br>
    
    
    Project Duration:<br>
    <input type="text" name="duration"><br>
    Project Purpose:<br>
   <input type="text" name="projectpurpose"style="height:100px;width:180px; maxlength="50"><br>
    Project Budjet:<br>
    <input type="text" name="budjet"><br><br>
   <div align="right" margin-right="10px"> <input  type="submit" value="update" >
   <button><a href="bdoHome.jsp">Cancel</a></button>
    </div>
		</fieldset>
</form>
<%
if(session.getAttribute("update")!=null)
{
	String str=(String)session.getAttribute("update");
	if(str.equals("true"))
	{
	%>
	<h3>Project Updated...!!!</h3>
	<%
	session.invalidate();
	}
	else{
	%>
	<h3>Invalid Project.Please provide valid project id.</h3>
	<%} }%>







</body>
<div="down">
<!-- <center><button> <a href="bdoHome.jsp">Back</button></a></center> -->
</div>
</html>