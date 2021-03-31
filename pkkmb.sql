-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2021 at 05:25 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pkkmb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_daftar`
--

CREATE TABLE `tb_daftar` (
  `id_daftar` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `kelamin_siswa` enum('Pria','Wanita') NOT NULL,
  `warga_negara` varchar(60) NOT NULL,
  `tgl_lahir_siswa` date NOT NULL,
  `agama_siswa` enum('Islam','Kristen','Katholik','Budha','Hindu','Konghuchu') NOT NULL,
  `alamat_siswa` text NOT NULL,
  `asal_sekolah_siswa` varchar(60) NOT NULL,
  `no_hp_siswa` varchar(15) NOT NULL,
  `email_siswa` varchar(60) NOT NULL,
  `nama_ayah_siswa` varchar(60) NOT NULL,
  `penghasilan_ayah_siswa` enum(' < 1 Juta',' > 1 Juta') NOT NULL,
  `nama_ibu_siswa` varchar(60) NOT NULL,
  `penghasilan_ibu_siswa` enum(' < 1 Juta',' > 1 Juta') NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_daftar`
--

INSERT INTO `tb_daftar` (`id_daftar`, `nama_siswa`, `kelamin_siswa`, `warga_negara`, `tgl_lahir_siswa`, `agama_siswa`, `alamat_siswa`, `asal_sekolah_siswa`, `no_hp_siswa`, `email_siswa`, `nama_ayah_siswa`, `penghasilan_ayah_siswa`, `nama_ibu_siswa`, `penghasilan_ibu_siswa`, `image`) VALUES
(15, 'Mochammad Iqbal Fatria', 'Pria', 'kazagstan', '2121-03-12', 'Islam', 'had', 'SMP N 1 SGR', '0219213', 'iqbal99@gmail.com', 'gading', ' < 1 Juta', 'dawdwe', ' < 1 Juta', '31-01-2021-img.jpg'),
(16, 'Mochammad Iqbal Fatria', 'Pria', 'kazagstan', '2001-02-12', 'Islam', 'adwuadhawd', 'SMP N 1 BKS', '00821219', 'ilham@gmail.com', 'gading', ' < 1 Juta', 'hawgayd', ' < 1 Juta', '31-01-2021-img2.png'),
(17, 'Dayana', 'Wanita', 'kazagstan', '2012-03-12', 'Kristen', 'Jl. Bojong gede', 'SMP N 1 SGR', '9128192124', 'dayana@gmail.com', 'gading', ' < 1 Juta', 'gisel', ' < 1 Juta', '01-02-2021-img.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `status` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `akses` enum('admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `alamat`, `telepon`, `status`, `password`, `akses`) VALUES
('admin', 'Mochammad Iqbal Fatria', 'Singaraja', '081390161897', 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_web`
--

CREATE TABLE `tb_web` (
  `id_web` int(11) NOT NULL,
  `nama_web` varchar(35) NOT NULL,
  `domain_web` varchar(10) NOT NULL,
  `slogan_web` text NOT NULL,
  `alamat_web` text NOT NULL,
  `telp_web` varchar(16) NOT NULL,
  `fax_web` varchar(16) NOT NULL,
  `email_web` varchar(50) NOT NULL,
  `author_web` varchar(50) NOT NULL,
  `deskripsi_web` text NOT NULL,
  `keyword_web` text NOT NULL,
  `tahun_web` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_web`
--

INSERT INTO `tb_web` (`id_web`, `nama_web`, `domain_web`, `slogan_web`, `alamat_web`, `telp_web`, `fax_web`, `email_web`, `author_web`, `deskripsi_web`, `keyword_web`, `tahun_web`) VALUES
(1, 'SMA N 4 SINGARAJA', '.ID', 'Website pendaftaran siswa baru SMA N 4 SINGARAJA', 'JLN. KAMBOJA NO 123 SINGARAJA, BALI', '08909090909', '---', 'foursma@gmail.com', 'Moch. Iqbal Fatria', 'SMA N 4 SINGARAJA merupakan SMA yang mengimplementasikan kondisi belajar yang efektif untuk masa depan anak', 'Website PKKMB', 2021);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_daftar`
--
ALTER TABLE `tb_daftar`
  ADD PRIMARY KEY (`id_daftar`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_web`
--
ALTER TABLE `tb_web`
  ADD PRIMARY KEY (`id_web`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_daftar`
--
ALTER TABLE `tb_daftar`
  MODIFY `id_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_web`
--
ALTER TABLE `tb_web`
  MODIFY `id_web` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
