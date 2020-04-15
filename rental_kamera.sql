-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Feb 2019 pada 04.17
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_kamera`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_nama` varchar(255) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`) VALUES
(2, 'fauzi', 'fauzi', '0bd9897bf12294ce35fdc0e21065c8a7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamera`
--

CREATE TABLE `kamera` (
  `kamera_id` int(11) NOT NULL,
  `kamera_merk` varchar(30) NOT NULL,
  `kamera_plat` varchar(20) NOT NULL,
  `kamera_warna` varchar(30) NOT NULL,
  `kamera_status` int(11) NOT NULL COMMENT '1 = tersedia, 2 = di pinjam'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kamera`
--

INSERT INTO `kamera` (`kamera_id`, `kamera_merk`, `kamera_plat`, `kamera_warna`, `kamera_status`) VALUES
(26, 'ios canon', 'ac334454656', 'hitam', 2),
(27, 'canon eos 1100D', '344456123', 'hitam', 2),
(28, 'canon eos 1100D', '34216657', 'hitam', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kostumer`
--

CREATE TABLE `kostumer` (
  `kostumer_id` int(11) NOT NULL,
  `kostumer_nama` varchar(255) NOT NULL,
  `kostumer_alamat` text NOT NULL,
  `kostumer_jk` varchar(10) NOT NULL,
  `kostumer_hp` varchar(20) NOT NULL,
  `kostumer_ktp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kostumer`
--

INSERT INTO `kostumer` (`kostumer_id`, `kostumer_nama`, `kostumer_alamat`, `kostumer_jk`, `kostumer_hp`, `kostumer_ktp`) VALUES
(14, 'Sahlan wa jahlan', 'blok bunder', 'L', '085873445678', '031897786767657'),
(15, 'ibadurohman', 'plangon', 'L', '08889', '320918766'),
(17, 'mukmin', 'weru', 'L', '089776', '32098789'),
(18, 'didim', 'subang', 'L', '08899', '43234009');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_karyawan` int(11) NOT NULL,
  `transaksi_kostumer` int(11) NOT NULL,
  `transaksi_kamera` int(11) NOT NULL,
  `transaksi_tgl_pinjam` date NOT NULL,
  `transaksi_tgl_kembali` date NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  `transaksi_denda` int(11) NOT NULL,
  `transaksi_tgl` date NOT NULL,
  `transaksi_totaldenda` int(11) NOT NULL,
  `transaksi_status` int(11) NOT NULL,
  `transaksi_tgldikembalikan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_karyawan`, `transaksi_kostumer`, `transaksi_kamera`, `transaksi_tgl_pinjam`, `transaksi_tgl_kembali`, `transaksi_harga`, `transaksi_denda`, `transaksi_tgl`, `transaksi_totaldenda`, `transaksi_status`, `transaksi_tgldikembalikan`) VALUES
(12, 2, 14, 25, '2019-02-01', '2019-02-06', 6000, 100, '2019-02-08', 100, 1, '2019-02-07'),
(13, 2, 14, 26, '2019-02-09', '2019-02-14', 75000, 10000, '2019-02-09', 20000, 1, '2019-02-16'),
(14, 2, 15, 27, '2019-02-14', '2019-02-20', 100000, 10000, '2019-02-09', 0, 1, '2019-02-20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `kamera`
--
ALTER TABLE `kamera`
  ADD PRIMARY KEY (`kamera_id`);

--
-- Indeks untuk tabel `kostumer`
--
ALTER TABLE `kostumer`
  ADD PRIMARY KEY (`kostumer_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kamera`
--
ALTER TABLE `kamera`
  MODIFY `kamera_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `kostumer`
--
ALTER TABLE `kostumer`
  MODIFY `kostumer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
