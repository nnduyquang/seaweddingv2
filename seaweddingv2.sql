-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 05, 2019 lúc 10:26 AM
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
(3, 1, '::1', '2019-10-17 18:43:53', '2019-10-17 18:43:53'),
(4, 1, '::1', '2019-10-21 19:05:15', '2019-10-21 19:05:15'),
(5, 1, '::1', '2019-11-05 01:33:41', '2019-11-05 01:33:41'),
(6, 1, '::1', '2019-11-05 02:16:01', '2019-11-05 02:16:01'),
(7, 1, '::1', '2019-11-05 02:17:55', '2019-11-05 02:17:55'),
(8, 1, '::1', '2019-11-05 02:18:25', '2019-11-05 02:18:25');

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
(1, 'admin', 'admin', 'admin', 'nnduyquang@gmail.com', '$2y$10$ONGwNadfsrrQ7ZdMBlqmMOzVSiJ/WQyepNCks6cKWq/LLc97LTfO.', NULL, '$2y$10$7VJ1zEWokqDphzMnv41GluxhA2BCJCKCQbOyBKkiovRt9q4RtJBSC', NULL, '', 1, 2, NULL, '2019-11-05 02:18:25', '2019-10-16 23:41:02', '2019-11-05 02:18:25', NULL, 1);

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

--
-- Đang đổ dữ liệu cho bảng `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 1, 'backend', 'reportwidgets', 'dashboard', '{\"welcome\":{\"class\":\"Backend\\\\ReportWidgets\\\\Welcome\",\"sortOrder\":50,\"configuration\":{\"ocWidgetWidth\":7}},\"systemStatus\":{\"class\":\"System\\\\ReportWidgets\\\\Status\",\"sortOrder\":60,\"configuration\":{\"ocWidgetWidth\":7}},\"activeTheme\":{\"class\":\"Cms\\\\ReportWidgets\\\\ActiveTheme\",\"sortOrder\":70,\"configuration\":{\"ocWidgetWidth\":5}},\"report_container_dashboard_4\":{\"class\":\"Romanov\\\\ClearCacheWidget\\\\ReportWidgets\\\\ClearCache\",\"configuration\":{\"title\":\"romanov.clearcachewidget::lang.plugin.label\",\"radius\":\"200\",\"delthumbs\":false,\"ocWidgetWidth\":\"12\"},\"sortOrder\":71}}'),
(2, 1, 'backend', 'backend', 'preferences', '{\"locale\":\"en\",\"fallback_locale\":\"en\",\"timezone\":\"Asia\\/Ho_Chi_Minh\",\"editor_font_size\":\"12\",\"editor_word_wrap\":\"fluid\",\"editor_code_folding\":\"manual\",\"editor_tab_size\":\"4\",\"editor_theme\":\"twilight\",\"editor_show_invisibles\":\"0\",\"editor_highlight_active_line\":\"1\",\"editor_use_hard_tabs\":\"0\",\"editor_show_gutter\":\"1\",\"editor_auto_closing\":\"0\",\"editor_autocompletion\":\"manual\",\"editor_enable_snippets\":\"0\",\"editor_display_indent_guides\":\"0\",\"editor_show_print_margin\":\"0\",\"user_id\":\"1\"}');

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
(3, 1, 1, 'Bảng Giá', '', '', '', '', 'http://localhost:8080/seaweddingv2/chi-tiet-bang-gia/goi-da-nang', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'chi-tiet-bang-gia', 0, 5, 6, 0, '2019-10-17 18:57:06', '2019-11-03 08:46:33', '_self', '{\"params\":\"{\\\"slug\\\":\\\"goi-da-nang\\\"}\"}'),
(7, 3, 1, 'Ưu Đãi', '', '', '', '', 'http://localhost:8080/seaweddingv2/uu-dai', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'uu-dai', 0, 7, 8, 0, '2019-10-17 19:06:20', '2019-10-17 19:06:42', '_self', '{\"params\":\"\"}'),
(8, 3, 1, 'Dịch Vụ', '', '', '', '', 'http://localhost:8080/seaweddingv2/dich-vu', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'dich-vu', 0, 9, 10, 0, '2019-10-17 19:06:30', '2019-10-17 19:06:42', '_self', '{\"params\":\"\"}'),
(9, 3, 1, 'Tin Tức', '', '', '', '', 'http://localhost:8080/seaweddingv2/tin-tuc', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'tin-tuc', 0, 11, 12, 0, '2019-10-17 19:06:40', '2019-10-17 19:06:42', '_self', '{\"params\":\"\"}'),
(10, 2, 1, 'Trang Chủ', '', '', 'nav-item', '', 'http://localhost:8080/seaweddingv2', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'home', 0, 13, 14, 0, '2019-11-04 21:43:35', '2019-11-04 21:56:40', '_self', '{\"params\":\"\"}'),
(11, 2, 1, 'Album', '', '', 'nav-item', '', 'http://localhost:8080/seaweddingv2/album', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'album', 0, 15, 16, 0, '2019-11-04 21:43:58', '2019-11-04 21:56:45', '_self', '{\"params\":\"\"}'),
(12, 2, 1, 'Bảng Giá', '', '', 'nav-item', '', 'http://localhost:8080/seaweddingv2/chi-tiet-bang-gia/goi-da-nang', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'chi-tiet-bang-gia', 0, 17, 18, 0, '2019-11-04 21:44:23', '2019-11-04 21:56:49', '_self', '{\"params\":\"{\\\"slug\\\":\\\"goi-da-nang\\\"}\"}'),
(13, 2, 1, 'Ưu Đãi', '', '', 'nav-item', '', 'http://localhost:8080/seaweddingv2/uu-dai', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'uu-dai', 0, 19, 20, 0, '2019-11-04 21:44:39', '2019-11-04 21:56:54', '_self', '{\"params\":\"\"}'),
(14, 2, 1, 'Dịch Vụ', '', '', 'nav-item', '', 'http://localhost:8080/seaweddingv2/dich-vu', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'dich-vu', 0, 21, 22, 0, '2019-11-04 21:45:23', '2019-11-04 21:57:01', '_self', '{\"params\":\"\"}'),
(15, 2, 1, 'Tin Tức', '', '', 'nav-item', '', 'http://localhost:8080/seaweddingv2/tin-tuc', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'tin-tuc', 0, 23, 24, 0, '2019-11-04 21:45:40', '2019-11-04 21:57:05', '_self', '{\"params\":\"\"}'),
(16, 2, 1, 'Liên Hệ', '', '', 'nav-item', '', 'http://localhost:8080/seaweddingv2/lien-he', 'Flynsarmy\\Menu\\MenuItemTypes\\Page', 'lien-he', 0, 25, 26, 0, '2019-11-04 21:45:52', '2019-11-04 21:57:11', '_self', '{\"params\":\"\"}');

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
(2, 'menu_mobile', '', 'nav-items', '', '2019-10-17 18:45:52', '2019-11-04 21:56:14'),
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
-- Cấu trúc bảng cho bảng `quang_album_`
--

CREATE TABLE `quang_album_` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descritption` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `content` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photos` text COLLATE utf8mb4_unicode_ci,
  `img_primary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quang_album_`
--

INSERT INTO `quang_album_` (`id`, `title`, `descritption`, `is_active`, `content`, `slug`, `created_at`, `updated_at`, `photos`, `img_primary`) VALUES
(1, 'Quý Và Chi', '', 1, '', 'quy-va-chi', '0000-00-00 00:00:00', '2019-10-21 21:40:32', '[{\"photo_path\":\"\\/Album\\/Qu\\u00fd V\\u00e0 Chi\\/quy_chi_13_seawedding.jpg\"},{\"photo_path\":\"\\/Album\\/Qu\\u00fd V\\u00e0 Chi\\/quy_chi_14_seawedding.jpg\"}]', '/Album/Quý Và Chi/quy_chi_04_seawedding.jpg'),
(2, 'Thành Và Vy', 'Thành Và Vy', 1, '', 'thanh-va-vy', '2019-10-22 00:09:53', '2019-10-22 00:09:53', '[]', '/Album/Thành Và Vy/thanh_vy_16_seawedding.jpg'),
(3, 'Giang Và Hiền', '', 1, '', 'giang-va-hien', '2019-10-22 00:10:51', '2019-10-22 00:10:51', '[]', '/Album/Giang Và Hiền/giang_hien_9_seawedding.jpg'),
(4, 'Yến Và Tiến', '', 1, '', 'yen-va-tien', '2019-10-22 00:11:31', '2019-10-27 08:22:36', '[]', '/Album/Yến Và Tiến/yen_tien_24_seawedding.jpg'),
(5, 'Trúc Và Tài', '', 1, '', 'truc-va-tai', '2019-10-22 00:12:22', '2019-10-22 00:12:22', '[]', '/Album/Trúc Và Tài/truc_tai_4_seawedding.jpg'),
(6, 'Khang Và Giang', '', 1, '', 'khang-va-giang', '2019-10-22 00:14:37', '2019-10-22 00:14:37', '[]', '/Album/Khang Và Giang/khang_5_seawedding.jpg'),
(7, 'Hà Và Hoài', '', 1, '', 'ha-va-hoai', '2019-10-22 00:15:19', '2019-10-22 00:15:19', '[]', '/Album/Hà Và Hoài/ha_hoai_3_seawedding.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_album_album_category`
--

