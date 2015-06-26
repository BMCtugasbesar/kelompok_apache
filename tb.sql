-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2015 at 07:47 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `kode` varchar(4) NOT NULL DEFAULT '',
  `po` varchar(20) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `jadwal` varchar(20) DEFAULT NULL,
  `fasilitas` varchar(100) DEFAULT NULL,
  `hargabeli` int(10) DEFAULT NULL,
  `hargajual` int(10) DEFAULT NULL,
  `stock` int(3) DEFAULT NULL,
  `detail` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`kode`, `po`, `jurusan`, `kelas`, `jadwal`, `fasilitas`, `hargabeli`, `hargajual`, `stock`, `detail`) VALUES
('B114', 'Borobudur', 'Jember-Denpasar', 'Ekonomi', '06-30', '-', 200000, 30000, 53, ''),
('D666', 'Damri', 'Jember-Denpasar', 'Bisnis', '07-00', 'AC, Toilet', 120000, 150000, 300, 'Mesin MB OH 1626, Air suspension'),
('E001', 'Efisiensi', 'Jember-Cilacap', 'Big Top', '07-00 WIB', 'wifi, toilet, servis makan, smoke area', 250000, 350000, 308, NULL),
('N001', 'Nusantara', 'Jember-Kudus', 'Executive', '08-20 WIB', 'wifi, toilet, servis makan, smoke area', NULL, 300000, 50, NULL),
('R001', 'Rosalia Indah', 'Jember-Semarang', 'Eksekutif', '12-00', '23', 250000, 300000, 30, '23'),
('S001', 'NewShantika', 'Jember-Magetan', 'Executive', '08-10 WIB', 'toilet, servis makan, smoke area', NULL, 200000, 100, NULL),
('Z001', 'TransZentrum MK', 'Jember-Semarang', 'Executive', '07-15 WIB', 'wifi, toilet, servis makan, smoke area', 300000, 300000, 130, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE IF NOT EXISTS `laporan` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `bulanlaporan` date DEFAULT NULL,
  `pemasukan` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `asuransi` int(11) DEFAULT NULL,
  `penjualan` int(11) DEFAULT NULL,
  `pembelian` int(11) DEFAULT NULL,
  `labakotor` int(11) DEFAULT NULL,
  `gaji` int(11) DEFAULT NULL,
  `listrik` int(11) DEFAULT NULL,
  `lababersih` int(11) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`no`, `bulanlaporan`, `pemasukan`, `ppn`, `asuransi`, `penjualan`, `pembelian`, `labakotor`, `gaji`, `listrik`, `lababersih`) VALUES
(1, '2015-06-06', 854000, 74000, 40000, 740000, 600000, 140000, 700000, 400000, 140000),
(2, '2015-06-06', 854000, 74000, 40000, 740000, 600000, 140000, 400000, 500000, -760000);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `idmember` int(3) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `jk` varchar(10) DEFAULT NULL,
  `nohp` varchar(12) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `akses` varchar(10) DEFAULT 'guest',
  PRIMARY KEY (`idmember`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`idmember`, `nama`, `alamat`, `jk`, `nohp`, `email`, `password`, `akses`) VALUES
(1, 'Agus Hariadi M', 'jember', 'Laki-laki', '089776554332', 'agush345@gmail.com', '1', 'admin'),
(3, 'Verdian arifin', 'Probolinggo', 'Laki-laki', '089889766555', 'verdi21@gmail.com', 'verdi21', 'guest'),
(4, 'firman yahya', 'jember', 'Perempuan', '089778776551', 'firman5@gmail.com', 'ghea45', 'guest'),
(5, 'ghea ariesta wijaya', 'jember', 'Perempuan', '087654655434', 'ghea45@gmail.com', 'ghea45', 'guest');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `nopembelian` int(11) NOT NULL AUTO_INCREMENT,
  `tglpembelian` date DEFAULT NULL,
  `kode` varchar(5) DEFAULT NULL,
  `jumlah` int(4) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  PRIMARY KEY (`nopembelian`),
  KEY `kode` (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`nopembelian`, `tglpembelian`, `kode`, `jumlah`, `harga`, `total`) VALUES
(1, '0000-00-00', 'n001', NULL, NULL, NULL),
(2, '0000-00-00', 'n001', NULL, NULL, NULL),
(3, '0000-00-00', 'n001', NULL, NULL, NULL),
(4, '2015-06-02', 'n001', NULL, NULL, NULL),
(5, '2015-06-02', 'B114', 3, 200000, 600000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `notransaksi` int(11) NOT NULL AUTO_INCREMENT,
  `tgltransaksi` date DEFAULT NULL,
  `tglberangkat` date DEFAULT NULL,
  `idmember` int(11) DEFAULT NULL,
  `kode` varchar(5) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `ppn` int(11) DEFAULT NULL,
  `asuransi` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`notransaksi`),
  KEY `idmember` (`idmember`),
  KEY `kode` (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`notransaksi`, `tgltransaksi`, `tglberangkat`, `idmember`, `kode`, `jumlah`, `harga`, `ppn`, `asuransi`, `total`) VALUES
(41, '0000-00-00', '2015-05-19', 1, 'E001', 3, 350000, 35000, 5000, 390000),
(42, '0000-00-00', '2015-02-22', 1, 'B114', 1, 30000, 3000, 5000, 38000),
(43, '2015-06-03', '2015-06-05', 1, 'B114', 2, 30000, 3000, 10000, 43000),
(44, '2015-06-03', '2015-06-18', 1, 'R001', 3, 300000, 30000, 15000, 345000),
(45, '2015-06-03', '2015-06-08', 1, 'B114', 1, 30000, 3000, 5000, 38000);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`kode`) REFERENCES `bus` (`kode`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`idmember`) REFERENCES `member` (`idmember`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`kode`) REFERENCES `bus` (`kode`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
