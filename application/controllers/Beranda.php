<?php
defined('BASEPATH') OR exit('No direct script access allowed');
//controller beranda untuk user(siswa)
class Beranda extends CI_Controller {

	public function index()//fungsi untuk menampilkan data yang berada di database dan konten_publik pada view
	{
		$data['web']	= $this->MWeb->tampil()->row();
		$data['konten_public'] = "konten_public";
		$this->load->view('template_public', $data);
	}

}

/* End of file Beranda.php */
/* Location: ./application/controllers/Beranda.php */