<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>bdoHome</title>
</head>

<body background="images/tricolor-1286684_960_720.jpg" size="100%" repeat="no-repeat">

<div align="center">
<img src="images/mgnregalogo.JPG">
</div>

<hr>
<div >
<button align="left"> <a href="index.jsp">Home</a></button>   <button onclick="LogoutSrv">Logout<button>
</div>

<center><b><u></u><font color="black" size="6">WELCOME TO BDO HOME</b></center></font></u><br><br><br>


<img class="mySlides" src="images/About MGNREGA - 540px.jpg" width="580" height="310" align="right">
  <img class="mySlides" src="images/manrega-m.jpg" width="580" height="310" align="right">
  <img class="mySlides" src="images/6.jpg" width="580" height="310" align="right">

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 3000); // Change image every 3 seconds
}
</script>








<table>
<tr>

</tr><br><br>
<%  String l=request.getParameter("id");

out.print("  <a href='createProject.jsp?id="+l+"' style='text-decoration: none'><b><font color='darkslateblue' size='5'>1. Create Project</b></font></a>");
%>
<tr><br><br>
<a href="updateProject.jsp" style="text-decoration: none"><b><font color="darkslateblue" size="5">2.Update Project</b></font></a>
</tr><br><br>

<tr>
<a href="ViewAllProject" style="text-decoration: none"><b><font color="darkslateblue" size="5">3.View All Projects</b></font></a>
</tr><br><br>


<tr>
<%  String k=request.getParameter("id");

out.print("  <a href='registerGP.jsp?id="+k+"' style='text-decoration: none'><b><font color='darkslateblue' size='5'>4.Register Gram Panchayat</b></font></a>");
%>
</tr><br><br>


<a href="ViewAllGP" style="text-decoration: none"><b><font color="darkslateblue" size="5">5.View all Gram Panchayat Members</b></font></a>
</tr><br><br>

<tr>
<a href="AssignProject" style="text-decoration: none"><b><font color="darkslateblue" size="5">6.Assign Project To Gram Panchayat</b></font></a>
</tr><br><br>

<tr>
<a href="viewgpbyid.jsp" style="text-decoration: none"><b><font color="darkslateblue" size="5">7.View Gram Panchayat Member By ID</b></font></a>
</tr>

</table>

<marquee behavior="alternate" direction="up" width="80%"><marquee direction="left"><b>Data entry for FY 2016-17 has been closed. User Manual for Capacity Building for Digital Payments.</b></marquee></marquee>


</body><br><br>

<div="down">
<center><button> <a href="index.jsp">Back</button></a></center>
</div>
</html>