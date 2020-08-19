<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from shapebootstrap.net/demo/html/multi/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2017 05:43:57 GMT -->
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>URIPA</title>

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
    <body id="home" class="homepage" >
    	<header id="header" ">
    		<nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="banner" style="background-color:white; opacity: 1  ; height : 80px;">
    			<div class="container">
    				<div class="navbar-header"">
    					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
    						<span class="sr-only">Toggle navigation</span>
    						<span class="icon-bar"></span>
    						<span class="icon-bar"></span>
    						<span class="icon-bar"></span>
    					</button>
    					<a class="navbar-brand"  href="<?php echo base_url() . 'index.php'?>"><img style="position:relative;top: -10px; width: 200px; height: 100%;" src="<?php echo base_url() . 'component/web/images/UripaLogos.png'?>" alt="logo"></a>

    				</div>


    				<div class="collapse navbar-collapse navbar-right">
              <ul class="nav navbar-nav">
                <li class="scroll active"><a href="#home" style="font-weight: bold;font-family: arial;font-size: 18px;color: #b245d6;">Home</a></li>
                <!-- <li class="scroll"><a href="#features">Features</a></li> -->
                <li class="scroll"><a href="#about" style="font-weight: bold;font-family: arial;font-size: 18px;color: #b245d6;">About</a></li>
                <li class="scroll"><a href="#blog" style="font-weight: bold;font-family: arial;font-size: 18px;color: #b245d6;">Our Services</a></li>
                <li class="scroll"><a href="#pricing" style="font-weight: bold;font-family: arial;font-size: 18px;color: #b245d6;">Packet</a></li>
                <!-- <li class="scroll"><a href="#portfolio">Portfolio</a></li> -->

                <li class="scroll"><a href="#portfolio" style="font-weight: bold;font-family: arial;font-size: 18px;color: #b245d6;">Our Gallery</a></li>
                <!-- <li class="scroll"><a href="#pricing">Pricing</a></li> -->
                <!-- <li class="scroll"><a href="#blog">News</a></li> -->
                <li class="scroll"><a href="#features" style="font-weight: bold;font-family: arial;font-size: 18px;color: #b245d6;">News</a></li>
                <li class="scroll"><a href="#contact" style="font-weight: bold;font-family: arial;font-size: 18px;color: #b245d6;">Contact</a></li>
                <li class=""><a href="http://sistem.uripatravel.com" target="_blank" style="font-weight: bold;font-family: arial;font-size: 18px;color: white;">
                  <img style="position:relative;top: -20px;" src="<?php echo base_url() . 'component/web/images/URIPA_LOGIN2.png'; ?>" alt="" width="100px" height="50px"/></a></li>
                </ul>
              </div>
            </div> 
          </nav> 
        </header> 
        <section id="main-slider">
          <div class="owl-carousel">

           <?php
            //$this->db->limit(4, 0);
           $this->db->order_by("tanggal", "desc");
           $get = $this->db->get_where('slider', array('status' => '1'));
           $hasil_get = $get->result_array();

           foreach ($hasil_get as $item) {
            ?> 
            <?php
            $string_foto = $item['foto'];
            list($name_img) = (explode('|', $string_foto));
            ?>

            <div class="item"   >
             <img src="<?php echo base_url() . 'component/upload/foto/uploads/' . $name_img; ?>" alt="" width="100%" height="500px"/>                   
             <div class="slider-inner">
              <div class="container">
               <div class="row">
                <div class="col-sm-6">
                                    <!-- <div class="carousel-content">
                                        <h2><span>PT. Uripa</span> Tour & Travel</h2>
                                        <p>Memfasilitasi para jamaah untuk beribadah umroh dengan hati yang bersih dan penuh keikhlasan  </p>
                                        <a class="btn btn-primary btn-lg" href="#">Read More</a>
                                      </div> -->
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div> 

                            <?php } ?>       





                          </div> 
                        </section> 

                        <section id="about">
                         <div class="container">
                          <div class="section-header">
                           <h2 class="section-title text-center wow fadeInDown" >About Us PT. Uripa</h2>
                           <p class="text-center wow fadeInDown"></p>
                         </div>
                         <div class="row" ">
                            <!-- <div class="col-sm-6 wow fadeInLeft">
                             <h3 class="column-title">Video Intro</h3>

                             <div class="embed-responsive embed-responsive-16by9">
                              <iframe src="https://www.youtube.com/embed/ndqJgilx-5o" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                            </div>
                          </div> -->
                          <?php 
                          $get_profile = $this->db->get("tentang");
                          $hasil_profile = $get_profile->row();

                          $string_foto = $hasil_profile->image;
                          list($name_img) = (explode('|', $string_foto));

                          ?>  
                          <center>
                            <div class="col-sm-12 wow fadeInRight">
                             <!--  <h3 class="column-title" style="color-background:#a00cef">Visi,Misi & Motto</h3> -->
                             <p align="justify"> <?php echo substr($hasil_profile->keterangan,0,390);?></p>
                     <!-- <div class="row">
                        <div class="col-sm-6">
                           <ul class="nostyle">
                              <li><i class="fa fa-check-square"></i> Ipsum is simply dummy</li>
                              <li><i class="fa fa-check-square"></i> When an unknown</li>
                          </ul>
                      </div>
                      <div class="col-sm-6">
                       <ul class="nostyle">
                          <li><i class="fa fa-check-square"></i> The printing and typesetting</li>
                          <li><i class="fa fa-check-square"></i> Lorem Ipsum has been</li>
                      </ul>
                  </div>
                </div> -->
                <!--               <a class="btn btn-primary" href="#">Learn More</a> -->
                <center><a class="btn btn-primary" style="background-color:purple;border-color:#f9e6ff; margin-top: 30px;" href="<?php echo base_url() . 'web/detail_about/' . $item['id'] ?>">Read More</a></center>
              </div>
            </center>
          </div>
        </div>
      </section> 




      <section id="blog">
       <div class="container">
        <div class="section-header">
         <h2 class="section-title text-center wow fadeInDown">Our Services</h2>
       </div>
       <div class="row">

         <?php
         $this->db->limit(3, 0);
         $this->db->order_by("tanggal", "desc");
         $get = $this->db->get_where('product', array('status' => '1'));
         $hasil_get = $get->result_array();
         foreach ($hasil_get as $item) {
          ?>
          <?php
          $string_foto = $item['foto'];
          list($name_img) = (explode('|', $string_foto));
          ?>

          <div class="col-sm-4" >
           <div class="blog-post blog-large wow fadeInLeft" data-wow-duration="300ms" data-wow-delay="0ms">
            <article  >
             <header class="entry-header">
              <div class="entry-thumbnail" style="width: auto;height: auto;">
                <div style="background:url('<?php echo base_url() . 'component/upload/foto/uploads/' . $name_img; ?>');
                  background-size: cover;
                  background-repeat: no-repeat;
                  background-position: center;
                  width: 100%;
                  height: 250px;">

                </div>
               <!--  <img style="width: 100%; height: 250px; max-height:75%; zoom:10px;" class="img-responsive" src="<?php echo
               base_url() . 'component/upload/foto/uploads/' . $name_img; ?>">  -->

             </div>
             <?php
             $get = $this->db->query("SELECT * FROM product");
             $hasil = $get->row();
             ?>

             <!-- <div class="entry-date"><?php echo TanggalIndo($hasil->tanggal); ?></div> -->
           </header>
           <div class="entry-content">
            <p style="background:rgba(255, 255, 255, 0.88);display:inline-block; position:; top:-38px; width:340px; padding:5px; color:#696767;font-weight: bold;"><?php echo substr($item['judul'],0,35);?>
            </p>
            <a class="btn btn-primary" style="background-color:purple;border-color:#f9e6ff; margin-top: 15px;" href="<?php echo base_url() . 'web/detail_our_service/' . $item['id'] ?>">Read More</a>
          </div>
        </article>
      </div>
    </div>
    <?php } ?>
  </div>
  <center> 
    <div style="position: relative; margin-top: 10px;" >
      <a class="btn btn-primary" style="background-color:purple;border-color:#f9e6ff;" href="<?php echo base_url() . 'web/our/' ?>">Selengkapnya</a>
    </div>
  </center>
