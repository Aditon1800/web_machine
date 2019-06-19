-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июн 19 2019 г., 23:03
-- Версия сервера: 10.1.40-MariaDB
-- Версия PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `web_machine`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_commentmeta`
--

CREATE TABLE `wbm_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_comments`
--

CREATE TABLE `wbm_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wbm_comments`
--

INSERT INTO `wbm_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-06-14 16:17:40', '2019-06-14 16:17:40', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_links`
--

CREATE TABLE `wbm_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_options`
--

CREATE TABLE `wbm_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wbm_options`
--

INSERT INTO `wbm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/workout/web_machine/lesson_2/wordpress', 'yes'),
(2, 'home', 'http://localhost/workout/web_machine/lesson_2/wordpress', 'yes'),
(3, 'blogname', 'bebe', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'aditon1800@mail.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=24&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:35:\"redux-framework/redux-framework.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:95:\"/opt/lampp/htdocs/workout/web_machine/lesson_2/wordpress/wp-content/plugins/akismet/akismet.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'bebe', 'yes'),
(41, 'stylesheet', 'bebe', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '24', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wbm_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1560979060;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1561004260;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1561047460;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1561047473;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1561047475;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.2-partial-1.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.1\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-rollback-1.zip\";}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1560961092;s:15:\"version_checked\";s:5:\"5.2.1\";s:12:\"translations\";a:0:{}}', 'no'),
(117, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1560685797;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1560961094;s:7:\"checked\";a:4:{s:4:\"bebe\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_timeout_browser_0c644c18d84777b9fdc0e09bdccd4f8c', '1561133874', 'no'),
(122, '_site_transient_browser_0c644c18d84777b9fdc0e09bdccd4f8c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"75.0.3770.80\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(123, '_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89', '1561133875', 'no'),
(124, '_site_transient_php_check_472f71d2a071d463a95f84346288dc89', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(158, 'current_theme', 'Bebe', 'yes'),
(159, 'theme_mods_bebe', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:4;s:11:\"footer-menu\";i:5;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(167, 'recently_activated', 'a:0:{}', 'yes'),
(170, 'r_notice_data', '{\"type\":\"redux-message\",\"title\":\"<strong>Redux v4 Beta:  We Need Your Help!<\\/strong><br\\/>\\r\\n\\r\\n\",\"message\":\"The long in-development Redux v4 Beta is nearing completion and we could really use your help!  To learn how to do so, please read our latest blog post: <a href=\\\"https:\\/\\/reduxframework.com\\/2018\\/11\\/redux-4-0-we-need-your-help\\/\\\">Redux 4.0 - We Need Your Help!<\\/a>\",\"color\":\"rgba(0,162,227,1)\"}\n', 'yes'),
(171, 'redux_blast', '1560687300', 'yes'),
(172, 'redux_version_upgraded_from', '3.6.15', 'yes'),
(173, 'redux_demo', 'a:70:{s:12:\"opt-checkbox\";s:1:\"1\";s:15:\"opt-multi-check\";a:3:{i:1;s:1:\"1\";i:2;s:1:\"0\";i:3;s:1:\"0\";}s:9:\"opt-radio\";s:1:\"2\";s:12:\"opt-sortable\";a:3:{s:8:\"Text One\";s:6:\"Item 1\";s:8:\"Text Two\";s:6:\"Item 2\";s:10:\"Text Three\";s:6:\"Item 3\";}s:18:\"opt-check-sortable\";a:3:{s:3:\"cb1\";b:0;s:3:\"cb2\";b:1;s:3:\"cb3\";b:0;}s:12:\"text-example\";s:12:\"Default Text\";s:17:\"text-example-hint\";s:12:\"Default Text\";s:12:\"opt-textarea\";s:12:\"Default Text\";s:10:\"opt-editor\";s:27:\"Powered by Redux Framework.\";s:15:\"opt-editor-tiny\";s:27:\"Powered by Redux Framework.\";s:18:\"opt-ace-editor-css\";s:29:\"#header{\n   margin: 0 auto;\n}\";s:17:\"opt-ace-editor-js\";s:39:\"jQuery(document).ready(function(){\n\n});\";s:18:\"opt-ace-editor-php\";s:28:\"<?php\n    echo \"PHP String\";\";s:15:\"opt-color-title\";s:7:\"#000000\";s:16:\"opt-color-footer\";s:7:\"#dd9933\";s:16:\"opt-color-header\";a:2:{s:4:\"from\";s:7:\"#1e73be\";s:2:\"to\";s:7:\"#00897e\";}s:14:\"opt-color-rgba\";a:2:{s:5:\"color\";s:7:\"#7e33dd\";s:5:\"alpha\";s:2:\".8\";}s:14:\"opt-link-color\";a:3:{s:7:\"regular\";s:4:\"#aaa\";s:5:\"hover\";s:4:\"#bbb\";s:6:\"active\";s:4:\"#ccc\";}s:17:\"opt-palette-color\";s:3:\"red\";s:17:\"opt-header-border\";a:6:{s:12:\"border-color\";s:7:\"#1e73be\";s:12:\"border-style\";s:5:\"solid\";s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";}s:26:\"opt-header-border-expanded\";a:6:{s:12:\"border-color\";s:7:\"#1e73be\";s:12:\"border-style\";s:5:\"solid\";s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";}s:14:\"opt-dimensions\";a:2:{s:5:\"width\";i:200;s:6:\"height\";i:100;}s:20:\"opt-dimensions-width\";a:2:{s:5:\"width\";i:200;s:6:\"height\";i:100;}s:11:\"opt-spacing\";a:4:{s:10:\"margin-top\";s:3:\"1px\";s:12:\"margin-right\";s:3:\"2px\";s:13:\"margin-bottom\";s:3:\"3px\";s:11:\"margin-left\";s:3:\"4px\";}s:20:\"opt-spacing-expanded\";a:4:{s:10:\"margin-top\";s:3:\"1px\";s:12:\"margin-right\";s:3:\"2px\";s:13:\"margin-bottom\";s:3:\"3px\";s:11:\"margin-left\";s:3:\"4px\";}s:9:\"opt-media\";a:1:{s:3:\"url\";s:53:\"https://s.wordpress.org/style/images/codeispoetry.png\";}s:14:\"opt-button-set\";s:1:\"2\";s:20:\"opt-button-set-multi\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:9:\"switch-on\";b:1;s:10:\"switch-off\";b:0;s:13:\"switch-parent\";i:0;s:13:\"switch-child1\";b:0;s:13:\"switch-child2\";b:0;s:10:\"opt-select\";s:1:\"2\";s:21:\"opt-select-stylesheet\";s:11:\"default.css\";s:19:\"opt-select-optgroup\";s:1:\"2\";s:16:\"opt-multi-select\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:23:\"opt-image-select-layout\";s:1:\"2\";s:12:\"opt-patterns\";i:0;s:16:\"opt-image-select\";s:1:\"2\";s:11:\"opt-presets\";i:0;s:22:\"opt-select_image-field\";s:130:\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/plugins/redux-framework/ReduxCore/../sample/presets/preset2.png\";s:16:\"opt-select-image\";s:134:\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/plugins/redux-framework/ReduxCore/../sample/patterns/triangular.png\";s:16:\"opt-slider-label\";i:250;s:15:\"opt-slider-text\";i:75;s:17:\"opt-slider-select\";a:2:{i:1;i:100;i:2;i:300;}s:16:\"opt-slider-float\";d:0.5;s:11:\"opt-spinner\";s:2:\"40\";s:19:\"opt-typography-body\";a:4:{s:5:\"color\";s:7:\"#dd9933\";s:9:\"font-size\";s:4:\"30px\";s:11:\"font-family\";s:26:\"Arial,Helvetica,sans-serif\";s:11:\"font-weight\";s:6:\"Normal\";}s:14:\"opt-typography\";a:6:{s:5:\"color\";s:4:\"#333\";s:10:\"font-style\";s:3:\"700\";s:11:\"font-family\";s:4:\"Abel\";s:6:\"google\";b:1;s:9:\"font-size\";s:4:\"33px\";s:11:\"line-height\";s:4:\"40px\";}s:19:\"opt-homepage-layout\";a:3:{s:7:\"enabled\";a:4:{s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}s:8:\"disabled\";a:0:{}s:6:\"backup\";a:0:{}}s:21:\"opt-homepage-layout-2\";a:2:{s:8:\"disabled\";a:2:{s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";}s:7:\"enabled\";a:2:{s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}}s:14:\"opt-text-email\";s:13:\"test@test.com\";s:12:\"opt-text-url\";s:25:\"http://reduxframework.com\";s:16:\"opt-text-numeric\";s:1:\"0\";s:22:\"opt-text-comma-numeric\";s:1:\"0\";s:25:\"opt-text-no-special-chars\";s:1:\"0\";s:20:\"opt-text-str_replace\";s:20:\"This is the default.\";s:21:\"opt-text-preg_replace\";s:1:\"0\";s:24:\"opt-text-custom_validate\";s:1:\"0\";s:20:\"opt-textarea-no-html\";s:27:\"No HTML is allowed in here.\";s:17:\"opt-textarea-html\";s:24:\"HTML is allowed in here.\";s:22:\"opt-textarea-some-html\";s:36:\"<p>Some HTML is allowed in here.</p>\";s:18:\"opt-required-basic\";b:0;s:19:\"opt-required-nested\";b:0;s:29:\"opt-required-nested-buttonset\";s:11:\"button-text\";s:19:\"opt-required-select\";s:10:\"no-sidebar\";s:32:\"opt-required-select-left-sidebar\";s:0:\"\";s:33:\"opt-required-select-right-sidebar\";s:0:\"\";s:19:\"opt-customizer-only\";s:1:\"2\";}', 'yes'),
(174, 'redux_demo-transients', 'a:2:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1560687300;}', 'yes'),
(185, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(193, 'bebe_options', 'a:18:{s:8:\"last_tab\";s:1:\"1\";s:8:\"bebelogo\";a:9:{s:3:\"url\";s:91:\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/logo.png\";s:2:\"id\";s:2:\"15\";s:6:\"height\";s:3:\"110\";s:5:\"width\";s:3:\"318\";s:9:\"thumbnail\";s:99:\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/logo-150x110.png\";s:5:\"title\";s:4:\"logo\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:13:\"bebelogosmall\";a:9:{s:3:\"url\";s:99:\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/logo-respons.png\";s:2:\"id\";s:2:\"16\";s:6:\"height\";s:2:\"69\";s:5:\"width\";s:3:\"200\";s:9:\"thumbnail\";s:106:\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/logo-respons-150x69.png\";s:5:\"title\";s:12:\"logo-respons\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:14:\"bebefooterlogo\";a:9:{s:3:\"url\";s:97:\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/logo-small.png\";s:2:\"id\";s:2:\"19\";s:6:\"height\";s:2:\"37\";s:5:\"width\";s:2:\"78\";s:9:\"thumbnail\";s:97:\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/logo-small.png\";s:5:\"title\";s:10:\"logo-small\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:10:\"bebeslogan\";s:16:\"Slogan text here\";s:2:\"fb\";s:1:\"#\";s:5:\"insta\";s:1:\"#\";s:4:\"pint\";s:1:\"#\";s:2:\"tw\";s:1:\"#\";s:2:\"yt\";s:1:\"#\";s:13:\"homepageslide\";a:2:{i:0;a:9:{s:5:\"title\";s:16:\"Header Text here\";s:11:\"description\";s:76:\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.\";s:3:\"url\";s:1:\"#\";s:4:\"sort\";s:1:\"0\";s:13:\"attachment_id\";s:2:\"17\";s:5:\"thumb\";s:101:\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/slide1-150x150.jpg\";s:5:\"image\";s:93:\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/slide1.jpg\";s:6:\"height\";s:3:\"356\";s:5:\"width\";s:4:\"1000\";}i:1;a:9:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:3:\"url\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:13:\"attachment_id\";s:2:\"18\";s:5:\"thumb\";s:101:\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/slide2-150x150.jpg\";s:5:\"image\";s:93:\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/slide2.jpg\";s:6:\"height\";s:3:\"356\";s:5:\"width\";s:4:\"1000\";}}s:13:\"bebefooternav\";s:11:\"Information\";s:18:\"bebefootercontacts\";s:8:\"Contacts\";s:9:\"bebephone\";s:15:\"8 800 435-17-20\";s:9:\"bebeemail\";s:14:\"nfo@bebe.co.uk\";s:11:\"bebeaddress\";s:30:\"Germany Berlin, Main street 43\";s:10:\"copyrights\";s:25:\"BEBE. All rights reserved\";s:17:\"bebeformshortcode\";s:24:\"[contact-form-7 id=\"23\"]\";}', 'yes'),
(194, 'bebe_options-transients', 'a:3:{s:14:\"changed_values\";a:1:{s:17:\"bebeformshortcode\";s:0:\"\";}s:9:\"last_save\";i:1560721139;s:7:\"notices\";a:1:{s:8:\"warnings\";a:0:{}}}', 'yes'),
(198, 'recovery_mode_email_last_sent', '1560716056', 'yes'),
(203, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1560961094;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:35:\"redux-framework/redux-framework.php\";s:6:\"3.6.15\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"redux-framework/redux-framework.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/redux-framework\";s:4:\"slug\";s:15:\"redux-framework\";s:6:\"plugin\";s:35:\"redux-framework/redux-framework.php\";s:11:\"new_version\";s:6:\"3.6.15\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/redux-framework/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/redux-framework.3.6.15.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/redux-framework/assets/icon-256x256.png?rev=995554\";s:2:\"1x\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";s:3:\"svg\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/redux-framework/assets/banner-772x250.png?rev=793165\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(204, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1560719619;s:7:\"version\";s:5:\"5.1.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(244, '_site_transient_timeout_theme_roots', '1560962893', 'no'),
(245, '_site_transient_theme_roots', 'a:4:{s:4:\"bebe\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(263, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_postmeta`
--

