-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2024 at 07:26 AM
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
-- Database: `jobankbwa`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('jkl@gmail.com|127.0.0.1', 'i:1;', 1724296847),
('jkl@gmail.com|127.0.0.1:timer', 'i:1724296847;', 1724296847),
('saya@gmail.com|127.0.0.1', 'i:1;', 1724330660),
('saya@gmail.com|127.0.0.1:timer', 'i:1724330660;', 1724330660),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:5:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:17:\"manage categories\";s:1:\"c\";s:3:\"web\";}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:14:\"manage company\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"manage jobs\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:17:\"manage candidates\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:9:\"apply job\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:8:\"employer\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:8:\"employee\";s:1:\"c\";s:3:\"web\";}}}', 1724673734),
('xyz@gmail.com|127.0.0.1', 'i:1;', 1724331236),
('xyz@gmail.com|127.0.0.1:timer', 'i:1724331236;', 1724331236);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, '\"Muahahaha!\"', 'icons/2024/22/08/oqggwTjJFYPSWwy2EL4IXiBdR8THq6RTk0dTVVE2.png', 'muahahaha', '2024-08-21 19:05:56', '2024-08-21 18:22:58', '2024-08-21 19:05:56'),
(5, '\"Shush, let me talk\"', 'icons/2024/22/08/uy8LANU2v5wdBxoNN90msK0ja6yzUnPQlLj2nEot.png', 'shush-let-me-talk', NULL, '2024-08-21 18:47:49', '2024-08-21 19:01:15'),
(6, '\"Muahahahaha!\"', 'icons/2024/22/08/d3bZ678PBWUd893VRdAJ4d77PPXf6VeYpZg7B1co.png', 'muahahahaha', NULL, '2024-08-21 19:06:10', '2024-08-21 19:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `employer_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `logo`, `slug`, `about`, `employer_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'Ariobarzanes Largus', 'logos/2024/22/08/oDkghzVNsGuiq8PFzwMIayY9PTzdmMlQ66QC5Dl4.png', 'ariobarzanes-largus', 'Names don\'t always reflect whether a person is royal or not, technically speaking you could use any name as royalty and most names are often used by non-royals too.', 12, NULL, '2024-08-22 05:58:06', '2024-08-22 05:58:06'),
(5, 'Go-Tsuchimikado Eusebia', 'logos/2024/23/08/uRseAKXo88dsVo9LOfouNwD3C8PwZEpiEx6zk68f.png', 'go-tsuchimikado-eusebia', 'Names don\'t always reflect whether a person is royal or not, technically speaking you could use any name as royalty and most names are often used by non-royals too.', 13, NULL, '2024-08-22 17:46:17', '2024-08-22 17:46:17');

-- --------------------------------------------------------

--
-- Table structure for table `company_jobs`
--

CREATE TABLE `company_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `skill_level` varchar(255) NOT NULL,
  `salary` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `is_open` tinyint(1) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_jobs`
--

