<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="com.mgnrega.dao.GpDao" %>
    <%@page import="com.mgnrega.dao.GpDaoImpl" %>
    <%@page import="com.mgnrega.bean.ProjectBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Employee</title>
</head>
<body background="images/tricolor.jpg" style="background-size:cover;">
<div align="center">
<img src="images/mgnregalogo.JPG">
</div>

<hr>

<body>
<button><a href="gpHome.jsp">Home</a></button>  <button>Logout</button><br>
<% String k=request.getParameter("id");
System.out.println(k);
%>
<form action="RegisterEmp" method="get">
  <br><fieldset>
  <input type="text" name="gid" value=<%=k %> hidden >
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
    Enter Working Day<input type="text" name="day_worked">
  <br><br>
    Select Project Id:<select name="pid">
    <%GpDao dao=new GpDaoImpl();
      ArrayList<ProjectBean> alist=dao.getAllAssignedProject(k);
      
      for(ProjectBean pb:alist)
      {
    	  String pid=pb.getId();
    	  System.out.println(pid);
    
    %>
   <option><%= pid %></option> 
    
    <%} %>
    
    
    
    
    </select>
  
  
  
  
  
     <input type="submit" value="submit" >   <input type="reset" value="Reset">
  </fieldset>
</form>
</body>
<div="down">
<center><button> <a href="gpHome.jsp">Back</button></a></center>
<%
Object obj=session.getAttribute("me");
if(obj!=null){
 String str=(String)obj;%>
 <h3>Employee registered and his Id is:<%=str%></h3>
 <%}else{ %>
 <h3>not resgistered</h3>
   <%session.invalidate();} %>
</div>
</html>