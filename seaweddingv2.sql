-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 18, 2019 lúc 10:22 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `seaweddingv2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', '2019-10-17 00:10:21', '2019-10-17 00:10:21'),
(2, 1, '::1', '2019-10-17 18:39:48', '2019-10-17 18:39:48'),
(3, 1, '::1', '2019-10-17 18:43:53', '2019-10-17 18:43:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
(1, 'admin', 'admin', 'admin', 'nnduyquang@gmail.com', '$2y$10$ONGwNadfsrrQ7ZdMBlqmMOzVSiJ/WQyepNCks6cKWq/LLc97LTfO.', NULL, '$2y$10$nYoyTGAgGan4lvM0x3rsk.Y8Xj27hSn67N9CkIwqm5Snh2zepATSa', NULL, '', 1, 2, NULL, '2019-10-17 18:43:53', '2019-10-16 23:41:02', '2019-10-17 18:43:53', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2019-10-16 23:41:02', '2019-10-16 23:41:02', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2019-10-16 23:41:01', '2019-10-16 23:41:01'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2019-10-16 23:41:01', '2019-10-16 23:41:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '::1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `old_content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_theme_templates`
--

CREATE TABLE `cms_theme_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flynsarmy_menu_menuitems`
--

CREATE TABLE `flynsarmy_menu_menuitems` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title_attrib` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_attrib` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `class_attrib` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `selected_item_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `master_object_class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `master_object_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `nest_left` int(11) NOT NULL DEFAULT '0',
  `nest_right` int(11) NOT NULL DEFAULT '0',
  `nest_depth` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `target_attrib` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `flynsarmy_menu_menuitems`
--

