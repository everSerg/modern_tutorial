-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 22 2016 г., 13:18
-- Версия сервера: 5.6.22-log
-- Версия PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `modern2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2016-07-21 06:57:10', '2016-07-21 06:57:10', 'Cat 1'),
(2, '2016-07-21 06:57:10', '2016-07-21 06:57:10', 'Cat 2');

-- --------------------------------------------------------

--
-- Структура таблицы `categories_nice_actions`
--

CREATE TABLE IF NOT EXISTS `categories_nice_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `nice_action_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `categories_nice_actions`
--

INSERT INTO `categories_nice_actions` (`id`, `created_at`, `updated_at`, `category_id`, `nice_action_id`) VALUES
(1, NULL, NULL, 1, 1),
(2, NULL, NULL, 2, 1),
(3, NULL, NULL, 1, 2),
(4, NULL, NULL, 2, 3),
(5, NULL, NULL, 1, 4),
(6, NULL, NULL, 2, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_06_20_090525_create_nice_actions_table', 1),
('2016_07_21_084015_create_nice_action_logs_table', 1),
('2016_07_21_092803_create_categories_table', 1),
('2016_07_21_092939_categories_nice_actions', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `nice_actions`
--

CREATE TABLE IF NOT EXISTS `nice_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `niceness` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `nice_actions`
--

INSERT INTO `nice_actions` (`id`, `created_at`, `updated_at`, `name`, `niceness`) VALUES
(1, '2016-07-21 06:57:10', '2016-07-21 06:57:10', 'Greet', 3),
(2, '2016-07-21 06:57:10', '2016-07-22 03:17:53', 'Smile', 6),
(3, '2016-07-21 06:57:10', '2016-07-21 06:57:10', 'Kiss', 12),
(4, '2016-07-21 06:57:10', '2016-07-22 03:19:36', 'Smile', 2),
(5, '2016-07-22 04:09:48', '2016-07-22 04:09:48', 'Hug', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `nice_action_logs`
--

CREATE TABLE IF NOT EXISTS `nice_action_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nice_action_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `nice_action_logs`
--

INSERT INTO `nice_action_logs` (`id`, `created_at`, `updated_at`, `nice_action_id`) VALUES
(1, '2016-07-21 06:57:29', '2016-07-21 06:57:29', 3),
(2, '2016-07-21 07:00:57', '2016-07-21 07:00:57', 1),
(3, '2016-07-21 07:01:02', '2016-07-21 07:01:02', 4),
(4, '2016-07-21 07:01:14', '2016-07-21 07:01:14', 2),
(5, '2016-07-22 02:46:17', '2016-07-22 02:46:17', 3),
(6, '2016-07-22 03:04:37', '2016-07-22 03:04:37', 2),
(7, '2016-07-22 03:04:40', '2016-07-22 03:04:40', 2),
(8, '2016-07-22 03:04:41', '2016-07-22 03:04:41', 2),
(9, NULL, NULL, 2),
(10, NULL, NULL, 2),
(11, NULL, NULL, 2),
(12, NULL, NULL, 2),
(13, NULL, NULL, 2),
(14, NULL, NULL, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
