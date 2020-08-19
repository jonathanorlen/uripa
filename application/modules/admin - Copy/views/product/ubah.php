<script type="text/javascript">
$(function () {

	$("#data_form").submit( function() {    
		$.ajax( {  
			type :"post",  
			url : "<?php echo base_url() . 'admin/product/simpan_ubah' ?>",  
			cache :false,  
			data :$(this).serialize(),
			success : function(data) {  
				$(".sukses").html(data);   
				setTimeout(function(){$('.sukses').html('');window.location = "<?php echo base_url() . 'admin/product/daftar' ?>";},1500);              
			},  
			error : function() {  
				alert("Data gagal dimasukkan.");  
			}  
		});
		return false;                          
	}); 

	$("#upload_foto").click( function() {    
			$.ajax( {  
				type :"post",  
				url : "<?php echo base_url() . 'component/upload/foto' ?>",  
				cache :false,  
				data :$(this).serialize(),
				success : function(data) {  
					$(".box_upload").html(data);           
				},  
				error : function() {  
					alert("Data gagal dimasukkan.");  
				}  
			});
			return false;                          
		}); 

});
</script>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Product
			<small>Edit Product</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo base_url('admin').'/dasboard' ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
			<li class="active">product</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">             
		<!-- Main row -->
		<div class="row">
			<!-- Left col -->
			<section class="col-lg-12 connectedSortable">
				<!-- Custom tabs (Charts with tabs)-->

				<!-- TO DO List -->

				<!-- quick email widget -->
				<div class="box box-info">
					<div class="box-header">
						<i class="fa fa-envelope"></i>
						<h3 class="box-title">Edit product</h3>
						<!-- tools box -->
						<div class="pull-right box-tools">              
						</div><!-- /. tools -->
					</div>
					<div class="box-body">            
						<div class="sukses" ></div>

						<?php
						$id = $this->uri->segment(4);
						$get = $this->db->query("SELECT * FROM product where id='$id'");
						$hasil = $get->row();
						?>

						<form method="post" id="data_form">
							<div class="form-group">
								<input type="hidden" class="form-control" name="id" value="<?php echo $hasil->id; ?>" />
								<input type="text" class="form-control" name="judul" value="<?php echo $hasil->judul; ?>" />
                                <input type="text" class="form-control" name="harga" value="<?php echo $hasil->harga?>"/>
							</div> 
							<div>
								<textarea name="isi_product" class="textarea" placeholder="Konten Product" style="width: 100%; height: 255px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
									<?php echo $hasil->isi; ?>
								</textarea>
							</div>
							<div class="box-footer clearfix">
								<a class="btn btn-app blue" id="upload_foto">
									<i class="fa fa-edit"></i> Image 
								</a>
							</div>
							<div class="box_upload"></div>
							<div class="foto_upload"></div>
							<label>NB : Ukuran gambar untuk upload foto 500x350</label>
							<div>
								<br/>
                                <div>
								<label>Status Produk</label>
								<select name="status_produk" class="form-control" tabindex="-1" aria-hidden="true">
									<option value="None"  >None</option>
                                    <option value="New" >New</option>
									<option value="Big Sale">Big Sale</option>
									<!-- <option <?php echo 'selected="true"'; ?> >Restock</option>                         -->
								</select>
							</div><br />
                            <!-- <div>
								<label>Jenis Produk</label>
								<select name="jenis_produk" class="form-control" tabindex="-1" aria-hidden="true">
									<option <?php echo 'selected="true"'; ?> >Buah</option>
									<option <?php echo 'selected="true"'; ?> >Parcel</option>                      
								</select>
							</div><br /> -->
								<label>Status</label>
								<select name="status" class="form-control" tabindex="-1" aria-hidden="true">
									<option value="1" <?php if ($hasil->status == '1'){echo'selected="true"';} ?>>Aktif</option>
									<option value="0" <?php if ($hasil->status == '0'){echo'selected="true"';} ?>>Tidak Aktif</option>                      
								</select>
							</div>
							<div class="box-footer clearfix">
								<button type="submit" class="pull-right btn btn-default" id="sendEmail">Send <i class="fa fa-arrow-circle-right"></i></button>
							</div>
						</form>
					</div>
				</div>
			</section><!-- /.Left col -->      
		</div><!-- /.row (main row) -->

	</section><!-- /.content -->
</div><!-- /.content-wrapper -->


