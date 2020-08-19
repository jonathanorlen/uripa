<link rel="stylesheet" href="<?php echo base_url() . 'component/web/css/lightbox.css ' ?>">

<?php
$id = $this->uri->segment(3);

$get = $this->db->query("SELECT * FROM news where id='$id'");
$hasil = $get->row();
?>

<div id="body"><br><br><br><br><br>
		<div id="content">
			<div class="konten">
				<div class="title" style="    background-color: #a00cef;
    color: white;
    padding: 10px;
    padding-top: 20px;
    text-align: left;font-size: 1.3em;
    font-weight: bold;">Gallery</div>
				<div style="padding-left:35px;
							padding-top:20px;">
			
				<?php     
		          	$this->db->limit(20,0);   
		          	$this->db->order_by("tanggal","desc");
		          	$get = $this->db->get_where('galery', array('status' => '1'));
		          	$hasil_get = $get->result_array();
				    foreach ($hasil_get as $item) {   
				?>

				<?php
		            $string_foto = $item['foto'];
		            list($name_img) = (explode('|',$string_foto));      
				?>
				<a class="example-image-link" href="<?php echo base_url() . 'component/upload/foto/uploads/'.$name_img; ?>" data-lightbox="example-set" data-title="<?php echo $item['judul']; ?>">
                <img class="example-image" src="<?php echo base_url() . 'component/upload/foto/uploads/'.$name_img; ?>" alt="" width="250" height="200"/></a>
				
				
				
				
				
				<?php } ?>
		
		</div>
        			</div>
        
        
        
	</div>
<script type="text/javascript" src="<?php echo base_url() . 'component/web/js/lightbox-plus-jquery.min.js '?>"></script>