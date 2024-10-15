-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2024 at 06:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_diagnosa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `username`, `password`) VALUES
(1, 'Anita Pratiwi', 'admin@admin.com', 'admin', '7e51eea5fa101ed4dade9ad3a7a072bb');

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `alt_id` int(11) NOT NULL,
  `alt_inisial` varchar(255) NOT NULL,
  `alt_nama` varchar(255) NOT NULL,
  `alt_penyebab` text NOT NULL,
  `alt_solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`alt_id`, `alt_inisial`, `alt_nama`, `alt_penyebab`, `alt_solusi`) VALUES
(7, 'A1', 'Protanopia', 'Protanopia: terjadi ketika warna merah hanya terlihat abu-abu gelap. Beberapa nuansa oranye, kuning, dan hijau terlihat kuning.  \r\nAdapun sejumlah pemicu yang menyebabkan hal ini dapat terjadi diantaranya:\r\n\r\nTurunan. Sebagian besar kasus buta warna adalah penyakit yang diturunkan dari orang tua ke anak, dan lebih sering terjadi pada pria daripada wanita. Tingkat keparahan yang diturunkan bisa ringan, sedang atau berat, biasanya mempengaruhi kedua mata, dan tingkat keparahannya tidak berubah seumur hidup. \r\nPenyakit tertentu. Beberapa kondisi yang dapat menyebabkan defisit warna adalah anemia sel sabit, diabetes, penyakit Alzheimer, multiple sclerosis, glaukoma, penyakit Parkinson, alkoholisme kronik, dan leukemia.  \r\nEfek samping dari obat-obatan tertentu. Mengonsumsi obat tertentu dapat memberikan efek samping terhadap penglihatan warna. Beberapa obat yang dimaksud antara lain obat untuk penyakit jantung, tekanan darah tinggi, penyakit autoimun tertentu, infeksi, gangguan saraf, disfungsi ereksi, hingga masalah psikologis.\r\nPenuaan. Kemampuan untuk melihat warna menurun secara perlahan seiring bertambahnya usia.\r\nBahan kimia. Terkena paparan bahan kimia tertentu, terutama karbon disulfida dan pupuk, memicu hilangnya penglihatan warna.', 'Kacamata / Lensa Kontak\r\ndan Tidak ada operasi untuk penyakit ini!'),
(8, 'B1', 'Deuteranopia', 'Deuteranopia: terjadi ketika warna merah mungkin terlihat kuning kecoklatan, dan hijau mungkin terlihat krem.\r\nAdapun sejumlah pemicu yang menyebabkan hal ini dapat terjadi diantaranya:\r\n\r\nTurunan. Sebagian besar kasus buta warna adalah penyakit yang diturunkan dari orang tua ke anak, dan lebih sering terjadi pada pria daripada wanita. Tingkat keparahan yang diturunkan bisa ringan, sedang atau berat, biasanya mempengaruhi kedua mata, dan tingkat keparahannya tidak berubah seumur hidup. \r\nPenyakit tertentu. Beberapa kondisi yang dapat menyebabkan defisit warna adalah anemia sel sabit, diabetes, penyakit Alzheimer, multiple sclerosis, glaukoma, penyakit Parkinson, alkoholisme kronik, dan leukemia.  \r\nEfek samping dari obat-obatan tertentu. Mengonsumsi obat tertentu dapat memberikan efek samping terhadap penglihatan warna. Beberapa obat yang dimaksud antara lain obat untuk penyakit jantung, tekanan darah tinggi, penyakit autoimun tertentu, infeksi, gangguan saraf, disfungsi ereksi, hingga masalah psikologis.\r\nPenuaan. Kemampuan untuk melihat warna menurun secara perlahan seiring bertambahnya usia.\r\nBahan kimia. Terkena paparan bahan kimia tertentu, terutama karbon disulfida dan pupuk, memicu hilangnya penglihatan warna.', 'Kacamata / Lensa Kontak dan tidak ada operasi untuk penyakit buta warna.'),
(9, 'C1', 'Tritanopia', 'Tritanopia\r\nTritanopia adalah kondisi ketika mata melihat warna biru seperti hijau dan warna kuning seperti abu–abu terang atau keunguan.\r\nAdapun sejumlah pemicu yang menyebabkan hal ini dapat terjadi diantaranya:\r\n\r\nTurunan. Sebagian besar kasus buta warna adalah penyakit yang diturunkan dari orang tua ke anak, dan lebih sering terjadi pada pria daripada wanita. Tingkat keparahan yang diturunkan bisa ringan, sedang atau berat, biasanya mempengaruhi kedua mata, dan tingkat keparahannya tidak berubah seumur hidup. \r\nPenyakit tertentu. Beberapa kondisi yang dapat menyebabkan defisit warna adalah anemia sel sabit, diabetes, penyakit Alzheimer, multiple sclerosis, glaukoma, penyakit Parkinson, alkoholisme kronik, dan leukemia.  \r\nEfek samping dari obat-obatan tertentu. Mengonsumsi obat tertentu dapat memberikan efek samping terhadap penglihatan warna. Beberapa obat yang dimaksud antara lain obat untuk penyakit jantung, tekanan darah tinggi, penyakit autoimun tertentu, infeksi, gangguan saraf, disfungsi ereksi, hingga masalah psikologis.\r\nPenuaan. Kemampuan untuk melihat warna menurun secara perlahan seiring bertambahnya usia.\r\nBahan kimia. Terkena paparan bahan kimia tertentu, terutama karbon disulfida dan pupuk, memicu hilangnya penglihatan warna.', 'Kacamata / Lensa Kontak dan tidak ada operasi untuk penyakit buta warna.'),
(10, 'M1', 'Monokrom', 'Monokromasi adalah kondisi retina mata yang mengalami kerusakan total dalam merespon warna. Monokromasi ditandai dengan hilangnya atau berkurangnya semua penglihatan warna, sehingga yang terlihat hanya putih dan hitam yang mampu diterima retina. Jenis buta warna ini prevalensinya sangat jarang.', 'Konsul Dokter'),
(11, 'T', 'Trikomasi', 'Buta warna jenis trikromasi adalah perubahan sensitifitas warna dari satu jenis atau lebih kerucut, yaitu mata mengalami perubahan tingkat sensitifitas warna dari satu atau lebih sel kerucut pada retina. Dimana penderita sulit untuk mengenali warna merah, hijau dan biru. Jenis buta warna ini yang sering dialami oleh kebanyakan orang.', 'Kacamata / Lensa Kontak dan tidak ada operasi untuk penyakit buta warna.'),
(13, 'NML', 'NORMAL', 'Mata anda baik baik saja', '-');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `gej_id` int(11) NOT NULL,
  `gej_inisial` varchar(10) NOT NULL,
  `gej_nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`gej_id`, `gej_inisial`, `gej_nama`, `foto`) VALUES
