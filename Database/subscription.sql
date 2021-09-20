-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 20 Eyl 2021, 11:37:14
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
-- Tablo için tablo yapısı `subscription`
--

CREATE TABLE `subscription` (
  `subscriptionId` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `locationName` varchar(30) NOT NULL,
  `subCityName` varchar(30) NOT NULL,
  `cityName` varchar(30) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `phoneNumber` varchar(30) NOT NULL,
  `distributorNumber` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `subscription`
--

INSERT INTO `subscription` (`subscriptionId`, `fullname`, `address`, `locationName`, `subCityName`, `cityName`, `brand`, `phoneNumber`, `distributorNumber`) VALUES
('abc123', 'Utku', 'sair nefi sokak', 'caferaga', 'kadiköy', 'istanbul', 'hayat', '5332858530', '2161000000'),
('abc124', 'Utku', 'sair nefi sokak', 'caferaga', 'kadiköy', 'istanbul', 'sirma', '5332858530', '2161000004'),
('abc125', 'Ozan', 'bahariye sokak', 'caddebostan', 'kadiköy', 'istanbul', 'erikli', '5331533630', '2161000001'),
('abc126', 'Ergin', 'moda caddesi', 'göztepe', 'kadiköy', 'istanbul', 'sirma', '5332858530', '2161000002');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subscriptionId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
