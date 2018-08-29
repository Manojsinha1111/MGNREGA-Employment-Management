<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>


<style>
* {box-sizing:border-box}
body {font-family: Verdana,sans-serif;}
.mySlides {display:none}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
  margin-left: 0px;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 25px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 13px;
  width: 13px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 2.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>










 

 	<link type="text/css" href="menu.css" rel="stylesheet" />
	<script type="text/javascript" src="jquery.js"></script>
	<script type="text/javascript" src="menu.js"></script>
	
	
	
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
        

         <link rel="stylesheet" href="css/normalize.css"> 
        
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
		<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/slicknav.min.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="css/main.css">
       <script src="js/vendor/modernizr-2.8.3.min.js"></script> 
    
</head>
<body>

<!-- navigation bar -->

<style type="text/css">
* { margin:-50;
    padding:-50;
}
body { background:#171717; }
div#menu {
    margin:30px auto;
    width:80%;
    
}
div#copyright {
    margin:0 auto;
    width:80%;
    font:11px 'Trebuchet MS';
    color:#427015;
    text-indent:20px;
    padding:40px 0 0 0;
}
div#copyright a { color:#228b22; }
div#copyright a:hover { color:#427015; }
</style>

<div id="menu">
    <ul class="menu">
        <li><a href="#" ><span>Home</span></a>
        <li><a href="about.jsp" ><span>About</span></a></li>
         <li><a href="follow.jsp"><span>Follow</span></a></li> 
        <li><a href="gallery.jsp"><span>Photo Gallery</span></a></li>
        <li class="last"><a href="contact.jsp"><span>Contact us</span></a></li>
          <li class="last"><a href="feedback.jsp"><span>Feedback</span></a></li>
           <li><a class="parent"><span>Login</span></a>			
             <div><ul>
         				 <li><a href="login_bdo.jsp"><span>BDO</span></a></li>
                        <li><a href="login_gp.jsp"><span>Gram Panchyat</span></a></li>
           </li>
                    </ul></div>

</ul></div>
        </li>


<!-- ******************end of navigation bar*************************** -->





















<div class="slideshow-container">
<div align="center">
<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/nrega1.png"width="1380" height="550" >
  <div align="center" class="text">JAN JAN KA NAARA HAI,<br> ROJGAAR GUARANTEE HUMARA HAI!!!</div>
</div>




<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/nrega4.jpg" width="1380" height="550">
   <div align="center" class="text"></div> 
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="images/nrega5.jpg" width="1380" height="550">
   <div align="center" class="text"></div> 
</div>

</div></div>
<br>
 
<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 3000); // Change image every 2 seconds
}
</script>
            
     
    </section>
    
    
    
    
    <!-- ******************end of slide show*************************** -->
    
    
    
    
    
			<section class="footer-bottom">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p class="wow fadeInUp">Lets Contact</p>
							<ul  class="wow fadeInUp" class="list-unstyled">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-youtube"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble"></i></a></li>
								<li><a href=""><i class="fa fa-instagram"></i></a></li>
								<li><a href=""><i class="fa fa-rss"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</section>
		</div>
		
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.3.min.js"><\/script>')</script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
     
			  $("#owl-example").owlCarousel({
				items : 4,
				navigation : false,
				navigationText : ["prev","next"],
				paginationNumbers: true
			  });
			   $("#testimonial-carousel").owlCarousel({
				items : 1,
				itemsCustom : true,
				itemsDesktop : [1199,1],
				itemsDesktopSmall : [980,1],
				itemsTablet: [768,1],
				itemsTabletSmall: true,
				itemsMobile : [479,1],
				singleItem : true,
				itemsScaleUp : true,
				responsive : true
			   });
			   $("#clients-logo").owlCarousel({
				items : 6,
				paginationNumbers : false,
				navigation : false,
			   });
			});
		</script>
        <script src="js/wow.min.js"></script>
		<script>
		  new WOW().init();
		</script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
		<script type="text/javascript">
			// handle links with @href started with '#' only
			$(document).on('click', 'a[href^="#"]', function(e) {
				// target element id
				var id = $(this).attr('href');
				// target element
				var $id = $(id);
				if ($id.length === 0) {
					return;
				}
				// prevent standard hash navigation (avoid blinking in IE)
				e.preventDefault();
				// top position relative to the document
				var pos = $(id).offset().top;
				// animated top scrolling
				$('body, html').animate({scrollTop: pos}, 1000);
			});
		</script>
		<script type="text/javascript">
			// Create a clone of the menu, right next to original.
			$('.menu').addClass('original').clone().insertAfter('.menu').addClass('cloned').css('position','fixed').css('top','0').css('margin-top','0').css('z-index','500').css('background','#000').removeClass('original').hide();
			scrollIntervalID = setInterval(stickIt, 10);
			function stickIt() {
			  var orgElementPos = $('.original').offset();
			  orgElementTop = orgElementPos.top;
			  if ($(window).scrollTop() >= (orgElementTop)) {
				// scrolled past the original position; now only show the cloned, sticky element.

				// Cloned element should always have same left position and width as original element.     
				orgElement = $('.original');
				coordsOrgElement = orgElement.offset();
				leftOrgElement = coordsOrgElement.left;  
				widthOrgElement = orgElement.css('width');
				$('.cloned').css('left',leftOrgElement+'px').css('top',0).css('width',widthOrgElement).show();
				$('.original').css('visibility','hidden');
			  } else {
				// not scrolled past the menu; only show the original menu.
				$('.cloned').hide();
				$('.original').css('visibility','visible');
			  }
			}
		</script>
		<script src="js/jquery.slicknav.min.js"></script>
		<script>
			$(function(){
				$('#main-menu').slicknav();
			});
		</script>
    
    
    
    
    
    
    <div id="copyright">Copyright &copy; 2017 <a href="http://apycom.com/">www.mgnrega.com</a></div>
    

</body>
</html>

</body>
</html>