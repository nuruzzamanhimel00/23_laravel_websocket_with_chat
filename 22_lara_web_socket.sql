-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2022 at 05:56 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `22_lara_web_socket`
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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, 'hi', '2022-09-15 10:55:35', '2022-09-15 10:55:35'),
(2, 1, 'hello', '2022-09-15 11:35:56', '2022-09-15 11:35:56'),
(3, 1, 'kmn acto', '2022-09-15 11:37:19', '2022-09-15 11:37:19'),
(4, 2, 'ami valo aci', '2022-09-15 11:38:42', '2022-09-15 11:38:42'),
(5, 1, 'tomar basa sobai kmn ace', '2022-09-15 11:39:13', '2022-09-15 11:39:13'),
(6, 2, 'valo', '2022-09-15 11:39:30', '2022-09-15 11:39:30'),
(7, 1, 'kmn acto', '2022-09-15 12:41:46', '2022-09-15 12:41:46'),
(8, 1, 'kmn aco', '2022-09-15 12:45:25', '2022-09-15 12:45:25'),
(9, 1, 'kmn aco kotay aco', '2022-09-15 12:45:35', '2022-09-15 12:45:35'),
(10, 1, 'oi miya', '2022-09-15 12:45:41', '2022-09-15 12:45:41'),
(11, 1, 'oi miya', '2022-09-15 12:45:47', '2022-09-15 12:45:47'),
(12, 1, 'lotif mama', '2022-09-15 12:46:56', '2022-09-15 12:46:56'),
(13, 1, 'ki re bbaa', '2022-09-15 12:47:12', '2022-09-15 12:47:12'),
(14, 1, 'koi jas', '2022-09-15 12:47:28', '2022-09-15 12:47:28'),
(15, 2, 'mn valo nia', '2022-09-15 12:47:46', '2022-09-15 12:47:46'),
(16, 1, 'keno vai', '2022-09-15 12:48:53', '2022-09-15 12:48:53'),
(17, 2, 'tumi jene ki korba', '2022-09-15 12:49:09', '2022-09-15 12:49:09'),
(18, 1, 'dorkar ace', '2022-09-15 12:49:23', '2022-09-15 12:49:23'),
(19, 2, 'hi', '2022-09-15 14:32:03', '2022-09-15 14:32:03'),
(20, 1, 'test', '2022-09-16 06:42:08', '2022-09-16 06:42:08'),
(21, 1, 'tst', '2022-09-16 07:16:38', '2022-09-16 07:16:38'),
(22, 1, 'tst', '2022-09-16 07:16:41', '2022-09-16 07:16:41'),
(23, 1, 'hello', '2022-09-16 07:18:27', '2022-09-16 07:18:27'),
(24, 1, 'my name is', '2022-09-16 07:18:46', '2022-09-16 07:18:46'),
(25, 1, 'my name is', '2022-09-16 07:18:49', '2022-09-16 07:18:49'),
(26, 1, 'my name is', '2022-09-16 07:18:59', '2022-09-16 07:18:59'),
(27, 1, 'hello', '2022-09-16 07:19:58', '2022-09-16 07:19:58'),
(28, 1, 'afsd', '2022-09-16 07:20:29', '2022-09-16 07:20:29'),
(29, 1, 'dfasd', '2022-09-16 07:20:51', '2022-09-16 07:20:51'),
(30, 1, 'dfasdnow', '2022-09-16 07:21:01', '2022-09-16 07:21:01'),
(31, 1, 'name', '2022-09-16 07:40:19', '2022-09-16 07:40:19'),
(32, 1, 'dfdfd', '2022-09-16 07:43:22', '2022-09-16 07:43:22'),
(33, 2, 'hello', '2022-09-16 07:43:47', '2022-09-16 07:43:47'),
(34, 1, 'dfdsa', '2022-09-16 07:43:52', '2022-09-16 07:43:52'),
(35, 1, 'dfdfsa', '2022-09-16 07:44:34', '2022-09-16 07:44:34'),
(36, 2, 'dfsda', '2022-09-16 07:44:57', '2022-09-16 07:44:57'),
(37, 1, 'hi', '2022-09-16 07:46:12', '2022-09-16 07:46:12'),
(38, 2, 'dfsad', '2022-09-16 07:46:22', '2022-09-16 07:46:22'),
(39, 1, 'dfdsaf', '2022-09-16 07:46:25', '2022-09-16 07:46:25'),
(40, 1, 'dasfs', '2022-09-16 07:47:57', '2022-09-16 07:47:57'),
(41, 1, 'dsaf', '2022-09-16 07:48:05', '2022-09-16 07:48:05'),
(42, 2, 'asfds', '2022-09-16 07:48:16', '2022-09-16 07:48:16'),
(43, 1, 'lo lhbor tomar', '2022-09-16 07:55:47', '2022-09-16 07:55:47'),
(44, 1, 'tomar khboar ki', '2022-09-16 08:02:21', '2022-09-16 08:02:21'),
(45, 2, 'valo', '2022-09-16 08:02:27', '2022-09-16 08:02:27'),
(46, 1, 'fdsaf', '2022-09-16 08:05:42', '2022-09-16 08:05:42'),
(47, 2, 'more rekho', '2022-09-16 08:05:51', '2022-09-16 08:05:51'),
(48, 1, 'calo aco', '2022-09-16 08:05:57', '2022-09-16 08:05:57'),
(49, 1, 'teh tomar ki khbor', '2022-09-16 08:06:07', '2022-09-16 08:06:07'),
(50, 2, 'ami t o valo aci', '2022-09-16 08:06:14', '2022-09-16 08:06:14'),
(51, 2, 'dfaddadf', '2022-09-16 08:33:07', '2022-09-16 08:33:07');

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
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2022_09_10_075500_create_messages_table', 2);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nuruzzaman Himel', 'user1@gmail.com', NULL, '$2y$10$DKisqCZWo9UhLlo5B8tU5uqXliowm2bXy.dylJw7/4TJclnQ5E0R6', NULL, '2022-09-10 02:07:22', '2022-09-10 02:07:22'),
(2, 'tomal khan', 'user2@gmail.com', NULL, '$2y$10$ddLtXbaNAWz9g5ojRE.NrOpxICnels1owmT9rUxG5mLvlPxheAbvW', NULL, '2022-09-10 02:42:09', '2022-09-10 02:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
