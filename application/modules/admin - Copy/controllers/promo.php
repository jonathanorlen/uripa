<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class promo extends MY_Controller {

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
		if ($this->session->userdata('astrosession') == FALSE) {
			redirect(base_url('authenticate'));			
		}
	}

	public function tambah()
	{
		$data['konten'] = $this->load->view('promo/tambah', NULL, TRUE);
		$this->load->view ('main', $data);
	}

	public function simpan_tambah() {
		$this->load->library('form_validation');
		$this->form_validation->set_rules('judul', 'temp', 'required');     
		$this->form_validation->set_rules('isi_event', 'temp', 'required');     
		$this->form_validation->set_rules('tgl_event', 'temp', 'required');

		if ($this->form_validation->run() == FALSE) {
			echo '<div class="alert alert-warning">Gagal tersimpan.</div>';            
		} else {
			$data['judul'] = $this->input->post("judul");
			$data['isi'] = $this->input->post("isi_event");
			$data['tgl'] = $this->input->post("tgl_event");
			$name_foto = $this->input->post("foto_name_upload");		
			$foto = '';
			for($i=0; $i < count($name_foto); $i++)
			{				
				$foto = $name_foto[$i].'|'.$foto;				

			} 			

			$data['foto'] = $foto;
			
			$this->db->insert("promo", $data);
			echo '<div class="alert alert-success">Sudah tersimpan.</div>';            
		}
	}	

	public function daftar()
	{
		$item = 
		$data['konten'] = $this->load->view('promo/daftar', NULL, TRUE);
		$this->load->view ('main', $data);
	}

	public function detail()
	{
		$data['konten'] = $this->load->view('promo/detail', NULL, TRUE);
		$this->load->view ('main', $data);
	}

	public function ubah()
	{
		$data['konten'] = $this->load->view('promo/ubah', NULL, TRUE);
		$this->load->view ('main', $data);
	}
	
	public function simpan_ubah() {
		$this->load->library('form_validation');
		$this->form_validation->set_rules('id', 'temp', 'required');
		$this->form_validation->set_rules('judul', 'temp', 'required');

		if ($this->form_validation->run() == FALSE) {
			echo '<div class="alert alert-warning">Gagal tersimpan.</div>';
		} else {
			$data['judul'] 		= $this->input->post("judul");
			$data['isi'] 		= $this->input->post("isi_event");
			$data['tgl'] 		= $this->input->post("tgl_event");
			$data['status'] = $this->input->post("status"); 
			$id 			    = $this->input->post("id");
			
			$get_old_file = $this->db->query("SELECT * FROM promo where id='$id'");
			$hasil_old_file = $get_old_file->row();
			$string_file = $hasil_old_file->foto;
			list($name_old_file) = (explode('|',$string_file));			

			$name_foto = $this->input->post("foto_name_upload");

			if (!empty($name_foto)) {
				$path = $_SERVER['DOCUMENT_ROOT'].'/SC/component/upload/foto/uploads/'.$name_old_file;
				
				//unlink($path);
			}

			$foto = '';
			for($i=0; $i < count($name_foto); $i++)
			{				
				$foto = $name_foto[$i].'|'.$foto;				
			} 
			
			if (!empty($name_foto)) {
				$data['foto'] = $foto;
			}

			$this->db->update("promo", $data, "id = " . $id);
			echo '<div class="alert alert-success">Berhasil diubah.</div>';
		}
	}

	public function hapus() {      
		$key = $_REQUEST['key'];
		$this->db->delete('promo', array('id' => $key));
		echo '<div class="alert alert-success">Event sudah dihapus.</div>';    
	}
}
