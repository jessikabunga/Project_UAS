-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2025 at 01:26 PM
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
-- Database: `movie-service`
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
(1, '2025_06_03_074802_create_movies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `judul`, `genre`, `jadwal`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'Lilo & Stitch', 'Family, Comedy, Science Fiction', '2025-06-07 19:00:00', 52680.00, '2025-06-05 10:50:18', '2025-06-05 10:50:18'),
(2, 'Sinners', 'Horror, Action, Thriller', '2025-06-14 19:00:00', 69519.00, '2025-06-05 10:50:18', '2025-06-05 10:50:18'),
(3, 'A Minecraft Movie', 'Family, Comedy, Adventure, Fantasy', '2025-06-08 19:00:00', 68713.00, '2025-06-05 10:50:18', '2025-06-05 10:50:18'),
(4, 'Sikandar', 'Action, Drama', '2025-06-10 19:00:00', 38428.00, '2025-06-05 10:50:18', '2025-06-05 10:50:18'),
(5, 'Shadow Force', 'Action, Thriller, Drama', '2025-06-14 19:00:00', 36795.00, '2025-06-05 10:50:18', '2025-06-05 10:50:18'),
(6, 'A Working Man', 'Action, Crime, Thriller', '2025-06-07 19:00:00', 48271.00, '2025-06-05 10:50:19', '2025-06-05 10:50:19'),
(7, 'Final Destination Bloodlines', 'Horror, Mystery', '2025-06-07 19:00:00', 40850.00, '2025-06-05 10:50:19', '2025-06-05 10:50:19'),
(8, 'Mission: Impossible - The Final Reckoning', 'Action, Adventure, Thriller', '2025-06-15 19:00:00', 30617.00, '2025-06-05 10:50:19', '2025-06-05 10:50:19'),
(9, 'The Last Stand of Ellen Cole', 'Action, Adventure', '2025-06-12 19:00:00', 48823.00, '2025-06-05 10:50:19', '2025-06-05 10:50:19'),
(10, 'Until Dawn', 'Horror, Mystery', '2025-06-11 19:00:00', 57434.00, '2025-06-05 10:50:19', '2025-06-05 10:50:19'),
(11, 'Warfare', 'War, Action', '2025-06-14 19:00:00', 63017.00, '2025-06-05 10:50:19', '2025-06-05 10:50:19'),
(12, 'The Ugly Stepsister', 'Horror, Comedy, Fantasy, Drama', '2025-06-14 19:00:00', 61830.00, '2025-06-05 10:50:19', '2025-06-05 10:50:19'),
(13, 'Captain America: Brave New World', 'Action, Thriller, Science Fiction', '2025-06-09 19:00:00', 33302.00, '2025-06-05 10:50:19', '2025-06-05 10:50:19'),
(14, 'Lilo & Stitch', 'Animation, Family, Comedy', '2025-06-08 19:00:00', 57547.00, '2025-06-05 10:50:19', '2025-06-05 10:50:19'),
(15, 'The Containment', 'Horror, Mystery', '2025-06-15 19:00:00', 34660.00, '2025-06-05 10:50:19', '2025-06-05 10:50:19'),
(16, 'Snow White', 'Family, Fantasy', '2025-06-08 19:00:00', 39486.00, '2025-06-05 10:50:19', '2025-06-05 10:50:19'),
(17, 'A Widow\'s Game', 'Thriller, Mystery', '2025-06-09 19:00:00', 37584.00, '2025-06-05 10:50:19', '2025-06-05 10:50:19'),
(18, 'Tin Soldier', 'Action, Thriller', '2025-06-11 19:00:00', 63606.00, '2025-06-05 10:50:19', '2025-06-05 10:50:19'),
(19, 'Thunderbolts*', 'Action, Science Fiction, Adventure', '2025-06-14 19:00:00', 30704.00, '2025-06-05 10:50:20', '2025-06-05 10:50:20'),
(20, 'Mountainhead', 'Drama, Comedy', '2025-06-11 19:00:00', 66694.00, '2025-06-05 10:50:20', '2025-06-05 10:50:20'),
(21, 'Spider-Man: No Way Home (Update)', 'Action', '2025-07-01 19:00:00', 60000.00, '2025-06-05 16:42:43', '2025-06-06 11:52:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
