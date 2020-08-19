<aside class="main-sidebar">
  <section class="sidebar">  
    <ul class="sidebar-menu">
      <li class="active">
        <a href="<?php echo base_url('admin'); ?>">
          <i class="fa fa-dashboard"></i> <span>Dashboard</span>
        </a>              
      </li>
      <?php
      $id = $this->session->userdata('astrosession');

      $get = $this->db->query("SELECT * FROM user where id='$id'");
      $hasil = $get->row();

      $string_akses = $hasil->akses;
      //echo $string_akses;
      $list_akses = (explode('|',$string_akses));  


      foreach ($list_akses as $item_akses) {
      ?>

          <?php if ($item_akses == 'berita') {
              ?>
              <li class="treeview">
                <a href="#">
                  <i class="fa fa-edit"></i>
                  <span>News</span>      
                  <i class="fa fa-angle-left pull-right"></i>          
                </a>
                <ul class="treeview-menu">
                  <li><a href="<?php echo base_url() . 'admin/news/tambah' ?>"><i class="fa fa-circle-o"></i>Tambah</a></li>
                  <li><a href="<?php echo base_url() . 'admin/news/daftar' ?>"><i class="fa fa-circle-o"></i>Daftar</a></li>
                </ul>
              </li>
          <?php } ?>
           <?php if ($item_akses == 'paket') {
                ?>
                <li class="treeview">
                  <a href="<?php echo base_url() . 'admin/paket/daftar' ?>">
                    <i class="fa fa-edit"></i>
                    <span>Paket</span>      
                    <i class="fa fa-angle-left pull-right"></i>        
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="<?php echo base_url() . 'admin/paket/tambah' ?>"><i class="fa fa-circle-o"></i>Tambah Paket</a></li>
                    <li><a href="<?php echo base_url() . 'admin/paket/daftar' ?>"><i class="fa fa-circle-o"></i>Daftar Paket</a></li>
                    <li><a href="<?php echo base_url() . 'admin/paket/tambah_kategori' ?>"><i class="fa fa-circle-o"></i>Tambah Kategori</a></li>
                    <li><a href="<?php echo base_url() . 'admin/paket/daftar_kategori' ?>"><i class="fa fa-circle-o"></i>Daftar Kategori</a></li>
                    <li><a href="<?php echo base_url() . 'admin/paket/tambah_keterangan' ?>"><i class="fa fa-circle-o"></i>Tambah Keterangan</a></li>
                    <li><a href="<?php echo base_url() . 'admin/paket/daftar_keterangan' ?>"><i class="fa fa-circle-o"></i>Daftar Keterangan</a></li>
                  </ul>
                </li>
          <?php }?>
    		  
    		  <?php if ($item_akses == 'galery') {
                ?>
                <li class="treeview">
                  <a href="#">
                    <i class="fa fa-files-o"></i>
                    <span>Gallery</span>      
                    <i class="fa fa-angle-left pull-right"></i>          
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="<?php echo base_url() . 'admin/galery/tambah' ?>"><i class="fa fa-circle-o"></i>Tambah</a></li>
                    <li><a href="<?php echo base_url() . 'admin/galery/daftar' ?>"><i class="fa fa-circle-o"></i>Daftar</a></li>
                  </ul>
                </li>
          <?php }?>
         

    			
		  <?php if ($item_akses == 'product') {
                ?>
                <li class="treeview">
                  <a href="#">
                    <i class="fa fa-edit"></i>
                    <span>Product</span>      
                    <i class="fa fa-angle-left pull-right"></i>          
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="<?php echo base_url() . 'admin/product/tambah' ?>"><i class="fa fa-circle-o"></i>Tambah</a></li>
                    <li><a href="<?php echo base_url() . 'admin/product/daftar' ?>"><i class="fa fa-circle-o"></i>Daftar</a></li>
                  </ul>
                </li>
          <?php }?>

    			
    			<?php if ($item_akses == 'kategori_konsul') {
                ?>
                <li class="treeview">
                  <a href="#">
                    <i class="fa fa-edit"></i>
                    <span>Kategori Konsultasi</span>      
                    <i class="fa fa-angle-left pull-right"></i>          
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="<?php echo base_url() . 'admin/kategori_konsul/tambah' ?>"><i class="fa fa-circle-o"></i>Tambah</a></li>
                    <li><a href="<?php echo base_url() . 'admin/kategori_konsul/daftar' ?>"><i class="fa fa-circle-o"></i>Daftar</a></li>
                  </ul>
                </li>
          <?php }?>
    			
    			<?php if ($item_akses == 'contact') {
                ?>
                <li class="treeview">
                  <a href="<?php echo base_url() . 'admin/contact/daftar' ?>">
                    <i class="fa fa-edit"></i>
                    <span>Contact</span>      
                    <!--<i class="fa fa-angle-left pull-right"></i>-->          
                  </a>
                  <!--<ul class="treeview-menu">
                    <li><a href="<?php echo base_url() . 'admin/contact/tambah' ?>"><i class="fa fa-circle-o"></i>Tambah</a></li>
                    <li><a href="<?php echo base_url() . 'admin/contact/daftar' ?>"><i class="fa fa-circle-o"></i>Daftar</a></li>
                  </ul>-->
                </li>
          <?php }?>
            <?php if ($item_akses == 'tentang') {
                ?>
                <li class="treeview">
                  <a href="<?php echo base_url() . 'admin/tentang/daftar' ?>">
                    <i class="fa fa-edit"></i>
                    <span>About Us</span>      
                    <!--<i class="fa fa-angle-left pull-right"></i>-->          
                  </a>
                  <!--<ul class="treeview-menu">
                    <li><a href="<?php echo base_url() . 'admin/contact/tambah' ?>"><i class="fa fa-circle-o"></i>Tambah</a></li>
                    <li><a href="<?php echo base_url() . 'admin/contact/daftar' ?>"><i class="fa fa-circle-o"></i>Daftar</a></li>
                  </ul>-->
                </li>
          <?php }?>
    			
    			<?php if ($item_akses == 'email') {
                    ?>
                    <li class="treeview">
                        <a href="<?php echo base_url() . 'admin/email/daftar' ?>">
                        <i class="fa fa-edit"></i>
                        <span>Hubungi Kami</span>      
                        </a>
                    </li>
          <?php }?>
        
        <?php if ($item_akses == 'kritik') {
                    ?>
                    <li class="treeview">
                        <a href="<?php echo base_url() . 'admin/kritik/daftar' ?>">
                        <i class="fa fa-edit"></i>
                        <span>Kritik & Saran</span>      
                        </a>
                    </li>
          <?php }?> 	
    			<?php if ($item_akses == 'page') {
                      ?>
                      <li class="treeview">
                        <a href="#">
                          <i class="fa fa-file"></i>
                          <span>Page</span>      
                          <i class="fa fa-angle-left pull-right"></i>          
                        </a>
                        <ul class="treeview-menu">
                          <li><a href="<?php echo base_url() . 'admin/page/tambah' ?>"><i class="fa fa-circle-o"></i>Tambah</a></li>
                          <li><a href="<?php echo base_url() . 'admin/page/daftar' ?>"><i class="fa fa-circle-o"></i>Daftar</a></li>
                        </ul>
                      </li>
          <?php }?>

          <?php if ($item_akses == 'menu') {
                    ?>
                    <li class="treeview">
                      <a href="#">
                        <i class="fa fa-th"></i>
                        <span>Menu</span>      
                        <i class="fa fa-angle-left pull-right"></i>          
                      </a>
                      <ul class="treeview-menu">
                        <li><a href="<?php echo base_url() . 'admin/menu/tambah' ?>"><i class="fa fa-circle-o"></i>Tambah</a></li>
                        <li><a href="<?php echo base_url() . 'admin/menu/daftar' ?>"><i class="fa fa-circle-o"></i>Daftar</a></li>
                      </ul>
                    </li>
          <?php }?>

          <?php if ($item_akses == 'slider') {
                    ?>
                    <li class="treeview">
                      <a href="#">
                        <i class="fa fa-th"></i>
                        <span>Slider</span>      
                        <i class="fa fa-angle-left pull-right"></i>          
                      </a>
                      <ul class="treeview-menu">
                        <li><a href="<?php echo base_url() . 'admin/slider/tambah' ?>"><i class="fa fa-circle-o"></i>Tambah</a></li>
                        <li><a href="<?php echo base_url() . 'admin/slider/daftar' ?>"><i class="fa fa-circle-o"></i>Daftar</a></li>
                      </ul>
                    </li>
          <?php }?>
    				
          <?php if ($item_akses == 'user') {
                        ?>
                        <li class="treeview">
                          <a href="#">
                            <i class="fa fa-user"></i>
                            <span>User</span>      
                            <i class="fa fa-angle-left pull-right"></i>          
                          </a>
                          <ul class="treeview-menu">
                            <li><a href="<?php echo base_url() . 'admin/user/tambah' ?>"><i class="fa fa-circle-o"></i>Tambah</a></li>
                            <li><a href="<?php echo base_url() . 'admin/user/daftar' ?>"><i class="fa fa-circle-o"></i>Daftar</a></li>
                          </ul>
                        </li>
          <?php }?>

      <?php } ?>

					
					<li class="treeview">
                  <a href="<?php echo base_url() . 'admin/support/daftar' ?>">
                    <i class="fa fa-laptop"></i>
                    <span>Tech.Support</span>                              
                  </a>                   
                </li>

                  </ul>
                </section>
                <!-- /.sidebar -->
              </aside>




