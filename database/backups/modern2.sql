-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 23, 2016 at 04:35 PM
-- Server version: 5.6.22-log
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `modern2`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2016-08-21 04:57:35', '2016-08-21 04:57:35', 'Testname'),
(2, '2016-08-21 05:08:54', '2016-08-21 05:08:54', 'Name2'),
(3, '2016-08-21 05:15:47', '2016-08-21 05:15:47', 'Name3'),
(4, '2016-08-21 05:28:57', '2016-08-21 05:28:57', 'Name4'),
(6, '2016-08-21 06:40:17', '2016-08-21 06:40:17', 'Namee'),
(7, '2016-08-23 10:31:23', '2016-08-23 10:31:23', 'Quote');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_07_22_103308_create_authors_table', 1),
('2016_07_22_103402_create_quotes_table', 1),
('2016_08_21_132007_create_quote_logs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE IF NOT EXISTS `quotes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quote` text COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `created_at`, `updated_at`, `quote`, `author_id`) VALUES
(1, '2016-08-21 04:57:35', '2016-08-21 04:57:35', 'My first quote', 1),
(2, '2016-08-21 05:08:54', '2016-08-21 05:08:54', 'Your Quote 2', 2),
(3, '2016-08-21 05:15:47', '2016-08-21 05:15:47', 'Your Quote 3\r\n', 3),
(4, '2016-08-21 05:28:57', '2016-08-21 05:28:57', 'Your Quote4', 4),
(7, '2016-08-21 06:40:17', '2016-08-21 06:40:17', 'Namee Quote', 6),
(8, '2016-08-21 06:40:34', '2016-08-21 06:40:34', 'Namee Quote2', 6),
(9, '2016-08-21 06:48:29', '2016-08-21 06:48:29', 'Namee Quote3', 6),
(10, '2016-08-23 10:31:23', '2016-08-23 10:31:23', 'Your Quote', 7),
(11, '2016-08-23 10:33:01', '2016-08-23 10:33:01', 'Your Quote', 7),
(12, '2016-08-23 10:33:59', '2016-08-23 10:33:59', 'Your Quote', 7);

-- --------------------------------------------------------

--
-- Table structure for table `quote_log`
--

CREATE TABLE IF NOT EXISTS `quote_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `quote_log`
--

INSERT INTO `quote_log` (`id`, `created_at`, `updated_at`, `author`) VALUES
(1, '2016-08-23 10:33:59', '2016-08-23 10:33:59', 'Quote');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
