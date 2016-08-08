-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Авг 06 2016 г., 13:59
-- Версия сервера: 10.1.13-MariaDB
-- Версия PHP: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `accounts_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'Sport'),
(2, 'Admin'),
(3, 'Auto'),
(4, 'Git'),
(5, 'Products');

-- --------------------------------------------------------

--
-- Структура таблицы `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `account_expired` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `avatar_extension` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `customer`
--

INSERT INTO `customer` (`id`, `category`, `login`, `password`, `email`, `account_expired`, `avatar_extension`) VALUES
(5, 1, 'Admin', 'admin', 'admin@mail.ru', '2016-07-20 21:00:00', 'image/jpeg'),
(6, 4, 'Alexander', '1111', 'alexanderpgs@ukr.net', '2016-07-13 21:00:00', 'image/jpeg'),
(12, 1, 'dkamenka', '2222', 'saniyd-kamenka@mail.ru', '2016-07-14 21:00:00', 'image/jpeg'),
(13, 3, 'Ded', '3333', 'aaa@mail.ru', '2016-07-13 21:00:00', 'image/jpeg'),
(14, 5, 'Ben', '4444', 'asasa@mail.ru', '2016-01-14 22:00:00', 'image/jpeg'),
(16, 4, 'Taniy', '3333', 'alexanderpgs@ukr.net', '2016-08-17 21:00:00', 'image/jpeg'),
(17, 1, 'qwrqwrqwr', 'qwrqrqrq', 'wqrqwrqw', '2016-08-05 21:00:00', 'qwrqwrqwr'),
(18, 1, 'qwrqwrqwr', 'qwrqrqrq', 'wqrqwrqw', '2016-08-05 21:00:00', 'qwrqwrqwr'),
(19, 1, 'qwrqwrqwr', 'qwrqrqrq', 'wqrqwrqw', '2016-08-05 21:00:00', 'qwrqwrqwr'),
(20, 1, 'qwrqwrqwr', 'qwrqrqrq', 'wqrqwrqw', '2016-08-05 21:00:00', 'qwrqwrqwr'),
(21, 1, 'qwrqwrqwr', 'qwrqrqrq', 'wqrqwrqw', '2016-08-05 21:00:00', 'qwrqwrqwr'),
(22, 1, 'qwrqwrqwr', 'qwrqrqrq', 'wqrqwrqw', '2016-08-05 21:00:00', 'qwrqwrqwr');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_customer_category` (`category`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_customer_category` FOREIGN KEY (`category`) REFERENCES `category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
