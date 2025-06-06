-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2025 at 01:25 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth-service`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_06_03_125106_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Jessika', 'jessika@example.com', '$2y$12$TkbfWN9j/wbYAwyR6own6ueaBl5L3.qE7ahPLoNafCtjBB3uHjmp2', '2025-06-03 13:24:25', '2025-06-03 13:24:25'),
(2, 'Antike', 'antike@example.com', '$2y$12$/seDb68m4wivQOM8l5XYa.dBozsLThSinzQtQ9XBb5Fbvm8piw/CO', '2025-06-03 13:38:33', '2025-06-03 13:38:33'),
(3, 'project', 'project@example.com', '$2y$12$Zy0nUKPV8ZkvXkN04H13Ue7gaZpe6CPaPTYxWguFEyccl7T/qBC8i', '2025-06-03 16:12:58', '2025-06-03 16:12:58'),
(4, 'projecttis', 'projecttisa@example.com', '$2y$12$GyAFj.FZgp0.BbeZOJFOZuozWTiXYNCwnmLK4JThfp7FP8QmUZpvO', '2025-06-04 03:56:07', '2025-06-04 03:56:07'),
(5, 'zahra', 'zahra@example.com', '$2y$12$dw2hdSDqB.YA/ThcJ.xrJOAd7PFqBlqDFO.vhpjmWajl0YYf9Peta', '2025-06-04 04:29:01', '2025-06-04 04:29:01'),
(6, 'kelompok tis', 'kelompoktis@example.com', '$2y$12$hNUGMfrmDN1yaysfa.AZLeTamw.PQy1c0nl39y0F1KJnJKSJemMVy', '2025-06-06 11:46:43', '2025-06-06 11:46:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