CREATE TABLE `quang_album_album_category` (
  `album_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quang_album_album_category`
--

INSERT INTO `quang_album_album_category` (`album_id`, `category_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_album_category`
--

CREATE TABLE `quang_album_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quang_album_category`
--

INSERT INTO `quang_album_category` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Album ảnh cưới', 'album-anh-cuoi', '2019-10-21 20:16:21', '2019-10-21 20:16:21'),
(2, 'Album phóng sự cưới', 'album-phong-su-cuoi', '2019-10-21 20:16:37', '2019-10-21 20:16:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_config_`
--

CREATE TABLE `quang_config_` (
  `id` int(11) NOT NULL,
  `config_logo` text COLLATE utf8mb4_unicode_ci,
  `config_name_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `config_address_company` text COLLATE utf8mb4_unicode_ci,
  `config_script_header` text COLLATE utf8mb4_unicode_ci,
  `config_contact_detail` text COLLATE utf8mb4_unicode_ci,
  `config_email_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `config_slider` text COLLATE utf8mb4_unicode_ci,
  `config_script_fanpage` text COLLATE utf8mb4_unicode_ci,
  `config_description_company` text COLLATE utf8mb4_unicode_ci,
  `config_script_body` text COLLATE utf8mb4_unicode_ci,
  `config_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `config_seo` text COLLATE utf8mb4_unicode_ci,
  `config_favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_hotline` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quang_config_`
--

INSERT INTO `quang_config_` (`id`, `config_logo`, `config_name_company`, `config_address_company`, `config_script_header`, `config_contact_detail`, `config_email_company`, `config_slider`, `config_script_fanpage`, `config_description_company`, `config_script_body`, `config_phone`, `config_seo`, `config_favicon`, `config_hotline`) VALUES
(0, '[{\"config_logo_desktop\":\"\\/seawedding\\/logo_white.png\",\"config_logo_mobile\":\"\\/seawedding\\/logo_blue.png\"}]', 'Sea Wedding', '38 Tôn Thất Đạm, Thanh Khê, Đà Nẵng', '', NULL, 'seaweddingvn@gmail.com', '[{\"slider_path\":\"\\/slider\\/giang_hien_9_seawedding.jpg\"},{\"slider_path\":\"\\/slider\\/jan_gam_03_seawedding.jpg\"},{\"slider_path\":\"\\/slider\\/philip_phuong_24_seawedding.jpg\"}]', '<!--CODE FACEBOOK -->\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/dichvuchuphinhcuoi\" data-tabs=\"\" data-width=\"\" data-height=\"\" data-small-header=\"false\" data-adapt-container-width=\"false\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/dichvuchuphinhcuoi\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/dichvuchuphinhcuoi\">SEA Wedding &amp; Production</a></blockquote></div>\r\n<!--END CODE FACEBOOK -->', '<p>Chụp Ảnh Cưới, Phóng Sự Cưới Chuyên Nghiệp Tại Đà Nẵng null</p>', '<!--CODE FACEBOOK -->\r\n<div id=\"fb-root\"></div>\r\n<script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.3&appId=799765880422841&autoLogAppEvents=1\"></script>\r\n<!--END CODE FACEBOOK -->', '0902.710.212', '[{\"seo_title\":\"Sea Wedding\",\"seo_description\":\"\\u0110\\u00e2y L\\u00e0 M\\u00f4 T\\u1ea3\",\"seo_image\":\"\\/Album\\/Th\\u00e0nh V\\u00e0 Vy\\/thanh_vy_16_seawedding.jpg\"}]', '/seawedding/favicon.ico', '[{\"config_hotline_show\":\"0902.710.212\",\"config_hotline_call\":\"0902710212\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_post_`
--

CREATE TABLE `quang_post_` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_primary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quang_post_`
--

INSERT INTO `quang_post_` (`id`, `title`, `description`, `content`, `is_active`, `created_at`, `updated_at`, `slug`, `img_primary`) VALUES
(1, 'Chụp Ảnh Gia Đình', 'Lưu Giữ Khoảnh Khắc Gia Đình', '<p>Lưu Giữ Khoảnh Khắc Gia Đình</p>', 1, '2019-10-20 21:24:27', '2019-10-27 08:30:39', 'chup-anh-gia-dinh', '/Services/17.jpg'),
(2, 'Chụp Phóng Sự Cưới', 'Lưu Giữ Khoảnh Khắc Ngày Cưới', '<p>Lưu Giữ Khoảnh Khắc Ngày Cưới</p>', 1, '2019-10-20 21:26:00', '2019-10-27 08:30:56', 'chup-phong-su-cuoi', '/Services/y7a2718-x2.jpg'),
(3, 'Chụp Ảnh Cưới', 'Nhiếp Ảnh Gia Thợ Trang Điểm Hàng Đầu', '', 1, '2019-10-20 21:26:40', '2019-10-27 08:31:11', 'chup-anh-cuoi', '/Services/hai_0153.jpg'),
(4, 'Tin Tức 1', 'Tin Tức 1 Mô Tả', '', 1, '2019-10-27 06:17:37', '2019-10-27 08:27:26', 'tin-tuc-1', '/temp/1.png'),
(5, 'Tin Tức 2', 'Tin Tức 2', '<p>Tin Tức 2 Mô tả</p>', 1, '2019-10-27 06:18:05', '2019-10-27 08:27:41', 'tin-tuc-2', '/temp/1.png'),
(6, 'Tin tức 3', 'Tin tức 3 Mô tả', '<p>Tin tức 3 Mô tả</p>', 1, '2019-10-27 06:18:47', '2019-10-27 08:27:51', 'tin-tuc-3', '/temp/1.png'),
(7, 'Tin tức 4', 'Tin tức 4 Mô tả', '', 1, '2019-10-27 06:19:09', '2019-10-27 08:27:59', 'tin-tuc-4', '/temp/1.png'),
(8, 'Tin Tức 5', 'Tin Tức 5', '<p>Tin Tức 5 Mô tả</p>', 1, '2019-10-27 06:19:34', '2019-10-27 08:28:08', 'tin-tuc-5', '/temp/1.png'),
(9, 'Tin tức 6', 'Tin tức 6', '<p>Tin tức 6</p>', 1, '2019-10-27 06:19:49', '2019-10-27 08:28:15', 'tin-tuc-6', '/temp/1.png'),
(10, 'Tin tức 7', 'Tin tức 7', '<p>Tin tức 7 Mô tả</p>', 1, '2019-10-27 06:20:10', '2019-10-27 08:28:22', 'tin-tuc-7', '/temp/1.png'),
(11, 'Gói Vip Đà Nẵng', '', '', 1, '2019-10-27 07:47:05', '2019-10-27 08:32:30', 'goi-vip-da-nang', '/Promotion/5da98b3004128895250478.jpg'),
(12, 'Đà Nẵng - Bà Nà - Hội An', '', '', 0, '2019-10-27 07:47:53', '2019-10-27 08:32:40', 'da-nang-ba-na-hoi', '/Promotion/5da98bc8659a6827804460.jpg'),
(13, 'Gói 3 địa điểm đà nẵng', '6.000.000 vnđ', '<p style=\"text-align:center\"><span style=\"line-height:1.5\"><span style=\"font-size:20px\"><strong>G&Oacute;I CHỤP TẠI 03 ĐỊA ĐIỂM T&Ugrave;Y &Yacute; NỘI TH&Agrave;NH Đ&Agrave; NẴNG</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:1\">(Thời gian chụp s&aacute;ng từ 7h đến 12h hoặc chiều từ 12h đến 17h)</span></p>\r\n\r\n<hr />\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">Trang phục trong ng&agrave;y chụp: 2 v&aacute;y cưới + 2 vest</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">Trang phục tự chọn của kh&aacute;ch: 1 bộ đồ đ&ocirc;i</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">Makeup v&agrave; l&agrave;m t&oacute;c đi c&ugrave;ng</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">1 ảnh cổng &eacute;p gỗ 60*90</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">1 album 30*30 (20 trang)</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">1 slide DVD tr&igrave;nh chiếu nh&agrave; h&agrave;ng</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">Xe di chuyển ng&agrave;y chụp</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">Giao to&agrave;n bộ file gốc</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">(G&oacute;i dịch vụ chưa bao gồm v&eacute; v&agrave;o địa điểm chụp nếu c&oacute;)</span></p>', 1, '2019-10-27 21:21:28', '2019-10-28 20:40:29', 'goi-3-dia-diem-da-nang', '/Album/Giang Và Hiền/giang_hien_9_seawedding.jpg'),
(14, 'Gói 2 địa điểm đà nẵng', '4.500.000 vnd', '<p style=\"text-align:center\"><span style=\"line-height:1.5\"><span style=\"font-size:20px\"><strong>G&Oacute;I CHỤP TẠI 02 ĐỊA ĐIỂM T&Ugrave;Y &Yacute; NỘI TH&Agrave;NH Đ&Agrave; NẴNG</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:1\">(Thời gian chụp s&aacute;ng từ 7h đến 12h hoặc chiều từ 12h đến 17h)</span></p>\r\n\r\n<hr />\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">Trang phục trong ng&agrave;y chụp: 1 v&aacute;y cưới + 1 vest</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">Trang phục tự chọn của kh&aacute;ch: 1 bộ đồ đ&ocirc;i</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">Makeup v&agrave; l&agrave;m t&oacute;c đi c&ugrave;ng</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">1 ảnh cổng &eacute;p gỗ 60*90</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">Xe di chuyển ng&agrave;y chụp</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">Giao to&agrave;n bộ file gốc</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">(G&oacute;i dịch vụ chưa bao gồm v&eacute; v&agrave;o địa điểm chụp nếu c&oacute;)</span></p>', 1, '2019-10-28 18:49:42', '2019-10-28 20:40:51', 'goi-2-dia-diem-da-nang', '/Album/Giang Và Hiền/giang_hien_9_seawedding.jpg'),
(15, 'Gói 5 địa điểm đà nẵng', '7.000.000 vnđ', '<p style=\"text-align:center\"><span style=\"line-height:1.5\"><span style=\"font-size:20px\"><strong>G&Oacute;I CHỤP TẠI 05 ĐỊA ĐIỂM T&Ugrave;Y &Yacute; NỘI TH&Agrave;NH Đ&Agrave; NẴNG</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:1\">(Thời gian chụp s&aacute;ng từ 7h đến 17h)</span></p>\r\n\r\n<hr />\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">Trang phục trong ng&agrave;y chụp: 2 v&aacute;y cưới + 2 vest</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">Trang phục tự chọn của kh&aacute;ch: 2 bộ đồ đ&ocirc;i</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">Makeup v&agrave; l&agrave;m t&oacute;c đi c&ugrave;ng</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">1 ảnh cổng &eacute;p gỗ 60*90</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">1 album 30*30 (20 trang)</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">5 ảnh nhỏ trưng b&agrave;y gallery</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">1 slide DVD tr&igrave;nh chiếu nh&agrave; h&agrave;ng</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">Xe di chuyển ng&agrave;y chụp</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">Giao to&agrave;n bộ file gốc</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"line-height:2\">(G&oacute;i dịch vụ chưa bao gồm v&eacute; v&agrave;o địa điểm chụp nếu c&oacute;)</span></p>', 0, '2019-10-28 18:55:25', '2019-10-28 20:41:02', 'goi-5-dia-diem-da-nang', '/Album/Giang Và Hiền/giang_hien_9_seawedding.jpg'),
(16, 'Nguyễn Hải', 'Photographer', '', 1, '2019-11-03 19:36:44', '2019-11-03 19:36:44', 'nguyen-hai', '/members/6.jpg'),
(17, 'Huy Trần', 'Photographer', '', 1, '2019-11-03 19:37:35', '2019-11-03 19:37:35', 'huy-tran', '/members/huytran_seawedding.jpg'),
(18, 'Mi Phùng', 'Make-up', '', 1, '2019-11-03 19:38:12', '2019-11-03 19:38:12', 'mi-phung', '/members/miphung_seawedding.jpg'),
(19, 'Bảo Thoa', 'Make-up', '', 1, '2019-11-03 19:38:49', '2019-11-03 19:38:49', 'bao-thoa', '/members/4.jpg'),
(20, 'Hùng Nguyễn', 'Photoshop', '', 1, '2019-11-03 19:39:33', '2019-11-03 19:39:33', 'hung-nguyen', '/members/2.jpg'),
(21, 'My Sa', 'Make-up', '', 1, '2019-11-03 19:40:04', '2019-11-03 19:40:04', 'my-sa', '/members/1.jpg'),
(22, 'Minh Hoàng', 'Photographer', '', 1, '2019-11-03 19:40:35', '2019-11-03 19:40:35', 'minh-hoang', '/members/5.jpg'),
(23, 'Sofia Tran from California, America', 'Our dreams came true!', '<p>The staffs are extremely friendly, we laugh and enjoy our shoot the whole day, and also spectacular talent in leading me and my husband for fantastic photos. Thanks all for the great beautiful experience</p>', 1, '2019-11-03 20:18:07', '2019-11-03 20:18:23', 'sofia-tran-california-america', '/customers/sea_wedding_kh_2.jpg'),
(24, 'Trinh Ruby', 'Cảm Ơn Rất Nhiều', '<p>Cảm ơn ekip rất nhiều. Đội ngũ tận tình, photographer kinh nghiệm cho ra những tấm ảnh tuyệt vời, make up mình rất xinh rất thích, nhân viên tư vấn thì tận tình. Giá cả ok. Đánh giá 5 sao</p>', 1, '2019-11-03 20:19:38', '2019-11-03 20:19:38', 'trinh-ruby', '/customers/sea_wedding_kh_3.jpg'),
(25, 'Chi H Phạm', 'Hài Lòng !', '<p>May mắn được người quen giới thiệu gặp được Sea. Nửa vòng thế giới em ko biết thông tin gì về ekip vậy mà sau khi lần đầu được tư vấn em đã thật sự tin tưởng. Ekip đã lo chu đáo tất tật mọi thứ ở việt nam theo đúng ý em. Ngày chụp pre wedding và ngày cưới cũng rất thuận lợi và nhanh chóng. Sản phẩm thật sự rất đẹp và chất lượng. Cám ơn Sea đã cho vợ chồng em có được những tấm hình thật ấn tượng để lưu giữ. Chúc Sea sẽ phát triển mạnh và thành công hơn nhé. </p>', 1, '2019-11-03 20:21:08', '2019-11-03 20:21:08', 'chi-h-pham', '/customers/sea_wedding_kh_4.jpg'),
(26, 'Chị Tiên từ Nhật Bản', 'Thật Sự Hài Lòng!', '<p>Mình từ nhật bay về. Chỉ nói chuyện với nhau qua fb . Cũng sợ lo biết có đáng tin ko. Nhưng khi đến tiệm mình hết sức hài lòng. Từ đón tiếp đến khâu thử đồ. Sáng 3h đã phải make up để chụp bình minh thế mà cả êkip đều vui vẽ và rất nhiên tình. Mình rất hài lòng về make up.Cảm ơn bé Mi make up rất xinh xong Ck minh cũng khen lạ và đẹp. Hiiii. Cảm ơn em Hải chụp ảnh rất nhiệt tình nữa. Nói chung mình rất hài lòng về dịch vụ bên sea. Minh sẽ giới thiệu cho bạn bè mình</p>', 1, '2019-11-03 20:22:29', '2019-11-03 20:22:29', 'chi-tien-tu-nhat-ban', '/customers/sea_wedding_kh_1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_post_category`
--

CREATE TABLE `quang_post_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `img_primary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photos` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quang_post_category`
--

INSERT INTO `quang_post_category` (`id`, `category_title`, `slug`, `created_at`, `updated_at`, `parent_id`, `nest_left`, `nest_right`, `nest_depth`, `img_primary`, `photos`, `description`) VALUES
(1, 'Dịch Vụ', 'dich-vu', '2019-10-20 21:06:49', '2019-10-20 21:06:49', NULL, 0, 0, 0, NULL, NULL, NULL),
(2, 'Tin Tức', 'tin-tuc', '2019-10-20 21:07:04', '2019-10-20 21:07:04', NULL, 0, 0, 0, NULL, NULL, NULL),
(3, 'Ưu Đãi', 'uu-dai', '2019-10-27 07:45:25', '2019-10-27 07:45:25', NULL, 0, 0, 0, NULL, NULL, NULL),
(4, 'Bảng Giá', 'bang-gia', '2019-10-27 19:55:28', '2019-10-27 19:59:14', NULL, 1, 12, 0, NULL, NULL, NULL),
(5, 'Gói Đà Nẵng', 'goi-da-nang', '2019-10-27 19:55:48', '2019-11-04 20:15:49', 4, 2, 3, 1, '/Price/dung_nhung_05_seawedding.jpg', '[{\"photo_path\":\"\\/Album\\/Tr\\u00fac V\\u00e0 T\\u00e0i\\/truc_tai_4_seawedding.jpg\"},{\"photo_path\":\"\\/Album\\/H\\u00e0 V\\u00e0 Ho\\u00e0i\\/ha_hoai_3_seawedding.jpg\"},{\"photo_path\":\"\\/Album\\/Th\\u00e0nh V\\u00e0 Vy\\/thanh_vy_16_seawedding.jpg\"}]', 'Chụp ảnh cưới gói đà nẵng tuyệt đẹp'),
(6, 'Gói Đà Nẵng - Hội An', 'goi-da-nang-hoi', '2019-10-27 19:56:40', '2019-10-28 00:51:06', 4, 4, 5, 1, '/Price/dung_nhung_05_seawedding.jpg', NULL, NULL),
(7, 'Gói Đà Nẵng - Bà Nà', 'goi-da-nang-ba-na', '2019-10-27 19:57:24', '2019-10-28 00:51:15', 4, 6, 7, 1, '/Price/dung_nhung_05_seawedding.jpg', NULL, NULL),
(8, 'Gói Đà Nẵng - Bà Nà - Hội An', 'goi-da-nang-ba-na-hoi', '2019-10-27 19:58:17', '2019-10-28 00:51:27', 4, 8, 9, 1, '/Price/dung_nhung_05_seawedding.jpg', NULL, NULL),
(9, 'Gói Đà Nẵng - Ngoại Thành', 'goi-da-nang-ngoai-thanh', '2019-10-27 19:59:07', '2019-10-28 00:51:37', 4, 10, 11, 1, '/Price/dung_nhung_05_seawedding.jpg', NULL, NULL),
(10, 'Thành Viên', 'thanh-vien', '2019-11-03 19:31:55', '2019-11-03 19:31:55', NULL, 13, 14, 0, '', '[]', NULL),
(11, 'Ý Kiến Khách Hàng', 'y-kien-khach-hang', '2019-11-03 20:14:54', '2019-11-03 20:14:54', NULL, 15, 16, 0, '', '[]', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_post_post_category`
--

CREATE TABLE `quang_post_post_category` (
  `posts_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quang_post_post_category`
--

INSERT INTO `quang_post_post_category` (`posts_id`, `category_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 3),
(12, 3),
(13, 5),
(14, 5),
(15, 5),
(16, 10),
(17, 10),
(18, 10),
(19, 10),
(20, 10),
(21, 10),
(22, 10),
(23, 11),
(24, 11),
(25, 11),
(26, 11);

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
(2, 'Ưu Đãi', 'uu-dai', NULL, '', NULL, 3, 4, 0, '2019-10-18 02:10:05', '2019-10-18 02:10:05'),
(3, 'Tin Tức', 'tin-tuc', NULL, '', NULL, 5, 6, 0, '2019-10-27 01:53:41', '2019-10-27 01:53:41');

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
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  `powerseo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `powerseo_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `powerseo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `powerseo_canonical_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `powerseo_redirect_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `powerseo_robot_index` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `powerseo_robot_follow` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `content_html`, `published_at`, `published`, `created_at`, `updated_at`, `metadata`, `powerseo_title`, `powerseo_description`, `powerseo_keywords`, `powerseo_canonical_url`, `powerseo_redirect_url`, `powerseo_robot_index`, `powerseo_robot_follow`) VALUES
(2, 1, 'Gói Vip Đà Nẵng', 'goi-vip-da-nang', '', '<section class=\"p-plan-detail-body__details p-plan-details\">\r\n<h1 style=\"text-align: center;\"><span style=\"font-size:22px;\"><strong>Gói VIP Đà Nẵng</strong></span></h1>\r\n\r\n<p class=\"price\" style=\"text-align: center;\"><span style=\"color:#08327e;\"><span style=\"font-size:26px;\">Trọn gói chỉ <span style=\"text-decoration: line-through;\">7.500.000 </span><span style=\"font-weight:bold;color:red\"> =&gt; 6.500.000</span></span> đ</span></p>\r\n\r\n<ul class=\"p-plan-details__list p-plan-details-list\">\r\n	<li class=\"p-plan-details-list__item\">\r\n	<ul class=\"p-plan-details-list__item__in-items\">\r\n		<li>\r\n		<div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-time.png\" /></div>\r\n\r\n		<p class=\"p-plan-details-list__item__text\">Thời gian chụp / 7h - 12h ～</p>\r\n		</li>\r\n		<li>\r\n		<div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-camera.png\" /></div>\r\n\r\n		<p class=\"p-plan-details-list__item__text\">Số shot / không giới hạn</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<div class=\"p-plan-details__costume p-plan-details-costume\">\r\n<ul class=\"p-plan-details-costume__items\">\r\n	<li class=\"p-plan-details-costume__item\">\r\n	<div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-dress.png\" /></div>\r\n\r\n	<p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-min\">Cô dâu / </span> <span class=\"p-plan-details-dl__dd\">2 váy</span> </span></p>\r\n	</li>\r\n	<li class=\"p-plan-details-costume__item\">\r\n	<div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-tuxedo.png\" /></div>\r\n\r\n	<p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-small\">Chú rể / </span> <span class=\"p-plan-details-dl__dd\">2 vest</span> </span></p>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-details-costume__attrs\">\r\n	<li class=\"p-plan-details-costume__attr\">Hoa cầm tay</li>\r\n	<li class=\"p-plan-details-costume__attr\">Cà vạt</li>\r\n	<li class=\"p-plan-details-costume__attr\">Phụ kiện trang sức</li>\r\n	<li class=\"p-plan-details-costume__attr\">Trang phục tự chọn (khách chuẩn bị)</li>\r\n</ul>\r\n</div>\r\n\r\n<section class=\"p-plan-gift-services\">\r\n<ul>\r\n	<li>TẶNG 1 album cao cấp 30*30 hoặc 25*35</li>\r\n	<li>TẶNG 1 ảnh lớn ép gỗ laminta khung 60*90</li>\r\n	<li>TẶNG đĩa DVD HD trình chiếu nhà hàng</li>\r\n	<li>TẶNG 5 hình để bàn Gallery</li>\r\n	<li>TẶNG Toàn bộ file thiết kế và file gốc.</li>\r\n</ul>\r\n</section>\r\n\r\n<section class=\"p-plan-included-services\">\r\n<h4 class=\"p-plan-included-services__title\">Dịch vụ bao gồm</h4>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"hair_makeup\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/hair_makeup.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Làm tóc và trang điểm cho cô dâu chú rể</div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"set_of_accessories\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/set_of_accessories.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Phụ kiện đi kèm</div>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"photo_props\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/photo_props.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Hoa Cầm Tay</div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"all_photo_data\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/all_photo_data.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Tất cả data hình ảnh đã chụp</div>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"10_album\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/10_album.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Album 30x30</div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"simple_edited_photodata\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/simple_edited_photodata.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Chỉnh sửa hình ảnh<br />\r\n	<em>(hình đã chọn cho album)</em></div>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"a3_photo_board\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/a3_photo_board.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Ảnh để cổng<em>(kích thước 60x90)</em></div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"transportation_expenses\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/transportation_expenses.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Phương tiện di chuyển<br />\r\n	<em>(Studio ⇆ Địa điểm chụp)</em></div>\r\n	</li>\r\n</ul>\r\n\r\n<p class=\"p-plan-included-services__notice\"><strong>Mọi thứ cần thiết cho buổi chụp ảnh đã bao gồm hết trong gói dịch vụ </strong></p>\r\n\r\n<blockquote><br />\r\n[Ghi chú]　Chuyên viên trang điểm sẽ theo ekip suốt quá trình chụp để hỗ trợ cô dâu<br />\r\n[Đặc biệt!]　Bạn có thể chọn bất kỳ trang phục có sẵn trong studio mà không phải trả thêm phí.<br />\r\n[Đã bao gồm]　Phí vào các địa điểm chụp tại nội thành đà nẵng<br />\r\n<br />\r\nXin vui lòng liên hệ trước với ekip nếu bạn có bất kỳ ý tưởng hoặc sự thay đổi nào để chúng tôi chuẩn bị chu đáo nhất cho buổi chụp.\r\n<p>&nbsp;</p>\r\n</blockquote>\r\n</section>\r\n</section>', '<section class=\"p-plan-detail-body__details p-plan-details\">\n<h1 style=\"text-align: center;\"><span style=\"font-size:22px;\"><strong>Gói VIP Đà Nẵng</strong></span></h1>\n\n<p class=\"price\" style=\"text-align: center;\"><span style=\"color:#08327e;\"><span style=\"font-size:26px;\">Trọn gói chỉ <span style=\"text-decoration: line-through;\">7.500.000 </span><span style=\"font-weight:bold;color:red\"> =&gt; 6.500.000</span></span> đ</span></p>\n\n<ul class=\"p-plan-details__list p-plan-details-list\">\n    <li class=\"p-plan-details-list__item\">\n    <ul class=\"p-plan-details-list__item__in-items\">\n        <li>\n        <div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-time.png\"></div>\n\n        <p class=\"p-plan-details-list__item__text\">Thời gian chụp / 7h - 12h ～</p>\n        </li>\n        <li>\n        <div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-camera.png\"></div>\n\n        <p class=\"p-plan-details-list__item__text\">Số shot / không giới hạn</p>\n        </li>\n    </ul>\n    </li>\n</ul>\n\n<div class=\"p-plan-details__costume p-plan-details-costume\">\n<ul class=\"p-plan-details-costume__items\">\n    <li class=\"p-plan-details-costume__item\">\n    <div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-dress.png\"></div>\n\n    <p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-min\">Cô dâu / </span> <span class=\"p-plan-details-dl__dd\">2 váy</span> </span></p>\n    </li>\n    <li class=\"p-plan-details-costume__item\">\n    <div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-tuxedo.png\"></div>\n\n    <p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-small\">Chú rể / </span> <span class=\"p-plan-details-dl__dd\">2 vest</span> </span></p>\n    </li>\n</ul>\n\n<ul class=\"p-plan-details-costume__attrs\">\n    <li class=\"p-plan-details-costume__attr\">Hoa cầm tay</li>\n    <li class=\"p-plan-details-costume__attr\">Cà vạt</li>\n    <li class=\"p-plan-details-costume__attr\">Phụ kiện trang sức</li>\n    <li class=\"p-plan-details-costume__attr\">Trang phục tự chọn (khách chuẩn bị)</li>\n</ul>\n</div>\n\n<section class=\"p-plan-gift-services\">\n<ul>\n    <li>TẶNG 1 album cao cấp 30*30 hoặc 25*35</li>\n    <li>TẶNG 1 ảnh lớn ép gỗ laminta khung 60*90</li>\n    <li>TẶNG đĩa DVD HD trình chiếu nhà hàng</li>\n    <li>TẶNG 5 hình để bàn Gallery</li>\n    <li>TẶNG Toàn bộ file thiết kế và file gốc.</li>\n</ul>\n</section>\n\n<section class=\"p-plan-included-services\">\n<h4 class=\"p-plan-included-services__title\">Dịch vụ bao gồm</h4>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"hair_makeup\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/hair_makeup.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Làm tóc và trang điểm cho cô dâu chú rể</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"set_of_accessories\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/set_of_accessories.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Phụ kiện đi kèm</div>\n    </li>\n</ul>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"photo_props\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/photo_props.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Hoa Cầm Tay</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"all_photo_data\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/all_photo_data.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Tất cả data hình ảnh đã chụp</div>\n    </li>\n</ul>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"10_album\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/10_album.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Album 30x30</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"simple_edited_photodata\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/simple_edited_photodata.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Chỉnh sửa hình ảnh<br>\n    <em>(hình đã chọn cho album)</em>\n</div>\n    </li>\n</ul>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"a3_photo_board\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/a3_photo_board.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Ảnh để cổng<em>(kích thước 60x90)</em>\n</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"transportation_expenses\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/transportation_expenses.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Phương tiện di chuyển<br>\n    <em>(Studio ⇆ Địa điểm chụp)</em>\n</div>\n    </li>\n</ul>\n\n<p class=\"p-plan-included-services__notice\"><strong>Mọi thứ cần thiết cho buổi chụp ảnh đã bao gồm hết trong gói dịch vụ </strong></p>\n\n<blockquote>\n<br>\n[Ghi chú]　Chuyên viên trang điểm sẽ theo ekip suốt quá trình chụp để hỗ trợ cô dâu<br>\n[Đặc biệt!]　Bạn có thể chọn bất kỳ trang phục có sẵn trong studio mà không phải trả thêm phí.<br>\n[Đã bao gồm]　Phí vào các địa điểm chụp tại nội thành đà nẵng<br>\n<br>\nXin vui lòng liên hệ trước với ekip nếu bạn có bất kỳ ý tưởng hoặc sự thay đổi nào để chúng tôi chuẩn bị chu đáo nhất cho buổi chụp.\n<p> </p>\n</blockquote>\n</section>\n</section>', NULL, 0, '2019-10-18 02:51:57', '2019-10-18 02:51:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 'Đà Nẵng - Bà Nà - Hội An', 'da-nang-ba-na-hoi', '', '<section class=\"p-plan-detail-body__details p-plan-details\">\r\n<h1 style=\"text-align: center;\"><span style=\"font-size:22px;\"><strong>Gói Đà Nẵng - Bà Nà - Hội An</strong></span></h1>\r\n\r\n<p class=\"price\" style=\"text-align: center;\"><span style=\"color:#08327e;\"><span style=\"font-size:26px;\">Trọn gói chỉ <span style=\"text-decoration: line-through;\">15.900.000 </span><span style=\"font-weight:bold;color:red\">=> 14.900.000</span></span> đ</span></p>\r\n\r\n<p class=\"price\" style=\"text-align: center;\"><span style=\"color:#08327e;\"><span style=\"font-size:26px;\">(đã bao gồm vé cáp treo + ăn uống)</span></span></p>\r\n\r\n<ul class=\"p-plan-details__list p-plan-details-list\">\r\n	<li class=\"p-plan-details-list__item\">\r\n	<ul class=\"p-plan-details-list__item__in-items\">\r\n		<li>\r\n		<div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-time.png\" /></div>\r\n\r\n		<p class=\"p-plan-details-list__item__text\">Thời gian chụp / 7h - 20h ～</p>\r\n		</li>\r\n		<li>\r\n		<div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-camera.png\" /></div>\r\n\r\n		<p class=\"p-plan-details-list__item__text\">Số shot / không giới hạn</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<div class=\"p-plan-details__costume p-plan-details-costume\">\r\n<ul class=\"p-plan-details-costume__items\">\r\n	<li class=\"p-plan-details-costume__item\">\r\n	<div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-dress.png\" /></div>\r\n\r\n	<p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-min\">Cô dâu / </span> <span class=\"p-plan-details-dl__dd\">3 váy và 1 bộ áo dài</span> </span></p>\r\n	</li>\r\n	<li class=\"p-plan-details-costume__item\">\r\n	<div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-tuxedo.png\" /></div>\r\n\r\n	<p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-small\">Chú rể / </span> <span class=\"p-plan-details-dl__dd\">2 vest và 1 bộ áo dài</span> </span></p>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-details-costume__attrs\">\r\n	<li class=\"p-plan-details-costume__attr\">Hoa cầm tay</li>\r\n	<li class=\"p-plan-details-costume__attr\">Cà vạt</li>\r\n	<li class=\"p-plan-details-costume__attr\">Phụ kiện trang sức</li>\r\n</ul>\r\n</div>\r\n\r\n<section class=\"p-plan-gift-services\">\r\n<ul>\r\n	<li>TẶNG ngay 02_ảnh_cổng 60X90 ép gỗ laminage cao cấp</li>\r\n	<li>TẶNG album 30*30 cực chất</li>\r\n	<li>TẶNG đĩa DVD HD trình chiếu nhà hàng</li>\r\n	<li>TẶNG 5 hình để bàn Gallery</li>\r\n	<li>TẶNG 1 đêm khách sạn gần biển, tiện du lịch mùa hè với nhiều chương trình lễ hội hay tại Đà Nẵng.</li>\r\n	<li>LO ĂN UỐNG CHO DÂU RỂ ( Sáng, trưa)</li>\r\n	<li>Đón khách tại sân bay MIỄN PHÍ</li>\r\n	<li>Đã bao gồm vé cáp treo</li>\r\n</ul>\r\n</section>\r\n\r\n<section class=\"p-plan-included-services\">\r\n<h4 class=\"p-plan-included-services__title\">Dịch vụ bao gồm</h4>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"hair_makeup\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/hair_makeup.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Làm tóc và trang điểm cho cô dâu chú rể</div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"set_of_accessories\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/set_of_accessories.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Phụ kiện đi kèm</div>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"photo_props\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/photo_props.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Hoa Cầm Tay</div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"all_photo_data\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/all_photo_data.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Tất cả data hình ảnh đã chụp</div>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"10_album\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/10_album.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Album 30x30</div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"simple_edited_photodata\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/simple_edited_photodata.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Chỉnh sửa hình ảnh<br />\r\n	<em>(hình đã chọn cho album)</em></div>\r\n	</li>\r\n</ul>\r\n\r\n<ul class=\"p-plan-included-services__items\">\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"a3_photo_board\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/a3_photo_board.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Ảnh để cổng<em>(kích thước 60x90)</em></div>\r\n	</li>\r\n	<li class=\"p-plan-included-services__item p-plan-included-service\">\r\n	<div class=\"p-plan-included-service__icon\"><img alt=\"transportation_expenses\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/transportation_expenses.png\" width=\"90\" /></div>\r\n\r\n	<div class=\"p-plan-included-service__text\">Phương tiện di chuyển<br />\r\n	<em>(Studio ⇆ Địa điểm chụp)</em></div>\r\n	</li>\r\n</ul>\r\n\r\n<p class=\"p-plan-included-services__notice\"><strong>Mọi thứ cần thiết cho buổi chụp ảnh đã bao gồm hết trong gói dịch vụ </strong></p>\r\n\r\n<blockquote><br />\r\n[Ghi chú]　Chuyên viên trang điểm sẽ theo ekip suốt quá trình chụp để hỗ trợ cô dâu<br />\r\n[Đặc biệt!]　Bạn có thể chọn bất kỳ trang phục có sẵn trong studio mà không phải trả thêm phí.<br />\r\n[Đã bao gồm]　Phí vào các địa điểm chụp tại nội thành Đà Nẵng<br />\r\n<br />\r\nXin vui lòng liên hệ trước với ekip nếu bạn có bất kỳ ý tưởng hoặc sự thay đổi nào để chúng tôi chuẩn bị chu đáo nhất cho buổi chụp.\r\n<p> </p>\r\n</blockquote>\r\n</section>\r\n</section>', '<section class=\"p-plan-detail-body__details p-plan-details\">\n<h1 style=\"text-align: center;\"><span style=\"font-size:22px;\"><strong>Gói Đà Nẵng - Bà Nà - Hội An</strong></span></h1>\n\n<p class=\"price\" style=\"text-align: center;\"><span style=\"color:#08327e;\"><span style=\"font-size:26px;\">Trọn gói chỉ <span style=\"text-decoration: line-through;\">15.900.000 </span><span style=\"font-weight:bold;color:red\">=&gt; 14.900.000</span></span> đ</span></p>\n\n<p class=\"price\" style=\"text-align: center;\"><span style=\"color:#08327e;\"><span style=\"font-size:26px;\">(đã bao gồm vé cáp treo + ăn uống)</span></span></p>\n\n<ul class=\"p-plan-details__list p-plan-details-list\">\n    <li class=\"p-plan-details-list__item\">\n    <ul class=\"p-plan-details-list__item__in-items\">\n        <li>\n        <div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-time.png\"></div>\n\n        <p class=\"p-plan-details-list__item__text\">Thời gian chụp / 7h - 20h ～</p>\n        </li>\n        <li>\n        <div class=\"p-plan-details-list__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-camera.png\"></div>\n\n        <p class=\"p-plan-details-list__item__text\">Số shot / không giới hạn</p>\n        </li>\n    </ul>\n    </li>\n</ul>\n\n<div class=\"p-plan-details__costume p-plan-details-costume\">\n<ul class=\"p-plan-details-costume__items\">\n    <li class=\"p-plan-details-costume__item\">\n    <div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-dress.png\"></div>\n\n    <p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-min\">Cô dâu / </span> <span class=\"p-plan-details-dl__dd\">3 váy và 1 bộ áo dài</span> </span></p>\n    </li>\n    <li class=\"p-plan-details-costume__item\">\n    <div class=\"p-plan-details-costume__item__icon\"><img alt=\"\" src=\"https://d-weddingphoto.com/cms/wp-content/themes/decollte/assets/images/_sample/plan-icn-tuxedo.png\"></div>\n\n    <p class=\"p-plan-details-costume__item__text\"><span class=\"p-plan-details-dl is-lang-en_US\"><span class=\"p-plan-details-dl__dt p-plan-details-dl__dt--em-small\">Chú rể / </span> <span class=\"p-plan-details-dl__dd\">2 vest và 1 bộ áo dài</span> </span></p>\n    </li>\n</ul>\n\n<ul class=\"p-plan-details-costume__attrs\">\n    <li class=\"p-plan-details-costume__attr\">Hoa cầm tay</li>\n    <li class=\"p-plan-details-costume__attr\">Cà vạt</li>\n    <li class=\"p-plan-details-costume__attr\">Phụ kiện trang sức</li>\n</ul>\n</div>\n\n<section class=\"p-plan-gift-services\">\n<ul>\n    <li>TẶNG ngay 02_ảnh_cổng 60X90 ép gỗ laminage cao cấp</li>\n    <li>TẶNG album 30*30 cực chất</li>\n    <li>TẶNG đĩa DVD HD trình chiếu nhà hàng</li>\n    <li>TẶNG 5 hình để bàn Gallery</li>\n    <li>TẶNG 1 đêm khách sạn gần biển, tiện du lịch mùa hè với nhiều chương trình lễ hội hay tại Đà Nẵng.</li>\n    <li>LO ĂN UỐNG CHO DÂU RỂ ( Sáng, trưa)</li>\n    <li>Đón khách tại sân bay MIỄN PHÍ</li>\n    <li>Đã bao gồm vé cáp treo</li>\n</ul>\n</section>\n\n<section class=\"p-plan-included-services\">\n<h4 class=\"p-plan-included-services__title\">Dịch vụ bao gồm</h4>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"hair_makeup\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/hair_makeup.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Làm tóc và trang điểm cho cô dâu chú rể</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"set_of_accessories\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/set_of_accessories.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Phụ kiện đi kèm</div>\n    </li>\n</ul>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"photo_props\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/photo_props.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Hoa Cầm Tay</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"all_photo_data\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/all_photo_data.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Tất cả data hình ảnh đã chụp</div>\n    </li>\n</ul>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"10_album\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/10_album.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Album 30x30</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"simple_edited_photodata\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/simple_edited_photodata.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Chỉnh sửa hình ảnh<br>\n    <em>(hình đã chọn cho album)</em>\n</div>\n    </li>\n</ul>\n\n<ul class=\"p-plan-included-services__items\">\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"a3_photo_board\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/a3_photo_board.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Ảnh để cổng<em>(kích thước 60x90)</em>\n</div>\n    </li>\n    <li class=\"p-plan-included-services__item p-plan-included-service\">\n    <div class=\"p-plan-included-service__icon\"><img alt=\"transportation_expenses\" height=\"90\" src=\"https://d-weddingphoto.com/cms/wp-content/uploads/2016/03/transportation_expenses.png\" width=\"90\"></div>\n\n    <div class=\"p-plan-included-service__text\">Phương tiện di chuyển<br>\n    <em>(Studio ⇆ Địa điểm chụp)</em>\n</div>\n    </li>\n</ul>\n\n<p class=\"p-plan-included-services__notice\"><strong>Mọi thứ cần thiết cho buổi chụp ảnh đã bao gồm hết trong gói dịch vụ </strong></p>\n\n<blockquote>\n<br>\n[Ghi chú]　Chuyên viên trang điểm sẽ theo ekip suốt quá trình chụp để hỗ trợ cô dâu<br>\n[Đặc biệt!]　Bạn có thể chọn bất kỳ trang phục có sẵn trong studio mà không phải trả thêm phí.<br>\n[Đã bao gồm]　Phí vào các địa điểm chụp tại nội thành Đà Nẵng<br>\n<br>\nXin vui lòng liên hệ trước với ekip nếu bạn có bất kỳ ý tưởng hoặc sự thay đổi nào để chúng tôi chuẩn bị chu đáo nhất cho buổi chụp.\n<p> </p>\n</blockquote>\n</section>\n</section>', NULL, 0, '2019-10-18 02:53:29', '2019-10-18 02:54:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 'Tin tức 1', 'tin-tuc-1', 'đây là mô tả', '<p>Tin tức 1</p>', '<p>Tin tức 1</p>', NULL, 0, '2019-10-27 01:56:44', '2019-10-27 02:06:01', NULL, '', '', '', '', '', 'index', 'follow'),
(5, 1, 'Tin tức 2', 'tin-tuc-2', '', '<p>Tin tức 2</p>', '<p>Tin tức 2</p>', NULL, 0, '2019-10-27 01:57:16', '2019-10-27 01:57:16', NULL, '', '', '', '', '', 'index', 'follow'),
(6, 1, 'Tin tức 3', 'tin-tuc-3', '', '<p>Tin tức 3</p>', '<p>Tin tức 3</p>', NULL, 0, '2019-10-27 01:57:51', '2019-10-27 01:57:51', NULL, '', '', '', '', '', 'index', 'follow'),
(7, 1, 'Tin tức 4', 'tin-tuc-4', '', '<p>Tin tức 4</p>', '<p>Tin tức 4</p>', NULL, 0, '2019-10-27 01:58:10', '2019-10-27 01:58:10', NULL, '', '', '', '', '', 'index', 'follow'),
(8, 1, 'Tin tức 5', 'tin-tuc-5', '', '<p>Tin tức 5</p>', '<p>Tin tức 5</p>', NULL, 0, '2019-10-27 01:58:57', '2019-10-27 01:58:57', NULL, '', '', '', '', '', 'index', 'follow'),
(9, 1, 'Tin tức 6', 'tin-tuc-6', '', '<p>Tin tức 6</p>', '<p>Tin tức 6</p>', NULL, 0, '2019-10-27 01:59:30', '2019-10-27 01:59:30', NULL, '', '', '', '', '', 'index', 'follow');

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
(3, 2),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3);

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
(4, '5da98bc8659a6827804460.jpg', 'chun_chun_7_seawedding.jpg', 338040, 'image/jpeg', NULL, NULL, 'featured_images', '3', 'RainLab\\Blog\\Models\\Post', 1, 4, '2019-10-18 02:54:16', '2019-10-18 02:54:22'),
(5, '5dad32df9d21a164702189.jpg', '17.jpg', 180409, 'image/jpeg', NULL, NULL, 'img_primary', '1', 'Quang\\Post\\Models\\Posts', 1, 5, '2019-10-20 21:24:00', '2019-10-20 21:24:27'),
(6, '5dad334973229376435961.jpg', 'y7a2718-x2.jpg', 263441, 'image/jpeg', NULL, NULL, 'img_primary', '2', 'Quang\\Post\\Models\\Posts', 1, 6, '2019-10-20 21:25:45', '2019-10-20 21:26:00'),
(7, '5dad33663a6b1352830628.jpg', 'hai_0153.jpg', 540394, 'image/jpeg', NULL, NULL, 'img_primary', '3', 'Quang\\Post\\Models\\Posts', 1, 7, '2019-10-20 21:26:14', '2019-10-20 21:26:40'),
(8, '5db55bc134125764720647.png', '1.png', 42357, 'image/png', NULL, NULL, 'featured_images', '4', 'RainLab\\Blog\\Models\\Post', 1, 8, '2019-10-27 01:56:33', '2019-10-27 01:56:44'),
(9, '5db55be359193011935640.png', '1.png', 42357, 'image/png', NULL, NULL, 'featured_images', '5', 'RainLab\\Blog\\Models\\Post', 1, 9, '2019-10-27 01:57:07', '2019-10-27 01:57:16'),
(10, '5db55c0cf3ef2516482457.png', '1.png', 42357, 'image/png', NULL, NULL, 'featured_images', '6', 'RainLab\\Blog\\Models\\Post', 1, 10, '2019-10-27 01:57:49', '2019-10-27 01:57:51'),
(11, '5db55c1fb8836507486870.png', '1.png', 42357, 'image/png', NULL, NULL, 'featured_images', '7', 'RainLab\\Blog\\Models\\Post', 1, 11, '2019-10-27 01:58:07', '2019-10-27 01:58:10'),
(12, '5db55c5aeae29365509219.png', '1.png', 42357, 'image/png', NULL, NULL, 'featured_images', '8', 'RainLab\\Blog\\Models\\Post', 1, 12, '2019-10-27 01:59:06', '2019-10-27 01:59:08'),
(13, '5db55c6cd5c49100981573.png', '1.png', 42357, 'image/png', NULL, NULL, 'featured_images', '9', 'RainLab\\Blog\\Models\\Post', 1, 13, '2019-10-27 01:59:24', '2019-10-27 01:59:30'),
(14, '5db598df05ce2659768194.png', '1.png', 42357, 'image/png', NULL, NULL, 'img_primary', '4', 'Quang\\Post\\Models\\Posts', 1, 14, '2019-10-27 06:17:19', '2019-10-27 06:17:37'),
(15, '5db5990130636175451687.png', '1.png', 42357, 'image/png', NULL, NULL, 'img_primary', '5', 'Quang\\Post\\Models\\Posts', 1, 15, '2019-10-27 06:17:53', '2019-10-27 06:18:05'),
(16, '5db5992f33472072816529.png', '1.png', 42357, 'image/png', NULL, NULL, 'img_primary', '6', 'Quang\\Post\\Models\\Posts', 1, 16, '2019-10-27 06:18:39', '2019-10-27 06:18:47'),
(17, '5db59945519d4461861668.png', '1.png', 42357, 'image/png', NULL, NULL, 'img_primary', '7', 'Quang\\Post\\Models\\Posts', 1, 17, '2019-10-27 06:19:01', '2019-10-27 06:19:09'),
(18, '5db5995eb35b5731409050.png', '1.png', 42357, 'image/png', NULL, NULL, 'img_primary', '8', 'Quang\\Post\\Models\\Posts', 1, 18, '2019-10-27 06:19:26', '2019-10-27 06:19:34'),
(19, '5db59970d2f24886447342.png', '1.png', 42357, 'image/png', NULL, NULL, 'img_primary', '9', 'Quang\\Post\\Models\\Posts', 1, 19, '2019-10-27 06:19:44', '2019-10-27 06:19:49'),
(20, '5db5998222aea035013245.png', '1.png', 42357, 'image/png', NULL, NULL, 'img_primary', '10', 'Quang\\Post\\Models\\Posts', 1, 20, '2019-10-27 06:20:02', '2019-10-27 06:20:10'),
(21, '5db5ade6b5fb2303503053.jpg', '5da98b3004128895250478.jpg', 255448, 'image/jpeg', NULL, NULL, 'img_primary', '11', 'Quang\\Post\\Models\\Posts', 1, 21, '2019-10-27 07:47:02', '2019-10-27 07:47:05'),
(22, '5db5ae12495b8905564066.jpg', '5da98bc8659a6827804460.jpg', 338040, 'image/jpeg', NULL, NULL, 'img_primary', '12', 'Quang\\Post\\Models\\Posts', 1, 22, '2019-10-27 07:47:46', '2019-10-27 07:47:53'),
(23, '5dc13de61994f619733806.png', 'logo_blue.png', 14111, 'image/png', NULL, NULL, 'logo', '3', 'Backend\\Models\\BrandSetting', 1, 23, '2019-11-05 02:16:22', '2019-11-05 02:16:43'),
(24, '5dc13dee94ce7359366887.ico', 'favicon.ico', 1150, 'image/x-icon', NULL, NULL, 'favicon', '3', 'Backend\\Models\\BrandSetting', 1, 24, '2019-11-05 02:16:30', '2019-11-05 02:16:43');

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

--
-- Đang đổ dữ liệu cho bảng `system_mail_partials`
--

INSERT INTO `system_mail_partials` (`id`, `name`, `code`, `content_html`, `content_text`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'Header', 'header', '<tr>\n    <td class=\"header\">\n        {% if url %}\n            <a href=\"{{ url }}\">\n                {{ body }}\n            </a>\n        {% else %}\n            <span>\n                {{ body }}\n            </span>\n        {% endif %}\n    </td>\n</tr>', '*** {{ body|trim }} <{{ url }}>', 0, '2019-11-04 01:09:33', '2019-11-04 01:09:33'),
(2, 'Footer', 'footer', '<tr>\n    <td>\n        <table class=\"footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n            <tr>\n                <td class=\"content-cell\" align=\"center\">\n                    {{ body|md_safe }}\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>', '-------------------\n{{ body|trim }}', 0, '2019-11-04 01:09:33', '2019-11-04 01:09:33'),
(3, 'Button', 'button', '<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td align=\"center\">\n            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td align=\"center\">\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                            <tr>\n                                <td>\n                                    <a href=\"{{ url }}\" class=\"button button-{{ type ?: \'primary\' }}\" target=\"_blank\">\n                                        {{ body }}\n                                    </a>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }} <{{ url }}>', 0, '2019-11-04 01:09:33', '2019-11-04 01:09:33'),
(4, 'Panel', 'panel', '<table class=\"panel\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td class=\"panel-content\">\n            <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td class=\"panel-item\">\n                        {{ body|md_safe }}\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2019-11-04 01:09:33', '2019-11-04 01:09:33'),
(5, 'Table', 'table', '<div class=\"table\">\n    {{ body|md_safe }}\n</div>', '{{ body|trim }}', 0, '2019-11-04 01:09:33', '2019-11-04 01:09:33'),
(6, 'Subcopy', 'subcopy', '<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td>\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '-----\n{{ body|trim }}', 0, '2019-11-04 01:09:33', '2019-11-04 01:09:33'),
(7, 'Promotion', 'promotion', '<table class=\"promotion\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td align=\"center\">\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2019-11-04 01:09:33', '2019-11-04 01:09:33');

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

--
-- Đang đổ dữ liệu cho bảng `system_mail_templates`
--

INSERT INTO `system_mail_templates` (`id`, `code`, `subject`, `description`, `content_html`, `content_text`, `layout_id`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'backend::mail.invite', NULL, 'Invite new admin to the site', NULL, NULL, 2, 0, '2019-11-04 01:09:34', '2019-11-04 01:09:34'),
(2, 'backend::mail.restore', NULL, 'Reset an admin password', NULL, NULL, 2, 0, '2019-11-04 01:09:34', '2019-11-04 01:09:34'),
(3, 'quang.contact::mail_to_customer.message', NULL, NULL, NULL, NULL, 1, 0, '2019-11-04 01:20:00', '2019-11-04 01:20:00'),
(4, 'quang.contact::mail_to_me.message', NULL, NULL, NULL, NULL, 1, 0, '2019-11-04 01:20:00', '2019-11-04 01:20:00');

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
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'update', 'retry', '1572948539'),
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
(106, 'Quang.Config', 'comment', '1.0.3', 'Updated table quang_config_', '2019-10-17 21:48:27'),
(107, 'SureSoftware.PowerSEO', 'script', '1.0.1', 'create_blog_posts_table.php', '2019-10-20 19:41:03'),
(108, 'SureSoftware.PowerSEO', 'comment', '1.0.1', 'First version of Seo Extension', '2019-10-20 19:41:03'),
(109, 'SureSoftware.PowerSEO', 'comment', '1.0.2', 'Bug fixes', '2019-10-20 19:41:03'),
(110, 'SureSoftware.PowerSEO', 'comment', '1.0.3', 'Backend Settings added to configure meta tags & Open Graph tags added', '2019-10-20 19:41:03'),
(111, 'SureSoftware.PowerSEO', 'comment', '1.0.4', 'Code clean up and change path naming in settings model', '2019-10-20 19:41:03'),
(112, 'SureSoftware.PowerSEO', 'comment', '1.0.5', 'Add Turkish, Russian, cs_CZ locale', '2019-10-20 19:41:03'),
(113, 'SureSoftware.PowerSEO', 'comment', '1.0.6', 'Fix issue of SEO Settings Errors', '2019-10-20 19:41:03'),
(114, 'SureSoftware.PowerSEO', 'script', '2.0.0', 'migrate_settings.php', '2019-10-20 19:41:03'),
(115, 'SureSoftware.PowerSEO', 'comment', '2.0.0', 'Changed plugin to PowerSEO, fixed server errors and included latest changes', '2019-10-20 19:41:03'),
(116, 'SureSoftware.PowerSEO', 'script', '2.0.1', 'migrate_blogpost_seo.php', '2019-10-20 19:41:03'),
(117, 'SureSoftware.PowerSEO', 'comment', '2.0.1', 'Prefixed SEO column names to ensure uniqueness and prevent plugin conflicts', '2019-10-20 19:41:03'),
(118, 'SureSoftware.PowerSEO', 'script', '2.0.2', 'blogposts_fix.php', '2019-10-20 19:41:03'),
(119, 'SureSoftware.PowerSEO', 'comment', '2.0.2', 'Fixed issue with fresh install on non-migrated sites', '2019-10-20 19:41:03'),
(120, 'SureSoftware.PowerSEO', 'comment', '2.0.3', 'Fixed bug in blogPost robots not populating', '2019-10-20 19:41:03'),
(121, 'SureSoftware.PowerSEO', 'comment', '2.0.4', 'Fixed bug with fields showing up in the static pages repeater', '2019-10-20 19:41:03'),
(122, 'Quang.Post', 'comment', '1.0.1', 'Initialize plugin.', '2019-10-20 20:05:43'),
(123, 'Quang.Post', 'script', '1.0.2', 'builder_table_create_quang_post_.php', '2019-10-20 20:08:46'),
(124, 'Quang.Post', 'comment', '1.0.2', 'Created table quang_post_', '2019-10-20 20:08:46'),
(125, 'Quang.Post', 'script', '1.0.3', 'builder_table_update_quang_post_.php', '2019-10-20 20:15:10'),
(126, 'Quang.Post', 'comment', '1.0.3', 'Updated table quang_post_', '2019-10-20 20:15:10'),
(127, 'AnandPatel.WysiwygEditors', 'comment', '1.0.1', 'First version of Wysiwyg Editors.', '2019-10-20 20:34:37'),
(128, 'AnandPatel.WysiwygEditors', 'comment', '1.0.2', 'Automatic Injection to CMS & other code editors and October CMS`s Rich Editor added.', '2019-10-20 20:34:38'),
(129, 'AnandPatel.WysiwygEditors', 'comment', '1.0.3', 'Automatic Injection to RainLab Static Pages & other plugin`s option is appear only if installed.', '2019-10-20 20:34:38'),
(130, 'AnandPatel.WysiwygEditors', 'comment', '1.0.4', 'New Froala editor added (on request from emzero439), Height & width property added for editor, setting moved to My Setting tab and minor changes in settings.', '2019-10-20 20:34:38'),
(131, 'AnandPatel.WysiwygEditors', 'comment', '1.0.5', 'Automatic Injection to Radiantweb`s Problog and ProEvents (option available in settings-content).', '2019-10-20 20:34:39'),
(132, 'AnandPatel.WysiwygEditors', 'comment', '1.0.6', 'CKEditor updated and bug fixes.', '2019-10-20 20:34:39'),
(133, 'AnandPatel.WysiwygEditors', 'comment', '1.0.7', 'Integrated elFinder (file browser) with TinyMCE & CKEditor, Image upload/delete for Froala Editor.', '2019-10-20 20:34:39'),
(134, 'AnandPatel.WysiwygEditors', 'comment', '1.0.8', 'Added security to File Browser`s route (Authenticate users can only access File Browser).', '2019-10-20 20:34:39'),
(135, 'AnandPatel.WysiwygEditors', 'comment', '1.0.9', 'Updated CKEditor, Froala and TinyMCE.', '2019-10-20 20:34:39'),
(136, 'AnandPatel.WysiwygEditors', 'comment', '1.1.0', 'Support multilanguage, update elFinder and cleanup code.', '2019-10-20 20:34:39'),
(137, 'AnandPatel.WysiwygEditors', 'comment', '1.1.1', 'Added Turkish language.', '2019-10-20 20:34:40'),
(138, 'AnandPatel.WysiwygEditors', 'comment', '1.1.2', 'Added Hungarian language.', '2019-10-20 20:34:40'),
(139, 'AnandPatel.WysiwygEditors', 'comment', '1.1.3', 'Fixed issue related to RC (Elfinder fix remaining).', '2019-10-20 20:34:40'),
(140, 'AnandPatel.WysiwygEditors', 'comment', '1.1.4', 'Fixed Elfinder issue.', '2019-10-20 20:34:40'),
(141, 'AnandPatel.WysiwygEditors', 'comment', '1.1.5', 'Updated CKEditor, Froala and TinyMCE.', '2019-10-20 20:34:41'),
(142, 'AnandPatel.WysiwygEditors', 'comment', '1.1.6', 'Changed destination folder.', '2019-10-20 20:34:41'),
(143, 'AnandPatel.WysiwygEditors', 'comment', '1.1.7', 'Added Czech language.', '2019-10-20 20:34:42'),
(144, 'AnandPatel.WysiwygEditors', 'comment', '1.1.8', 'Added Russian language.', '2019-10-20 20:34:42'),
(145, 'AnandPatel.WysiwygEditors', 'comment', '1.1.9', 'Fix hook and other issues (thanks to Vojta Svoboda).', '2019-10-20 20:34:43'),
(146, 'AnandPatel.WysiwygEditors', 'comment', '1.2.0', 'Put settings inside CMS sidemenu (thanks to Amanda Tresbach).', '2019-10-20 20:34:43'),
(147, 'AnandPatel.WysiwygEditors', 'comment', '1.2.1', 'Remove el-finder (Which fix issue of composer), added OC media manager support for image in TinyMCE & CkEditor, TinyMCE version updated, Fix Image upload for froala editor', '2019-10-20 20:34:43'),
(148, 'AnandPatel.WysiwygEditors', 'comment', '1.2.2', 'Add multilingual support, Add new languages, Update the Hungarian language, Add the missing English language files (Special thanks to Szabó Gergő)', '2019-10-20 20:34:44'),
(149, 'AnandPatel.WysiwygEditors', 'comment', '1.2.3', 'Added toolbar customization option (Special thanks to Szabó Gergő).', '2019-10-20 20:34:44'),
(150, 'AnandPatel.WysiwygEditors', 'comment', '1.2.4', 'Added support for Content Plus Plugin & News and Newsletter plugin (thanks to Szabó Gergő)', '2019-10-20 20:34:44'),
(151, 'AnandPatel.WysiwygEditors', 'comment', '1.2.5', 'Minor improvements and bugfixes.', '2019-10-20 20:34:45'),
(152, 'AnandPatel.WysiwygEditors', 'comment', '1.2.6', 'Updated the CKEditor and TinyMCE editors.', '2019-10-20 20:34:45'),
(153, 'AnandPatel.WysiwygEditors', 'comment', '1.2.7', 'Show locale switcher when using multilocale editor.', '2019-10-20 20:34:45'),
(154, 'AnandPatel.WysiwygEditors', 'comment', '1.2.8', 'Added French language', '2019-10-20 20:34:45'),
(155, 'AnandPatel.WysiwygEditors', 'comment', '1.2.9', 'Added permission for preferences', '2019-10-20 20:34:46'),
(156, 'Quang.Post', 'script', '1.0.4', 'builder_table_create_quang_post_category.php', '2019-10-20 20:41:06'),
(157, 'Quang.Post', 'comment', '1.0.4', 'Created table quang_post_category', '2019-10-20 20:41:06'),
(158, 'Quang.Post', 'script', '1.0.5', 'builder_table_update_quang_post__2.php', '2019-10-20 20:41:44'),
(159, 'Quang.Post', 'comment', '1.0.5', 'Updated table quang_post_', '2019-10-20 20:41:44'),
(160, 'Quang.Post', 'script', '1.0.6', 'builder_table_update_quang_post_category.php', '2019-10-20 20:58:36'),
(161, 'Quang.Post', 'comment', '1.0.6', 'Updated table quang_post_category', '2019-10-20 20:58:36'),
(162, 'Quang.Post', 'script', '1.0.7', 'builder_table_create_quang_post_post_category.php', '2019-10-20 21:08:28'),
(163, 'Quang.Post', 'comment', '1.0.7', 'Created table quang_post_post_category', '2019-10-20 21:08:28'),
(164, 'Quang.Post', 'script', '1.0.8', 'builder_table_update_quang_post_post_category.php', '2019-10-20 21:17:56'),
(165, 'Quang.Post', 'comment', '1.0.8', 'Updated table quang_post_post_category', '2019-10-20 21:17:56'),
(166, 'Quang.Album', 'comment', '1.0.1', 'Initialize plugin.', '2019-10-21 19:17:25'),
(167, 'Quang.Album', 'script', '1.0.2', 'builder_table_create_quang_album_.php', '2019-10-21 19:20:59'),
(168, 'Quang.Album', 'comment', '1.0.2', 'Created table quang_album_', '2019-10-21 19:20:59'),
(169, 'Quang.Album', 'script', '1.0.3', 'builder_table_create_quang_album_category.php', '2019-10-21 19:22:23'),
(170, 'Quang.Album', 'comment', '1.0.3', 'Created table quang_album_category', '2019-10-21 19:22:23'),
(171, 'Quang.Album', 'script', '1.0.4', 'builder_table_update_quang_album_.php', '2019-10-21 19:22:38'),
(172, 'Quang.Album', 'comment', '1.0.4', 'Updated table quang_album_', '2019-10-21 19:22:38'),
(173, 'Quang.Album', 'script', '1.0.5', 'builder_table_create_quang_album_album_category.php', '2019-10-21 19:23:47'),
(174, 'Quang.Album', 'comment', '1.0.5', 'Created table quang_album_album_category', '2019-10-21 19:23:47'),
(175, 'Quang.Album', 'script', '1.0.6', 'builder_table_update_quang_album__2.php', '2019-10-21 19:45:36'),
(176, 'Quang.Album', 'comment', '1.0.6', 'Updated table quang_album_', '2019-10-21 19:45:36'),
(177, 'Quang.Album', 'script', '1.0.7', 'builder_table_update_quang_album__3.php', '2019-10-21 20:41:02'),
(178, 'Quang.Album', 'comment', '1.0.7', 'Updated table quang_album_', '2019-10-21 20:41:02'),
(179, 'Quang.Post', 'script', '1.0.9', 'builder_table_update_quang_post__3.php', '2019-10-27 08:11:08'),
(180, 'Quang.Post', 'comment', '1.0.9', 'Updated table quang_post_', '2019-10-27 08:11:08'),
(181, 'Quang.Post', 'script', '1.0.10', 'builder_table_update_quang_post__4.php', '2019-10-27 08:25:05'),
(182, 'Quang.Post', 'comment', '1.0.10', 'Updated table quang_post_', '2019-10-27 08:25:05'),
(183, 'Quang.Post', 'script', '1.0.11', 'builder_table_update_quang_post_category_2.php', '2019-10-27 19:32:36'),
(184, 'Quang.Post', 'comment', '1.0.11', 'Updated table quang_post_category', '2019-10-27 19:32:36'),
(185, 'Quang.Post', 'script', '1.0.12', 'builder_table_update_quang_post_category_3.php', '2019-10-27 19:40:29'),
(186, 'Quang.Post', 'comment', '1.0.12', 'Updated table quang_post_category', '2019-10-27 19:40:29'),
(187, 'Quang.Post', 'script', '1.0.13', 'builder_table_update_quang_post_category_4.php', '2019-10-27 19:41:33'),
(188, 'Quang.Post', 'comment', '1.0.13', 'Updated table quang_post_category', '2019-10-27 19:41:33'),
(189, 'Quang.Post', 'script', '1.0.14', 'builder_table_update_quang_post_category_5.php', '2019-10-28 00:48:36'),
(190, 'Quang.Post', 'comment', '1.0.14', 'Updated table quang_post_category', '2019-10-28 00:48:36'),
(191, 'Quang.Post', 'script', '1.0.15', 'builder_table_update_quang_post_category_6.php', '2019-11-03 01:53:24'),
(192, 'Quang.Post', 'comment', '1.0.15', 'Updated table quang_post_category', '2019-11-03 01:53:24'),
(193, 'Quang.Post', 'script', '1.0.16', 'builder_table_update_quang_post_category_7.php', '2019-11-03 01:54:57'),
(194, 'Quang.Post', 'comment', '1.0.16', 'Updated table quang_post_category', '2019-11-03 01:54:57'),
(195, 'Quang.Config', 'script', '1.0.4', 'builder_table_update_quang_config__2.php', '2019-11-03 07:05:34'),
(196, 'Quang.Config', 'comment', '1.0.4', 'Updated table quang_config_', '2019-11-03 07:05:34'),
(197, 'Quang.Config', 'script', '1.0.5', 'builder_table_update_quang_config__3.php', '2019-11-03 07:09:20'),
(198, 'Quang.Config', 'comment', '1.0.5', 'Updated table quang_config_', '2019-11-03 07:09:20'),
(199, 'Quang.Config', 'script', '1.0.6', 'builder_table_update_quang_config__4.php', '2019-11-03 07:19:50'),
(200, 'Quang.Config', 'comment', '1.0.6', 'Updated table quang_config_', '2019-11-03 07:19:50'),
(201, 'Quang.Config', 'script', '1.0.7', 'builder_table_update_quang_config__5.php', '2019-11-03 07:39:27'),
(202, 'Quang.Config', 'comment', '1.0.7', 'Updated table quang_config_', '2019-11-03 07:39:27'),
(203, 'Quang.Config', 'script', '1.0.8', 'builder_table_update_quang_config__6.php', '2019-11-03 07:44:00'),
(204, 'Quang.Config', 'comment', '1.0.8', 'Updated table quang_config_', '2019-11-03 07:44:00'),
(205, 'Quang.Contact', 'comment', '1.0.1', 'Initialize plugin.', '2019-11-03 23:55:18'),
(206, 'Romanov.ClearCacheWidget', 'comment', '1.0.1', 'First version of ClearCacheWidget', '2019-11-04 03:07:10'),
(207, 'Romanov.ClearCacheWidget', 'comment', '1.0.2', 'Translate for brazilian portuguese', '2019-11-04 03:07:10'),
(208, 'Romanov.ClearCacheWidget', 'comment', '1.0.3', 'Some fix', '2019-11-04 03:07:10'),
(209, 'Romanov.ClearCacheWidget', 'comment', '1.0.4', 'Fix chart', '2019-11-04 03:07:10'),
(210, 'Romanov.ClearCacheWidget', 'comment', '1.0.5', 'Add chart size property', '2019-11-04 03:07:10'),
(211, 'Romanov.ClearCacheWidget', 'comment', '1.0.6', 'Add cs_CZ locale', '2019-11-04 03:07:10'),
(212, 'Romanov.ClearCacheWidget', 'comment', '1.1.0', 'Added functionality to delete thumbs images. (set up in widget settings)', '2019-11-04 03:07:11'),
(213, 'Romanov.ClearCacheWidget', 'comment', '1.1.1', 'Ability to specify the path to the folder preview. (set up in widget settings)', '2019-11-04 03:07:11'),
(214, 'Romanov.ClearCacheWidget', 'comment', '1.1.2', 'Some fix. For those who use PHP version below 5.5', '2019-11-04 03:07:11'),
(215, 'Romanov.ClearCacheWidget', 'comment', '1.1.3', 'Update cs_CZ locale', '2019-11-04 03:07:11'),
(216, 'Romanov.ClearCacheWidget', 'comment', '1.1.4', 'Fix ErrorException', '2019-11-04 03:07:11'),
(217, 'Romanov.ClearCacheWidget', 'comment', '1.1.5', 'Add french and italian locales', '2019-11-04 03:07:11'),
(218, 'Romanov.ClearCacheWidget', 'comment', '1.2.0', 'Add property \'Regex for thumb file names\'', '2019-11-04 03:07:11'),
(219, 'Romanov.ClearCacheWidget', 'comment', '1.2.1', 'Add the Hungarian translation', '2019-11-04 03:07:11'),
(220, 'Romanov.ClearCacheWidget', 'comment', '1.2.2', 'Fix for user defined widget title', '2019-11-04 03:07:11'),
(221, 'Romanov.ClearCacheWidget', 'comment', '1.2.3', 'Add Turkish language file', '2019-11-04 03:07:12'),
(222, 'Romanov.ClearCacheWidget', 'comment', '1.2.4', 'Add Dutch language', '2019-11-04 03:07:12'),
(223, 'Romanov.ClearCacheWidget', 'comment', '1.2.5', 'IT locale updated', '2019-11-04 03:07:12'),
(224, 'Romanov.ClearCacheWidget', 'comment', '1.2.6', 'Add sk locale', '2019-11-04 03:07:12'),
(225, 'Romanov.ClearCacheWidget', 'comment', '1.3.0', 'Changing default regex for clearing thumbnails according to the comment https://github.com/romanov-acc/octobercms_clearcachewidget/pull/16#issuecomment-404909441', '2019-11-04 03:07:12'),
(226, 'Quang.Config', 'script', '1.0.9', 'builder_table_update_quang_config__7.php', '2019-11-04 19:11:04'),
(227, 'Quang.Config', 'comment', '1.0.9', 'Updated table quang_config_', '2019-11-04 19:11:04'),
(228, 'Quang.Post', 'script', '1.0.17', 'builder_table_update_quang_post_category_8.php', '2019-11-04 20:13:43'),
(229, 'Quang.Post', 'comment', '1.0.17', 'Updated table quang_post_category', '2019-11-04 20:13:43'),
(230, 'Quang.Config', 'script', '1.0.10', 'builder_table_update_quang_config__8.php', '2019-11-04 20:19:27'),
(231, 'Quang.Config', 'comment', '1.0.10', 'Updated table quang_config_', '2019-11-04 20:19:27'),
(232, 'Quang.Config', 'script', '1.0.11', 'builder_table_update_quang_config__9.php', '2019-11-05 00:00:46'),
(233, 'Quang.Config', 'comment', '1.0.11', 'Updated table quang_config_', '2019-11-05 00:00:46'),
(234, 'Quang.Config', 'script', '1.0.12', 'builder_table_update_quang_config__10.php', '2019-11-05 00:38:07'),
(235, 'Quang.Config', 'comment', '1.0.12', 'Updated table quang_config_', '2019-11-05 00:38:07'),
(236, 'Quang.Config', 'script', '1.0.13', 'builder_table_update_quang_config__11.php', '2019-11-05 01:05:39'),
(237, 'Quang.Config', 'comment', '1.0.13', 'Updated table quang_config_', '2019-11-05 01:05:39');

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
(5, 'Quang.Config', '1.0.13', '2019-11-05 01:05:39', 0, 0),
(6, 'SureSoftware.PowerSEO', '2.0.4', '2019-10-20 19:41:03', 0, 0),
(7, 'Quang.Post', '1.0.17', '2019-11-04 20:13:43', 0, 0),
(8, 'AnandPatel.WysiwygEditors', '1.2.9', '2019-10-20 20:34:46', 0, 0),
(9, 'Quang.Album', '1.0.7', '2019-10-21 20:41:02', 0, 0),
(10, 'Quang.Contact', '1.0.1', '2019-11-03 23:55:18', 0, 0),
(11, 'Romanov.ClearCacheWidget', '1.3.0', '2019-11-04 03:07:12', 0, 0);

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
(1, 'rainlab_builder_settings', '{\"author_name\":\"Quang\",\"author_namespace\":\"Quang\"}'),
(2, 'anandpatel_wysiwygeditors_settings', '{\"editor\":\"ckeditor\",\"editor_width\":\"\",\"editor_height\":\"\",\"toolbar_tinymce\":\"undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media ocmediamanager\",\"toolbar_ckeditor\":\"[\'Undo\', \'Redo\'], [\'Cut\', \'Copy\', \'Paste\', \'PasteText\', \'PasteFromWord\'], [\'Format\', \'FontSize\'], [\'ShowBlocks\', \'SelectAll\', \'RemoveFormat\'], [\'Source\'], [\'Maximize\'], \'\\/\', [\'Bold\', \'Italic\', \'Underline\', \'Strike\'], [\'JustifyLeft\', \'JustifyCenter\', \'JustifyRight\', \'JustifyBlock\'], [\'BulletedList\', \'NumberedList\', \'Outdent\', \'Indent\'], [\'TextColor\', \'BGColor\'], [\'Link\', \'Unlink\', \'Anchor\'], [\'Image\', \'Table\',\'HorizontalRule\',\'lineheight\',\'preview\', \'oembed\', \'SpecialChar\', \'OcMediaManager\']\",\"cms_page_as_wysiwyg\":\"0\",\"cms_content_as_wysiwyg\":\"1\",\"cms_partial_as_wysiwyg\":\"0\",\"cms_layout_as_wysiwyg\":\"0\",\"others_as_wysiwyg\":\"0\",\"blog_as_wysiwyg\":\"1\"}'),
(3, 'backend_brand_settings', '{\"app_name\":\"Sea Wedding\",\"app_tagline\":\"\\u0110\\u0103ng Nh\\u1eadp\",\"primary_color\":\"#34495e\",\"secondary_color\":\"#e67e22\",\"accent_color\":\"#3498db\",\"menu_mode\":\"inline\",\"custom_css\":\"\"}'),
(4, 'suresoftware_powerseo_settings', '{\"enable_title\":\"0\",\"enable_canonical_url\":\"0\",\"title\":\"\",\"other_tags\":\"\",\"enable_og_tags\":\"1\",\"og_sitename\":\"\",\"og_fb_appid\":\"\"}');

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
-- Chỉ mục cho bảng `quang_album_`
--
ALTER TABLE `quang_album_`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quang_album_album_category`
--
ALTER TABLE `quang_album_album_category`
  ADD PRIMARY KEY (`album_id`,`category_id`);

--
-- Chỉ mục cho bảng `quang_album_category`
--
ALTER TABLE `quang_album_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quang_config_`
--
ALTER TABLE `quang_config_`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quang_post_`
--
ALTER TABLE `quang_post_`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quang_post_category`
--
ALTER TABLE `quang_post_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quang_post_post_category`
--
ALTER TABLE `quang_post_post_category`
  ADD PRIMARY KEY (`posts_id`,`category_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `flynsarmy_menu_menuitems`
--
ALTER TABLE `flynsarmy_menu_menuitems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- AUTO_INCREMENT cho bảng `quang_album_`
--
ALTER TABLE `quang_album_`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `quang_album_category`
--
ALTER TABLE `quang_album_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `quang_post_`
--
ALTER TABLE `quang_post_`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `quang_post_category`
--
ALTER TABLE `quang_post_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT cho bảng `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
