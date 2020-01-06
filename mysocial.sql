-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 06, 2020 at 12:53 PM
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
-- Database: `mysocial`
--

-- --------------------------------------------------------

--
-- Table structure for table `activeusers`
--

CREATE TABLE `activeusers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activeusers`
--

INSERT INTO `activeusers` (`id`, `userid`, `created_at`, `updated_at`) VALUES
(240, 24, '2020-01-06 05:19:25', '2020-01-06 05:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `addfriends`
--

CREATE TABLE `addfriends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `addid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addfriends`
--

INSERT INTO `addfriends` (`id`, `userid`, `addid`, `created_at`, `updated_at`) VALUES
(82, 23, 24, '2020-01-03 00:23:12', '2020-01-03 00:23:12');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `friendid` bigint(20) UNSIGNED NOT NULL,
  `from` bigint(20) UNSIGNED NOT NULL,
  `chattext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `postid` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `postid`, `userid`, `created_at`, `updated_at`) VALUES
(14, 'Hi a chaw lay', 32, 24, '2020-01-03 00:31:22', '2020-01-03 00:31:22'),
(15, 'Hr chaw lite tr', 32, 23, '2020-01-03 00:32:21', '2020-01-03 00:32:21'),
(16, 'Kyay zuu pr shint', 32, 19, '2020-01-03 00:33:29', '2020-01-03 00:33:29'),
(17, 'hi', 35, 24, '2020-01-03 02:12:00', '2020-01-03 02:12:00'),
(18, 'Hi', 50, 24, '2020-01-05 02:39:45', '2020-01-05 02:39:45');

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
-- Table structure for table `friendnotis`
--

CREATE TABLE `friendnotis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `addid` bigint(20) UNSIGNED NOT NULL,
  `noti` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `friendid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `userid`, `friendid`, `created_at`, `updated_at`) VALUES
