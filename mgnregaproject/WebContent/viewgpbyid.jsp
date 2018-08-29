<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.mgnrega.bean.GpBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Gram Panchayat</title>



</head>

<body background="images/tricolor-1286684_960_720.jpg"size="100%" repeat="no-repeat">
<div align="center">
<img src="images/mgnregalogo.JPG">
</div>

<hr>
<body>
<form action="ViewGpByIdSrv" method="post">
<div class="bg"></div>
<button><a href="bdoHome.jsp">Home</a></button>   <button>Logout</button><br><br><br>

<center><font size="4"><b>Enter Gram Panchayat id:</b></font> <input type="text" name="gpid"></center><br>
   <center><button type="submit"> Submit</button>

<button> <a href="bdoHome.jsp">Back</button></a></center>
</form>
<%Object obj=session.getAttribute("gp_bean");
Object obj1=session.getAttribute("invalid");
  if(obj1!=null)
  {
	  
    
    	 %>
    	 <h2>Invalid UserId.Please provide valid UserId</h2>
    	 
    	 <% 
    	 session.invalidate();
     }if(obj!=null){GpBean bean=(GpBean)obj;
%>

<table border="1" align="center">

<tr><th>ID</th><th>NAME</th><th>GENDER</th><th>MARITAL STATUS</th><th>SALARY</th><th>DATE OF JOINING</th></tr>
<tr><td><%=bean.getId() %></td><td><%=bean.getName() %></td><td><%=bean.getGender() %></td><td><%=bean.getMarital_status() %></td><td><%=bean.getSalary() %></td><td><%=bean.getJoin_date() %></td><td></td></tr>
</table>
<%session.invalidate(); }%>


</body>
</html>