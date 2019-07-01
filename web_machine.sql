-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Июл 01 2019 г., 17:21
-- Версия сервера: 5.7.25
-- Версия PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-06-14 16:17:40', '2019-06-14 16:17:40', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 33, 'admin', 'aditon1800@mail.ru', '', '::1', '2019-06-19 22:17:48', '2019-06-19 22:17:48', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', '', 0, 1),
(3, 33, 'admin', 'aditon1800@mail.ru', '', '::1', '2019-06-19 22:17:55', '2019-06-19 22:17:55', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', '', 0, 1),
(4, 33, 'admin', 'aditon1800@mail.ru', '', '::1', '2019-06-19 22:39:12', '2019-06-19 22:39:12', 'do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', '', 0, 1),
(5, 33, 'admin', 'aditon1800@mail.ru', '', '::1', '2019-06-19 22:39:36', '2019-06-19 22:39:36', 'pidatat non proident, sunt', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', '', 0, 1),
(6, 33, 'admin', 'aditon1800@mail.ru', '', '::1', '2019-06-20 21:05:27', '2019-06-20 21:05:27', 'Some comment', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '', 0, 1),
(7, 33, 'Oleg Aditon', 'aditon1800@mail.ru', 'http://ыапапвап', '::1', '2019-06-22 20:51:27', '2019-06-22 20:51:27', 'фвафвафвафва', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '', 6, 0),
(8, 37, 'Oleg Aditon', 'aditon1800@mail.ru', 'http://adf', '::1', '2019-06-23 18:43:30', '2019-06-23 18:43:30', 'adfadfadfasdf', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_create_map`
--

CREATE TABLE `wbm_create_map` (
  `map_id` int(11) NOT NULL,
  `map_title` varchar(255) DEFAULT NULL,
  `map_width` varchar(255) DEFAULT NULL,
  `map_height` varchar(255) DEFAULT NULL,
  `map_zoom_level` varchar(255) DEFAULT NULL,
  `map_type` varchar(255) DEFAULT NULL,
  `map_scrolling_wheel` varchar(255) DEFAULT NULL,
  `map_visual_refresh` varchar(255) DEFAULT NULL,
  `map_45imagery` varchar(255) DEFAULT NULL,
  `map_street_view_setting` text,
  `map_route_direction_setting` text,
  `map_all_control` text,
  `map_info_window_setting` text,
  `style_google_map` text,
  `map_locations` longtext,
  `map_layer_setting` text,
  `map_polygon_setting` longtext,
  `map_polyline_setting` longtext,
  `map_cluster_setting` text,
  `map_overlay_setting` text,
  `map_geotags` text,
  `map_infowindow_setting` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wbm_create_map`
--

INSERT INTO `wbm_create_map` (`map_id`, `map_title`, `map_width`, `map_height`, `map_zoom_level`, `map_type`, `map_scrolling_wheel`, `map_visual_refresh`, `map_45imagery`, `map_street_view_setting`, `map_route_direction_setting`, `map_all_control`, `map_info_window_setting`, `style_google_map`, `map_locations`, `map_layer_setting`, `map_polygon_setting`, `map_polyline_setting`, `map_cluster_setting`, `map_overlay_setting`, `map_geotags`, `map_infowindow_setting`) VALUES
(1, 'Bebe Map', '', '300', '5', 'ROADMAP', '', NULL, '', 'a:2:{s:11:\"pov_heading\";s:0:\"\";s:9:\"pov_pitch\";s:0:\"\";}', 'N;', 'a:12:{s:19:\"map_center_latitude\";s:0:\"\";s:20:\"map_center_longitude\";s:0:\"\";s:21:\"zoom_control_position\";s:8:\"TOP_LEFT\";s:18:\"zoom_control_style\";s:5:\"LARGE\";s:25:\"map_type_control_position\";s:9:\"TOP_RIGHT\";s:22:\"map_type_control_style\";s:14:\"HORIZONTAL_BAR\";s:28:\"full_screen_control_position\";s:9:\"TOP_RIGHT\";s:28:\"street_view_control_position\";s:8:\"TOP_LEFT\";s:18:\"infowindow_setting\";s:0:\"\";s:21:\"infowindow_openoption\";s:5:\"click\";s:19:\"marker_default_icon\";s:129:\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/plugins/wp-google-map-plugin/assets/images//default_marker.png\";s:27:\"infowindow_bounce_animation\";s:0:\"\";}', 'N;', 'N;', 'a:1:{i:0;s:1:\"1\";}', 'N;', 'N;', NULL, 'N;', 'N;', 'N;', 'N;');

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_group_map`
--

CREATE TABLE `wbm_group_map` (
  `group_map_id` int(11) NOT NULL,
  `group_map_title` varchar(255) DEFAULT NULL,
  `group_marker` text,
  `extensions_fields` text,
  `group_parent` int(11) DEFAULT '0',
  `group_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
-- Структура таблицы `wbm_map_locations`
--

CREATE TABLE `wbm_map_locations` (
  `location_id` int(11) NOT NULL,
  `location_title` varchar(255) DEFAULT NULL,
  `location_address` varchar(255) DEFAULT NULL,
  `location_draggable` varchar(255) DEFAULT NULL,
  `location_infowindow_default_open` varchar(255) DEFAULT NULL,
  `location_animation` varchar(255) DEFAULT NULL,
  `location_latitude` varchar(255) DEFAULT NULL,
  `location_longitude` varchar(255) DEFAULT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_state` varchar(255) DEFAULT NULL,
  `location_country` varchar(255) DEFAULT NULL,
  `location_postal_code` varchar(255) DEFAULT NULL,
  `location_zoom` int(11) DEFAULT NULL,
  `location_author` int(11) DEFAULT NULL,
  `location_messages` text,
  `location_settings` text,
  `location_group_map` text,
  `location_extrafields` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wbm_map_locations`
--

INSERT INTO `wbm_map_locations` (`location_id`, `location_title`, `location_address`, `location_draggable`, `location_infowindow_default_open`, `location_animation`, `location_latitude`, `location_longitude`, `location_city`, `location_state`, `location_country`, `location_postal_code`, `location_zoom`, `location_author`, `location_messages`, `location_settings`, `location_group_map`, `location_extrafields`) VALUES
(1, 'Bebe Address', 'Germany Berlin, Main street 43', '', '', 'BOUNCE', '52.520008', '13.404954', '', '', '', '', 0, NULL, '', 'a:3:{s:7:\"onclick\";s:6:\"marker\";s:13:\"redirect_link\";s:0:\"\";s:20:\"redirect_link_window\";s:3:\"yes\";}', 'N;', NULL);

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
(1, 'siteurl', 'http://localhost:8888/WebMachine/lesson_2/wordpress', 'yes'),
(2, 'home', 'http://localhost:8888/WebMachine/lesson_2/wordpress', 'yes'),
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
(22, 'posts_per_page', '4', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:156:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"gallery/?$\";s:27:\"index.php?post_type=gallery\";s:40:\"gallery/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=gallery&feed=$matches[1]\";s:35:\"gallery/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=gallery&feed=$matches[1]\";s:27:\"gallery/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=gallery&paged=$matches[1]\";s:11:\"teachers/?$\";s:28:\"index.php?post_type=teachers\";s:41:\"teachers/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=teachers&feed=$matches[1]\";s:36:\"teachers/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=teachers&feed=$matches[1]\";s:28:\"teachers/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=teachers&paged=$matches[1]\";s:8:\"rooms/?$\";s:25:\"index.php?post_type=rooms\";s:38:\"rooms/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=rooms&feed=$matches[1]\";s:33:\"rooms/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=rooms&feed=$matches[1]\";s:25:\"rooms/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=rooms&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"gallery/([^/]+)/embed/?$\";s:40:\"index.php?gallery=$matches[1]&embed=true\";s:28:\"gallery/([^/]+)/trackback/?$\";s:34:\"index.php?gallery=$matches[1]&tb=1\";s:48:\"gallery/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?gallery=$matches[1]&feed=$matches[2]\";s:43:\"gallery/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?gallery=$matches[1]&feed=$matches[2]\";s:36:\"gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?gallery=$matches[1]&paged=$matches[2]\";s:43:\"gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?gallery=$matches[1]&cpage=$matches[2]\";s:32:\"gallery/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?gallery=$matches[1]&page=$matches[2]\";s:24:\"gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"teachers/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"teachers/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"teachers/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"teachers/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"teachers/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"teachers/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"teachers/([^/]+)/embed/?$\";s:41:\"index.php?teachers=$matches[1]&embed=true\";s:29:\"teachers/([^/]+)/trackback/?$\";s:35:\"index.php?teachers=$matches[1]&tb=1\";s:49:\"teachers/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?teachers=$matches[1]&feed=$matches[2]\";s:44:\"teachers/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?teachers=$matches[1]&feed=$matches[2]\";s:37:\"teachers/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?teachers=$matches[1]&paged=$matches[2]\";s:44:\"teachers/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?teachers=$matches[1]&cpage=$matches[2]\";s:33:\"teachers/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?teachers=$matches[1]&page=$matches[2]\";s:25:\"teachers/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"teachers/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"teachers/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"teachers/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"teachers/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"teachers/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"rooms/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"rooms/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"rooms/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"rooms/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"rooms/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"rooms/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"rooms/([^/]+)/embed/?$\";s:38:\"index.php?rooms=$matches[1]&embed=true\";s:26:\"rooms/([^/]+)/trackback/?$\";s:32:\"index.php?rooms=$matches[1]&tb=1\";s:46:\"rooms/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?rooms=$matches[1]&feed=$matches[2]\";s:41:\"rooms/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?rooms=$matches[1]&feed=$matches[2]\";s:34:\"rooms/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?rooms=$matches[1]&paged=$matches[2]\";s:41:\"rooms/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?rooms=$matches[1]&cpage=$matches[2]\";s:30:\"rooms/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?rooms=$matches[1]&page=$matches[2]\";s:22:\"rooms/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"rooms/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"rooms/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"rooms/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"rooms/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"rooms/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=24&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:35:\"redux-framework/redux-framework.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:3;s:45:\"wp-google-map-plugin/wp-google-map-plugin.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:95:\"/opt/lampp/htdocs/workout/web_machine/lesson_2/wordpress/wp-content/plugins/akismet/akismet.php\";i:2;s:0:\"\";}', 'no'),
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
(83, 'page_for_posts', '102', 'yes'),
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
(94, 'wbm_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:70:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpgmp_admin_overview\";b:1;s:18:\"wpgmp_how_overview\";b:1;s:19:\"wpgmp_form_location\";b:1;s:21:\"wpgmp_manage_location\";b:1;s:14:\"wpgmp_form_map\";b:1;s:16:\"wpgmp_manage_map\";b:1;s:20:\"wpgmp_form_group_map\";b:1;s:22:\"wpgmp_manage_group_map\";b:1;s:21:\"wpgmp_manage_settings\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:12:\"Blog Archive\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:11:\"blogsidebar\";a:1:{i:0;s:10:\"archives-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:5:{i:1561987060;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1561997860;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1561997873;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1561997875;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
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
(117, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1561326244;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:4;s:6:\"footer\";i:5;}}', 'yes'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1561980215;s:7:\"checked\";a:4:{s:4:\"bebe\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(158, 'current_theme', 'Bebe', 'yes'),
(159, 'theme_mods_bebe', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:4;s:11:\"footer-menu\";i:5;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1561326578;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(167, 'recently_activated', 'a:3:{s:62:\"simple-google-maps-short-code/simple-google-map-short-code.php\";i:1561571987;s:31:\"wp-google-maps/wpGoogleMaps.php\";i:1561571238;s:16:\"yamaps/yamap.php\";i:1561571145;}', 'yes'),
(170, 'r_notice_data', '{\"type\":\"redux-message\",\"title\":\"<strong>Redux v4 Beta:  We Need Your Help!<\\/strong><br\\/>\\r\\n\\r\\n\",\"message\":\"The long in-development Redux v4 Beta is nearing completion and we could really use your help!  To learn how to do so, please read our latest blog post: <a href=\\\"https:\\/\\/reduxframework.com\\/2018\\/11\\/redux-4-0-we-need-your-help\\/\\\">Redux 4.0 - We Need Your Help!<\\/a>\",\"color\":\"rgba(0,162,227,1)\"}\n', 'yes'),
(171, 'redux_blast', '1560687300', 'yes'),
(172, 'redux_version_upgraded_from', '3.6.15', 'yes'),
(173, 'redux_demo', 'a:70:{s:12:\"opt-checkbox\";s:1:\"1\";s:15:\"opt-multi-check\";a:3:{i:1;s:1:\"1\";i:2;s:1:\"0\";i:3;s:1:\"0\";}s:9:\"opt-radio\";s:1:\"2\";s:12:\"opt-sortable\";a:3:{s:8:\"Text One\";s:6:\"Item 1\";s:8:\"Text Two\";s:6:\"Item 2\";s:10:\"Text Three\";s:6:\"Item 3\";}s:18:\"opt-check-sortable\";a:3:{s:3:\"cb1\";b:0;s:3:\"cb2\";b:1;s:3:\"cb3\";b:0;}s:12:\"text-example\";s:12:\"Default Text\";s:17:\"text-example-hint\";s:12:\"Default Text\";s:12:\"opt-textarea\";s:12:\"Default Text\";s:10:\"opt-editor\";s:27:\"Powered by Redux Framework.\";s:15:\"opt-editor-tiny\";s:27:\"Powered by Redux Framework.\";s:18:\"opt-ace-editor-css\";s:29:\"#header{\n   margin: 0 auto;\n}\";s:17:\"opt-ace-editor-js\";s:39:\"jQuery(document).ready(function(){\n\n});\";s:18:\"opt-ace-editor-php\";s:28:\"<?php\n    echo \"PHP String\";\";s:15:\"opt-color-title\";s:7:\"#000000\";s:16:\"opt-color-footer\";s:7:\"#dd9933\";s:16:\"opt-color-header\";a:2:{s:4:\"from\";s:7:\"#1e73be\";s:2:\"to\";s:7:\"#00897e\";}s:14:\"opt-color-rgba\";a:2:{s:5:\"color\";s:7:\"#7e33dd\";s:5:\"alpha\";s:2:\".8\";}s:14:\"opt-link-color\";a:3:{s:7:\"regular\";s:4:\"#aaa\";s:5:\"hover\";s:4:\"#bbb\";s:6:\"active\";s:4:\"#ccc\";}s:17:\"opt-palette-color\";s:3:\"red\";s:17:\"opt-header-border\";a:6:{s:12:\"border-color\";s:7:\"#1e73be\";s:12:\"border-style\";s:5:\"solid\";s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";}s:26:\"opt-header-border-expanded\";a:6:{s:12:\"border-color\";s:7:\"#1e73be\";s:12:\"border-style\";s:5:\"solid\";s:10:\"border-top\";s:3:\"3px\";s:12:\"border-right\";s:3:\"3px\";s:13:\"border-bottom\";s:3:\"3px\";s:11:\"border-left\";s:3:\"3px\";}s:14:\"opt-dimensions\";a:2:{s:5:\"width\";i:200;s:6:\"height\";i:100;}s:20:\"opt-dimensions-width\";a:2:{s:5:\"width\";i:200;s:6:\"height\";i:100;}s:11:\"opt-spacing\";a:4:{s:10:\"margin-top\";s:3:\"1px\";s:12:\"margin-right\";s:3:\"2px\";s:13:\"margin-bottom\";s:3:\"3px\";s:11:\"margin-left\";s:3:\"4px\";}s:20:\"opt-spacing-expanded\";a:4:{s:10:\"margin-top\";s:3:\"1px\";s:12:\"margin-right\";s:3:\"2px\";s:13:\"margin-bottom\";s:3:\"3px\";s:11:\"margin-left\";s:3:\"4px\";}s:9:\"opt-media\";a:1:{s:3:\"url\";s:53:\"https://s.wordpress.org/style/images/codeispoetry.png\";}s:14:\"opt-button-set\";s:1:\"2\";s:20:\"opt-button-set-multi\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:9:\"switch-on\";b:1;s:10:\"switch-off\";b:0;s:13:\"switch-parent\";i:0;s:13:\"switch-child1\";b:0;s:13:\"switch-child2\";b:0;s:10:\"opt-select\";s:1:\"2\";s:21:\"opt-select-stylesheet\";s:11:\"default.css\";s:19:\"opt-select-optgroup\";s:1:\"2\";s:16:\"opt-multi-select\";a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}s:23:\"opt-image-select-layout\";s:1:\"2\";s:12:\"opt-patterns\";i:0;s:16:\"opt-image-select\";s:1:\"2\";s:11:\"opt-presets\";i:0;s:22:\"opt-select_image-field\";s:130:\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/plugins/redux-framework/ReduxCore/../sample/presets/preset2.png\";s:16:\"opt-select-image\";s:134:\"http://localhost/workout/web_machine/lesson_2/wordpress/wp-content/plugins/redux-framework/ReduxCore/../sample/patterns/triangular.png\";s:16:\"opt-slider-label\";i:250;s:15:\"opt-slider-text\";i:75;s:17:\"opt-slider-select\";a:2:{i:1;i:100;i:2;i:300;}s:16:\"opt-slider-float\";d:0.5;s:11:\"opt-spinner\";s:2:\"40\";s:19:\"opt-typography-body\";a:4:{s:5:\"color\";s:7:\"#dd9933\";s:9:\"font-size\";s:4:\"30px\";s:11:\"font-family\";s:26:\"Arial,Helvetica,sans-serif\";s:11:\"font-weight\";s:6:\"Normal\";}s:14:\"opt-typography\";a:6:{s:5:\"color\";s:4:\"#333\";s:10:\"font-style\";s:3:\"700\";s:11:\"font-family\";s:4:\"Abel\";s:6:\"google\";b:1;s:9:\"font-size\";s:4:\"33px\";s:11:\"line-height\";s:4:\"40px\";}s:19:\"opt-homepage-layout\";a:3:{s:7:\"enabled\";a:4:{s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}s:8:\"disabled\";a:0:{}s:6:\"backup\";a:0:{}}s:21:\"opt-homepage-layout-2\";a:2:{s:8:\"disabled\";a:2:{s:10:\"highlights\";s:10:\"Highlights\";s:6:\"slider\";s:6:\"Slider\";}s:7:\"enabled\";a:2:{s:10:\"staticpage\";s:11:\"Static Page\";s:8:\"services\";s:8:\"Services\";}}s:14:\"opt-text-email\";s:13:\"test@test.com\";s:12:\"opt-text-url\";s:25:\"http://reduxframework.com\";s:16:\"opt-text-numeric\";s:1:\"0\";s:22:\"opt-text-comma-numeric\";s:1:\"0\";s:25:\"opt-text-no-special-chars\";s:1:\"0\";s:20:\"opt-text-str_replace\";s:20:\"This is the default.\";s:21:\"opt-text-preg_replace\";s:1:\"0\";s:24:\"opt-text-custom_validate\";s:1:\"0\";s:20:\"opt-textarea-no-html\";s:27:\"No HTML is allowed in here.\";s:17:\"opt-textarea-html\";s:24:\"HTML is allowed in here.\";s:22:\"opt-textarea-some-html\";s:36:\"<p>Some HTML is allowed in here.</p>\";s:18:\"opt-required-basic\";b:0;s:19:\"opt-required-nested\";b:0;s:29:\"opt-required-nested-buttonset\";s:11:\"button-text\";s:19:\"opt-required-select\";s:10:\"no-sidebar\";s:32:\"opt-required-select-left-sidebar\";s:0:\"\";s:33:\"opt-required-select-right-sidebar\";s:0:\"\";s:19:\"opt-customizer-only\";s:1:\"2\";}', 'yes'),
(174, 'redux_demo-transients', 'a:2:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1560687300;}', 'yes'),
(185, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(193, 'bebe_options', 'a:22:{s:8:\"last_tab\";s:1:\"1\";s:8:\"bebelogo\";a:9:{s:3:\"url\";s:87:\"http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/logo.png\";s:2:\"id\";s:2:\"15\";s:6:\"height\";s:3:\"110\";s:5:\"width\";s:3:\"318\";s:9:\"thumbnail\";s:95:\"http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/logo-150x110.png\";s:5:\"title\";s:4:\"logo\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:13:\"bebelogosmall\";a:9:{s:3:\"url\";s:95:\"http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/logo-respons.png\";s:2:\"id\";s:2:\"16\";s:6:\"height\";s:2:\"69\";s:5:\"width\";s:3:\"200\";s:9:\"thumbnail\";s:102:\"http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/logo-respons-150x69.png\";s:5:\"title\";s:12:\"logo-respons\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:14:\"bebefooterlogo\";a:9:{s:3:\"url\";s:93:\"http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/logo-small.png\";s:2:\"id\";s:2:\"19\";s:6:\"height\";s:2:\"37\";s:5:\"width\";s:2:\"78\";s:9:\"thumbnail\";s:93:\"http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/logo-small.png\";s:5:\"title\";s:10:\"logo-small\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:10:\"bebeslogan\";s:16:\"Slogan text here\";s:2:\"fb\";s:1:\"#\";s:5:\"insta\";s:1:\"#\";s:4:\"pint\";s:1:\"#\";s:2:\"tw\";s:1:\"#\";s:2:\"yt\";s:1:\"#\";s:13:\"homepageslide\";a:2:{i:0;a:9:{s:5:\"title\";s:16:\"Header Text here\";s:11:\"description\";s:76:\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur.\";s:3:\"url\";s:1:\"#\";s:4:\"sort\";s:1:\"0\";s:13:\"attachment_id\";s:2:\"17\";s:5:\"thumb\";s:97:\"http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/slide1-150x150.jpg\";s:5:\"image\";s:89:\"http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/slide1.jpg\";s:6:\"height\";s:3:\"356\";s:5:\"width\";s:4:\"1000\";}i:1;a:9:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:3:\"url\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:13:\"attachment_id\";s:2:\"18\";s:5:\"thumb\";s:97:\"http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/slide2-150x150.jpg\";s:5:\"image\";s:89:\"http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/slide2.jpg\";s:6:\"height\";s:3:\"356\";s:5:\"width\";s:4:\"1000\";}}s:13:\"bebefooternav\";s:11:\"Information\";s:18:\"bebefootercontacts\";s:8:\"Contacts\";s:9:\"bebephone\";s:15:\"8 800 435-17-20\";s:9:\"bebeemail\";s:14:\"nfo@bebe.co.uk\";s:11:\"bebeaddress\";s:30:\"Germany Berlin, Main street 43\";s:10:\"copyrights\";s:25:\"BEBE. All rights reserved\";s:17:\"bebeformshortcode\";s:24:\"[contact-form-7 id=\"23\"]\";s:10:\"roomscount\";s:1:\"4\";s:5:\"width\";s:1:\"0\";s:14:\"opt-button-set\";s:1:\"2\";s:10:\"sidebarset\";s:1:\"2\";}', 'yes'),
(194, 'bebe_options-transients', 'a:3:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1561811269;s:7:\"notices\";a:1:{s:8:\"warnings\";a:0:{}}}', 'yes'),
(198, 'recovery_mode_email_last_sent', '1561788033', 'yes'),
(204, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1560719619;s:7:\"version\";s:5:\"5.1.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(263, 'category_children', 'a:0:{}', 'yes'),
(335, 'theme_mods_twentyseventeen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:4;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1561326598;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(379, 'wpgmza_global_settings', '{\"wpgmza_google_maps_api_key\":\"AIzaSyCcI68iwVH_0B9V7hY6WsNDMCpySEXBUBs\",\"engine\":\"google-maps\",\"google_maps_api_key\":false,\"default_marker_icon\":\"\\/\\/maps.gstatic.com\\/mapfiles\\/api-3\\/images\\/spotlight-poi2.png\",\"wpgmza_gdpr_default_notice\":\"<p>\\r\\n\\tI agree for my personal data to be processed by <span name=\\\"wpgmza_gdpr_company_name\\\"><\\/span>, for the purpose(s) of <span name=\\\"wpgmza_gdpr_retention_purpose\\\"><\\/span>.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\t\\r\\n\\tI agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and\\tgenerating directions.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tSome visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \\\"state\\\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tPlease <a href=\\\"https:\\/\\/developers.google.com\\/maps\\/terms\\\">see here<\\/a> and <a href=\\\"https:\\/\\/maps.google.com\\/help\\/terms_maps.html\\\">here<\\/a> for Google\'s terms. Please also see <a href=\\\"https:\\/\\/policies.google.com\\/privacy?hl=en-GB&amp;gl=uk\\\">Google\'s Privacy Policy<\\/a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWhere this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\\r\\n<\\/p>\",\"wpgmza_gdpr_company_name\":\"bebe\",\"wpgmza_gdpr_retention_purpose\":\"displaying map tiles, geocoding addresses and calculating and display directions.\",\"wpgmza_settings_marker_pull\":\"0\",\"wpgmza_gdpr_notice_override_text\":\"\",\"wpgmza_load_engine_api_condition\":\"where-required\",\"use_fontawesome\":\"4.*\",\"wpgmza_maps_engine\":\"google-maps\",\"wpgmza_settings_map_open_marker_by\":\"1\",\"wpgmza_custom_css\":\"\",\"wpgmza_custom_js\":\"\",\"wpgmza_settings_access_level\":\"manage_options\",\"wpgmza_store_locator_radii\":\"1,5,10,25,50,75,100,150,200,300\"}', 'yes'),
(380, 'WPGMZA_OTHER_SETTINGS', 'a:17:{s:26:\"wpgmza_google_maps_api_key\";s:39:\"AIzaSyCcI68iwVH_0B9V7hY6WsNDMCpySEXBUBs\";s:6:\"engine\";s:11:\"google-maps\";s:19:\"google_maps_api_key\";b:0;s:19:\"default_marker_icon\";s:59:\"//maps.gstatic.com/mapfiles/api-3/images/spotlight-poi2.png\";s:26:\"wpgmza_gdpr_default_notice\";s:1972:\"<p>\r\n	I agree for my personal data to be processed by <span name=\"wpgmza_gdpr_company_name\"></span>, for the purpose(s) of <span name=\"wpgmza_gdpr_retention_purpose\"></span>.\r\n</p>\r\n\r\n<p>	\r\n	I agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and	generating directions.\r\n</p>\r\n<p>\r\n	Some visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\r\n</p>\r\n<p>\r\n	WP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \"state\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\r\n</p>\r\n<p>\r\n	Please <a href=\"https://developers.google.com/maps/terms\">see here</a> and <a href=\"https://maps.google.com/help/terms_maps.html\">here</a> for Google\'s terms. Please also see <a href=\"https://policies.google.com/privacy?hl=en-GB&amp;gl=uk\">Google\'s Privacy Policy</a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\r\n</p>\r\n<p>\r\n	Where this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\r\n</p>\";s:24:\"wpgmza_gdpr_company_name\";s:4:\"bebe\";s:29:\"wpgmza_gdpr_retention_purpose\";s:81:\"displaying map tiles, geocoding addresses and calculating and display directions.\";s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";s:32:\"wpgmza_gdpr_notice_override_text\";s:0:\"\";s:32:\"wpgmza_load_engine_api_condition\";s:14:\"where-required\";s:15:\"use_fontawesome\";s:3:\"4.*\";s:18:\"wpgmza_maps_engine\";s:11:\"google-maps\";s:34:\"wpgmza_settings_map_open_marker_by\";s:1:\"1\";s:17:\"wpgmza_custom_css\";s:0:\"\";s:16:\"wpgmza_custom_js\";s:0:\"\";s:28:\"wpgmza_settings_access_level\";s:14:\"manage_options\";s:26:\"wpgmza_store_locator_radii\";s:31:\"1,5,10,25,50,75,100,150,200,300\";}', 'yes'),
(381, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(382, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(383, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(384, 'wpgmza_db_version', '7.11.32', 'yes'),
(385, 'wpgmaps_current_version', '7.11.32', 'yes'),
(386, 'WPGM_V6_FIRST_TIME', '1', 'yes'),
(387, 'widget_wpgmza_map_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(388, 'WPGMZA_FIRST_TIME', '7.11.32', 'yes'),
(389, 'wpgmza_stats', 'a:3:{s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:3;s:13:\"last_accessed\";s:19:\"2019-06-26 17:39:26\";s:14:\"first_accessed\";s:19:\"2019-06-26 17:35:49\";}s:9:\"dashboard\";a:3:{s:5:\"views\";i:4;s:13:\"last_accessed\";s:19:\"2019-06-26 17:40:51\";s:14:\"first_accessed\";s:19:\"2019-06-26 17:37:28\";}s:14:\"settings_basic\";a:3:{s:5:\"views\";i:2;s:13:\"last_accessed\";s:19:\"2019-06-26 17:39:22\";s:14:\"first_accessed\";s:19:\"2019-06-26 17:39:07\";}}', 'yes'),
(390, 'wpgmza_google_maps_api_key', 'AIzaSyCcI68iwVH_0B9V7hY6WsNDMCpySEXBUBs', 'yes'),
(391, 'WPGMZA_SETTINGS', 'a:10:{s:24:\"map_default_starting_lat\";s:9:\"45.950464\";s:24:\"map_default_starting_lng\";s:19:\"-109.81550500000003\";s:18:\"map_default_height\";s:3:\"400\";s:17:\"map_default_width\";s:3:\"100\";s:16:\"map_default_zoom\";i:2;s:20:\"map_default_max_zoom\";i:1;s:16:\"map_default_type\";i:1;s:21:\"map_default_alignment\";i:1;s:22:\"map_default_width_type\";s:2:\"\\%\";s:23:\"map_default_height_type\";s:2:\"px\";}', 'yes'),
(394, 'yamaps_options', 'a:8:{s:17:\"center_map_option\";s:15:\"55.7473,37.6247\";s:15:\"zoom_map_option\";s:2:\"12\";s:15:\"type_map_option\";s:10:\"yandex#map\";s:17:\"height_map_option\";s:5:\"22rem\";s:19:\"controls_map_option\";s:0:\"\";s:20:\"wheelzoom_map_option\";s:2:\"on\";s:16:\"type_icon_option\";s:15:\"islands#dotIcon\";s:17:\"color_icon_option\";s:7:\"#1e98ff\";}', 'yes'),
(399, '_transient_timeout_4410ec34d9e6c1a68100ca0ce033fb17', '1569347510', 'no'),
(400, '_transient_4410ec34d9e6c1a68100ca0ce033fb17', 'a:3:{s:3:\"lat\";d:34.0783583999999990510332281701266765594482421875;s:3:\"lng\";d:-107.61836329999999861684045754373073577880859375;s:7:\"address\";s:22:\"Socorro, NM 87825, USA\";}', 'no');
INSERT INTO `wbm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(402, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1561980215;s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:35:\"redux-framework/redux-framework.php\";s:6:\"3.6.15\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.1\";s:45:\"wp-google-map-plugin/wp-google-map-plugin.php\";s:5:\"4.0.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"redux-framework/redux-framework.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/redux-framework\";s:4:\"slug\";s:15:\"redux-framework\";s:6:\"plugin\";s:35:\"redux-framework/redux-framework.php\";s:11:\"new_version\";s:6:\"3.6.15\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/redux-framework/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/redux-framework.3.6.15.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/redux-framework/assets/icon-256x256.png?rev=995554\";s:2:\"1x\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";s:3:\"svg\";s:59:\"https://ps.w.org/redux-framework/assets/icon.svg?rev=995554\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/redux-framework/assets/banner-772x250.png?rev=793165\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"wp-google-map-plugin/wp-google-map-plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/wp-google-map-plugin\";s:4:\"slug\";s:20:\"wp-google-map-plugin\";s:6:\"plugin\";s:45:\"wp-google-map-plugin/wp-google-map-plugin.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/wp-google-map-plugin/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-google-map-plugin.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/wp-google-map-plugin/assets/icon-128x128.png?rev=1702516\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/wp-google-map-plugin/assets/banner-772x250.png?rev=1702516\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(403, 'widget_wpgmp_google_map_widget_class', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(404, 'wpgmp_language', 'en', 'yes'),
(405, 'wpgmp_api_key', 'AIzaSyCcI68iwVH_0B9V7hY6WsNDMCpySEXBUBs', 'yes'),
(406, 'wpgmp_scripts_place', 'footer', 'yes'),
(407, 'wpgmp_location_extrafields', 's:6:\"a:0:{}\";', 'yes'),
(408, 'wpgmp_allow_meta', 's:6:\"a:0:{}\";', 'yes'),
(447, '_site_transient_timeout_browser_630d2c68223a9b4451a300b70984ca4f', '1562357986', 'no'),
(448, '_site_transient_browser_630d2c68223a9b4451a300b70984ca4f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"75.0.3770.100\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(449, '_site_transient_timeout_php_check_90e738eca301c4d89366b1a4d15fe37f', '1562357987', 'no'),
(450, '_site_transient_php_check_90e738eca301c4d89366b1a4d15fe37f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(471, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1561980215;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(507, '_site_transient_timeout_theme_roots', '1561982015', 'no'),
(508, '_site_transient_theme_roots', 'a:4:{s:4:\"bebe\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

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
(3, 2, '_edit_lock', '1561315577:1'),
(77, 15, '_wp_attached_file', '2019/06/logo.png'),
(78, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:318;s:6:\"height\";i:110;s:4:\"file\";s:16:\"2019/06/logo.png\";s:5:\"sizes\";a:7:{s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:16:\"logo-281x110.png\";s:5:\"width\";i:281;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:16:\"logo-212x110.png\";s:5:\"width\";i:212;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x110.png\";s:5:\"width\";i:150;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x104.png\";s:5:\"width\";i:300;s:6:\"height\";i:104;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:16:\"logo-235x110.png\";s:5:\"width\";i:235;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:16:\"logo-222x110.png\";s:5:\"width\";i:222;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:16:\"logo-222x110.png\";s:5:\"width\";i:222;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 16, '_wp_attached_file', '2019/06/logo-respons.png'),
(80, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:69;s:4:\"file\";s:24:\"2019/06/logo-respons.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-respons-150x69.png\";s:5:\"width\";i:150;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 17, '_wp_attached_file', '2019/06/slide1.jpg'),
(82, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:356;s:4:\"file\";s:18:\"2019/06/slide1.jpg\";s:5:\"sizes\";a:11:{s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:18:\"slide1-281x162.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:18:\"slide1-212x168.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"room-slide-thumb\";a:4:{s:4:\"file\";s:18:\"slide1-463x355.jpg\";s:5:\"width\";i:463;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide1-300x107.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide1-768x273.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:273;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:18:\"slide1-235x183.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:18:\"slide1-370x280.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:18:\"slide1-222x341.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:18:\"slide1-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:18:\"slide1-456x164.jpg\";s:5:\"width\";i:456;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 18, '_wp_attached_file', '2019/06/slide2.jpg'),
(84, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:356;s:4:\"file\";s:18:\"2019/06/slide2.jpg\";s:5:\"sizes\";a:11:{s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:18:\"slide2-281x162.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:18:\"slide2-212x168.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"room-slide-thumb\";a:4:{s:4:\"file\";s:18:\"slide2-463x355.jpg\";s:5:\"width\";i:463;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide2-300x107.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide2-768x273.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:273;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:18:\"slide2-235x183.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:18:\"slide2-370x280.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:18:\"slide2-222x341.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:18:\"slide2-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:18:\"slide2-456x164.jpg\";s:5:\"width\";i:456;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
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
(114, 23, '_form', '[text* your-name placeholder\"Name\"]\n[email* your-email placeholder\"Email\"]\n[textarea your-message placeholder\"Your Message\"]\n[submit \"\"]'),
(115, 23, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:21:\"bebe \"[your-subject]\"\";s:6:\"sender\";s:25:\"bebe <aditon1800@mail.ru>\";s:9:\"recipient\";s:18:\"aditon1800@mail.ru\";s:4:\"body\";s:198:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on bebe (http://localhost:8888/WebMachine/lesson_2/wordpress)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(116, 23, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:21:\"bebe \"[your-subject]\"\";s:6:\"sender\";s:25:\"bebe <aditon1800@mail.ru>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on bebe (http://localhost:8888/WebMachine/lesson_2/wordpress)\";s:18:\"additional_headers\";s:28:\"Reply-To: aditon1800@mail.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(117, 23, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(118, 23, '_additional_settings', ''),
(119, 23, '_locale', 'en_US'),
(120, 24, '_edit_lock', '1561897969:1'),
(121, 24, '_edit_last', '1'),
(125, 24, '_wp_page_template', 'template-homepage.php'),
(126, 3, '_edit_lock', '1561317619:1'),
(127, 26, '_wp_attached_file', '2019/06/about.jpg'),
(128, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:254;s:6:\"height\";i:168;s:4:\"file\";s:17:\"2019/06/about.jpg\";s:5:\"sizes\";a:7:{s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:17:\"about-254x162.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:17:\"about-212x168.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"about-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:17:\"about-235x168.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:17:\"about-222x168.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:17:\"about-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:17:\"about-254x164.jpg\";s:5:\"width\";i:254;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 27, '_wp_attached_file', '2019/06/about-1.png'),
(130, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:51;s:6:\"height\";i:44;s:4:\"file\";s:19:\"2019/06/about-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 28, '_wp_attached_file', '2019/06/about-2.png'),
(132, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:51;s:4:\"file\";s:19:\"2019/06/about-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 29, '_wp_attached_file', '2019/06/about-3.png'),
(134, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:55;s:6:\"height\";i:46;s:4:\"file\";s:19:\"2019/06/about-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 24, 'bebe_about-title', 'About Us'),
(137, 24, 'bebe_about-desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into'),
(138, 24, 'bebe_info-1-img', 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/about-1.png'),
(139, 24, 'bebe_info-title-1', 'Lorem ipsum'),
(140, 24, 'bebe_info-desc-1', 'Lorem Ipsum is simply dummy text printing'),
(141, 24, 'bebe_info-2-img', 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/about-2.png'),
(142, 24, 'bebe_info-title-2', 'Simple text here'),
(143, 24, 'bebe_info-desc-2', 'Lorem Ipsum is simply of the'),
(144, 24, 'bebe_info-3-img', 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/about-3.png'),
(145, 24, 'bebe_info-title-3', 'Dummy text'),
(146, 24, 'bebe_info-desc-3', 'Lorem Ipsum is simply dummy text of the'),
(147, 24, 'bebe_about-link', '#'),
(148, 24, 'bebe_about-image', 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/about.jpg'),
(149, 1, '_edit_lock', '1560973814:1'),
(154, 33, '_edit_lock', '1560982191:1'),
(159, 37, '_edit_lock', '1560977110:1'),
(162, 39, '_edit_lock', '1560977118:1'),
(165, 41, '_edit_lock', '1560977305:1'),
(262, 66, '_edit_last', '1'),
(263, 66, '_edit_lock', '1560805307:1'),
(264, 67, '_wp_attached_file', '2019/06/1.jpg'),
(265, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:341;s:4:\"file\";s:13:\"2019/06/1.jpg\";s:5:\"sizes\";a:8:{s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:13:\"1-222x162.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:13:\"1-212x168.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-195x300.jpg\";s:5:\"width\";i:195;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:13:\"1-222x183.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:13:\"1-222x280.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:13:\"1-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:13:\"1-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(266, 68, '_wp_attached_file', '2019/06/2.jpg'),
(267, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:164;s:4:\"file\";s:13:\"2019/06/2.jpg\";s:5:\"sizes\";a:5:{s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:13:\"2-222x162.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:13:\"2-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:13:\"2-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:13:\"2-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(268, 69, '_wp_attached_file', '2019/06/3.jpg'),
(269, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:456;s:6:\"height\";i:164;s:4:\"file\";s:13:\"2019/06/3.jpg\";s:5:\"sizes\";a:8:{s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:13:\"3-281x162.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:13:\"3-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:13:\"3-235x164.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:13:\"3-370x164.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:13:\"3-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:13:\"3-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(270, 70, '_wp_attached_file', '2019/06/4.jpg'),
(271, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:456;s:6:\"height\";i:164;s:4:\"file\";s:13:\"2019/06/4.jpg\";s:5:\"sizes\";a:8:{s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:13:\"4-281x162.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:13:\"4-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:13:\"4-235x164.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:13:\"4-370x164.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:13:\"4-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:13:\"4-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(272, 71, '_wp_attached_file', '2019/06/5.jpg'),
(273, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:164;s:4:\"file\";s:13:\"2019/06/5.jpg\";s:5:\"sizes\";a:5:{s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:13:\"5-222x162.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:13:\"5-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:13:\"5-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:13:\"5-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(274, 72, '_wp_attached_file', '2019/06/6.jpg'),
(275, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:341;s:4:\"file\";s:13:\"2019/06/6.jpg\";s:5:\"sizes\";a:8:{s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:13:\"6-222x162.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:13:\"6-212x168.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-195x300.jpg\";s:5:\"width\";i:195;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:13:\"6-222x183.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:13:\"6-222x280.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:13:\"6-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:13:\"6-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(276, 73, '_wp_attached_file', '2019/06/7.jpg'),
(277, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:164;s:4:\"file\";s:13:\"2019/06/7.jpg\";s:5:\"sizes\";a:5:{s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:13:\"7-222x162.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:13:\"7-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:13:\"7-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:13:\"7-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(278, 74, '_wp_attached_file', '2019/06/8.jpg'),
(279, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:164;s:4:\"file\";s:13:\"2019/06/8.jpg\";s:5:\"sizes\";a:5:{s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:13:\"8-222x162.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:13:\"8-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:13:\"8-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:13:\"8-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(282, 76, '_wp_attached_file', '2019/06/10.jpg'),
(283, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:456;s:6:\"height\";i:164;s:4:\"file\";s:14:\"2019/06/10.jpg\";s:5:\"sizes\";a:8:{s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:14:\"10-281x162.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:14:\"10-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"10-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:14:\"10-235x164.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:14:\"10-370x164.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:14:\"10-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:14:\"10-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
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
(313, 86, '_edit_lock', '1561982858:1'),
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
(337, 94, '_edit_lock', '1561811142:1'),
(339, 95, '_edit_last', '1'),
(340, 95, '_edit_lock', '1561785542:1'),
(341, 95, '_thumbnail_id', '76'),
(342, 96, '_wp_attached_file', '2019/06/9.jpg'),
(343, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:456;s:6:\"height\";i:164;s:4:\"file\";s:13:\"2019/06/9.jpg\";s:5:\"sizes\";a:8:{s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:13:\"9-281x162.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:13:\"9-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x108.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:13:\"9-235x164.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:13:\"9-370x164.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:13:\"9-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:13:\"9-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(344, 94, '_thumbnail_id', '73'),
(346, 98, '_wp_attached_file', '2019/06/slider.jpg'),
(347, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:505;s:4:\"file\";s:18:\"2019/06/slider.jpg\";s:5:\"sizes\";a:11:{s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:18:\"slider-281x162.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:18:\"slider-212x168.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"room-slide-thumb\";a:4:{s:4:\"file\";s:18:\"slider-463x355.jpg\";s:5:\"width\";i:463;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slider-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slider-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slider-768x422.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:422;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:18:\"slider-235x183.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:18:\"slider-370x280.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:18:\"slider-222x341.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:18:\"slider-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:18:\"slider-456x164.jpg\";s:5:\"width\";i:456;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(349, 33, '_thumbnail_id', '98'),
(351, 1, '_thumbnail_id', '98'),
(353, 37, '_thumbnail_id', '98'),
(357, 41, '_thumbnail_id', '98'),
(359, 39, '_thumbnail_id', '98'),
(360, 102, '_edit_lock', '1561754104:1'),
(370, 105, '_edit_lock', '1561811134:1'),
(371, 105, '_wp_page_template', 'template-about.php'),
(372, 105, '_edit_last', '1'),
(373, 105, 'bebe_about-title', 'Our Teachers'),
(374, 107, '_edit_last', '1'),
(375, 107, '_edit_lock', '1561403567:1'),
(378, 109, '_wp_attached_file', '2019/06/teach1.png'),
(379, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:257;s:6:\"height\";i:138;s:4:\"file\";s:18:\"2019/06/teach1.png\";s:5:\"sizes\";a:6:{s:10:\"room-thumb\";a:4:{s:4:\"file\";s:18:\"teach1-212x138.png\";s:5:\"width\";i:212;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"teach1-150x138.png\";s:5:\"width\";i:150;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:18:\"teach1-235x138.png\";s:5:\"width\";i:235;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:18:\"teach1-222x138.png\";s:5:\"width\";i:222;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:18:\"teach1-222x138.png\";s:5:\"width\";i:222;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:18:\"teach1-255x137.png\";s:5:\"width\";i:255;s:6:\"height\";i:137;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(380, 110, '_wp_attached_file', '2019/06/teach2.png'),
(381, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:257;s:6:\"height\";i:138;s:4:\"file\";s:18:\"2019/06/teach2.png\";s:5:\"sizes\";a:6:{s:10:\"room-thumb\";a:4:{s:4:\"file\";s:18:\"teach2-212x138.png\";s:5:\"width\";i:212;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"teach2-150x138.png\";s:5:\"width\";i:150;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:18:\"teach2-235x138.png\";s:5:\"width\";i:235;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:18:\"teach2-222x138.png\";s:5:\"width\";i:222;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:18:\"teach2-222x138.png\";s:5:\"width\";i:222;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:18:\"teach2-255x137.png\";s:5:\"width\";i:255;s:6:\"height\";i:137;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(382, 107, '_thumbnail_id', '114'),
(383, 107, 'bebe_fb-about-link', '#'),
(384, 107, 'bebe_twi-about-link', '#'),
(385, 111, '_edit_last', '1'),
(386, 111, '_edit_lock', '1561811149:1'),
(387, 111, '_thumbnail_id', '114'),
(388, 111, 'bebe_fb-about-link', '#'),
(389, 111, 'bebe_twi-about-link', '#'),
(390, 111, 'bebe_pint-about-link', '#'),
(391, 112, '_edit_last', '1'),
(392, 112, '_edit_lock', '1561402707:1'),
(394, 112, 'bebe_twi-about-link', '#'),
(395, 112, 'bebe_pint-about-link', '#'),
(396, 109, '_edit_lock', '1561401798:1'),
(397, 109, '_edit_last', '1'),
(399, 110, '_edit_lock', '1561401801:1'),
(406, 110, '_edit_last', '1'),
(407, 114, '_wp_attached_file', '2019/06/slider-1.jpg'),
(408, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:505;s:4:\"file\";s:20:\"2019/06/slider-1.jpg\";s:5:\"sizes\";a:11:{s:10:\"room-thumb\";a:4:{s:4:\"file\";s:20:\"slider-1-212x168.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"room-slide-thumb\";a:4:{s:4:\"file\";s:20:\"slider-1-463x355.jpg\";s:5:\"width\";i:463;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slider-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slider-1-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slider-1-768x422.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:422;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:20:\"slider-1-235x183.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:20:\"slider-1-370x280.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:20:\"slider-1-222x341.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:20:\"slider-1-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:20:\"slider-1-456x164.jpg\";s:5:\"width\";i:456;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:20:\"slider-1-281x162.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(409, 115, '_wp_attached_file', '2019/06/teach1-1.png'),
(410, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:257;s:6:\"height\";i:138;s:4:\"file\";s:20:\"2019/06/teach1-1.png\";s:5:\"sizes\";a:5:{s:10:\"room-thumb\";a:4:{s:4:\"file\";s:20:\"teach1-1-212x138.png\";s:5:\"width\";i:212;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"teach1-1-150x138.png\";s:5:\"width\";i:150;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:20:\"teach1-1-235x138.png\";s:5:\"width\";i:235;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:20:\"teach1-1-222x138.png\";s:5:\"width\";i:222;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:20:\"teach1-1-222x138.png\";s:5:\"width\";i:222;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(411, 112, '_thumbnail_id', '114'),
(412, 116, '_wp_attached_file', '2019/06/1-1.jpg'),
(413, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:464;s:6:\"height\";i:313;s:4:\"file\";s:15:\"2019/06/1-1.jpg\";s:5:\"sizes\";a:10:{s:10:\"room-thumb\";a:4:{s:4:\"file\";s:15:\"1-1-212x168.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"room-slide-thumb\";a:4:{s:4:\"file\";s:15:\"1-1-463x313.jpg\";s:5:\"width\";i:463;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:15:\"1-1-235x183.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:15:\"1-1-370x280.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:15:\"1-1-222x313.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:15:\"1-1-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:15:\"1-1-456x164.jpg\";s:5:\"width\";i:456;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:15:\"1-1-281x162.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(414, 117, '_wp_attached_file', '2019/06/2-1.jpg'),
(415, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:464;s:6:\"height\";i:313;s:4:\"file\";s:15:\"2019/06/2-1.jpg\";s:5:\"sizes\";a:10:{s:10:\"room-thumb\";a:4:{s:4:\"file\";s:15:\"2-1-212x168.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"room-slide-thumb\";a:4:{s:4:\"file\";s:15:\"2-1-463x313.jpg\";s:5:\"width\";i:463;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-1-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:15:\"2-1-235x183.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:15:\"2-1-370x280.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:15:\"2-1-222x313.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:15:\"2-1-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:15:\"2-1-456x164.jpg\";s:5:\"width\";i:456;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:15:\"2-1-281x162.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(416, 105, 'ale_gallery_id', 'a:2:{i:0;s:3:\"116\";i:1;s:3:\"117\";}'),
(425, 119, '_edit_lock', '1561575317:1'),
(426, 119, '_wp_page_template', 'template-contacts.php'),
(427, 119, '_edit_last', '1'),
(428, 119, 'bebe_address-label', 'Address'),
(430, 119, 'bebe_phone-label', 'Phone'),
(431, 119, 'bebe_phone', '8 800 435-17-25 / 8 800 435-17-26'),
(432, 119, 'bebe_email-label', 'Email'),
(433, 119, 'bebe_email', 'info@bebe.co.uk / sales@bebe.co.uk'),
(434, 119, 'bebe_address', 'Germany Berlin, Main street 43'),
(435, 119, 'bebe_googleshortcode', '[put_wpgm id=1]'),
(436, 122, '_form', '<div class=\"col-4\">\n    [text* your-name placeholder\"Type your name\"]\n</div>\n\n<div class=\"col-4\">\n    [email* your-email placeholder\"Type your email\"]\n</div>\n\n<div class=\"col-4\">\n    [text your-phone placeholder\"Type your phone\"]\n</div>\n\n[textarea your-message placeholder\"Type your message\"]\n\n[submit]'),
(437, 122, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:21:\"bebe \"[your-subject]\"\";s:6:\"sender\";s:25:\"bebe <aditon1800@mail.ru>\";s:9:\"recipient\";s:18:\"aditon1800@mail.ru\";s:4:\"body\";s:198:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on bebe (http://localhost:8888/WebMachine/lesson_2/wordpress)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(438, 122, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:21:\"bebe \"[your-subject]\"\";s:6:\"sender\";s:25:\"bebe <aditon1800@mail.ru>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:140:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on bebe (http://localhost:8888/WebMachine/lesson_2/wordpress)\";s:18:\"additional_headers\";s:28:\"Reply-To: aditon1800@mail.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wbm_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(439, 122, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(440, 122, '_additional_settings', ''),
(441, 122, '_locale', 'en_US'),
(442, 119, 'bebe_contact-form', '[contact-form-7 id=\"122\" title=\"Contact Us\"]'),
(443, 123, '_edit_last', '1'),
(444, 123, '_edit_lock', '1561726874:1'),
(445, 124, '_edit_last', '1'),
(446, 124, '_edit_lock', '1561897651:1'),
(447, 125, '_wp_attached_file', '2019/06/1-2.jpg'),
(448, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:212;s:6:\"height\";i:168;s:4:\"file\";s:15:\"2019/06/1-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:15:\"1-2-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:15:\"1-2-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:15:\"1-2-212x162.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(453, 128, '_wp_attached_file', '2019/06/6-1.jpg'),
(454, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:212;s:6:\"height\";i:168;s:4:\"file\";s:15:\"2019/06/6-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"6-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:15:\"6-1-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:15:\"6-1-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:15:\"6-1-212x162.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(455, 129, '_wp_attached_file', '2019/06/5-1.jpg'),
(456, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:212;s:6:\"height\";i:168;s:4:\"file\";s:15:\"2019/06/5-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"5-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:15:\"5-1-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:15:\"5-1-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:15:\"5-1-212x162.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(457, 130, '_wp_attached_file', '2019/06/4-1.jpg'),
(458, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:212;s:6:\"height\";i:168;s:4:\"file\";s:15:\"2019/06/4-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:15:\"4-1-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:15:\"4-1-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:15:\"4-1-212x162.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(459, 131, '_wp_attached_file', '2019/06/3-1.jpg'),
(460, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:212;s:6:\"height\";i:168;s:4:\"file\";s:15:\"2019/06/3-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:15:\"3-1-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:15:\"3-1-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:15:\"3-1-212x162.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(461, 132, '_wp_attached_file', '2019/06/2-2.jpg'),
(462, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:212;s:6:\"height\";i:168;s:4:\"file\";s:15:\"2019/06/2-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:15:\"2-2-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:15:\"2-2-212x164.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:15:\"2-2-212x162.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(465, 133, '_edit_last', '1'),
(466, 133, '_thumbnail_id', '132'),
(467, 133, '_edit_lock', '1561811157:1'),
(468, 135, '_edit_last', '1'),
(469, 135, '_edit_lock', '1561578114:1'),
(470, 135, '_thumbnail_id', '131'),
(471, 136, '_edit_last', '1'),
(472, 136, '_edit_lock', '1561582287:1'),
(473, 136, '_thumbnail_id', '129'),
(491, 124, 'ale_gallery_id', 'a:2:{i:0;s:3:\"140\";i:1;s:3:\"139\";}'),
(492, 139, '_wp_attached_file', '2019/06/room-1-2.jpg'),
(493, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:463;s:6:\"height\";i:355;s:4:\"file\";s:20:\"2019/06/room-1-2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"room-1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"room-1-2-300x230.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:20:\"room-1-2-235x183.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:20:\"room-1-2-370x280.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:20:\"room-1-2-222x341.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:20:\"room-1-2-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:20:\"room-1-2-456x164.jpg\";s:5:\"width\";i:456;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:20:\"room-1-2-281x162.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:20:\"room-1-2-212x168.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(494, 140, '_wp_attached_file', '2019/06/room-1-1.jpg'),
(495, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:463;s:6:\"height\";i:355;s:4:\"file\";s:20:\"2019/06/room-1-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"room-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"room-1-1-300x230.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:20:\"room-1-1-235x183.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:20:\"room-1-1-370x280.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:20:\"room-1-1-222x341.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:20:\"room-1-1-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:20:\"room-1-1-456x164.jpg\";s:5:\"width\";i:456;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:20:\"room-1-1-281x162.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:20:\"room-1-1-212x168.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(496, 124, '_thumbnail_id', '139'),
(497, 123, '_thumbnail_id', '130'),
(498, 142, '_menu_item_type', 'post_type'),
(499, 142, '_menu_item_menu_item_parent', '0'),
(500, 142, '_menu_item_object_id', '119'),
(501, 142, '_menu_item_object', 'page'),
(502, 142, '_menu_item_target', ''),
(503, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(504, 142, '_menu_item_xfn', ''),
(505, 142, '_menu_item_url', ''),
(507, 143, '_menu_item_type', 'post_type'),
(508, 143, '_menu_item_menu_item_parent', '0'),
(509, 143, '_menu_item_object_id', '105'),
(510, 143, '_menu_item_object', 'page'),
(511, 143, '_menu_item_target', ''),
(512, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(513, 143, '_menu_item_xfn', ''),
(514, 143, '_menu_item_url', ''),
(516, 144, '_menu_item_type', 'post_type'),
(517, 144, '_menu_item_menu_item_parent', '0'),
(518, 144, '_menu_item_object_id', '102'),
(519, 144, '_menu_item_object', 'page'),
(520, 144, '_menu_item_target', ''),
(521, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(522, 144, '_menu_item_xfn', ''),
(523, 144, '_menu_item_url', ''),
(525, 145, '_menu_item_type', 'post_type'),
(526, 145, '_menu_item_menu_item_parent', '0'),
(527, 145, '_menu_item_object_id', '24'),
(528, 145, '_menu_item_object', 'page'),
(529, 145, '_menu_item_target', ''),
(530, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(531, 145, '_menu_item_xfn', ''),
(532, 145, '_menu_item_url', ''),
(534, 102, '_edit_last', '1'),
(535, 146, '_edit_lock', '1561790248:1'),
(536, 146, '_wp_page_template', 'template-blogsidebar.php'),
(537, 146, '_edit_last', '1'),
(538, 148, '_menu_item_type', 'post_type_archive'),
(539, 148, '_menu_item_menu_item_parent', '0'),
(540, 148, '_menu_item_object_id', '-59'),
(541, 148, '_menu_item_object', 'rooms'),
(542, 148, '_menu_item_target', ''),
(543, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(544, 148, '_menu_item_xfn', ''),
(545, 148, '_menu_item_url', ''),
(555, 151, '_wp_attached_file', '2019/06/slider-2.jpg'),
(556, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:505;s:4:\"file\";s:20:\"2019/06/slider-2.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slider-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slider-2-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slider-2-768x422.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:422;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:20:\"slider-2-235x183.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:20:\"slider-2-370x280.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:20:\"slider-2-222x341.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:20:\"slider-2-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:20:\"slider-2-456x164.jpg\";s:5:\"width\";i:456;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:20:\"slider-2-281x162.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:20:\"slider-2-212x168.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"room-slide-thumb\";a:4:{s:4:\"file\";s:20:\"slider-2-463x355.jpg\";s:5:\"width\";i:463;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(557, 152, '_wp_attached_file', '2019/06/slider2.jpg'),
(558, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:505;s:4:\"file\";s:19:\"2019/06/slider2.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider2-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider2-768x422.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:422;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:19:\"slider2-235x183.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:19:\"slider2-370x280.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:19:\"slider2-222x341.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:19:\"slider2-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:19:\"slider2-456x164.jpg\";s:5:\"width\";i:456;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:19:\"slider2-281x162.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:19:\"slider2-212x168.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"room-slide-thumb\";a:4:{s:4:\"file\";s:19:\"slider2-463x355.jpg\";s:5:\"width\";i:463;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(559, 153, '_wp_attached_file', '2019/06/slider3.jpg'),
(560, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:505;s:4:\"file\";s:19:\"2019/06/slider3.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slider3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slider3-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slider3-768x422.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:422;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"post-front\";a:4:{s:4:\"file\";s:19:\"slider3-235x183.jpg\";s:5:\"width\";i:235;s:6:\"height\";i:183;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"post-single\";a:4:{s:4:\"file\";s:19:\"slider3-370x280.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_one\";a:4:{s:4:\"file\";s:19:\"slider3-222x341.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"gallery_two\";a:4:{s:4:\"file\";s:19:\"slider3-222x164.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"gallery_three\";a:4:{s:4:\"file\";s:19:\"slider3-456x164.jpg\";s:5:\"width\";i:456;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"teacher-thumb\";a:4:{s:4:\"file\";s:19:\"slider3-281x162.jpg\";s:5:\"width\";i:281;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"room-thumb\";a:4:{s:4:\"file\";s:19:\"slider3-212x168.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"room-slide-thumb\";a:4:{s:4:\"file\";s:19:\"slider3-463x355.jpg\";s:5:\"width\";i:463;s:6:\"height\";i:355;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(561, 86, 'ale_gallery_id', 'a:3:{i:0;s:3:\"151\";i:1;s:3:\"152\";i:2;s:3:\"153\";}');

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
(1, 1, '2019-06-14 16:17:40', '2019-06-14 16:17:40', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-06-19 19:52:36', '2019-06-19 19:52:36', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-06-14 16:17:40', '2019-06-14 16:17:40', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/WebMachine/lesson_2/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-06-14 16:17:40', '2019-06-14 16:17:40', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-06-14 16:17:40', '2019-06-14 16:17:40', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8888/WebMachine/lesson_2/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-06-14 16:17:40', '2019-06-14 16:17:40', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?page_id=3', 0, 'page', '', 0),
(15, 1, '2019-06-16 16:23:19', '2019-06-16 16:23:19', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-06-16 16:23:19', '2019-06-16 16:23:19', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/logo.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2019-06-16 16:23:42', '2019-06-16 16:23:42', '', 'logo-respons', '', 'inherit', 'open', 'closed', '', 'logo-respons', '', '', '2019-06-16 16:23:42', '2019-06-16 16:23:42', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/logo-respons.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2019-06-16 18:02:17', '2019-06-16 18:02:17', '', 'slide1', '', 'inherit', 'open', 'closed', '', 'slide1', '', '', '2019-06-16 18:02:17', '2019-06-16 18:02:17', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/slide1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2019-06-16 18:02:53', '2019-06-16 18:02:53', '', 'slide2', '', 'inherit', 'open', 'closed', '', 'slide2', '', '', '2019-06-16 18:02:53', '2019-06-16 18:02:53', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/slide2.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2019-06-16 20:16:26', '2019-06-16 20:16:26', '', 'logo-small', '', 'inherit', 'open', 'closed', '', 'logo-small', '', '', '2019-06-16 20:16:26', '2019-06-16 20:16:26', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/logo-small.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2019-06-16 20:34:47', '2019-06-16 20:34:47', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2019-06-16 20:34:47', '2019-06-16 20:34:47', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2019-06-16 20:34:47', '2019-06-16 20:34:47', '', 'About something', '', 'publish', 'closed', 'closed', '', 'about-something', '', '', '2019-06-16 20:34:47', '2019-06-16 20:34:47', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2019-06-16 20:34:47', '2019-06-16 20:34:47', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-06-16 20:34:47', '2019-06-16 20:34:47', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?p=22', 3, 'nav_menu_item', '', 0),
(23, 1, '2019-06-16 21:13:39', '2019-06-16 21:13:39', '[text* your-name placeholder\"Name\"]\r\n[email* your-email placeholder\"Email\"]\r\n[textarea your-message placeholder\"Your Message\"]\r\n[submit \"\"]\n1\nbebe \"[your-subject]\"\nbebe <aditon1800@mail.ru>\naditon1800@mail.ru\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on bebe (http://localhost:8888/WebMachine/lesson_2/wordpress)\nReply-To: [your-email]\n\n\n\n\nbebe \"[your-subject]\"\nbebe <aditon1800@mail.ru>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on bebe (http://localhost:8888/WebMachine/lesson_2/wordpress)\nReply-To: aditon1800@mail.ru\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-06-26 18:30:26', '2019-06-26 18:30:26', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=wpcf7_contact_form&#038;p=23', 0, 'wpcf7_contact_form', '', 0),
(24, 1, '2019-06-17 17:29:02', '2019-06-17 17:29:02', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2019-06-28 20:22:29', '2019-06-28 20:22:29', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?page_id=24', 0, 'page', '', 0),
(25, 1, '2019-06-17 17:29:02', '2019-06-17 17:29:02', '', 'Homepage', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-06-17 17:29:02', '2019-06-17 17:29:02', '', 24, 'http://localhost:8888/WebMachine/lesson_2/wordpress/2019/06/17/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-06-17 17:58:09', '2019-06-17 17:58:09', '', 'about', '', 'inherit', 'open', 'closed', '', 'about', '', '', '2019-06-17 17:58:09', '2019-06-17 17:58:09', '', 24, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/about.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2019-06-17 17:59:11', '2019-06-17 17:59:11', '', 'about-1', '', 'inherit', 'open', 'closed', '', 'about-1', '', '', '2019-06-17 17:59:11', '2019-06-17 17:59:11', '', 24, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/about-1.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2019-06-17 17:59:19', '2019-06-17 17:59:19', '', 'about-2', '', 'inherit', 'open', 'closed', '', 'about-2', '', '', '2019-06-17 17:59:19', '2019-06-17 17:59:19', '', 24, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/about-2.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2019-06-17 17:59:29', '2019-06-17 17:59:29', '', 'about-3', '', 'inherit', 'open', 'closed', '', 'about-3', '', '', '2019-06-17 17:59:29', '2019-06-17 17:59:29', '', 24, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/about-3.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2019-06-17 20:01:14', '2019-06-17 20:01:14', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-06-17 20:01:14', '2019-06-17 20:01:14', '', 1, 'http://localhost:8888/WebMachine/lesson_2/wordpress/2019/06/17/1-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-06-17 20:01:51', '2019-06-17 20:01:51', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum eu fugiat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Markered list</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li><li>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque inventore veritatis et quasi architecto beatae vitae erno.</p>\n<!-- /wp:paragraph -->', 'First post', '', 'publish', 'open', 'open', '', 'first-post', '', '', '2019-06-19 20:51:53', '2019-06-19 20:51:53', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?p=33', 0, 'post', '', 6),
(34, 1, '2019-06-17 20:01:51', '2019-06-17 20:01:51', '<!-- wp:paragraph -->\n<p>Lorem</p>\n<!-- /wp:paragraph -->', 'First post', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-06-17 20:01:51', '2019-06-17 20:01:51', '', 33, 'http://localhost:8888/WebMachine/lesson_2/wordpress/2019/06/17/33-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-06-17 20:02:15', '2019-06-17 20:02:15', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima quidem sint nesciunt ipsa illo accusamus rerum, incidunt quo in, labore cumque quis? At sequi facilis itaque, quis fugit quisquam reprehenderit optio accusantium quod doloremque vitae deserunt, quae nisi, libero accusamus modi. Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam. Totam accusantium animi vitae numquam mollitia aliquam temporibus nulla, deleniti eos soluta ea eligendi optio eius culpa necessitatibus atque, veritatis vero velit deserunt nisi voluptatum aperiam non? Dolor pariatur consequatur omnis reprehenderit illo obcaecati, recusandae magnam vel deserunt! Hic nesciunt nulla voluptatum esse sit quos vitae, distinctio est voluptate, aliquam beatae iste nostrum magnam consectetur explicabo repellat iure ab repellendus quo aut. Illum laboriosam dolor vitae deserunt nemo odit tempora asperiores aliquam minus, voluptate, in error. Temporibus vitae omnis molestiae commodi quis blanditiis, facere. Dolor explicabo, cum inventore ipsum necessitatibus, ut excepturi mollitia.</p>\n<!-- /wp:paragraph -->', 'Second Post', '', 'publish', 'open', 'open', '', 'second-post', '', '', '2019-06-19 20:47:33', '2019-06-19 20:47:33', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?p=37', 0, 'post', '', 1),
(38, 1, '2019-06-17 20:02:15', '2019-06-17 20:02:15', '<!-- wp:paragraph -->\n<p>test test test</p>\n<!-- /wp:paragraph -->', 'Second Post', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-06-17 20:02:15', '2019-06-17 20:02:15', '', 37, 'http://localhost:8888/WebMachine/lesson_2/wordpress/2019/06/17/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-06-17 20:02:38', '2019-06-17 20:02:38', '<!-- wp:paragraph -->\n<p>At sequi facilis itaque, quis fugit quisquam reprehenderit optio accusantium quod doloremque vitae deserunt, quae nisi, libero accusamus modi. Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam. Totam accusantium animi vitae numquam mollitia aliquam temporibus nulla, deleniti eos soluta ea eligendi optio eius culpa necessitatibus atque, veritatis vero velit deserunt nisi voluptatum aperiam non? Dolor pariatur consequatur omnis reprehenderit illo obcaecati, recusandae magnam vel deserunt! Hic nesciunt nulla voluptatum esse sit quos vitae, distinctio est voluptate, aliquam beatae iste nostrum magnam consectetur explicabo repellat iure ab repellendus quo aut. Illum laboriosam dolor vitae deserunt nemo odit tempora asperiores aliquam minus, voluptate, in error. Temporibus vitae omnis molestiae commodi quis blanditiis, facere. Dolor explicabo, cum inventore ipsum necessitatibus, ut excepturi mollitia.</p>\n<!-- /wp:paragraph -->', 'Third Post', '', 'publish', 'open', 'open', '', 'third-post', '', '', '2019-06-19 20:47:42', '2019-06-19 20:47:42', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?p=39', 0, 'post', '', 0),
(40, 1, '2019-06-17 20:02:38', '2019-06-17 20:02:38', '<!-- wp:paragraph -->\n<p>Some text</p>\n<!-- /wp:paragraph -->', 'Third Post', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-06-17 20:02:38', '2019-06-17 20:02:38', '', 39, 'http://localhost:8888/WebMachine/lesson_2/wordpress/2019/06/17/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-06-17 20:03:07', '2019-06-17 20:03:07', '<!-- wp:paragraph -->\n<p>Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam. Totam accusantium animi vitae numquam mollitia aliquam temporibus nulla, deleniti eos soluta ea eligendi optio eius culpa necessitatibus atque, veritatis vero velit deserunt nisi voluptatum aperiam non?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima quidem sint nesciunt ipsa illo accusamus rerum, incidunt quo in, labore cumque quis? At sequi facilis itaque, quis fugit quisquam reprehenderit optio accusantium quod doloremque vitae deserunt, quae nisi, libero accusamus modi. Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam.</p>\n<!-- /wp:paragraph -->', 'Fourth Post', '', 'publish', 'open', 'open', '', 'fourth-post', '', '', '2019-06-19 20:50:47', '2019-06-19 20:50:47', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?p=41', 0, 'post', '', 0),
(42, 1, '2019-06-17 20:03:07', '2019-06-17 20:03:07', '', 'Fourth Post', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-06-17 20:03:07', '2019-06-17 20:03:07', '', 41, 'http://localhost:8888/WebMachine/lesson_2/wordpress/2019/06/17/41-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-06-17 21:04:09', '2019-06-17 21:04:09', '', 'Img 1', '', 'publish', 'closed', 'closed', '', 'img-1', '', '', '2019-06-17 21:04:09', '2019-06-17 21:04:09', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=post_type_name&#038;p=66', 0, 'post_type_name', '', 0),
(67, 1, '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', 66, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', 66, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', 66, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2019-06-17 21:03:58', '2019-06-17 21:03:58', '', 66, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', 66, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', 66, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', 66, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', 66, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', '10', '', 'inherit', 'open', 'closed', '', '10', '', '', '2019-06-17 21:03:59', '2019-06-17 21:03:59', '', 66, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/10.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2019-06-17 21:04:34', '2019-06-17 21:04:34', '', 'Img 2', '', 'publish', 'closed', 'closed', '', 'img-2', '', '', '2019-06-17 21:04:34', '2019-06-17 21:04:34', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=post_type_name&#038;p=77', 0, 'post_type_name', '', 0),
(78, 1, '2019-06-17 21:04:48', '2019-06-17 21:04:48', '', 'Img 3', '', 'publish', 'closed', 'closed', '', 'img-3', '', '', '2019-06-17 21:04:48', '2019-06-17 21:04:48', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=post_type_name&#038;p=78', 0, 'post_type_name', '', 0),
(79, 1, '2019-06-17 21:04:58', '2019-06-17 21:04:58', '', 'Img 4', '', 'publish', 'closed', 'closed', '', 'img-4', '', '', '2019-06-17 21:04:58', '2019-06-17 21:04:58', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=post_type_name&#038;p=79', 0, 'post_type_name', '', 0),
(80, 1, '2019-06-17 21:05:12', '2019-06-17 21:05:12', '', 'Img 5', '', 'publish', 'closed', 'closed', '', 'img-5', '', '', '2019-06-17 21:05:13', '2019-06-17 21:05:13', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=post_type_name&#038;p=80', 0, 'post_type_name', '', 0),
(81, 1, '2019-06-17 21:05:24', '2019-06-17 21:05:24', '', 'Img 6', '', 'publish', 'closed', 'closed', '', 'img-6', '', '', '2019-06-17 21:05:24', '2019-06-17 21:05:24', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=post_type_name&#038;p=81', 0, 'post_type_name', '', 0),
(82, 1, '2019-06-17 21:05:38', '2019-06-17 21:05:38', '', 'Img 7', '', 'publish', 'closed', 'closed', '', 'img-7', '', '', '2019-06-17 21:05:38', '2019-06-17 21:05:38', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=post_type_name&#038;p=82', 0, 'post_type_name', '', 0),
(83, 1, '2019-06-17 21:06:07', '2019-06-17 21:06:07', '', 'Img 8', '', 'publish', 'closed', 'closed', '', 'img-8', '', '', '2019-06-17 21:06:07', '2019-06-17 21:06:07', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=post_type_name&#038;p=83', 0, 'post_type_name', '', 0),
(84, 1, '2019-06-17 21:06:16', '2019-06-17 21:06:16', '', 'Img 9', '', 'publish', 'closed', 'closed', '', 'img-9', '', '', '2019-06-17 21:06:16', '2019-06-17 21:06:16', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=post_type_name&#038;p=84', 0, 'post_type_name', '', 0),
(85, 1, '2019-06-17 21:06:29', '2019-06-17 21:06:29', '', 'Img 10', '', 'publish', 'closed', 'closed', '', 'img-10', '', '', '2019-06-17 21:06:29', '2019-06-17 21:06:29', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=post_type_name&#038;p=85', 0, 'post_type_name', '', 0),
(86, 1, '2019-06-17 21:27:10', '2019-06-17 21:27:10', '                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu` fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, et quasi architecto beatae vitae dicta sunt aspernatur aut odi', 'Img 1', '', 'publish', 'closed', 'closed', '', 'img-1', '', '', '2019-07-01 12:07:38', '2019-07-01 12:07:38', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=gallery&#038;p=86', 0, 'gallery', '', 0),
(87, 1, '2019-06-17 21:27:29', '2019-06-17 21:27:29', '', 'Img 2', '', 'publish', 'closed', 'closed', '', 'img-2', '', '', '2019-06-17 21:27:29', '2019-06-17 21:27:29', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=gallery&#038;p=87', 0, 'gallery', '', 0),
(88, 1, '2019-06-17 21:27:42', '2019-06-17 21:27:42', '', 'Img 3', '', 'publish', 'closed', 'closed', '', 'img-3', '', '', '2019-06-17 21:27:42', '2019-06-17 21:27:42', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=gallery&#038;p=88', 0, 'gallery', '', 0),
(89, 1, '2019-06-17 21:27:55', '2019-06-17 21:27:55', '', 'Img 4', '', 'publish', 'closed', 'closed', '', 'img-4', '', '', '2019-06-17 21:27:55', '2019-06-17 21:27:55', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=gallery&#038;p=89', 0, 'gallery', '', 0),
(90, 1, '2019-06-17 21:28:06', '2019-06-17 21:28:06', '', 'Img 5', '', 'publish', 'closed', 'closed', '', 'img-5', '', '', '2019-06-17 21:28:06', '2019-06-17 21:28:06', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=gallery&#038;p=90', 0, 'gallery', '', 0),
(91, 1, '2019-06-17 21:28:15', '2019-06-17 21:28:15', '', 'Img 6', '', 'publish', 'closed', 'closed', '', 'img-6', '', '', '2019-06-17 21:28:15', '2019-06-17 21:28:15', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=gallery&#038;p=91', 0, 'gallery', '', 0),
(92, 1, '2019-06-17 21:28:27', '2019-06-17 21:28:27', '', 'Img 7', '', 'publish', 'closed', 'closed', '', 'img-7', '', '', '2019-06-17 22:07:52', '2019-06-17 22:07:52', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=gallery&#038;p=92', 0, 'gallery', '', 0),
(93, 1, '2019-06-17 21:28:38', '2019-06-17 21:28:38', '', 'Img 8', '', 'publish', 'closed', 'closed', '', 'img-8', '', '', '2019-06-17 22:02:04', '2019-06-17 22:02:04', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=gallery&#038;p=93', 0, 'gallery', '', 0),
(94, 1, '2019-06-17 21:28:46', '2019-06-17 21:28:46', '', 'Img 9', '', 'publish', 'closed', 'closed', '', 'img-9', '', '', '2019-06-17 22:07:39', '2019-06-17 22:07:39', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=gallery&#038;p=94', 0, 'gallery', '', 0),
(95, 1, '2019-06-17 21:29:00', '2019-06-17 21:29:00', '', 'Img 10', '', 'publish', 'closed', 'closed', '', 'img-10', '', '', '2019-06-28 20:23:00', '2019-06-28 20:23:00', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=gallery&#038;p=95', 0, 'gallery', '', 0),
(96, 1, '2019-06-17 22:04:43', '2019-06-17 22:04:43', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2019-06-17 22:04:43', '2019-06-17 22:04:43', '', 94, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/9.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2019-06-19 19:50:22', '2019-06-19 19:50:22', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum eu fugiat</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Markered list</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</li><li>Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</li><li>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</li><li>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque inventore veritatis et quasi architecto beatae vitae erno.</p>\n<!-- /wp:paragraph -->', 'First post', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-06-19 19:50:22', '2019-06-19 19:50:22', '', 33, 'http://localhost:8888/WebMachine/lesson_2/wordpress/2019/06/19/33-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-06-19 19:52:05', '2019-06-19 19:52:05', '', 'slider', '', 'inherit', 'open', 'closed', '', 'slider', '', '', '2019-06-19 19:52:05', '2019-06-19 19:52:05', '', 33, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/slider.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2019-06-19 19:53:11', '2019-06-19 19:53:11', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima quidem sint nesciunt ipsa illo accusamus rerum, incidunt quo in, labore cumque quis? At sequi facilis itaque, quis fugit quisquam reprehenderit optio accusantium quod doloremque vitae deserunt, quae nisi, libero accusamus modi. Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam. Totam accusantium animi vitae numquam mollitia aliquam temporibus nulla, deleniti eos soluta ea eligendi optio eius culpa necessitatibus atque, veritatis vero velit deserunt nisi voluptatum aperiam non? Dolor pariatur consequatur omnis reprehenderit illo obcaecati, recusandae magnam vel deserunt! Hic nesciunt nulla voluptatum esse sit quos vitae, distinctio est voluptate, aliquam beatae iste nostrum magnam consectetur explicabo repellat iure ab repellendus quo aut. Illum laboriosam dolor vitae deserunt nemo odit tempora asperiores aliquam minus, voluptate, in error. Temporibus vitae omnis molestiae commodi quis blanditiis, facere. Dolor explicabo, cum inventore ipsum necessitatibus, ut excepturi mollitia.</p>\n<!-- /wp:paragraph -->', 'Second Post', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-06-19 19:53:11', '2019-06-19 19:53:11', '', 37, 'http://localhost:8888/WebMachine/lesson_2/wordpress/2019/06/19/37-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-06-19 19:53:23', '2019-06-19 19:53:23', '<!-- wp:paragraph -->\n<p>At sequi facilis itaque, quis fugit quisquam reprehenderit optio accusantium quod doloremque vitae deserunt, quae nisi, libero accusamus modi. Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam. Totam accusantium animi vitae numquam mollitia aliquam temporibus nulla, deleniti eos soluta ea eligendi optio eius culpa necessitatibus atque, veritatis vero velit deserunt nisi voluptatum aperiam non? Dolor pariatur consequatur omnis reprehenderit illo obcaecati, recusandae magnam vel deserunt! Hic nesciunt nulla voluptatum esse sit quos vitae, distinctio est voluptate, aliquam beatae iste nostrum magnam consectetur explicabo repellat iure ab repellendus quo aut. Illum laboriosam dolor vitae deserunt nemo odit tempora asperiores aliquam minus, voluptate, in error. Temporibus vitae omnis molestiae commodi quis blanditiis, facere. Dolor explicabo, cum inventore ipsum necessitatibus, ut excepturi mollitia.</p>\n<!-- /wp:paragraph -->', 'Third Post', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-06-19 19:53:23', '2019-06-19 19:53:23', '', 39, 'http://localhost:8888/WebMachine/lesson_2/wordpress/2019/06/19/39-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-06-19 19:53:55', '2019-06-19 19:53:55', '<!-- wp:paragraph -->\n<p>Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam. Totam accusantium animi vitae numquam mollitia aliquam temporibus nulla, deleniti eos soluta ea eligendi optio eius culpa necessitatibus atque, veritatis vero velit deserunt nisi voluptatum aperiam non?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima quidem sint nesciunt ipsa illo accusamus rerum, incidunt quo in, labore cumque quis? At sequi facilis itaque, quis fugit quisquam reprehenderit optio accusantium quod doloremque vitae deserunt, quae nisi, libero accusamus modi. Aut incidunt, aliquid fuga quisquam suscipit quasi totam corrupti culpa, qui, tenetur veniam voluptates necessitatibus ipsam.</p>\n<!-- /wp:paragraph -->', 'Fourth Post', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-06-19 19:53:55', '2019-06-19 19:53:55', '', 41, 'http://localhost:8888/WebMachine/lesson_2/wordpress/2019/06/19/41-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-06-23 18:59:00', '2019-06-23 18:59:00', '', 'Activities', '', 'publish', 'closed', 'closed', '', 'activities', '', '', '2019-06-28 20:37:25', '2019-06-28 20:37:25', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?page_id=102', 0, 'page', '', 0),
(103, 1, '2019-06-23 18:59:00', '2019-06-23 18:59:00', '', 'Activities', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2019-06-23 18:59:00', '2019-06-23 18:59:00', '', 102, 'http://localhost:8888/WebMachine/lesson_2/wordpress/2019/06/23/102-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2019-06-23 20:56:22', '2019-06-23 20:56:22', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat Neque porro quisquam est, qui</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-06-28 20:37:35', '2019-06-28 20:37:35', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?page_id=105', 0, 'page', '', 0),
(106, 1, '2019-06-23 20:56:22', '2019-06-23 20:56:22', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat Neque porro quisquam est, qui</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2019-06-23 20:56:22', '2019-06-23 20:56:22', '', 105, 'http://localhost:8888/WebMachine/lesson_2/wordpress/2019/06/23/105-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2019-06-23 21:20:52', '2019-06-23 21:20:52', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure', 'Ellene Marlen', '', 'publish', 'closed', 'closed', '', 'ellene-marlen', '', '', '2019-06-24 19:01:23', '2019-06-24 19:01:23', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=teachers&#038;p=107', 0, 'teachers', '', 0),
(109, 1, '2019-06-23 21:20:38', '2019-06-23 21:20:38', '', 'teach1', '', 'inherit', 'open', 'closed', '', 'teach1', '', '', '2019-06-24 18:45:42', '2019-06-24 18:45:42', '', 107, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/teach1.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2019-06-23 21:20:38', '2019-06-23 21:20:38', '', 'teach2', '', 'inherit', 'open', 'closed', '', 'teach2', '', '', '2019-06-24 18:45:44', '2019-06-24 18:45:44', '', 107, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/teach2.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2019-06-23 21:21:19', '2019-06-23 21:21:19', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis no exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Nicole Blume', '', 'publish', 'closed', 'closed', '', 'nicole-blume', '', '', '2019-06-28 20:22:49', '2019-06-28 20:22:49', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=teachers&#038;p=111', 0, 'teachers', '', 0),
(112, 1, '2019-06-23 21:22:39', '2019-06-23 21:22:39', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis no ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Alex Socha', '', 'publish', 'closed', 'closed', '', 'alex-socha', '', '', '2019-06-24 19:00:38', '2019-06-24 19:00:38', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=teachers&#038;p=112', 0, 'teachers', '', 0),
(114, 1, '2019-06-24 18:47:51', '2019-06-24 18:47:51', '', 'slider', '', 'inherit', 'open', 'closed', '', 'slider-2', '', '', '2019-06-24 18:47:51', '2019-06-24 18:47:51', '', 112, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/slider-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2019-06-24 18:59:37', '2019-06-24 18:59:37', '', 'teach1', '', 'inherit', 'open', 'closed', '', 'teach1-2', '', '', '2019-06-24 18:59:37', '2019-06-24 18:59:37', '', 112, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/teach1-1.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2019-06-24 19:39:28', '2019-06-24 19:39:28', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2019-06-24 19:39:28', '2019-06-24 19:39:28', '', 105, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2019-06-24 19:39:28', '2019-06-24 19:39:28', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2019-06-24 19:39:28', '2019-06-24 19:39:28', '', 105, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2019-06-26 17:15:59', '2019-06-26 17:15:59', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint non proiden.</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-06-26 18:34:54', '2019-06-26 18:34:54', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?page_id=119', 0, 'page', '', 0),
(120, 1, '2019-06-26 17:15:59', '2019-06-26 17:15:59', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint non proiden.</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2019-06-26 17:15:59', '2019-06-26 17:15:59', '', 119, 'http://localhost:8888/WebMachine/lesson_2/wordpress/2019/06/26/119-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wbm_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(122, 1, '2019-06-26 18:19:53', '2019-06-26 18:19:53', '<div class=\"col-4\">\r\n    [text* your-name placeholder\"Type your name\"]\r\n</div>\r\n\r\n<div class=\"col-4\">\r\n    [email* your-email placeholder\"Type your email\"]\r\n</div>\r\n\r\n<div class=\"col-4\">\r\n    [text your-phone placeholder\"Type your phone\"]\r\n</div>\r\n\r\n[textarea your-message placeholder\"Type your message\"]\r\n\r\n[submit]\n1\nbebe \"[your-subject]\"\nbebe <aditon1800@mail.ru>\naditon1800@mail.ru\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on bebe (http://localhost:8888/WebMachine/lesson_2/wordpress)\nReply-To: [your-email]\n\n\n\n\nbebe \"[your-subject]\"\nbebe <aditon1800@mail.ru>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on bebe (http://localhost:8888/WebMachine/lesson_2/wordpress)\nReply-To: aditon1800@mail.ru\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-06-26 18:19:53', '2019-06-26 18:19:53', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=wpcf7_contact_form&p=122', 0, 'wpcf7_contact_form', '', 0),
(123, 1, '2019-06-26 19:43:05', '2019-06-26 19:43:05', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.', 'Children Room #2', '', 'publish', 'closed', 'closed', '', 'children-room-2', '', '', '2019-06-27 08:38:33', '2019-06-27 08:38:33', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=rooms&#038;p=123', 0, 'rooms', '', 0),
(124, 1, '2019-06-26 19:42:27', '2019-06-26 19:42:27', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and it to make a type specimen book. It has survived not only five centuries.', 'Children Room #1', '', 'publish', 'closed', 'closed', '', 'children-room-1', '', '', '2019-06-30 12:29:48', '2019-06-30 12:29:48', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=rooms&#038;p=124', 0, 'rooms', '', 0),
(125, 1, '2019-06-26 19:42:02', '2019-06-26 19:42:02', '', '1', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2019-06-26 19:42:02', '2019-06-26 19:42:02', '', 124, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2019-06-26 19:42:15', '2019-06-26 19:42:15', '', '6', '', 'inherit', 'open', 'closed', '', '6-2', '', '', '2019-06-26 19:42:15', '2019-06-26 19:42:15', '', 124, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/6-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2019-06-26 19:42:15', '2019-06-26 19:42:15', '', '5', '', 'inherit', 'open', 'closed', '', '5-2', '', '', '2019-06-26 19:42:15', '2019-06-26 19:42:15', '', 124, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/5-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2019-06-26 19:42:16', '2019-06-26 19:42:16', '', '4', '', 'inherit', 'open', 'closed', '', '4-2', '', '', '2019-06-26 19:42:16', '2019-06-26 19:42:16', '', 124, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2019-06-26 19:42:16', '2019-06-26 19:42:16', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2019-06-26 19:42:16', '2019-06-26 19:42:16', '', 124, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2019-06-26 19:42:16', '2019-06-26 19:42:16', '', '2', '', 'inherit', 'open', 'closed', '', '2-3', '', '', '2019-06-26 19:42:16', '2019-06-26 19:42:16', '', 124, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2019-06-26 19:43:56', '2019-06-26 19:43:56', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.', 'Children Room #3', '', 'publish', 'closed', 'closed', '', 'children-room-3', '', '', '2019-06-26 19:43:56', '2019-06-26 19:43:56', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=rooms&#038;p=133', 0, 'rooms', '', 0),
(134, 1, '2019-06-26 19:43:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-06-26 19:43:46', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=rooms&p=134', 0, 'rooms', '', 0),
(135, 1, '2019-06-26 19:44:16', '2019-06-26 19:44:16', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'Children Room #4', '', 'publish', 'closed', 'closed', '', 'children-room-4', '', '', '2019-06-26 19:44:16', '2019-06-26 19:44:16', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=rooms&#038;p=135', 0, 'rooms', '', 0),
(136, 1, '2019-06-26 19:44:42', '2019-06-26 19:44:42', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'Children Room #5', '', 'publish', 'closed', 'closed', '', 'children-room-5', '', '', '2019-06-26 19:44:42', '2019-06-26 19:44:42', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?post_type=rooms&#038;p=136', 0, 'rooms', '', 0),
(139, 1, '2019-06-27 08:24:16', '2019-06-27 08:24:16', '', 'room-1-2', '', 'inherit', 'open', 'closed', '', 'room-1-2', '', '', '2019-06-27 08:24:16', '2019-06-27 08:24:16', '', 124, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/room-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2019-06-27 08:24:16', '2019-06-27 08:24:16', '', 'room-1-1', '', 'inherit', 'open', 'closed', '', 'room-1-1', '', '', '2019-06-27 08:24:16', '2019-06-27 08:24:16', '', 124, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/room-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2019-06-28 20:19:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-28 20:19:49', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?p=141', 0, 'post', '', 0),
(142, 1, '2019-06-28 20:25:13', '2019-06-28 20:25:13', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2019-06-30 12:28:37', '2019-06-30 12:28:37', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?p=142', 5, 'nav_menu_item', '', 0),
(143, 1, '2019-06-28 20:25:13', '2019-06-28 20:25:13', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2019-06-30 12:28:37', '2019-06-30 12:28:37', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?p=143', 2, 'nav_menu_item', '', 0),
(144, 1, '2019-06-28 20:25:13', '2019-06-28 20:25:13', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2019-06-30 12:28:37', '2019-06-30 12:28:37', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?p=144', 4, 'nav_menu_item', '', 0),
(145, 1, '2019-06-28 20:25:13', '2019-06-28 20:25:13', ' ', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2019-06-30 12:28:37', '2019-06-30 12:28:37', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?p=145', 1, 'nav_menu_item', '', 0),
(146, 1, '2019-06-29 06:36:09', '2019-06-29 06:36:09', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into</p>\n<!-- /wp:paragraph -->', 'Left custom sidebar', '', 'publish', 'closed', 'closed', '', 'left-custom-sidebar', '', '', '2019-06-29 06:38:53', '2019-06-29 06:38:53', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?page_id=146', 0, 'page', '', 0),
(147, 1, '2019-06-29 06:36:09', '2019-06-29 06:36:09', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into</p>\n<!-- /wp:paragraph -->', 'Left custom sidebar', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2019-06-29 06:36:09', '2019-06-29 06:36:09', '', 146, 'http://localhost:8888/WebMachine/lesson_2/wordpress/146-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2019-06-30 12:28:37', '2019-06-30 12:28:37', ' ', '', '', 'publish', 'closed', 'closed', '', '148', '', '', '2019-06-30 12:28:37', '2019-06-30 12:28:37', '', 0, 'http://localhost:8888/WebMachine/lesson_2/wordpress/?p=148', 3, 'nav_menu_item', '', 0),
(150, 1, '2019-07-01 11:42:29', '2019-07-01 11:42:29', '                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu` fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium\n                doloremque laudantium, totam rem aperiam, et quasi architecto beatae vitae dicta sunt aspernatur aut odi', 'Img 1', '', 'inherit', 'closed', 'closed', '', '86-autosave-v1', '', '', '2019-07-01 11:42:29', '2019-07-01 11:42:29', '', 86, 'http://localhost:8888/WebMachine/lesson_2/wordpress/86-autosave-v1/', 0, 'revision', '', 0),
(151, 1, '2019-07-01 11:38:56', '2019-07-01 11:38:56', '', 'slider', '', 'inherit', 'open', 'closed', '', 'slider-3', '', '', '2019-07-01 11:38:56', '2019-07-01 11:38:56', '', 86, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/slider-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2019-07-01 11:38:57', '2019-07-01 11:38:57', '', 'slider2', '', 'inherit', 'open', 'closed', '', 'slider2', '', '', '2019-07-01 11:38:57', '2019-07-01 11:38:57', '', 86, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/slider2.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2019-07-01 11:38:58', '2019-07-01 11:38:58', '', 'slider3', '', 'inherit', 'open', 'closed', '', 'slider3', '', '', '2019-07-01 11:38:58', '2019-07-01 11:38:58', '', 86, 'http://localhost:8888/WebMachine/lesson_2/wordpress/wp-content/uploads/2019/06/slider3.jpg', 0, 'attachment', 'image/jpeg', 0);

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
(10, 'New children', 'new-children', 0),
(11, 'Children', 'children', 0),
(12, 'Girls', 'girls', 0),
(13, 'Some category', 'some-category', 0),
(14, 'Some_category', 'some_category', 0);

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
(20, 5, 0),
(21, 5, 0),
(22, 5, 0),
(33, 6, 0),
(33, 7, 0),
(33, 8, 0),
(37, 9, 0),
(39, 1, 0),
(39, 9, 0),
(41, 10, 0),
(86, 11, 0),
(86, 14, 0),
(142, 4, 0),
(143, 4, 0),
(144, 4, 0),
(145, 4, 0),
(148, 4, 0);

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
(4, 4, 'nav_menu', '', 0, 5),
(5, 5, 'nav_menu', '', 0, 3),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'category', '', 0, 2),
(10, 10, 'category', '', 0, 1),
(11, 11, 'gallery-category', '', 0, 1),
(12, 12, 'gallery-category', '', 0, 0),
(13, 13, 'gallery-category', '', 0, 0),
(14, 14, 'gallery-category', '', 0, 1);

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
(17, 1, 'wbm_dashboard_quick_press_last_post_id', '141'),
(18, 1, 'wbm_r_tru_u_x', 'a:2:{s:2:\"id\";s:0:\"\";s:7:\"expires\";i:86400;}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '4'),
(22, 1, 'wbm_user-settings', 'libraryContent=browse&editor=html&align=left&post_dfw=off'),
(23, 1, 'wbm_user-settings-time', '1561981352'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:0:{}'),
(28, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:57:\"postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'screen_layout_page', '2'),
(31, 1, 'session_tokens', 'a:1:{s:64:\"3fd26761b626e50802d0f49a7c0d192c969091010bb868353eb27b062282ed76\";a:4:{s:10:\"expiration\";i:1563189815;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36\";s:5:\"login\";i:1561980215;}}'),
(32, 1, 'ignore_redux_blast_1560687300_bebe_options', '1');

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

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_wpgmza`
--

CREATE TABLE `wbm_wpgmza` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(700) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `other_data` longtext NOT NULL,
  `latlng` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wbm_wpgmza`
--

;

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_wpgmza_categories`
--

CREATE TABLE `wbm_wpgmza_categories` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(700) NOT NULL,
  `retina` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_wpgmza_category_maps`
--

CREATE TABLE `wbm_wpgmza_category_maps` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_wpgmza_circles`
--

CREATE TABLE `wbm_wpgmza_circles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_wpgmza_maps`
--

CREATE TABLE `wbm_wpgmza_maps` (
  `id` int(11) NOT NULL,
  `map_title` varchar(55) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wbm_wpgmza_maps`
--

INSERT INTO `wbm_wpgmza_maps` (`id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'My first map', '100', '400', '45.950464', '-109.815505', '45.950464,-109.81550500000003', 2, '0', 1, 1, 1, 0, '', 0, '', 2, 2, 1, '100', 0, 0, 0, 0, 0, '', '\\%', 'px', 1, 0, 1, 2, 0, '', 'a:16:{s:21:\"store_locator_enabled\";i:2;s:22:\"store_locator_distance\";i:2;s:28:\"store_locator_default_radius\";s:2:\"10\";s:31:\"store_locator_not_found_message\";s:52:\"No results found in this location. Please try again.\";s:20:\"store_locator_bounce\";i:1;s:26:\"store_locator_query_string\";s:14:\"ZIP / Address:\";s:29:\"store_locator_default_address\";s:0:\"\";s:29:\"wpgmza_store_locator_restrict\";s:0:\"\";s:19:\"store_locator_style\";s:6:\"modern\";s:33:\"wpgmza_store_locator_radius_style\";s:6:\"modern\";s:12:\"map_max_zoom\";s:1:\"1\";s:15:\"transport_layer\";i:2;s:17:\"wpgmza_theme_data\";s:1631:\"[{\\\"featureType\\\":\\\"all\\\",\\\"elementType\\\":\\\"labels.text.fill\\\",\\\"stylers\\\":[{\\\"saturation\\\":36},{\\\"color\\\":\\\"#000000\\\"},{\\\"lightness\\\":40}]},{\\\"featureType\\\":\\\"all\\\",\\\"elementType\\\":\\\"labels.text.stroke\\\",\\\"stylers\\\":[{\\\"visibility\\\":\\\"on\\\"},{\\\"color\\\":\\\"#000000\\\"},{\\\"lightness\\\":16}]},{\\\"featureType\\\":\\\"all\\\",\\\"elementType\\\":\\\"labels.icon\\\",\\\"stylers\\\":[{\\\"visibility\\\":\\\"off\\\"}]},{\\\"featureType\\\":\\\"administrative\\\",\\\"elementType\\\":\\\"geometry.fill\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#000000\\\"},{\\\"lightness\\\":20}]},{\\\"featureType\\\":\\\"administrative\\\",\\\"elementType\\\":\\\"geometry.stroke\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#000000\\\"},{\\\"lightness\\\":17},{\\\"weight\\\":1.2}]},{\\\"featureType\\\":\\\"landscape\\\",\\\"elementType\\\":\\\"geometry\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#000000\\\"},{\\\"lightness\\\":20}]},{\\\"featureType\\\":\\\"poi\\\",\\\"elementType\\\":\\\"geometry\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#000000\\\"},{\\\"lightness\\\":21}]},{\\\"featureType\\\":\\\"road.highway\\\",\\\"elementType\\\":\\\"geometry.fill\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#000000\\\"},{\\\"lightness\\\":17}]},{\\\"featureType\\\":\\\"road.highway\\\",\\\"elementType\\\":\\\"geometry.stroke\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#000000\\\"},{\\\"lightness\\\":29},{\\\"weight\\\":0.2}]},{\\\"featureType\\\":\\\"road.arterial\\\",\\\"elementType\\\":\\\"geometry\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#000000\\\"},{\\\"lightness\\\":18}]},{\\\"featureType\\\":\\\"road.local\\\",\\\"elementType\\\":\\\"geometry\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#000000\\\"},{\\\"lightness\\\":16}]},{\\\"featureType\\\":\\\"transit\\\",\\\"elementType\\\":\\\"geometry\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#000000\\\"},{\\\"lightness\\\":19}]},{\\\"featureType\\\":\\\"water\\\",\\\"elementType\\\":\\\"geometry\\\",\\\"stylers\\\":[{\\\"color\\\":\\\"#000000\\\"},{\\\"lightness\\\":17}]}]\";s:22:\"wpgmza_theme_selection\";i:6;s:30:\"wpgmza_show_points_of_interest\";i:1;s:17:\"wpgmza_auto_night\";i:0;}');

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_wpgmza_polygon`
--

CREATE TABLE `wbm_wpgmza_polygon` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_wpgmza_polylines`
--

CREATE TABLE `wbm_wpgmza_polylines` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wbm_wpgmza_rectangles`
--

CREATE TABLE `wbm_wpgmza_rectangles` (
  `id` int(11) NOT NULL,
  `map_id` int(11) NOT NULL,
  `name` text,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Индексы таблицы `wbm_create_map`
--
ALTER TABLE `wbm_create_map`
  ADD PRIMARY KEY (`map_id`);

--
-- Индексы таблицы `wbm_group_map`
--
ALTER TABLE `wbm_group_map`
  ADD PRIMARY KEY (`group_map_id`);

--
-- Индексы таблицы `wbm_links`
--
ALTER TABLE `wbm_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wbm_map_locations`
--
ALTER TABLE `wbm_map_locations`
  ADD PRIMARY KEY (`location_id`);

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
-- Индексы таблицы `wbm_wpgmza`
--
ALTER TABLE `wbm_wpgmza`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wbm_wpgmza_categories`
--
ALTER TABLE `wbm_wpgmza_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wbm_wpgmza_category_maps`
--
ALTER TABLE `wbm_wpgmza_category_maps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wbm_wpgmza_circles`
--
ALTER TABLE `wbm_wpgmza_circles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wbm_wpgmza_maps`
--
ALTER TABLE `wbm_wpgmza_maps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wbm_wpgmza_polygon`
--
ALTER TABLE `wbm_wpgmza_polygon`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wbm_wpgmza_polylines`
--
ALTER TABLE `wbm_wpgmza_polylines`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wbm_wpgmza_rectangles`
--
ALTER TABLE `wbm_wpgmza_rectangles`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `wbm_create_map`
--
ALTER TABLE `wbm_create_map`
  MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wbm_group_map`
--
ALTER TABLE `wbm_group_map`
  MODIFY `group_map_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wbm_links`
--
ALTER TABLE `wbm_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wbm_map_locations`
--
ALTER TABLE `wbm_map_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wbm_options`
--
ALTER TABLE `wbm_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;

--
-- AUTO_INCREMENT для таблицы `wbm_postmeta`
--
ALTER TABLE `wbm_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=562;

--
-- AUTO_INCREMENT для таблицы `wbm_posts`
--
ALTER TABLE `wbm_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT для таблицы `wbm_termmeta`
--
ALTER TABLE `wbm_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wbm_terms`
--
ALTER TABLE `wbm_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `wbm_term_taxonomy`
--
ALTER TABLE `wbm_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `wbm_usermeta`
--
ALTER TABLE `wbm_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `wbm_users`
--
ALTER TABLE `wbm_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wbm_wpgmza`
--
ALTER TABLE `wbm_wpgmza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wbm_wpgmza_categories`
--
ALTER TABLE `wbm_wpgmza_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wbm_wpgmza_category_maps`
--
ALTER TABLE `wbm_wpgmza_category_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wbm_wpgmza_circles`
--
ALTER TABLE `wbm_wpgmza_circles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wbm_wpgmza_maps`
--
ALTER TABLE `wbm_wpgmza_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wbm_wpgmza_polygon`
--
ALTER TABLE `wbm_wpgmza_polygon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wbm_wpgmza_polylines`
--
ALTER TABLE `wbm_wpgmza_polylines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wbm_wpgmza_rectangles`
--
ALTER TABLE `wbm_wpgmza_rectangles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;