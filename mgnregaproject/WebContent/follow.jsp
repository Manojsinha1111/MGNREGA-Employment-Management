<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Follow us at</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        
    <link type="text/css" href="menu.css" rel="stylesheet" />
	<script type="text/javascript" src="jquery.js"></script>
	<script type="text/javascript" src="menu.js"></script>

        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
        

        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
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
    <body background="images/tricolor.jpg" style="background-size:cover;">
    <!-- navigation bar -->


<style type="text/css">
* { margin:0;
    paddi ng:0;
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
        <li><a href="index.jsp" ><span>Home</span></a>
        <li><a href="#" ><span>About</span></a></li>
        <li><a href="#"><span>Follow</span></a></li>
         <li><a href="gallery.jsp"><span>Photo Gallery</span></a></li>
        <li class="last"><a href="contact.jsp"><span>Contact us</span></a></li>
          <li class="last"><a href="home.jsp/#contact"><span>Feedback</span></a></li>
           <li><a href="#" class="parent"><span>Login</span></a>			
             <div><ul>
         				 <li><a href="login_bdo.jsp"><span>BDO</span></a></li>
                        <li><a href="login_gp.jsp"><span>Gram Panchyat</span></a></li>
           </li>
                    </ul></div>

</ul></div>
        </li>



<!--  -----------------------end of navigation bar------------------------------ -->

    
    
    
    
    <section class="features" id="features">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 wow fadeIn">
						<h2>Contact us</h2>
					</div>
					<div class="col-md-3 col-sm-6 wow fadeInLeft">
						<div class="single-service">
							<p style="background:#EE3867;"><i class="fa fa-heart-o"></i></p>
							<h3>Facebook</h3>
							<p>Love social media? follow us</p>
							<p><a href="">Follow</a></p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 wow fadeInLeft">
						<div class="single-service">
							<p style="background:#3DB39D;"><i class="fa fa-pencil"></i></p>
							<h3>Twitter</h3>
							<p>Love Social media? Follow us</p>
							<p><a href="">Follow</a></p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 wow fadeInRight">
						<div class="single-service">
							<p style="background:#57C7ED;"><i class="fa fa-mobile"></i></p>
							<h3>Google +</h3>
							<p>Follow to get a direct contact with us</p>
							<p><a href="">Follow</a></p>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 wow fadeInRight">
						<div class="single-service">
							<p style="background:#324E5C;"><i class="fa fa-smile-o"></i></p>
							<h3>LinkedIn</h3>
							<p></p>
							<p><a href="">Follow</a></p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Features Section Ends Here -->
    
    
    
    
			
			
			
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
		<div id="copyright">Copyright &copy; 2017 <a href="http://apycom.com/"></a></div>
</body>
</html>