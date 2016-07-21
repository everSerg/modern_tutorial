-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 21 2016 г., 11:33
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
('2016_06_20_090525_create_nice_actions_table', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `nice_actions`
--

INSERT INTO `nice_actions` (`id`, `created_at`, `updated_at`, `name`, `niceness`) VALUES
(1, '2016-07-21 04:56:54', '2016-07-21 04:56:54', 'Greet', 3),
(2, '2016-07-21 04:56:54', '2016-07-21 04:56:54', 'Hug', 6),
(3, '2016-07-21 04:56:54', '2016-07-21 04:56:54', 'Kiss', 12),
(4, '2016-07-21 04:56:54', '2016-07-21 04:56:54', 'Wave', 2),
(5, '2016-07-21 05:23:27', '2016-07-21 05:23:27', 'smile', 4),
(6, '2016-07-21 05:29:29', '2016-07-21 05:29:29', 'Blink', 3),
(7, '2016-07-21 05:29:43', '2016-07-21 05:29:43', 'Smile', 14),
(8, '2016-07-21 05:31:54', '2016-07-21 05:31:54', 'Smilee', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
