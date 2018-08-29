<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="com.mgnrega.bean.ProjectBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View_project_project</title>
</head>
<body background="images/tricolor.jpg" style="background-size:cover;">
<div align="center">
<img src="images/mgnregalogo.JPG">
</div>

<hr>
<body>
<body>
<% Object obj=session.getAttribute("project_list");
if(obj!=null)
{
     ArrayList<ProjectBean> plist=(ArrayList<ProjectBean>)obj;
     
     %>
    
<table border="1" align="center">
<tr><th>Project ID</th><th>Project Name</th><th>Starting date</th><th>End date</th><th>Duration</th><th>Status</th><th>budget</th></tr>
<%for(ProjectBean p: plist)
	{
	%>
	
	
	<tr><td><%=p.getId() %></td><td><%=p.getName() %></td><td><%=p.getStart_date() %></td><td><%=p.getEnd_date() %></td><td><%=p.getDuration() %></td><td><%=p.getStatus() %></td><td><%=p.getBudget() %></td></tr>
	
	<%} %>
	</table>
	<%}else{ %>
	<h3>Session fails</h3>
	<%} %>
	<br>
	<div align="center"><button ><a href="bdoHome.jsp">Back</a></button></div>
	
</body>
</html>