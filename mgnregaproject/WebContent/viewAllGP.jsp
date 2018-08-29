<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="com.mgnrega.bean.GpBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GramPanchayatMembers</title>
</head>
<body background="images/tricolor.jpg" style="background-size:cover;">
<div align="center">
<img src="images/mgnregalogo.JPG">
</div>
<hr>
<body>
<%Object obj=session.getAttribute("glist");
if(obj!=null)
{
	ArrayList<GpBean> glist=(ArrayList<GpBean>)obj;

%>


<table border="1" align="center">
<tr><th> ID</th><th>Name</th><th>Gender</th><th>Martial Status</th><th>Salary</th><th>Joining date</th></tr>
<%
for(GpBean g:glist)
{%>

<tr><td><%=g.getId() %></td><td><%=g.getName() %></td><td><%=g.getGender() %></td><td><%= g.getMarital_status()%></td><td><%=g.getSalary() %></td><td><%=g.getJoin_date() %></td></tr>

<%} %>
</table>
<%}else{ %>
<h3>Session fails...</h3>
<%} %>
</body>
<div="down">
<center><button> <a href="bdoHome.jsp">Back</button></a></center>
</div>
</html>