-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 21 2016 г., 13:01
-- Версия сервера: 5.6.22-log
-- Версия PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `modern`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `nice_actions`
--

INSERT INTO `nice_actions` (`id`, `created_at`, `updated_at`, `name`, `niceness`) VALUES
(1, '2016-07-21 06:57:10', '2016-07-21 06:57:10', 'Greet', 3),
(2, '2016-07-21 06:57:10', '2016-07-21 06:57:10', 'Hug', 6),
(3, '2016-07-21 06:57:10', '2016-07-21 06:57:10', 'Kiss', 12),
(4, '2016-07-21 06:57:10', '2016-07-21 06:57:10', 'Wave', 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `nice_action_logs`
--

INSERT INTO `nice_action_logs` (`id`, `created_at`, `updated_at`, `nice_action_id`) VALUES
(1, '2016-07-21 06:57:29', '2016-07-21 06:57:29', 3),
(2, '2016-07-21 07:00:57', '2016-07-21 07:00:57', 1),
(3, '2016-07-21 07:01:02', '2016-07-21 07:01:02', 4),
(4, '2016-07-21 07:01:14', '2016-07-21 07:01:14', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