CREATE TABLE `wbm_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wbm_postmeta`
--

INSERT INTO `wbm_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1560792889:1'),
(4, 5, '_edit_lock', '1560686709:1'),
(5, 6, '_edit_lock', '1560686962:1'),
(51, 12, '_menu_item_type', 'custom'),
(52, 12, '_menu_item_menu_item_parent', '0'),
(53, 12, '_menu_item_object_id', '12'),
(54, 12, '_menu_item_object', 'custom'),
(55, 12, '_menu_item_target', ''),
(56, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 12, '_menu_item_xfn', ''),
(58, 12, '_menu_item_url', 'http://localhost/workout/web_machine/lesson_2/wordpress/'),
(60, 13, '_menu_item_type', 'post_type'),
(61, 13, '_menu_item_menu_item_parent', '0'),
(62, 13, '_menu_item_object_id', '2'),
(63, 13, '_menu_item_object', 'page'),
(64, 13, '_menu_item_target', ''),
(65, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 13, '_menu_item_xfn', ''),
(67, 13, '_menu_item_url', ''),
(69, 14, '_menu_item_type', 'post_type'),
(70, 14, '_menu_item_menu_item_parent', '0'),
(71, 14, '_menu_item_object_id', '1'),
(72, 14, '_menu_item_object', 'post'),
(73, 14, '_menu_item_target', ''),
(74, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 14, '_menu_item_xfn', ''),
(76, 14, '_menu_item_url', ''),
(77, 15, '_wp_attached_file', '2019/06/logo.png'),
(78, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:318;s:6:\"height\";i:110;s:4:\"file\";s:16:\"2019/06/logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x110.png\";s:5:\"width\";i:150;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x104.png\";s:5:\"width\";i:300;s:6:\"height\";i:104;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 16, '_wp_attached_file', '2019/06/logo-respons.png'),
(80, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:69;s:4:\"file\";s:24:\"2019/06/logo-respons.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-respons-150x69.png\";s:5:\"width\";i:150;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 17, '_wp_attached_file', '2019/06/slide1.jpg'),
(82, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:356;s:4:\"file\";s:18:\"2019/06/slide1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide1-300x107.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide1-768x273.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:273;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 18, '_wp_attached_file', '2019/06/slide2.jpg'),
(84, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:356;s:4:\"file\";s:18:\"2019/06/slide2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide2-300x107.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide2-768x273.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:273;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 19, '_wp_attached_file', '2019/06/logo-small.png'),
(86, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:78;s:6:\"height\";i:37;s:4:\"file\";s:22:\"2019/06/logo-small.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 20, '_menu_item_type', 'post_type'),
(88, 20, '_menu_item_menu_item_parent', '0'),
(89, 20, '_menu_item_object_id', '2'),
(90, 20, '_menu_item_object', 'page'),
(91, 20, '_menu_item_target', ''),
(92, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(93, 20, '_menu_item_xfn', ''),
(94, 20, '_menu_item_url', ''),
(96, 21, '_menu_item_type', 'custom'),
(97, 21, '_menu_item_menu_item_parent', '0'),
(98, 21, '_menu_item_object_id', '21'),
(99, 21, '_menu_item_object', 'custom'),
(100, 21, '_menu_item_target', ''),
(101, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 21, '_menu_item_xfn', ''),
(103, 21, '_menu_item_url', '#'),
(105, 22, '_menu_item_type', 'post_type'),
(106, 22, '_menu_item_menu_item_parent', '0'),
(107, 22, '_menu_item_object_id', '1'),
(108, 22, '_menu_item_object', 'post'),
(109, 22, '_menu_item_target', ''),
(110, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(111, 22, '_menu_item_xfn', ''),
(112, 22, '_menu_item_url', ''),
(114, 23, '_form', '[text* your-name placeholder\"Name\"]\n[email* your-email placeholder\"Email\"]\n[textarea your-message placeholder\"Your Message\"]\n[submit \"Send\"]'),
(115, 23, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:21:\"bebe \"[your-subject]\"\";s:6:\"sender\";s:25:\"bebe <aditon1800@mail.ru>\";s:9:\"recipient\";s:18:\"aditon1800@mail.ru\";s:4:\"body\";s:198:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on bebe (http://localhost/workout/web_machine/lesson_2/wordpress)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(116, 23, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:21:\"bebe \"[your-subject]\"\";s:6:\"sender\";s:25:\"bebe <aditon1800@mail.ru>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on bebe (http://localhost/workout/web_machine/lesson_2/wordpress)\";s:18:\"additional_headers\";s:28:\"Reply-To: aditon1800@mail.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(117, 23, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(118, 23, '_additional_settings', ''),
(119, 23, '_locale', 'en_US'),
(120, 24, '_edit_lock', '1560973661:1'),
(121, 24, '_edit_last', '1'),
(122, 24, 'bebe_phone-label', 'Phone'),
(123, 24, 'bebe_address-label', 'Address'),
(124, 24, 'bebe_email-label', 'Email'),
(125, 24, '_wp_page_template', 'template-homepage.php'),
(126, 3, '_edit_lock', '1560792900:1'),
(127, 26, '_wp_attached_file', '2019/06/about.jpg'),
(128, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:254;s:6:\"height\";i:168;s:4:\"file\";s:17:\"2019/06/about.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"about-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 27, '_wp_attached_file', '2019/06/about-1.png'),
(130, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:51;s:6:\"height\";i:44;s:4:\"file\";s:19:\"2019/06/about-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 28, '_wp_attached_file', '2019/06/about-2.png'),
(132, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:51;s:4:\"file\";s:19:\"2019/06/about-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 29, '_wp_attached_file', '2019/06/about-3.png'),
(134, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:55;s:6:\"height\";i:46;s:4:\"file\";s:19:\"2019/06/about-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 24, 'bebe_about-title', 'About Us'),
(137, 24, 'bebe_about-desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into'),
(138, 24, 'bebe_info-1-img', 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/about-1.png'),
(139, 24, 'bebe_info-title-1', 'Lorem ipsum'),
(140, 24, 'bebe_info-desc-1', 'Lorem Ipsum is simply dummy text printing'),
(141, 24, 'bebe_info-2-img', 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/about-2.png'),
(142, 24, 'bebe_info-title-2', 'Simple text here'),
(143, 24, 'bebe_info-desc-2', 'Lorem Ipsum is simply of the'),
(144, 24, 'bebe_info-3-img', 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/about-3.png'),
(145, 24, 'bebe_info-title-3', 'Dummy text'),
(146, 24, 'bebe_info-desc-3', 'Lorem Ipsum is simply dummy text of the'),
(147, 24, 'bebe_about-link', '#'),
(148, 24, 'bebe_about-image', 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/about.jpg'),
(149, 1, '_edit_lock', '1560973814:1'),
(154, 33, '_edit_lock', '1560978197:1'),
(157, 35, '_edit_lock', '1560801574:1'),
(158, 36, '_edit_lock', '1560801577:1'),
(159, 37, '_edit_lock', '1560977110:1'),
(162, 39, '_edit_lock', '1560977118:1'),
(165, 41, '_edit_lock', '1560977305:1'),
(262, 66, '_edit_last', '1'),
(263, 66, '_edit_lock', '1560805307:1'),
(264, 67, '_wp_attached_file', '2019/06/1.jpg'),
(265, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:341;s:4:\"file\";s:13:\"2019/06/1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-195x300.jpg\";s:5:\"width\";i:195;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:13:\"1-222x183.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:13:\"1-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:13:\"1-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(266, 68, '_wp_attached_file', '2019/06/2.jpg'),
(267, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:164;s:4:\"file\";s:13:\"2019/06/2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:13:\"2-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:13:\"2-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(268, 69, '_wp_attached_file', '2019/06/3.jpg'),
(269, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:456;s:6:\"height\";i:164;s:4:\"file\";s:13:\"2019/06/3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:13:\"3-235x164.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:13:\"3-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:13:\"3-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(270, 70, '_wp_attached_file', '2019/06/4.jpg'),
(271, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:456;s:6:\"height\";i:164;s:4:\"file\";s:13:\"2019/06/4.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:13:\"4-235x164.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:13:\"4-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:13:\"4-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(272, 71, '_wp_attached_file', '2019/06/5.jpg'),
(273, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:164;s:4:\"file\";s:13:\"2019/06/5.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:13:\"5-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:13:\"5-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(274, 72, '_wp_attached_file', '2019/06/6.jpg'),
(275, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:341;s:4:\"file\";s:13:\"2019/06/6.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-195x300.jpg\";s:5:\"width\";i:195;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:13:\"6-222x183.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:13:\"6-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:13:\"6-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(276, 73, '_wp_attached_file', '2019/06/7.jpg'),
(277, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:164;s:4:\"file\";s:13:\"2019/06/7.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:13:\"7-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:13:\"7-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(278, 74, '_wp_attached_file', '2019/06/8.jpg'),
(279, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:164;s:4:\"file\";s:13:\"2019/06/8.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:13:\"8-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:13:\"8-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(282, 76, '_wp_attached_file', '2019/06/10.jpg'),
(283, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:456;s:6:\"height\";i:164;s:4:\"file\";s:14:\"2019/06/10.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"10-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:14:\"10-235x164.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:14:\"10-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:14:\"10-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(284, 66, '_thumbnail_id', '67'),
(285, 77, '_edit_last', '1'),
(286, 77, '_edit_lock', '1560805332:1'),
(287, 77, '_thumbnail_id', '68'),
(288, 78, '_edit_last', '1'),
(289, 78, '_edit_lock', '1560805345:1'),
(290, 78, '_thumbnail_id', '69'),
(291, 79, '_edit_last', '1'),
(292, 79, '_edit_lock', '1560805355:1'),
(293, 79, '_thumbnail_id', '70'),
(294, 80, '_edit_last', '1'),
(295, 80, '_edit_lock', '1560805370:1'),
(296, 80, '_thumbnail_id', '71'),
(297, 81, '_edit_last', '1'),
(298, 81, '_edit_lock', '1560805382:1'),
(299, 81, '_thumbnail_id', '72'),
(300, 82, '_edit_last', '1'),
(301, 82, '_edit_lock', '1560805414:1'),
(302, 82, '_thumbnail_id', '73'),
(303, 83, '_edit_last', '1'),
(304, 83, '_edit_lock', '1560805424:1'),
(305, 83, '_thumbnail_id', '74'),
(306, 84, '_edit_last', '1'),
(307, 84, '_edit_lock', '1560805432:1'),
(309, 85, '_edit_last', '1'),
(310, 85, '_edit_lock', '1560806565:1'),
(311, 85, '_thumbnail_id', '76'),
(312, 86, '_edit_last', '1'),
(313, 86, '_edit_lock', '1560808320:1'),
(314, 86, '_thumbnail_id', '67'),
(315, 87, '_edit_last', '1'),
(316, 87, '_edit_lock', '1560806706:1'),
(317, 87, '_thumbnail_id', '68'),
(318, 88, '_edit_last', '1'),
(319, 88, '_edit_lock', '1560806720:1'),
(320, 88, '_thumbnail_id', '69'),
(321, 89, '_edit_last', '1'),
(322, 89, '_edit_lock', '1560806732:1'),
(323, 89, '_thumbnail_id', '70'),
(324, 90, '_edit_last', '1'),
(325, 90, '_edit_lock', '1560806743:1'),
(326, 90, '_thumbnail_id', '71'),
(327, 91, '_edit_last', '1'),
(328, 91, '_edit_lock', '1560806754:1'),
(329, 91, '_thumbnail_id', '72'),
(330, 92, '_edit_last', '1'),
(331, 92, '_edit_lock', '1560968572:1'),
(332, 92, '_thumbnail_id', '96'),
(333, 93, '_edit_last', '1'),
(334, 93, '_edit_lock', '1560808781:1'),
(335, 93, '_thumbnail_id', '74'),
(336, 94, '_edit_last', '1'),
(337, 94, '_edit_lock', '1560809116:1'),
(339, 95, '_edit_last', '1'),
(340, 95, '_edit_lock', '1560808919:1'),
(341, 95, '_thumbnail_id', '76'),
(342, 96, '_wp_attached_file', '2019/06/9.jpg'),
(343, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:456;s:6:\"height\";i:164;s:4:\"file\";s:13:\"2019/06/9.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:13:\"9-235x164.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:13:\"9-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:13:\"9-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(344, 94, '_thumbnail_id', '73'),
(346, 98, '_wp_attached_file', '2019/06/slider.jpg'),
(347, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:505;s:4:\"file\";s:18:\"2019/06/slider.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slider-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slider-768x422.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:422;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:18:\"slider-235x183.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:18:\"slider-370x280.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:18:\"slider-222x341.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:18:\"slider-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:18:\"slider-456x164.jpg\";s:5:\"width\";i:456;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(349, 33, '_thumbnail_id', '98'),
(351, 1, '_thumbnail_id', '98'),
(353, 37, '_thumbnail_id', '98'),
(357, 41, '_thumbnail_id', '98'),
(359, 39, '_thumbnail_id', '98');

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_posts`
--

