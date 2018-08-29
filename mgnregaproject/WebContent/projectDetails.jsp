<%@page import="com.mgnrega.bean.ProjectBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project Details</title>
</head>
<body background="images/tricolor.jpg" style="background-size:cover;">
<div align="center">
<img src="images/mgnregalogo.JPG">
</div>
<body>
<button><a href="gpHome.jsp">Home</a></button>  <button>Logout</button><br>
<!-- <br><fieldset style="margin-left: 25%;margin-right: 25%"> -->
 <% Object obj=session.getAttribute("p_details");
  if(obj!=null)
  {
	  ArrayList<ProjectBean> bean=(ArrayList<ProjectBean>)obj;
  

%> 

   <center> <font size="5"><b>Project Details:</b></font></center><br><br>


<table border="1" align="center">
<tr><th>Project ID</th><th>Start Date</th><th>End Date</th><th>Duration</th><th>Purpose</th><th>Budget</th><th>Status</th></tr>
<%for(ProjectBean a:bean){ %>
<tr><td><%=a.getBid() %></td>
<td><%=a.getStart_date() %></td>
<td><%=a.getEnd_date() %></td>
<td><%=a.getDuration() %></td>
<td><%=a.getPurpose() %></td>
<td><%=a.getBudget() %></td>
<td><%=a.getStatus() %></td></tr>

<%}}else{ %>
<h1>No Project Assigned.</h1>
<%} %>










</table>














   
     </div>
		</fieldset>
</body>
</html>