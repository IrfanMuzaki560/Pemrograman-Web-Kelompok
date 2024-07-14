-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2024 at 05:37 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_apotik21-05-2024`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `kdakun` int(11) NOT NULL,
  `useraname` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  `level` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`kdakun`, `useraname`, `password`, `level`, `nama`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kdbarang` int(11) NOT NULL,
  `kdkategori` int(11) NOT NULL,
  `kdsupplier` int(11) NOT NULL,
  `kdakun` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `barcode` varchar(35) NOT NULL,
  `deskripsi_singkat` varchar(255) NOT NULL,
  `tanggal_expired` date NOT NULL,
  `harga_supplier` int(11) NOT NULL,
  `harga_grosir` int(11) NOT NULL,
  `harga_user` int(11) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kdbarang`, `kdkategori`, `kdsupplier`, `kdakun`, `nama_barang`, `barcode`, `deskripsi_singkat`, `tanggal_expired`, `harga_supplier`, `harga_grosir`, `harga_user`, `stok_barang`, `gambar`) VALUES
(1, 1, 1, 1, 'SIDOMUNTolak Angin Cair Sidomuncul 15ml (1Box 12 sachet) Herbal- Masuk angin Mual Demam FluCUL Tolak', '57894367', 'Tolak Angin Cair Sidomuncul 15ml (1Box 12 sachet) Herbal- Masuk angin Mual Demam Flu\r\nTersedia Variant per sachet, dan Per box ( ada yg isi 5 sachet ada yang 12 Sachet) sesuai Variant produk\r\n', '2025-02-01', 42300, 44900, 44500, 1200, 'produkk.png');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_barang`
--

CREATE TABLE `kategori_barang` (
  `kdkategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_barang`
--

INSERT INTO `kategori_barang` (`kdkategori`, `nama_kategori`) VALUES
(1, 'Obat traditional'),
(2, 'Farmakologi'),
(3, 'Jamu'),
(4, 'Suplemen makanan'),
(5, 'Analgesik');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `kdsupplier` int(11) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `notelp` varchar(35) NOT NULL,
  `email` text NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kdsupplier`, `nama_supplier`, `alamat`, `notelp`, `email`, `foto`) VALUES
(1, 'FR-SYSTEM', 'Desa Mranggen demak jalan gajah 2 gang 1', '083113771731', 'irfanmuzaki560@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kdtransaksi` int(11) NOT NULL,
  `kdbarang` int(11) NOT NULL,
  `kdakun` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `waktu_transaksi` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'ADMIN', '$2y$10$kkECN/ZbeyBhyBeWWphBHOABDd3hK6qZk.lEBNOoPQcfxxamyb/Au'),
(10, 'Irfan Muzaki', '$2y$10$pigbRwn2AbX3r8Yg6VBOmOFiXsc1zOmw7RiWSRc6KiewFnkdRV0fG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`kdakun`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kdbarang`);

--
-- Indexes for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`kdkategori`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kdsupplier`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kdtransaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `kdakun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kdbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  MODIFY `kdkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `kdsupplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `kdtransaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
