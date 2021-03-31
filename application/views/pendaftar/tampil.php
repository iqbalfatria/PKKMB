<h3><?php echo $title; ?></h3>
 
 <?php if ($this->session->flashdata('berhasil_simpan')) { ?>
 	<?php $this->load->view('alert/berhasil_simpan'); ?>
 <?php } ?>

 <?php if ($this->session->flashdata('berhasil_edit')) { ?>
 	<?php $this->load->view('alert/berhasil_edit'); ?>
 <?php } ?>

 <?php if ($this->session->flashdata('berhasil_hapus')) { ?>
 	<?php $this->load->view('alert/berhasil_hapus'); ?>
 <?php } ?>

 <?php if ($this->session->flashdata('gagal_cari')) { ?>
 	<?php $this->load->view('alert/gagal_cari'); ?>
 <?php } ?>

<a href="<?php echo base_url('pendaftar/tambah'); ?>" class="btn btn-success">Tambah Data</a>

<br>
<br>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>No.</th>
			<th>ID Pendaftar</th>
			<th>Nama</th>
            <th>Kelamin</th>
            <th>Warga Negara</th>
			<th>Tgl Lahir</th>
			<th>Agama</th>
			<th>Alamat</th>
			<th>Asal Sekolah</th>
            <th>No Hp</th>
            <th>Email</th>
            <th>Ayah</th>
            <th>Penghasilan Ayah</th>
            <th>Ibu</th>
            <th>Penghasilan Ibu</th>
            <th>Photo</th>
			<th>Aksi</th>
		</tr>
		<style>
		.table-bordered{
        background-color :  #f6f4e6 !important;
		font-family : "poppins";
      	}
		.pie-chart-container{
			font-family : "poppins";
			color : #ff7b54;
		}
		</style>
	</thead>
	<tbody>
		<?php
		$no = 1 ;
		foreach ($data as $value) { ?>
			<tr>
				<td><?php echo $no; ?></td>
				<td><?php echo $value['id_daftar']; ?></td>
				<td><?php echo $value['nama_siswa']; ?></td>
                <td><?php echo $value['kelamin_siswa'] ?></td>
                <td><?php echo $value['warga_negara'] ?></td>
				<td><?php echo $value['tgl_lahir_siswa'] ?></td>
				<td><?php echo $value['agama_siswa'] ?></td>
				<td><?php echo $value['alamat_siswa'] ?></td>
				<td><?php echo $value['asal_sekolah_siswa'] ?></td>
                <td><?php echo $value['no_hp_siswa'] ?></td>
                <td><?php echo $value['email_siswa'] ?></td>
                <td><?php echo $value['nama_ayah_siswa'] ?></td>
                <td><?php echo $value['penghasilan_ayah_siswa'] ?></td>
                <td><?php echo $value['nama_ibu_siswa'] ?></td>
                <td><?php echo $value['penghasilan_ibu_siswa'] ?></td>
                <td><img src="upload/siswa/<?= $value['image']; ?>" width="100px" alt=""></td>
				<td>
					<a href="<?php echo base_url('pendaftar/edit/'.$value['id_daftar']); ?>" class="btn btn-xs btn-warning">
						<i class="glyphicon glyphicon-pencil"></i>
					</a>
					<a href="<?php echo base_url('pendaftar/hapus/'.$value['id_daftar']); ?>" onclick="return confirm('Apakah anda yakin ingin menghapus data ini ?')" class="btn btn-xs btn-danger">
						<i class="glyphicon glyphicon-trash"></i>
					</a>
				</td>
			</tr>
		<?php
		$no++;
		}
		?>

		
	</tbody>
</table>
<div class="chart-container">
    <div class="pie-chart-container">
      <canvas id="pie-chart"></canvas>
    </div>
  </div>
