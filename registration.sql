-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost:80
-- Generation Time: Aug 13, 2018 at 10:05 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.2.7-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` double NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `value`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 15600, 1, NULL, '2018-08-08 17:58:30'),
(4, 1400, 3, '2018-08-10 11:28:01', '2018-08-10 11:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-08-10 10:57:37', '2018-08-10 10:57:37'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-08-10 10:57:37', '2018-08-10 10:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":"0"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{"default":"","null":"","options":{"":"-- None --"},"relationship":{"key":"id","label":"name"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{"default":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true},"validation":{"rule":"unique:posts,slug"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"PUBLISHED":"published","DRAFT":"draft","PENDING":"pending"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '', 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '', 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title"},"validation":{"rule":"unique:pages,slug"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{"default":"INACTIVE","options":{"INACTIVE":"INACTIVE","ACTIVE":"ACTIVE"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(57, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 7, 'value', 'number', 'Value', 1, 1, 1, 1, 1, 1, NULL, 2),
(59, 7, 'student_id', 'number', 'Student Id', 1, 1, 1, 1, 1, 1, NULL, 3),
(60, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(62, 7, 'account_belongsto_student_relationship', 'relationship', 'students', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Student","table":"students","type":"belongsTo","column":"student_id","key":"id","label":"name","pivot_table":"accounts","pivot":"0","taggable":"0"}', 6),
(63, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(64, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(65, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(66, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(67, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(68, 10, 'cost', 'number', 'Cost', 1, 1, 1, 1, 1, 1, NULL, 2),
(69, 10, 'year', 'text', 'Year', 1, 1, 1, 1, 1, 1, NULL, 3),
(70, 10, 'department_id', 'number', 'Department Id', 1, 1, 1, 1, 1, 1, NULL, 4),
(71, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 5),
(72, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, NULL, 6),
(73, 10, 'department_fee_belongsto_department_relationship', 'relationship', 'departments', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Department","table":"departments","type":"belongsTo","column":"department_id","key":"id","label":"name","pivot_table":"accounts","pivot":"0","taggable":"0"}', 7),
(74, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(75, 11, 'total', 'text', 'Total', 1, 1, 1, 1, 1, 1, NULL, 2),
(76, 11, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, NULL, 3),
(77, 11, 'registration_id', 'text', 'Registration Id', 1, 1, 1, 1, 1, 1, NULL, 4),
(78, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(79, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(80, 11, 'student_id', 'text', 'Student Id', 1, 1, 1, 1, 1, 1, NULL, 7),
(81, 11, 'payment_belongsto_registration_relationship', 'relationship', 'registrations', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Registration","table":"registrations","type":"belongsTo","column":"registration_id","key":"id","label":"id","pivot_table":"accounts","pivot":"0","taggable":null}', 8),
(82, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(83, 12, 'student_id', 'number', 'Student Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(84, 12, 'gpa', 'text', 'Gpa', 1, 1, 1, 1, 1, 1, NULL, 3),
(85, 12, 'academic_decision', 'text', 'Academic Decision', 1, 1, 1, 1, 1, 1, NULL, 4),
(86, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(87, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(88, 12, 'result_belongsto_student_relationship', 'relationship', 'students', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Student","table":"students","type":"belongsTo","column":"student_id","key":"id","label":"name","pivot_table":"accounts","pivot":"0","taggable":"0"}', 7),
(89, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(90, 13, 'course_name', 'text', 'Course Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(91, 13, 'course_appreciation', 'text', 'Course Appreciation', 1, 1, 1, 1, 1, 1, NULL, 3),
(92, 13, 'result_id', 'number', 'Result Id', 1, 1, 1, 1, 1, 1, NULL, 4),
(93, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 5),
(94, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, NULL, 6),
(95, 13, 'result_detail_belongsto_result_relationship', 'relationship', 'results', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Result","table":"results","type":"belongsTo","column":"result_id","key":"id","label":"id","pivot_table":"accounts","pivot":"0","taggable":"0"}', 7),
(96, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(97, 14, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(98, 14, 'stdID', 'number', 'StdID', 1, 1, 1, 1, 1, 1, NULL, 3),
(99, 14, 'password', 'text', 'Password', 1, 0, 0, 0, 1, 1, NULL, 4),
(100, 14, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 5),
(101, 14, 'phone', 'number', 'Phone', 1, 1, 1, 1, 1, 1, NULL, 6),
(102, 14, 'level', 'text', 'Level', 0, 0, 1, 1, 1, 1, NULL, 7),
(103, 14, 'semester', 'text', 'Semester', 0, 0, 1, 1, 1, 1, NULL, 8),
(104, 14, 'religion', 'text', 'Religion', 0, 0, 1, 1, 1, 1, NULL, 9),
(105, 14, 'nationality', 'text', 'Nationality', 0, 0, 1, 1, 1, 1, NULL, 10),
(106, 14, 'address', 'text', 'Address', 0, 0, 1, 1, 1, 1, NULL, 11),
(107, 14, 'blood', 'text', 'Blood', 0, 0, 1, 1, 1, 1, NULL, 12),
(108, 14, 'department_id', 'text', 'Department Id', 0, 1, 1, 1, 1, 1, NULL, 13),
(109, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 14),
(110, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 15),
(111, 14, 'acceptance_year', 'number', 'Acceptance Year', 1, 0, 1, 1, 1, 1, NULL, 16),
(112, 14, 'student_belongsto_department_relationship', 'relationship', 'departments', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Department","table":"departments","type":"belongsTo","column":"department_id","key":"id","label":"name","pivot_table":"accounts","pivot":"0","taggable":"0"}', 17),
(113, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(114, 15, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, NULL, 2),
(115, 15, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, NULL, 3),
(116, 15, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, NULL, 4),
(117, 15, 'student_id', 'number', 'Student Id', 1, 1, 1, 1, 1, 1, NULL, 5),
(118, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(119, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(120, 15, 'form_belongsto_student_relationship', 'relationship', 'students', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Student","table":"students","type":"belongsTo","column":"student_id","key":"id","label":"name","pivot_table":"accounts","pivot":"0","taggable":"0"}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-08-10 10:57:21', '2018-08-10 10:57:21'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-08-10 10:57:21', '2018-08-10 10:57:21'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-08-10 10:57:21', '2018-08-10 10:57:21'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-08-10 10:57:36', '2018-08-10 10:57:36'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-08-10 10:57:37', '2018-08-10 10:57:37'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-08-10 10:57:38', '2018-08-10 10:57:38'),
(7, 'accounts', 'accounts', 'Account', 'Accounts', NULL, 'App\\Account', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-08-10 10:59:48', '2018-08-10 10:59:48'),
(8, 'departments', 'departments', 'Department', 'Departments', NULL, 'App\\Department', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-08-10 11:02:35', '2018-08-10 11:02:35'),
(10, 'department_fees', 'department-fees', 'Department Fee', 'Department Fees', NULL, 'App\\DepartmentFees', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-08-10 11:04:43', '2018-08-10 11:04:43'),
(11, 'payments', 'payments', 'Payment', 'Payments', NULL, 'App\\Payment', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-08-10 11:06:14', '2018-08-10 11:06:14'),
(12, 'results', 'results', 'Result', 'Results', NULL, 'App\\Result', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-08-10 11:09:08', '2018-08-10 11:09:08'),
(13, 'result_details', 'result-details', 'Result Detail', 'Result Details', NULL, 'App\\ResultDetail', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-08-10 11:10:02', '2018-08-10 11:10:02'),
(14, 'students', 'students', 'Student', 'Students', NULL, 'App\\Student', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-08-11 10:02:16', '2018-08-11 10:02:16'),
(15, 'forms', 'forms', 'Form', 'Forms', NULL, 'App\\Form', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-08-11 10:17:07', '2018-08-11 10:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'information technology', NULL, NULL),
(2, 'computer science', NULL, NULL),
(3, 'computer network', NULL, NULL),
(4, 'diploma of information technology', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_fees`
--

