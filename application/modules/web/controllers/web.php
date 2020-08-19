<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class web extends MY_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */

	public function __construct()
	{
		parent::__construct();		
	}

	public function index()
	{
		redirect(base_url('web/dasboard'));
	}


//--------------   home   ------------------------

	public function dasboard()
	{
		$this->load->view('general/index');
		
	}

	public function paket()
	{
		$data['aktif'] = 'paket';
		$data['konten'] = $this->load->view('paket/home', NULL, TRUE);
		$this->load->view ('main', $data);
	}

	public function detail_our_service()
	{	
		$this->load->view ('general/detail_our_service');
		
	}

	public function detail_news()
	{	
		$this->load->view ('general/detail_news');
		
	}
	public function detail_about()
	{	
		$this->load->view ('general/detail_about');
		
	}

	public function detail_paket()
	{	
		$this->load->view ('general/detail_paket');
		
	}

	public function galery()
	{	
		$this->load->view ('general/galery');
		
	}

	public function our()
	{	
		$this->load->view ('general/our');
		
	}
	public function news()
	{	
		$this->load->view ('general/news');
		
	}

//--------------   galeri   ------------------------

	public function home_galery()
	{
		$data['aktif'] = 'galery';
		$data['konten'] = $this->load->view('galery/home', NULL, TRUE);
		$this->load->view ('main', $data);
		
	}

	public function detail_galery()
	{
		$data['aktif'] = 'galery';
		$data['konten'] = $this->load->view('galery/detail', NULL, TRUE);
		$this->load->view ('main', $data);
		
	}

//-------------- profile-------------------------

	public function profile()
	{
		$data['aktif'] = 'profile';
		$data['konten'] = $this->load->view('profil/home', NULL, TRUE);
		$this->load->view ('main', $data);
		
	}

	
//-------------- promo-------------------------

	public function promo()
	{
		$data['konten'] = $this->load->view('promo/home', NULL, TRUE);
		$this->load->view ('main', $data);
		
	}

	public function detail_promo()
	{
		$data['konten'] = $this->load->view('promo/detail', NULL, TRUE);
		$this->load->view ('main', $data);
		
	}

//-------------- promo on slider-------------------------

	

	public function detail_slider()
	{
		$data['konten'] = $this->load->view('proslide/detail', NULL, TRUE);
		$this->load->view ('main', $data);
		
	}

	
//-------------- product -------------------------

	public function product()
	{
		$data['aktif'] = 'product';
		$data['konten'] = $this->load->view('product/home', NULL, TRUE);
		$this->load->view ('main', $data);
		
	}
	
		public function detail_product()
	{
		$data['konten'] = $this->load->view('product/detail', NULL, TRUE);
		$this->load->view ('main', $data);
		
	}

//-------------- buah -------------------------

	public function buah()
	{
		$data['konten'] = $this->load->view('buah/home', NULL, TRUE);
		$this->load->view ('main', $data);
		
	}
	
		public function detail_buah()
	{
		$data['konten'] = $this->load->view('buah/detail', NULL, TRUE);
		$this->load->view ('main', $data);
		
	}


//-------------- parcel -------------------------

	public function parcel()
	{
		$data['konten'] = $this->load->view('parcel/home', NULL, TRUE);
		$this->load->view ('main', $data);
		
	}
	
		public function detail_parcel()
	{
		$data['konten'] = $this->load->view('parcel/detail', NULL, TRUE);
		$this->load->view ('main', $data);
		
	}


//-------------- news -------------------------

	public function home_news()
	{
		$data['aktif'] = 'news';
		$data['konten'] = $this->load->view('news/home', NULL, TRUE);
		$this->load->view ('main', $data);
		
	}

	public function register()
	{
		$data['aktif'] = 'news';
		$data['konten'] = $this->load->view('register/home', NULL, TRUE);
		$this->load->view ('main', $data);
		
	}

	// public function detail_news()
	// {
	// 	$data['aktif'] = 'news';
	// 	$data['konten'] = $this->load->view('news/detail', NULL, TRUE);
	// 	$this->load->view ('main', $data);
		
	// }

//--------------   page   ------------------------	

	public function detail_page()
	{	
		$data['konten'] = $this->load->view('page/detail', NULL, TRUE);
		$this->load->view ('main',$data);
		
	}
	
//--------------   Contact   ------------------------	

	public function contact()
	{	
		$data['aktif'] = 'contact';
		$data['konten'] = $this->load->view('contact/home', NULL, TRUE);
		$this->load->view ('main',$data);
		
	}
	


//--------------  E - MAIL   ------------------------



	public function kirim_email()
	{
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('subject', 'temp', 'required');	
		$this->form_validation->set_rules('nama', 'temp', 'required');
		$this->form_validation->set_rules('email', 'temp', 'required');
		$this->form_validation->set_rules('telp', 'temp', 'required');
		$this->form_validation->set_rules('message', 'temp', 'required');      		
		
		if ($this->form_validation->run() == FALSE) {
			echo '<div class="alert alert-warning">Gagal tersimpan.</div>';
		} else {
			$data['subject'] = $this->input->post("subject");
			$data['nama'] = $this->input->post("nama");
			$data['email'] = $this->input->post("email");
			$data['telp'] = $this->input->post("telp");
			$data['message'] = $this->input->post("message");
			
			$this->db->insert("mail", $data);
			  
			echo '<div class="alert alert-success"> Berhasil Dikirim. </div>'; 
		}
	}

	public function kirim_kritik()
	{
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('id_pelanggan', 'temp', 'required');	
		$this->form_validation->set_rules('nama', 'temp', 'required');
		$this->form_validation->set_rules('email', 'temp', 'required');
		$this->form_validation->set_rules('telp', 'temp', 'required'); 
		$this->form_validation->set_rules('bidang', 'temp', 'required'); 
		$this->form_validation->set_rules('pesan', 'temp', 'required');      		
		
		if ($this->form_validation->run() == FALSE) {
			echo '<div class="alert alert-warning">Gagal tersimpan.</div>';
		} else {
			$data['id_pelanggan'] = $this->input->post("id_pelanggan");
			$data['nama'] = $this->input->post("nama");
			$data['email'] = $this->input->post("email");
			$data['telp'] = $this->input->post("telp");
			$data['bidang'] = $this->input->post("bidang");
			$data['pesan'] = $this->input->post("pesan");
			
			$this->db->insert("kritik", $data);
			echo '<div class="alert alert-success"> Berhasil Dikirim. </div>';    
		}
	}
	

			
}
