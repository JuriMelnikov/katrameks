-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 22 2015 г., 00:48
-- Версия сервера: 5.5.46-0+deb8u1
-- Версия PHP: 5.6.14-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `KATRAMEKS`
--

-- --------------------------------------------------------

--
-- Структура таблицы `appointments`
--

CREATE TABLE IF NOT EXISTS `appointments` (
`id` int(11) NOT NULL,
  `appointment` varchar(255) NOT NULL,
  `del` int(11) NOT NULL DEFAULT '0' COMMENT 'Удаленные ордера'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_members`
--

CREATE TABLE IF NOT EXISTS `auth_members` (
`id` int(11) NOT NULL,
  `worker_id` int(11) DEFAULT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth_members`
--

REPLACE INTO `auth_members` (`id`, `worker_id`, `login`, `password`) VALUES
(1, 1, 'Administrator', '226c2e600a0ad47e5213'),
(33, 2, 'login1', '23423423');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(11) NOT NULL,
  `category_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Категории моделей';

-- --------------------------------------------------------

--
-- Структура таблицы `counts`
--

CREATE TABLE IF NOT EXISTS `counts` (
`id` int(11) NOT NULL,
  `order_time_id` int(11) NOT NULL,
  `models_in_order_id` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='хранит количество операций сделанных для выбранной модели';

-- --------------------------------------------------------

--
-- Структура таблицы `delay_login`
--

CREATE TABLE IF NOT EXISTS `delay_login` (
`id` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `time` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `filters`
--

CREATE TABLE IF NOT EXISTS `filters` (
  `id` tinyint(1) NOT NULL,
  `work_show` int(11) NOT NULL,
  `dayStop` int(11) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `filters`
--

REPLACE INTO `filters` (`id`, `work_show`, `dayStop`) VALUES
(1, 12, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `machine_list`
--

CREATE TABLE IF NOT EXISTS `machine_list` (
`id` int(11) NOT NULL,
  `machine_name` varchar(256) NOT NULL COMMENT 'Название машины'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Список названий используемых машин';

-- --------------------------------------------------------

--
-- Структура таблицы `models_in_order`
--

CREATE TABLE IF NOT EXISTS `models_in_order` (
`id` int(11) NOT NULL,
  `model_list_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь модели с ордером';

-- --------------------------------------------------------

--
-- Структура таблицы `model_list`
--

CREATE TABLE IF NOT EXISTS `model_list` (
`id` int(11) NOT NULL,
  `model_name` varchar(256) NOT NULL COMMENT 'Имя модели в списке моделей'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Список моделей';

-- --------------------------------------------------------

--
-- Структура таблицы `order_dubl`
--

CREATE TABLE IF NOT EXISTS `order_dubl` (
`id` int(11) NOT NULL,
  `order_name_id` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Дубли ордеров, продленных на другую неделю';

-- --------------------------------------------------------

--
-- Структура таблицы `order_name_list`
--

CREATE TABLE IF NOT EXISTS `order_name_list` (
`id` int(11) NOT NULL,
  `order_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='список названий ордеров';

-- --------------------------------------------------------

--
-- Структура таблицы `order_time`
--

CREATE TABLE IF NOT EXISTS `order_time` (
`id` int(11) NOT NULL,
  `order_name_id` int(11) NOT NULL,
  `year` varchar(5) NOT NULL,
  `month` int(11) NOT NULL,
  `week` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь ордера с временем выполнение';

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE IF NOT EXISTS `results` (
`id` int(11) NOT NULL,
  `techmap_id` int(11) NOT NULL,
  `order_time_id` int(11) NOT NULL,
  `order_name_list_id` int(11) NOT NULL,
  `models_in_order_id` int(11) NOT NULL,
  `model_list_id` int(11) NOT NULL,
  `worker_id` int(11) NOT NULL,
  `machine_list_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'дата внесения записи',
  `week` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `countDid` int(11) NOT NULL COMMENT 'Количество выполненных изделий'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Строка - запись о выполненной швеёй работе';

-- --------------------------------------------------------

--
-- Структура таблицы `techmap`
--

CREATE TABLE IF NOT EXISTS `techmap` (
`id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `serial` varchar(5) NOT NULL,
  `descript` varchar(255) NOT NULL,
  `model_list_id` int(11) NOT NULL,
  `time` varchar(11) NOT NULL,
  `machine_list_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Технологическая карта нормы времени';

-- --------------------------------------------------------

--
-- Структура таблицы `workers`
--

CREATE TABLE IF NOT EXISTS `workers` (
`id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `begin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Прием на работу работника',
  `end` timestamp NULL DEFAULT NULL COMMENT 'время увольнения работника',
  `role` varchar(20) NOT NULL,
  `family` varchar(30) NOT NULL,
  `name` varchar(20) NOT NULL,
  `kood` varchar(11) NOT NULL,
  `appointment_id` int(11) DEFAULT NULL,
  `telefon` varchar(15) NOT NULL,
  `bankCount` varchar(15) NOT NULL,
  `city` varchar(20) NOT NULL,
  `adress` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='Работники ';

--
-- Дамп данных таблицы `workers`
--

REPLACE INTO `workers` (`id`, `active`, `begin`, `end`, `role`, `family`, `name`, `kood`, `appointment_id`, `telefon`, `bankCount`, `city`, `adress`) VALUES
(1, 0, '0000-00-00 00:00:00', NULL, 'ROLE_ADMIN', 'Administrator', 'admin', '43536363636', NULL, '56509987', '454545', '454', '454'),
(2, 0, '0000-00-00 00:00:00', NULL, 'ROLE_ADMIN', 'dsdfsdf', 'sdfsdfs', '12', NULL, '12', '12', '12', '12');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `appointments`
--
ALTER TABLE `appointments`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `appointment` (`appointment`);

--
-- Индексы таблицы `auth_members`
--
ALTER TABLE `auth_members`
 ADD PRIMARY KEY (`id`), ADD KEY `worker_id` (`worker_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `counts`
--
ALTER TABLE `counts`
 ADD PRIMARY KEY (`id`), ADD KEY `order_id` (`order_time_id`), ADD KEY `model_id` (`models_in_order_id`);

--
-- Индексы таблицы `delay_login`
--
ALTER TABLE `delay_login`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `filters`
--
ALTER TABLE `filters`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `machine_list`
--
ALTER TABLE `machine_list`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `models_in_order`
--
ALTER TABLE `models_in_order`
 ADD PRIMARY KEY (`id`), ADD KEY `a_id` (`order_id`), ADD KEY `model_list_id` (`model_list_id`);

--
-- Индексы таблицы `model_list`
--
ALTER TABLE `model_list`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_dubl`
--
ALTER TABLE `order_dubl`
 ADD PRIMARY KEY (`id`), ADD KEY `order_name_id` (`order_name_id`);

--
-- Индексы таблицы `order_name_list`
--
ALTER TABLE `order_name_list`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_time`
--
ALTER TABLE `order_time`
 ADD PRIMARY KEY (`id`), ADD KEY `order_name_id` (`order_name_id`);

--
-- Индексы таблицы `results`
--
ALTER TABLE `results`
 ADD PRIMARY KEY (`id`), ADD KEY `techmap_id` (`techmap_id`), ADD KEY `order_time_id` (`order_time_id`), ADD KEY `order_name_list_id` (`order_name_list_id`), ADD KEY `models_in_order_id` (`models_in_order_id`), ADD KEY `model_list_id` (`model_list_id`), ADD KEY `worker_id` (`worker_id`), ADD KEY `machine_list_id` (`machine_list_id`);

--
-- Индексы таблицы `techmap`
--
ALTER TABLE `techmap`
 ADD PRIMARY KEY (`id`), ADD KEY `serial` (`serial`), ADD KEY `machine_id` (`machine_list_id`), ADD KEY `category_id` (`category_id`), ADD KEY `modellistid` (`model_list_id`) COMMENT 'Индекс имени модели';

--
-- Индексы таблицы `workers`
--
ALTER TABLE `workers`
 ADD PRIMARY KEY (`id`), ADD KEY `appointment` (`appointment_id`) COMMENT 'Должность работника';

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `appointments`
--
ALTER TABLE `appointments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `auth_members`
--
ALTER TABLE `auth_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `counts`
--
ALTER TABLE `counts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `delay_login`
--
ALTER TABLE `delay_login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `machine_list`
--
ALTER TABLE `machine_list`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `models_in_order`
--
ALTER TABLE `models_in_order`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `model_list`
--
ALTER TABLE `model_list`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `order_dubl`
--
ALTER TABLE `order_dubl`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `order_name_list`
--
ALTER TABLE `order_name_list`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `order_time`
--
ALTER TABLE `order_time`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `results`
--
ALTER TABLE `results`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `techmap`
--
ALTER TABLE `techmap`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `workers`
--
ALTER TABLE `workers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_members`
--
ALTER TABLE `auth_members`
ADD CONSTRAINT `auth_members_ibfk_1` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`);

--
-- Ограничения внешнего ключа таблицы `counts`
--
ALTER TABLE `counts`
ADD CONSTRAINT `counts_ibfk_5` FOREIGN KEY (`order_time_id`) REFERENCES `order_time` (`id`),
ADD CONSTRAINT `counts_ibfk_4` FOREIGN KEY (`models_in_order_id`) REFERENCES `models_in_order` (`id`);

--
-- Ограничения внешнего ключа таблицы `models_in_order`
--
ALTER TABLE `models_in_order`
ADD CONSTRAINT `models_in_order_ibfk_1` FOREIGN KEY (`model_list_id`) REFERENCES `model_list` (`id`);

--
-- Ограничения внешнего ключа таблицы `order_dubl`
--
ALTER TABLE `order_dubl`
ADD CONSTRAINT `order_dubl_ibfk_1` FOREIGN KEY (`order_name_id`) REFERENCES `order_name_list` (`id`);

--
-- Ограничения внешнего ключа таблицы `results`
--
ALTER TABLE `results`
ADD CONSTRAINT `results_ibfk_7` FOREIGN KEY (`machine_list_id`) REFERENCES `machine_list` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`techmap_id`) REFERENCES `techmap` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`order_time_id`) REFERENCES `order_time` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `results_ibfk_3` FOREIGN KEY (`order_name_list_id`) REFERENCES `order_name_list` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `results_ibfk_4` FOREIGN KEY (`models_in_order_id`) REFERENCES `models_in_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `results_ibfk_5` FOREIGN KEY (`model_list_id`) REFERENCES `model_list` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `results_ibfk_6` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `techmap`
--
ALTER TABLE `techmap`
ADD CONSTRAINT `techmap_ibfk_5` FOREIGN KEY (`model_list_id`) REFERENCES `model_list` (`id`),
ADD CONSTRAINT `techmap_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
ADD CONSTRAINT `techmap_ibfk_4` FOREIGN KEY (`machine_list_id`) REFERENCES `machine_list` (`id`);

--
-- Ограничения внешнего ключа таблицы `workers`
--
ALTER TABLE `workers`
ADD CONSTRAINT `workers_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
