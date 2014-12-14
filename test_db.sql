-- --------------------------------------------------------
-- Хост:                         192.168.126.129
-- Версия сервера:               5.5.40-0ubuntu0.14.04.1 - (Ubuntu)
-- ОС Сервера:                   debian-linux-gnu
-- HeidiSQL Версия:              9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных test_db
CREATE DATABASE IF NOT EXISTS `test_db` /*!40100 DEFAULT CHARACTER SET latin2 */;
USE `test_db`;


-- Дамп структуры для таблица test_db.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` tinytext,
  `parent_id` int(11) DEFAULT '0',
  `image_filename` varchar(255) DEFAULT NULL,
  `description` text,
  `meta_title` tinytext,
  `meta_description` tinytext,
  `meta_keywords` tinytext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin2;

-- Дамп данных таблицы test_db.categories: ~99 rows (приблизительно)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
REPLACE INTO `categories` (`id`, `name`, `url`, `parent_id`, `image_filename`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'category_name_1', 'category_url_1', 0, 'Penguins.jpg', 'category description 1', 'category meta title 1', 'category meta description 1', 'category meta  keywords 1', '2014-12-14 13:43:40', NULL, NULL),
	(2, 'category_name_2', 'category_url_2', 0, 'Penguins.jpg', 'category description 2', 'category meta title 2', 'category meta description 2', 'category meta  keywords 2', '2014-12-14 13:43:40', NULL, NULL),
	(3, 'category_name_3', 'category_url_3', 0, 'Penguins.jpg', 'category description 3', 'category meta title 3', 'category meta description 3', 'category meta  keywords 3', '2014-12-14 13:43:40', NULL, NULL),
	(4, 'category_name_4', 'category_url_4', 0, 'Penguins.jpg', 'category description 4', 'category meta title 4', 'category meta description 4', 'category meta  keywords 4', '2014-12-14 13:43:40', NULL, NULL),
	(5, 'category_name_5', 'category_url_5', 0, 'Penguins.jpg', 'category description 5', 'category meta title 5', 'category meta description 5', 'category meta  keywords 5', '2014-12-14 13:43:40', NULL, NULL),
	(6, 'category_name_6', 'category_url_6', 0, 'Penguins.jpg', 'category description 6', 'category meta title 6', 'category meta description 6', 'category meta  keywords 6', '2014-12-14 13:43:40', NULL, NULL),
	(7, 'category_name_7', 'category_url_7', 0, 'Penguins.jpg', 'category description 7', 'category meta title 7', 'category meta description 7', 'category meta  keywords 7', '2014-12-14 13:43:40', NULL, NULL),
	(8, 'category_name_8', 'category_url_8', 0, 'Penguins.jpg', 'category description 8', 'category meta title 8', 'category meta description 8', 'category meta  keywords 8', '2014-12-14 13:43:40', NULL, NULL),
	(9, 'category_name_9', 'category_url_9', 0, 'Penguins.jpg', 'category description 9', 'category meta title 9', 'category meta description 9', 'category meta  keywords 9', '2014-12-14 13:43:40', NULL, NULL),
	(10, 'category_name_10', 'category_url_10', 0, 'Penguins.jpg', 'category description 10', 'category meta title 10', 'category meta description 10', 'category meta  keywords 10', '2014-12-14 13:43:40', NULL, NULL),
	(11, 'category_name_11', 'category_url_11', 0, 'Penguins.jpg', 'category description 11', 'category meta title 11', 'category meta description 11', 'category meta  keywords 11', '2014-12-14 13:43:40', NULL, NULL),
	(12, 'category_name_12', 'category_url_12', 0, 'Penguins.jpg', 'category description 12', 'category meta title 12', 'category meta description 12', 'category meta  keywords 12', '2014-12-14 13:43:40', NULL, NULL),
	(13, 'category_name_13', 'category_url_13', 0, 'Penguins.jpg', 'category description 13', 'category meta title 13', 'category meta description 13', 'category meta  keywords 13', '2014-12-14 13:43:40', NULL, NULL),
	(14, 'category_name_14', 'category_url_14', 0, 'Penguins.jpg', 'category description 14', 'category meta title 14', 'category meta description 14', 'category meta  keywords 14', '2014-12-14 13:43:40', NULL, NULL),
	(15, 'category_name_15', 'category_url_15', 0, 'Penguins.jpg', 'category description 15', 'category meta title 15', 'category meta description 15', 'category meta  keywords 15', '2014-12-14 13:43:40', NULL, NULL),
	(16, 'category_name_16', 'category_url_16', 0, 'Penguins.jpg', 'category description 16', 'category meta title 16', 'category meta description 16', 'category meta  keywords 16', '2014-12-14 13:43:40', NULL, NULL),
	(17, 'category_name_17', 'category_url_17', 0, 'Penguins.jpg', 'category description 17', 'category meta title 17', 'category meta description 17', 'category meta  keywords 17', '2014-12-14 13:43:40', NULL, NULL),
	(18, 'category_name_18', 'category_url_18', 0, 'Penguins.jpg', 'category description 18', 'category meta title 18', 'category meta description 18', 'category meta  keywords 18', '2014-12-14 13:43:40', NULL, NULL),
	(19, 'category_name_19', 'category_url_19', 0, 'Penguins.jpg', 'category description 19', 'category meta title 19', 'category meta description 19', 'category meta  keywords 19', '2014-12-14 13:43:40', NULL, NULL),
	(20, 'category_name_20', 'category_url_20', 0, 'Penguins.jpg', 'category description 20', 'category meta title 20', 'category meta description 20', 'category meta  keywords 20', '2014-12-14 13:43:40', NULL, NULL),
	(21, 'category_name_21', 'category_url_21', 0, 'Penguins.jpg', 'category description 21', 'category meta title 21', 'category meta description 21', 'category meta  keywords 21', '2014-12-14 13:43:40', NULL, NULL),
	(22, 'category_name_22', 'category_url_22', 0, 'Penguins.jpg', 'category description 22', 'category meta title 22', 'category meta description 22', 'category meta  keywords 22', '2014-12-14 13:43:40', NULL, NULL),
	(23, 'category_name_23', 'category_url_23', 0, 'Penguins.jpg', 'category description 23', 'category meta title 23', 'category meta description 23', 'category meta  keywords 23', '2014-12-14 13:43:40', NULL, NULL),
	(24, 'category_name_24', 'category_url_24', 0, 'Penguins.jpg', 'category description 24', 'category meta title 24', 'category meta description 24', 'category meta  keywords 24', '2014-12-14 13:43:40', NULL, NULL),
	(25, 'category_name_25', 'category_url_25', 0, 'Penguins.jpg', 'category description 25', 'category meta title 25', 'category meta description 25', 'category meta  keywords 25', '2014-12-14 13:43:40', NULL, NULL),
	(26, 'category_name_26', 'category_url_26', 0, 'Penguins.jpg', 'category description 26', 'category meta title 26', 'category meta description 26', 'category meta  keywords 26', '2014-12-14 13:43:40', NULL, NULL),
	(27, 'category_name_27', 'category_url_27', 0, 'Penguins.jpg', 'category description 27', 'category meta title 27', 'category meta description 27', 'category meta  keywords 27', '2014-12-14 13:43:40', NULL, NULL),
	(28, 'category_name_28', 'category_url_28', 0, 'Penguins.jpg', 'category description 28', 'category meta title 28', 'category meta description 28', 'category meta  keywords 28', '2014-12-14 13:43:40', NULL, NULL),
	(29, 'category_name_29', 'category_url_29', 0, 'Penguins.jpg', 'category description 29', 'category meta title 29', 'category meta description 29', 'category meta  keywords 29', '2014-12-14 13:43:40', NULL, NULL),
	(30, 'category_name_30', 'category_url_30', 0, 'Penguins.jpg', 'category description 30', 'category meta title 30', 'category meta description 30', 'category meta  keywords 30', '2014-12-14 13:43:40', NULL, NULL),
	(32, 'category_name_32', 'category_url_32', 0, 'Penguins.jpg', 'category description 32', 'category meta title 32', 'category meta description 32', 'category meta  keywords 32', '2014-12-14 13:43:40', NULL, NULL),
	(33, 'category_name_33', 'category_url_33', 0, 'Penguins.jpg', 'category description 33', 'category meta title 33', 'category meta description 33', 'category meta  keywords 33', '2014-12-14 13:43:40', NULL, NULL),
	(34, 'category_name_34', 'category_url_34', 0, 'Penguins.jpg', 'category description 34', 'category meta title 34', 'category meta description 34', 'category meta  keywords 34', '2014-12-14 13:43:40', NULL, NULL),
	(35, 'category_name_35', 'category_url_35', 0, 'Penguins.jpg', 'category description 35', 'category meta title 35', 'category meta description 35', 'category meta  keywords 35', '2014-12-14 13:43:40', NULL, NULL),
	(36, 'category_name_36', 'category_url_36', 0, 'Penguins.jpg', 'category description 36', 'category meta title 36', 'category meta description 36', 'category meta  keywords 36', '2014-12-14 13:43:40', NULL, NULL),
	(37, 'category_name_37', 'category_url_37', 0, 'Penguins.jpg', 'category description 37', 'category meta title 37', 'category meta description 37', 'category meta  keywords 37', '2014-12-14 13:43:40', NULL, NULL),
	(38, 'category_name_38', 'category_url_38', 0, 'Penguins.jpg', 'category description 38', 'category meta title 38', 'category meta description 38', 'category meta  keywords 38', '2014-12-14 13:43:40', NULL, NULL),
	(39, 'category_name_39', 'category_url_39', 0, 'Penguins.jpg', 'category description 39', 'category meta title 39', 'category meta description 39', 'category meta  keywords 39', '2014-12-14 13:43:40', NULL, NULL),
	(40, 'category_name_40', 'category_url_40', 0, 'Penguins.jpg', 'category description 40', 'category meta title 40', 'category meta description 40', 'category meta  keywords 40', '2014-12-14 13:43:40', NULL, NULL),
	(41, 'category_name_41', 'category_url_41', 0, 'Penguins.jpg', 'category description 41', 'category meta title 41', 'category meta description 41', 'category meta  keywords 41', '2014-12-14 13:43:40', NULL, NULL),
	(42, 'category_name_42', 'category_url_42', 0, 'Penguins.jpg', 'category description 42', 'category meta title 42', 'category meta description 42', 'category meta  keywords 42', '2014-12-14 13:43:40', NULL, NULL),
	(43, 'category_name_43', 'category_url_43', 0, 'Penguins.jpg', 'category description 43', 'category meta title 43', 'category meta description 43', 'category meta  keywords 43', '2014-12-14 13:43:40', NULL, NULL),
	(44, 'category_name_44', 'category_url_44', 0, 'Penguins.jpg', 'category description 44', 'category meta title 44', 'category meta description 44', 'category meta  keywords 44', '2014-12-14 13:43:40', NULL, NULL),
	(45, 'category_name_45', 'category_url_45', 0, 'Penguins.jpg', 'category description 45', 'category meta title 45', 'category meta description 45', 'category meta  keywords 45', '2014-12-14 13:43:40', NULL, NULL),
	(46, 'category_name_46', 'category_url_46', 0, 'Penguins.jpg', 'category description 46', 'category meta title 46', 'category meta description 46', 'category meta  keywords 46', '2014-12-14 13:43:40', NULL, NULL),
	(47, 'category_name_47', 'category_url_47', 0, 'Penguins.jpg', 'category description 47', 'category meta title 47', 'category meta description 47', 'category meta  keywords 47', '2014-12-14 13:43:40', NULL, NULL),
	(48, 'category_name_48', 'category_url_48', 0, 'Penguins.jpg', 'category description 48', 'category meta title 48', 'category meta description 48', 'category meta  keywords 48', '2014-12-14 13:43:40', NULL, NULL),
	(49, 'category_name_49', 'category_url_49', 0, 'Penguins.jpg', 'category description 49', 'category meta title 49', 'category meta description 49', 'category meta  keywords 49', '2014-12-14 13:43:40', NULL, NULL),
	(50, 'category_name_50', 'category_url_50', 0, 'Penguins.jpg', 'category description 50', 'category meta title 50', 'category meta description 50', 'category meta  keywords 50', '2014-12-14 13:43:40', NULL, NULL),
	(51, 'category_name_51', 'category_url_51', 0, 'Penguins.jpg', 'category description 51', 'category meta title 51', 'category meta description 51', 'category meta  keywords 51', '2014-12-14 13:43:40', NULL, NULL),
	(52, 'category_name_52', 'category_url_52', 0, 'Penguins.jpg', 'category description 52', 'category meta title 52', 'category meta description 52', 'category meta  keywords 52', '2014-12-14 13:43:40', NULL, NULL),
	(53, 'category_name_53', 'category_url_53', 0, 'Penguins.jpg', 'category description 53', 'category meta title 53', 'category meta description 53', 'category meta  keywords 53', '2014-12-14 13:43:40', NULL, NULL),
	(54, 'category_name_54', 'category_url_54', 0, 'Penguins.jpg', 'category description 54', 'category meta title 54', 'category meta description 54', 'category meta  keywords 54', '2014-12-14 13:43:40', NULL, NULL),
	(55, 'category_name_55', 'category_url_55', 0, 'Penguins.jpg', 'category description 55', 'category meta title 55', 'category meta description 55', 'category meta  keywords 55', '2014-12-14 13:43:40', NULL, NULL),
	(56, 'category_name_56', 'category_url_56', 0, 'Penguins.jpg', 'category description 56', 'category meta title 56', 'category meta description 56', 'category meta  keywords 56', '2014-12-14 13:43:40', NULL, NULL),
	(57, 'category_name_57', 'category_url_57', 0, 'Penguins.jpg', 'category description 57', 'category meta title 57', 'category meta description 57', 'category meta  keywords 57', '2014-12-14 13:43:40', NULL, NULL),
	(58, 'category_name_58', 'category_url_58', 0, 'Penguins.jpg', 'category description 58', 'category meta title 58', 'category meta description 58', 'category meta  keywords 58', '2014-12-14 13:43:40', NULL, NULL),
	(59, 'category_name_59', 'category_url_59', 0, 'Penguins.jpg', 'category description 59', 'category meta title 59', 'category meta description 59', 'category meta  keywords 59', '2014-12-14 13:43:40', NULL, NULL),
	(60, 'category_name_60', 'category_url_60', 0, 'Penguins.jpg', 'category description 60', 'category meta title 60', 'category meta description 60', 'category meta  keywords 60', '2014-12-14 13:43:40', NULL, NULL),
	(61, 'category_name_61', 'category_url_61', 0, 'Penguins.jpg', 'category description 61', 'category meta title 61', 'category meta description 61', 'category meta  keywords 61', '2014-12-14 13:43:40', NULL, NULL),
	(62, 'category_name_62', 'category_url_62', 0, 'Penguins.jpg', 'category description 62', 'category meta title 62', 'category meta description 62', 'category meta  keywords 62', '2014-12-14 13:43:40', NULL, NULL),
	(63, 'category_name_63', 'category_url_63', 0, 'Penguins.jpg', 'category description 63', 'category meta title 63', 'category meta description 63', 'category meta  keywords 63', '2014-12-14 13:43:40', NULL, NULL),
	(64, 'category_name_64', 'category_url_64', 0, 'Penguins.jpg', 'category description 64', 'category meta title 64', 'category meta description 64', 'category meta  keywords 64', '2014-12-14 13:43:40', NULL, NULL),
	(65, 'category_name_65', 'category_url_65', 0, 'Penguins.jpg', 'category description 65', 'category meta title 65', 'category meta description 65', 'category meta  keywords 65', '2014-12-14 13:43:40', NULL, NULL),
	(66, 'category_name_66', 'category_url_66', 0, 'Penguins.jpg', 'category description 66', 'category meta title 66', 'category meta description 66', 'category meta  keywords 66', '2014-12-14 13:43:40', NULL, NULL),
	(67, 'category_name_67', 'category_url_67', 0, 'Penguins.jpg', 'category description 67', 'category meta title 67', 'category meta description 67', 'category meta  keywords 67', '2014-12-14 13:43:40', NULL, NULL),
	(68, 'category_name_68', 'category_url_68', 0, 'Penguins.jpg', 'category description 68', 'category meta title 68', 'category meta description 68', 'category meta  keywords 68', '2014-12-14 13:43:40', NULL, NULL),
	(69, 'category_name_69', 'category_url_69', 0, 'Penguins.jpg', 'category description 69', 'category meta title 69', 'category meta description 69', 'category meta  keywords 69', '2014-12-14 13:43:40', NULL, NULL),
	(70, 'category_name_70', 'category_url_70', 0, 'Penguins.jpg', 'category description 70', 'category meta title 70', 'category meta description 70', 'category meta  keywords 70', '2014-12-14 13:43:40', NULL, NULL),
	(71, 'category_name_71', 'category_url_71', 0, 'Penguins.jpg', 'category description 71', 'category meta title 71', 'category meta description 71', 'category meta  keywords 71', '2014-12-14 13:43:40', NULL, NULL),
	(72, 'category_name_72', 'category_url_72', 0, 'Penguins.jpg', 'category description 72', 'category meta title 72', 'category meta description 72', 'category meta  keywords 72', '2014-12-14 13:43:40', NULL, NULL),
	(73, 'category_name_73', 'category_url_73', 0, 'Penguins.jpg', 'category description 73', 'category meta title 73', 'category meta description 73', 'category meta  keywords 73', '2014-12-14 13:43:40', NULL, NULL),
	(74, 'category_name_74', 'category_url_74', 0, 'Penguins.jpg', 'category description 74', 'category meta title 74', 'category meta description 74', 'category meta  keywords 74', '2014-12-14 13:43:40', NULL, NULL),
	(75, 'category_name_75', 'category_url_75', 0, 'Penguins.jpg', 'category description 75', 'category meta title 75', 'category meta description 75', 'category meta  keywords 75', '2014-12-14 13:43:40', NULL, NULL),
	(76, 'category_name_76', 'category_url_76', 0, 'Penguins.jpg', 'category description 76', 'category meta title 76', 'category meta description 76', 'category meta  keywords 76', '2014-12-14 13:43:40', NULL, NULL),
	(77, 'category_name_77', 'category_url_77', 0, 'Penguins.jpg', 'category description 77', 'category meta title 77', 'category meta description 77', 'category meta  keywords 77', '2014-12-14 13:43:40', NULL, NULL),
	(78, 'category_name_78', 'category_url_78', 0, 'Penguins.jpg', 'category description 78', 'category meta title 78', 'category meta description 78', 'category meta  keywords 78', '2014-12-14 13:43:40', NULL, NULL),
	(79, 'category_name_79', 'category_url_79', 0, 'Penguins.jpg', 'category description 79', 'category meta title 79', 'category meta description 79', 'category meta  keywords 79', '2014-12-14 13:43:40', NULL, NULL),
	(80, 'category_name_80', 'category_url_80', 0, 'Penguins.jpg', 'category description 80', 'category meta title 80', 'category meta description 80', 'category meta  keywords 80', '2014-12-14 13:43:40', NULL, NULL),
	(81, 'category_name_81', 'category_url_81', 0, 'Penguins.jpg', 'category description 81', 'category meta title 81', 'category meta description 81', 'category meta  keywords 81', '2014-12-14 13:43:40', NULL, NULL),
	(82, 'category_name_82', 'category_url_82', 0, 'Penguins.jpg', 'category description 82', 'category meta title 82', 'category meta description 82', 'category meta  keywords 82', '2014-12-14 13:43:40', NULL, NULL),
	(83, 'category_name_83', 'category_url_83', 0, 'Penguins.jpg', 'category description 83', 'category meta title 83', 'category meta description 83', 'category meta  keywords 83', '2014-12-14 13:43:40', NULL, NULL),
	(84, 'category_name_84', 'category_url_84', 0, 'Penguins.jpg', 'category description 84', 'category meta title 84', 'category meta description 84', 'category meta  keywords 84', '2014-12-14 13:43:40', NULL, NULL),
	(85, 'category_name_85', 'category_url_85', 0, 'Penguins.jpg', 'category description 85', 'category meta title 85', 'category meta description 85', 'category meta  keywords 85', '2014-12-14 13:43:40', NULL, NULL),
	(86, 'category_name_86', 'category_url_86', 0, 'Penguins.jpg', 'category description 86', 'category meta title 86', 'category meta description 86', 'category meta  keywords 86', '2014-12-14 13:43:40', NULL, NULL),
	(87, 'category_name_87', 'category_url_87', 0, 'Penguins.jpg', 'category description 87', 'category meta title 87', 'category meta description 87', 'category meta  keywords 87', '2014-12-14 13:43:40', NULL, NULL),
	(88, 'category_name_88', 'category_url_88', 0, 'Penguins.jpg', 'category description 88', 'category meta title 88', 'category meta description 88', 'category meta  keywords 88', '2014-12-14 13:43:40', NULL, NULL),
	(89, 'category_name_89', 'category_url_89', 0, 'Penguins.jpg', 'category description 89', 'category meta title 89', 'category meta description 89', 'category meta  keywords 89', '2014-12-14 13:43:40', NULL, NULL),
	(90, 'category_name_90', 'category_url_90', 0, 'Penguins.jpg', 'category description 90', 'category meta title 90', 'category meta description 90', 'category meta  keywords 90', '2014-12-14 13:43:40', NULL, NULL),
	(91, 'category_name_91', 'category_url_91', 0, 'Penguins.jpg', 'category description 91', 'category meta title 91', 'category meta description 91', 'category meta  keywords 91', '2014-12-14 13:43:40', NULL, NULL),
	(92, 'category_name_92', 'category_url_92', 0, 'Penguins.jpg', 'category description 92', 'category meta title 92', 'category meta description 92', 'category meta  keywords 92', '2014-12-14 13:43:40', NULL, NULL),
	(93, 'category_name_93', 'category_url_93', 0, 'Penguins.jpg', 'category description 93', 'category meta title 93', 'category meta description 93', 'category meta  keywords 93', '2014-12-14 13:43:40', NULL, NULL),
	(94, 'category_name_94', 'category_url_94', 0, 'Penguins.jpg', 'category description 94', 'category meta title 94', 'category meta description 94', 'category meta  keywords 94', '2014-12-14 13:43:40', NULL, NULL),
	(95, 'category_name_95', 'category_url_95', 0, 'Penguins.jpg', 'category description 95', 'category meta title 95', 'category meta description 95', 'category meta  keywords 95', '2014-12-14 13:43:40', NULL, NULL),
	(96, 'category_name_96', 'category_url_96', 0, 'Penguins.jpg', 'category description 96', 'category meta title 96', 'category meta description 96', 'category meta  keywords 96', '2014-12-14 13:43:40', NULL, NULL),
	(97, 'category_name_97', 'category_url_97', 0, 'Penguins.jpg', 'category description 97', 'category meta title 97', 'category meta description 97', 'category meta  keywords 97', '2014-12-14 13:43:40', NULL, NULL),
	(98, 'category_name_98', 'category_url_98', 0, 'Penguins.jpg', 'category description 98', 'category meta title 98', 'category meta description 98', 'category meta  keywords 98', '2014-12-14 13:43:40', NULL, NULL),
	(99, 'category_name_99', 'category_url_99', 0, 'Penguins.jpg', 'category description 99', 'category meta title 99', 'category meta description 99', 'category meta  keywords 99', '2014-12-14 13:43:40', NULL, NULL),
	(100, 'category_name_100', 'category_url_100', 0, 'Penguins.jpg', 'category description 100', 'category meta title 100', 'category meta description 100', 'category meta  keywords 100', '2014-12-14 13:43:40', NULL, NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


-- Дамп структуры для таблица test_db.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `permissions` text,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы test_db.groups: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;


-- Дамп структуры для таблица test_db.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы test_db.migrations: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`migration`, `batch`) VALUES
	('2012_12_06_225921_migration_cartalyst_sentry_install_users', 1),
	('2012_12_06_225929_migration_cartalyst_sentry_install_groups', 1),
	('2012_12_06_225945_migration_cartalyst_sentry_install_users_groups_pivot', 1),
	('2012_12_06_225988_migration_cartalyst_sentry_install_throttle', 1),
	('2014_12_12_214205_add_admin_user', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Дамп структуры для таблица test_db.throttle
CREATE TABLE IF NOT EXISTS `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы test_db.throttle: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
REPLACE INTO `throttle` (`id`, `user_id`, `ip_address`, `attempts`, `suspended`, `banned`, `last_attempt_at`, `suspended_at`, `banned_at`) VALUES
	(1, 1, '192.168.126.1', 0, 0, 0, NULL, NULL, NULL);
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;


-- Дамп структуры для таблица test_db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `permissions` text,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(255) DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(255) DEFAULT NULL,
  `reset_password_code` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_activation_code_index` (`activation_code`),
  KEY `users_reset_password_code_index` (`reset_password_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы test_db.users: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `email`, `password`, `permissions`, `activated`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin@gmail.com', '$2y$10$vkI1GrPM5dwXTOVm3vh7U.TCFYdA6xD9ui9ajHAtDuStnAA5rWr/W', NULL, 1, NULL, NULL, '2014-12-14 20:29:02', '$2y$10$Dr5.xp.XG8FBEmLDWfOz4egTdvl1jQO6C1YKESO4yF71KEVoaDWQi', NULL, NULL, NULL, '2014-12-13 10:57:58', '2014-12-14 20:29:02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Дамп структуры для таблица test_db.users_groups
CREATE TABLE IF NOT EXISTS `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы test_db.users_groups: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
