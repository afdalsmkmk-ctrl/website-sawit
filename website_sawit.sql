-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2025 at 04:17 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website_sawit`
--

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran_magang`
--

CREATE TABLE `pendaftaran_magang` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `fakultas` varchar(100) NOT NULL,
  `universitas` varchar(150) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `peminatan` varchar(100) NOT NULL,
  `kurikulum_cv_path` varchar(255) NOT NULL,
  `bagian` varchar(100) NOT NULL,
  `deskripsi_pekerjaan` text NOT NULL,
  `sub_bagian` varchar(100) NOT NULL,
  `bidang` varchar(100) NOT NULL,
  `tanggal_daftar` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendaftaran_magang`
--

INSERT INTO `pendaftaran_magang` (`id`, `nama`, `jurusan`, `fakultas`, `universitas`, `email`, `peminatan`, `kurikulum_cv_path`, `bagian`, `deskripsi_pekerjaan`, `sub_bagian`, `bidang`, `tanggal_daftar`) VALUES
(7, 'afdal', 'Teknik Informatika', 'wadsdwqdsa', 'wadwqdas', 'afdalsmkmk@gmail.com', 'qwdasdw', 'uploads/cv/6908361c84142-SKENARIO siklus 1.docx', 'dwesdafew', 'jkuivdgjbjwrfsv', 'weafwssd', 'ewafsdcewsd', '2025-11-02 17:00:00'),
(8, 'mipta', 'REKAYASA PERANGKAT LUNAK', 'XI RPL', 'SMK MULTI KARYA MEDAN', 'fadlinzcunzer@gmail.com', 'Programmer', 'uploads/cv/6908648642e4b-The_Psychology_of_Money_Ringkasan.pdf', 'TI', 'ngoding', 'Teknologi informasi', 'Umum', '2025-11-02 17:00:00'),
(9, 'omaga', 'TEKNIK KOMPUTER DAN JARINGAN', 'dadad', 'awd', 'akunigwak@gmail.com', 'awd', 'uploads/cv/69086d5b92058-The_Psychology_of_Money_Ringkasan.pdf', 'da', 'asdd', 'adsa', 'asdasdas', '2025-11-02 17:00:00'),
(10, 'Raditya Syail', 'REKAYASA PERANGKAT LUNAK', 'XI RPL', 'SMK MULTI KARYA MEDAN', 'radityasyail7@gmail.com', 'Programmer', 'uploads/cv/69096d8ed252a-The_Psychology_of_Money_Ringkasan.pdf', 'TI', 'ngoding', 'Teknologi informasi', 'Umum', '2025-11-03 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `created_at`, `role`) VALUES
(3, 'afdal', 'afdalsmkmk@gmail.com', '$2y$10$gcEWJ9eeKeRF99GPqoL6HuDOs2hgOqvsfu16ZxoI8IC5Sa1pXtf/O', '2025-11-03 03:22:44', 'admin'),
(4, 'andro', 'andro@gmail.com', '$2y$10$/hpoX2K9T67uDDZ2Zw9ELOHjGHKtzWRB7D.zOe5F6uRqPZwf6Bb1m', '2025-11-03 04:32:23', 'user'),
(5, 'fadlin', 'fadlin@gmail.com', '$2y$10$6oKbkZxpIaOfzHpJhyFf.Osf1zwQ6Y8jzkL1tfS9DstVvHNte0TOS', '2025-11-03 08:07:01', 'admin'),
(6, 'admin', 'admin@gmail.com', '$2y$10$Dg0R6tcSjUEz0mUfI.TCY.HokWjbM65mPhj5sm75fsG9ADiVeY0um', '2025-11-03 08:26:10', 'admin'),
(8, 'Aydin', 'aydin@gmail.com', '$2y$10$9ZtbTiya2pSUPFsq/ABXJ.GyivUlB/DT9dadCScvETriWU7TNU9ki', '2025-11-04 02:45:29', 'user'),
(9, 'Udindindun', 'udin@gmail.com', '$2y$10$cCE6ixMb0gpicL5Wor5f8uxiLIRyvvQWiydytSAaIMeZDws8aoaiS', '2025-11-04 02:51:53', 'user'),
(10, 'anonymous', 'anonymous@gmail.com', '$2y$10$IdzYGrksHAnjqMel73MzCeix.awDU14HfsnVepp9oERsj.Y9TpScC', '2025-11-10 01:45:34', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pendaftaran_magang`
--
ALTER TABLE `pendaftaran_magang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pendaftaran_magang`
--
ALTER TABLE `pendaftaran_magang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
