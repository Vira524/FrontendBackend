-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 23. Nopember 2020 jam 04:18
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_anggota`
--

CREATE TABLE IF NOT EXISTS `tb_anggota` (
  `nis` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tempat_lahir` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('L','P') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jurusan` enum('TI','MSN','PRTN') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2016210007 ;

--
-- Dumping data untuk tabel `tb_anggota`
--

INSERT INTO `tb_anggota` (`nis`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `jurusan`, `tgl_input`) VALUES
(2016210001, 'Nawirah', 'Sukorejo', '2004-07-02', 'P', 'TI', '2020-09-08 05:10:06'),
(2016210002, 'Putri Mawar', 'Pasuruan', '2004-09-10', 'P', 'TI', '2020-09-08 05:10:06'),
(2016210003, 'Muhammad Ardy', 'Surabaya', '2003-09-06', 'L', 'MSN', '2020-09-07 17:00:00'),
(2016210004, 'Narti', 'Purwosari', '2003-07-16', 'P', 'PRTN', '2020-09-08 05:10:06'),
(2016210005, 'Muhammad Baba', 'Pandaan', '2003-08-06', 'L', 'PRTN', '2020-09-07 17:00:00'),
(2016210006, 'Deswita', 'Malang', '2004-09-06', 'P', 'PRTN', '2020-09-07 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE IF NOT EXISTS `tb_buku` (
  `id_buku` int(10) NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pengarang` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `penerbit` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tahun_terbit` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `isbn` varchar(25) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `lokasi` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_buku`),
  UNIQUE KEY `isbn` (`isbn`),
  UNIQUE KEY `isbn_2` (`isbn`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `jumlah_buku`, `lokasi`, `tgl_input`) VALUES
(1, 'Bahasa Indonesia', 'Rahmat Saleh, M.Pd.', 'Pusat Kurikulum dan Perbukuan, Kemdikbud', '2008', '12345', 16, 'Rak 1', '2020-11-02 04:55:05'),
(2, 'Desain Grafis', 'Andi Novianto', 'Erlangga', '2013', '23456', 12, 'Rak 2', '2020-11-23 03:15:33'),
(3, 'Pemograman Web', 'Pidi', 'Pusat Kurikulum dan Perbukuan, Kemdikbud', '2013', '34567', 5, 'Rak 2', '2020-11-02 02:13:34'),
(4, 'Basis Data', 'Henry Pandia', 'Erlangga', '2013', '45678', 7, 'Rak 2', '2020-11-02 02:13:43'),
(5, 'Pendidikan Agama Islam', 'Mustahdi dan Mustakim', 'Pusat Kurikulum dan Perbukuan, Kemdikbud', '2017', '56789', 20, 'Rak 1', '2020-11-02 01:57:40'),
(6, 'Bahasa Inggris', 'Mahrukh Bashir / Nurhasanah / Sonya Sinyanyuri', 'Pusat Kurikulum dan Perbukuan, Kemdikbud', '2014', '67890', 20, 'Rak 1', '2020-11-02 02:06:56'),
(7, 'Pendidikan Kewarganegaraan', 'Yusnawan Lubis dan Mohamad Sodeli', 'Erlangga', '2006', '78901', 20, 'Rak 1', '2020-11-02 03:57:14'),
(8, 'Permesinan', 'Muyono', 'Pusat Kurikulum dan Perbukuan, Kemdikbud', '2013', '68024', 5, 'Rak 3', '2020-11-02 02:55:10'),
(9, 'Pertanian', 'Ameilia Z. Siregar', 'Pusat Kurikulum dan Perbukuan, Kemdikbud', '2010', '79135', 5, 'Rak 3', '2020-11-02 02:58:31'),
(10, 'Dear Nathan', 'Erisca Febriani', 'Best Media', '2016', '89012', 10, 'Rak 4', '2020-11-02 02:24:18'),
(11, 'Hello Salma', 'Erisca Febriani', 'Best Media', '2016', '90123', 10, 'Rak 4', '2020-11-02 02:24:04'),
(12, 'Thank You Salma', 'Erisca Febriani', 'Best Media', '2016', '01234', 10, 'Rak 4', '2020-11-02 02:16:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_lokasi`
--

CREATE TABLE IF NOT EXISTS `tb_lokasi` (
  `id_lokasi` int(11) NOT NULL AUTO_INCREMENT,
  `lokasi` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  PRIMARY KEY (`id_lokasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tb_lokasi`
--

INSERT INTO `tb_lokasi` (`id_lokasi`, `lokasi`) VALUES
(1, 'Rak 1'),
(2, 'Rak 2'),
(3, 'Rak 3'),
(4, 'Rak 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_buku` int(11) NOT NULL,
  `judul` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nis` int(11) NOT NULL,
  `nama` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_input` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `id_buku`, `judul`, `nis`, `nama`, `tgl_pinjam`, `tgl_kembali`, `status`, `tgl_input`) VALUES
(1, 9, 'Pertanian', 2016210001, 'Nawirah', '2020-11-23', '2020-11-30', 'Pinjam', '2020-11-23 03:01:18'),
(2, 5, 'Pendidikan Agama Islam', 2016210002, 'Putri Mawar', '2020-11-21', '2020-11-28', 'Pinjam', '2020-11-23 03:03:12'),
(3, 2, 'Desain Grafis', 2016210006, 'Deswit', '2020-11-23', '2020-11-30', 'Pinjam', '2020-11-23 03:18:17'),
(4, 4, 'Basis Data', 2016210003, 'Muhammad Ardy', '2020-11-21', '2020-11-28', 'Pinjam', '2020-11-23 02:57:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` enum('admin','user') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`, `level`) VALUES
(1, 'Admin', 'Admin', 'Admin', 'admin'),
(2, 'User', 'User', 'User', 'user'),
(4, 'Narti', 'Narti', 'Narti', 'user'),
(10, 'Deswita', 'Deswita', 'Deswita', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
