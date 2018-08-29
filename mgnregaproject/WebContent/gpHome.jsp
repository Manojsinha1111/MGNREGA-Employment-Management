<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>gpHome</title>
</head>

<body>
<div align="center">
<img src="images/mgnregalogo.JPG">
</div>
<body background="images/tricolor-1286684_960_720.jpg" size="100%" repeat="no-repeat">
<hr>
<div align="left">
<button><a href="index.jsp">Home</a></button><br>
</div>
<div align="right">
<right><button type="updateprofilegp.jsp">Profile</button>  <button>Logout</button>
</div>





<center><b><u></u><font color="black" size="6">WELCOME TO GP HOME</b></center></font></u><br><br><br>

<img class="mySlides" src="images/gp1.jpg" width="580" height="300" align="right">
  <img class="mySlides" src="images/gp2.jpg"width="580" height="300" align="right">
  <img class="mySlides" src="images/gp3.jpg" width="580" height="300" align="right">
   <img class="mySlides" src="images/gp4.jpg" width="580" height="300" align="right">

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
<a href="ShowProjectDetails" style="text-decoration: none"><b><font color="darkslateblue" size="5">1.Show Project Details</b></font></a>
</tr><br><br>

<%  String k=request.getParameter("id");

//out.print("  <a href='registeremployee.jsp?id="+k+"' style='text-decoration: none'><b><font color='darkslateblue' size='5'>2.Register Employee</b></font></a>");
%>
<a href="registeremployee.jsp?id=<%=k%>" style="text-decoration: none"><b><font color="darkslateblue" size="5">2.Register Employee</a>

<!-- 
<tr>
<a href="assignemployee.jsp" style="text-decoration: none"><b><font color="darkslateblue" size="5">3.Assign Employee To Job</b></font></a>
</tr><br><br>
 -->

<tr><br><br>
<a href="ViewEmpDetails" style="text-decoration: none"><b><font color="darkslateblue" size="5">3.View Employee Details</b></font></a>
</tr><br><br>

</table>

</body><br><br>

<div>
<center>
<button><a href="index.jsp">Back</a></button><br>
</center>
</div>
</html>