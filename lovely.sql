-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2022 at 06:34 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lovely`
--

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
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `following_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`user_id`, `following_user_id`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(1, 13, NULL, NULL),
(1, 15, NULL, NULL),
(1, 17, NULL, NULL),
(17, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lovely_id` bigint(20) UNSIGNED NOT NULL,
  `liked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `lovely_id`, `liked`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2022-01-29 22:32:20', '2022-01-29 22:32:20'),
(2, 1, 4, 0, '2022-01-29 22:32:31', '2022-01-29 22:32:31'),
(3, 1, 6, 1, '2022-01-29 23:19:17', '2022-01-29 23:19:17'),
(4, 17, 6, 1, '2022-01-29 23:26:06', '2022-01-29 23:26:06'),
(5, 1, 7, 0, '2022-01-29 23:27:13', '2022-01-29 23:29:26'),
(6, 17, 7, 1, '2022-01-29 23:28:57', '2022-01-29 23:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `lovelies`
--

CREATE TABLE `lovelies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lovelies`
--

INSERT INTO `lovelies` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 12, 'Modi sed aut beatae voluptatem et consequatur.', '2022-01-29 22:27:06', '2022-01-29 22:27:06'),
(2, 13, 'Necessitatibus aliquam qui dicta ipsa repudiandae deserunt.', '2022-01-29 22:27:06', '2022-01-29 22:27:06'),
(3, 14, 'Tenetur in eligendi eum sequi et asperiores officia.', '2022-01-29 22:27:06', '2022-01-29 22:27:06'),
(4, 15, 'Distinctio et ut saepe aut voluptatem voluptas minima quia.', '2022-01-29 22:27:06', '2022-01-29 22:27:06'),
(5, 16, 'Corrupti esse labore ullam debitis.', '2022-01-29 22:27:06', '2022-01-29 22:27:06'),
(6, 1, 'Now, I am ready.', '2022-01-29 23:19:12', '2022-01-29 23:19:12'),
(7, 17, 'OK . I am coming.', '2022-01-29 23:26:43', '2022-01-29 23:26:43');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_30_104920_create_lovelies_table', 1),
(6, '2022_01_12_134218_create_follows_table', 1),
(7, '2022_01_17_170304_create_likes_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `username`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mdomar-faruq', 'Md Omar Faruq', 'avatars/jGtNWOxlsbNy3shEDTmN97SIwVbYzdhX0n0J28lq.jpg', 'razume2@gmail.com', NULL, '$2y$10$AnR0iqAR4BN1frEM1VP95eDzkztN3jXLef3es1vZglm9hVqh5xH/u', NULL, '2022-01-29 22:22:45', '2022-01-29 23:01:04'),
(2, 'simonis.carroll', 'Ahmed Hermiston III', NULL, 'cartwright.alison@example.com', '2022-01-29 22:26:54', '$2y$10$./KGwaV/PafunwLgtf4LAeMgxsyT/7wuO/YUhEBcUUrTn8fPehFbS', 'FWotkmHN5y', '2022-01-29 22:26:55', '2022-01-29 22:26:55'),
(3, 'rice.uriel', 'Prof. Fredrick Aufderhar II', NULL, 'madilyn38@example.org', '2022-01-29 22:26:54', '$2y$10$xD5is2t18BxqI1j7gLwaT.KCCgKLnAVd4hAgv7XqzVXgeq/x17Q7.', 'BmtfI73WCN', '2022-01-29 22:26:55', '2022-01-29 22:26:55'),
(4, 'holden59', 'Xander Cassin', NULL, 'roderick.fay@example.org', '2022-01-29 22:26:54', '$2y$10$32r7ICg5UepCAYculJpuF.FGhp0rJi1xvOW/g7FbnxIPuq9LIIbUy', '1pkzSurrVu', '2022-01-29 22:26:55', '2022-01-29 22:26:55'),
(5, 'sydney.lindgren', 'Mrs. Elyse Larson', NULL, 'tstark@example.net', '2022-01-29 22:26:54', '$2y$10$A6sg90veYIjXDIW8P.FfXefKcsMCn1DtI1L757kbMXUop0wboQlLq', 'pZ2JhJK64P', '2022-01-29 22:26:55', '2022-01-29 22:26:55'),
(6, 'roscoe.pollich', 'Pearl Gleichner', NULL, 'adrianna.bartoletti@example.com', '2022-01-29 22:26:54', '$2y$10$3lSq.nnezxtx/T7petCkcuZWKa8AONhlvJL5vsq.A7vtqIpYeG3e2', 'm5JZdrDXcN', '2022-01-29 22:26:55', '2022-01-29 22:26:55'),
(7, 'ubeatty', 'Viola Metz', NULL, 'qboehm@example.net', '2022-01-29 22:26:54', '$2y$10$.yk.K157T59tsrm90kwO0evH3DBdu3FfEjCBwuUH7Scri8FnT/HZS', '8dfVasiJ4t', '2022-01-29 22:26:55', '2022-01-29 22:26:55'),
(8, 'cole.angela', 'Randy Rogahn', NULL, 'annalise.prosacco@example.com', '2022-01-29 22:26:54', '$2y$10$.ZRnOaSA3sNIRBWzFwb8b.Lksq/HQkGKeSNFqdFAWoKYPs9GUCYoO', 'iUJnLlz2vz', '2022-01-29 22:26:55', '2022-01-29 22:26:55'),
(9, 'unique.becker', 'Cathy Gerhold PhD', NULL, 'wilkinson.maci@example.org', '2022-01-29 22:26:54', '$2y$10$DLU81vUv24Iq9GvIlLfKBOpQjaKssxWUrNL8N7EUg86dxpQTIUtO.', 'QqJKYS2Awb', '2022-01-29 22:26:55', '2022-01-29 22:26:55'),
(10, 'zemlak.wava', 'Dr. Gunner Ebert DVM', NULL, 'ressie.block@example.org', '2022-01-29 22:26:55', '$2y$10$T.YnbUz8c7VHnZU6LNqMMuzrWlO..QI5uN51l7cXMW.n9o5vWZO2C', 'YjtciBkWVT', '2022-01-29 22:26:55', '2022-01-29 22:26:55'),
(11, 'mraz.jeremy', 'Aditya Grimes', NULL, 'broderick.okon@example.com', '2022-01-29 22:26:55', '$2y$10$qq7zk6q1IrbaVXcf6BnA8.6trDqhhTu2Vv/n3MqNcNQmOeEUsNVXm', 'YtxyBCUcnt', '2022-01-29 22:26:55', '2022-01-29 22:26:55'),
(12, 'ulices.mueller', 'Christy Lindgren', NULL, 'cecile.kunze@example.org', '2022-01-29 22:27:06', '$2y$10$Q/uLX6Oh1ofvD3TFSh/mle.OFvyzxHPr7scsnH1NStPrjlUG5wTo2', 'bUMWC6lw9D', '2022-01-29 22:27:06', '2022-01-29 22:27:06'),
(13, 'bartoletti.quinton', 'Jenifer Brown', NULL, 'devan.hamill@example.org', '2022-01-29 22:27:06', '$2y$10$87izePuS0ygkQd.miUEO1uXK9T/hWuWSY8AnSsV9IHjva7um5MKvK', 'fOd2VjlOwi', '2022-01-29 22:27:06', '2022-01-29 22:27:06'),
(14, 'pollich.tomasa', 'Dr. Gayle Lemke', NULL, 'qleuschke@example.com', '2022-01-29 22:27:06', '$2y$10$WiYKROgz2tFQ4RpZmXn8JegUjXA59iz/WTveQpLufVh/xiNSFIeNO', 'mSALEUt1mC', '2022-01-29 22:27:06', '2022-01-29 22:27:06'),
(15, 'pboyle', 'Aileen Parker', NULL, 'brandon.glover@example.com', '2022-01-29 22:27:06', '$2y$10$zWDeXHbqN3RM5CaamjRi1eA/F1jANftKxVUnznVG1I9iYKppUn6Ju', 'MCa3e1APS2', '2022-01-29 22:27:06', '2022-01-29 22:27:06'),
(16, 'tswift', 'Cydney Dare', NULL, 'ericka.funk@example.com', '2022-01-29 22:27:06', '$2y$10$FTA.51nJayIJMcNbcESf5eSqDRrfgcwr6/LAk0jVpq3QtuaKuaO1G', 'Zmqz8Bu2oT', '2022-01-29 22:27:06', '2022-01-29 22:27:06'),
(17, 'Jak-Williamson', 'Jak Williamson', NULL, 'jak@gmail.com', NULL, '$2y$10$A5iXsFUmi6tqg.7/ll/PfOTb4GbAM.hW7ncWFncqfgcMhqLuu8O1G', NULL, '2022-01-29 23:25:57', '2022-01-29 23:25:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`user_id`,`following_user_id`),
  ADD KEY `follows_following_user_id_foreign` (`following_user_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `likes_user_id_lovely_id_unique` (`user_id`,`lovely_id`),
  ADD KEY `likes_lovely_id_foreign` (`lovely_id`);

--
-- Indexes for table `lovelies`
--
ALTER TABLE `lovelies`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
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
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lovelies`
--
ALTER TABLE `lovelies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_following_user_id_foreign` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_lovely_id_foreign` FOREIGN KEY (`lovely_id`) REFERENCES `lovelies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
