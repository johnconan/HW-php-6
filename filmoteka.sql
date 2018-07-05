-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 05 2018 г., 13:42
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
(1, 'Такси', 'Комедия', 2000, 'Культовый французский фильм «Такси», снятый по сценарию легендарного Люка Бессона, является одним из основоположников жанра фильмов о гонках. Он положил начало целой франшизе, которая со временем стала суперпопулярной не только во Франции, но и по всему миру. Даниэль работает водителем парижского такси. Но он помешан на гонках и быстрой езде, и даже его профессия не может стать помехой этому увлечению. Доехать на его такси действительно бывает куда быстрее, чем на общественном транспорте, но далеко не всегда безопасно. Конечно, никакой аварии быть не может, ведь Даниэль – истинный асс своего дела, но ведь не у каждого пассажира нервы выдержат поездки с многократным превышением скорости! Но проблемы у Даниэля не только с пассажирами: полицейский Эмильен, поймавший незадачливого таксиста на превышении и угрожающий отобрать права, вынуждает Даниэля помочь ему в поимке опасных преступников. Ему нужно всего лишь схватить банду грабителей, которые, как выясняется, водят машины ничуть не хуже самого Даниэля…', '18025512.jpg'),
(2, 'Вечное сияние чистого разума', 'Драма', 2004, 'Наконец-то изобретена машина, которая позволяет избавиться от любых воспоминаний. Джоэль и Клементина решают выбросить друг друга из головы. Но в памяти Джоэля все еще живы самые нежные моменты их чувства. Чем меньше он помнит, тем больше любит.', '92499084.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `userLogin` text NOT NULL,
  `userPassword` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`userLogin`, `userPassword`) VALUES
('admin', 123456);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