CREATE TABLE `department_fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `cost` double NOT NULL,
  `year` year(4) NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_fees`
--

INSERT INTO `department_fees` (`id`, `cost`, `year`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 14000, 2017, 1, NULL, NULL),
(2, 8700, 2015, 2, '2018-08-10 11:23:08', '2018-08-10 11:23:08'),
(3, 12000, 2015, 1, '2018-08-10 11:23:29', '2018-08-10 11:23:29'),
(4, 18000, 2018, 1, '2018-08-10 11:28:34', '2018-08-10 11:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `excuses`
--

CREATE TABLE `excuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `excuses`
--

INSERT INTO `excuses` (`id`, `from`, `to`, `student_id`, `attach`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, '2018-08-01', '2018-08-04', 1, 'attach/image.jpg', 'medical', 1, NULL, NULL),
(2, '2018-08-03', '2018-08-17', 1, 'attach/image.jpg', 'medical', 1, NULL, NULL),
(3, '2018-08-01', '2018-08-17', 1, 'images/image.jpg', 'medical', 1, '2018-08-03 13:33:23', '2018-08-03 13:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `type`, `status`, `date`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 'استماره قيد', 0, NULL, 1, '2018-08-08 22:24:48', '2018-08-08 22:24:48'),
(2, 'استمارة خلو طرف', 1, NULL, 1, '2018-08-08 22:27:18', '2018-08-08 22:27:18'),
(3, 'استمارة خلو طرف', 0, NULL, 6, '2018-08-08 23:20:35', '2018-08-08 23:20:35'),
(4, 'استمارة خلو طرف', 0, NULL, 1, '2018-08-11 09:55:54', '2018-08-11 09:55:54'),
(5, 'استمارة خلو طرف', 0, NULL, 1, '2018-08-11 09:57:06', '2018-08-11 09:57:06'),
(6, 'استمارة خلو طرف', 0, NULL, 7, '2018-08-11 10:00:32', '2018-08-11 10:00:32'),
(7, 'استماره للتقديم للتدريب', 0, NULL, 7, '2018-08-11 10:05:59', '2018-08-11 10:05:59'),
(8, 'استماره للتقديم للتدريب', 0, NULL, 7, '2018-08-11 10:07:06', '2018-08-11 10:07:06'),
(9, 'استمارة خلو طرف', 0, NULL, 9, '2018-08-11 10:15:43', '2018-08-11 10:15:43'),
(10, 'استماره للتقديم للتدريب', 0, NULL, 7, '2018-08-11 10:55:21', '2018-08-11 10:55:21'),
(11, 'استماره للتقديم للتدريب', 0, NULL, 7, '2018-08-11 10:55:25', '2018-08-11 10:55:25');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-08-10 10:57:22', '2018-08-10 10:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-08-10 10:57:23', '2018-08-10 10:57:23', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-08-10 10:57:23', '2018-08-10 10:57:23', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-08-10 10:57:23', '2018-08-10 10:57:23', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-08-10 10:57:23', '2018-08-10 10:57:23', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-08-10 10:57:23', '2018-08-10 10:57:23', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2018-08-10 10:57:23', '2018-08-10 10:57:23', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2018-08-10 10:57:23', '2018-08-10 10:57:23', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2018-08-10 10:57:23', '2018-08-10 10:57:23', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2018-08-10 10:57:23', '2018-08-10 10:57:23', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-08-10 10:57:23', '2018-08-10 10:57:23', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2018-08-10 10:57:27', '2018-08-10 10:57:27', 'voyager.hooks', NULL),
(12, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-08-10 10:57:36', '2018-08-10 10:57:36', 'voyager.categories.index', NULL),
(13, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-08-10 10:57:38', '2018-08-10 10:57:38', 'voyager.posts.index', NULL),
(14, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-08-10 10:57:39', '2018-08-10 10:57:39', 'voyager.pages.index', NULL),
(15, 1, 'Accounts', '', '_self', NULL, NULL, NULL, 15, '2018-08-10 10:59:48', '2018-08-10 10:59:48', 'voyager.accounts.index', NULL),
(16, 1, 'Departments', '', '_self', NULL, NULL, NULL, 16, '2018-08-10 11:02:36', '2018-08-10 11:02:36', 'voyager.departments.index', NULL),
(17, 1, 'Department Fees', '', '_self', NULL, NULL, NULL, 17, '2018-08-10 11:04:44', '2018-08-10 11:04:44', 'voyager.department-fees.index', NULL),
(18, 1, 'Payments', '', '_self', NULL, NULL, NULL, 18, '2018-08-10 11:06:14', '2018-08-10 11:06:14', 'voyager.payments.index', NULL),
(19, 1, 'Results', '', '_self', NULL, NULL, NULL, 19, '2018-08-10 11:09:09', '2018-08-10 11:09:09', 'voyager.results.index', NULL),
(20, 1, 'Result Details', '', '_self', NULL, NULL, NULL, 20, '2018-08-10 11:10:03', '2018-08-10 11:10:03', 'voyager.result-details.index', NULL),
(21, 1, 'Students', '', '_self', NULL, NULL, NULL, 21, '2018-08-11 10:02:16', '2018-08-11 10:02:16', 'voyager.students.index', NULL),
(22, 1, 'Forms', '', '_self', NULL, NULL, NULL, 22, '2018-08-11 10:17:07', '2018-08-11 10:17:07', 'voyager.forms.index', NULL);

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
(3, '2018_07_18_222514_create_students_table', 1),
(4, '2018_07_20_205704_create_results_table', 1),
(5, '2018_07_20_210313_create_result_details_table', 1),
(6, '2018_07_28_175236_create_departments_table', 1),
(8, '2018_07_28_183948_create_accounts_table', 1),
(10, '2018_08_03_100939_create_execuses_table', 2),
(11, '2018_07_28_183929_create_registrations_table', 3),
(14, '2018_08_07_220740_add_acceptance_year_filed_to_students_table', 6),
(15, '2018_07_28_184537_create_department_fees_table', 7),
(22, '2018_08_04_055809_create_payments_table', 8),
(23, '2018_08_07_211906_add_student_id_filed_to_payments_table', 8),
(25, '2018_08_08_215942_create_forms_table', 9),
(26, '2016_01_01_000000_add_voyager_user_fields', 10),
(27, '2016_01_01_000000_create_data_types_table', 10),
(28, '2016_05_19_173453_create_menu_table', 10),
(29, '2016_10_21_190000_create_roles_table', 10),
(30, '2016_10_21_190000_create_settings_table', 10),
(31, '2016_11_30_135954_create_permission_table', 10),
(32, '2016_11_30_141208_create_permission_role_table', 10),
(33, '2016_12_26_201236_data_types__add__server_side', 10),
(34, '2017_01_13_000000_add_route_to_menu_items_table', 10),
(35, '2017_01_14_005015_create_translations_table', 10),
(36, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 10),
(37, '2017_03_06_000000_add_controller_to_data_types_table', 10),
(38, '2017_04_21_000000_add_order_to_data_rows_table', 10),
(39, '2017_07_05_210000_add_policyname_to_data_types_table', 10),
(40, '2017_08_05_000000_add_group_to_settings_table', 10),
(41, '2017_11_26_013050_add_user_role_relationship', 10),
(42, '2017_11_26_015000_create_user_roles_table', 10),
(43, '2018_03_11_000000_add_user_settings', 10),
(44, '2018_03_14_000000_add_details_to_data_types_table', 10),
(45, '2018_03_16_000000_make_settings_value_nullable', 10),
(46, '2016_01_01_000000_create_pages_table', 11),
(47, '2016_01_01_000000_create_posts_table', 11),
(48, '2016_02_15_204651_create_categories_table', 11),
(49, '2017_04_11_000000_alter_post_nullable_fields_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-08-10 10:57:39', '2018-08-10 10:57:39');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `total` double NOT NULL,
  `date` date NOT NULL,
  `registration_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `total`, `date`, `registration_id`, `created_at`, `updated_at`, `student_id`) VALUES
