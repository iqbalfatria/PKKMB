<style>
.jumbotron{
  background-color : #337ab7;
  font-family : "poppins";
}h2{
  color : #f6f5f5;
}
</style>
<div class="jumbotron">
	<?php
	$id_login   = $this->session->userdata("id_user");
    $datalogin  = $this->db->get_where("tb_user", array('id_user'=> $id_login))->row();
	?>
    <h2>Selamat Datang <?php echo $datalogin->nama; ?></h2>
    <p><?php echo $web->slogan_web; ?></p>
</div>
