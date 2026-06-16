-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 28, 2026 at 04:27 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bansos_desa`
--

-- --------------------------------------------------------

--
-- Table structure for table `bansos`
--

DROP TABLE IF EXISTS `bansos`;
CREATE TABLE IF NOT EXISTS `bansos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `nama_prov` varchar(100) NOT NULL,
  `nama_kab` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `tanggungan` int NOT NULL,
  `jumlah_anak` int NOT NULL,
  `penghasilan_per_bulan` decimal(12,2) NOT NULL,
  `status_kelayakan` enum('Layak','Tidak Layak') NOT NULL,
  `alasan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bansos`
--

INSERT INTO `bansos` (`id`, `nama`, `nama_prov`, `nama_kab`, `pekerjaan`, `tanggungan`, `jumlah_anak`, `penghasilan_per_bulan`, `status_kelayakan`, `alasan`) VALUES
(1, 'ABIDIN', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Buruh Tani', 5, 4, 650000.00, 'Layak', 'Data Training'),
(2, 'JUBAEDAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Pedagang Kue', 4, 3, 900000.00, 'Layak', 'Data Training'),
(3, 'ELMINAWATI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'PNS', 2, 1, 4800000.00, 'Tidak Layak', 'Data Training'),
(4, 'BAIQ EKA ANGGRAIN', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Karyawan Swasta', 3, 2, 3200000.00, 'Tidak Layak', 'Data Training'),
(5, 'RUMIAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Pemulung', 6, 5, 450000.00, 'Layak', 'Data Training'),
(6, 'NIKMAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Guru Honorer', 4, 2, 1200000.00, 'Layak', 'Data Training'),
(7, 'SUWARDI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'BUMN', 2, 1, 5500000.00, 'Tidak Layak', 'Data Training'),
(8, 'NARIMIN', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'ART', 5, 4, 800000.00, 'Layak', 'Data Training'),
(9, 'HAIRUNI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Ojek Online', 4, 3, 1500000.00, 'Layak', 'Data Training'),
(10, 'JUMAKYAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'PNS Kes', 3, 1, 4200000.00, 'Tidak Layak', 'Data Training'),
(11, 'SAKNAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Buruh Bangunan', 5, 3, 1100000.00, 'Layak', 'Data Training'),
(12, 'RETIAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Tidak Kerja', 4, 3, 300000.00, 'Layak', 'Data Training'),
(13, 'BAIQ MARTINI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Karyawan Bank', 2, 1, 6000000.00, 'Tidak Layak', 'Data Training'),
(14, 'SAHRAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Pedagang Keliling', 5, 4, 950000.00, 'Layak', 'Data Training'),
(15, 'NURUL AINI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Nelayan', 4, 3, 1300000.00, 'Layak', 'Data Training'),
(16, 'MAESARAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Guru PNS', 3, 2, 3900000.00, 'Tidak Layak', 'Data Training'),
(17, 'LUKMAN SURYADI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Supir Angkot', 6, 4, 1250000.00, 'Layak', 'Data Training'),
(18, 'KARTINI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Buruh Cuci', 3, 2, 600000.00, 'Layak', 'Data Training'),
(19, 'RIANA', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Manajer Swasta', 2, 1, 8500000.00, 'Tidak Layak', 'Data Training'),
(20, 'MISRAH.', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Karyawan Toko', 4, 2, 1800000.00, 'Tidak Layak', 'Data Training'),
(21, 'ENDANG FITRIANI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Tukang Sol Sepatu', 5, 4, 700000.00, 'Layak', 'Data Training'),
(22, 'MANIAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Pedagang Warung', 4, 3, 1400000.00, 'Layak', 'Data Training'),
(23, 'ANISAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'PNS Pemkot', 3, 2, 4600000.00, 'Tidak Layak', 'Data Training'),
(24, 'FARIDAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Karyawan Pabrik', 3, 1, 2500000.00, 'Tidak Layak', 'Data Training'),
(25, 'MURIAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Tukang Sampah', 5, 3, 550000.00, 'Layak', 'Data Training'),
(26, 'SAHDAN', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Penjahit Pakaian', 4, 2, 1150000.00, 'Layak', 'Data Training'),
(27, 'SENIWATI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Dosen', 2, 1, 5200000.00, 'Tidak Layak', 'Data Training'),
(28, 'AWANAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Buruh Pabrik', 4, 3, 1600000.00, 'Layak', 'Data Training'),
(29, 'FITRIANINGSIH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Tukang Kayu', 5, 4, 1350000.00, 'Layak', 'Data Training'),
(30, 'RANI MAHARANI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'PNS Daerah', 4, 2, 4100000.00, 'Tidak Layak', 'Data Training'),
(31, 'DENI RAMEDAN', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Buruh Angkut', 6, 5, 900000.00, 'Layak', 'Data Training'),
(32, 'SITI JUMA INAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'ART Harian', 3, 2, 750000.00, 'Layak', 'Data Training'),
(33, 'ERNAWATI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Karyawan Swasta', 2, 1, 3400000.00, 'Tidak Layak', 'Data Training'),
(34, 'SARISAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Jual Gorengan', 5, 3, 1050000.00, 'Layak', 'Data Training'),
(35, 'SAINAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Supir Truk', 4, 3, 1700000.00, 'Layak', 'Data Training'),
(36, 'HARTUTI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'PNS Pusat', 3, 1, 5000000.00, 'Tidak Layak', 'Data Training'),
(37, 'BAIQ HERAWATI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Tukang Parkir', 5, 4, 800000.00, 'Layak', 'Data Training'),
(38, 'MUNISAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Buruh Tenun', 4, 2, 950000.00, 'Layak', 'Data Training'),
(39, 'MURNAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Karyawan Swasta', 3, 2, 2900000.00, 'Tidak Layak', 'Data Training'),
(40, 'SALMIAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Pedagang Kue', 4, 3, 1200000.00, 'Layak', 'Data Training'),
(41, 'SAKILAWATI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Tukang Becak', 5, 4, 600000.00, 'Layak', 'Data Training'),
(42, 'SALATIAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Sales Toko', 3, 2, 1950000.00, 'Tidak Layak', 'Data Training'),
(43, 'MULIANI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'PNS Guru', 2, 1, 4700000.00, 'Tidak Layak', 'Data Training'),
(44, 'ISTIHARAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Buruh Cuci Keliling', 6, 4, 700000.00, 'Layak', 'Data Training'),
(45, 'MARTIAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Karyawan Swasta', 3, 2, 2100000.00, 'Layak', 'Data Training'),
(46, 'SITI HAJAR', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Jual Nasi Bungkus', 4, 3, 1100000.00, 'Layak', 'Data Training'),
(47, 'HUDRIAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Supir Travel', 4, 2, 2300000.00, 'Tidak Layak', 'Data Training'),
(48, 'MAHNIM', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Penjahit Sampingan', 5, 3, 1300000.00, 'Layak', 'Data Training'),
(49, 'LALU RUSLAN', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Karyawan Administrasi', 4, 2, 1850000.00, 'Tidak Layak', 'Data Training'),
(50, 'SRI HANDAYANI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Buruh Harian Lepas', 5, 4, 850000.00, 'Layak', 'Data Training'),
(51, 'SAKNAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Pedagang Ikan', 4, 3, 1000000.00, 'Layak', 'Data Training'),
(52, 'SURIANI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'PNS Teknis', 2, 1, 4300000.00, 'Tidak Layak', 'Data Training'),
(53, 'SAPURAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Buruh Kebun', 5, 4, 700000.00, 'Layak', 'Data Training'),
(54, 'MUNAWARAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Ojek Wanita', 3, 2, 1300000.00, 'Layak', 'Data Training'),
(55, 'SUMIATI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Karyawan Salon', 3, 1, 2200000.00, 'Tidak Layak', 'Data Training'),
(56, 'SARAKYAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Buruh Setrika', 4, 3, 800000.00, 'Layak', 'Data Training'),
(57, 'MUHIR', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Karyawan Bengkel', 3, 2, 2600000.00, 'Tidak Layak', 'Data Training'),
(58, 'MASIAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Jual Pulsa/Sembako', 4, 3, 1400000.00, 'Layak', 'Data Training'),
(59, 'NYAMAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'PNS Kelurahan', 3, 2, 4500000.00, 'Tidak Layak', 'Data Training'),
(60, 'MISLAH', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Tukang Jahit Makloon', 5, 3, 1200000.00, 'Layak', 'Data Training'),
(61, 'NURHAYATI', 'NUSA TENGGARA BARAT', 'KOTA MATARAM', 'Karyawan Fotocopy', 4, 2, 1650000.00, 'Tidak Layak', 'Data Training'),
(62, 'dika rizki', 'NTB', 'PRAYA', 'buruh', 2, 1, 3000000.00, 'Tidak Layak', 'Prediksi menggunakan algoritma Machine Learning kNN');

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

DROP TABLE IF EXISTS `conditions`;
CREATE TABLE IF NOT EXISTS `conditions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rule_id` int NOT NULL,
  `variable_name` varchar(50) NOT NULL,
  `operator` varchar(10) NOT NULL,
  `target_value` varchar(255) NOT NULL,
  `logical_operator` varchar(10) DEFAULT 'AND',
  PRIMARY KEY (`id`),
  KEY `fk_rule_condition` (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`id`, `rule_id`, `variable_name`, `operator`, `target_value`, `logical_operator`) VALUES
(1, 1, 'pekerjaan', 'IN', 'PNS,TNI,POLRI,BUMN', 'AND'),
(2, 2, 'dtks', '=', 'Tidak', 'AND'),
(3, 3, 'tmp_status', '=', 'SANGAT MISKIN', 'AND'),
(4, 3, 'sekolah', '=', 'Ya', 'AND'),
(5, 4, 'tmp_status', '=', 'MISKIN', 'AND'),
(6, 5, 'pekerjaan', '=', 'Tidak Kerja', 'AND'),
(7, 5, 'desil', 'IN', '5,6', 'AND'),
(8, 6, 'desil', 'IN', '7,8,9,10', 'AND'),
(9, 7, 'tmp_status', '=', 'SANGAT MISKIN', 'AND'),
(10, 7, 'pekerjaan', '=', 'Tidak Kerja', 'AND');

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
CREATE TABLE IF NOT EXISTS `rules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(100) NOT NULL,
  `priority_order` int NOT NULL,
  `conclusion_variable` varchar(50) NOT NULL,
  `conclusion_value` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `rule_name`, `priority_order`, `conclusion_variable`, `conclusion_value`, `description`) VALUES
(1, 'Aturan Profesi Mapan', 1, 'rekomendasi', 'TIDAK LAYAK', 'Penerima profesi mapan tidak berhak menerima bantuan'),
(2, 'Aturan DTKS', 1, 'rekomendasi', 'TIDAK LAYAK', 'Tidak terdaftar DTKS'),
(3, 'PKH Pendidikan', 3, 'rekomendasi', 'LAYAK TERIMA PKH PENDIDIKAN', 'Keluarga miskin dengan anak sekolah'),
(4, 'Bantuan Sembako (BPNT)', 3, 'rekomendasi', 'LAYAK TERIMA BPNT', 'Keluarga miskin penerima sembako'),
(5, 'BLT Dana Desa', 3, 'rekomendasi', 'LAYAK TERIMA BLT DANA DESA', 'Warga tidak bekerja'),
(6, 'Aturan Ekonomi Mampu', 1, 'rekomendasi', 'TIDAK LAYAK', 'Ekonomi dianggap mampu'),
(7, 'PKH Lansia', 3, 'rekomendasi', 'LAYAK TERIMA PKH LANSIA', 'Keluarga miskin dengan lansia');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `conditions`
--
ALTER TABLE `conditions`
  ADD CONSTRAINT `fk_rule_condition` FOREIGN KEY (`rule_id`) REFERENCES `rules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
