CREATE DATABASE mydb;

USE mydb;

CREATE TABLE IF NOT EXISTS `items` (
  `item_id` varchar(36) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `excluUseAr` double DEFAULT NULL,
  `dealDay` char(10) DEFAULT NULL,
  `dealAmount` int DEFAULT NULL,
  `floor` int DEFAULT NULL,
  `buildYear` char(4) DEFAULT NULL,
  `dealingGbn` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;