</div>
</section>




<section id="pricing">
  <div class="container">
   <div class="section-header">
    <h2 class="section-title text-center wow fadeInDown">Packet</h2>
  </div>
  <div class="row">
    <?php 
    $get = $this->db->get('kategori_indihome');
    $hasil_get = $get->result();


    $jml = count($hasil_get);

    foreach ($hasil_get as $kategori) { 

     $kode =  $kategori->id;
     $get_table = $this->db->query("SELECT * from produk_indihome where kode_kategori='$kode' ");
     $hasil_table = $get_table->result();

     ?>

     <div class="col-sm-5 col-md-3" >
      <div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="0ms">

       <ul class="pricing">
        <li class="plan-header">
         <div class="price-duration" style="background-image: -webkit-linear-gradient(90deg,#a32bca 0%,#b99fb9 100%);">
          <img src="<?php echo base_url() . 'component\web\images\makkah.png'?>" style="margin-top:14px; " height="70px" width="80px">
          <span class="price">
          </span>
          <span class="duration">

          </span>
        </div> 
        <div class="plan-name">
          <?php echo $kategori->kategori_nama ?>
        </div>
      </li>
      <div >
        <center>
          <table id="" class="table table-bordered" style="width:90% !important;position: relative; ">
            <a class="btn btn-primary" style="background-color:purple;border-color:#f9e6ff; margin-top: 20px;" href="<?php echo base_url() . 'web/detail_paket/' . $kategori->id ?>">Selengkapnya</a>
          </table>
        </center>
      </div>
    </ul>
  </div>
</div>
<?php } ?>