CREATE TABLE `wbm_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wbm_posts`
--

INSERT INTO `wbm_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-06-14 16:17:40', '2019-06-14 16:17:40', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-06-19 19:52:36', '2019-06-19 19:52:36', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-06-14 16:17:40', '2019-06-14 16:17:40', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-06-14 16:17:40', '2019-06-14 16:17:40', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-06-14 16:17:40', '2019-06-14 16:17:40', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/workout/web_machine/lesson_2/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-06-14 16:17:40', '2019-06-14 16:17:40', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-06-14 16:17:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-14 16:17:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2019-06-16 12:04:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-16 12:04:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-06-16 12:07:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-16 12:07:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?page_id=6', 0, 'page', '', 0),
(12, 1, '2019-06-16 14:09:20', '2019-06-16 14:09:20', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-06-16 15:51:26', '2019-06-16 15:51:26', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2019-06-16 14:09:20', '2019-06-16 14:09:20', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2019-06-16 15:51:26', '2019-06-16 15:51:26', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?p=13', 2, 'nav_menu_item', '', 0),
(14, 1, '2019-06-16 14:09:20', '2019-06-16 14:09:20', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2019-06-16 15:51:26', '2019-06-16 15:51:26', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?p=14', 3, 'nav_menu_item', '', 0),
(15, 1, '2019-06-16 16:23:19', '2019-06-16 16:23:19', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-06-16 16:23:19', '2019-06-16 16:23:19', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/logo.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2019-06-16 16:23:42', '2019-06-16 16:23:42', '', 'logo-respons', '', 'inherit', 'open', 'closed', '', 'logo-respons', '', '', '2019-06-16 16:23:42', '2019-06-16 16:23:42', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/logo-respons.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2019-06-16 18:02:17', '2019-06-16 18:02:17', '', 'slide1', '', 'inherit', 'open', 'closed', '', 'slide1', '', '', '2019-06-16 18:02:17', '2019-06-16 18:02:17', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/slide1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2019-06-16 18:02:53', '2019-06-16 18:02:53', '', 'slide2', '', 'inherit', 'open', 'closed', '', 'slide2', '', '', '2019-06-16 18:02:53', '2019-06-16 18:02:53', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/slide2.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2019-06-16 20:16:26', '2019-06-16 20:16:26', '', 'logo-small', '', 'inherit', 'open', 'closed', '', 'logo-small', '', '', '2019-06-16 20:16:26', '2019-06-16 20:16:26', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/logo-small.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2019-06-16 20:34:47', '2019-06-16 20:34:47', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2019-06-16 20:34:47', '2019-06-16 20:34:47', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2019-06-16 20:34:47', '2019-06-16 20:34:47', '', 'About something', '', 'publish', 'closed', 'closed', '', 'about-something', '', '', '2019-06-16 20:34:47', '2019-06-16 20:34:47', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2019-06-16 20:34:47', '2019-06-16 20:34:47', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-06-16 20:34:47', '2019-06-16 20:34:47', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?p=22', 3, 'nav_menu_item', '', 0),
(23, 1, '2019-06-16 21:13:39', '2019-06-16 21:13:39', '[text* your-name placeholder\"Name\"]\r\n[email* your-email placeholder\"Email\"]\r\n[textarea your-message placeholder\"Your Message\"]\r\n[submit \"Send\"]\n1\nbebe \"[your-subject]\"\nbebe <aditon1800@mail.ru>\naditon1800@mail.ru\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on bebe (http://localhost/workout/web_machine/lesson_2/wordpress)\nReply-To: [your-email]\n\n\n\n\nbebe \"[your-subject]\"\nbebe <aditon1800@mail.ru>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on bebe (http://localhost/workout/web_machine/lesson_2/wordpress)\nReply-To: aditon1800@mail.ru\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-06-16 21:41:09', '2019-06-16 21:41:09', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=wpcf7_contact_form&#038;p=23', 0, 'wpcf7_contact_form', '', 0),
(24, 1, '2019-06-17 17:29:02', '2019-06-17 17:29:02', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2019-06-17 18:16:12', '2019-06-17 18:16:12', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?page_id=24', 0, 'page', '', 0),
(25, 1, '2019-06-17 17:29:02', '2019-06-17 17:29:02', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-06-17 17:29:02', '2019-06-17 17:29:02', '', 24, 'http://localhost/workout/web_machine/lesson_2/wordpress/2019/06/17/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-06-17 17:58:09', '2019-06-17 17:58:09', '', 'about', '', 'inherit', 'open', 'closed', '', 'about', '', '', '2019-06-17 17:58:09', '2019-06-17 17:58:09', '', 24, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/about.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2019-06-17 17:59:11', '2019-06-17 17:59:11', '', 'about-1', '', 'inherit', 'open', 'closed', '', 'about-1', '', '', '2019-06-17 17:59:11', '2019-06-17 17:59:11', '', 24, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/about-1.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2019-06-17 17:59:19', '2019-06-17 17:59:19', '', 'about-2', '', 'inherit', 'open', 'closed', '', 'about-2', '', '', '2019-06-17 17:59:19', '2019-06-17 17:59:19', '', 24, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/about-2.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2019-06-17 17:59:29', '2019-06-17 17:59:29', '', 'about-3', '', 'inherit', 'open', 'closed', '', 'about-3', '', '', '2019-06-17 17:59:29', '2019-06-17 17:59:29', '', 24, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/about-3.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2019-06-17 20:01:14', '2019-06-17 20:01:14', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-06-17 20:01:14', '2019-06-17 20:01:14', '', 1, 'http://localhost/workout/web_machine/lesson_2/wordpress/2019/06/17/1-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-06-17 20:01:51', '2019-06-17 20:01:51', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum eu fugiat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Markered list</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li><li>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque inventore veritatis et quasi architecto beatae vitae erno.</p>\n<!-- /wp:paragraph -->', 'First post', '', 'publish', 'open', 'open', '', 'first-post', '', '', '2019-06-19 20:51:53', '2019-06-19 20:51:53', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?p=33', 0, 'post', '', 0),
(34, 1, '2019-06-17 20:01:51', '2019-06-17 20:01:51', '<!-- wp:paragraph -->\n<p>Lorem</p>\n<!-- /wp:paragraph -->', 'First post', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-06-17 20:01:51', '2019-06-17 20:01:51', '', 33, 'http://localhost/workout/web_machine/lesson_2/wordpress/2019/06/17/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-06-17 20:01:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-17 20:01:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?p=35', 0, 'post', '', 0),
(36, 1, '2019-06-17 20:01:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-17 20:01:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?p=36', 0, 'post', '', 0),
(37, 1, '2019-06-17 20:02:15', '2019-06-17 20:02:15', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima quidem sint nesciunt ipsa illo accusamus rerum, incidunt quo in, labore cumque quis? At sequi facilis itaque, quis fugit quisquam reprehenderit optio accusantium quod doloremque vitae deserunt, quae nisi, libero accusamus modi. Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam. Totam accusantium animi vitae numquam mollitia aliquam temporibus nulla, deleniti eos soluta ea eligendi optio eius culpa necessitatibus atque, veritatis vero velit deserunt nisi voluptatum aperiam non? Dolor pariatur consequatur omnis reprehenderit illo obcaecati, recusandae magnam vel deserunt! Hic nesciunt nulla voluptatum esse sit quos vitae, distinctio est voluptate, aliquam beatae iste nostrum magnam consectetur explicabo repellat iure ab repellendus quo aut. Illum laboriosam dolor vitae deserunt nemo odit tempora asperiores aliquam minus, voluptate, in error. Temporibus vitae omnis molestiae commodi quis blanditiis, facere. Dolor explicabo, cum inventore ipsum necessitatibus, ut excepturi mollitia.</p>\n<!-- /wp:paragraph -->', 'Second Post', '', 'publish', 'open', 'open', '', 'second-post', '', '', '2019-06-19 20:47:33', '2019-06-19 20:47:33', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?p=37', 0, 'post', '', 0),
(38, 1, '2019-06-17 20:02:15', '2019-06-17 20:02:15', '<!-- wp:paragraph -->\n<p>test test test</p>\n<!-- /wp:paragraph -->', 'Second Post', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-06-17 20:02:15', '2019-06-17 20:02:15', '', 37, 'http://localhost/workout/web_machine/lesson_2/wordpress/2019/06/17/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-06-17 20:02:38', '2019-06-17 20:02:38', '<!-- wp:paragraph -->\n<p>At sequi facilis itaque, quis fugit quisquam reprehenderit optio accusantium quod doloremque vitae deserunt, quae nisi, libero accusamus modi. Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam. Totam accusantium animi vitae numquam mollitia aliquam temporibus nulla, deleniti eos soluta ea eligendi optio eius culpa necessitatibus atque, veritatis vero velit deserunt nisi voluptatum aperiam non? Dolor pariatur consequatur omnis reprehenderit illo obcaecati, recusandae magnam vel deserunt! Hic nesciunt nulla voluptatum esse sit quos vitae, distinctio est voluptate, aliquam beatae iste nostrum magnam consectetur explicabo repellat iure ab repellendus quo aut. Illum laboriosam dolor vitae deserunt nemo odit tempora asperiores aliquam minus, voluptate, in error. Temporibus vitae omnis molestiae commodi quis blanditiis, facere. Dolor explicabo, cum inventore ipsum necessitatibus, ut excepturi mollitia.</p>\n<!-- /wp:paragraph -->', 'Third Post', '', 'publish', 'open', 'open', '', 'third-post', '', '', '2019-06-19 20:47:42', '2019-06-19 20:47:42', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?p=39', 0, 'post', '', 0),
(40, 1, '2019-06-17 20:02:38', '2019-06-17 20:02:38', '<!-- wp:paragraph -->\n<p>Some text</p>\n<!-- /wp:paragraph -->', 'Third Post', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-06-17 20:02:38', '2019-06-17 20:02:38', '', 39, 'http://localhost/workout/web_machine/lesson_2/wordpress/2019/06/17/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-06-17 20:03:07', '2019-06-17 20:03:07', '<!-- wp:paragraph -->\n<p>Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam. Totam accusantium animi vitae numquam mollitia aliquam temporibus nulla, deleniti eos soluta ea eligendi optio eius culpa necessitatibus atque, veritatis vero velit deserunt nisi voluptatum aperiam non?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima quidem sint nesciunt ipsa illo accusamus rerum, incidunt quo in, labore cumque quis? At sequi facilis itaque, quis fugit quisquam reprehenderit optio accusantium quod doloremque vitae deserunt, quae nisi, libero accusamus modi. Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam.</p>\n<!-- /wp:paragraph -->', 'Fourth Post', '', 'publish', 'open', 'open', '', 'fourth-post', '', '', '2019-06-19 20:50:47', '2019-06-19 20:50:47', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?p=41', 0, 'post', '', 0),
(42, 1, '2019-06-17 20:03:07', '2019-06-17 20:03:07', '', 'Fourth Post', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-06-17 20:03:07', '2019-06-17 20:03:07', '', 41, 'http://localhost/workout/web_machine/lesson_2/wordpress/2019/06/17/41-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-06-17 21:04:09', '2019-06-17 21:04:09', '', 'Img 1', '', 'publish', 'closed', 'closed', '', 'img-1', '', '', '2019-06-17 21:04:09', '2019-06-17 21:04:09', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=post_type_name&#038;p=66', 0, 'post_type_name', '', 0),
(67, 1, '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', 66, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', 66, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', 66, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', 66, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', 66, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', 66, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', 66, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', 66, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', '10', '', 'inherit', 'open', 'closed', '', '10', '', '', '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', 66, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/10.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2019-06-17 21:04:34', '2019-06-17 21:04:34', '', 'Img 2', '', 'publish', 'closed', 'closed', '', 'img-2', '', '', '2019-06-17 21:04:34', '2019-06-17 21:04:34', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=post_type_name&#038;p=77', 0, 'post_type_name', '', 0),
(78, 1, '2019-06-17 21:04:48', '2019-06-17 21:04:48', '', 'Img 3', '', 'publish', 'closed', 'closed', '', 'img-3', '', '', '2019-06-17 21:04:48', '2019-06-17 21:04:48', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=post_type_name&#038;p=78', 0, 'post_type_name', '', 0),
(79, 1, '2019-06-17 21:04:58', '2019-06-17 21:04:58', '', 'Img 4', '', 'publish', 'closed', 'closed', '', 'img-4', '', '', '2019-06-17 21:04:58', '2019-06-17 21:04:58', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=post_type_name&#038;p=79', 0, 'post_type_name', '', 0),
(80, 1, '2019-06-17 21:05:12', '2019-06-17 21:05:12', '', 'Img 5', '', 'publish', 'closed', 'closed', '', 'img-5', '', '', '2019-06-17 21:05:13', '2019-06-17 21:05:13', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=post_type_name&#038;p=80', 0, 'post_type_name', '', 0),
(81, 1, '2019-06-17 21:05:24', '2019-06-17 21:05:24', '', 'Img 6', '', 'publish', 'closed', 'closed', '', 'img-6', '', '', '2019-06-17 21:05:24', '2019-06-17 21:05:24', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=post_type_name&#038;p=81', 0, 'post_type_name', '', 0),
(82, 1, '2019-06-17 21:05:38', '2019-06-17 21:05:38', '', 'Img 7', '', 'publish', 'closed', 'closed', '', 'img-7', '', '', '2019-06-17 21:05:38', '2019-06-17 21:05:38', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=post_type_name&#038;p=82', 0, 'post_type_name', '', 0),
(83, 1, '2019-06-17 21:06:07', '2019-06-17 21:06:07', '', 'Img 8', '', 'publish', 'closed', 'closed', '', 'img-8', '', '', '2019-06-17 21:06:07', '2019-06-17 21:06:07', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=post_type_name&#038;p=83', 0, 'post_type_name', '', 0),
(84, 1, '2019-06-17 21:06:16', '2019-06-17 21:06:16', '', 'Img 9', '', 'publish', 'closed', 'closed', '', 'img-9', '', '', '2019-06-17 21:06:16', '2019-06-17 21:06:16', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=post_type_name&#038;p=84', 0, 'post_type_name', '', 0),
(85, 1, '2019-06-17 21:06:29', '2019-06-17 21:06:29', '', 'Img 10', '', 'publish', 'closed', 'closed', '', 'img-10', '', '', '2019-06-17 21:06:29', '2019-06-17 21:06:29', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=post_type_name&#038;p=85', 0, 'post_type_name', '', 0),
(86, 1, '2019-06-17 21:27:10', '2019-06-17 21:27:10', '', 'Img 1', '', 'publish', 'closed', 'closed', '', 'img-1', '', '', '2019-06-17 21:38:59', '2019-06-17 21:38:59', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=gallery&#038;p=86', 0, 'gallery', '', 0),
(87, 1, '2019-06-17 21:27:29', '2019-06-17 21:27:29', '', 'Img 2', '', 'publish', 'closed', 'closed', '', 'img-2', '', '', '2019-06-17 21:27:29', '2019-06-17 21:27:29', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=gallery&#038;p=87', 0, 'gallery', '', 0),
(88, 1, '2019-06-17 21:27:42', '2019-06-17 21:27:42', '', 'Img 3', '', 'publish', 'closed', 'closed', '', 'img-3', '', '', '2019-06-17 21:27:42', '2019-06-17 21:27:42', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=gallery&#038;p=88', 0, 'gallery', '', 0),
(89, 1, '2019-06-17 21:27:55', '2019-06-17 21:27:55', '', 'Img 4', '', 'publish', 'closed', 'closed', '', 'img-4', '', '', '2019-06-17 21:27:55', '2019-06-17 21:27:55', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=gallery&#038;p=89', 0, 'gallery', '', 0),
(90, 1, '2019-06-17 21:28:06', '2019-06-17 21:28:06', '', 'Img 5', '', 'publish', 'closed', 'closed', '', 'img-5', '', '', '2019-06-17 21:28:06', '2019-06-17 21:28:06', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=gallery&#038;p=90', 0, 'gallery', '', 0),
(91, 1, '2019-06-17 21:28:15', '2019-06-17 21:28:15', '', 'Img 6', '', 'publish', 'closed', 'closed', '', 'img-6', '', '', '2019-06-17 21:28:15', '2019-06-17 21:28:15', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=gallery&#038;p=91', 0, 'gallery', '', 0),
(92, 1, '2019-06-17 21:28:27', '2019-06-17 21:28:27', '', 'Img 7', '', 'publish', 'closed', 'closed', '', 'img-7', '', '', '2019-06-17 22:07:52', '2019-06-17 22:07:52', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=gallery&#038;p=92', 0, 'gallery', '', 0),
(93, 1, '2019-06-17 21:28:38', '2019-06-17 21:28:38', '', 'Img 8', '', 'publish', 'closed', 'closed', '', 'img-8', '', '', '2019-06-17 22:02:04', '2019-06-17 22:02:04', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=gallery&#038;p=93', 0, 'gallery', '', 0),
(94, 1, '2019-06-17 21:28:46', '2019-06-17 21:28:46', '', 'Img 9', '', 'publish', 'closed', 'closed', '', 'img-9', '', '', '2019-06-17 22:07:39', '2019-06-17 22:07:39', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=gallery&#038;p=94', 0, 'gallery', '', 0),
(95, 1, '2019-06-17 21:29:00', '2019-06-17 21:29:00', '', 'Img 10', '', 'publish', 'closed', 'closed', '', 'img-10', '', '', '2019-06-17 22:02:37', '2019-06-17 22:02:37', '', 0, 'http://localhost/workout/web_machine/lesson_2/wordpress/?post_type=gallery&#038;p=95', 0, 'gallery', '', 0),
(96, 1, '2019-06-17 22:04:43', '2019-06-17 22:04:43', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2019-06-17 22:04:43', '2019-06-17 22:04:43', '', 94, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/9.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2019-06-19 19:50:22', '2019-06-19 19:50:22', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum eu fugiat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Markered list</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li><li>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque inventore veritatis et quasi architecto beatae vitae erno.</p>\n<!-- /wp:paragraph -->', 'First post', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-06-19 19:50:22', '2019-06-19 19:50:22', '', 33, 'http://localhost/workout/web_machine/lesson_2/wordpress/2019/06/19/33-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-06-19 19:52:05', '2019-06-19 19:52:05', '', 'slider', '', 'inherit', 'open', 'closed', '', 'slider', '', '', '2019-06-19 19:52:05', '2019-06-19 19:52:05', '', 33, 'http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/uploads/2019/06/slider.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2019-06-19 19:53:11', '2019-06-19 19:53:11', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima quidem sint nesciunt ipsa illo accusamus rerum, incidunt quo in, labore cumque quis? At sequi facilis itaque, quis fugit quisquam reprehenderit optio accusantium quod doloremque vitae deserunt, quae nisi, libero accusamus modi. Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam. Totam accusantium animi vitae numquam mollitia aliquam temporibus nulla, deleniti eos soluta ea eligendi optio eius culpa necessitatibus atque, veritatis vero velit deserunt nisi voluptatum aperiam non? Dolor pariatur consequatur omnis reprehenderit illo obcaecati, recusandae magnam vel deserunt! Hic nesciunt nulla voluptatum esse sit quos vitae, distinctio est voluptate, aliquam beatae iste nostrum magnam consectetur explicabo repellat iure ab repellendus quo aut. Illum laboriosam dolor vitae deserunt nemo odit tempora asperiores aliquam minus, voluptate, in error. Temporibus vitae omnis molestiae commodi quis blanditiis, facere. Dolor explicabo, cum inventore ipsum necessitatibus, ut excepturi mollitia.</p>\n<!-- /wp:paragraph -->', 'Second Post', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-06-19 19:53:11', '2019-06-19 19:53:11', '', 37, 'http://localhost/workout/web_machine/lesson_2/wordpress/2019/06/19/37-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-06-19 19:53:23', '2019-06-19 19:53:23', '<!-- wp:paragraph -->\n<p>At sequi facilis itaque, quis fugit quisquam reprehenderit optio accusantium quod doloremque vitae deserunt, quae nisi, libero accusamus modi. Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam. Totam accusantium animi vitae numquam mollitia aliquam temporibus nulla, deleniti eos soluta ea eligendi optio eius culpa necessitatibus atque, veritatis vero velit deserunt nisi voluptatum aperiam non? Dolor pariatur consequatur omnis reprehenderit illo obcaecati, recusandae magnam vel deserunt! Hic nesciunt nulla voluptatum esse sit quos vitae, distinctio est voluptate, aliquam beatae iste nostrum magnam consectetur explicabo repellat iure ab repellendus quo aut. Illum laboriosam dolor vitae deserunt nemo odit tempora asperiores aliquam minus, voluptate, in error. Temporibus vitae omnis molestiae commodi quis blanditiis, facere. Dolor explicabo, cum inventore ipsum necessitatibus, ut excepturi mollitia.</p>\n<!-- /wp:paragraph -->', 'Third Post', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-06-19 19:53:23', '2019-06-19 19:53:23', '', 39, 'http://localhost/workout/web_machine/lesson_2/wordpress/2019/06/19/39-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-06-19 19:53:55', '2019-06-19 19:53:55', '<!-- wp:paragraph -->\n<p>Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam. Totam accusantium animi vitae numquam mollitia aliquam temporibus nulla, deleniti eos soluta ea eligendi optio eius culpa necessitatibus atque, veritatis vero velit deserunt nisi voluptatum aperiam non?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima quidem sint nesciunt ipsa illo accusamus rerum, incidunt quo in, labore cumque quis? At sequi facilis itaque, quis fugit quisquam reprehenderit optio accusantium quod doloremque vitae deserunt, quae nisi, libero accusamus modi. Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam.</p>\n<!-- /wp:paragraph -->', 'Fourth Post', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-06-19 19:53:55', '2019-06-19 19:53:55', '', 41, 'http://localhost/workout/web_machine/lesson_2/wordpress/2019/06/19/41-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_termmeta`
--

