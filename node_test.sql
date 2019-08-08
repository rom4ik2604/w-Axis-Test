-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 08 2019 г., 04:09
-- Версия сервера: 5.7.20
-- Версия PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `node_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'User 0', 'email0@gmail.com', 1, '2019-08-07', '2019-08-07'),
(2, 'User 1', 'email1@gmail.com', 1, '2019-08-07', '2019-08-07'),
(3, 'User 2', 'email2@gmail.com', 1, '2019-08-07', '2019-08-07'),
(4, 'User 3', 'email3@gmail.com', 1, '2019-08-07', '2019-08-07'),
(5, 'User 4', 'email4@gmail.com', 1, '2019-08-07', '2019-08-07'),
(6, 'User 5', 'email5@gmail.com', 1, '2019-08-07', '2019-08-07'),
(7, 'User 6', 'email6@gmail.com', 1, '2019-08-07', '2019-08-07'),
(8, 'User 7', 'email7@gmail.com', 1, '2019-08-07', '2019-08-07'),
(9, 'User 8', 'email8@gmail.com', 1, '2019-08-07', '2019-08-07'),
(10, 'User 9', 'email9@gmail.com', 1, '2019-08-07', '2019-08-07'),
(11, 'User 10', 'email10@gmail.com', 1, '2019-08-07', '2019-08-07'),
(12, 'User 11', 'email11@gmail.com', 1, '2019-08-07', '2019-08-07'),
(13, 'User 12', 'email12@gmail.com', 1, '2019-08-07', '2019-08-07'),
(14, 'User 13', 'email13@gmail.com', 1, '2019-08-07', '2019-08-07'),
(15, 'User 14', 'email14@gmail.com', 1, '2019-08-07', '2019-08-07'),
(16, 'User 15', 'email15@gmail.com', 1, '2019-08-07', '2019-08-07'),
(17, 'User 16', 'email16@gmail.com', 1, '2019-08-07', '2019-08-07'),
(18, 'User 17', 'email17@gmail.com', 1, '2019-08-07', '2019-08-07'),
(19, 'User 18', 'email18@gmail.com', 1, '2019-08-07', '2019-08-07'),
(20, 'User 19', 'email19@gmail.com', 1, '2019-08-07', '2019-08-07'),
(21, 'User 20', 'email20@gmail.com', 1, '2019-08-07', '2019-08-07'),
(22, 'User 21', 'email21@gmail.com', 1, '2019-08-07', '2019-08-07'),
(23, 'User 22', 'email22@gmail.com', 1, '2019-08-07', '2019-08-07'),
(24, 'User 23', 'email23@gmail.com', 1, '2019-08-07', '2019-08-07'),
(25, 'User 24', 'email24@gmail.com', 1, '2019-08-07', '2019-08-07'),
(26, 'User 25', 'email25@gmail.com', 1, '2019-08-07', '2019-08-07'),
(27, 'User 26', 'email26@gmail.com', 1, '2019-08-07', '2019-08-07'),
(28, 'User 27', 'email27@gmail.com', 1, '2019-08-07', '2019-08-07'),
(29, 'User 28', 'email28@gmail.com', 1, '2019-08-07', '2019-08-07'),
(30, 'User 29', 'email29@gmail.com', 1, '2019-08-07', '2019-08-07'),
(31, 'User 30', 'email30@gmail.com', 1, '2019-08-07', '2019-08-07'),
(32, 'User 31', 'email31@gmail.com', 1, '2019-08-07', '2019-08-07'),
(33, 'User 32', 'email32@gmail.com', 1, '2019-08-07', '2019-08-07'),
(34, 'User 33', 'email33@gmail.com', 1, '2019-08-07', '2019-08-07'),
(35, 'User 34', 'email34@gmail.com', 1, '2019-08-07', '2019-08-07'),
(36, 'User 35', 'email35@gmail.com', 1, '2019-08-07', '2019-08-07'),
(37, 'User 36', 'email36@gmail.com', 1, '2019-08-07', '2019-08-07'),
(38, 'User 37', 'email37@gmail.com', 1, '2019-08-07', '2019-08-07'),
(39, 'User 38', 'email38@gmail.com', 1, '2019-08-07', '2019-08-07'),
(40, 'User 39', 'email39@gmail.com', 1, '2019-08-07', '2019-08-07'),
(41, 'User 40', 'email40@gmail.com', 1, '2019-08-07', '2019-08-07'),
(42, 'User 41', 'email41@gmail.com', 1, '2019-08-07', '2019-08-07'),
(43, 'User 42', 'email42@gmail.com', 1, '2019-08-07', '2019-08-07'),
(44, 'User 43', 'email43@gmail.com', 1, '2019-08-07', '2019-08-07'),
(45, 'User 44', 'email44@gmail.com', 1, '2019-08-07', '2019-08-07'),
(46, 'User 45', 'email45@gmail.com', 1, '2019-08-07', '2019-08-07'),
(47, 'User 46', 'email46@gmail.com', 1, '2019-08-07', '2019-08-07'),
(48, 'User 47', 'email47@gmail.com', 1, '2019-08-07', '2019-08-07'),
(49, 'User 48', 'email48@gmail.com', 1, '2019-08-07', '2019-08-07'),
(50, 'User 49', 'email49@gmail.com', 1, '2019-08-07', '2019-08-07'),
(51, 'User 50', 'email50@gmail.com', 1, '2019-08-07', '2019-08-07'),
(52, 'User 51', 'email51@gmail.com', 1, '2019-08-07', '2019-08-07'),
(53, 'User 52', 'email52@gmail.com', 1, '2019-08-07', '2019-08-07'),
(54, 'User 53', 'email53@gmail.com', 1, '2019-08-07', '2019-08-07'),
(55, 'User 54', 'email54@gmail.com', 1, '2019-08-07', '2019-08-07'),
(56, 'User 55', 'email55@gmail.com', 1, '2019-08-07', '2019-08-07'),
(57, 'User 56', 'email56@gmail.com', 1, '2019-08-07', '2019-08-07'),
(58, 'User 57', 'email57@gmail.com', 1, '2019-08-07', '2019-08-07'),
(59, 'User 58', 'email58@gmail.com', 1, '2019-08-07', '2019-08-07'),
(60, 'User 59', 'email59@gmail.com', 1, '2019-08-07', '2019-08-07'),
(61, 'User 60', 'email60@gmail.com', 1, '2019-08-07', '2019-08-07'),
(62, 'User 61', 'email61@gmail.com', 1, '2019-08-07', '2019-08-07'),
(63, 'User 62', 'email62@gmail.com', 1, '2019-08-07', '2019-08-07'),
(64, 'User 63', 'email63@gmail.com', 1, '2019-08-07', '2019-08-07'),
(65, 'User 64', 'email64@gmail.com', 1, '2019-08-07', '2019-08-07'),
(66, 'User 65', 'email65@gmail.com', 1, '2019-08-07', '2019-08-07'),
(67, 'User 66', 'email66@gmail.com', 1, '2019-08-07', '2019-08-07'),
(68, 'User 67', 'email67@gmail.com', 1, '2019-08-07', '2019-08-07'),
(69, 'User 68', 'email68@gmail.com', 1, '2019-08-07', '2019-08-07'),
(70, 'User 69', 'email69@gmail.com', 1, '2019-08-07', '2019-08-07'),
(71, 'User 70', 'email70@gmail.com', 1, '2019-08-07', '2019-08-07'),
(72, 'User 71', 'email71@gmail.com', 1, '2019-08-07', '2019-08-07'),
(73, 'User 72', 'email72@gmail.com', 1, '2019-08-07', '2019-08-07'),
(74, 'User 73', 'email73@gmail.com', 1, '2019-08-07', '2019-08-07'),
(75, 'User 74', 'email74@gmail.com', 1, '2019-08-07', '2019-08-07'),
(76, 'User 75', 'email75@gmail.com', 1, '2019-08-07', '2019-08-07'),
(77, 'User 76', 'email76@gmail.com', 1, '2019-08-07', '2019-08-07'),
(78, 'User 77', 'email77@gmail.com', 1, '2019-08-07', '2019-08-07'),
(79, 'User 78', 'email78@gmail.com', 1, '2019-08-07', '2019-08-07'),
(80, 'User 79', 'email79@gmail.com', 1, '2019-08-07', '2019-08-07'),
(81, 'User 80', 'email80@gmail.com', 1, '2019-08-07', '2019-08-07'),
(82, 'User 81', 'email81@gmail.com', 1, '2019-08-07', '2019-08-07'),
(83, 'User 82', 'email82@gmail.com', 1, '2019-08-07', '2019-08-07'),
(84, 'User 83', 'email83@gmail.com', 1, '2019-08-07', '2019-08-07'),
(85, 'User 84', 'email84@gmail.com', 1, '2019-08-07', '2019-08-07'),
(86, 'User 85', 'email85@gmail.com', 1, '2019-08-07', '2019-08-07'),
(87, 'User 86', 'email86@gmail.com', 1, '2019-08-07', '2019-08-07'),
(88, 'User 87', 'email87@gmail.com', 1, '2019-08-07', '2019-08-07'),
(89, 'User 88', 'email88@gmail.com', 1, '2019-08-07', '2019-08-07'),
(90, 'User 89', 'email89@gmail.com', 1, '2019-08-07', '2019-08-07'),
(91, 'User 90', 'email90@gmail.com', 1, '2019-08-07', '2019-08-07'),
(92, 'User 91', 'email91@gmail.com', 1, '2019-08-07', '2019-08-07'),
(93, 'User 92', 'email92@gmail.com', 1, '2019-08-07', '2019-08-07'),
(94, 'User 93', 'email93@gmail.com', 1, '2019-08-07', '2019-08-07'),
(95, 'User 94', 'email94@gmail.com', 1, '2019-08-07', '2019-08-07'),
(96, 'User 95', 'email95@gmail.com', 1, '2019-08-07', '2019-08-07'),
(97, 'User 96', 'email96@gmail.com', 1, '2019-08-07', '2019-08-07'),
(98, 'User 97', 'email97@gmail.com', 1, '2019-08-07', '2019-08-07'),
(99, 'User 98', 'email98@gmail.com', 1, '2019-08-07', '2019-08-07'),
(100, 'User 99', 'email99@gmail.com', 1, '2019-08-07', '2019-08-07');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
