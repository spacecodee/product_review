-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.29 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para products-review-sin
DROP DATABASE IF EXISTS `products-review-sin`;
CREATE DATABASE IF NOT EXISTS `products-review-sin` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `products-review-sin`;

-- Volcando estructura para tabla products-review-sin.item
DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8_bin DEFAULT NULL,
  `id_review` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_review___fk` (`id_review`),
  KEY `user_id___fk` (`id_user`),
  CONSTRAINT `id_review___fk` FOREIGN KEY (`id_review`) REFERENCES `review` (`id_review`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_id___fk` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Volcando datos para la tabla products-review-sin.item: ~4 rows (aproximadamente)
DELETE FROM `item`;
INSERT INTO `item` (`id`, `item_name`, `id_review`, `id_user`) VALUES
	(1, 'Arroz', 4, 2),
	(2, 'Vinagre', 5, 4),
	(3, 'Libro IT', 3, 1),
	(4, 'Pelicula DBZ', 5, 3),
	(5, 'Moto', 9, 4),
	(6, 'Celular Chinito', 10, 2),
	(7, 'cualquier cosa', NULL, 2),
	(8, 'Centoós', 6, 4);

-- Volcando estructura para tabla products-review-sin.review
DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `id_review` int NOT NULL AUTO_INCREMENT,
  `review` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id_review`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Volcando datos para la tabla products-review-sin.review: ~9 rows (aproximadamente)
DELETE FROM `review`;
INSERT INTO `review` (`id_review`, `review`) VALUES
	(1, 1.00),
	(2, 2.00),
	(3, 3.00),
	(4, 4.00),
	(5, 5.00),
	(6, 1.50),
	(7, 2.50),
	(8, 3.50),
	(9, 4.50),
	(10, 0.00),
	(11, 0.50),
	(12, 0.00);

-- Volcando estructura para tabla products-review-sin.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8_bin DEFAULT NULL,
  `user_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

-- Volcando datos para la tabla products-review-sin.user: ~4 rows (aproximadamente)
DELETE FROM `user`;
INSERT INTO `user` (`id_user`, `first_name`, `last_name`, `user_name`) VALUES
	(1, 'Juan', 'Perez', 'juanpe'),
	(2, 'Adrian', 'Mateo', 'adrimate'),
	(3, 'Yulia', 'Fernandez', 'yuli'),
	(4, 'Marta', 'Abel', 'martabel');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