(1, 14000, '2018-08-08', 1, '2018-08-08 17:58:16', '2018-08-08 17:58:16', 1),
(2, 14000, '2018-08-08', 1, '2018-08-08 17:58:19', '2018-08-08 17:58:19', 1),
(3, 14000, '2018-08-08', 1, '2018-08-08 17:58:22', '2018-08-08 17:58:22', 1),
(4, 14000, '2018-08-08', 1, '2018-08-08 17:58:23', '2018-08-08 17:58:23', 1),
(5, 14000, '2018-08-08', 1, '2018-08-08 17:58:27', '2018-08-08 17:58:27', 1),
(6, 14000, '2018-08-08', 1, '2018-08-08 17:58:29', '2018-08-08 17:58:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-08-10 10:57:23', '2018-08-10 10:57:23'),
(2, 'browse_bread', NULL, '2018-08-10 10:57:23', '2018-08-10 10:57:23'),
(3, 'browse_database', NULL, '2018-08-10 10:57:23', '2018-08-10 10:57:23'),
(4, 'browse_media', NULL, '2018-08-10 10:57:23', '2018-08-10 10:57:23'),
(5, 'browse_compass', NULL, '2018-08-10 10:57:23', '2018-08-10 10:57:23'),
(6, 'browse_menus', 'menus', '2018-08-10 10:57:23', '2018-08-10 10:57:23'),
(7, 'read_menus', 'menus', '2018-08-10 10:57:23', '2018-08-10 10:57:23'),
(8, 'edit_menus', 'menus', '2018-08-10 10:57:23', '2018-08-10 10:57:23'),
(9, 'add_menus', 'menus', '2018-08-10 10:57:23', '2018-08-10 10:57:23'),
(10, 'delete_menus', 'menus', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(11, 'browse_roles', 'roles', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(12, 'read_roles', 'roles', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(13, 'edit_roles', 'roles', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(14, 'add_roles', 'roles', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(15, 'delete_roles', 'roles', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(16, 'browse_users', 'users', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(17, 'read_users', 'users', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(18, 'edit_users', 'users', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(19, 'add_users', 'users', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(20, 'delete_users', 'users', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(21, 'browse_settings', 'settings', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(22, 'read_settings', 'settings', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(23, 'edit_settings', 'settings', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(24, 'add_settings', 'settings', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(25, 'delete_settings', 'settings', '2018-08-10 10:57:24', '2018-08-10 10:57:24'),
(26, 'browse_hooks', NULL, '2018-08-10 10:57:28', '2018-08-10 10:57:28'),
(27, 'browse_categories', 'categories', '2018-08-10 10:57:36', '2018-08-10 10:57:36'),
(28, 'read_categories', 'categories', '2018-08-10 10:57:37', '2018-08-10 10:57:37'),
(29, 'edit_categories', 'categories', '2018-08-10 10:57:37', '2018-08-10 10:57:37'),
(30, 'add_categories', 'categories', '2018-08-10 10:57:37', '2018-08-10 10:57:37'),
(31, 'delete_categories', 'categories', '2018-08-10 10:57:37', '2018-08-10 10:57:37'),
(32, 'browse_posts', 'posts', '2018-08-10 10:57:38', '2018-08-10 10:57:38'),
(33, 'read_posts', 'posts', '2018-08-10 10:57:38', '2018-08-10 10:57:38'),
(34, 'edit_posts', 'posts', '2018-08-10 10:57:38', '2018-08-10 10:57:38'),
(35, 'add_posts', 'posts', '2018-08-10 10:57:38', '2018-08-10 10:57:38'),
(36, 'delete_posts', 'posts', '2018-08-10 10:57:38', '2018-08-10 10:57:38'),
(37, 'browse_pages', 'pages', '2018-08-10 10:57:39', '2018-08-10 10:57:39'),
(38, 'read_pages', 'pages', '2018-08-10 10:57:39', '2018-08-10 10:57:39'),
(39, 'edit_pages', 'pages', '2018-08-10 10:57:39', '2018-08-10 10:57:39'),
(40, 'add_pages', 'pages', '2018-08-10 10:57:39', '2018-08-10 10:57:39'),
(41, 'delete_pages', 'pages', '2018-08-10 10:57:39', '2018-08-10 10:57:39'),
(42, 'browse_accounts', 'accounts', '2018-08-10 10:59:48', '2018-08-10 10:59:48'),
(43, 'read_accounts', 'accounts', '2018-08-10 10:59:48', '2018-08-10 10:59:48'),
(44, 'edit_accounts', 'accounts', '2018-08-10 10:59:48', '2018-08-10 10:59:48'),
(45, 'add_accounts', 'accounts', '2018-08-10 10:59:48', '2018-08-10 10:59:48'),
(46, 'delete_accounts', 'accounts', '2018-08-10 10:59:48', '2018-08-10 10:59:48'),
(47, 'browse_departments', 'departments', '2018-08-10 11:02:35', '2018-08-10 11:02:35'),
(48, 'read_departments', 'departments', '2018-08-10 11:02:35', '2018-08-10 11:02:35'),
(49, 'edit_departments', 'departments', '2018-08-10 11:02:35', '2018-08-10 11:02:35'),
(50, 'add_departments', 'departments', '2018-08-10 11:02:35', '2018-08-10 11:02:35'),
(51, 'delete_departments', 'departments', '2018-08-10 11:02:35', '2018-08-10 11:02:35'),
(52, 'browse_department_fees', 'department_fees', '2018-08-10 11:04:43', '2018-08-10 11:04:43'),
(53, 'read_department_fees', 'department_fees', '2018-08-10 11:04:43', '2018-08-10 11:04:43'),
(54, 'edit_department_fees', 'department_fees', '2018-08-10 11:04:43', '2018-08-10 11:04:43'),
(55, 'add_department_fees', 'department_fees', '2018-08-10 11:04:43', '2018-08-10 11:04:43'),
(56, 'delete_department_fees', 'department_fees', '2018-08-10 11:04:43', '2018-08-10 11:04:43'),
(57, 'browse_payments', 'payments', '2018-08-10 11:06:14', '2018-08-10 11:06:14'),
(58, 'read_payments', 'payments', '2018-08-10 11:06:14', '2018-08-10 11:06:14'),
(59, 'edit_payments', 'payments', '2018-08-10 11:06:14', '2018-08-10 11:06:14'),
(60, 'add_payments', 'payments', '2018-08-10 11:06:14', '2018-08-10 11:06:14'),
(61, 'delete_payments', 'payments', '2018-08-10 11:06:14', '2018-08-10 11:06:14'),
(62, 'browse_results', 'results', '2018-08-10 11:09:08', '2018-08-10 11:09:08'),
(63, 'read_results', 'results', '2018-08-10 11:09:08', '2018-08-10 11:09:08'),
(64, 'edit_results', 'results', '2018-08-10 11:09:08', '2018-08-10 11:09:08'),
(65, 'add_results', 'results', '2018-08-10 11:09:08', '2018-08-10 11:09:08'),
(66, 'delete_results', 'results', '2018-08-10 11:09:08', '2018-08-10 11:09:08'),
(67, 'browse_result_details', 'result_details', '2018-08-10 11:10:02', '2018-08-10 11:10:02'),
(68, 'read_result_details', 'result_details', '2018-08-10 11:10:02', '2018-08-10 11:10:02'),
(69, 'edit_result_details', 'result_details', '2018-08-10 11:10:02', '2018-08-10 11:10:02'),
(70, 'add_result_details', 'result_details', '2018-08-10 11:10:02', '2018-08-10 11:10:02'),
(71, 'delete_result_details', 'result_details', '2018-08-10 11:10:02', '2018-08-10 11:10:02'),
(72, 'browse_students', 'students', '2018-08-11 10:02:16', '2018-08-11 10:02:16'),
(73, 'read_students', 'students', '2018-08-11 10:02:16', '2018-08-11 10:02:16'),
(74, 'edit_students', 'students', '2018-08-11 10:02:16', '2018-08-11 10:02:16'),
(75, 'add_students', 'students', '2018-08-11 10:02:16', '2018-08-11 10:02:16'),
(76, 'delete_students', 'students', '2018-08-11 10:02:16', '2018-08-11 10:02:16'),
(77, 'browse_forms', 'forms', '2018-08-11 10:17:07', '2018-08-11 10:17:07'),
(78, 'read_forms', 'forms', '2018-08-11 10:17:07', '2018-08-11 10:17:07'),
(79, 'edit_forms', 'forms', '2018-08-11 10:17:07', '2018-08-11 10:17:07'),
(80, 'add_forms', 'forms', '2018-08-11 10:17:07', '2018-08-11 10:17:07'),
(81, 'delete_forms', 'forms', '2018-08-11 10:17:07', '2018-08-11 10:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(12, 1),
(13, 1),
(14, 1),
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
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
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
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-08-10 10:57:38', '2018-08-10 10:57:38'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-08-10 10:57:38', '2018-08-10 10:57:38'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-08-10 10:57:38', '2018-08-10 10:57:38'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-08-10 10:57:38', '2018-08-10 10:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `nextPayment` date DEFAULT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentPhone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `gpa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `academic_decision` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_id`, `gpa`, `academic_decision`, `created_at`, `updated_at`) VALUES
(1, 1, '3.25', 'اعاده سنه', NULL, NULL),
(2, 2, '2.69', 'يجلس للملاحق', NULL, NULL),
(3, 4, '2.55', 'ينقل الى السنه التاليه', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `result_details`
--

CREATE TABLE `result_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_appreciation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `result_details`
--

INSERT INTO `result_details` (`id`, `course_name`, `course_appreciation`, `result_id`, `created_at`, `updated_at`) VALUES
(1, 'network advance', 'B+', 1, NULL, NULL),
(2, 'java programming lang', 'B', 1, NULL, NULL),
(3, 'AI', 'A', 1, NULL, NULL),
(4, 'web technologies', 'B+', 1, NULL, NULL),
(5, 'network advance', 'B+', 2, NULL, NULL),
(6, 'java programming lang', 'B', 2, NULL, NULL),
(7, 'AI', 'A', 2, NULL, NULL),
(8, 'web technologies', 'B', 2, NULL, NULL),
(9, 'php', 'B+', 3, NULL, NULL),
(10, 'graduation project', 'A', 3, NULL, NULL),
(11, 'c++', 'A', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-08-10 10:57:23', '2018-08-10 10:57:23'),
(2, 'user', 'Normal User', '2018-08-10 10:57:23', '2018-08-10 10:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Admin Panel', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to The Admin Panel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/August2018/VO1K6tLP2T2GPLgkzOmb.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/August2018/5AoyxuELyR2XTTG7zAcc.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stdID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `acceptance_year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `stdID`, `password`, `email`, `phone`, `level`, `semester`, `religion`, `nationality`, `address`, `blood`, `department_id`, `created_at`, `updated_at`, `acceptance_year`) VALUES
(1, 'omer abdelwahab', '54', '$2y$10$eoF3fyP8q7PgvApwGfvyOOHbuNUWEdLB0RukReEIrhjiWUiTBLRou', 'omer-khalid@gmail.com', '999', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2017),
(2, 'Ali Hassan', '2', '$2y$10$erxQ4EK.M8vioT61NF5IPOf.z73nKW2mTFEp5ZgHj.k.jjjoppMa.', 'ali-hassan@gmail.com', '0912606039', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 0000),
(3, 'Mohammed Awad', '3', '$2y$10$Bc0GQRyZjEmCZ9T8hZ5QP./0gKIIWMWlAGkSGcENsLNfoTtFNj11.', 'moh-awad@gmail.com', '0924070016', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 0000),
(4, 'Ali ali', '121', '$2y$10$OjYItPFXS1FmjDnCD08LYuBNIrqHQYTF/BgE861jRmC2jFQOq8Qs.', 'ali@ali.com', '888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-04 06:55:41', '2018-08-04 06:55:41', 0000),
(5, 'omer', '41', '$2y$10$UqmqETXEVEdr6h67QtLIT.j2caewSOFyQQTZdTpwpAjDthMGsgd.a', 'ali@ali.com', '454656', NULL, NULL, NULL, NULL, NULL, NULL, 4, '2018-08-08 23:14:38', '2018-08-08 23:14:38', 2017),
(6, 'amani', '45', '$2y$10$PrdZT5B/5STN7JlypPaaneigAbbOpvU/JF8dPOZIRioq464fyF0S6', 'amani@gmail.com', '7845', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2018-08-08 23:20:13', '2018-08-08 23:20:13', 2017),
(7, 'عبدالرحمن', '33', '$2y$10$j0EHiIBj0v9Fm.y/2.jk9uEwBqfFqU9WGT/TiGRoLerRKes52t5b2', 'abdo@gmail.com', '0912119820', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2018-08-11 09:59:03', '2018-08-11 09:59:03', 2014),
(8, 'أحمد المجتبى نادر', '12', '$2y$10$bCEs6KkdW371w0.Umud3FOfJHXGR2w4W0Ww1Rz91F6DO0hwWkbgLC', 'kabo@hotmail.com', '0918832929', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2018-08-11 10:09:56', '2018-08-11 10:11:26', 2014),
(9, 'نادر محمد نور', '12345', '$2y$10$3fjUf3OdVNaJq//V5sTh5.7.HrM13vmIp9CR6uLoyqwjN/z7GCEcq', 'nadir@nider.com', '0999017398', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-08-11 10:12:31', '2018-08-11 10:12:31', 2015);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-08-10 10:57:39', '2018-08-10 10:57:39'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-08-10 10:57:39', '2018-08-10 10:57:39'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-08-10 10:57:39', '2018-08-10 10:57:39'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(22, 'menu_items', 'title', 13, 'pt', 'Publicações', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-08-10 10:57:40', '2018-08-10 10:57:40'),
(24, 'menu_items', 'title', 12, 'pt', 'Categorias', '2018-08-10 10:57:41', '2018-08-10 10:57:41'),
(25, 'menu_items', 'title', 14, 'pt', 'Páginas', '2018-08-10 10:57:41', '2018-08-10 10:57:41'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-08-10 10:57:41', '2018-08-10 10:57:41'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-08-10 10:57:41', '2018-08-10 10:57:41'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-08-10 10:57:41', '2018-08-10 10:57:41'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-08-10 10:57:41', '2018-08-10 10:57:41'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-08-10 10:57:41', '2018-08-10 10:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$raCtumJbGlNbVRatBw1uqewN2gt3gFwWl5KVZQGE8Xr7ObWCMpgeC', '0bTV6mzH7nc7mlvX4CmxlOHb8r7PZ84rtvnLMBQcDLhkFgMHTTkwcfIJQf5z', NULL, '2018-08-10 10:57:37', '2018-08-10 10:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_fees`
--
ALTER TABLE `department_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `excuses`
--
ALTER TABLE `excuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_details`
--
ALTER TABLE `result_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_stdid_unique` (`stdID`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `department_fees`
--
ALTER TABLE `department_fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `excuses`
--
ALTER TABLE `excuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `result_details`
--
ALTER TABLE `result_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
