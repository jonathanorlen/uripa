<br/>
<div id="body">
	<div class="slider-wrapper theme-default">
		
		<div id="slider" class="nivoSlider">		

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

				
					<img src="<?php echo base_url() . 'component/upload/foto/uploads/' . $name_img; ?>" alt="" width="200" height="200"/>					
				
				<?php } ?>       
			</div>
		</div>
		<div class="garis">
			<div style="margin-top:-15px;">
				<img style="border-radius:0px;" src="<?php echo base_url() . 'component/web/images/split.jpg'; ?>" alt=""	/>

				<div style="margin-left: 2%;">


					<?php
					$this->db->limit(9, 0);
					$this->db->order_by("tanggal", "desc");
					$get = $this->db->get_where('product', array('status' => '1'));
					$hasil_get = $get->result_array();
					foreach ($hasil_get as $item) {
						?>
						<?php
						$string_foto = $item['foto'];
						list($name_img) = (explode('|', $string_foto));
						?>
						<div style="width:340px;height:220px;float:left; padding:20px 15px 0px 0px; margin-bottom:15px;">
							<a href="<?php echo base_url() . 'web/detail_product/' . $item['id'] ?>">
								<img class="example-image" src="<?php echo
								base_url() . 'component/upload/foto/uploads/' . $name_img; ?>" alt="" width="350" height="220"/>

								<?php
								if($item['status_produk'] == 'None') :
									?>
								<img style="position:relative; top:-210px; left:210px;" src="<?php echo base_url() . 'component/web/images/trans.png '?>" alt="status_produk"/>
							<?php endif; ?>

							<?php
							if($item['status_produk'] == 'New') :
								?>
							<img style="position:relative; top:-210px; left:210px;" src="<?php echo base_url() . 'component/web/images/new.png '?>" alt="status_produk"/>
						<?php endif; ?>

						<?php
						if($item['status_produk'] == 'Big Sale') :
							?>
						<img style="position:relative; top:-210px; left:210px;" src="<?php echo base_url() . 'component/web/images/salee.png '?>" alt="status_produk"/>
					<?php endif; ?>

					<?php
					if($item['status_produk'] == 'Restock') :
						?>
					<img style="position:relative; top:-210px; left:210px;" src="<?php echo base_url() . 'component/web/images/restockk.png '?>" alt="status_produk"/>
				<?php endif; ?>
				<p style="background:rgba(255, 255, 255, 0.88);display:inline-block; position:relative; top:-66px; width:340px; padding:5px; color:#696767;font-weight: bold;"><?php echo $item['judul'].	" || ".$item['harga'];?></p>
			</a>										
		</div>

		<?php } ?>


	</div>
</div>
</div>
</div>