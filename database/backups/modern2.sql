-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 24, 2016 at 10:02 AM
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
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `created_at`, `updated_at`, `remember_token`, `name`, `password`) VALUES
(1, '2016-08-24 03:43:46', '2016-08-24 03:43:46', NULL, 'admin', '$2y$10$rW1nOL9EHrbA09uu/dUY4.Q7Tsa1RMieGqs4gKLfBN/nccYvN3pHG');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `created_at`, `updated_at`, `name`, `email`) VALUES
(1, '2016-08-23 10:51:13', '2016-08-23 10:51:13', 'Serg', 'admin@admin.com'),
(2, '2016-08-23 12:12:22', '2016-08-23 12:12:22', 'Vasa', 'new.john.doe@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `author_log`
--

CREATE TABLE IF NOT EXISTS `author_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `author_log`
--

INSERT INTO `author_log` (`id`, `created_at`, `updated_at`, `author`) VALUES
(1, '2016-08-23 12:11:21', '2016-08-23 12:11:21', 'Serg'),
(2, '2016-08-23 12:12:42', '2016-08-23 12:12:42', 'Vasa'),
(3, '2016-08-23 12:16:26', '2016-08-23 12:16:26', 'Serg'),
(4, '2016-08-23 12:16:28', '2016-08-23 12:16:28', 'Serg');

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
('2016_08_21_132007_create_quote_logs_table', 1),
('2016_08_23_144528_create_author_logs_table', 2),
('2016_08_24_063347_create_admins_table', 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `created_at`, `updated_at`, `quote`, `author_id`) VALUES
(1, '2016-08-23 10:51:13', '2016-08-23 10:51:13', 'Your Quote', 1),
(2, '2016-08-23 11:22:51', '2016-08-23 11:22:51', 'Your Quote', 1),
(3, '2016-08-23 11:23:24', '2016-08-23 11:23:24', 'Your Quote', 1),
(4, '2016-08-23 12:11:07', '2016-08-23 12:11:07', 'Your Quote', 1),
(5, '2016-08-23 12:12:22', '2016-08-23 12:12:22', 'Your Quote', 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `quote_log`
--

INSERT INTO `quote_log` (`id`, `created_at`, `updated_at`, `author`) VALUES
(1, '2016-08-23 10:51:13', '2016-08-23 10:51:13', 'Serg'),
(2, '2016-08-23 11:22:51', '2016-08-23 11:22:51', 'Serg'),
(3, '2016-08-23 11:23:24', '2016-08-23 11:23:24', 'Serg'),
(4, '2016-08-23 12:11:07', '2016-08-23 12:11:07', 'Serg'),
(5, '2016-08-23 12:12:22', '2016-08-23 12:12:22', 'Vasa');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