(21, 'NP1', 'Apakah anda melihat warna gambar dibawah ini sama?', 'Normal Protanopia.png'),
(22, 'ND1', 'Apakah anda melihat warna gambar dibawah ini sama?', '6686a29d9a71f.png'),
(23, 'NT', 'Apakah anda melihat warna gambar dibawah ini sama?', '6686a2b9d304d.png'),
(24, 'NM', 'Apakah anda melihat warna gambar dibawah ini sama?', '6686a2cdd3b78.png'),
(26, 'PR1', 'Apakah anda melihat angka dibawah ini, maka jawablah dengan ketentuan : Ya (apabila melihat nomor 6), Tidak (apabila melihat angka 96)', '668beba7b9689.png'),
(27, 'PR2', 'Apakah anda melihat angka dibawah ini, maka jawablah dengan ketentuan : Ya (apabila melihat nomor 9), Tidak (apabila melihat angka 96)', '668beba7b9689.png'),
(28, 'ALL', 'Apakah anda tidak melihat angka pada plate di bawah ini?', '668bf0b886a1b.png'),
(36, 'NML', 'Apakah anda melihat angak 2 di dalam gambar ini ?', '66a545607eea7.png');

-- --------------------------------------------------------

--
-- Table structure for table `kecocokan`
--