(34, 19, 24, '2020-01-03 00:21:38', '2020-01-03 00:21:38'),
(35, 19, 23, '2020-01-03 00:26:42', '2020-01-03 00:26:42'),
(36, 24, 20, '2020-01-04 06:27:48', '2020-01-04 06:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `postid` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `postid`, `userid`, `created_at`, `updated_at`) VALUES
(46, 2, 8, '2019-12-29 05:01:03', '2019-12-29 05:01:03'),
(47, 1, 6, '2019-12-29 22:27:07', '2019-12-29 22:27:07'),
(52, 5, 8, '2019-12-30 03:21:05', '2019-12-30 03:21:05'),
(54, 9, 13, '2019-12-30 07:23:54', '2019-12-30 07:23:54'),
(55, 8, 13, '2019-12-30 07:24:04', '2019-12-30 07:24:04'),
(56, 7, 13, '2019-12-30 07:24:06', '2019-12-30 07:24:06'),
(57, 6, 13, '2019-12-30 07:24:08', '2019-12-30 07:24:08'),
(60, 8, 11, '2019-12-31 11:09:54', '2019-12-31 11:09:54'),
(61, 10, 11, '2019-12-31 11:10:04', '2019-12-31 11:10:04'),
(67, 13, 11, '2019-12-31 11:16:52', '2019-12-31 11:16:52'),
(68, 12, 11, '2019-12-31 11:17:24', '2019-12-31 11:17:24'),
(70, 11, 8, '2020-01-01 06:00:55', '2020-01-01 06:00:55'),
(71, 10, 8, '2020-01-01 06:00:58', '2020-01-01 06:00:58'),
(72, 9, 8, '2020-01-01 06:00:59', '2020-01-01 06:00:59'),
(73, 8, 8, '2020-01-01 06:01:02', '2020-01-01 06:01:02'),
(74, 7, 8, '2020-01-01 06:01:04', '2020-01-01 06:01:04'),
(75, 1, 8, '2020-01-01 06:01:08', '2020-01-01 06:01:08'),
(79, 12, 8, '2020-01-01 06:03:22', '2020-01-01 06:03:22'),
(80, 14, 8, '2020-01-01 06:03:45', '2020-01-01 06:03:45'),
(81, 15, 8, '2020-01-01 20:25:49', '2020-01-01 20:25:49'),
(84, 15, 13, '2020-01-01 20:53:27', '2020-01-01 20:53:27'),
(87, 18, 8, '2020-01-02 00:52:36', '2020-01-02 00:52:36'),
(89, 18, 13, '2020-01-02 03:56:24', '2020-01-02 03:56:24'),
(90, 19, 13, '2020-01-02 03:56:26', '2020-01-02 03:56:26'),
(91, 20, 8, '2020-01-02 04:21:50', '2020-01-02 04:21:50'),
(92, 19, 8, '2020-01-02 05:23:48', '2020-01-02 05:23:48'),
(95, 21, 13, '2020-01-02 20:19:24', '2020-01-02 20:19:24'),
(96, 23, 10, '2020-01-02 20:49:10', '2020-01-02 20:49:10'),
(97, 22, 10, '2020-01-02 20:49:13', '2020-01-02 20:49:13'),
(98, 24, 13, '2020-01-02 20:51:39', '2020-01-02 20:51:39'),
(104, 24, 10, '2020-01-02 21:37:42', '2020-01-02 21:37:42'),
(107, 26, 16, '2020-01-02 22:25:54', '2020-01-02 22:25:54'),
(116, 27, 8, '2020-01-02 22:29:44', '2020-01-02 22:29:44'),
(117, 22, 16, '2020-01-02 22:46:04', '2020-01-02 22:46:04'),
(118, 35, 19, '2020-01-03 00:21:42', '2020-01-03 00:21:42'),
(119, 32, 19, '2020-01-03 00:21:43', '2020-01-03 00:21:43'),
(121, 33, 20, '2020-01-03 00:22:23', '2020-01-03 00:22:23'),
(122, 34, 22, '2020-01-03 00:22:45', '2020-01-03 00:22:45'),
(123, 31, 23, '2020-01-03 00:23:04', '2020-01-03 00:23:04'),
(124, 36, 23, '2020-01-03 00:26:01', '2020-01-03 00:26:01'),
(128, 35, 24, '2020-01-04 00:57:42', '2020-01-04 00:57:42'),
(129, 43, 24, '2020-01-04 06:10:20', '2020-01-04 06:10:20'),
(130, 42, 24, '2020-01-04 06:10:23', '2020-01-04 06:10:23'),
(131, 44, 24, '2020-01-04 06:10:28', '2020-01-04 06:10:28'),
(132, 46, 24, '2020-01-04 23:24:28', '2020-01-04 23:24:28');

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
(4, '2019_12_26_143930_create_socialusers_table', 1),
(5, '2019_12_26_143953_create_likes_table', 1),
(6, '2019_12_26_144008_create_posts_table', 1),
(7, '2019_12_26_144018_create_comments_table', 1),
(8, '2019_12_26_144044_create_saveposts_table', 1),
(9, '2019_12_26_144056_create_shareposts_table', 1),
(10, '2019_12_26_144201_create_postnotis_table', 1),
(11, '2019_12_26_144209_create_friendnotis_table', 1),
(12, '2019_12_26_144224_create_addfriends_table', 1),
(13, '2019_12_26_144238_create_friends_table', 1),
(14, '2019_12_26_150006_create_chats_table', 1),
(15, '2019_12_27_064111_create_activeusers_table', 1),
(16, '2019_12_31_042416_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 6),
(2, 'App\\User', 7);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postnotis`
--

CREATE TABLE `postnotis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `postid` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `noti` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `photo`, `userid`, `created_at`, `updated_at`) VALUES
(50, 'Hello BootCampers❤️❤️❤️', '123345', 'a:2:{i:0;s:21:\"5e11810f77058_kth.jpg\";i:1;s:25:\"5e11810f770be_laravel.png\";}', 24, '2020-01-04 23:52:27', '2020-01-04 23:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2019-12-31 04:32:47', '2019-12-31 04:32:47'),
(2, 'user', 'web', '2019-12-31 04:33:06', '2019-12-31 04:33:06');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saveposts`
--

CREATE TABLE `saveposts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `postid` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shareposts`
--

CREATE TABLE `shareposts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `postid` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socialusers`
--

CREATE TABLE `socialusers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` int(11) NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialusers`
--

INSERT INTO `socialusers` (`id`, `userid`, `phone`, `dob`, `gender`, `photo`, `address`, `status`, `created_at`, `updated_at`) VALUES
(4, 6, '1123', '2019-12-12', 1, '/profile/1577459553.png', 'Yangon', 'notban', '2019-12-27 08:42:33', '2019-12-27 08:42:33'),
(6, 8, '0919999999', '2011-11-11', 1, '/profile/1577474308.png', 'yangon', 'notban', '2019-12-27 12:48:28', '2019-12-27 12:48:28'),
(8, 10, '09123123', '2019-12-12', 0, '/profile/1577704165.png', 'Yangon', 'notban', '2019-12-30 04:39:25', '2019-12-30 04:39:25'),
(11, 13, '09692218102', '2019-07-29', 0, '/profile/1577704345.png', 'Yangon', 'notban', '2019-12-30 04:42:25', '2019-12-30 04:42:25'),
(14, 16, '0912291898', '1999-11-11', 0, '/profile/1578026303.png', 'Yangon', 'notban', '2020-01-02 22:08:23', '2020-01-02 22:08:23'),
(15, 17, '09123123123', '1000-10-11', 0, '/profile/1578028944.jpg', 'Yangon', 'notban', '2020-01-02 22:52:24', '2020-01-02 22:52:24'),
(16, 18, '09692218102', '2011-12-12', 0, '/profile/1578029312.jpg', 'Yangon', 'notban', '2020-01-02 22:58:32', '2020-01-02 22:58:32'),
(17, 19, '09692218102', '1999-11-11', 1, '/profile/1578033616.jpg', 'Yangon', 'notban', '2020-01-03 00:10:17', '2020-01-03 00:10:17'),
(18, 20, '09692218102', '1999-12-12', 0, '/profile/1578033733.jpg', 'Yangon', 'notban', '2020-01-03 00:12:13', '2020-01-04 22:29:17'),
(19, 21, '09692218102', '1999-11-11', 1, '/profile/1578033796.jpg', 'Yangon', 'notban', '2020-01-03 00:13:16', '2020-01-03 00:13:16'),
(20, 22, '09692218102', '1999-11-11', 0, '/profile/1578033862.jpg', 'Yangon', 'notban', '2020-01-03 00:14:22', '2020-01-03 00:14:22'),
(21, 23, '09692218102', '1999-11-11', 0, '/profile/1578033948.jpg', 'Yangon', 'notban', '2020-01-03 00:15:48', '2020-01-03 00:15:48'),
(22, 24, '09692218102', '2001-09-12', 1, '/profile/1578117191.jpg', 'Yangonn', 'notban', '2020-01-03 00:20:20', '2020-01-04 21:11:57'),
(23, 25, '123', '1111-11-11', 1, '/profile/1578211217.jpg', 'Ygn', 'notban', '2020-01-05 01:30:17', '2020-01-05 01:30:17');

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
(6, 'Admin', 'oop@gmail.com', NULL, '$2y$10$qrtXOGDwRBindVim9xB6MuAZSxQu5yoXXsZkAe7b.TgMrZhrslTAu', NULL, '2019-12-27 08:42:33', '2019-12-27 08:42:33'),
(19, 'Aye Thi', 'aye@gmail.com', NULL, '$2y$10$JtBGmASZR8MOJKKsx2VY9up2rNsiUApIRvPPTX7fuWwVGg6QSTXHS', NULL, '2020-01-03 00:10:16', '2020-01-03 00:10:16'),
(20, 'Soe Sandar', 'soe@gmail.com', NULL, '$2y$10$twvOJaQIBpz2sjaqZJox7OR3/ySP6ZvQoiRI.VnUOH26GrzU7LGWa', NULL, '2020-01-03 00:12:13', '2020-01-04 22:33:11'),
(22, 'May Zun', 'zun@gmail.com', NULL, '$2y$10$4XdZAZ4BvZDpkZMGQfpdj.Kl8qaiKXkE9pypZtAVu/jTfsA0fVqby', NULL, '2020-01-03 00:14:22', '2020-01-03 00:14:22'),
(23, ' Nandar', 'wint@gmail.com', NULL, '$2y$10$r9.M2sMBLqJEXi9s8fr.e.hvZPy0j7sWC7K.TzDQVfitZIy4v/PXO', NULL, '2020-01-03 00:15:48', '2020-01-03 00:15:48'),
(24, 'Kyaw Thiha', 'kyaw@gmail.com', NULL, '$2y$10$CIdeyOFIQP31//DItlcD0OofspZrPyfcQVmFXHt6FQFKlGyUWYRwu', NULL, '2020-01-03 00:20:20', '2020-01-04 21:20:55'),
(25, 'Pyae Phyo', 'pyae@gmail.com', NULL, '$2y$10$6i5Ba9c4DNfkrsiVCV/vqOLnEuOMYFCohtzYBOT/qypx/cnka5RXG', NULL, '2020-01-05 01:30:17', '2020-01-05 01:30:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activeusers`
--
ALTER TABLE `activeusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addfriends`
--
ALTER TABLE `addfriends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friendnotis`
--
ALTER TABLE `friendnotis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postnotis`
--
ALTER TABLE `postnotis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `saveposts`
--
ALTER TABLE `saveposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shareposts`
--
ALTER TABLE `shareposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialusers`
--
ALTER TABLE `socialusers`
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
-- AUTO_INCREMENT for table `activeusers`
--
ALTER TABLE `activeusers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `addfriends`
--
ALTER TABLE `addfriends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friendnotis`
--
ALTER TABLE `friendnotis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postnotis`
--
ALTER TABLE `postnotis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `saveposts`
--
ALTER TABLE `saveposts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shareposts`
--
ALTER TABLE `shareposts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialusers`
--
ALTER TABLE `socialusers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