INSERT INTO `flynsarmy_menu_menuitems` (`id`, `menu_id`, `enabled`, `label`, `title_attrib`, `id_attrib`, `class_attrib`, `selected_item_id`, `url`, `master_object_class`, `master_object_id`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`, `target_attrib`, `data`) VALUES
(1, 1, 1, 'Trang Chủ', '', '', '', '', 'http://localhost:8080/seaweddingv2', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'home', 0, 1, 2, 0, '2019-10-17 18:56:36', '2019-10-17 18:56:36', '_self', '{\"params\":\"\"}'),
(2, 1, 1, 'Album', '', '', '', '', 'http://localhost:8080/seaweddingv2/album', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'album', 0, 3, 4, 0, '2019-10-17 18:56:53', '2019-10-17 18:56:53', '_self', '{\"params\":\"\"}'),
(3, 1, 1, 'Bảng Giá', '', '', '', '', 'http://localhost:8080/seaweddingv2/bang-gia', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'bang-gia', 0, 5, 6, 0, '2019-10-17 18:57:06', '2019-10-17 18:57:06', '_self', '{\"params\":\"\"}'),
(7, 3, 1, 'Ưu Đãi', '', '', '', '', 'http://localhost:8080/seaweddingv2/uu-dai', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'uu-dai', 0, 7, 8, 0, '2019-10-17 19:06:20', '2019-10-17 19:06:42', '_self', '{\"params\":\"\"}'),
(8, 3, 1, 'Dịch Vụ', '', '', '', '', 'http://localhost:8080/seaweddingv2/dich-vu', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'dich-vu', 0, 9, 10, 0, '2019-10-17 19:06:30', '2019-10-17 19:06:42', '_self', '{\"params\":\"\"}'),
(9, 3, 1, 'Tin Tức', '', '', '', '', 'http://localhost:8080/seaweddingv2/tin-tuc', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'tin-tuc', 0, 11, 12, 0, '2019-10-17 19:06:40', '2019-10-17 19:06:42', '_self', '{\"params\":\"\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flynsarmy_menu_menus`
--

CREATE TABLE `flynsarmy_menu_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_attrib` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `class_attrib` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `short_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `flynsarmy_menu_menus`
--

INSERT INTO `flynsarmy_menu_menus` (`id`, `name`, `id_attrib`, `class_attrib`, `short_desc`, `created_at`, `updated_at`) VALUES
(1, 'menu_desktop_left', '', '', '', '2019-10-17 18:45:41', '2019-10-17 19:05:40'),
(2, 'menu_mobile', '', '', '', '2019-10-17 18:45:52', '2019-10-17 18:45:52'),
(3, 'menu_desktop_right', '', '', '', '2019-10-17 19:06:42', '2019-10-17 19:06:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(10, '2014_10_01_000010_Db_Jobs', 1),
(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
(13, '2014_10_01_000013_Db_System_Sessions', 1),
(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
(16, '2015_10_01_000016_Db_Cache', 1),
(17, '2015_10_01_000017_Db_System_Revisions', 1),
(18, '2015_10_01_000018_Db_FailedJobs', 1),
(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
(26, '2013_10_01_000001_Db_Backend_Users', 2),
(27, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(28, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(29, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(30, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(31, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(32, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
(33, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
(34, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
(35, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(36, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
(37, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(38, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
(39, '2017_10_01_000003_Db_Cms_Theme_Logs', 3),
(40, '2018_11_01_000001_Db_Cms_Theme_Templates', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_config_`
--

CREATE TABLE `quang_config_` (
  `id` int(11) NOT NULL,
  `config_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_name_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_descrtiption_company` text COLLATE utf8mb4_unicode_ci,
  `config_address_company` text COLLATE utf8mb4_unicode_ci,
  `config_script_header` text COLLATE utf8mb4_unicode_ci,
  `	 config_script_body` text COLLATE utf8mb4_unicode_ci,
  `config_contact_detail` text COLLATE utf8mb4_unicode_ci,
  `	 config_hotline_call` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `	 config_hotline_show` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `	 config_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quang_config_`
--

INSERT INTO `quang_config_` (`id`, `config_logo`, `config_name_company`, `config_descrtiption_company`, `config_address_company`, `config_script_header`, `	 config_script_body`, `config_contact_detail`, `	 config_hotline_call`, `	 config_hotline_show`, `	 config_phone`) VALUES
(0, NULL, 'Sea Wedding', '', '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rainlab_blog_categories`
--

CREATE TABLE `rainlab_blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rainlab_blog_categories`
--

INSERT INTO `rainlab_blog_categories` (`id`, `name`, `slug`, `code`, `description`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, NULL, NULL, 1, 2, 0, '2019-10-17 18:42:03', '2019-10-17 18:42:03'),
(2, 'Ưu Đãi', 'uu-dai', NULL, '', NULL, 3, 4, 0, '2019-10-18 02:10:05', '2019-10-18 02:10:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rainlab_blog_posts`
--

CREATE TABLE `rainlab_blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `content_html` longtext COLLATE utf8mb4_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`) VALUES
(2, 1, 'Gói Vip Đà Nẵng', 'goi-vip-da-nang', '', '<section class=\"p-plan-detail-body__details p-plan-details\">\r\n<h1 style=\"text-align: center;\"><span style=\"font-size:22px;\"><strong>Gói VIP Đà Nẵng</strong></span></h1>\r\n\r\n<p class=\"price\" style=\"text-align: center;\"><span style=\"color:#08327e;\"><span style=\"font-size:26px;\">Trọn gói chỉ <span style=\"text-decoration: line-through;\">7.500.000 </span><span style=\"font-weight:bold;color:red\"> =&gt; 6.500.000</span></span> đ</span></p>\r\n\r\n<ul class=\"p-plan-details__list p-plan-details-list\">\r\n	<li class=\"p-plan-details-list__item\">\r\n	<ul class=\"p-plan-details-list__item__in-items\">\r\n		<li>\r\n		<div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-time.png\" /></div>\r\n\r\n		<p class=\"p-plan-details-list__item__text\">Thời gian chụp / 7h - 12h ～</p>\r\n		</li>\r\n		<li>\r\n		<div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-camera.png\" /></div>\r\n\r\n		<p class=\"p-plan-details-list__item__text\">Số shot / không giới hạn</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<div class=\"p-plan-details__costume p-plan-details-costume\">\r\n<ul class=\"p-plan-details-costume__items\">\r\n	<li class=\"p-plan-details-costume__item\">\r\n	<div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-dress.png\" /></div>\r\n\r\n	<p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-min\">Cô dâu / </span> <span class=\"p-plan-details-dl__dd\">2 váy</span> </span></p>\r\n	</li>\r\n	<li class=\"p-plan-details-costume__item\">\r\n	<div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-tuxedo.png\" /></div>\r\n\r\n	<p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-small\">Chú rể / </span> <span class=\"p-plan-details-dl__dd\">2 vest</span> </span></p>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-details-costume__attrs\">\r\n	<li class=\"p-plan-details-costume__attr\">Hoa cầm tay</li>\r\n	<li class=\"p-plan-details-costume__attr\">Cà vạt</li>\r\n	<li class=\"p-plan-details-costume__attr\">Phụ kiện trang sức</li>\r\n	<li class=\"p-plan-details-costume__attr\">Trang phục tự chọn (khách chuẩn bị)</li>\r\n</ul>\r\n</div>\r\n\r\n<section class=\"p-plan-gift-services\">\r\n<ul>\r\n	<li>TẶNG 1 album cao cấp 30*30 hoặc 25*35</li>\r\n	<li>TẶNG 1 ảnh lớn ép gỗ laminta khung 60*90</li>\r\n	<li>TẶNG đĩa DVD HD trình chiếu nhà hàng</li>\r\n	<li>TẶNG 5 hình để bàn Gallery</li>\r\n	<li>TẶNG Toàn bộ file thiết kế và file gốc.</li>\r\n</ul>\r\n</section>\r\n\r\n<section class=\"p-plan-included-services\">\r\n<h4 class=\"p-plan-included-services__title\">Dịch vụ bao gồm</h4>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"hair_makeup\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/hair_makeup.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Làm tóc và trang điểm cho cô dâu chú rể</div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"set_of_accessories\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/set_of_accessories.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Phụ kiện đi kèm</div>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"photo_props\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/photo_props.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Hoa Cầm Tay</div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"all_photo_data\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/all_photo_data.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Tất cả data hình ảnh đã chụp</div>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"10_album\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/10_album.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Album 30x30</div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"simple_edited_photodata\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/simple_edited_photodata.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Chỉnh sửa hình ảnh<br />\r\n	<em>(hình đã chọn cho album)</em></div>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"a3_photo_board\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/a3_photo_board.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Ảnh để cổng<em>(kích thước 60x90)</em></div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"transportation_expenses\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/transportation_expenses.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Phương tiện di chuyển<br />\r\n	<em>(Studio ⇆ Địa điểm chụp)</em></div>\r\n	</li>\r\n</ul>\r\n\r\n<p class=\"p-plan-included-services__notice\"><strong>Mọi thứ cần thiết cho buổi chụp ảnh đã bao gồm hết trong gói dịch vụ </strong></p>\r\n\r\n<blockquote><br />\r\n[Ghi chú]　Chuyên viên trang điểm sẽ theo ekip suốt quá trình chụp để hỗ trợ cô dâu<br />\r\n[Đặc biệt!]　Bạn có thể chọn bất kỳ trang phục có sẵn trong studio mà không phải trả thêm phí.<br />\r\n[Đã bao gồm]　Phí vào các địa điểm chụp tại nội thành đà nẵng<br />\r\n<br />\r\nXin vui lòng liên hệ trước với ekip nếu bạn có bất kỳ ý tưởng hoặc sự thay đổi nào để chúng tôi chuẩn bị chu đáo nhất cho buổi chụp.\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n</section>\r\n</section>', '<section class=\"p-plan-detail-body__details p-plan-details\">\n<h1 style=\"text-align: center;\"><span style=\"font-size:22px;\"><strong>Gói VIP Đà Nẵng</strong></span></h1>\n\n<p class=\"price\" style=\"text-align: center;\"><span style=\"color:#08327e;\"><span style=\"font-size:26px;\">Trọn gói chỉ <span style=\"text-decoration: line-through;\">7.500.000 </span><span style=\"font-weight:bold;color:red\"> =&gt; 6.500.000</span></span> đ</span></p>\n\n<ul class=\"p-plan-details__list p-plan-details-list\">\n    <li class=\"p-plan-details-list__item\">\n    <ul class=\"p-plan-details-list__item__in-items\">\n        <li>\n        <div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-time.png\"></div>\n\n        <p class=\"p-plan-details-list__item__text\">Thời gian chụp / 7h - 12h ～</p>\n        </li>\n        <li>\n        <div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-camera.png\"></div>\n\n        <p class=\"p-plan-details-list__item__text\">Số shot / không giới hạn</p>\n        </li>\n    </ul>\n    </li>\n</ul>\n\n<div class=\"p-plan-details__costume p-plan-details-costume\">\n<ul class=\"p-plan-details-costume__items\">\n    <li class=\"p-plan-details-costume__item\">\n    <div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-dress.png\"></div>\n\n    <p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-min\">Cô dâu / </span> <span class=\"p-plan-details-dl__dd\">2 váy</span> </span></p>\n    </li>\n    <li class=\"p-plan-details-costume__item\">\n    <div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-tuxedo.png\"></div>\n\n    <p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-small\">Chú rể / </span> <span class=\"p-plan-details-dl__dd\">2 vest</span> </span></p>\n    </li>\n</ul>\n\n<ul class=\"p-plan-details-costume__attrs\">\n    <li class=\"p-plan-details-costume__attr\">Hoa cầm tay</li>\n    <li class=\"p-plan-details-costume__attr\">Cà vạt</li>\n    <li class=\"p-plan-details-costume__attr\">Phụ kiện trang sức</li>\n    <li class=\"p-plan-details-costume__attr\">Trang phục tự chọn (khách chuẩn bị)</li>\n</ul>\n</div>\n\n<section class=\"p-plan-gift-services\">\n<ul>\n    <li>TẶNG 1 album cao cấp 30*30 hoặc 25*35</li>\n    <li>TẶNG 1 ảnh lớn ép gỗ laminta khung 60*90</li>\n    <li>TẶNG đĩa DVD HD trình chiếu nhà hàng</li>\n    <li>TẶNG 5 hình để bàn Gallery</li>\n    <li>TẶNG Toàn bộ file thiết kế và file gốc.</li>\n</ul>\n</section>\n\n<section class=\"p-plan-included-services\">\n<h4 class=\"p-plan-included-services__title\">Dịch vụ bao gồm</h4>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"hair_makeup\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/hair_makeup.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Làm tóc và trang điểm cho cô dâu chú rể</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"set_of_accessories\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/set_of_accessories.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Phụ kiện đi kèm</div>\n    </li>\n</ul>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"photo_props\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/photo_props.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Hoa Cầm Tay</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"all_photo_data\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/all_photo_data.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Tất cả data hình ảnh đã chụp</div>\n    </li>\n</ul>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"10_album\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/10_album.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Album 30x30</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"simple_edited_photodata\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/simple_edited_photodata.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Chỉnh sửa hình ảnh<br>\n    <em>(hình đã chọn cho album)</em>\n</div>\n    </li>\n</ul>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"a3_photo_board\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/a3_photo_board.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Ảnh để cổng<em>(kích thước 60x90)</em>\n</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"transportation_expenses\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/transportation_expenses.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Phương tiện di chuyển<br>\n    <em>(Studio ⇆ Địa điểm chụp)</em>\n</div>\n    </li>\n</ul>\n\n<p class=\"p-plan-included-services__notice\"><strong>Mọi thứ cần thiết cho buổi chụp ảnh đã bao gồm hết trong gói dịch vụ </strong></p>\n\n<blockquote>\n<br>\n[Ghi chú]　Chuyên viên trang điểm sẽ theo ekip suốt quá trình chụp để hỗ trợ cô dâu<br>\n[Đặc biệt!]　Bạn có thể chọn bất kỳ trang phục có sẵn trong studio mà không phải trả thêm phí.<br>\n[Đã bao gồm]　Phí vào các địa điểm chụp tại nội thành đà nẵng<br>\n<br>\nXin vui lòng liên hệ trước với ekip nếu bạn có bất kỳ ý tưởng hoặc sự thay đổi nào để chúng tôi chuẩn bị chu đáo nhất cho buổi chụp.\n<p> </p>\n</blockquote>\n</section>\n</section>', NULL, 0, '2019-10-18 02:51:57', '2019-10-18 02:51:57', NULL),
(3, 1, 'Đà Nẵng - Bà Nà - Hội An', 'da-nang-ba-na-hoi', '', '<section class=\"p-plan-detail-body__details p-plan-details\">\r\n<h1 style=\"text-align: center;\"><span style=\"font-size:22px;\"><strong>Gói Đà Nẵng - Bà Nà - Hội An</strong></span></h1>\r\n\r\n<p class=\"price\" style=\"text-align: center;\"><span style=\"color:#08327e;\"><span style=\"font-size:26px;\">Trọn gói chỉ <span style=\"text-decoration: line-through;\">15.900.000 </span><span style=\"font-weight:bold;color:red\">=> 14.900.000</span></span> đ</span></p>\r\n\r\n<p class=\"price\" style=\"text-align: center;\"><span style=\"color:#08327e;\"><span style=\"font-size:26px;\">(đã bao gồm vé cáp treo + ăn uống)</span></span></p>\r\n\r\n<ul class=\"p-plan-details__list p-plan-details-list\">\r\n	<li class=\"p-plan-details-list__item\">\r\n	<ul class=\"p-plan-details-list__item__in-items\">\r\n		<li>\r\n		<div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-time.png\" /></div>\r\n\r\n		<p class=\"p-plan-details-list__item__text\">Thời gian chụp / 7h - 20h ～</p>\r\n		</li>\r\n		<li>\r\n		<div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-camera.png\" /></div>\r\n\r\n		<p class=\"p-plan-details-list__item__text\">Số shot / không giới hạn</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<div class=\"p-plan-details__costume p-plan-details-costume\">\r\n<ul class=\"p-plan-details-costume__items\">\r\n	<li class=\"p-plan-details-costume__item\">\r\n	<div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-dress.png\" /></div>\r\n\r\n	<p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-min\">Cô dâu / </span> <span class=\"p-plan-details-dl__dd\">3 váy và 1 bộ áo dài</span> </span></p>\r\n	</li>\r\n	<li class=\"p-plan-details-costume__item\">\r\n	<div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-tuxedo.png\" /></div>\r\n\r\n	<p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-small\">Chú rể / </span> <span class=\"p-plan-details-dl__dd\">2 vest và 1 bộ áo dài</span> </span></p>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-details-costume__attrs\">\r\n	<li class=\"p-plan-details-costume__attr\">Hoa cầm tay</li>\r\n	<li class=\"p-plan-details-costume__attr\">Cà vạt</li>\r\n	<li class=\"p-plan-details-costume__attr\">Phụ kiện trang sức</li>\r\n</ul>\r\n</div>\r\n\r\n<section class=\"p-plan-gift-services\">\r\n<ul>\r\n	<li>TẶNG ngay 02_ảnh_cổng 60X90 ép gỗ laminage cao cấp</li>\r\n	<li>TẶNG album 30*30 cực chất</li>\r\n	<li>TẶNG đĩa DVD HD trình chiếu nhà hàng</li>\r\n	<li>TẶNG 5 hình để bàn Gallery</li>\r\n	<li>TẶNG 1 đêm khách sạn gần biển, tiện du lịch mùa hè với nhiều chương trình lễ hội hay tại Đà Nẵng.</li>\r\n	<li>LO ĂN UỐNG CHO DÂU RỂ ( Sáng, trưa)</li>\r\n	<li>Đón khách tại sân bay MIỄN PHÍ</li>\r\n	<li>Đã bao gồm vé cáp treo</li>\r\n</ul>\r\n</section>\r\n\r\n<section class=\"p-plan-included-services\">\r\n<h4 class=\"p-plan-included-services__title\">Dịch vụ bao gồm</h4>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"hair_makeup\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/hair_makeup.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Làm tóc và trang điểm cho cô dâu chú rể</div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"set_of_accessories\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/set_of_accessories.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Phụ kiện đi kèm</div>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"photo_props\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/photo_props.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Hoa Cầm Tay</div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"all_photo_data\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/all_photo_data.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Tất cả data hình ảnh đã chụp</div>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"10_album\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/10_album.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Album 30x30</div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"simple_edited_photodata\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/simple_edited_photodata.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Chỉnh sửa hình ảnh<br />\r\n	<em>(hình đã chọn cho album)</em></div>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"a3_photo_board\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/a3_photo_board.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Ảnh để cổng<em>(kích thước 60x90)</em></div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"transportation_expenses\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/transportation_expenses.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Phương tiện di chuyển<br />\r\n	<em>(Studio ⇆ Địa điểm chụp)</em></div>\r\n	</li>\r\n</ul>\r\n\r\n<p class=\"p-plan-included-services__notice\"><strong>Mọi thứ cần thiết cho buổi chụp ảnh đã bao gồm hết trong gói dịch vụ </strong></p>\r\n\r\n<blockquote><br />\r\n[Ghi chú]　Chuyên viên trang điểm sẽ theo ekip suốt quá trình chụp để hỗ trợ cô dâu<br />\r\n[Đặc biệt!]　Bạn có thể chọn bất kỳ trang phục có sẵn trong studio mà không phải trả thêm phí.<br />\r\n[Đã bao gồm]　Phí vào các địa điểm chụp tại nội thành Đà Nẵng<br />\r\n<br />\r\nXin vui lòng liên hệ trước với ekip nếu bạn có bất kỳ ý tưởng hoặc sự thay đổi nào để chúng tôi chuẩn bị chu đáo nhất cho buổi chụp.\r\n<p> </p>\r\n</blockquote>\r\n</section>\r\n</section>', '<section class=\"p-plan-detail-body__details p-plan-details\">\n<h1 style=\"text-align: center;\"><span style=\"font-size:22px;\"><strong>Gói Đà Nẵng - Bà Nà - Hội An</strong></span></h1>\n\n<p class=\"price\" style=\"text-align: center;\"><span style=\"color:#08327e;\"><span style=\"font-size:26px;\">Trọn gói chỉ <span style=\"text-decoration: line-through;\">15.900.000 </span><span style=\"font-weight:bold;color:red\">=&gt; 14.900.000</span></span> đ</span></p>\n\n<p class=\"price\" style=\"text-align: center;\"><span style=\"color:#08327e;\"><span style=\"font-size:26px;\">(đã bao gồm vé cáp treo + ăn uống)</span></span></p>\n\n<ul class=\"p-plan-details__list p-plan-details-list\">\n    <li class=\"p-plan-details-list__item\">\n    <ul class=\"p-plan-details-list__item__in-items\">\n        <li>\n        <div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-time.png\"></div>\n\n        <p class=\"p-plan-details-list__item__text\">Thời gian chụp / 7h - 20h ～</p>\n        </li>\n        <li>\n        <div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-camera.png\"></div>\n\n        <p class=\"p-plan-details-list__item__text\">Số shot / không giới hạn</p>\n        </li>\n    </ul>\n    </li>\n</ul>\n\n<div class=\"p-plan-details__costume p-plan-details-costume\">\n<ul class=\"p-plan-details-costume__items\">\n    <li class=\"p-plan-details-costume__item\">\n    <div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-dress.png\"></div>\n\n    <p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-min\">Cô dâu / </span> <span class=\"p-plan-details-dl__dd\">3 váy và 1 bộ áo dài</span> </span></p>\n    </li>\n    <li class=\"p-plan-details-costume__item\">\n    <div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-tuxedo.png\"></div>\n\n    <p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-small\">Chú rể / </span> <span class=\"p-plan-details-dl__dd\">2 vest và 1 bộ áo dài</span> </span></p>\n    </li>\n</ul>\n\n<ul class=\"p-plan-details-costume__attrs\">\n    <li class=\"p-plan-details-costume__attr\">Hoa cầm tay</li>\n    <li class=\"p-plan-details-costume__attr\">Cà vạt</li>\n    <li class=\"p-plan-details-costume__attr\">Phụ kiện trang sức</li>\n</ul>\n</div>\n\n<section class=\"p-plan-gift-services\">\n<ul>\n    <li>TẶNG ngay 02_ảnh_cổng 60X90 ép gỗ laminage cao cấp</li>\n    <li>TẶNG album 30*30 cực chất</li>\n    <li>TẶNG đĩa DVD HD trình chiếu nhà hàng</li>\n    <li>TẶNG 5 hình để bàn Gallery</li>\n    <li>TẶNG 1 đêm khách sạn gần biển, tiện du lịch mùa hè với nhiều chương trình lễ hội hay tại Đà Nẵng.</li>\n    <li>LO ĂN UỐNG CHO DÂU RỂ ( Sáng, trưa)</li>\n    <li>Đón khách tại sân bay MIỄN PHÍ</li>\n    <li>Đã bao gồm vé cáp treo</li>\n</ul>\n</section>\n\n<section class=\"p-plan-included-services\">\n<h4 class=\"p-plan-included-services__title\">Dịch vụ bao gồm</h4>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"hair_makeup\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/hair_makeup.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Làm tóc và trang điểm cho cô dâu chú rể</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"set_of_accessories\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/set_of_accessories.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Phụ kiện đi kèm</div>\n    </li>\n</ul>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"photo_props\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/photo_props.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Hoa Cầm Tay</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"all_photo_data\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/all_photo_data.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Tất cả data hình ảnh đã chụp</div>\n    </li>\n</ul>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"10_album\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/10_album.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Album 30x30</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"simple_edited_photodata\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/simple_edited_photodata.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Chỉnh sửa hình ảnh<br>\n    <em>(hình đã chọn cho album)</em>\n</div>\n    </li>\n</ul>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"a3_photo_board\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/a3_photo_board.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Ảnh để cổng<em>(kích thước 60x90)</em>\n</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"transportation_expenses\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/transportation_expenses.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Phương tiện di chuyển<br>\n    <em>(Studio ⇆ Địa điểm chụp)</em>\n</div>\n    </li>\n</ul>\n\n<p class=\"p-plan-included-services__notice\"><strong>Mọi thứ cần thiết cho buổi chụp ảnh đã bao gồm hết trong gói dịch vụ </strong></p>\n\n<blockquote>\n<br>\n[Ghi chú]　Chuyên viên trang điểm sẽ theo ekip suốt quá trình chụp để hỗ trợ cô dâu<br>\n[Đặc biệt!]　Bạn có thể chọn bất kỳ trang phục có sẵn trong studio mà không phải trả thêm phí.<br>\n[Đã bao gồm]　Phí vào các địa điểm chụp tại nội thành Đà Nẵng<br>\n<br>\nXin vui lòng liên hệ trước với ekip nếu bạn có bất kỳ ý tưởng hoặc sự thay đổi nào để chúng tôi chuẩn bị chu đáo nhất cho buổi chụp.\n<p> </p>\n</blockquote>\n</section>\n</section>', NULL, 0, '2019-10-18 02:53:29', '2019-10-18 02:54:22', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rainlab_blog_posts_categories`
--

CREATE TABLE `rainlab_blog_posts_categories` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rainlab_blog_posts_categories`
--

INSERT INTO `rainlab_blog_posts_categories` (`post_id`, `category_id`) VALUES
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `details` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_event_logs`
--

INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(1, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"punctuation\" of value \":\" (\"end of print statement\" expected) in \"C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/layouts/master.htm\" at line 27. in C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\TokenStream.php:76\nStack trace:\n#0 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Parser.php(143): Twig\\TokenStream->expect(4)\n#1 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#2 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#3 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#4 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#6 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(433): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#7 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#8 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#9 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#10 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#11 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#12 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#13 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#14 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#15 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#35 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#44 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\seaweddingv2\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#46 {main}', NULL, '2019-10-17 19:15:40', '2019-10-17 19:15:40'),
(2, 'error', 'ErrorException: Division by zero in C:\\xampp\\htdocs\\seaweddingv2\\storage\\cms\\twig\\e3\\e35dd47b1085449af5dcd2b96f9feaf4961a4f127376b69ea45143272eb2cc6a.php:84\nStack trace:\n#0 C:\\xampp\\htdocs\\seaweddingv2\\storage\\cms\\twig\\e3\\e35dd47b1085449af5dcd2b96f9feaf4961a4f127376b69ea45143272eb2cc6a.php(84): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Division by zer...\', \'C:\\\\xampp\\\\htdocs...\', 84, Array)\n#1 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_5eb3a6f0aabb603d401e14261dce295987c044f81beec05d7e06dbd8f2cbba50->doDisplay(Array, Array)\n#2 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#3 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#4 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(434): Twig\\Template->render(Array)\n#5 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#7 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#9 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#10 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#11 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#12 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#13 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\seaweddingv2\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#44 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"Division by zero\") in \"C:\\xampp\\htdocs\\seaweddingv2/themes/sea-wedding/layouts/master.htm\" at line 27. in C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php:421\nStack trace:\n#0 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#2 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(434): Twig\\Template->render(Array)\n#3 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#6 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#11 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\seaweddingv2\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 {main}', NULL, '2019-10-17 19:57:28', '2019-10-17 19:57:28'),
(3, 'error', 'Symfony\\Component\\Debug\\Exception\\FatalErrorException: Maximum execution time of 30 seconds exceeded in C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Html\\HtmlBuilder.php:13\nStack trace:\n#0 {main}', NULL, '2019-10-17 21:10:00', '2019-10-17 21:10:00'),
(4, 'error', 'October\\Rain\\Exception\\ApplicationException: The model must implement the NestedTree or Sortable traits. in C:\\xampp\\htdocs\\seaweddingv2\\modules\\backend\\behaviors\\ReorderController.php:225\nStack trace:\n#0 C:\\xampp\\htdocs\\seaweddingv2\\modules\\backend\\behaviors\\ReorderController.php(107): Backend\\Behaviors\\ReorderController->validateModel()\n#1 [internal function]: Backend\\Behaviors\\ReorderController->reorder()\n#2 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\seaweddingv2\\modules\\backend\\classes\\Controller.php(192): Backend\\Classes\\Controller->extendableCall(\'reorder\', Array)\n#4 [internal function]: Backend\\Classes\\Controller->__call(\'reorder\', Array)\n#5 C:\\xampp\\htdocs\\seaweddingv2\\modules\\backend\\classes\\Controller.php(397): call_user_func_array(Array, Array)\n#6 C:\\xampp\\htdocs\\seaweddingv2\\modules\\backend\\classes\\Controller.php(285): Backend\\Classes\\Controller->execPageAction(\'reorder\', Array)\n#7 C:\\xampp\\htdocs\\seaweddingv2\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'reorder\', Array)\n#8 [internal function]: Backend\\Classes\\BackendController->run(\'quang/config/co...\')\n#9 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#10 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#11 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#12 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#13 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#14 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\seaweddingv2\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#35 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#37 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\seaweddingv2\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 {main}', NULL, '2019-10-17 21:34:08', '2019-10-17 21:34:08'),
(5, 'error', 'October\\Rain\\Exception\\ApplicationException: The model must implement the NestedTree or Sortable traits. in C:\\xampp\\htdocs\\seaweddingv2\\modules\\backend\\behaviors\\ReorderController.php:225\nStack trace:\n#0 C:\\xampp\\htdocs\\seaweddingv2\\modules\\backend\\behaviors\\ReorderController.php(107): Backend\\Behaviors\\ReorderController->validateModel()\n#1 [internal function]: Backend\\Behaviors\\ReorderController->reorder()\n#2 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(409): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\seaweddingv2\\modules\\backend\\classes\\Controller.php(192): Backend\\Classes\\Controller->extendableCall(\'reorder\', Array)\n#4 [internal function]: Backend\\Classes\\Controller->__call(\'reorder\', Array)\n#5 C:\\xampp\\htdocs\\seaweddingv2\\modules\\backend\\classes\\Controller.php(397): call_user_func_array(Array, Array)\n#6 C:\\xampp\\htdocs\\seaweddingv2\\modules\\backend\\classes\\Controller.php(285): Backend\\Classes\\Controller->execPageAction(\'reorder\', Array)\n#7 C:\\xampp\\htdocs\\seaweddingv2\\modules\\backend\\classes\\BackendController.php(161): Backend\\Classes\\Controller->run(\'reorder\', Array)\n#8 [internal function]: Backend\\Classes\\BackendController->run(\'quang/config/co...\')\n#9 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#10 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#11 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#12 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#13 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#14 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\seaweddingv2\\modules\\backend\\classes\\BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#35 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#37 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\seaweddingv2\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#48 {main}', NULL, '2019-10-17 21:34:52', '2019-10-17 21:34:52');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(6, 'error', 'BadMethodCallException: The component \'Quang\\Config\\Components\\Sliders\' does not contain a method \'all\'. in C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\ComponentBase.php:316\nStack trace:\n#0 C:\\xampp\\htdocs\\seaweddingv2\\plugins\\quang\\config\\components\\Sliders.php(17): Cms\\Classes\\ComponentBase->__call(\'all\', Array)\n#1 C:\\xampp\\htdocs\\seaweddingv2\\plugins\\quang\\config\\components\\Sliders.php(14): Quang\\Config\\Components\\Sliders->loadSlider()\n#2 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\CmsCompoundObject.php(172): Quang\\Config\\Components\\Sliders->onRun()\n#3 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(500): Cms\\Classes\\CmsCompoundObject->runComponents()\n#4 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(393): Cms\\Classes\\Controller->execPageCycle()\n#5 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#7 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#8 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#9 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#10 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#11 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#12 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#13 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\seaweddingv2\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#44 {main}', NULL, '2019-10-18 00:27:40', '2019-10-18 00:27:40'),
(7, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"punctuation\" of value \":\" (\"end of print statement\" expected) in \"C:\\xampp\\htdocs\\seaweddingv2/plugins/quang/config/components/sliders/default.htm\" at line 13. in C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\TokenStream.php:76\nStack trace:\n#0 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Parser.php(143): Twig\\TokenStream->expect(4)\n#1 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#2 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#3 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#4 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#6 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(1087): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#7 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(1217): Cms\\Classes\\Controller->renderPartial(\'sliders::defaul...\', Array, false)\n#8 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\twig\\Extension.php(124): Cms\\Classes\\Controller->renderComponent(\'sliders\', Array)\n#9 C:\\xampp\\htdocs\\seaweddingv2\\storage\\cms\\twig\\74\\742f066e29d942cab991b708f955a82a30adb44abcf7af684c105ddc1396ea12.php(39): Cms\\Twig\\Extension->componentFunction(\'sliders\', Array)\n#10 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_bd8afda338d87022f0b955a297f2050d6a7fd2c746f04d3596e8763a60583cbf->doDisplay(Array, Array)\n#11 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#12 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#13 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(424): Twig\\Template->render(Array)\n#14 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#15 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#16 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#17 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#18 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#21 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#22 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#42 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#51 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\seaweddingv2\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#53 {main}', NULL, '2019-10-18 00:54:10', '2019-10-18 00:54:10'),
(8, 'error', 'Twig\\Error\\SyntaxError: Unexpected character \"$\" in \"C:\\xampp\\htdocs\\seaweddingv2/plugins/quang/config/components/sliders/default.htm\" at line 6. in C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Lexer.php:365\nStack trace:\n#0 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Lexer.php(281): Twig\\Lexer->lexExpression()\n#1 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Lexer.php(182): Twig\\Lexer->lexBlock()\n#2 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(542): Twig\\Lexer->tokenize(Object(Twig\\Source))\n#3 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->tokenize(Object(Twig\\Source))\n#4 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#6 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(1087): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#7 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(1217): Cms\\Classes\\Controller->renderPartial(\'sliders::defaul...\', Array, false)\n#8 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\twig\\Extension.php(124): Cms\\Classes\\Controller->renderComponent(\'sliders\', Array)\n#9 C:\\xampp\\htdocs\\seaweddingv2\\storage\\cms\\twig\\74\\742f066e29d942cab991b708f955a82a30adb44abcf7af684c105ddc1396ea12.php(39): Cms\\Twig\\Extension->componentFunction(\'sliders\', Array)\n#10 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_bd8afda338d87022f0b955a297f2050d6a7fd2c746f04d3596e8763a60583cbf->doDisplay(Array, Array)\n#11 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#12 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#13 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(424): Twig\\Template->render(Array)\n#14 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#15 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#16 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#17 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#18 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#21 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#22 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#42 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#51 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\seaweddingv2\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#53 {main}', NULL, '2019-10-18 01:00:58', '2019-10-18 01:00:58'),
(9, 'error', 'Twig\\Error\\SyntaxError: Unknown \"foreach\" tag in \"C:\\xampp\\htdocs\\seaweddingv2/plugins/quang/config/components/sliders/default.htm\" at line 6. in C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Parser.php:175\nStack trace:\n#0 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#1 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#2 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#3 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#4 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#5 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(1087): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#6 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(1217): Cms\\Classes\\Controller->renderPartial(\'sliders::defaul...\', Array, false)\n#7 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\twig\\Extension.php(124): Cms\\Classes\\Controller->renderComponent(\'sliders\', Array)\n#8 C:\\xampp\\htdocs\\seaweddingv2\\storage\\cms\\twig\\74\\742f066e29d942cab991b708f955a82a30adb44abcf7af684c105ddc1396ea12.php(39): Cms\\Twig\\Extension->componentFunction(\'sliders\', Array)\n#9 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_bd8afda338d87022f0b955a297f2050d6a7fd2c746f04d3596e8763a60583cbf->doDisplay(Array, Array)\n#10 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#11 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#12 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(424): Twig\\Template->render(Array)\n#13 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#14 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#15 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#16 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#17 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#18 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#19 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#20 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#21 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#41 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#50 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\seaweddingv2\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#52 {main}', NULL, '2019-10-18 01:01:29', '2019-10-18 01:01:29'),
(10, 'error', 'Twig\\Error\\SyntaxError: Unexpected \"loop\" tag (expecting closing tag for the \"for\" tag defined near line 7) in \"C:\\xampp\\htdocs\\seaweddingv2/plugins/quang/config/components/sliders/default.htm\" at line 7. in C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Parser.php:169\nStack trace:\n#0 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\TokenParser\\ForTokenParser.php(52): Twig\\Parser->subparse(Array)\n#1 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Parser.php(185): Twig\\TokenParser\\ForTokenParser->parse(Object(Twig\\Token))\n#2 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#3 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#4 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#5 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#6 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#7 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(1087): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#8 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(1217): Cms\\Classes\\Controller->renderPartial(\'sliders::defaul...\', Array, false)\n#9 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\twig\\Extension.php(124): Cms\\Classes\\Controller->renderComponent(\'sliders\', Array)\n#10 C:\\xampp\\htdocs\\seaweddingv2\\storage\\cms\\twig\\74\\742f066e29d942cab991b708f955a82a30adb44abcf7af684c105ddc1396ea12.php(39): Cms\\Twig\\Extension->componentFunction(\'sliders\', Array)\n#11 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_bd8afda338d87022f0b955a297f2050d6a7fd2c746f04d3596e8763a60583cbf->doDisplay(Array, Array)\n#12 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#13 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#14 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(424): Twig\\Template->render(Array)\n#15 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#17 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#18 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#19 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#20 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#21 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#22 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#23 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#43 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#52 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#53 C:\\xampp\\htdocs\\seaweddingv2\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#54 {main}', NULL, '2019-10-18 01:04:42', '2019-10-18 01:04:42');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(11, 'error', 'Twig\\Error\\SyntaxError: Unexpected \"slider\" tag (expecting closing tag for the \"for\" tag defined near line 7) in \"C:\\xampp\\htdocs\\seaweddingv2/plugins/quang/config/components/sliders/default.htm\" at line 7. in C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Parser.php:169\nStack trace:\n#0 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\TokenParser\\ForTokenParser.php(52): Twig\\Parser->subparse(Array)\n#1 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Parser.php(185): Twig\\TokenParser\\ForTokenParser->parse(Object(Twig\\Token))\n#2 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#3 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#4 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#5 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#6 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#7 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(1087): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#8 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(1217): Cms\\Classes\\Controller->renderPartial(\'sliders::defaul...\', Array, false)\n#9 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\twig\\Extension.php(124): Cms\\Classes\\Controller->renderComponent(\'sliders\', Array)\n#10 C:\\xampp\\htdocs\\seaweddingv2\\storage\\cms\\twig\\74\\742f066e29d942cab991b708f955a82a30adb44abcf7af684c105ddc1396ea12.php(39): Cms\\Twig\\Extension->componentFunction(\'sliders\', Array)\n#11 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_bd8afda338d87022f0b955a297f2050d6a7fd2c746f04d3596e8763a60583cbf->doDisplay(Array, Array)\n#12 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#13 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#14 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(424): Twig\\Template->render(Array)\n#15 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#17 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#18 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#19 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#20 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#21 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#22 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#23 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#43 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#52 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#53 C:\\xampp\\htdocs\\seaweddingv2\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#54 {main}', NULL, '2019-10-18 01:04:58', '2019-10-18 01:04:58'),
(12, 'error', 'Twig\\Error\\SyntaxError: Unexpected \"loop\" tag (expecting closing tag for the \"for\" tag defined near line 7) in \"C:\\xampp\\htdocs\\seaweddingv2/plugins/quang/config/components/sliders/default.htm\" at line 7. in C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Parser.php:169\nStack trace:\n#0 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\TokenParser\\ForTokenParser.php(52): Twig\\Parser->subparse(Array)\n#1 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Parser.php(185): Twig\\TokenParser\\ForTokenParser->parse(Object(Twig\\Token))\n#2 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#3 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#4 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#5 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#6 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'C:\\\\xampp\\\\htdocs...\', NULL)\n#7 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(1087): Twig\\Environment->loadTemplate(\'C:\\\\xampp\\\\htdocs...\')\n#8 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(1217): Cms\\Classes\\Controller->renderPartial(\'sliders::defaul...\', Array, false)\n#9 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\twig\\Extension.php(124): Cms\\Classes\\Controller->renderComponent(\'sliders\', Array)\n#10 C:\\xampp\\htdocs\\seaweddingv2\\storage\\cms\\twig\\74\\742f066e29d942cab991b708f955a82a30adb44abcf7af684c105ddc1396ea12.php(39): Cms\\Twig\\Extension->componentFunction(\'sliders\', Array)\n#11 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(407): __TwigTemplate_bd8afda338d87022f0b955a297f2050d6a7fd2c746f04d3596e8763a60583cbf->doDisplay(Array, Array)\n#12 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(380): Twig\\Template->displayWithErrorHandling(Array, Array)\n#13 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\twig\\twig\\src\\Template.php(392): Twig\\Template->display(Array)\n#14 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(424): Twig\\Template->render(Array)\n#15 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#16 C:\\xampp\\htdocs\\seaweddingv2\\modules\\cms\\classes\\CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#17 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#18 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): call_user_func_array(Array, Array)\n#19 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#20 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#21 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(169): Illuminate\\Routing\\Route->runController()\n#22 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(658): Illuminate\\Routing\\Route->run()\n#23 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#42 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#43 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Router\\CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#44 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\october\\rain\\src\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(24): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(149): October\\Rain\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#52 C:\\xampp\\htdocs\\seaweddingv2\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#53 C:\\xampp\\htdocs\\seaweddingv2\\index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#54 {main}', NULL, '2019-10-18 01:05:21', '2019-10-18 01:05:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, '5da9452d3f0a0179237212.jpg', 'temp_slider_1.jpg', 222515, 'image/jpeg', NULL, NULL, 'config_slider', '0', 'Quang\\Config\\Models\\Config', 1, 2, '2019-10-17 21:53:01', '2019-10-17 21:53:39'),
(2, '5da9452d52ac4898740078.jpg', 'temp_slider_2.jpg', 208706, 'image/jpeg', NULL, NULL, 'config_slider', '0', 'Quang\\Config\\Models\\Config', 1, 1, '2019-10-17 21:53:01', '2019-10-17 21:53:39'),
(3, '5da98b3004128895250478.jpg', 'thanh_vy_16_seawedding.jpg', 255448, 'image/jpeg', NULL, NULL, 'featured_images', '2', 'RainLab\\Blog\\Models\\Post', 1, 3, '2019-10-18 02:51:44', '2019-10-18 02:51:57'),
(4, '5da98bc8659a6827804460.jpg', 'chun_chun_7_seawedding.jpg', 338040, 'image/jpeg', NULL, NULL, 'featured_images', '3', 'RainLab\\Blog\\Models\\Post', 1, 4, '2019-10-18 02:54:16', '2019-10-18 02:54:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `content_css` text COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-10-16 23:41:01', '2019-10-16 23:41:01'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-10-16 23:41:01', '2019-10-16 23:41:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '1'),
(2, 'system', 'update', 'retry', '1571472842'),
(3, 'cms', 'theme', 'active', '\"sea-wedding\"');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2019-10-16 23:41:00'),
(2, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2019-10-17 18:42:00'),
(3, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2019-10-17 18:42:01'),
(4, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2019-10-17 18:42:04'),
(5, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2019-10-17 18:42:04'),
(6, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2019-10-17 18:42:04'),
(7, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2019-10-17 18:42:04'),
(8, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2019-10-17 18:42:04'),
(9, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2019-10-17 18:42:04'),
(10, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2019-10-17 18:42:04'),
(11, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2019-10-17 18:42:04'),
(12, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2019-10-17 18:42:04'),
(13, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2019-10-17 18:42:05'),
(14, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2019-10-17 18:42:05'),
(15, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate \"idParam\" component property in favour of \"slug\" property.', '2019-10-17 18:42:05'),
(16, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2019-10-17 18:42:05'),
(17, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2019-10-17 18:42:05'),
(18, 'RainLab.Blog', 'comment', '1.0.14', 'Add support for CSRF protection feature added to core.', '2019-10-17 18:42:05'),
(19, 'RainLab.Blog', 'comment', '1.1.0', 'Replaced the Post editor with the new core Markdown editor.', '2019-10-17 18:42:05'),
(20, 'RainLab.Blog', 'comment', '1.1.1', 'Posts can now be imported and exported.', '2019-10-17 18:42:05'),
(21, 'RainLab.Blog', 'comment', '1.1.2', 'Posts are no longer visible if the published date has not passed.', '2019-10-17 18:42:05'),
(22, 'RainLab.Blog', 'comment', '1.1.3', 'Added a New Post shortcut button to the blog menu.', '2019-10-17 18:42:06'),
(23, 'RainLab.Blog', 'script', '1.2.0', 'categories_add_nested_fields.php', '2019-10-17 18:42:06'),
(24, 'RainLab.Blog', 'comment', '1.2.0', 'Categories now support nesting.', '2019-10-17 18:42:06'),
(25, 'RainLab.Blog', 'comment', '1.2.1', 'Post slugs now must be unique.', '2019-10-17 18:42:06'),
(26, 'RainLab.Blog', 'comment', '1.2.2', 'Fixes issue on new installs.', '2019-10-17 18:42:06'),
(27, 'RainLab.Blog', 'comment', '1.2.3', 'Minor user interface update.', '2019-10-17 18:42:06'),
(28, 'RainLab.Blog', 'script', '1.2.4', 'update_timestamp_nullable.php', '2019-10-17 18:42:06'),
(29, 'RainLab.Blog', 'comment', '1.2.4', 'Database maintenance. Updated all timestamp columns to be nullable.', '2019-10-17 18:42:07'),
(30, 'RainLab.Blog', 'comment', '1.2.5', 'Added translation support for blog posts.', '2019-10-17 18:42:07'),
(31, 'RainLab.Blog', 'comment', '1.2.6', 'The published field can now supply a time with the date.', '2019-10-17 18:42:07'),
(32, 'RainLab.Blog', 'comment', '1.2.7', 'Introduced a new RSS feed component.', '2019-10-17 18:42:07'),
(33, 'RainLab.Blog', 'comment', '1.2.8', 'Fixes issue with translated `content_html` attribute on blog posts.', '2019-10-17 18:42:07'),
(34, 'RainLab.Blog', 'comment', '1.2.9', 'Added translation support for blog categories.', '2019-10-17 18:42:07'),
(35, 'RainLab.Blog', 'comment', '1.2.10', 'Added translation support for post slugs.', '2019-10-17 18:42:07'),
(36, 'RainLab.Blog', 'comment', '1.2.11', 'Fixes bug where excerpt is not translated.', '2019-10-17 18:42:08'),
(37, 'RainLab.Blog', 'comment', '1.2.12', 'Description field added to category form.', '2019-10-17 18:42:08'),
(38, 'RainLab.Blog', 'comment', '1.2.13', 'Improved support for Static Pages menus, added a blog post and all blog posts.', '2019-10-17 18:42:09'),
(39, 'RainLab.Blog', 'comment', '1.2.14', 'Added post exception property to the post list component, useful for showing related posts.', '2019-10-17 18:42:09'),
(40, 'RainLab.Blog', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2019-10-17 18:42:09'),
(41, 'RainLab.Blog', 'comment', '1.2.16', 'Added `nextPost` and `previousPost` to the blog post component.', '2019-10-17 18:42:09'),
(42, 'RainLab.Blog', 'comment', '1.2.17', 'Improved the next and previous logic to sort by the published date.', '2019-10-17 18:42:09'),
(43, 'RainLab.Blog', 'comment', '1.2.18', 'Minor change to internals.', '2019-10-17 18:42:10'),
(44, 'RainLab.Blog', 'comment', '1.2.19', 'Improved support for Build 420+', '2019-10-17 18:42:10'),
(45, 'RainLab.Blog', 'script', '1.3.0', 'posts_add_metadata.php', '2019-10-17 18:42:11'),
(46, 'RainLab.Blog', 'comment', '1.3.0', 'Added metadata column for plugins to store data in', '2019-10-17 18:42:11'),
(47, 'RainLab.Blog', 'comment', '1.3.1', 'Fixed metadata column not being jsonable', '2019-10-17 18:42:11'),
(48, 'RainLab.Blog', 'comment', '1.3.2', 'Allow custom slug name for components, add 404 handling for missing blog posts, allow exporting of blog images.', '2019-10-17 18:42:12'),
(49, 'RainLab.Blog', 'comment', '1.3.3', 'Fixed \'excluded categories\' filter from being run when value is empty.', '2019-10-17 18:42:12'),
(50, 'RainLab.Builder', 'comment', '1.0.1', 'Initialize plugin.', '2019-10-17 18:42:32'),
(51, 'RainLab.Builder', 'comment', '1.0.2', 'Fixes the problem with selecting a plugin. Minor localization corrections. Configuration files in the list and form behaviors are now autocomplete.', '2019-10-17 18:42:32'),
(52, 'RainLab.Builder', 'comment', '1.0.3', 'Improved handling of the enum data type.', '2019-10-17 18:42:32'),
(53, 'RainLab.Builder', 'comment', '1.0.4', 'Added user permissions to work with the Builder.', '2019-10-17 18:42:32'),
(54, 'RainLab.Builder', 'comment', '1.0.5', 'Fixed permissions registration.', '2019-10-17 18:42:32'),
(55, 'RainLab.Builder', 'comment', '1.0.6', 'Fixed front-end record ordering in the Record List component.', '2019-10-17 18:42:32'),
(56, 'RainLab.Builder', 'comment', '1.0.7', 'Builder settings are now protected with user permissions. The database table column list is scrollable now. Minor code cleanup.', '2019-10-17 18:42:33'),
(57, 'RainLab.Builder', 'comment', '1.0.8', 'Added the Reorder Controller behavior.', '2019-10-17 18:42:33'),
(58, 'RainLab.Builder', 'comment', '1.0.9', 'Minor API and UI updates.', '2019-10-17 18:42:33'),
(59, 'RainLab.Builder', 'comment', '1.0.10', 'Minor styling update.', '2019-10-17 18:42:33'),
(60, 'RainLab.Builder', 'comment', '1.0.11', 'Fixed a bug where clicking placeholder in a repeater would open Inspector. Fixed a problem with saving forms with repeaters in tabs. Minor style fix.', '2019-10-17 18:42:33'),
(61, 'RainLab.Builder', 'comment', '1.0.12', 'Added support for the Trigger property to the Media Finder widget configuration. Names of form fields and list columns definition files can now contain underscores.', '2019-10-17 18:42:33'),
(62, 'RainLab.Builder', 'comment', '1.0.13', 'Minor styling fix on the database editor.', '2019-10-17 18:42:33'),
(63, 'RainLab.Builder', 'comment', '1.0.14', 'Added support for published_at timestamp field', '2019-10-17 18:42:33'),
(64, 'RainLab.Builder', 'comment', '1.0.15', 'Fixed a bug where saving a localization string in Inspector could cause a JavaScript error. Added support for Timestamps and Soft Deleting for new models.', '2019-10-17 18:42:33'),
(65, 'RainLab.Builder', 'comment', '1.0.16', 'Fixed a bug when saving a form with the Repeater widget in a tab could create invalid fields in the form\'s outside area. Added a check that prevents creating localization strings inside other existing strings.', '2019-10-17 18:42:33'),
(66, 'RainLab.Builder', 'comment', '1.0.17', 'Added support Trigger attribute support for RecordFinder and Repeater form widgets.', '2019-10-17 18:42:33'),
(67, 'RainLab.Builder', 'comment', '1.0.18', 'Fixes a bug where \'::class\' notations in a model class definition could prevent the model from appearing in the Builder model list. Added emptyOption property support to the dropdown form control.', '2019-10-17 18:42:33'),
(68, 'RainLab.Builder', 'comment', '1.0.19', 'Added a feature allowing to add all database columns to a list definition. Added max length validation for database table and column names.', '2019-10-17 18:42:33'),
(69, 'RainLab.Builder', 'comment', '1.0.20', 'Fixes a bug where form the builder could trigger the \"current.hasAttribute is not a function\" error.', '2019-10-17 18:42:33'),
(70, 'RainLab.Builder', 'comment', '1.0.21', 'Back-end navigation sort order updated.', '2019-10-17 18:42:33'),
(71, 'RainLab.Builder', 'comment', '1.0.22', 'Added scopeValue property to the RecordList component.', '2019-10-17 18:42:33'),
(72, 'RainLab.Builder', 'comment', '1.0.23', 'Added support for balloon-selector field type, added Brazilian Portuguese translation, fixed some bugs', '2019-10-17 18:42:33'),
(73, 'RainLab.Builder', 'comment', '1.0.24', 'Added support for tag list field type, added read only toggle for fields. Prevent plugins from using reserved PHP keywords for class names and namespaces', '2019-10-17 18:42:33'),
(74, 'RainLab.Builder', 'comment', '1.0.25', 'Allow editing of migration code in the \"Migration\" popup when saving changes in the database editor.', '2019-10-17 18:42:33'),
(75, 'RainLab.Builder', 'comment', '1.0.26', 'Allow special default values for columns and added new \"Add ID column\" button to database editor.', '2019-10-17 18:42:34'),
(76, 'Flynsarmy.Menu', 'script', '1.0.1', 'create_menus_table.php', '2019-10-17 18:44:05'),
(77, 'Flynsarmy.Menu', 'script', '1.0.1', 'create_menuitems_table.php', '2019-10-17 18:44:05'),
(78, 'Flynsarmy.Menu', 'comment', '1.0.1', 'Plugin Initialization', '2019-10-17 18:44:05'),
(79, 'Flynsarmy.Menu', 'comment', '1.0.2', 'Add before_item and after_item helpers for Partial item type', '2019-10-17 18:44:05'),
(80, 'Flynsarmy.Menu', 'comment', '1.0.3', 'Pass the current controller to menus and items so page/layout components apply', '2019-10-17 18:44:05'),
(81, 'Flynsarmy.Menu', 'comment', '1.0.4', 'Event binding fixes', '2019-10-17 18:44:05'),
(82, 'Flynsarmy.Menu', 'comment', '1.0.5', 'Validation compatibility fix for October v117', '2019-10-17 18:44:05'),
(83, 'Flynsarmy.Menu', 'comment', '1.0.6', 'Use October styles for item type selection list', '2019-10-17 18:44:06'),
(84, 'Flynsarmy.Menu', 'comment', '1.0.7', 'Fix nesting issue', '2019-10-17 18:44:06'),
(85, 'Flynsarmy.Menu', 'comment', '1.0.8', 'Delete menu items when deleting menus. Minor UI improvements', '2019-10-17 18:44:06'),
(86, 'Flynsarmy.Menu', 'script', '1.0.9', 'add_menuitem_target_field.php', '2019-10-17 18:44:06'),
(87, 'Flynsarmy.Menu', 'comment', '1.0.9', 'Add link target attribute, improved UI', '2019-10-17 18:44:06'),
(88, 'Flynsarmy.Menu', 'comment', '1.0.10', 'Remove comma in item links', '2019-10-17 18:44:06'),
(89, 'Flynsarmy.Menu', 'script', '1.0.11', 'add_menuitem_data_field.php', '2019-10-17 18:44:07'),
(90, 'Flynsarmy.Menu', 'comment', '1.0.11', 'Add slug parameters option for Page items', '2019-10-17 18:44:07'),
(91, 'Flynsarmy.Menu', 'comment', '1.0.12', 'Don\'t show disabled menu items', '2019-10-17 18:44:07'),
(92, 'Flynsarmy.Menu', 'comment', '1.0.13', 'Link fields can now be left empty - will produce a', '2019-10-17 18:44:07'),
(93, 'Flynsarmy.Menu', 'comment', '1.0.14', 'Menu Item data field should be nullable', '2019-10-17 18:44:07'),
(94, 'Flynsarmy.Menu', 'comment', '1.0.15', 'RC compatibility', '2019-10-17 18:44:07'),
(95, 'Flynsarmy.Menu', 'comment', '1.0.16', 'Settings page code cleanup', '2019-10-17 18:44:07'),
(96, 'Flynsarmy.Menu', 'comment', '1.0.17', 'Fix nested tree bug', '2019-10-17 18:44:07'),
(97, 'Flynsarmy.Menu', 'comment', '1.0.18', 'Deprecated code fix', '2019-10-17 18:44:07'),
(98, 'Flynsarmy.Menu', 'comment', '1.0.19', 'Deprecated code fix', '2019-10-17 18:44:08'),
(99, 'Flynsarmy.Menu', 'script', '1.0.20', 'make_menuitem_menu_id_nullable.php', '2019-10-17 18:44:08'),
(100, 'Flynsarmy.Menu', 'comment', '1.0.20', 'Menu save fix', '2019-10-17 18:44:08'),
(101, 'Flynsarmy.Menu', 'comment', '1.0.21', 'Fix issue causing menu items to disappear on save', '2019-10-17 18:44:08'),
(102, 'Quang.Config', 'comment', '1.0.1', 'Initialize plugin.', '2019-10-17 21:12:08'),
(103, 'Quang.Config', 'script', '1.0.2', 'builder_table_create_quang_config_.php', '2019-10-17 21:19:00'),
(104, 'Quang.Config', 'comment', '1.0.2', 'Created table quang_config_', '2019-10-17 21:19:00'),
(105, 'Quang.Config', 'script', '1.0.3', 'builder_table_update_quang_config_.php', '2019-10-17 21:48:27'),
(106, 'Quang.Config', 'comment', '1.0.3', 'Updated table quang_config_', '2019-10-17 21:48:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'October.Demo', '1.0.1', '2019-10-16 23:41:00', 0, 0),
(2, 'RainLab.Blog', '1.3.3', '2019-10-17 18:42:12', 0, 0),
(3, 'RainLab.Builder', '1.0.26', '2019-10-17 18:42:34', 0, 0),
(4, 'Flynsarmy.Menu', '1.0.21', '2019-10-17 18:44:08', 0, 0),
(5, 'Quang.Config', '1.0.3', '2019-10-17 21:48:27', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'rainlab_builder_settings', '{\"author_name\":\"Quang\",\"author_namespace\":\"Quang\"}');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Chỉ mục cho bảng `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Chỉ mục cho bảng `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Chỉ mục cho bảng `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Chỉ mục cho bảng `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Chỉ mục cho bảng `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Chỉ mục cho bảng `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Chỉ mục cho bảng `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_templates_source_index` (`source`),
  ADD KEY `cms_theme_templates_path_index` (`path`);

--
-- Chỉ mục cho bảng `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `flynsarmy_menu_menuitems`
--
ALTER TABLE `flynsarmy_menu_menuitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flynsarmy_menu_menuitems_menu_id_index` (`menu_id`),
  ADD KEY `flynsarmy_menu_menuitems_enabled_index` (`enabled`),
  ADD KEY `flynsarmy_menu_menuitems_parent_id_index` (`parent_id`);

--
-- Chỉ mục cho bảng `flynsarmy_menu_menus`
--
ALTER TABLE `flynsarmy_menu_menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quang_config_`
--
ALTER TABLE `quang_config_`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_categories_slug_index` (`slug`),
  ADD KEY `rainlab_blog_categories_parent_id_index` (`parent_id`);

--
-- Chỉ mục cho bảng `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_blog_posts_user_id_index` (`user_id`),
  ADD KEY `rainlab_blog_posts_slug_index` (`slug`);

--
-- Chỉ mục cho bảng `rainlab_blog_posts_categories`
--
ALTER TABLE `rainlab_blog_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Chỉ mục cho bảng `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Chỉ mục cho bảng `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Chỉ mục cho bảng `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Chỉ mục cho bảng `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Chỉ mục cho bảng `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Chỉ mục cho bảng `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Chỉ mục cho bảng `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Chỉ mục cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cms_theme_templates`
--
ALTER TABLE `cms_theme_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `flynsarmy_menu_menuitems`
--
ALTER TABLE `flynsarmy_menu_menuitems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `flynsarmy_menu_menus`
--
ALTER TABLE `flynsarmy_menu_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
