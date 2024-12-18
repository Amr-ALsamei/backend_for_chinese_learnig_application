-- CREATE OR REPLACE VIEW community AS
-- SELECT  users.* ,scores.total_scores FROM users
-- INNER JOIN scores ON users.user_Id=scores.score_userId 

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2024 at 02:50 AM
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
-- Database: `chinese_languag`
--

-- --------------------------------------------------------

--
-- Table structure for table `letters`
--

CREATE TABLE `letters` (
  `letter_Id` int(11) NOT NULL,
  `letter_body` varchar(255) NOT NULL,
  `letter_mean` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `letters`
--

INSERT INTO `letters` (`letter_Id`, `letter_body`, `letter_mean`) VALUES
(1, '诶', 'أ'),
(2, '比', 'ب'),
(3, '西', 'ث'),
(4, '迪', 'د'),
(5, '伊', 'إ'),
(6, '艾弗', 'ف'),
(7, '吉', 'ج'),
(8, '艾尺', 'ه'),
(9, '艾', 'آ'),
(10, '杰', 'ج'),
(11, '开', 'ك'),
(12, '艾勒', 'ل'),
(13, '艾马', 'م'),
(14, '艾娜', 'ن'),
(15, '哦', 'و'),
(16, '吉吾', 'لايقابله اي حرف'),
(17, '艾儿', 'ر'),
(18, '艾丝', 'س'),
(19, '提', 'ت'),
(20, '艾克斯', 'لايقابله أي حرف'),
(21, '豆贝尔维', 'لا يقابله اي حرف'),
(22, '吾艾', 'لا يقابله اي حرف'),
(23, '维', 'لا يقابله اي حرف'),
(24, '伊吾', 'لا يقابله اي حرف'),
(25, '贼德', 'ز');

-- --------------------------------------------------------

--
-- Table structure for table `nnotifications`
--

CREATE TABLE `nnotifications` (
  `notifications_Id` int(11) NOT NULL,
  `notifications_title` varchar(255) NOT NULL,
  `notifications_body` varchar(255) NOT NULL,
  `notifications_userId` int(11) NOT NULL,
  `notifications_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nnotifications`
--

INSERT INTO `nnotifications` (`notifications_Id`, `notifications_title`, `notifications_body`, `notifications_userId`, `notifications_date`) VALUES
(19, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 20 XP', 5, '2024-10-27 23:30:30'),
(20, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 30 XP', 5, '2024-10-27 23:39:53'),
(21, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 40 XP', 5, '2024-10-27 23:41:14'),
(22, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 50 XP', 5, '2024-10-27 23:42:00'),
(23, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 60 XP', 5, '2024-10-27 23:42:45'),
(24, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 70 XP', 5, '2024-10-27 23:45:45'),
(25, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 80 XP', 5, '2024-10-27 23:49:58'),
(26, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 90 XP', 5, '2024-10-27 23:50:55'),
(27, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 20 XP', 8, '2024-10-28 00:57:54'),
(28, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 30 XP', 8, '2024-10-28 00:58:16'),
(29, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 40 XP', 8, '2024-10-28 01:03:59'),
(30, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 50 XP', 8, '2024-10-30 22:09:20'),
(31, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 60 XP', 8, '2024-10-30 22:11:50'),
(32, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 70 XP', 8, '2024-10-30 22:15:06'),
(33, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 80 XP', 8, '2024-10-30 22:19:35'),
(34, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 90 XP', 8, '2024-10-30 22:28:54'),
(35, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 20 XP', 11, '2024-10-30 22:46:00'),
(36, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 30 XP', 11, '2024-10-30 22:48:44'),
(37, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 40 XP', 11, '2024-10-30 22:50:33'),
(38, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 50 XP', 11, '2024-10-30 22:59:18'),
(39, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 60 XP', 11, '2024-10-30 23:00:22'),
(40, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 70 XP', 11, '2024-10-30 23:02:19'),
(41, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 80 XP', 11, '2024-10-30 23:03:05'),
(42, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 90 XP', 11, '2024-10-30 23:14:43'),
(43, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 100 XP', 11, '2024-10-30 23:35:47'),
(44, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 110 XP', 11, '2024-10-30 23:37:02'),
(45, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 120 XP', 11, '2024-10-30 23:38:37'),
(46, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 130 XP', 11, '2024-10-30 23:39:22'),
(47, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 140 XP', 11, '2024-10-31 21:45:53'),
(48, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 150 XP', 11, '2024-10-31 22:51:14'),
(49, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 160 XP', 11, '2024-10-31 22:52:13'),
(50, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 170 XP', 11, '2024-10-31 23:25:00'),
(51, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 180 XP', 11, '2024-11-01 20:46:14'),
(52, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 190 XP', 11, '2024-11-01 20:49:39'),
(53, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 200 XP', 11, '2024-11-01 20:58:12'),
(54, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 210 XP', 11, '2024-11-01 22:48:01'),
(55, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 220 XP', 11, '2024-11-01 23:19:10'),
(56, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 230 XP', 11, '2024-11-01 23:51:20'),
(57, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 240 XP', 11, '2024-11-01 23:54:31'),
(58, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 250 XP', 11, '2024-11-01 23:58:20'),
(59, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 260 XP', 11, '2024-11-01 23:59:15'),
(60, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 270 XP', 11, '2024-11-02 00:02:18'),
(61, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 280 XP', 11, '2024-11-02 00:09:56'),
(62, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 290 XP', 11, '2024-11-02 00:11:21'),
(63, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 300 XP', 11, '2024-11-02 00:17:09'),
(64, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 310 XP', 11, '2024-11-02 00:28:03'),
(65, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 320 XP', 11, '2024-11-02 00:55:01'),
(66, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 330 XP', 11, '2024-11-02 01:19:18'),
(67, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 340 XP', 11, '2024-11-02 01:23:38'),
(68, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 350 XP', 11, '2024-11-02 01:26:45'),
(69, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 360 XP', 11, '2024-11-02 01:31:22'),
(70, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 370 XP', 11, '2024-11-02 01:32:06'),
(71, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 380 XP', 11, '2024-11-02 01:32:35'),
(72, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 390 XP', 11, '2024-11-02 01:43:31'),
(73, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 400 XP', 11, '2024-11-02 01:56:01'),
(74, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 410 XP', 11, '2024-11-02 01:58:28'),
(75, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 420 XP', 11, '2024-11-02 02:00:04'),
(76, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 430 XP', 11, '2024-11-02 02:00:41'),
(77, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 440 XP', 11, '2024-11-02 02:02:46'),
(78, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 450 XP', 11, '2024-11-02 02:03:41'),
(79, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 460 XP', 11, '2024-11-02 02:55:11'),
(80, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 470 XP', 11, '2024-11-02 02:57:17'),
(81, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 480 XP', 11, '2024-11-02 02:58:22'),
(82, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 490 XP', 11, '2024-11-02 03:02:31'),
(83, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 500 XP', 11, '2024-11-02 03:04:44'),
(84, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 510 XP', 11, '2024-11-02 03:09:20'),
(85, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 520 XP', 11, '2024-11-02 03:12:02'),
(98, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 100 XP', 8, '2024-11-04 01:06:32'),
(118, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 530 XP', 11, '2024-11-12 03:09:07'),
(119, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 540 XP', 11, '2024-11-12 03:46:19'),
(120, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 550 XP', 11, '2024-11-12 03:47:21'),
(121, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 559 XP', 11, '2024-11-12 03:49:11'),
(122, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 569 XP', 11, '2024-11-12 03:51:09'),
(123, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط  XP', 25, '2024-11-23 00:31:49'),
(124, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 20 XP', 25, '2024-11-23 00:32:20'),
(125, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 30 XP', 25, '2024-11-23 03:22:49'),
(126, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 40 XP', 25, '2024-11-23 03:23:43'),
(127, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 50 XP', 25, '2024-11-23 03:24:47'),
(128, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 60 XP', 25, '2024-11-23 21:59:51'),
(129, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 70 XP', 25, '2024-11-23 22:00:33'),
(130, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 80 XP', 25, '2024-11-23 22:00:58'),
(131, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 90 XP', 25, '2024-11-23 22:01:24'),
(132, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 100 XP', 25, '2024-11-23 22:01:47'),
(133, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 110 XP', 25, '2024-11-23 22:16:32'),
(134, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 120 XP', 25, '2024-11-23 22:17:19'),
(135, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 130 XP', 25, '2024-11-23 22:18:09'),
(136, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 140 XP', 25, '2024-11-23 22:18:55'),
(137, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 150 XP', 25, '2024-11-23 22:19:44'),
(138, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 160 XP', 25, '2024-11-23 22:20:35'),
(139, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 170 XP', 25, '2024-11-23 22:25:45'),
(140, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 180 XP', 25, '2024-11-23 22:29:25'),
(141, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 190 XP', 25, '2024-11-23 22:50:54'),
(142, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 200 XP', 25, '2024-11-23 22:52:14'),
(143, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 210 XP', 25, '2024-11-23 22:52:34'),
(144, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 220 XP', 25, '2024-11-23 22:52:51'),
(145, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 230 XP', 25, '2024-11-23 22:54:20'),
(146, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 240 XP', 25, '2024-11-23 22:58:02'),
(147, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 250 XP', 25, '2024-11-24 02:18:20'),
(148, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 260 XP', 25, '2024-11-24 02:23:38'),
(149, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 270 XP', 25, '2024-11-24 02:24:25'),
(150, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 280 XP', 25, '2024-11-24 02:25:40'),
(151, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 285 XP', 25, '2024-11-24 02:34:58'),
(152, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 286 XP', 25, '2024-11-24 02:58:09'),
(153, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 287 XP', 25, '2024-11-24 03:31:03'),
(154, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 297 XP', 25, '2024-11-24 23:23:02'),
(155, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 304 XP', 25, '2024-11-25 01:43:26'),
(156, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 304 XP', 25, '2024-11-25 04:00:49'),
(157, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 313 XP', 25, '2024-11-25 21:44:11'),
(158, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 323 XP', 25, '2024-11-25 22:04:46'),
(159, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 326 XP', 25, '2024-11-25 22:26:51'),
(160, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 335 XP', 25, '2024-11-25 23:03:00'),
(161, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 345 XP', 25, '2024-11-26 02:00:45'),
(162, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 355 XP', 25, '2024-11-26 02:01:20'),
(163, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 365 XP', 25, '2024-11-26 02:08:50'),
(164, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 375 XP', 25, '2024-11-26 02:09:38'),
(165, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 385 XP', 25, '2024-11-26 02:15:31'),
(166, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 395 XP', 25, '2024-11-26 02:15:57'),
(167, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 405 XP', 25, '2024-11-26 02:21:55'),
(168, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 415 XP', 25, '2024-11-26 02:22:13'),
(169, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 425 XP', 25, '2024-11-26 02:22:56'),
(170, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 430 XP', 25, '2024-11-26 02:31:45'),
(171, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 440 XP', 25, '2024-11-26 02:37:08'),
(172, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 448 XP', 25, '2024-11-26 02:59:24'),
(173, 'لقد أكملت الدرس', ' لقد نجحت في تجاوز هذا الدرس وحققت نقاط 453 XP', 25, '2024-11-26 03:00:08');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `score_Id` int(11) NOT NULL,
  `score_userId` int(11) NOT NULL,
  `total_scores` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`score_Id`, `score_userId`, `total_scores`) VALUES
(33, 5, 90),
(34, 8, 100),
(37, 11, 569),
(39, 25, 453);

-- --------------------------------------------------------

--
-- Table structure for table `sentences`
--

CREATE TABLE `sentences` (
  `sentence_Id` int(11) NOT NULL,
  `sentence_body` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sentences`
--

INSERT INTO `sentences` (`sentence_Id`, `sentence_body`) VALUES
(1, '你会说英语吗'),
(2, ' 非常感谢！'),
(3, '这毫无意义'),
(4, ' 时间我还没定好'),
(5, '我没有资格这么说'),
(6, ' 我马上回来.'),
(7, '时间差不多了'),
(8, '我们在哪见面？'),
(9, '我觉得不错.'),
(10, ' 怎么了？'),
(11, ' 怎么样了？'),
(12, '太感谢了！'),
(13, ' 我是不是来的不是时候？'),
(14, '我是不是打扰了？'),
(15, ' 我想是的。'),
(16, '没什么坏处。'),
(17, '抱歉来晚了。'),
(18, '我会让你接受你的事情'),
(19, '你喜欢什么？'),
(20, '那就这样吧'),
(21, ' 我们什么时候见面？'),
(22, '你方便吗？'),
(23, '我们可以走了吗？'),
(24, '我回来了。'),
(25, '毫无疑问。'),
(26, '怎样我都不会介意的。'),
(27, '好像是这样。'),
(28, ' 忙呢吗？'),
(29, '什么时候有空能聊聊吗？'),
(30, '有什么新鲜事？'),
(31, ' 听起来耳熟吗？'),
(32, ' 我哪天都行。'),
(33, '我们有属于自己的地方'),
(34, ' 别想太多。'),
(35, '说起来容易做起来难。'),
(36, '聚会结束了。'),
(37, '祝你开心！'),
(38, ' 我无所谓。'),
(39, '回头见！'),
(40, '您好.'),
(41, '你叫什么名字？'),
(42, '很高兴认识你'),
(43, '我很好，谢谢'),
(44, '你呢？'),
(45, '你会讲英语/中文吗？'),
(46, '她说中文吗？'),
(47, '一点点 '),
(48, '你多大了？'),
(49, '我三十三岁 '),
(50, '真的很高兴和你说话 '),
(51, '你是什​​么意思？'),
(52, '我不明白'),
(53, '我不知道 '),
(54, '抱歉 '),
(55, '那个用中文怎么说？'),
(56, '这个字（那个词）在英语里是什么意思？'),
(57, '你从哪儿来？'),
(58, '我从美国来 '),
(59, '我是美国人'),
(60, '你住在哪里？'),
(61, '我住在美国 '),
(62, '您做什么工作？'),
(63, '我是学生 '),
(64, '我可以帮你吗？'),
(65, '你能帮助我吗？'),
(66, '机场在哪里？'),
(67, '直行 '),
(68, '然后'),
(69, '中秋节'),
(70, '志愿者'),
(76, '非常感谢！');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_Id` int(11) NOT NULL,
  `user_Name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_phone` int(20) NOT NULL,
  `user_aproov` tinyint(4) NOT NULL DEFAULT 0,
  `user_veryfiycode` int(11) NOT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_Id`, `user_Name`, `user_email`, `user_password`, `user_phone`, `user_aproov`, `user_veryfiycode`, `user_type`) VALUES
(5, 'ديمو', 'demo@gmail.com', '04c5538fae0c127659f6a4b962c153dbf0bed166', 123456789, 1, 93520, 1),
(8, 'كنج يوزر', 'alsameiamr13@gmail.com', 'e41648b0b5182ec6336a92531df38910d12b420e', 776751238, 1, 81807, 0),
(11, 'Samei', 'amrs91758@gmail.com', 'e41648b0b5182ec6336a92531df38910d12b420e', 987654321, 1, 80148, 0),
(25, 'عمرو', 'amralsamei53@gmail.com', 'e41648b0b5182ec6336a92531df38910d12b420e', 908765432, 1, 91356, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vocabularies`
--

CREATE TABLE `vocabularies` (
  `vocabulary_Id` int(11) NOT NULL,
  `vocabulary_body` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vocabularies`
--

INSERT INTO `vocabularies` (`vocabulary_Id`, `vocabulary_body`) VALUES
(1, '啊'),
(2, '唉'),
(3, '爱好'),
(4, '奥运会'),
(5, '吧'),
(6, '　八'),
(7, '　爸爸'),
(8, '半'),
(9, '包裹'),
(10, '抱歉'),
(11, '北京'),
(12, '标准间'),
(13, '别'),
(14, '冰淇淋'),
(15, '不'),
(16, '不客气'),
(17, '部'),
(18, '不好意'),
(19, '擦'),
(20, '菜'),
(21, '参加'),
(22, '差劲'),
(23, '长'),
(24, '车'),
(25, '车祸'),
(26, '车闸'),
(27, '乘'),
(28, '成绩'),
(29, '吃'),
(30, '吃饭'),
(31, '抽'),
(32, '出'),
(33, '穿'),
(34, '传统'),
(35, '错'),
(36, '打'),
(37, '打开'),
(38, '打算'),
(39, '大'),
(40, '大概'),
(41, '大学'),
(42, '蛋糕'),
(43, '但是'),
(44, '当'),
(45, '当然'),
(46, '倒霉'),
(47, '到'),
(48, '等'),
(49, '低'),
(50, '弟弟'),
(51, '地方'),
(52, '地铁'),
(53, '点'),
(54, '电影'),
(55, '订'),
(56, '东西'),
(57, '动物园'),
(58, '都'),
(59, '读书'),
(60, '肚子'),
(61, '对'),
(62, '对外'),
(63, '多'),
(64, '多少');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`letter_Id`);

--
-- Indexes for table `nnotifications`
--
ALTER TABLE `nnotifications`
  ADD PRIMARY KEY (`notifications_Id`),
  ADD KEY `notifications_userId` (`notifications_userId`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`score_Id`),
  ADD KEY `score_userId` (`score_userId`);

--
-- Indexes for table `sentences`
--
ALTER TABLE `sentences`
  ADD PRIMARY KEY (`sentence_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_Id`);

--
-- Indexes for table `vocabularies`
--
ALTER TABLE `vocabularies`
  ADD PRIMARY KEY (`vocabulary_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `letters`
--
ALTER TABLE `letters`
  MODIFY `letter_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `nnotifications`
--
ALTER TABLE `nnotifications`
  MODIFY `notifications_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `score_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `sentences`
--
ALTER TABLE `sentences`
  MODIFY `sentence_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `vocabularies`
--
ALTER TABLE `vocabularies`
  MODIFY `vocabulary_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nnotifications`
--
ALTER TABLE `nnotifications`
  ADD CONSTRAINT `nnotifications_ibfk_1` FOREIGN KEY (`notifications_userId`) REFERENCES `users` (`user_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_ibfk_1` FOREIGN KEY (`score_userId`) REFERENCES `users` (`user_Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
