<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="content-type" content="text/html;charset=utf-8" />

<title>Contact us</title>

	<link type="text/css" href="menu.css" rel="stylesheet" />
	<script type="text/javascript" src="jquery.js"></script>
	<script type="text/javascript" src="menu.js"></script>
    
 
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
 
    <script type="text/javascript" src="js/swfobject.js"></script>
	<script type="text/javascript">
        var flashvars x= {};
        flashvars.xml_file = "photo_list.xml";
        var params = {};
        params.wmode = "transparent";
        var attributes = {};
        attributes.id = "slider";
        swfobject.embedSWF("flash_slider.swf", "flash_grid_slider", "440", "220", "9.0.0", false, flashvars, params, attributes);
    </script>
    
    <link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" />    
    
    
    
    
    <!-- 
     jQuery lightBox plugin
    
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script>
    <link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" media="screen" />
    /  jQuery lightBox plugin
     -->
     
     
     
     
     
     
    <!-- jQuery lightBox plugin -->
    
    
    
    <script type="text/javascript">
    $(function() {
        $('#map a').lightBox();
    });
    </script>

</head>
<body>



<!-- navigation bar -->

<style type="text/css">
* { margin:0;
    padding:0;
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
         <li><a href="home.jsp" ><span>Home</span></a>
        <li><a href="about.jsp" ><span>About</span></a></li>
         <li><a href="follow.jsp"><span>Follow</span></a></li> 
        <li><a href="gallery.jsp"><span>Photo Gallery</span></a></li>
        <li class="last"><a href="#"><span>Contact us</span></a></li>
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













<div id="tooplate_wrapper">

    <div id="tooplate_middle">
    	
        <div id="mid_left">
            <div id="mid_title">
                Contact Information	
          </div>
            <p>we will be pleased in whatever we can help you... <br> please leave your comments bellow </p>
            <!-- <div id="learn_more"><a href="#">Learn More</a></div> -->
	  	</div>
        <div class="cleaner"></div>
	</div> <!-- end of middle -->
    
    <div id="tooplate_main_top"></div>
    <div id="tooplate_main">
    	
        <div class="col_w420 float_l">
            <div id="contact_form">
        
                <h4>Quick Contact Form</h4>
                
                <form method="post" name="contact" action="#">
					
						<label for="author">Name:</label> <input type="text" id="author" name="author" class="required input_field" />
						<div class="cleaner h10"></div>
													
						<label for="email">Email:</label> <input type="text" class="validate-email required input_field" name="email" id="email" />
						<div class="cleaner h10"></div>
											
						<label for="subject">Subject:</label> <input type="text" class="validate-subject required input_field" name="subject" id="subject"/>				               
						<div class="cleaner h10"></div>
							
						<label for="text">Message:</label> <textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>
						<div class="cleaner h10"></div>				
												
						<input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />
						<input type="reset" value="Reset" href="Contact.jsp" id="reset" name="reset" class="submit_btn float_r" />
						
				</form> 

            </div> 
        </div>
            
        <div class="col_w420 float_r">
            <h4>Where We Are</h4>
            <div id="map">
                <a href="images/map.png" title="Where We Are">
                    <img width="300" height="200" src="images/map.png" alt="Where We Are" class="image_wrapper" />
                </a>
    </div>                
            <div class="cleaner h30"></div>
            
            <h4>Mailing Address</h4>
            <h6><strong>rojgaar sewa</strong></h6>
            haldia institute of technology,haldia, <br />
    purba Medinipur<br />
           West Bengal<br /><br />
            
            <strong>Phone:</strong> 9876543210<br />
            <strong>Email:</strong> <a href="mailto:message@mgnrega.com">message@mgnrega.com</a> 
        </div>    	

    	<div class="cleaner"></div>
    </div> <!-- end of main -->
    <div id="tooplate_main_bottom"></div>

</div> <!-- wrapper -->

<div id="tooplate_footer_wrapper">
	<div id="tooplate_footer">
        Copyright © 2048 <a href="#">Company Name</a> 
        | Design: <a href="http://www.mgnrega.com">mgnrega</a>
	</div>
</div>



<div id="copyright">Copyright &copy; 2017 <a href="http://apycom.com/"></a></div>
</body>
</html>