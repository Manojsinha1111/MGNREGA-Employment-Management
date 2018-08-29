<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <title>Photo gallery</title>
    <link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
    
    
    
    
    <meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="js/swfobject.js"></script>
	<script type="text/javascript">
        var flashvars = {};
        flashvars.xml_file = "photo_list.xml";
        var params = {};
        params.wmode = "transparent";
        var attributes = {};
        attributes.id = "slider";
        swfobject.embedSWF("flash_slider.swf", "flash_grid_slider", "440", "220", "9.0.0", false, flashvars, params, attributes);
    </script>
    
    <link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" />    
    
    <!-- Arquivos utilizados pelo jQuery lightBox plugin -->
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script>
    <link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" media="screen" />
    <!-- / fim dos arquivos utilizados pelo jQuery lightBox plugin -->
    
    <!-- Ativando o jQuery lightBox plugin -->
    <script type="text/javascript">
    $(function() {
        $('.lightbox').lightBox();
    });
    </script>
    
</head>
<body>


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
        <li><a href="about.jsp" ><span>About</span></a></li>
         <li><a href="follow.jsp"><span>Follow</span></a></li> 
        <li><a href="#"><span>Photo Gallery</span></a></li>
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



<!--  -----------------------end of navigation bar------------------------------ -->








<div id="tooplate_wrapper">

	<div id="tooplate_header">
        <div id="site_title">
        	<h1><a href="#">Brown Field</a></h1>
        </div>
        
    </div> <!-- end of forever header -->
    
    <div id="tooplate_middle">
    	<div id="mid_slider">
        	<div id="flash_grid_slider">
                <a rel="nofollow" href="http://www.adobe.com/go/getflashplayer">
                    <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" />
                </a>
			</div>	
        </div>
        <div id="mid_left">
            <div id="mid_title">
                Our Web Gallery	
          </div align="justify">
            <p>We have a web gallery gallery from where you can check each and every status of the currecnt work done. Our web gallery contains huge amount of photos from which some of them are listed below.</p>
            
	  	</div>
        <div class="cleaner"></div>
	</div> <!-- end of middle -->
    
    <div id="tooplate_main_top"></div>
    <div id="tooplate_main">
    	
        <div id="gallery">
        	<div class="gallery_box">
                <a class="lightbox" href="images/gallery/nrega.jpg" title="Cras nec nisl a enim ornare imperdiet.">
				<img width="300" height="150" src="images/gallery/nrega.jpg" alt="Image 01" class="image_wrapper" />
                </a>
                <p>The Govt. of India has passed the National Rural Employment Guarantee Act 2005 in September 2005. It was later extended to all rural areas of the entire </p>
                <a href="#" class="more float_l">Visit</a>
                <a href="#" class="more float_l">Detail</a>
                <div class="cleaner"></div>
			</div>
            <div class="gallery_box">
                <a class="lightbox" href="images/gallery/nrega1.png" title="Sed in urna neque nec arcu arcu, sed pretium lacus.">
                    <img src="images/gallery/nrega1.png" alt="Image 02" class="image_wrapper" />
                </a>
                <p>VALPOI: Under the National Rural Employment Guarantee scheme (NREGA) the village panchayat Savordem in Valpoi, has started the work of cleaning the gutters</p>
                <a href="#" class="more float_l">Visit</a>
                <a href="#" class="more float_l">Detail</a>
                <div class="cleaner"></div>
			</div>
            <div class="gallery_box gb_lmb">
                <a class="lightbox" href="images/gallery/nrega2.jpg" title="Integer est sem, dignissim quis auctor vel.">
                    <img src="images/gallery/nrega2.jpg" alt="Image 03" class="image_wrapper" />
                </a>
                <p>Women working on an NREGA site building a pond in Gopalpura, Jhabua, Madhya Pradesh</p>
                <a href="#" class="more float_l">Visit</a>
                <a href="#" class="more float_l">Detail</a>
                <div class="cleaner"></div>
			</div>
            <div class="gallery_box">
                <a class="lightbox" href="images/gallery/nrega3.jpg" title="Vivamus volutpat, elit non tempor vehicula.">
	                <img src="images/gallery/nrega3.jpg" alt="Image 04" class="image_wrapper" />
                </a>
                <p><b><span class="orange">too</span><span class="green">plate</span></b> provides free HTML CSS templates for your websites.</p>
                <a href="#" class="more float_l">Visit</a>
                <a href="#" class="more float_l">Detail</a>
                <div class="cleaner"></div>
			</div>
            <div class="gallery_box">
                <a class="lightbox" href="images/gallery/nrega4.jpg" title="Nulla pharetra blandit nunc, ut volutpat leo tincidunt eget.">
                	<img src="images/gallery/nrega4.jpg" alt="Image 05" class="image_wrapper" />
                </a>
                <p>Elderly villagers work at a site as part NREGA at Nazir ka Mandir in Karauli district <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> and <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.</p>
                <a href="#" class="more float_l">Visit</a>
                <a href="#" class="more float_l">Detail</a>
                <div class="cleaner"></div>
			</div>
            <div class="gallery_box gb_lmb">
                <a class="lightbox" href="images/gallery/nrega5.jpg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit.">
                <img src="images/gallery/nrega5.jpg" alt="Image 06" class="image_wrapper" />
                </a>
                <p>Nunc at lectus justo, in auctor metus. Etiam vel orci vitae elit laoreet et  mauris.</p>
                <a href="#" class="more float_l">Visit</a>
                <a href="#" class="more float_l">Detail</a>
                <div class="cleaner"></div>
			</div>
        </div> 
             
		<div class="cleaner"></div>
    </div> <!-- end of main -->
    
    <div id="tooplate_main_bottom"></div>
	
</div> <!-- wrapper -->

<div id="tooplate_footer_wrapper">
	<div id="tooplate_footer">
     <div id="copyright">Copyright &copy; 2017 <a href="http://apycom.com/"></a></div>
       
	</div>
</div>


</body>
</html>