</div>
</div>
</section> 

<section id="portfolio">
  <div class="container">
   <div class="section-header">
    <h2 class="section-title text-center wow fadeInDown" >Gallery</h2>
  </div>
  <?php 
  $get = $this->db->query("SELECT * FROM news");
  $hasil = $get->row();
  ?>
  <div class="portfolio-items">
    <?php     
    $this->db->limit(3,0);   
    $this->db->order_by("tanggal","desc");
    $get = $this->db->get_where('galery', array('status' => '1'));
    $hasil_get = $get->result_array();
    foreach ($hasil_get as $item) {   
     ?>
     <?php
     $string_foto = $item['foto'];
     list($name_img) = (explode('|',$string_foto));      
     ?>
     <div class="portfolio-item creative" style=" width: auto;height: auto; position: fixed; margin-left: 50px;">
      <div class="portfolio-item-inner"  >
        <div style="background:url('<?php echo base_url() . 'component/upload/foto/uploads/' . $name_img; ?>');
          background-size: cover;
          background-repeat: no-repeat;
          background-position: center;
          width: 300px;
          height: 250px;">

        </div>
        <!-- <img style="width: 300px; height: 250px;" class="img-responsive" src="<?php echo base_url() . 'component/upload/foto/uploads/'.$name_img; ?>" alt=""> -->
        <div class="portfolio-info">
          <h3><?php echo $item['judul']; ?></h3>
          <a class="preview" href="<?php echo base_url() . 'component/upload/foto/uploads/'.$name_img; ?>" rel="prettyPhoto"><i class="fa fa-eye"></i>
          </a>
        </div>
      </div>
    </div> 
    <?php } ?>
  </div>
</div>
<center> 
  <div style="position: relative; margin-top: 10px;" >
    <a class="btn btn-primary" style="background-color:purple;border-color:#f9e6ff; margin-top: 20px;" href="<?php echo base_url() . 'web/galery/' ?>">Selengkapnya</a>
  </div>
</center>
</section> 
<br><br><br>

<section id="features">
 <div class="container">
  <div class="section-header">
 <h2 class="section-title text-center wow fadeInDown">News</h2>
 </div>   

 <div class="row">

   <?php
   $this->db->limit(3, 0);
   $this->db->order_by("tanggal", "desc");
   $get = $this->db->get_where('news', array('status' => '1'));
   $hasil_get = $get->result_array();
   foreach ($hasil_get as $item) {
    ?>
    <?php
    $string_foto = $item['foto'];
    list($name_img) = (explode('|', $string_foto));
    ?>

    <div class="col-sm-4" >
     <div class="blog-post blog-large wow fadeInLeft" data-wow-duration="300ms" data-wow-delay="0ms">
      <article  >
       <header class="entry-header">
        <div class="entry-thumbnail" style="width: auto;height: auto;">
        <div style="background:url('<?php echo base_url() . 'component/upload/foto/uploads/' . $name_img; ?>');
          background-size: cover;
          background-repeat: no-repeat;
          background-position: center;
          width: 100%;
          height: 250px;">

        </div>
         <!-- <img style="width: 100%; height: 200px;" class="img-responsive" src="<?php echo
         base_url() . 'component/upload/foto/uploads/' . $name_img; ?>"> -->
       </div>
       <?php
       $get = $this->db->query("SELECT * FROM news");
       $hasil = $get->row();
       ?>
       <div></div>
       <!-- <div class="entry-date"><?php echo TanggalIndo($hasil->tanggal); ?></div> -->
       <div class="entry-content">
        <p style="background:rgba(255, 255, 255, 0.88);display:inline-block; position:; top:-38px; width:340px; padding:5px; color:#696767;font-weight: bold;"><?php echo substr($item['judul'],0,35);?>&nbsp...
        </p>
        <a class="btn btn-primary" style="background-color:purple;border-color:#f9e6ff;" href="<?php echo base_url() . 'web/detail_news/' . $item['id'] ?>">Read More</a>
      </div>
    </header>
  </article>
</div>
</div>
<?php } ?>
</div>
<center> 
  <div style="position: relative; margin-top: 10px;" >
    <a class="btn btn-primary" style="background-color:purple;border-color:#f9e6ff; margin-top: 25px;" href="<?php echo base_url() . 'web/news/' ?>">Selengkapnya</a>
  </div>
