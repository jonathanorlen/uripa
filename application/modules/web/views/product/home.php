<div id="body" ><br><br><br><br><br>
	<div id="content" style="overflow: hidden;">
		<div class="title" style="    background-color: #a00cef;
    color: white;
    padding: 10px;
    padding-top: 20px;
    text-align: left;font-size: 1.3em;
    font-weight: bold;">Our Services</div>
               <div style="margin-left: 2%;">
            		<?php
						$this->db->limit(24, 0);
						$this->db->order_by("tanggal", "desc");
						$get = $this->db->get_where('product', array('status' => '1'));
						$hasil_get = $get->result_array();
						foreach ($hasil_get as $item) {
							?>
							<?php
							$string_foto = $item['foto'];
							list($name_img) = (explode('|', $string_foto));
							?>
							<div style="width:510px;height:220px;float:left; padding:20px 20px 0px 5px; margin-bottom:100px;">
								<a href="<?php echo base_url() . 'web/detail_product/' . $item['id'] ?>">
									<img class="example-image" src="<?php echo
									base_url() . 'component/upload/foto/uploads/' . $name_img; ?>" alt="" width="500" height="320"/>
									<p style="background:rgba(255, 255, 255, 0.88);display:inline-block; position:relative; top:-38px; width:340px; padding:5px; color:#696767;font-weight: bold;"><?php echo $item['judul'];?>
                                   </p>
								</a>										
							</div>

							<?php } ?>


						</div>
		</div>
	</div>