CREATE TABLE `wbm_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_terms`
--

CREATE TABLE `wbm_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wbm_terms`
--

INSERT INTO `wbm_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(4, 'Header Menu', 'header-menu', 0),
(5, 'Footer Menu', 'footer-menu', 0),
(6, 'some_tags', 'some_tags', 0),
(7, 'to', 'to', 0),
(8, 'gogoog', 'gogoog', 0),
(9, 'Children', 'children', 0),
(10, 'New children', 'new-children', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_term_relationships`
--

CREATE TABLE `wbm_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wbm_term_relationships`
--

INSERT INTO `wbm_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 4, 0),
(13, 4, 0),
(14, 4, 0),
(20, 5, 0),
(21, 5, 0),
(22, 5, 0),
(33, 6, 0),
(33, 7, 0),
(33, 8, 0),
(37, 9, 0),
(39, 1, 0),
(39, 9, 0),
(41, 10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_term_taxonomy`
--

CREATE TABLE `wbm_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wbm_term_taxonomy`
--

INSERT INTO `wbm_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(4, 4, 'nav_menu', '', 0, 3),
(5, 5, 'nav_menu', '', 0, 3),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'category', '', 0, 2),
(10, 10, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_usermeta`
--

CREATE TABLE `wbm_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wbm_usermeta`
--

