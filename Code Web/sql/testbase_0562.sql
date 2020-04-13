-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 13 2020 г., 10:15
-- Версия сервера: 10.0.38-MariaDB-0ubuntu0.16.04.1
-- Версия PHP: 7.0.33-0ubuntu0.16.04.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testbase_0562`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ProductCollection`
--

CREATE TABLE `ProductCollection` (
  `id` int(11) NOT NULL,
  `ProductId` varchar(250) NOT NULL,
  `Category` varchar(250) NOT NULL,
  `MainCategory` varchar(250) NOT NULL,
  `TaxTarifCode` varchar(250) NOT NULL,
  `SupplierName` varchar(250) NOT NULL,
  `WeightMeasure` varchar(250) NOT NULL,
  `WeightUnit` varchar(250) NOT NULL,
  `Description` varchar(250) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `DateOfSale` varchar(250) NOT NULL,
  `ProductPicUrl` varchar(250) NOT NULL,
  `Status` varchar(250) NOT NULL,
  `Quantity` varchar(250) NOT NULL,
  `UoM` varchar(250) NOT NULL,
  `CurrencyCode` varchar(250) NOT NULL,
  `Price` varchar(250) NOT NULL,
  `Width` varchar(250) NOT NULL,
  `Depth` varchar(250) NOT NULL,
  `Height` varchar(250) NOT NULL,
  `DimUnit` varchar(250) NOT NULL,
  `qrcode` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `ProductCollection`
--

INSERT INTO `ProductCollection` (`id`, `ProductId`, `Category`, `MainCategory`, `TaxTarifCode`, `SupplierName`, `WeightMeasure`, `WeightUnit`, `Description`, `Name`, `DateOfSale`, `ProductPicUrl`, `Status`, `Quantity`, `UoM`, `CurrencyCode`, `Price`, `Width`, `Depth`, `Height`, `DimUnit`, `qrcode`) VALUES
(11, '80-79f3a', 'Ноутбук', 'Компьютеры', '7', 'IBM', '4', 'Кг', ' Ноутбук модели fS-mRYv', 'IBM-5286', '2013/03/15', 'spa.png', 'В наличии', '116', 'AZ', 'EUR', '631', '48', '12', '41', 'см', 'ae0d9c4aa8'),
(12, 'db-d6585', 'Ноутбук', 'Компьютеры', '2', 'IBM', '7', 'Кг', ' Ноутбук модели Jm-hvOm', 'IBM-5179', '2013/03/15', 'spa.png', 'В наличии', '217', 'GV', 'EUR', '696', '88', '83', '65', 'см', '20db607139'),
(13, '79-00d10', 'Ноутбук', 'Компьютеры', '6', 'IBM', '8', 'Кг', ' Ноутбук модели lO-aiIy', 'IBM-8713', '2013/03/15', 'spa.png', 'В наличии', '559', 'pS', 'EUR', '356', '32', '68', '62', 'см', 'ca0daabd7c'),
(14, '5d-48a28', 'Ноутбук', 'Компьютеры', '6', 'IBM', '8', 'Кг', ' Ноутбук модели Yd-Vpjt', 'IBM-3765', '2013/03/15', 'spa.png', 'В наличии', '536', 'Nx', 'EUR', '832', '37', '94', '18', 'см', 'b97e21b22a'),
(15, '89-e0cba', 'Ноутбук', 'Компьютеры', '8', 'IBM', '8', 'Кг', ' Ноутбук модели mr-QRFT', 'IBM-2494', '2013/03/15', 'spa.png', 'В наличии', '811', 'Le', 'EUR', '939', '29', '67', '52', 'см', '97f52c252f');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ProductCollection`
--
ALTER TABLE `ProductCollection`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ProductCollection`
--
ALTER TABLE `ProductCollection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
