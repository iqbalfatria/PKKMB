<?php
class Logout extends CI_Controller {
	//setelah melakukan logout akan langsung menuju beranda user.
	public function index()
	{
		$this->session->sess_destroy();
		redirect(base_url('beranda'));
	}

}