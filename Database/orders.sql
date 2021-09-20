-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 20 Eyl 2021, 11:36:56
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bisu_data`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `orderId` varchar(30) NOT NULL,
  `subscriptionId` varchar(30) NOT NULL,
  `deliveryDate` varchar(30) NOT NULL,
  `paymentMethod` varchar(30) NOT NULL,
  `products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`products`)),
  `totalAmount` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`orderId`, `subscriptionId`, `deliveryDate`, `paymentMethod`, `products`, `totalAmount`, `status`) VALUES
('1', 'abc123', '2017-05-02 00:13', 'BKM', '[ {\"product\":\"19 lt damanaca\",\r\n\"quantity\":1 }]', '10.00', 'NEW'),
('2', 'abc123', '2017-04-23 20:05', 'MASTERPASS', '[ {\"product\":\"19 lt damanaca\", \"quantity\":1 },\r\n{\"product\":\"10 lt pet\", \"quantity\":2 }]', '24.00', 'CONFIRMED'),
('3', 'abc123', '2017-03-31 16:35', 'PAYATDOOR', '[ {\"product\":\"19 lt damanaca\",\r\n\"quantity\":2 }]', '12.00', 'CANCELED'),
('4', 'abc125', '2017-03-29 11:19', 'PAYATDOOR', '[ {\"product\":\"19 lt damanaca\",\r\n\"quantity\":3 } ]', '36.00', 'COMPLETED'),
('5', 'abc125', '2017-03-23 17:59', 'BKM', '[ {\"product\":\"5 lt pet\",\r\n\"quantity\":2 }]', '15.00', 'CONFIRMED'),
('6', 'abc126', '2017-03-09 19:02', 'MASTERPASS', '[ {\"product\":\"19 lt damanaca\", \"quantity\":1 },\r\n{\"product\":\"5 lt pet\", \"quantity\":3 }]', '32.50', 'CANCELED');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `Test` (`subscriptionId`);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `Test` FOREIGN KEY (`subscriptionId`) REFERENCES `subscription` (`subscriptionId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