INSERT INTO `wbm_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wbm_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wbm_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"bbafbd4922cfd4d24ec3fa6d9e1422f2cd0a3876301c0d2d5a85d6d38c2e2f60\";a:4:{s:10:\"expiration\";i:1561738673;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36\";s:5:\"login\";i:1560529073;}}'),
(17, 1, 'wbm_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wbm_r_tru_u_x', 'a:2:{s:2:\"id\";s:0:\"\";s:7:\"expires\";i:86400;}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '4'),
(22, 1, 'wbm_user-settings', 'libraryContent=browse&editor=html&align=left'),
(23, 1, 'wbm_user-settings-time', '1560795367'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_users`
--

CREATE TABLE `wbm_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wbm_users`
--

INSERT INTO `wbm_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BEQ/mTqCpydKEe9gDNXfvQJ6ajwXdm0', 'admin', 'aditon1800@mail.ru', '', '2019-06-14 16:17:40', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wbm_commentmeta`
--
ALTER TABLE `wbm_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wbm_comments`
--
ALTER TABLE `wbm_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wbm_links`
--
ALTER TABLE `wbm_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wbm_options`
--
ALTER TABLE `wbm_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wbm_postmeta`
--
ALTER TABLE `wbm_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wbm_posts`
--
ALTER TABLE `wbm_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wbm_termmeta`
--
ALTER TABLE `wbm_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wbm_terms`
--
ALTER TABLE `wbm_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wbm_term_relationships`
--
ALTER TABLE `wbm_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wbm_term_taxonomy`
--
ALTER TABLE `wbm_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wbm_usermeta`
--
ALTER TABLE `wbm_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wbm_users`
--
ALTER TABLE `wbm_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wbm_commentmeta`
--
ALTER TABLE `wbm_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wbm_comments`
--
ALTER TABLE `wbm_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wbm_links`
--
ALTER TABLE `wbm_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wbm_options`
--
ALTER TABLE `wbm_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT для таблицы `wbm_postmeta`
--
ALTER TABLE `wbm_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT для таблицы `wbm_posts`
--
ALTER TABLE `wbm_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT для таблицы `wbm_termmeta`
--
ALTER TABLE `wbm_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wbm_terms`
--
ALTER TABLE `wbm_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wbm_term_taxonomy`
--
ALTER TABLE `wbm_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wbm_usermeta`
--
ALTER TABLE `wbm_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wbm_users`
--
ALTER TABLE `wbm_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
