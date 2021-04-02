-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2021 at 10:53 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assessment_1_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosens`
--

CREATE TABLE `dosens` (
  `id` int(32) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `nidn` varchar(32) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `kontak` varchar(32) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosens`
--

INSERT INTO `dosens` (`id`, `nama`, `nidn`, `alamat`, `kontak`, `created_at`, `updated_at`) VALUES
(501, 'Kim Jennie', '1210110001', 'Jl. Thamrin No. 41', '085987876765', '2021-04-02 05:16:05', '2021-04-02 05:16:05'),
(502, 'Lee Chaeyeon', '1210110002', 'Jl. Thamrin No. 45', '084987876721', '2021-04-02 05:16:05', '2021-04-02 05:16:05'),
(503, 'Kim Jisoo', '1210110003', 'Jl. Thamrin No. 47', '085987876751', '2021-04-02 05:17:38', '2021-04-02 05:17:38'),
(504, 'Shin Yuna', '1210110004', 'Jl. Thamrin No. 48', '084987879823', '2021-04-02 05:17:38', '2021-04-02 05:17:38'),
(505, 'Rubicon Cluster', '1210110005', 'Jl. Thamrin No. 42', '085987876792', '2021-04-02 05:18:35', '2021-04-02 05:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwals`
--

CREATE TABLE `jadwals` (
  `id` int(32) NOT NULL,
  `mahasiswa_id` int(32) NOT NULL,
  `dosen_id` int(32) NOT NULL,
  `judul` varchar(64) NOT NULL,
  `deskripsi` varchar(256) NOT NULL,
  `awal` datetime NOT NULL,
  `akhir` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwals`
--

INSERT INTO `jadwals` (`id`, `mahasiswa_id`, `dosen_id`, `judul`, `deskripsi`, `awal`, `akhir`, `created_at`, `updated_at`) VALUES
(801, 101, 503, 'Bimbingan Menari', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia consectetur magna vel suscipit. Vivamus venenatis, sem et semper egestas, arcu nulla.', '2021-04-06 10:00:00', '2021-04-06 13:20:00', '2021-04-02 05:20:29', '2021-04-02 05:20:29'),
(802, 104, 505, 'Bimbingan Laravel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lacinia consectetur magna vel suscipit. Vivamus venenatis, sem et semper egestas, arcu nulla', '2021-04-08 11:00:00', '2021-04-08 15:00:00', '2021-04-02 05:21:28', '2021-04-02 05:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` int(32) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `nim` varchar(32) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `tahun_masuk` varchar(32) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `nama`, `nim`, `tanggal_lahir`, `alamat`, `tahun_masuk`, `created_at`, `updated_at`) VALUES
(101, 'Im Nayeon', '1810130001', '2001-04-03', 'Jl. Pemuda No. 12', '2019', '2021-04-02 05:11:54', '2021-04-02 05:11:54'),
(102, 'Yoo Jeongyeon', '1810130002', '2000-02-23', 'Jl. Pemuda No. 13', '2018', '2021-04-02 05:11:54', '2021-04-02 05:11:54'),
(103, 'Minatozaki Sana', '1810130003', '2001-10-29', 'Jl. Pemuda No. 15', '2019', '2021-04-02 05:13:52', '2021-04-02 05:13:52'),
(104, 'Myoui Mina', '1810130004', '2001-07-01', 'Jl. Pemuda No. 18', '2019', '2021-04-02 05:13:52', '2021-04-02 05:13:52'),
(105, 'Chou Tzuyu', '1810130005', '2002-01-03', 'Jl. Pemuda No. 19', '2019', '2021-04-02 05:15:10', '2021-04-02 05:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosens`
--
ALTER TABLE `dosens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jadwals`
--
ALTER TABLE `jadwals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mahasiswa_id` (`mahasiswa_id`),
  ADD KEY `dosen_id` (`dosen_id`);

--
-- Indexes for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwals`
--
ALTER TABLE `jadwals`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=804;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwals`
--
ALTER TABLE `jadwals`
  ADD CONSTRAINT `dosen_id` FOREIGN KEY (`dosen_id`) REFERENCES `dosens` (`id`),
  ADD CONSTRAINT `mahasiswa_id` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