</center>
</div>
</section>

<section id="contact">
 <div class="contact-form" style="width: 500px; float: right;">
  <h3 style="color: #b245d6;">Contact Info</h3>
  <?php     
  $this->db->limit(1,0);   
  $get = $this->db->get('contact');
  $hasil_get = $get->row();
  ?>
  <address>
   <?php echo $hasil_get->email;?><br>
   <?php echo $hasil_get->handphone?><br>
   <?php echo $hasil_get->telepon?><br>
   <?php echo $hasil_get->isi;?>
 </address>
 <form id="form_contact" name="contact-form" method="post" action="#">
   <div class="form-group">
    <input type="text" name="nama" class="form-control" placeholder="Name" required>
  </div>
  <div class="form-group">
    <input type="email" name="email" class="form-control" placeholder="Email" required>
  </div>
  <div class="form-group">
    <input type="text" name="telp" class="form-control" placeholder="Telp" required>
  </div>
  <div class="form-group">
    <input type="text" name="subject" class="form-control" placeholder="Subject" required>
  </div>
  <div class="form-group">
    <textarea name="message" class="form-control" rows="8" placeholder="Message" required></textarea>
  </div>
  <button type="submit" value="submit" class="btn btn-primary" style="background-color:purple;border-color:#f9e6ff;">Send Message</button>
</form>
</div>
</div>
<table border="1" class=" col-lg-7"  style="height:575px; margin-top: 70px; margin-left: 40px; border-color:#f9e6ff ">
  <tr>
   <!-- <td id="google-map" data-latitude="-7.152962" data-longitude="113.472303"></td> -->
    <td id="peta"></td>
   </tr>
 </table>
 <!--  <div class="container-wrapper" style="background: rgba(243, 243, 243, 0.3);"> -->
 <div class="container">
   <div class="row">
    <div class="col-sm-4 col-sm-offset-8">
    </div>
  </div>
  <!-- </div> -->
</section>




<footer id="footer">
 <div class="container">
  <div class="row">
   <div class="col-sm-6">
     &copy; 2017 URIPA. Designed by Cloud Astro  
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
        -->	</ul>
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
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAYCf-X8PSUSgCsww-NMpQn8smtrEN2ZYc&libraries=places"></script>
<!-- <script src="http://maps.google.com/maps/api/js?sensor=true"></script> -->
</body>
<style type='text/css'>
  #peta {
  width: 50%;
  height: 400px;

} 
</style>
   <!--  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script> -->
   <script type="text/javascript">
    
  (function() {
  window.onload = function() {
var map;
    //Parameter Google maps
    var options = {
      zoom: 9, //level zoom
    //posisi tengah peta
      center: new google.maps.LatLng(-7.658888, 112.895596),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
  
   // Buat peta di 
    var map = new google.maps.Map(document.getElementById('peta'), options);
   // Tambahkan Marker 
     var locations = [
                      ['Kantor Pusat Madura <br>Jl. Pintu Gerbang Gg. IV No. 12 Pamekasan Madura - Jatim - Indonesia', -7.153005, 113.473117],
                      ['Kantor Pusat Pasuruan <br>Jl. Panglima Sudirman No. 150 ( Depan Asrama Polisi ) - Pasuruan - Jawa Timur - Indonesia ', -7.658888, 112.895596],   
    
    ];
    var infowindow = new google.maps.InfoWindow();

    var marker, i;
     /* kode untuk menampilkan banyak marker */
    for (i = 0; i < locations.length; i++) {  
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map,
      });
     /* menambahkan event clik untuk menampikan
       infowindows dengan isi sesuai denga
      marker yang di klik */
    
      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(map, marker);
        }
      })(marker, i));
    }
  

  };
})();

  </script>

<!-- Mirrored from shapebootstrap.net/demo/html/multi/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2017 05:44:58 GMT -->
<script type="text/javascript">
	$(function () {

		$("#form_contact").submit( function() {    
			$.ajax( {  
				type :"post",  
				url : "<?php echo base_url() . 'web/kirim_email' ?>",  
				cache :false,  
				data :$(this).serialize(),
				success : function(data) {  
					$(".sukses").html(data);   
					setTimeout(function(){alert("Form Telah dikirim."); window.location = "<?php echo base_url() . 'web' ?>";},1500);              
				},  
				error : function() {  
					alert("Data gagal dimasukkan.");  
				}  
			});
			return false;                          
		}); 

  });
</script>
</html>