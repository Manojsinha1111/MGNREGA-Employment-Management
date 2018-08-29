<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>


	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style_login_bdo.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	
</head>

<body>








<form action="GpLoginSrv" method="post">

	<div class="container">
		
		 <div class="top">
		
			<h1 id="title" class="hidden"><span id="logo">Gram Panchayat <span></span></span></h1>
		</div> 
		
		<div class="login-box animated fadeInUp">
		
			<div class="box-header">
				<h2>Log In</h2>
			</div>
			<label for="username">UserID</label>
			<br/>
			<input type="text" id="username" name="uid" required>
			<br/>
			<label for="password">Password</label>
			<br/>
			<input type="password" id="password" name="pass" required>
			<br/>
			<button type="submit">Sign In</button>
			<br/>
			
		</div>
	</div>
	</form>
</body>

<script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="username"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
</script>
<%
Object obj=session.getAttribute("invalid");
if(obj!=null)
{%><pre><h4>        Invalid UserId or Password</h4></pre>
<%
session.invalidate();	
}
%>

</html>