CREATE TABLE `kecocokan` (
  `kec_id` int(11) NOT NULL,
  `kec_alternatif` int(11) DEFAULT NULL,
  `kec_gejala` int(11) DEFAULT NULL,
  `kec_nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kecocokan`
--

INSERT INTO `kecocokan` (`kec_id`, `kec_alternatif`, `kec_gejala`, `kec_nilai`) VALUES
(279, 13, 21, 0),
(280, 13, 22, 0),
(281, 13, 23, 0),
(282, 13, 24, 0),
(283, 13, 26, 0),
(284, 13, 27, 0),
(285, 13, 28, 0),
(286, 13, 36, 1),
(287, 7, 21, 1),
(288, 7, 22, 0),
(289, 7, 23, 0),
(290, 7, 24, 0),
(291, 7, 26, 0),
(292, 7, 27, 0),
(293, 7, 28, 1),
(294, 7, 36, 0),
(295, 8, 21, 0),
(296, 8, 22, 1),
(297, 8, 23, 0),
(298, 8, 24, 0),
(299, 8, 26, 0),
(300, 8, 27, 1),
(301, 8, 28, 1),
(302, 8, 36, 0),
(303, 9, 21, 0),
(304, 9, 22, 0),
(305, 9, 23, 1),
(306, 9, 24, 0),
(307, 9, 26, 0),
(308, 9, 27, 0),
(309, 9, 28, 1),
(310, 9, 36, 0),
(319, 10, 21, 1),
(320, 10, 22, 1),
(321, 10, 23, 1),
(322, 10, 24, 1),
(323, 10, 26, 1),
(324, 10, 27, 1),
(325, 10, 28, 1),
(326, 10, 36, 0),
(327, 11, 21, 1),
(328, 11, 22, 0),
(329, 11, 23, 0),
(330, 11, 24, 0),
(331, 11, 26, 1),
(332, 11, 27, 0),
(333, 11, 28, 1),
(334, 11, 36, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_kecocokan`
--

CREATE TABLE `tmp_kecocokan` (
  `alternatif` varchar(20) NOT NULL,
  `gejala` varchar(10) NOT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(255) NOT NULL,
  `user_hp` varchar(255) NOT NULL,
  `user_hasil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_hp`, `user_hasil`) VALUES
(2, 'Sutanto', '089776766611', 1),
(3, 'Suwardi Yahya', '09121212222', 0),
(4, 'Supardi', '0812121211', 2),
(5, 'Ronaldo', '09221221222', 5),
(6, 'Suanto', '0822121212', NULL),
(7, 'Suanto', '0828282233', 0),
(8, 'Rahmat', '0822112332', 2),
(9, 'asd', '243', NULL),
(10, 'dsf', '343', NULL),
(11, 'asad', '789', 0),
(12, 'sdf', 'dfdf', NULL),
(13, 'Muhammad Abyan Nur Fathoni', '0895363148668', 0),
(14, 'admin', '34324', NULL),
(15, 'asd', '434', 0),
(16, 'a', '34', 0),
(17, 'sfg', '4532', NULL),
(18, 'hgjf', '768', NULL),
(19, 'asdasdsadsadsadsadsadsadsadsadsadsa', '021424545646', NULL),
(20, 'a', '3', 2),
(21, 'abyan', '34321', NULL),
(22, 'asd', '627879', NULL),
(23, 'dfg', '345', 1),
(24, 'sad', '34', NULL),
(25, 'asd', '34', NULL),
(26, 'fsdf', '343', 0),
(27, 'rewr', '4523', NULL),
(28, 'asdf', '342', 0),
(31, 'sfa', '342', NULL),
(32, 'asd', '23', NULL),
(33, 'sad', '324', NULL),
(34, 'ads', '34', 0),
(40, 'asd', '432', 0),
(45, 'ugjg', '868', NULL),
(46, 'gh', '5654', NULL),
(47, 'sdf', '435', NULL),
(48, 'uhwda', '782863728', NULL),
(49, 'ijhi', '98596', NULL),
(54, 'sa', '213', 0),
(55, 'asd', '123', 0),
(56, 'dsa', '1', 0),
(57, 'asd', '123', 0),
(58, 'a', '213', 0),
(59, 'asd', '123', NULL),
(60, 'asd', '1', NULL),
(61, 'a', '2', 0),
(62, 'a', '12', 0),
(64, 'a', '3', 0),
(65, 'a', '2', 0),
(66, '1', '2', 0),
(67, 'a', '2', NULL),
(69, 'a', '12', NULL),
(72, 'L', '0', NULL),
(73, 'abyan', '895363148668', 0),
(74, 'admin', '2324', NULL),
(78, 'hkh', '87', 9),
(79, 'sa', '1', 10),
(80, 'ad', '23', 0),
(81, 'a', '2', 0),
(82, 'asd', '24', NULL),
(83, 'a', '2', NULL),
(84, 'asd', '34', 0),
(85, 'asd', '234', 0),
(86, 'sf', '435', NULL),
(87, 'sd', '32', NULL),
(88, 'asd', '34', 13),
(89, 'jhg', '878', 0),
(90, 'k', '65', NULL),
(91, 'sad', '34', NULL),
(92, 'abyanb', '65656', NULL),
(93, 'sa', '2131', NULL),
(94, 'admin', '342', 8),
(95, 'sd', '12', 7),
(96, 'h', '343', 10),
(97, 'a', '2', 8),
(98, 'a', '3', 0),
(99, 'dfg', '45', 0),
(100, '45', '564', 13),
(101, 'ad', '324', NULL),
(102, 'a', '2', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user_input`
--

CREATE TABLE `user_input` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `gejala` varchar(11) NOT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_input`
--

INSERT INTO `user_input` (`id`, `user`, `gejala`, `nilai`) VALUES
(4, 2, 'G1', 1),
(5, 2, 'G6', 0),
(6, 2, 'G4', 1),
(7, 2, 'G5', 1),
(8, 3, 'G1', 1),
(9, 3, 'G6', 1),
(10, 3, 'G7', 0),
(11, 4, 'G1', 1),
(12, 4, 'G6', 1),
(13, 4, 'G7', 1),
(14, 5, 'G1', 0),
(15, 5, 'G2', 0),
(16, 5, 'G3', 1),
(17, 5, 'G12', 1),
(18, 5, 'G13', 1),
(19, 7, 'G1', 1),
(20, 7, 'G6', 1),
(21, 7, 'G7', 0),
(22, 8, 'G1', 1),
(23, 8, 'G6', 1),
(24, 8, 'G7', 1),
(25, 9, 'G4', 0),
(26, 9, 'G6', 0),
(27, 9, 'G2', 1),
(28, 10, 'G4', 0),
(29, 10, 'G6', 0),
(30, 11, 'G4', 0),
(31, 11, 'G6', 0),
(32, 11, 'G2', 1),
(33, 11, 'G8', 0),
(34, 11, 'G10', 0),
(35, 13, 'G4', 1),
(36, 13, 'G5', 1),
(37, 13, 'A9', 0),
(38, 15, 'G4', 1),
(39, 15, 'G5', 1),
(40, 15, 'A9', 0),
(41, 16, 'G4', 0),
(42, 16, 'G6', 1),
(43, 16, 'G7', 0),
(44, 17, 'G4', 0),
(45, 17, 'G6', 0),
(46, 18, 'G4', 0),
(47, 18, 'G6', 0),
(48, 18, 'G2', 1),
(49, 18, 'G8', 0),
(50, 19, 'G4', 0),
(51, 19, 'G6', 1),
(52, 20, 'G4', 0),
(53, 20, 'G6', 1),
(54, 20, 'G7', 1),
(55, 21, 'G2', 0),
(56, 21, '<br />\r\n<b>', 0),
(57, 22, 'G2', 0),
(58, 22, '', 0),
(59, 22, '', 1),
(60, 23, 'G2', 1),
(61, 23, 'G3', 1),
(62, 23, 'G4', 1),
(63, 23, 'G5', 1),
(64, 23, 'G6', 1),
(65, 23, 'G7', 1),
(66, 23, 'G8', 1),
(67, 23, 'G9', 1),
(68, 23, 'G10', 1),
(69, 23, 'G11', 1),
(70, 23, 'G12', 1),
(71, 23, 'G13', 1),
(72, 23, 'G14', 1),
(73, 24, 'NP1', 1),
(74, 24, 'ND1', 0),
(75, 25, 'NP1', 1),
(76, 25, 'ND1', 0),
(77, 26, 'NP1', 0),
(78, 26, 'ND1', 0),
(79, 26, 'NT', 0),
(80, 27, 'NP1', 1),
(81, 27, 'ND1', 0),
(82, 28, 'NP1', 0),
(83, 28, 'ND1', 0),
(84, 28, 'NT', 0),
(91, 31, 'NP1', 1),
(92, 31, 'ND1', 0),
(93, 32, 'NP1', 1),
(94, 33, 'NP1', 1),
(95, 33, 'ND1', 0),
(96, 34, 'NP1', 1),
(97, 34, 'ND1', 0),
(98, 34, 'NP1', 0),
(112, 40, 'NP1', 0),
(113, 40, 'ND1', 0),
(114, 40, 'NT', 0),
(141, 54, 'NP1', 0),
(142, 54, 'ND1', 0),
(143, 54, 'NT', 0),
(144, 55, 'NP1', 1),
(145, 55, 'ZZ', 1),
(146, 55, 'ND1', 1),
(147, 55, 'NT', 0),
(148, 56, 'NP1', 0),
(149, 56, 'ND1', 0),
(150, 56, 'NT', 0),
(151, 57, 'NP1', 1),
(152, 57, 'ZZ', 0),
(153, 57, 'NP1', 0),
(154, 58, 'NP1', 1),
(155, 58, 'ZZ', 1),
(156, 58, 'ND1', 0),
(157, 58, 'PR1', 0),
(158, 58, 'NP1', 0),
(159, 59, 'NP1', 1),
(160, 61, 'NP1', 0),
(161, 61, 'ND1', 0),
(162, 61, 'NT', 0),
(163, 62, 'NP1', 0),
(164, 62, 'ND1', 0),
(165, 62, 'NT', 0),
(173, 64, 'NP1', 0),
(174, 64, 'ND1', 0),
(175, 64, 'NT', 0),
(176, 65, 'NP1', 0),
(177, 65, 'ND1', 0),
(178, 65, 'NT', 0),
(179, 66, 'NP1', 0),
(180, 66, 'ND1', 0),
(181, 66, 'NT', 0),
(194, 73, 'NP1', 0),
(195, 73, 'ND1', 0),
(196, 73, 'NT', 0),
(209, 78, 'NP1', 0),
(210, 78, 'ND1', 0),
(211, 78, 'NT', 1),
(212, 78, 'ALL', 1),
(213, 79, 'NP1', 1),
(214, 79, 'ALL', 1),
(215, 79, 'ND1', 1),
(216, 79, 'NT', 1),
(217, 79, 'NM', 1),
(218, 79, 'PR1', 1),
(219, 79, 'PR2', 1),
(220, 80, 'NP1', 1),
(221, 80, 'ALL', 0),
(222, 81, 'NP1', 1),
(223, 81, 'ALL', 0),
(224, 82, 'NP1', 1),
(225, 83, 'NP1', 0),
(226, 84, 'NP1', 0),
(227, 84, 'ND1', 0),
(228, 84, 'NT', 0),
(229, 85, 'NP1', 1),
(230, 85, 'ALL', 0),
(231, 86, 'NP1', 0),
(232, 86, 'ND1', 0),
(233, 86, 'NT', 0),
(234, 86, 'NP1', 1),
(235, 87, 'NP1', 0),
(236, 87, 'ND1', 0),
(237, 87, 'NT', 0),
(238, 87, 'NP1', 1),
(239, 88, 'NP1', 0),
(240, 88, 'NML', 1),
(241, 89, 'NP1', 1),
(242, 89, 'ALL', 1),
(243, 89, 'ND1', 1),
(244, 89, 'NT', 0),
(245, 90, 'NP1', 1),
(246, 91, 'NP1', 0),
(247, 94, 'NP1', 0),
(248, 94, 'NML', 0),
(249, 94, 'ND1', 1),
(250, 94, 'PR2', 1),
(251, 94, 'ALL', 1),
(252, 95, 'NP1', 1),
(253, 95, 'ALL', 1),
(254, 95, 'ND1', 0),
(255, 95, 'PR1', 0),
(256, 96, 'NP1', 1),
(257, 96, 'ALL', 1),
(258, 96, 'ND1', 1),
(259, 96, 'NT', 1),
(260, 96, 'NM', 1),
(261, 96, 'PR1', 1),
(262, 96, 'PR2', 1),
(263, 97, 'NP1', 0),
(264, 97, 'NML', 0),
(265, 97, 'ND1', 1),
(266, 97, 'PR2', 1),
(267, 97, 'ALL', 1),
(268, 98, 'NP1', 0),
(269, 99, 'NP1', 0),
(270, 99, 'NML', 0),
(271, 99, 'ND1', 0),
(272, 99, 'NT', 0),
(273, 100, 'NP1', 0),
(274, 100, 'NML', 1),
(275, 102, 'NP1', 1),
(276, 102, 'ALL', 1),
(277, 102, 'ND1', 0),
(278, 102, 'PR1', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`alt_id`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`gej_id`);

--
-- Indexes for table `kecocokan`
--
ALTER TABLE `kecocokan`
  ADD PRIMARY KEY (`kec_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_input`
--
ALTER TABLE `user_input`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `alt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `gej_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `kecocokan`
--
ALTER TABLE `kecocokan`
  MODIFY `kec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `user_input`
--
ALTER TABLE `user_input`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
