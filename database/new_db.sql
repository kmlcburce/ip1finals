-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 04:12 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_13_133644_create_profiles_table', 1),
(5, '2019_12_13_140503_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `caption`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'post1', 'uploads/rqtqQEVOiVRDWKV3H1FJy1HAPqieWreUMTq2ZG7k.jpeg', '2019-12-14 08:36:19', '2019-12-14 08:36:19'),
(2, 1, 'Lel', 'uploads/8kWJp94swl9hCXfAAbhDZLrc5pK8DOj1ycG0RLdt.jpeg', '2019-12-15 19:06:24', '2019-12-15 19:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `title`, `description`, `url`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'testMan', 'a Description', 'http://harambe.org', 'profile/ZemRsNtj2XoX2weVtOeEaItQJQdIiSis3rff2qpB.png', '2019-12-14 08:21:17', '2019-12-14 08:29:56'),
(2, 2, 'meh', 'meh post', 'http://mehmeh.com', 'profile/PFcWSIH1dREtvf0334eQmm3XTaTt034whFOQYXUq.png', '2019-12-14 08:59:22', '2019-12-14 09:00:32'),
(3, 3, 'chingchong', NULL, NULL, NULL, '2019-12-14 09:09:06', '2019-12-14 09:09:06'),
(4, 4, 'kylekyle', NULL, NULL, NULL, '2019-12-14 22:12:50', '2019-12-14 22:12:50'),
(5, 5, 'kathryn32', NULL, NULL, NULL, '2019-12-15 00:56:38', '2019-12-15 00:56:38'),
(6, 6, 'daugherty.krystel', NULL, NULL, NULL, '2019-12-15 00:56:40', '2019-12-15 00:56:40'),
(7, 7, 'kemmer.amely', NULL, NULL, NULL, '2019-12-15 00:56:40', '2019-12-15 00:56:40'),
(8, 8, 'ubradtke', NULL, NULL, NULL, '2019-12-15 00:56:41', '2019-12-15 00:56:41'),
(9, 9, 'eloise29', NULL, NULL, NULL, '2019-12-15 00:56:42', '2019-12-15 00:56:42'),
(10, 10, 'rodrigo43', NULL, NULL, NULL, '2019-12-15 00:56:42', '2019-12-15 00:56:42'),
(11, 11, 'darlene.rogahn', NULL, NULL, NULL, '2019-12-15 00:56:42', '2019-12-15 00:56:42'),
(12, 12, 'keenan.windler', NULL, NULL, NULL, '2019-12-15 00:56:43', '2019-12-15 00:56:43'),
(13, 13, 'vwilkinson', NULL, NULL, NULL, '2019-12-15 00:56:43', '2019-12-15 00:56:43'),
(14, 14, 'balistreri.emiliano', NULL, NULL, NULL, '2019-12-15 00:56:43', '2019-12-15 00:56:43'),
(15, 15, 'edach', NULL, NULL, NULL, '2019-12-15 00:56:44', '2019-12-15 00:56:44'),
(16, 16, 'leanna14', NULL, NULL, NULL, '2019-12-15 00:56:44', '2019-12-15 00:56:44'),
(17, 17, 'hmraz', NULL, NULL, NULL, '2019-12-15 00:56:44', '2019-12-15 00:56:44'),
(18, 18, 'kirlin.elvie', NULL, NULL, NULL, '2019-12-15 00:56:44', '2019-12-15 00:56:44'),
(19, 19, 'sherwood.torphy', NULL, NULL, NULL, '2019-12-15 00:56:45', '2019-12-15 00:56:45'),
(20, 20, 'urowe', NULL, NULL, NULL, '2019-12-15 00:56:48', '2019-12-15 00:56:48'),
(21, 21, 'bins.dejah', NULL, NULL, NULL, '2019-12-15 00:56:48', '2019-12-15 00:56:48'),
(22, 22, 'taurean90', NULL, NULL, NULL, '2019-12-15 00:56:48', '2019-12-15 00:56:48'),
(23, 23, 'goyette.magali', NULL, NULL, NULL, '2019-12-15 00:56:49', '2019-12-15 00:56:49'),
(24, 24, 'francisca.hermiston', NULL, NULL, NULL, '2019-12-15 00:56:49', '2019-12-15 00:56:49'),
(25, 25, 'TestMann', NULL, NULL, NULL, '2019-12-15 04:34:45', '2019-12-15 04:34:45'),
(26, 26, 'testMan2', NULL, NULL, NULL, '2019-12-15 08:11:32', '2019-12-15 08:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'testMan', 'test@testman.com', 'testMan', NULL, '$2y$10$afxGDj2sWCxP4aNKkmoVT.cEG2pGpF4M5qB/ffml8G.prxmwTNel.', NULL, '2019-12-14 08:21:16', '2019-12-14 08:21:16'),
(2, 'meh', 'meh@meh.com', 'meh', NULL, '$2y$10$Xc0xbEcbDhMa2cihgVCYdudtdp1yhLQMoIAiE.SYbnHBlTwR6hHAy', NULL, '2019-12-14 08:59:22', '2019-12-14 08:59:22'),
(3, 'chingchong', 'ching@chong.com', 'chingchong', NULL, '$2y$10$WYEpe6Y.neN4biVoM0Nrru55OnUXbFo8zO0x3rIOG89szBsX3iU4O', NULL, '2019-12-14 09:09:06', '2019-12-14 09:09:06'),
(4, 'kyle', 'kmlcburce@gmail.com', 'kylekyle', NULL, '$2y$10$QKC7EbjnHgTFA0K8bRvGUOOp3.FQYYlz4gJFwu2wAvslb8lOVJ4Nu', NULL, '2019-12-14 22:12:50', '2019-12-14 22:12:50'),
(5, 'Mrs. Joelle Walter IV', 'eino.grant@example.net', 'kathryn32', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ak6RElb384', '2019-12-15 00:56:37', '2019-12-15 00:56:37'),
(6, 'Einar Schneider', 'tracy.lemke@example.org', 'daugherty.krystel', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I4IOehsUYe', '2019-12-15 00:56:39', '2019-12-15 00:56:39'),
(7, 'Paxton Bednar', 'damien40@example.org', 'kemmer.amely', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dO3qp6dYOK', '2019-12-15 00:56:40', '2019-12-15 00:56:40'),
(8, 'Prof. Buck Bauch', 'kassulke.amya@example.org', 'ubradtke', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Igo7oozOIu', '2019-12-15 00:56:41', '2019-12-15 00:56:41'),
(9, 'Olen Homenick MD', 'bosco.joany@example.net', 'eloise29', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F4vyijTmwN', '2019-12-15 00:56:41', '2019-12-15 00:56:41'),
(10, 'Dr. Neil Von', 'saul39@example.com', 'rodrigo43', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Gf2ofnCpDB', '2019-12-15 00:56:42', '2019-12-15 00:56:42'),
(11, 'Prof. Sheridan Schroeder', 'metz.peggie@example.org', 'darlene.rogahn', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qmiFgLrrhJ', '2019-12-15 00:56:42', '2019-12-15 00:56:42'),
(12, 'Miss Zora Breitenberg', 'gustave39@example.com', 'keenan.windler', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BJ9BeBlTqY', '2019-12-15 00:56:42', '2019-12-15 00:56:42'),
(13, 'Cindy Steuber', 'bailey.betty@example.org', 'vwilkinson', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2QjJaMfBRJ', '2019-12-15 00:56:43', '2019-12-15 00:56:43'),
(14, 'Mrs. Camylle Tromp I', 'xhamill@example.org', 'balistreri.emiliano', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YpCQd3Kv6E', '2019-12-15 00:56:43', '2019-12-15 00:56:43'),
(15, 'Isidro Wuckert', 'august27@example.org', 'edach', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qs4m2PE3nV', '2019-12-15 00:56:43', '2019-12-15 00:56:43'),
(16, 'Melvin Volkman', 'kobe.grimes@example.org', 'leanna14', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uwCKiQ3S4N', '2019-12-15 00:56:44', '2019-12-15 00:56:44'),
(17, 'Shawna Langworth', 'jameson.kihn@example.com', 'hmraz', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vBseVoihct', '2019-12-15 00:56:44', '2019-12-15 00:56:44'),
(18, 'Gisselle Torp', 'dwight.pacocha@example.com', 'kirlin.elvie', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NgKxzcKcUj', '2019-12-15 00:56:44', '2019-12-15 00:56:44'),
(19, 'Rocky Stracke', 'rene.parker@example.net', 'sherwood.torphy', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rWkIddTi1A', '2019-12-15 00:56:44', '2019-12-15 00:56:44'),
(20, 'Prof. Mariana Streich Jr.', 'alexys.hermann@example.com', 'urowe', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dHBP2UyJ9C', '2019-12-15 00:56:46', '2019-12-15 00:56:46'),
(21, 'Prof. Vita Reichel', 'buckridge.gage@example.net', 'bins.dejah', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u6ib5Fm21h', '2019-12-15 00:56:48', '2019-12-15 00:56:48'),
(22, 'Dr. Jordy Yost', 'strosin.abe@example.com', 'taurean90', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd8gzmCZ4nU', '2019-12-15 00:56:48', '2019-12-15 00:56:48'),
(23, 'Dominique Prosacco', 'moses.beier@example.com', 'goyette.magali', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yM8XVcZAqm', '2019-12-15 00:56:48', '2019-12-15 00:56:48'),
(24, 'Mrs. Frieda Jast V', 'kris.carol@example.org', 'francisca.hermiston', '2019-12-15 00:56:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'll0FB61jok', '2019-12-15 00:56:49', '2019-12-15 00:56:49'),
(25, 'TestMann', 'testmann@test.com', 'TestMann', NULL, '123456789', NULL, '2019-12-15 04:34:38', '2019-12-15 04:34:38'),
(26, 'testMan2', 'test@test.com', 'testMan2', NULL, '$2y$10$SMfIB3fB08im4wbeFIYDN.w0ZQztnTl8j/1V1iLjsFob324CSYIGy', NULL, '2019-12-15 08:11:29', '2019-12-15 08:11:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_index` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