INSERT INTO `company_jobs` (`id`, `name`, `slug`, `type`, `location`, `skill_level`, `salary`, `thumbnail`, `about`, `is_open`, `company_id`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Full-stack Developer', 'full-stack-developer', 'Full-Time', 'Remote', 'Expert', 600000000, 'thumbnails2024/23/08/yUibgG8KwaIenSCIfWITNMaVTngHsafQlub8alHv.png', 'Tes', 1, 5, 6, NULL, '2024-08-22 19:02:28', '2024-08-22 19:02:28'),
(2, 'Front-end developer', 'front-end-developer', 'Part-Time', 'WFO', 'Intermediate', 400000, 'thumbnails2024/23/08/OCjhl1W9puW2zXJ0m1hoQ0yfFdyUB5LJhxqLlGaS.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, 5, 5, NULL, '2024-08-22 21:02:46', '2024-08-22 21:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_candidates`
--

CREATE TABLE `job_candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resume` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_hired` tinyint(1) NOT NULL,
  `candidate_id` bigint(20) UNSIGNED NOT NULL,
  `company_job_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_qualifications`
--

CREATE TABLE `job_qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_job_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_qualifications`
--

INSERT INTO `job_qualifications` (`id`, `name`, `company_job_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Quisque lacus nisl dictumst efficitur', 1, NULL, '2024-08-22 19:02:28', '2024-08-22 19:02:28'),
(2, 'Quis condimentum mattis urna molestie', 1, NULL, '2024-08-22 19:02:28', '2024-08-22 19:02:28'),
(3, 'Praesent class natoque accumsan magnis aptent', 1, NULL, '2024-08-22 19:02:28', '2024-08-22 19:02:28'),
(4, 'Consectetur accumsan quisque magnis habitasse', 1, NULL, '2024-08-22 19:02:28', '2024-08-22 19:02:28'),
(5, 'Quisque lacus nisl dictumst efficitur', 2, NULL, '2024-08-22 21:02:46', '2024-08-22 21:02:46'),
(6, 'Quis condimentum mattis urna molestie', 2, NULL, '2024-08-22 21:02:46', '2024-08-22 21:02:46'),
(7, 'Praesent class natoque accumsan magnis aptent', 2, NULL, '2024-08-22 21:02:46', '2024-08-22 21:02:46'),
(8, 'Consectetur accumsan quisque magnis habitasse', 2, NULL, '2024-08-22 21:02:46', '2024-08-22 21:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `job_responsibilties`
--

CREATE TABLE `job_responsibilties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_job_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_responsibilties`
--

INSERT INTO `job_responsibilties` (`id`, `name`, `company_job_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Senectus facilisi class varius eleifend', 1, NULL, '2024-08-22 19:02:28', '2024-08-22 19:02:28'),
(2, 'Urna metus pulvinar conubia a enim augue', 1, NULL, '2024-08-22 19:02:28', '2024-08-22 19:02:28'),
(3, 'Sed congue ornare dis tempus interdum, arcu tincidunt suspendisse', 1, NULL, '2024-08-22 19:02:28', '2024-08-22 19:02:28'),
(4, 'Efficitur sagittis habitant mollis convallis posuere', 1, NULL, '2024-08-22 19:02:28', '2024-08-22 19:02:28'),
(5, 'Senectus facilisi class varius eleifend', 2, NULL, '2024-08-22 21:02:46', '2024-08-22 21:02:46'),
(6, 'Urna metus pulvinar conubia a enim augue', 2, NULL, '2024-08-22 21:02:46', '2024-08-22 21:02:46'),
(7, 'Sed congue ornare dis tempus interdum, arcu tincidunt suspendisse', 2, NULL, '2024-08-22 21:02:46', '2024-08-22 21:02:46'),
(8, 'Efficitur sagittis habitant mollis convallis posuere', 2, NULL, '2024-08-22 21:02:46', '2024-08-22 21:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_21_013520_create_permission_tables', 1),
(5, '2024_08_21_014319_create_categories_table', 1),
(6, '2024_08_21_014451_create_companies_table', 1),
(7, '2024_08_21_014511_create_company_jobs_table', 1),
(8, '2024_08_21_014547_create_job_responsibilties_table', 1),
(9, '2024_08_21_014613_create_job_qualifications_table', 1),
(10, '2024_08_21_014639_create_job_candidates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 12),
(1, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage categories', 'web', '2024-08-20 21:29:41', '2024-08-20 21:29:41'),
(2, 'manage company', 'web', '2024-08-20 21:29:42', '2024-08-20 21:29:42'),
(3, 'manage jobs', 'web', '2024-08-20 21:29:42', '2024-08-20 21:29:42'),
(4, 'manage candidates', 'web', '2024-08-20 21:29:42', '2024-08-20 21:29:42'),
(5, 'apply job', 'web', '2024-08-20 21:29:42', '2024-08-20 21:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'employer', 'web', '2024-08-20 21:29:42', '2024-08-20 21:29:42'),
(2, 'employee', 'web', '2024-08-20 21:29:42', '2024-08-20 21:29:42'),
(3, 'super_admin', 'web', '2024-08-20 21:29:42', '2024-08-20 21:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('WFN6eBCaKpVs24eKw5qjzwX5mZhQcBibkP9DHHql', 14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZlh3YlJ4a0c5MWdIR3E1UmRHRWQyS0FWaEdXbGdUM1J1eHpGakdGOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcHBseS9mdWxsLXN0YWNrLWRldmVsb3BlciI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE0O30=', 1724642259);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `experience` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `occupation`, `experience`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'images/default-avatar.png', 'Superadmin', 100, 'super@admin.com', NULL, '$2y$12$xOItCKbO765KFPD6NpvhdezUb4kUC2Vtm3TTEv/id9TxomBRCB..G', NULL, '2024-08-20 21:29:42', '2024-08-20 21:29:42'),
(2, 'Zweena Ariva', 'avatars/7zjJJfsjWF6Q9Nf7EjjBkOC9oAvFGT2bxSLYpvJb.png', 'Web programmer', 4, 'xyz@gmail.com', NULL, '$2y$12$orjEC7FEQ56NAtlIfsa.Je/ra2YEJkm.WtcqvKQr/x04Mfz8z6TUK', NULL, '2024-08-21 19:42:55', '2024-08-21 19:42:55'),
(3, 'Ariva Zweena', 'avatars/a27kXmB6iH3RIcXZhSflTje4glmzAexsGMLvI0Q5.png', 'UI / UX Designer', 2, 'abc@gmail.com', NULL, '$2y$12$J4X7Gx3/N5XaBc1/pbt3d.yIvbqw10UtGonDkrN14mrvzKqF8X04C', NULL, '2024-08-21 19:45:42', '2024-08-21 19:45:42'),
(5, 'Avira Aneewz', 'avatars/EGbtDMwhOeHU58BDW7K04HEeCIJIHmE7ylAUU8sB.png', 'Back-end developer', 8, 'iop@gmail.com', NULL, '$2y$12$pvOwSd70.yBi0vs0oH7Ixes0DJaf.YUbyVQfioGRk9KO7jhUyZpqK', NULL, '2024-08-21 20:03:07', '2024-08-21 20:03:07'),
(6, 'Arzan bahresa', 'avatars/KipAYDraSou6bh6GF5L4qJKkNjCHxZRtU3vhngWq.png', 'Front-end Developer', 7, 'jkl@gmail.com', NULL, '$2y$12$7i3eFrtPXraweE34r/3WgOs8I4Bs6xgh0Empd9MT.ep52KgWS.0nO', NULL, '2024-08-21 20:16:09', '2024-08-21 20:16:09'),
(7, 'Culpa qui officia deserunt', 'avatars/2Ee975jaP8U17ZarmR3QzTNrxtXguylhyscGJdJF.png', 'System administrator', 1, 'mnb@gmail.com', NULL, '$2y$12$dRF6IwZRRys.c4/XYFV/yeoi/yv19xsOqXlMiMAQktKbg8KEEnOW2', NULL, '2024-08-21 20:18:36', '2024-08-21 20:18:36'),
(10, 'Cambyses mac Diarmata', 'avatars/P0UTHpfXyhyQ82gdalKSeSHHKo8nX1rb6wEOyzLt.png', 'Kuk-Kirwash Olafsdottir', 45, 'sadaakira@gmail.com', NULL, '$2y$12$/4INi2WMANk3EIrJqpWjouXMcM84jhrWYPwe992JRCm3q9AFu802O', NULL, '2024-08-22 05:48:12', '2024-08-22 05:48:12'),
(11, 'Lycurgus Thaditha', 'avatars/zHVHNsvwAbVq1Go4f4kxDpZZ6CIiCovtFRTcQSxM.png', 'Rhemaxos Largus', 90, 'bixiefrych@gmail.com', NULL, '$2y$12$9c8hYNFf.7FwbzO0XBp/TeExggTBAK0LoIbaHAtScnyalc3nVzYEm', NULL, '2024-08-22 05:51:07', '2024-08-22 05:51:07'),
(12, 'Kale Kyetaungnyo Hákon', 'avatars/gqvhhx58SF9GA6TNl4jpRkOYlecLfHPexnDRrzQ9.png', 'Udayin Rijal', 900, 'udayinrijal@gmail.com', NULL, '$2y$12$nxnF6nP1DCbqVHBxnCh8gu9FoJ38qomZ9dQ1VwdHnfmMn/WDLaOSy', NULL, '2024-08-22 05:54:24', '2024-08-22 05:54:24'),
(13, 'Nikephoros Dominis', 'avatars/qAOJUBn2VM47J8RwsLlNfv2tDtJgzPQWImr74jj2.png', 'Apeyadana Kapakuhaili', 60, 'apeyadanakapakuhaili@gmail.com', NULL, '$2y$12$EdoF.WHUKhdBYlxyoFV1d.frAYheyQyRFcqu35YQeiM/Q4/yhikDC', NULL, '2024-08-22 17:44:47', '2024-08-22 17:44:47'),
(14, 'Sahgorim bildud', 'avatars/T72x5RlS6FgM9UBoZlHX7yLOsrdf7w99JlmlrKoR.png', 'Programmer', 34, 'maknok@gmail.com', NULL, '$2y$12$6X.SYPTv99crf2xBP7ulFOf/Jk7LkYzn8VXie35gDbv5pE4ekv032', NULL, '2024-08-25 18:47:58', '2024-08-25 18:47:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_employer_id_foreign` (`employer_id`);

--
-- Indexes for table `company_jobs`
--
ALTER TABLE `company_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_jobs_company_id_foreign` (`company_id`),
  ADD KEY `company_jobs_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_candidates`
--
ALTER TABLE `job_candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_candidates_company_job_id_foreign` (`company_job_id`),
  ADD KEY `job_candidates_candidate_id_foreign` (`candidate_id`);

--
-- Indexes for table `job_qualifications`
--
ALTER TABLE `job_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_qualifications_company_job_id_foreign` (`company_job_id`);

--
-- Indexes for table `job_responsibilties`
--
ALTER TABLE `job_responsibilties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_responsibilties_company_job_id_foreign` (`company_job_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `company_jobs`
--
ALTER TABLE `company_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_candidates`
--
ALTER TABLE `job_candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_qualifications`
--
ALTER TABLE `job_qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_responsibilties`
--
ALTER TABLE `job_responsibilties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_employer_id_foreign` FOREIGN KEY (`employer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_jobs`
--
ALTER TABLE `company_jobs`
  ADD CONSTRAINT `company_jobs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `company_jobs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_candidates`
--
ALTER TABLE `job_candidates`
  ADD CONSTRAINT `job_candidates_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_candidates_company_job_id_foreign` FOREIGN KEY (`company_job_id`) REFERENCES `company_jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_qualifications`
--
ALTER TABLE `job_qualifications`
  ADD CONSTRAINT `job_qualifications_company_job_id_foreign` FOREIGN KEY (`company_job_id`) REFERENCES `company_jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_responsibilties`
--
ALTER TABLE `job_responsibilties`
  ADD CONSTRAINT `job_responsibilties_company_job_id_foreign` FOREIGN KEY (`company_job_id`) REFERENCES `company_jobs` (`id`) ON DELETE CASCADE;

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
