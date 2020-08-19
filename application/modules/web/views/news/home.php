<style type="text/css" media="screen">
	.read
	{
		color:#FFF;
		text-decoration: none;
	}
	.read:hover
	{
		color:#afafab;
		text-decoration: none;
	}
</style>
<div id="body"><br><br><br><br><br>
			<div id="content">
			
				<div class="title" style="    background-color: #a00cef;
    color: white;
    padding: 10px;
    padding-top: 20px;
    text-align: left;font-size: 1.3em;
    font-weight: bold;">News</div>
    <div class="konten" style="padding: 20px;">
				 <?php     
				    $this->db->limit(20,0);   
				    $this->db->order_by("tanggal","desc");
					$get = $this->db->get_where('news', array('status' => '1'));
				    //$get = $this->db->get('news');
					//$get = $this->db->query("SELECT * FROM news where status='1'");
				    $hasil_get = $get->result_array();

				    foreach ($hasil_get as $item) {   
				?> 
				<ul class="section">
					<li>
						<?php
							$string_foto = $item['foto'];
							list($name_img) = (explode('|',$string_foto));			
						?>
						<img src="<?php echo base_url() . 'component/upload/foto/uploads/'.$name_img; ?>" alt="" width="280" height="250">
						<div style="color:#FFF !important;">
							<h1>
								<a href="<?php echo base_url() . 'web/detail_news/'.$item['id'] ?>" style="color:#FFF;text-decoration: none;margin-bottom: 2px;"><?php echo $item['judul'];?>
								</a>
							</h1>          
							<p><?php echo substr($item['isi_berita'],0,400); ?>&nbsp;<a class="read" href="<?php echo base_url() . 'web/detail_news/'.$item['id'] ?>">(Read more)</a></p>
						</div>
					</li>
				</ul>
				<hr>
			<?php } ?>
			</div>
			</div>
		</div>