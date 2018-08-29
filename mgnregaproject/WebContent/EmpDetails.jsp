<%@page import="com.mgnrega.bean.EmpBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Details</title>
</head>
<body background="images/tricolor.jpg" style="background-size:cover;">
<div align="center">
<img src="images/mgnregalogo.JPG">
</div>
<body>
<button><a href="gpHome.jsp">Home</a></button>  <button>Logout</button><br>
<!-- <br><fieldset style="margin-left: 25%;margin-right: 25%"> -->
 <% Object obj=session.getAttribute("e_details");
  if(obj!=null)
  {
	  ArrayList<EmpBean> bean=(ArrayList<EmpBean>)obj;
  

%> 

   <center> <font size="5"><b>Employee Details:</b></font></center><br><br>


<table border="1" align="center">
<tr><th>Employee ID</th><th>Name</th><th>Join Date</th><th>Salary</th><th>Gender</th><th>Marital Status</th><th>Days Worked</th></tr>
<%for(EmpBean a:bean){ %>
<tr><td><%=a.getId() %></td>
<td><%=a.getName() %></td>
<td><%=a.getJoin_date() %></td>
<td><%=a.getSalary() %></td>
<td><%=a.getGender() %></td>
<td><%=a.getMarital_status() %></td>
<td><%=a.getDays_worked() %></td></tr>

<%}}else{ %>
<h1>No Employee Assigned.</h1>
<%} %>










</table>














   
     </div>
		</fieldset>
</body>
</html>