-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 29 2018 г., 22:00
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `filmoteka`
--

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `genre` text NOT NULL,
  `year` int(11) NOT NULL,
  `description` text NOT NULL,
  `photo` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`id`, `title`, `genre`, `year`, `description`, `photo`) VALUES
(10, 'Такси 2', 'Комедия', 2000, '«Такси́ 2» (фр. Taxi 2) — французский художественный фильм 2000 года, снятый режиссёром Жераром Кравчиком по сценарию Люка Бессона. «Такси 2» является продолжением фильма «Такси» и сочетает в себе элементы комедии и боевика. Кассовые сборы в мировом прокате – $64.4 млн.', '99033203.jpg'),
(11, 'Вечное сияние чистого разума', 'Драма', 2004, '«Ве́чное сия́ние чи́стого ра́зума» (англ. Eternal Sunshine of the Spotless Mind) — романтическая драма с элементами фантастики, снятая Мишелем Гондри по сценарию Чарли Кауфмана в 2004 году. Фильм удостоен «Оскара» за лучший оригинальный сценарий. Один из немногих фильмов, где Джим Керри занят не в комедийном амплуа. Фильм занимает 88-е место в списке 250 лучших фильмов по версии IMDb.', '73525695.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
