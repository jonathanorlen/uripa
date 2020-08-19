<?php
//$id = $this->uri->segment(3);

//$get = $this->db->query("SELECT * FROM promo where id='$id'");
//$hasil = $get->row();
?>

<!-- projects -->
<!--<div id="body">
  <div id="content">
    <div class="konten">
      <div class="projects">
        <div class="container">
          <div class="projects-info">
            <h1><center>Profile Tani Mandiri</center></h1>  
            	<?php
            		$string_foto = $hasil->foto;
            		list($name_img) = (explode('|',$string_foto));			
            	?>
        	    <center><img src="<?php echo base_url() . 'component/web/images/profil.png'; ?>" class="img-responsive" alt="" width="200" height="100" style="float:left; margin:20px;margin-top:0;"/></center>
          </div>
          <div class="event-grids">
            <div id="services" class="services">
              <div class="container" id="detail">      
                <p style="min-height:80px"> a <br/> b</p>      
              </div>   
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>-->

<div id="body"><br><br><br><br><br>
  <div id="content" >
    <div class="konten">
      <div class="title" style="    background-color: #a00cef;
    color: white;
    padding: 10px;
    padding-top: 20px;
    text-align: left;font-size: 1.3em;
    font-weight: bold;">About Us</div>

        
          <?php 
          $get_profile = $this->db->get("tentang");
          $hasil_profile = $get_profile->row();

          $string_foto = $hasil_profile->image;
              list($name_img) = (explode('|', $string_foto));

           ?>  
            <ul class="section">
        
          <img src="<?php echo
                  base_url() . 'component/upload/foto/uploads/' . $name_img; ?>" class="img-responsive" alt="" width="auto" height="250" style="float:left; margin:5% 5% 1% 5%;margin-top:0;"/>
                  
        </li>
      </ul>
      <div class="event-grids">
        <div id="services" class="services">
          <div class="container"> 

          <p style="font-color:black"><?php echo $hasil_profile->keterangan; ?></p>     


        </div>    
      </div>
    </div>
  </div>
</div>
</div>