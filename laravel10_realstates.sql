-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2024 at 03:19 PM
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
-- Database: `laravel10_realstates`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amenitis_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `amenitis_name`, `created_at`, `updated_at`) VALUES
(1, 'Air Conditioning', NULL, NULL),
(2, 'Cleaning Service', NULL, NULL),
(3, 'Dishwasher', NULL, NULL),
(4, 'Hardwood Flows', NULL, NULL),
(5, 'Swimming Pool', NULL, NULL),
(6, 'Outdoor Shower', NULL, NULL),
(7, 'Microwave', NULL, NULL),
(8, 'Pet Friendly', NULL, NULL),
(9, 'Basketball Court', NULL, NULL),
(10, 'Refrigerator', NULL, NULL),
(11, 'Gym', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(1, 'Real State', 'real-state', NULL, NULL),
(2, 'Home improvement', 'home-improvement', NULL, NULL),
(3, 'Architecture', 'architecture', NULL, NULL),
(4, 'Tips and advice', 'tips-and-advice', NULL, NULL),
(5, 'Interior', 'interior', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogcat_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `long_desc` text DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `blogcat_id`, `user_id`, `title`, `slug`, `image`, `short_desc`, `long_desc`, `tags`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'Eiusmod dicta culpa', 'eiusmod-dicta-culpa', 'upload/post/1789809116659766.jpeg', 'Ut saepe ut temporib', '<p><span style=\"color: rgb(191, 237, 210);\">Ut saepe ut temporib</span></p>', 'New York,Texas,Ut illo labore et au,btt,apparel', '2024-02-02 11:29:46', '2024-02-02 11:29:46'),
(3, 1, 1, 'Non incidunt non es', 'non-incidunt-non-es', 'upload/post/1789809085385033.jpeg', 'Non ducimus eu opti', '<p><span style=\"color: rgb(191, 237, 210);\">Non ducimus eu opti</span></p>', 'New York,Texas,Florida,New Mexico,Nisi illo aut omnis,bb,gg', '2024-02-02 11:29:16', '2024-02-02 11:29:16'),
(4, 4, 1, 'Textile Apparel', 'textile-apparel', 'upload/post/1789924965687686.jpeg', 'Textiles are materials that are made of interlacing natural or synthetic fibers.', '<p><span style=\"color: rgb(191, 237, 210);\">Textiles are&nbsp;<strong>materials that are made of interlacing natural or synthetic fibers</strong>.</span></p>', 'New York,Texas,Florida,New Mexico,textile,apparel', '2024-02-03 18:11:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'user_id',
  `receiver_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'agent_id',
  `msg` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `sender_id`, `receiver_id`, `msg`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'Hello, I need you Contact No.\nThanks', '2024-02-24 08:55:04', '2024-02-24 08:55:04'),
(2, 3, 2, 'I need your Number.', '2024-02-24 09:04:41', '2024-02-24 09:04:41'),
(3, 3, 2, 'Hello, Need Usd', '2024-02-24 09:10:10', '2024-02-24 09:10:10'),
(4, 3, 2, 'test', '2024-02-24 09:13:42', '2024-02-24 09:13:42'),
(5, 3, 2, 'gg', '2024-02-24 09:14:18', '2024-02-24 09:14:18'),
(6, 3, 2, 'gfg', '2024-02-24 09:16:14', '2024-02-24 09:16:14'),
(7, 3, 2, 'hhh', '2024-02-24 09:16:27', '2024-02-24 09:16:27'),
(8, 3, NULL, 'Hello I check', '2024-02-26 01:36:54', '2024-02-26 01:36:54'),
(9, 3, 2, 'Hello, I need you contact info.\nThanks', '2024-02-29 21:22:16', '2024-02-29 21:22:16'),
(10, 3, 2, 'Hello, I need contact info.\nThanks', '2024-03-02 15:50:58', '2024-03-02 15:50:58'),
(11, 3, 2, 'Hello, need help', '2024-03-02 17:44:19', '2024-03-02 17:44:19'),
(12, 2, 3, 'Hi i am here to help you.', '2024-03-02 18:09:26', '2024-03-02 18:09:26'),
(13, 2, 3, 'wait', '2024-03-02 18:10:13', '2024-03-02 18:10:13'),
(14, 2, 3, 'i am live', '2024-03-02 18:17:01', '2024-03-02 18:17:01'),
(15, 2, 3, 'he user', '2024-03-02 18:18:09', '2024-03-02 18:18:09');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `parent_id`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 3, 3, NULL, 'Test', 'This is for testing purpose. Thanks', '2024-02-04 12:24:23', NULL),
(2, 3, 3, NULL, 'Need Info', 'Need a information.', '2024-02-04 12:25:54', NULL),
(3, 3, 3, 2, 'Thanks with us', 'We will contact with you.', '2024-02-04 13:32:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE `compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compares`
--

INSERT INTO `compares` (`id`, `user_id`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-02-02 10:02:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `facility_name` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `property_id`, `facility_name`, `distance`, `created_at`, `updated_at`) VALUES
(7, 1, 'Hospital', '1', '2024-02-02 10:05:00', '2024-02-02 10:05:00'),
(8, 1, 'School', '2', '2024-02-02 10:05:00', '2024-02-02 10:05:00'),
(9, 1, 'Pharmacy', '2', '2024-02-02 10:05:00', '2024-02-02 10:05:00');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_24_114316_create_property_types_table', 1),
(6, '2023_10_24_160910_create_amenities_table', 1),
(7, '2023_10_26_001122_create_properties_table', 1),
(8, '2023_10_27_025302_create_multi_images_table', 1),
(9, '2023_10_27_025646_create_facilities_table', 1),
(10, '2023_12_16_151114_create_package_plans_table', 1),
(11, '2023_12_23_123822_create_wishlists_table', 1),
(12, '2023_12_30_133311_create_compares_table', 1),
(13, '2024_01_03_000853_create_property_messages_table', 1),
(14, '2024_01_26_030726_create_states_table', 1),
(15, '2024_02_02_002144_create_testimonials_table', 1),
(16, '2024_02_02_032519_create_blog_categories_table', 1),
(17, '2024_02_02_095925_create_blog_posts_table', 1),
(18, '2024_02_04_174252_create_comments_table', 2),
(19, '2024_02_05_001455_create_schedules_table', 3),
(20, '2024_02_10_125745_create_smtp_settings_table', 4),
(21, '2024_02_16_191112_create_site_settings_table', 5),
(22, '2024_02_17_201427_create_permission_tables', 6),
(23, '2024_02_24_000129_create_chat_messages_table', 7);

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
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 17);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `property_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/property/multi-image/1789803133707493.jpeg', '2024-02-02 09:54:40', NULL),
(2, 1, 'upload/property/multi-image/1789803133999151.jpeg', '2024-02-02 09:54:40', NULL),
(3, 1, 'upload/property/multi-image/1789803134196561.jpeg', '2024-02-02 09:54:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_plans`
--

CREATE TABLE `package_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `package_credits` varchar(255) DEFAULT NULL,
  `package_amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'type.menu', 'web', 'type', '2024-02-17 15:24:47', '2024-02-17 16:07:37'),
(2, 'all.type', 'web', 'type', '2024-02-17 15:25:06', '2024-02-17 15:25:06'),
(3, 'add.type', 'web', 'type', '2024-02-17 15:25:17', '2024-02-17 15:25:17'),
(4, 'edit.type', 'web', 'type', '2024-02-17 15:25:30', '2024-02-17 15:25:30'),
(5, 'delete.type', 'web', 'type', '2024-02-17 15:25:42', '2024-02-17 15:25:42'),
(6, 'state.menu', 'web', 'state', '2024-02-17 15:27:00', '2024-02-17 15:27:00'),
(7, 'all.state', 'web', 'state', '2024-02-17 15:27:19', '2024-02-17 15:27:19'),
(8, 'add.state', 'web', 'state', '2024-02-17 15:27:32', '2024-02-17 15:27:32'),
(9, 'edit.state', 'web', 'state', '2024-02-17 15:27:42', '2024-02-17 15:27:42'),
(10, 'delete.state', 'web', 'state', '2024-02-17 15:27:53', '2024-02-17 15:27:53'),
(11, 'amenities.menu', 'web', 'amenities', '2024-02-17 15:30:05', '2024-02-17 15:30:05'),
(12, 'add.amenities', 'web', 'amenities', '2024-02-17 15:30:29', '2024-02-17 15:30:29'),
(13, 'all.amenities', 'web', 'amenities', '2024-02-17 15:30:38', '2024-02-17 15:30:38'),
(14, 'edit.amenities', 'web', 'amenities', '2024-02-17 15:30:51', '2024-02-17 15:30:51'),
(15, 'delete.amenities', 'web', 'amenities', '2024-02-17 15:31:04', '2024-02-17 15:31:04'),
(16, 'property.menu', 'web', 'property', '2024-02-17 15:31:35', '2024-02-17 15:31:35'),
(17, 'add.property', 'web', 'property', '2024-02-17 15:31:44', '2024-02-17 15:31:44'),
(18, 'all.property', 'web', 'property', '2024-02-17 15:31:53', '2024-02-17 15:31:53'),
(19, 'edit.property', 'web', 'property', '2024-02-17 15:32:02', '2024-02-17 15:32:02'),
(20, 'delete.property', 'web', 'property', '2024-02-17 15:32:11', '2024-02-17 15:32:11'),
(21, 'history.menu', 'web', 'history', '2024-02-17 15:32:29', '2024-02-17 15:32:29'),
(22, 'add.history', 'web', 'history', '2024-02-17 15:32:38', '2024-02-17 15:32:38'),
(23, 'all.history', 'web', 'history', '2024-02-17 15:32:47', '2024-02-17 15:32:47'),
(24, 'edit.history', 'web', 'history', '2024-02-17 15:32:57', '2024-02-17 15:32:57'),
(25, 'delete.history', 'web', 'history', '2024-02-17 15:33:08', '2024-02-17 15:33:08'),
(26, 'message.menu', 'web', 'message', '2024-02-17 15:33:36', '2024-02-17 15:33:36'),
(27, 'add.message', 'web', 'message', '2024-02-17 15:33:45', '2024-02-17 15:33:45'),
(28, 'all.message', 'web', 'message', '2024-02-17 15:33:53', '2024-02-17 15:33:53'),
(29, 'edit.message', 'web', 'message', '2024-02-17 15:34:02', '2024-02-17 15:34:02'),
(30, 'delete.message', 'web', 'message', '2024-02-17 15:34:12', '2024-02-17 15:34:12'),
(31, 'testimonial.menu', 'web', 'testimonial', '2024-02-17 15:34:50', '2024-02-17 15:34:50'),
(32, 'add.testimonial', 'web', 'testimonial', '2024-02-17 15:34:59', '2024-02-17 15:34:59'),
(33, 'all.testimonial', 'web', 'testimonial', '2024-02-17 15:35:08', '2024-02-17 15:35:08'),
(34, 'edit.testimonial', 'web', 'testimonial', '2024-02-17 15:35:20', '2024-02-17 15:35:20'),
(35, 'delete.testimonial', 'web', 'testimonial', '2024-02-17 15:35:31', '2024-02-17 15:35:31'),
(36, 'agent.menu', 'web', 'agent', '2024-02-17 15:35:53', '2024-02-17 15:35:53'),
(37, 'add.agent', 'web', 'agent', '2024-02-17 15:36:02', '2024-02-17 15:36:02'),
(38, 'all.agent', 'web', 'agent', '2024-02-17 15:36:12', '2024-02-17 15:36:12'),
(39, 'edit.agent', 'web', 'agent', '2024-02-17 15:36:22', '2024-02-17 15:36:22'),
(40, 'delete.agent', 'web', 'agent', '2024-02-17 15:36:32', '2024-02-17 15:36:32'),
(41, 'category.menu', 'web', 'category', '2024-02-17 15:36:55', '2024-02-17 15:36:55'),
(42, 'add.category', 'web', 'category', '2024-02-17 15:38:23', '2024-02-17 15:38:23'),
(43, 'all.category', 'web', 'category', '2024-02-17 15:38:35', '2024-02-17 15:38:35'),
(44, 'delete.category', 'web', 'category', '2024-02-17 15:39:09', '2024-02-17 15:39:09'),
(45, 'edit.category', 'web', 'category', '2024-02-17 15:39:31', '2024-02-17 15:39:31'),
(46, 'post.menu', 'web', 'post', '2024-02-17 15:39:47', '2024-02-17 15:39:47'),
(47, 'add.post', 'web', 'post', '2024-02-17 15:41:10', '2024-02-17 15:41:10'),
(48, 'edit.post', 'web', 'post', '2024-02-17 15:41:20', '2024-02-17 15:41:20'),
(49, 'delete.post', 'web', 'post', '2024-02-17 15:41:30', '2024-02-17 15:41:30'),
(50, 'all.post', 'web', 'post', '2024-02-17 15:42:00', '2024-02-17 15:42:00'),
(51, 'comment.menu', 'web', 'comment', '2024-02-17 15:42:15', '2024-02-17 15:42:15'),
(52, 'add.comment', 'web', 'comment', '2024-02-17 15:42:24', '2024-02-17 15:42:24'),
(53, 'all.comment', 'web', 'comment', '2024-02-17 15:42:34', '2024-02-17 15:42:34'),
(54, 'edit.comment', 'web', 'comment', '2024-02-17 15:42:44', '2024-02-17 15:42:44'),
(55, 'delete.comment', 'web', 'comment', '2024-02-17 15:42:53', '2024-02-17 15:42:53'),
(56, 'smtp.menu', 'web', 'smtp', '2024-02-17 15:43:11', '2024-02-17 15:43:11'),
(57, 'add.smtp', 'web', 'smtp', '2024-02-17 15:43:20', '2024-02-17 15:43:20'),
(58, 'all.smtp', 'web', 'smtp', '2024-02-17 15:43:30', '2024-02-17 15:43:30'),
(59, 'edit.smtp', 'web', 'smtp', '2024-02-17 15:43:39', '2024-02-17 15:43:39'),
(60, 'delete.smtp', 'web', 'smtp', '2024-02-17 15:43:48', '2024-02-17 15:43:48'),
(61, 'setting.menu', 'web', 'setting', '2024-02-17 15:44:04', '2024-02-17 15:44:04'),
(62, 'add.setting', 'web', 'setting', '2024-02-17 15:44:15', '2024-02-17 15:44:15'),
(63, 'all.setting', 'web', 'setting', '2024-02-17 15:44:23', '2024-02-17 15:44:23'),
(64, 'edit.setting', 'web', 'setting', '2024-02-17 15:44:32', '2024-02-17 15:44:32'),
(65, 'delete.setting', 'web', 'setting', '2024-02-17 15:44:41', '2024-02-17 15:44:41'),
(66, 'role.menu', 'web', 'role', '2024-02-17 15:44:56', '2024-02-17 15:44:56'),
(67, 'add.role', 'web', 'role', '2024-02-17 15:45:04', '2024-02-17 15:45:04'),
(68, 'all.role', 'web', 'role', '2024-02-17 15:45:13', '2024-02-17 15:45:13'),
(69, 'edit.role', 'web', 'role', '2024-02-17 15:45:23', '2024-02-17 15:45:23'),
(70, 'delete.role', 'web', 'role', '2024-02-17 15:45:33', '2024-02-17 15:45:33'),
(72, 'test.all', 'web', 'test', '2024-02-20 21:25:51', '2024-02-20 21:25:51'),
(73, 'test.add', 'web', 'test', '2024-02-20 21:25:51', '2024-02-20 21:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ptype_id` varchar(255) NOT NULL,
  `amenities_id` varchar(255) NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `property_slug` varchar(255) NOT NULL,
  `property_code` varchar(255) NOT NULL,
  `property_status` varchar(255) NOT NULL,
  `lowest_price` varchar(255) DEFAULT NULL,
  `max_price` varchar(255) DEFAULT NULL,
  `property_thumbnail` varchar(255) NOT NULL,
  `short_descrip` text DEFAULT NULL,
  `long_descrip` text DEFAULT NULL,
  `bedrooms` varchar(255) DEFAULT NULL,
  `bathrooms` varchar(255) DEFAULT NULL,
  `garage` varchar(255) DEFAULT NULL,
  `garage_size` varchar(255) DEFAULT NULL,
  `property_size` varchar(255) DEFAULT NULL,
  `property_video` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `neighborhood` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `hot` varchar(255) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `ptype_id`, `amenities_id`, `property_name`, `property_slug`, `property_code`, `property_status`, `lowest_price`, `max_price`, `property_thumbnail`, `short_descrip`, `long_descrip`, `bedrooms`, `bathrooms`, `garage`, `garage_size`, `property_size`, `property_video`, `address`, `city`, `state`, `postal_code`, `neighborhood`, `latitude`, `longitude`, `featured`, `hot`, `agent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '3', 'Air Conditioning,Cleaning Service,Dishwasher', 'The Citizen Apartment', 'the-citizen-apartment', 'PC001', 'rent', '20000', '30000', 'upload/property/thumbnail/1789803133505581.jpeg', 'Lorem ipsum dolor sit amet consectetur adipisicing sed eiusm tempor incididunt labore dolore magna aliqua enim minim', '<p><span style=\"color: rgb(191, 237, 210);\">Lorem ipsum dolor sit amet consectetur adipisicing sed eiusm tempor incididunt labore dolore magna aliqua enim minim&nbsp;</span></p>', '3', '3', '3', '3', '2200', 'https://www.youtube.com/watch?v=g_nSN11Jt-A', 'Uttara,  Sector #9 Dhaka', 'Dhaka', '1', '1230', 'Minus quo deserunt p', '23.810331', '90.412521', '1', '1', 2, '1', '2024-02-02 09:54:40', '2024-02-02 10:05:10'),
(2, '3', 'Cleaning Service,Dishwasher', 'Test Property', 'test-property', 'PC002', 'buy', '22000', '30200', 'upload/property/thumbnail/1785420983805349.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing sed eiusm tempor incididunt labore dolore magna aliqua enim minim', '<p><span style=\"color: rgb(191, 237, 210);\">Lorem ipsum dolor sit amet consectetur adipisicing sed eiusm tempor incididunt labore dolore magna aliqua enim minim&nbsp;</span></p>', '3', '3', '3', '3', '2200', 'https://www.youtube.com/embed/g_nSN11Jt-A?si=EHnmQ3jingymz33X', 'Uttara,  Sector #9 Dhaka', 'Dhaka', '1', '1230', 'Minus quo deserunt p', '23.810331', '90.412521', '1', '1', 2, '1', '2024-02-02 09:54:40', '2024-02-02 10:05:41'),
(3, '3', 'Cleaning Service,Dishwasher', 'Hello Property', 'hello-property', 'PC003', 'buy', '22000', '30200', 'upload/property/thumbnail/1785420983805349.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing sed eiusm tempor incididunt labore dolore magna aliqua enim minim', '<p><span style=\"color: rgb(191, 237, 210);\">Lorem ipsum dolor sit amet consectetur adipisicing sed eiusm tempor incididunt labore dolore magna aliqua enim minim&nbsp;</span></p>', '3', '3', '3', '3', '2200', 'https://www.youtube.com/watch?v=g_nSN11Jt-A', 'Uttara,  Sector #9 Dhaka', 'Dhaka', '1', '1230', 'Minus quo deserunt p', '23.810331', '90.412521', '1', '1', 2, '1', '2024-02-02 09:54:40', '2024-02-02 10:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `property_messages`
--

CREATE TABLE `property_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `agent_id` varchar(255) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `msg_name` varchar(255) DEFAULT NULL,
  `msg_email` varchar(255) DEFAULT NULL,
  `msg_phone` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `type_icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `type_name`, `type_icon`, `created_at`, `updated_at`) VALUES
(1, 'Residential', 'icon-1', NULL, NULL),
(2, 'Commercial', 'icon-2', NULL, NULL),
(3, 'Appertment', 'icon-3', NULL, NULL),
(4, 'Industrial', 'icon-4', NULL, NULL),
(5, 'Building Code', 'icon-5', NULL, NULL),
(6, 'Office', 'icon-6', NULL, NULL);

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
(1, 'Super Admin', 'web', '2024-02-20 23:59:51', '2024-02-20 23:59:51'),
(2, 'Admin', 'web', '2024-02-21 00:01:16', '2024-02-21 00:01:16'),
(3, 'Manager', 'web', '2024-02-21 00:01:23', '2024-02-21 00:01:23'),
(4, 'Sales', 'web', '2024-02-21 00:01:29', '2024-02-21 00:11:06');

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
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(41, 1),
(41, 3),
(41, 4),
(42, 1),
(42, 3),
(42, 4),
(43, 1),
(43, 4),
(44, 1),
(44, 4),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(51, 4),
(52, 1),
(52, 4),
(53, 1),
(53, 4),
(54, 1),
(54, 4),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(72, 1),
(73, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `agent_id` varchar(255) DEFAULT NULL,
  `tour_date` varchar(255) DEFAULT NULL,
  `tour_time` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `user_id`, `property_id`, `agent_id`, `tour_date`, `tour_time`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2', '02/10/2024', '12 PM', 'This is Test Tour.', '1', '2024-02-04 18:51:33', '2024-02-10 10:04:08');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `support_phone` varchar(255) DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `support_phone`, `company_address`, `email`, `facebook`, `twitter`, `about`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1791086900797449.png', '+251-235-3256', 'Discover St, New York, NY 10012, USA', 'info@example.com', 'https://www.facebook.com/', 'https://twitter.com/', 'Lorem ipsum dolor amet consetetur adi pisicing elit sed eiusm tempor in cididunt ut labore dolore magna aliqua enim ad minim venitam\r\n\r\nQuis nostrud exercita laboris nisi ut aliquip commodo.', 'Realshed © 2024 All Right Reserved  Terms of ServicePrivacy Policy', '2024-02-16 19:20:20', '2024-02-16 13:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mailer` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `encryption` varchar(255) DEFAULT NULL,
  `from_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp_settings`
--

INSERT INTO `smtp_settings` (`id`, `mailer`, `host`, `port`, `username`, `password`, `encryption`, `from_address`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'sandbox.smtp.mailtrap.io', '2525', 'a5a937040c2def', '1b047b9297b135', 'tls', 'zakirtextknoter@gmail.com', NULL, '2024-02-10 09:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `state_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `state_image`, `created_at`, `updated_at`) VALUES
(1, 'Uttara', 'upload/state/1789802474422382.jpeg', '2024-02-02 15:37:11', '2024-02-02 09:44:11'),
(2, 'Motijheel', 'upload/state/1789802529008840.jpeg', '2024-02-02 15:37:11', '2024-02-02 09:45:03'),
(3, 'Airport', 'upload/state/1789802556224251.jpeg', '2024-02-02 15:37:11', '2024-02-02 09:45:29'),
(4, 'Dia Bari', 'upload/state/1789802577240577.jpeg', '2024-02-02 15:37:11', '2024-02-02 09:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `position`, `image`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Riazul Islam', 'Software Engineer', 'upload/testimonial/1789926863554379.jpeg', 'He is a Project Manager.', NULL, NULL),
(2, 'Sazzad Rahman', 'Android & IOS Apps Developer', 'upload/testimonial/1789926923664173.jpeg', 'He is an Expert Android & IOS Apps Developer.', NULL, NULL),
(3, 'Tanim', 'IPE', 'upload/testimonial/1789926988071226.jpeg', 'He is Multitalented Person on Textile', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','agent','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `credit` varchar(255) DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `credit`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '+8801775814898', 'admin@gmail.com', NULL, '$2y$10$XOwbmmp6BrIARV0NamixyuIw/y0wRf13AXPc3SrlhT.oNC1s/Rqzi', '202402021608download (5).jpeg', '+8801775814898', 'Pabna, Atghoria', 'admin', 'active', '0', NULL, NULL, '2024-02-02 10:08:41'),
(2, 'Agent', 'agent', 'agent@gmail.com', NULL, '$2y$10$SBoAyzCDJ9iDRhYOvpt4geIAz5ZzlrnsotPHp3UmrdR5Hnn155w.2', '202312091508download.jpeg', '+251-235-3256', 'Discover St, New York, NY 10012, USA', 'agent', 'active', '0', NULL, NULL, NULL),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$10$e.I398Kd3KtHSLzbBuLNYumplD0g.qUdnQOvZgHHZG3fgizQCqTBu', 'user.png', NULL, NULL, 'user', 'active', '0', NULL, NULL, NULL),
(4, 'Noe Hermann', NULL, 'rmarvin@example.com', '2024-02-02 09:32:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0033cc?text=rerum', '909.758.8655', '8642 Otha Villages Suite 306\nPrudencehaven, IA 43575-9254', 'admin', 'inactive', '0', 'qgIlsJbwX7', '2024-02-02 09:32:49', '2024-02-02 09:32:49'),
(5, 'David Rempel', NULL, 'leora55@example.org', '2024-02-02 09:32:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00ffee?text=dolorum', '(731) 263-2241', '26116 Dorris Brook Suite 656\nNorth Danny, KS 15041-9661', 'agent', 'inactive', '0', 'TRaLrgqeKd', '2024-02-02 09:32:49', '2024-02-02 09:32:49'),
(6, 'Haven Orn II', NULL, 'hirthe.laisha@example.com', '2024-02-02 09:32:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/009933?text=maiores', '678-973-9194', '6973 McGlynn Roads\nNoemiefurt, SC 24907', 'admin', 'active', '0', 'LCggtvFywq', '2024-02-02 09:32:49', '2024-02-02 09:32:49'),
(7, 'Bethany Stroman', NULL, 'loraine66@example.org', '2024-02-02 09:32:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0044cc?text=quos', '540.770.4701', '38890 Hermiston Crossing Apt. 651\nGislasonhaven, IA 94680', 'user', 'inactive', '0', 'aFwCJYUVHF', '2024-02-02 09:32:49', '2024-02-02 09:32:49'),
(8, 'Laisha Reichel', NULL, 'dorian75@example.com', '2024-02-02 09:32:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00aa22?text=et', '(304) 752-4634', '9448 Austin Ferry Apt. 493\nLake Leviview, NC 03107', 'admin', 'inactive', '0', 'FLmj4XltZn', '2024-02-02 09:32:49', '2024-02-02 09:32:49'),
(9, 'Abner Roob', NULL, 'ipowlowski@example.org', '2024-02-02 09:32:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0011cc?text=repudiandae', '+1-279-523-5782', '10428 Mervin Junctions\nEmmiefort, HI 94963', 'agent', 'active', '0', 'hhlsWdheIL', '2024-02-02 09:32:49', '2024-02-02 09:32:49'),
(10, 'Ms. Lavina Pfeffer', NULL, 'bernice27@example.net', '2024-02-02 09:32:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/007777?text=consequatur', '+1-858-946-3886', '3629 Zulauf Parkways Suite 691\nRafaelton, NY 07103-6035', 'user', 'inactive', '0', 'DyTqPd7iDK', '2024-02-02 09:32:49', '2024-02-02 09:32:49'),
(11, 'Lonny Sanford', NULL, 'tpfeffer@example.org', '2024-02-02 09:32:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00ee22?text=commodi', '+1.423.407.8187', '2223 Megane Port\nNew Yolanda, CO 05428', 'user', 'active', '0', 'J5OyEyPupB', '2024-02-02 09:32:49', '2024-02-02 09:32:49'),
(12, 'Ms. Augusta Rohan Sr.', NULL, 'smitham.aliya@example.org', '2024-02-02 09:32:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00aa44?text=et', '605.391.4903', '298 Estefania Squares\nOliverstad, MT 51052', 'agent', 'inactive', '0', 'kSr8LLFmh2', '2024-02-02 09:32:49', '2024-02-02 09:32:49'),
(13, 'Mellie Morissette', NULL, 'eve35@example.org', '2024-02-02 09:32:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0055aa?text=iste', '(971) 365-5659', '247 Alphonso Trail\nRogahnland, MT 30169', 'agent', 'active', '0', 'mKMH0Yqvqu', '2024-02-02 09:32:49', '2024-02-02 09:32:49'),
(17, 'Zakir', 'Zakir', 'Zakir@gmail.com', NULL, '$2y$10$iUNqqAMPcuZU0JrWgS0kG.iKDrSMqhf4pZCpY7Qly8/wHw1ojjvd6', NULL, '+8801775814898', 'Pabna, Atghoria', 'admin', 'active', '0', NULL, '2024-02-22 21:25:41', '2024-02-22 21:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-02-02 10:02:28', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compares`
--
ALTER TABLE `compares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `multi_images`
--
ALTER TABLE `multi_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_plans`
--
ALTER TABLE `package_plans`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_messages`
--
ALTER TABLE `property_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `compares`
--
ALTER TABLE `compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `package_plans`
--
ALTER TABLE `package_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property_messages`
--
ALTER TABLE `property_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_types`
--
ALTER TABLE `property_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
