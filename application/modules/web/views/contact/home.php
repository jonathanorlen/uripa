<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script>
function resetform() {
document.getElementById("ajax-contact-form").reset();
}
</script>

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
          setTimeout(function(){alert("Form Telah dikirim."); window.location = "<?php echo base_url() . 'web/contact' ?>";},1500);              
        },  
        error : function() {  
          alert("Data gagal dimasukkan.");  
        }  
      });
      return false;                          
    }); 

    $("#form_kritik").submit( function() {    
      $.ajax( {  
        type :"post",  
        url : "<?php echo base_url() . 'web/kirim_kritik' ?>",  
        cache :false,  
        data :$(this).serialize(),
        success : function(data) {  
          $(".sukses").html(data);   
          setTimeout(function(){alert("Form Telah dikirim."); window.location = "<?php echo base_url() . 'web/contact' ?>";},1500);              
        },  
        error : function() {  
          alert("Data gagal dimasukkan.");  
        }  
      });
      return false;                          
    });  

  });
</script>

<div id="body" ><br><br><br><br><br>
<div id="content" style="overflow: hidden; color: #FFF;" >
	
		<div class="title" style="    background-color: #a00cef;
    color: white;
    padding: 10px;
    padding-top: 20px;
    text-align: left;font-size: 1.3em;
    font-weight: bold;">Location</div>
   
		<div class="row" >
			<div class="span12">
				<center>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15835.18726553803!2d113.4704327162106!3d-7.149477263109688!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zN8KwMDknMDIuMiJTIDExM8KwMjgnMzQuMCJF!5e0!3m2!1sid!2sid!4v1486111129838" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
				</center>
			</div>
		</div>
		 <div class="konten" style="padding: 20px;">
		<div class="row">
			<div class="span6">
				<div class="title"><h2>Detail Contact</h2></div>
				<?php     
				    $this->db->limit(1,0);   
					$get = $this->db->get('contact');
				    $hasil_get = $get->row();
				?>
				<div class="card">
					<span class="contact-line c1" style="padding:10px 25px;display:block;color:#FFF;border-bottom:1px solid #c5bcbc"><img src="<?php echo base_url() . 'component/web/images/c31.png '?>" alt="Logo">&nbsp;&nbsp;&nbsp;<?php echo $hasil_get->handphone //$hasil_get->isi;?></span>
					<span class="contact-line c2" style="padding:10px 25px;display:block;color:#FFF;border-bottom:1px solid #c5bcbc"><img src="<?php echo base_url() . 'component/web/images/c21.png '?>" alt="Logo">&nbsp;&nbsp;&nbsp;<?php echo $hasil_get->telepon;?></span>

					<span class="contact-line c2" style="padding:10px 25px;display:block;color:#FFF;border-bottom:1px solid #c5bcbc"><img src="<?php echo base_url() . 'component/web/images/c41.png '?>" alt="Logo">&nbsp;&nbsp;&nbsp;<?php echo $hasil_get->email;?></span>

					<span class="contact-line c2" style="padding:10px 25px;display:block;color:#FFF;border-bottom:1px solid #c5bcbc">Alamat :<?php echo $hasil_get->isi;?></span>
					
				</div>
				<div class="card" style="color:#FFF !important;">					
					

					<!-- <span class="contact-line c2" style="padding:10px 25px;display:block;color:#FFF;border-bottom:1px solid #c5bcbc"><img src="<?php echo base_url() . 'component/web/images/c31.png '?>" alt="Logo">&nbsp;&nbsp;&nbsp;HP:  <?php echo $hasil_get->handphone;?></span>
					<span class="contact-line c3" style="padding:10px 25px;display:block;color:#FFF;border-bottom:1px solid #c5bcbc"><img src="<?php echo base_url() . 'component/web/images/c41.png '?>" alt="Logo">&nbsp;&nbsp;&nbsp;<?php echo $hasil_get->email;?></a></span>
					<span class="contact-line c3" style="padding:10px 25px;display:block;color:#FFF;border-bottom:1px solid #c5bcbc"><img src="<?php echo base_url() . 'component/web/images/c51.png '?>" alt="Logo">&nbsp;&nbsp;&nbsp;<?php echo $hasil_get->pin_bb;?></a></span>
					<span class="contact-line c3" style="padding:10px 25px;display:block;color:#FFF;border-bottom:1px solid #c5bcbc"><img src="<?php echo base_url() . 'component/web/images/c61.png '?>" alt="Logo">&nbsp;&nbsp;&nbsp;<?php echo $hasil_get->ig;?></a></span>
					<span class="contact-line c3" style="padding:10px 25px;display:block;color:#FFF;border-bottom:1px solid #c5bcbc"><img src="<?php echo base_url() . 'component/web/images/c71.png '?>" alt="Logo">&nbsp;&nbsp;&nbsp;<?php echo $hasil_get->fb;?></a></span> -->
				</div> 
			</div>
			<div class="span6">
				<h2>Hubungi Kami</h2>
		            		<form id="form_contact" method="post">
								<label for="country" style="border: 3px black;">Subjek *</label>
						    	<input type="text" id="subject" name="subject" required="">
						      		
			    				<label for="fname">Nama Lengkap *</label>
						    	<input type="text" id="nama" name="nama" required="" placeholder="Nama Lengkap"/>

						    	<label for="lname">Email *</label>
						    	<input type="text" id="email" name="email" required="" placeholder="Email"/>

						    	<label for="lname">No.HP *</label>
						    	<input type="text" id="telp" name="telp" required="" placeholder="No.Hp"/>		    	
						  		
						  		<label for="country">Pesan *</label>
						  		<textarea for="lname" style="width:auto;" name="message" id="message" cols="49" rows="5" required="" placeholder="Pesan"></textarea>

						    	<input type="submit" value="Submit">&nbsp;&nbsp;&nbsp; 
						    	<input type="reset" value="Reset">
						  	</form>
			</div>
		</div>


		
		

		
</div>
</div>