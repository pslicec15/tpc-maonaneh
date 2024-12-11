-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2024 at 04:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tpclibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `studentId` bigint(20) UNSIGNED DEFAULT NULL,
  `instructorId` bigint(20) UNSIGNED DEFAULT NULL,
  `timedIn` datetime NOT NULL,
  `timedOut` datetime DEFAULT NULL,
  `archive` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bookTitle` varchar(255) NOT NULL,
  `bookNum` varchar(255) DEFAULT NULL,
  `edition` text DEFAULT NULL,
  `pages` text DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `placeOfPublication` varchar(255) DEFAULT NULL,
  `copyrightDate` varchar(255) DEFAULT NULL,
  `size` varchar(255) NOT NULL,
  `yearPublished` varchar(255) DEFAULT NULL,
  `ISBN` varchar(255) DEFAULT NULL,
  `callNumber` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `subjects` varchar(255) DEFAULT NULL,
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `volume` varchar(255) DEFAULT NULL,
  `serialNumber` varchar(255) DEFAULT NULL,
  `copies` int(255) DEFAULT NULL,
  `damaged` int(11) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `sourceFund` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `addedOn` date NOT NULL,
  `addedBy` bigint(20) UNSIGNED NOT NULL,
  `borrowed` tinyint(1) NOT NULL DEFAULT 0,
  `archive` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `bookTitle`, `bookNum`, `edition`, `pages`, `author`, `publisher`, `placeOfPublication`, `copyrightDate`, `size`, `yearPublished`, `ISBN`, `callNumber`, `location`, `subjects`, `categoryId`, `volume`, `serialNumber`, `copies`, `damaged`, `price`, `sourceFund`, `remarks`, `addedOn`, `addedBy`, `borrowed`, `archive`, `created_at`, `updated_at`) VALUES
(301, 'Total Quality Management', '1', '', '697', 'Evans James R., Lindslay, William M.', 'CENGAGE Learning', '', '', '', '2016', '', 'Fil.658.562 Eu 11 C 2016', '', '', 5, '', '', 5, 0, 479.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 1, 0, NULL, '2024-04-11 05:59:07'),
(302, 'Total Quality Management', '2', '', '697', 'Evans James R., Lindslay, William M.', 'CENGAGE Learning', '', '', '', '2016', '', 'Fil.658.562 Eu 11 C 2016', '', '', 5, '', '', 5, 0, 479.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(303, 'Total Quality Management', '3', '', '697', 'Evans James R., Lindslay, William M.', 'CENGAGE Learning', '', '', '', '2016', '', 'Fil.658.562 Eu 11 C 2016', '', '', 5, '', '', 5, 0, 479.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(304, 'Total Quality Management', '4', '', '697', 'Evans James R., Lindslay, William M.', 'CENGAGE Learning', '', '', '', '2016', '', 'Fil.658.562 Eu 11 C 2016', '', '', 5, '', '', 5, 0, 479.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(305, 'Total Quality Management', '5', '', '697', 'Evans James R., Lindslay, William M.', 'CENGAGE Learning', '', '', '', '2016', '', 'Fil.658.562 Eu 11 C 2016', '', '', 5, '', '', 5, 0, 479.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 1, 0, NULL, '2024-04-11 05:54:21'),
(306, 'Advestising and Promotion', '6', '', '461', 'Kaser, Ken', 'CENGAGE Learning', '', '', '', '2017', '', 'Fil.659.1 K 151 C 2017', '', '', 5, '', '', 5, 0, 435.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(307, 'Advestising and Promotion', '7', '', '461', 'Kaser, Ken', 'CENGAGE Learning', '', '', '', '2017', '', 'Fil.659.1 K 151 C 2017', '', '', 5, '', '', 5, 0, 435.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(308, 'Advestising and Promotion', '8', '', '461', 'Kaser, Ken', 'CENGAGE Learning', '', '', '', '2017', '', 'Fil.659.1 K 151 C 2017', '', '', 5, '', '', 5, 0, 435.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(309, 'Advestising and Promotion', '9', '', '461', 'Kaser, Ken', 'CENGAGE Learning', '', '', '', '2017', '', 'Fil.659.1 K 151 C 2017', '', '', 5, '', '', 5, 0, 435.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(310, 'Advestising and Promotion', '10', '', '461', 'Kaser, Ken', 'CENGAGE Learning', '', '', '', '2017', '', 'Fil.659.1 K 151 C 2017', '', '', 5, '', '', 5, 0, 435.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 1, 0, NULL, '2024-04-11 05:54:21'),
(311, 'Management Accounting', '11', '', '180', 'Aliling, Leonardo E. and Anastacio, Ma.Flordeliza L.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil.658 1511 A44 C 2016', '', '', 5, '', '', 5, 0, 336.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(312, 'Management Accounting', '12', '', '180', 'Aliling, Leonardo E. and Anastacio, Ma.Flordeliza L.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil.658 1511 A44 C 2016', '', '', 5, '', '', 5, 0, 336.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(313, 'Management Accounting', '13', '', '180', 'Aliling, Leonardo E. and Anastacio, Ma.Flordeliza L.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil.658 1511 A44 C 2016', '', '', 5, '', '', 5, 0, 336.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(314, 'Management Accounting', '14', '', '180', 'Aliling, Leonardo E. and Anastacio, Ma.Flordeliza L.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil.658 1511 A44 C 2016', '', '', 5, '', '', 5, 0, 336.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(315, 'Management Accounting', '15', '', '180', 'Aliling, Leonardo E. and Anastacio, Ma.Flordeliza L.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil.658 1511 A44 C 2016', '', '', 5, '', '', 5, 0, 336.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, '2024-04-11 05:53:33'),
(316, 'Calculus for Business', '16', '', '277', 'Aliling, Leonardo E. and Anastacio, Ma.Flordeliza L.', 'REX BOOKSTORE', '', '', '', '2016', '', '                              ', '', '', 5, '', '', 5, 0, 609.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(317, 'Calculus for Business', '17', '', '277', 'Aliling, Leonardo E. and Anastacio, Ma.Flordeliza L.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil.511.5 C 126 C 2012', '', '', 5, '', '', 5, 0, 609.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(318, 'Calculus for Business', '18', '', '277', 'Aliling, Leonardo E. and Anastacio, Ma.Flordeliza L.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil.511.5 C 126 C 2012', '', '', 5, '', '', 5, 0, 609.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(319, 'Calculus for Business', '19', '', '277', 'Aliling, Leonardo E. and Anastacio, Ma.Flordeliza L.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil.511.5 C 126 C 2012', '', '', 5, '', '', 5, 0, 609.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(320, 'Calculus for Business', '20', '', '277', 'Aliling, Leonardo E. and Anastacio, Ma.Flordeliza L.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil.511.5 C 126 C 2012', '', '', 5, '', '', 5, 0, 609.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 1, 0, NULL, '2024-04-11 05:54:21'),
(321, 'Basic Accounting 2: Partnership and Corporation', '21', '', '395', 'Palma, Roberto', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil.657.042 P 18 C 2015', '', '', 5, '', '', 5, 0, 557.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(322, 'Basic Accounting 2: Partnership and Corporation', '22', '', '395', 'Palma, Roberto', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil.657.042 P 18 C 2015', '', '', 5, '', '', 5, 0, 557.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(323, 'Basic Accounting 2: Partnership and Corporation', '23', '', '395', 'Palma, Roberto', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil.657.042 P 18 C 2015', '', '', 5, '', '', 5, 0, 557.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(324, 'Basic Accounting 2: Partnership and Corporation', '24', '', '395', 'Palma, Roberto', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil.657.042 P 18 C 2015', '', '', 5, '', '', 5, 0, 557.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(325, 'Basic Accounting 2: Partnership and Corporation', '25', '', '395', 'Palma, Roberto', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil.657.042 P 18 C 2015', '', '', 5, '', '', 5, 0, 557.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 1, 0, NULL, '2024-04-11 05:54:21'),
(326, 'Auditing Assurance Principles, Pofessional Ethics, and Good Governance', '26', '', '329', 'Monte - Galanza, Raquel', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 657.45 M 763 C 2015', '', '', 5, '', '', 5, 0, 546.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(327, 'Auditing Assurance Principles, Pofessional Ethics, and Good Governance', '27', '', '329', 'Monte - Galanza, Raquel', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 657.45 M 763 C 2015', '', '', 5, '', '', 5, 0, 546.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(328, 'Auditing Assurance Principles, Pofessional Ethics, and Good Governance', '28', '', '329', 'Monte - Galanza, Raquel', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 657.45 M 763 C 2015', '', '', 5, '', '', 5, 0, 546.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(329, 'Auditing Assurance Principles, Pofessional Ethics, and Good Governance', '29', '', '329', 'Monte - Galanza, Raquel', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 657.45 M 763 C 2015', '', '', 5, '', '', 5, 0, 546.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(330, 'Auditing Assurance Principles, Pofessional Ethics, and Good Governance', '30', '', '329', 'Monte - Galanza, Raquel', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 657.45 M 763 C 2015', '', '', 5, '', '', 5, 0, 546.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 1, 0, NULL, '2024-04-11 05:54:21'),
(331, 'Elements of Finance', '31', '', '294', 'Lopez - Mariano, Norma Dy ', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 332 L88 C 2014', '', '', 5, '', '', 5, 0, 488.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(332, 'Elements of Finance', '32', '', '294', 'Lopez - Mariano, Norma Dy ', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 332 L88 C 2014', '', '', 5, '', '', 5, 0, 488.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(333, 'Elements of Finance', '33', '', '294', 'Lopez - Mariano, Norma Dy ', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 332 L88 C 2014', '', '', 5, '', '', 5, 0, 488.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(334, 'Elements of Finance', '34', '', '294', 'Lopez - Mariano, Norma Dy ', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 332 L88 C 2014', '', '', 5, '', '', 5, 0, 488.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(335, 'Elements of Finance', '35', '', '294', 'Lopez - Mariano, Norma Dy ', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 332 L88 C 2014', '', '', 5, '', '', 5, 0, 488.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, '2024-04-11 05:54:40'),
(336, 'Organization Behavior and Management in Phil. Organizations', '36', 'Revised', '132', 'Zarate, Cynthia A.', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 302.35 Z 18 C 2017', '', '', 5, '', '', 5, 0, 356.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(337, 'Organization Behavior and Management in Phil. Organizations', '37', 'Revised', '132', 'Zarate, Cynthia A.', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 302.35 Z 18 C 2017', '', '', 5, '', '', 5, 0, 356.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(338, 'Organization Behavior and Management in Phil. Organizations', '38', 'Revised', '132', 'Zarate, Cynthia A.', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 302.35 Z 18 C 2017', '', '', 5, '', '', 5, 0, 356.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(339, 'Organization Behavior and Management in Phil. Organizations', '39', 'Revised', '132', 'Zarate, Cynthia A.', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 302.35 Z 18 C 2017', '', '', 5, '', '', 5, 0, 356.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(340, 'Organization Behavior and Management in Phil. Organizations', '40', 'Revised', '132', 'Zarate, Cynthia A.', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 302.35 Z 18 C 2017', '', '', 5, '', '', 5, 0, 356.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(341, 'Mathematics of Investment with Computer Application', '41', '', '301', 'Paler - Calmorin Laurentina et al.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 657 P 174 C 2012', '', '', 5, '', '', 5, 0, 542.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(342, 'Mathematics of Investment with Computer Application', '42', '', '301', 'Paler - Calmorin Laurentina et al.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 657 P 174 C 2012', '', '', 5, '', '', 5, 0, 542.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(343, 'Mathematics of Investment with Computer Application', '43', '', '301', 'Paler - Calmorin Laurentina et al.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 657 P 174 C 2012', '', '', 5, '', '', 5, 0, 542.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(344, 'Mathematics of Investment with Computer Application', '44', '', '301', 'Paler - Calmorin Laurentina et al.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 657 P 174 C 2012', '', '', 5, '', '', 5, 0, 542.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(345, 'Mathematics of Investment with Computer Application', '45', '', '301', 'Paler - Calmorin Laurentina et al.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 657 P 174 C 2012', '', '', 5, '', '', 5, 0, 542.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(346, 'Mathematical Analysis', '46', '', '181', 'Copo, Antonio, Roland I et al.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 515 M 42 C 2015', '', '', 5, '', '', 5, 0, 399.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(347, 'Mathematical Analysis', '47', '', '181', 'Copo, Antonio, Roland I et al.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 515 M 42 C 2015', '', '', 5, '', '', 5, 0, 399.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(348, 'Mathematical Analysis', '48', '', '181', 'Copo, Antonio, Roland I et al.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 515 M 42 C 2015', '', '', 5, '', '', 5, 0, 399.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(349, 'Mathematical Analysis', '49', '', '181', 'Copo, Antonio, Roland I et al.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 515 M 42 C 2015', '', '', 5, '', '', 5, 0, 399.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(350, 'Mathematical Analysis', '50', '', '181', 'Copo, Antonio, Roland I et al.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 515 M 42 C 2015', '', '', 5, '', '', 5, 0, 399.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(351, 'Partnership and Corporation Accounting and their Legal Basis', '51', '', '219', 'Hugo - Makapilit, Cecilia', 'REX BOOKSTORE', '', '', '', '2012', '', 'Fil. 657.92 H 87 C 2010', '', '', 5, '', '', 5, 0, 430.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(352, 'Partnership and Corporation Accounting and their Legal Basis', '52', '', '219', 'Hugo - Makapilit, Cecilia', 'REX BOOKSTORE', '', '', '', '2012', '', 'Fil. 657.92 H 87 C 2010', '', '', 5, '', '', 5, 0, 430.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(353, 'Partnership and Corporation Accounting and their Legal Basis', '53', '', '219', 'Hugo - Makapilit, Cecilia', 'REX BOOKSTORE', '', '', '', '2012', '', 'Fil. 657.92 H 87 C 2010', '', '', 5, '', '', 5, 0, 430.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(354, 'Partnership and Corporation Accounting and their Legal Basis', '54', '', '219', 'Hugo - Makapilit, Cecilia', 'REX BOOKSTORE', '', '', '', '2012', '', 'Fil. 657.92 H 87 C 2010', '', '', 5, '', '', 5, 0, 430.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(355, 'Partnership and Corporation Accounting and their Legal Basis', '55', '', '219', 'Hugo - Makapilit, Cecilia', 'REX BOOKSTORE', '', '', '', '2012', '', 'Fil. 657.92 H 87 C 2010', '', '', 5, '', '', 5, 0, 430.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(356, 'People Management ', '56', '8th', '273', 'Sison, Perfecto S. et al.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 658.331244 S 1 C 2013', '', '', 5, '', '', 5, 0, 750.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(357, 'People Management ', '57', '8th', '273', 'Sison, Perfecto S. et al.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 658.331244 S 1 C 2013', '', '', 5, '', '', 5, 0, 750.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(358, 'People Management ', '58', '8th', '273', 'Sison, Perfecto S. et al.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 658.331244 S 1 C 2013', '', '', 5, '', '', 5, 0, 750.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(359, 'People Management ', '59', '8th', '273', 'Sison, Perfecto S. et al.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 658.331244 S 1 C 2013', '', '', 5, '', '', 5, 0, 750.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(360, 'People Management ', '60', '8th', '273', 'Sison, Perfecto S. et al.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 658.331244 S 1 C 2013', '', '', 5, '', '', 5, 0, 750.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(361, 'Marketing Basics (A Modular Approach)', '61', '', '117', 'Balasan, Ma Nancy T.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 380.1 Ba 183 C 2016', '', '', 5, '', '', 5, 0, 247.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(362, 'Marketing Basics (A Modular Approach)', '62', '', '117', 'Balasan, Ma Nancy T.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 380.1 Ba 183 C 2016', '', '', 5, '', '', 5, 0, 247.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(363, 'Marketing Basics (A Modular Approach)', '63', '', '117', 'Balasan, Ma Nancy T.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 380.1 Ba 183 C 2016', '', '', 5, '', '', 5, 0, 247.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(364, 'Marketing Basics (A Modular Approach)', '64', '', '117', 'Balasan, Ma Nancy T.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 380.1 Ba 183 C 2016', '', '', 5, '', '', 5, 0, 247.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(365, 'Marketing Basics (A Modular Approach)', '65', '', '117', 'Balasan, Ma Nancy T.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 380.1 Ba 183 C 2016', '', '', 5, '', '', 5, 0, 247.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(366, 'Writing Business Letters', '66', '', '257', 'Egipto, Joel Joseph L.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 374.4 Eg 46 C 2013', '', '', 5, '', '', 5, 0, 434.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(367, 'Writing Business Letters', '67', '', '257', 'Egipto, Joel Joseph L.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 374.4 Eg 46 C 2013', '', '', 5, '', '', 5, 0, 434.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(368, 'Writing Business Letters', '68', '', '257', 'Egipto, Joel Joseph L.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 374.4 Eg 46 C 2013', '', '', 5, '', '', 5, 0, 434.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(369, 'Writing Business Letters', '59', '', '257', 'Egipto, Joel Joseph L.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 374.4 Eg 46 C 2013', '', '', 5, '', '', 5, 0, 434.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(370, 'Writing Business Letters', '70', '', '257', 'Egipto, Joel Joseph L.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 374.4 Eg 46 C 2013', '', '', 5, '', '', 5, 0, 434.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(371, 'Personnel and human Resources Management', '71', '', '275', 'Medina, Roberto G. ', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil.658.3 M 468 C 2016', '', '', 5, '', '', 5, 0, 359.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(372, 'Personnel and human Resources Management', '72', '', '275', 'Medina, Roberto G. ', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil.658.3 M 468 C 2016', '', '', 5, '', '', 5, 0, 359.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(373, 'Personnel and human Resources Management', '73', '', '275', 'Medina, Roberto G. ', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil.658.3 M 468 C 2016', '', '', 5, '', '', 5, 0, 359.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(374, 'Personnel and human Resources Management', '74', '', '275', 'Medina, Roberto G. ', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil.658.3 M 468 C 2016', '', '', 5, '', '', 5, 0, 359.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(375, 'Personnel and human Resources Management', '75', '', '275', 'Medina, Roberto G. ', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil.658.3 M 468 C 2016', '', '', 5, '', '', 5, 0, 359.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(376, 'Using - Friendly Marketing Research', '76', '4th', '250', 'Roberto,  Ned', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 343.084072 R 543 C 2016', '', '', 5, '', '', 5, 0, 489.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(377, 'Using - Friendly Marketing Research', '77', '4th', '250', 'Roberto,  Ned', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 343.084072 R 543 C 2016', '', '', 5, '', '', 5, 0, 489.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(378, 'Using - Friendly Marketing Research', '78', '4th', '250', 'Roberto,  Ned', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 343.084072 R 543 C 2016', '', '', 5, '', '', 5, 0, 489.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(379, 'Using - Friendly Marketing Research', '79', '4th', '250', 'Roberto,  Ned', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 343.084072 R 543 C 2016', '', '', 5, '', '', 5, 0, 489.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(380, 'Using - Friendly Marketing Research', '80', '4th', '250', 'Roberto,  Ned', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 343.084072 R 543 C 2016', '', '', 5, '', '', 5, 0, 489.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(381, 'The Best of Marketing RX', '81', '2015', '286', 'Roberto,  Ned', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 380.1 R 543 C 2016', '', '', 5, '', '', 5, 0, 462.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(382, 'The Best of Marketing RX', '82', '2015', '286', 'Roberto,  Ned', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 380.1 R 543 C 2016', '', '', 5, '', '', 5, 0, 462.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(383, 'The Best of Marketing RX', '83', '2015', '286', 'Roberto,  Ned', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 380.1 R 543 C 2016', '', '', 5, '', '', 5, 0, 462.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(384, 'The Best of Marketing RX', '84', '2015', '286', 'Roberto,  Ned', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 380.1 R 543 C 2016', '', '', 5, '', '', 5, 0, 462.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(385, 'The Best of Marketing RX', '85', '2015', '286', 'Roberto,  Ned', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 380.1 R 543 C 2016', '', '', 5, '', '', 5, 0, 462.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(386, 'Business Ethics and Social Responsibility', '86', '2nd', '290', 'Rod, Floriano C.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 174.4 R 53 C 2011', '', '', 5, '', '', 5, 0, 478.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(387, 'Business Ethics and Social Responsibility', '87', '2nd', '290', 'Rod, Floriano C.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 174.4 R 53 C 2011', '', '', 5, '', '', 5, 0, 478.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(388, 'Business Ethics and Social Responsibility', '88', '2nd', '290', 'Rod, Floriano C.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 174.4 R 53 C 2011', '', '', 5, '', '', 5, 0, 478.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(389, 'Business Ethics and Social Responsibility', '89', '2nd', '290', 'Rod, Floriano C.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 174.4 R 53 C 2011', '', '', 5, '', '', 5, 0, 478.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(390, 'Business Ethics and Social Responsibility', '90', '2nd', '290', 'Rod, Floriano C.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 174.4 R 53 C 2011', '', '', 5, '', '', 5, 0, 478.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(391, 'Retailing Management', '91', '9th', '690', 'Lexy, Michael et al.', 'Mc Gravy - Hill', '', '', '', '2014', '', 'Fil. 658. 87 L 317 C 2014', '', '', 5, '', '', 5, 0, 610.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(392, 'Retailing Management', '92', '9th', '690', 'Lexy, Michael et al.', 'Mc Gravy - Hill', '', '', '', '2014', '', 'Fil. 658. 87 L 317 C 2014', '', '', 5, '', '', 5, 0, 610.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(393, 'Retailing Management', '93', '9th', '690', 'Lexy, Michael et al.', 'Mc Gravy - Hill', '', '', '', '2014', '', 'Fil. 658. 87 L 317 C 2014', '', '', 5, '', '', 5, 0, 610.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(394, 'Retailing Management', '94', '9th', '690', 'Lexy, Michael et al.', 'Mc Gravy - Hill', '', '', '', '2014', '', 'Fil. 658. 87 L 317 C 2014', '', '', 5, '', '', 5, 0, 610.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(395, 'Retailing Management', '95', '9th', '690', 'Lexy, Michael et al.', 'Mc Gravy - Hill', '', '', '', '2014', '', 'Fil. 658. 87 L 317 C 2014', '', '', 5, '', '', 5, 0, 610.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(396, 'Textbook on Agrarian  Reform and Taxation', '96', '', '455', 'De Leon Hector S.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 336.2559 D 377 C 2012', '', '', 5, '', '', 5, 0, 863.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(397, 'Textbook on Agrarian  Reform and Taxation', '97', '', '455', 'De Leon Hector S.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 336.2559 D 377 C 2012', '', '', 5, '', '', 5, 0, 863.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(398, 'Textbook on Agrarian  Reform and Taxation', '98', '', '455', 'De Leon Hector S.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 336.2559 D 377 C 2012', '', '', 5, '', '', 5, 0, 863.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(399, 'Textbook on Agrarian  Reform and Taxation', '99', '', '455', 'De Leon Hector S.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 336.2559 D 377 C 2012', '', '', 5, '', '', 5, 0, 863.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(400, 'Textbook on Agrarian  Reform and Taxation', '100', '', '455', 'De Leon Hector S.', 'REX BOOKSTORE', '', '', '', '2013', '', 'Fil. 336.2559 D 377 C 2012', '', '', 5, '', '', 5, 0, 863.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(401, 'Statistics', '101', '2015', '234', 'Areo, Rosalia R. et al.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 310 St. 29 C 2015', '', '', 5, '', '', 5, 0, 485.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(402, 'Statistics', '102', '2015', '234', 'Areo, Rosalia R. et al.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 310 St. 29 C 2015', '', '', 5, '', '', 5, 0, 485.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(403, 'Statistics', '103', '2015', '234', 'Areo, Rosalia R. et al.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 310 St. 29 C 2015', '', '', 5, '', '', 5, 0, 485.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(404, 'Statistics', '104', '2015', '234', 'Areo, Rosalia R. et al.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 310 St. 29 C 2015', '', '', 5, '', '', 5, 0, 485.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(405, 'Statistics', '105', '2015', '234', 'Areo, Rosalia R. et al.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 310 St. 29 C 2015', '', '', 5, '', '', 5, 0, 485.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(406, 'Introductory Microeconomics', '106', '4th', '237', 'Pagoso, Cristobal M. et al.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 338.5 P 149 C 2016', '', '', 5, '', '', 5, 0, 419.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(407, 'Introductory Microeconomics', '107', '4th', '237', 'Pagoso, Cristobal M. et al.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 338.5 P 149 C 2016', '', '', 5, '', '', 5, 0, 419.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(408, 'Introductory Microeconomics', '108', '4th', '237', 'Pagoso, Cristobal M. et al.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 338.5 P 149 C 2016', '', '', 5, '', '', 5, 0, 419.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(409, 'Introductory Microeconomics', '109', '4th', '237', 'Pagoso, Cristobal M. et al.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 338.5 P 149 C 2016', '', '', 5, '', '', 5, 0, 419.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(410, 'Introductory Microeconomics', '110', '4th', '237', 'Pagoso, Cristobal M. et al.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 338.5 P 149 C 2016', '', '', 5, '', '', 5, 0, 419.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(411, 'Dance Education in the school Curriculum', '111', '', '103', 'Tabije-Andin, Carmen Ligaspi-Minas, Pricilla', 'REX BOOKSTORE', '', '', '', '2010', '', 'Fil. 798.8 T 113 C 2004', '', '', 5, '', '', 5, 0, 219.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(412, 'Dance Education in the school Curriculum', '112', '', '103', 'Tabije-Andin, Carmen Ligaspi-Minas, Pricilla', 'REX BOOKSTORE', '', '', '', '2010', '', 'Fil. 798.8 T 113 C 2004', '', '', 5, '', '', 5, 0, 219.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(413, 'Dance Education in the school Curriculum', '113', '', '103', 'Tabije-Andin, Carmen Ligaspi-Minas, Pricilla', 'REX BOOKSTORE', '', '', '', '2010', '', 'Fil. 798.8 T 113 C 2004', '', '', 5, '', '', 5, 0, 219.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(414, 'Dance Education in the school Curriculum', '114', '', '103', 'Tabije-Andin, Carmen Ligaspi-Minas, Pricilla', 'REX BOOKSTORE', '', '', '', '2010', '', 'Fil. 798.8 T 113 C 2004', '', '', 5, '', '', 5, 0, 219.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(415, 'Dance Education in the school Curriculum', '115', '', '103', 'Tabije-Andin, Carmen Ligaspi-Minas, Pricilla', 'REX BOOKSTORE', '', '', '', '2010', '', 'Fil. 798.8 T 113 C 2004', '', '', 5, '', '', 5, 0, 219.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(416, 'Child and Adolescent Development', '116', '', '139', 'Aceero, Victorina D. et al.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 155.4 Ac 25 C 2016', '', '', 5, '', '', 5, 0, 270.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(417, 'Child and Adolescent Development', '117', '', '139', 'Aceero, Victorina D. et al.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 155.4 Ac 25 C 2016', '', '', 5, '', '', 5, 0, 270.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(418, 'Child and Adolescent Development', '118', '', '139', 'Aceero, Victorina D. et al.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 155.4 Ac 25 C 2016', '', '', 5, '', '', 5, 0, 270.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(419, 'Child and Adolescent Development', '119', '', '139', 'Aceero, Victorina D. et al.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 155.4 Ac 25 C 2016', '', '', 5, '', '', 5, 0, 270.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(420, 'Child and Adolescent Development', '200', '', '139', 'Aceero, Victorina D. et al.', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 155.4 Ac 25 C 2016', '', '', 5, '', '', 5, 0, 270.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(421, 'Analytic Geometry', '201', '', '273', 'Gabuyo, Yonardo A.', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 516.3 G 115 C 2017', '', '', 5, '', '', 5, 0, 445.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(422, 'Analytic Geometry', '202', '', '273', 'Gabuyo, Yonardo A.', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 516.3 G 115 C 2017', '', '', 5, '', '', 5, 0, 445.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(423, 'Analytic Geometry', '203', '', '273', 'Gabuyo, Yonardo A.', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 516.3 G 115 C 2017', '', '', 5, '', '', 5, 0, 445.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(424, 'Analytic Geometry', '204', '', '273', 'Gabuyo, Yonardo A.', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 516.3 G 115 C 2017', '', '', 5, '', '', 5, 0, 445.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(425, 'Analytic Geometry', '205', '', '273', 'Gabuyo, Yonardo A.', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 516.3 G 115 C 2017', '', '', 5, '', '', 5, 0, 445.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(426, 'Basic Calculus', '206', '', '302', 'Marcelo, Gadys Glo H.', 'REX BOOKSTORE', '', '', '', '2014', '', 'Fil. 515 M 33 C 2014', '', '', 5, '', '', 5, 0, 564.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(427, 'Basic Calculus', '207', '', '302', 'Marcelo, Gadys Glo H.', 'REX BOOKSTORE', '', '', '', '2014', '', 'Fil. 515 M 33 C 2014', '', '', 5, '', '', 5, 0, 564.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(428, 'Basic Calculus', '208', '', '302', 'Marcelo, Gadys Glo H.', 'REX BOOKSTORE', '', '', '', '2014', '', 'Fil. 515 M 33 C 2014', '', '', 5, '', '', 5, 0, 564.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(429, 'Basic Calculus', '209', '', '302', 'Marcelo, Gadys Glo H.', 'REX BOOKSTORE', '', '', '', '2014', '', 'Fil. 515 M 33 C 2014', '', '', 5, '', '', 5, 0, 564.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(430, 'Basic Calculus', '210', '', '302', 'Marcelo, Gadys Glo H.', 'REX BOOKSTORE', '', '', '', '2014', '', 'Fil. 515 M 33 C 2014', '', '', 5, '', '', 5, 0, 564.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(431, 'Business Policy And Strategy', '211', '', '152', 'Zarate, Cynthia A.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 658.11 Z 18 C 2015', '', '', 5, '', '', 5, 0, 409.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(432, 'Business Policy And Strategy', '212', '', '152', 'Zarate, Cynthia A.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 658.11 Z 18 C 2015', '', '', 5, '', '', 5, 0, 409.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(433, 'Business Policy And Strategy', '213', '', '152', 'Zarate, Cynthia A.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 658.11 Z 18 C 2015', '', '', 5, '', '', 5, 0, 409.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(434, 'Business Policy And Strategy', '214', '', '152', 'Zarate, Cynthia A.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 658.11 Z 18 C 2015', '', '', 5, '', '', 5, 0, 409.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(435, 'Business Policy And Strategy', '215', '', '152', 'Zarate, Cynthia A.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 658.11 Z 18 C 2015', '', '', 5, '', '', 5, 0, 409.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(436, 'Manual for Economics work Exercises', '216', '', '117', 'Silon, Elsa T. et al.', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 330 Si 36 C 2017', '', '', 5, '', '', 5, 0, 245.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(437, 'Manual for Economics work Exercises', '217', '', '117', 'Silon, Elsa T. et al.', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 330 Si 36 C 2017', '', '', 5, '', '', 5, 0, 245.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(438, 'Manual for Economics work Exercises', '218', '', '117', 'Silon, Elsa T. et al.', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 330 Si 36 C 2017', '', '', 5, '', '', 5, 0, 245.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(439, 'Manual for Economics work Exercises', '219', '', '117', 'Silon, Elsa T. et al.', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 330 Si 36 C 2017', '', '', 5, '', '', 5, 0, 245.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(440, 'Manual for Economics work Exercises', '220', '', '117', 'Silon, Elsa T. et al.', 'REX BOOKSTORE', '', '', '', '2017', '', 'Fil. 330 Si 36 C 2017', '', '', 5, '', '', 5, 0, 245.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(441, 'Plane Trigonometry', '221', '', '147', 'Carpio, Joy N. and Guillermo, Jaymie M.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 516.24 C 228  C 2064', '', '', 5, '', '', 5, 0, 281.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(442, 'Plane Trigonometry', '222', '', '147', 'Carpio, Joy N. and Guillermo, Jaymie M.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 516.24 C 228  C 2064', '', '', 5, '', '', 5, 0, 281.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(443, 'Plane Trigonometry', '223', '', '147', 'Carpio, Joy N. and Guillermo, Jaymie M.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 516.24 C 228  C 2064', '', '', 5, '', '', 5, 0, 281.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(444, 'Plane Trigonometry', '224', '', '147', 'Carpio, Joy N. and Guillermo, Jaymie M.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 516.24 C 228  C 2064', '', '', 5, '', '', 5, 0, 281.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(445, 'Plane Trigonometry', '225', '', '147', 'Carpio, Joy N. and Guillermo, Jaymie M.', 'REX BOOKSTORE', '', '', '', '2015', '', 'Fil. 516.24 C 228  C 2064', '', '', 5, '', '', 5, 0, 281.00, 'Purchased REX BOOKSTORE', '', '2024-01-28', 1, 0, 0, NULL, NULL),
(446, 'Research amd Thesis Writing', '226', 'Revised', '387', 'Paler - Calmorin Laurentina ', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 001.4 P 174 C 2016', '', '', 5, '', '', 5, 0, 585.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(447, 'Research amd Thesis Writing', '227', 'Revised', '387', 'Paler - Calmorin Laurentina ', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 001.4 P 174 C 2016', '', '', 5, '', '', 5, 0, 585.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(448, 'Research amd Thesis Writing', '228', 'Revised', '387', 'Paler - Calmorin Laurentina ', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 001.4 P 174 C 2016', '', '', 5, '', '', 5, 0, 585.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(449, 'Research amd Thesis Writing', '229', 'Revised', '387', 'Paler - Calmorin Laurentina ', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 001.4 P 174 C 2016', '', '', 5, '', '', 5, 0, 585.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL),
(450, 'Research amd Thesis Writing', '230', 'Revised', '387', 'Paler - Calmorin Laurentina ', 'REX BOOKSTORE', '', '', '', '2016', '', 'Fil. 001.4 P 174 C 2016', '', '', 5, '', '', 5, 0, 585.00, 'Purchased REX BOOKSTORE', 'damaged', '2024-01-28', 1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `borrowed`
--

CREATE TABLE `borrowed` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bookID` bigint(20) UNSIGNED NOT NULL,
  `instructorId` bigint(20) UNSIGNED DEFAULT NULL,
  `studentId` bigint(20) UNSIGNED DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `dateBorrowed` date NOT NULL,
  `dateReturned` date DEFAULT NULL,
  `delayedDay` int(11) DEFAULT NULL,
  `issuedBy` bigint(20) UNSIGNED NOT NULL,
  `returnedTo` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrowed`
--

INSERT INTO `borrowed` (`id`, `bookID`, `instructorId`, `studentId`, `notes`, `dateBorrowed`, `dateReturned`, `delayedDay`, `issuedBy`, `returnedTo`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 301, NULL, 33, NULL, '2024-04-11', NULL, NULL, 1, NULL, 'Borrowed', 'null', '2024-04-11 05:22:06', '2024-04-11 05:22:06'),
(2, 306, NULL, 33, NULL, '2024-04-11', NULL, NULL, 1, NULL, 'Borrowed', 'null', '2024-04-11 05:22:06', '2024-04-11 05:22:06'),
(3, 311, NULL, 33, NULL, '2024-04-11', NULL, NULL, 1, NULL, 'Borrowed', 'null', '2024-04-11 05:22:06', '2024-04-11 05:22:06'),
(4, 321, NULL, 33, NULL, '2024-04-11', NULL, NULL, 1, NULL, 'Borrowed', 'null', '2024-04-11 05:22:06', '2024-04-11 05:22:06'),
(5, 446, NULL, 33, NULL, '2024-04-11', '2024-04-11', NULL, 1, 1, 'Returned', NULL, '2024-04-11 05:22:06', '2024-04-11 05:50:53'),
(6, 450, NULL, 33, NULL, '2024-04-11', '2024-04-11', NULL, 1, 1, 'Returned', NULL, '2024-04-11 05:22:06', '2024-04-11 05:27:24'),
(7, 301, NULL, 19, NULL, '2024-04-11', '2024-04-11', NULL, 1, 1, 'Returned', NULL, '2024-04-11 05:22:58', '2024-04-11 05:50:50'),
(8, 310, NULL, 19, NULL, '2024-04-11', '2024-04-11', NULL, 1, 1, 'Returned', NULL, '2024-04-11 05:22:58', '2024-04-11 05:33:30'),
(9, 310, 1, NULL, NULL, '2024-04-11', '2024-04-11', NULL, 1, 1, 'Returned', NULL, '2024-04-11 05:41:38', '2024-04-11 05:53:30'),
(10, 315, 1, NULL, NULL, '2024-04-11', '2024-04-11', NULL, 1, 1, 'Returned', NULL, '2024-04-11 05:42:43', '2024-04-11 05:53:33'),
(11, 301, 1, NULL, NULL, '2024-04-11', '2024-04-11', NULL, 1, 1, 'Returned', NULL, '2024-04-11 05:50:27', '2024-04-11 05:50:47'),
(12, 305, 1, NULL, NULL, '2024-04-11', '2024-04-11', NULL, 1, 1, 'Returned', NULL, '2024-04-11 05:50:27', '2024-04-11 05:51:12'),
(13, 310, 1, NULL, NULL, '2024-04-11', '2024-04-11', NULL, 1, 1, 'Returned', NULL, '2024-04-11 05:50:27', '2024-04-11 05:51:17'),
(14, 305, 1, NULL, NULL, '2024-04-11', NULL, NULL, 1, NULL, 'Borrowed', 'null', '2024-04-11 05:54:21', '2024-04-11 05:54:21'),
(15, 310, 1, NULL, NULL, '2024-04-11', NULL, NULL, 1, NULL, 'Borrowed', 'null', '2024-04-11 05:54:21', '2024-04-11 05:54:21'),
(16, 320, 1, NULL, NULL, '2024-04-11', NULL, NULL, 1, NULL, 'Borrowed', 'null', '2024-04-11 05:54:21', '2024-04-11 05:54:21'),
(17, 325, 1, NULL, NULL, '2024-04-11', NULL, NULL, 1, NULL, 'Borrowed', 'null', '2024-04-11 05:54:21', '2024-04-11 05:54:21'),
(18, 330, 1, NULL, NULL, '2024-04-11', NULL, NULL, 1, NULL, 'Borrowed', 'null', '2024-04-11 05:54:21', '2024-04-11 05:54:21'),
(19, 335, 1, NULL, NULL, '2024-04-11', '2024-04-11', NULL, 1, 1, 'Returned', NULL, '2024-04-11 05:54:21', '2024-04-11 05:54:40'),
(20, 301, NULL, 16, NULL, '2024-04-11', NULL, NULL, 1, NULL, 'Borrowed', 'null', '2024-04-11 05:58:27', '2024-04-11 05:58:27'),
(21, 306, NULL, 16, NULL, '2024-04-11', NULL, NULL, 1, NULL, 'Borrowed', 'null', '2024-04-11 05:58:27', '2024-04-11 05:58:27'),
(22, 301, NULL, 31, NULL, '2024-04-11', NULL, NULL, 1, NULL, 'Borrowed', 'null', '2024-04-11 05:59:07', '2024-04-11 05:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryCode` varchar(255) NOT NULL,
  `categoryDesc` varchar(255) NOT NULL,
  `archive` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryCode`, `categoryDesc`, `archive`, `created_at`, `updated_at`) VALUES
(5, '000-099', 'Generalities', NULL, '2024-01-28 06:22:55', '2024-01-28 06:22:55'),
(6, '100-199', 'Philosophy & Psychology', NULL, '2024-01-28 06:23:08', '2024-01-28 06:23:08'),
(7, '200-299', 'Religion', NULL, '2024-01-28 06:23:20', '2024-01-28 06:23:20'),
(8, '300-399', 'Social Sciences', NULL, '2024-01-28 06:23:34', '2024-01-28 06:23:34'),
(9, '400-499', 'Languages', NULL, '2024-01-28 06:23:47', '2024-01-28 06:23:47'),
(10, '500-599', 'Natural Sciences & Mathematics', NULL, '2024-01-28 06:24:00', '2024-01-28 06:24:00'),
(11, '600-699', 'Applied Sciences', NULL, '2024-01-28 06:24:12', '2024-01-28 06:24:12'),
(12, '700-799', 'The Arts', NULL, '2024-01-28 06:24:24', '2024-01-28 06:24:24'),
(13, '800-899', 'Literature', NULL, '2024-01-28 06:24:35', '2024-01-28 06:24:35'),
(14, '900-999', 'Geography, Histry & Biography', NULL, '2024-01-28 06:24:48', '2024-01-28 06:24:48'),
(15, 'General References', 'General References', NULL, '2024-01-28 06:25:05', '2024-01-28 06:25:05'),
(16, 'Newly Acquired', 'Newly Acquired', NULL, '2024-01-28 06:25:18', '2024-01-28 06:25:18'),
(17, 'Journals BS-CRIM', 'Journals BS-CRIM', NULL, '2024-01-28 06:25:27', '2024-01-28 06:25:27'),
(18, 'Journals BSIS', 'Journals BSIS', NULL, '2024-01-28 06:25:40', '2024-01-28 06:25:40'),
(19, 'Journals BAPS', 'Journals BAPS', NULL, '2024-01-28 06:25:50', '2024-01-28 06:25:50'),
(20, 'Journals BAEL', 'Journals BAEL', NULL, '2024-01-28 06:26:00', '2024-01-28 06:26:00'),
(21, 'Journals BSAIS', 'Journals BSAIS', NULL, '2024-01-28 06:28:03', '2024-01-28 06:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'BAPS', 'Bachelor of Arts in Political Science', NULL, NULL),
(2, 'BSA', 'Bachelor of Science Agriculture', NULL, NULL),
(3, 'BAEL', 'Bachelor of Arts in English Language', NULL, NULL),
(4, 'BSIS', 'Bachelor of Science in Information Systems', NULL, NULL),
(5, 'BSAIS', 'Bachelor of Science in Accounting Information Systems', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `damagedbooks`
--

CREATE TABLE `damagedbooks` (
  `id` int(11) NOT NULL,
  `bookId` bigint(20) UNSIGNED NOT NULL,
  `copies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instructorNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `departmentID` bigint(20) UNSIGNED NOT NULL,
  `position` varchar(255) NOT NULL,
  `contactNo` bigint(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `archive` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `instructorNo`, `firstName`, `middleName`, `lastName`, `sex`, `birthdate`, `departmentID`, `position`, `contactNo`, `photo`, `archive`, `created_at`, `updated_at`) VALUES
(1, '123456789', 'Juan', 'Dela', 'Cruz', 'Male', '2001-05-25', 1, 'Instructor', 9123456789, 'C:\\Users\\Jessie\\Desktop\\Projects\\capstone\\tpc-library-management-system\\public\\img\\instructor\\123456789.png', NULL, '2024-04-11 05:39:27', '2024-04-11 05:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `studentNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `courseID` bigint(20) UNSIGNED NOT NULL,
  `yearLevelID` bigint(20) UNSIGNED NOT NULL,
  `contactNo` bigint(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `archive` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `studentNo`, `firstName`, `middleName`, `lastName`, `sex`, `birthdate`, `courseID`, `yearLevelID`, `contactNo`, `address`, `photo`, `archive`, `created_at`, `updated_at`) VALUES
(1, '2021-1-1514', 'JANNAH MARIE', 'TURA', 'TABORADA', 'Male', '2003-02-02', 3, 3, 9126932606, 'SAN ISIDRO, TALIBON, BOHOL', '', NULL, NULL, '2024-01-28 07:20:05'),
(2, '2023-1-2645', 'APPLE', 'VILLAMOR', 'ROSARIO', 'FEMALE', '2003-08-28', 2, 1, 9604290849, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(3, '2023-1-2646', 'KHEL', 'CAPACIO', 'JAO', 'MALE', '2000-03-12', 2, 1, 9502313652, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(4, '2023-1-2647', 'CLIRISH', 'TORREMOCHA', 'TORREFIEL', 'FEMALE', '2004-09-07', 5, 1, 9929852191, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(5, '2023-1-2648', 'KENNETH', 'DEMONTEVERDE', 'VALLES', 'MALE', '2005-02-04', 2, 1, 9261529055, 'BAYBAYON, MABINI, BOHOL', NULL, NULL, NULL, NULL),
(6, '2023-1-2649', 'ANGELIE', 'ITEM', 'BOQUILA', 'FEMALE', '1997-05-14', 2, 1, 9198268977, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(7, '2023-1-2650', 'CHRISTY MAE', 'RAMOS', 'GURREA', 'FEMALE', '2004-11-17', 4, 1, 9533478843, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(8, '2023-1-2651', 'IRENE INAH', '', 'AUGUIS', 'FEMALE', '2005-06-17', 5, 1, 9307827628, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(9, '2023-1-2652', 'ALEXSON', 'BONIOR', 'MEJASCO', 'MALE', '2004-10-05', 5, 1, 9273874591, 'POBLACION, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(10, '2023-1-2653', 'ALVEN', 'CUTAMURA', 'VALLESPIN', 'MALE', '2004-11-14', 2, 1, 9388093872, 'DEL MAR, MABINI, BOHOL', NULL, NULL, NULL, NULL),
(11, '2023-1-2654', 'AL JAYSON', 'PABLO', 'LUKINHAY', 'MALE', '2004-05-09', 2, 1, 9814911625, 'SAN RAFAEL, MABINI, BOHOL', NULL, NULL, NULL, NULL),
(12, '2023-1-2655', 'ARJAY', 'BALABA', 'OGABANG', 'MALE', '2004-02-10', 2, 1, 9638842943, 'DEL MAR, MABINI, BOHOL', NULL, NULL, NULL, NULL),
(13, '2023-1-2656', 'APRILROSE', 'BANTILAN', 'AUTIDA', 'FEMALE', '2005-04-16', 5, 1, 9105013807, 'P7, POBLACION, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(14, '2023-1-2657', 'RYAN PAUL', 'DUPALCO', 'BERNALDEZ', 'MALE', '2004-12-12', 2, 1, 9706284568, 'SAN VICENTE, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(15, '2023-1-2658', 'CRIS-ANN', 'AUTIDA', 'BESTAR', 'FEMALE', '2004-11-25', 2, 1, 9677481309, 'P5, BOOD, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(16, '2023-1-2659', 'JANEL', 'AUXTERO', 'DAHITO', 'MALE', '2000-03-15', 1, 1, 9691125009, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(17, '2023-1-2660', 'ALONA', 'POLO', 'VALMORIA', 'FEMALE', '2004-10-14', 3, 1, 9702465320, 'PINAMGO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(18, '2023-1-2661', 'WENSLY', 'BARCELO', 'INOC', 'FEMALE', '2004-12-04', 2, 1, 9128813858, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(19, '2023-1-2662', 'MARISSE', 'GALESA', 'BERNANTE', 'FEMALE', '2005-08-07', 1, 1, 9947921681, 'BAYBAYON, MABINI, BOHOL', NULL, NULL, NULL, NULL),
(20, '2023-1-2663', 'JANELLE MAE', 'URBODA', 'AUTIDA', 'FEMALE', '2005-01-07', 3, 1, 9127848447, 'PINAMGO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(21, '2023-1-2664', 'MA. MAEKAYLA', 'BAGTONG', 'ECLIPSE', 'FEMALE', '2004-03-06', 3, 1, 9705674164, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(22, '2023-1-2665', 'RICA MAE', 'TUSOY', 'ROSAS', 'FEMALE', '2003-10-30', 3, 1, 9126565070, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(23, '2023-1-2666', 'EULOGIO', 'GALANO', 'DAMOLE', 'MALE', '2002-06-17', 1, 1, 9369601748, 'P2, SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(24, '2023-1-2667', 'LONETTE', 'CUTARRA', 'OROYAN', 'FEMALE', '2003-03-03', 4, 1, 9073086209, 'P6, MAGSAYSAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(25, '2023-1-2668', 'MARY JOY', 'TABIGUE', 'EVARDO', 'FEMALE', '2004-09-08', 3, 1, 9367606062, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(26, '2023-1-2669', 'LEANNE', 'TORREJOS', 'ROSALES', 'FEMALE', '2005-08-22', 3, 1, 9651465283, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(27, '2023-1-2671', 'HEZEL MAE', 'GURREA', 'GARCIA', 'FEMALE', '2003-05-04', 3, 1, 9519319407, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(28, '2023-1-2672', 'RONA JANE', 'ABALA', 'ESTILLORE', 'FEMALE', '2003-01-10', 3, 1, 9462341271, 'CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(29, '2023-1-2673', 'JOEL JR.', 'AGUHAR', 'MADULA', 'MALE', '2004-12-21', 4, 1, 9532641427, 'BALINTAWAK, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(30, '2023-1-2674', 'ANEIZA', 'GADIANO', 'AVERGONZADO', 'FEMALE', '2004-09-20', 4, 1, 9532641427, 'BALINTAWAK, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(31, '2023-1-2675', 'JUARINE', 'TAOTAO', 'TABIGUE', 'MALE', '2003-12-17', 1, 1, 9810010300, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(32, '2023-1-2676', 'JOHN JERWIN', 'PALMA', 'ABANGAN', 'MALE', '2004-12-26', 3, 1, 9919227210, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(33, '2023-1-2677', 'JENIFER', 'LAUGO', 'TORRES ', 'FEMALE', '1996-02-29', 3, 1, 9305118098, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(34, '2023-1-2677', 'CRISALESS', 'PORTES', 'TORREJOS', 'FEMALE', '2004-12-16', 1, 1, 9707750984, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(35, '2023-1-2678', 'FRANCIS LOUIE', 'MASAYON', 'JAMISOLA', 'MALE', '2002-03-22', 2, 1, 9505678485, 'POB. JAGNA, BOHOL', NULL, NULL, NULL, NULL),
(36, '2023-1-2679', 'NIANNE JOSH', 'FLORES', 'CAJES', 'MALE', '2005-04-14', 3, 1, 9859457881, 'GUINOBATAN, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(37, '2023-1-2680', 'TITO', 'CABILAO', 'VILLARASO', 'MALE', '2001-01-04', 1, 1, 9702223357, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(38, '2023-1-2681', 'SUGAR-REY', 'ROSALES', 'GARCIA', 'MALE', '2004-03-24', 4, 1, 9074541151, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(39, '2023-1-2682', 'ANGEL FREDERICK', 'AZUCENAS', 'PAREDES', 'MALE', '2005-06-12', 4, 1, 9123985964, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(40, '2023-1-2683', 'KIMBERT', 'SOBSUBAN', 'ALDAYA', 'MALE', '2001-03-20', 1, 1, 9912920550, 'LANGUB, RIZAL, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(41, '2023-1-2684', 'JOHN KENNETH', 'MEDIANO', 'GAYOBA', 'MALE', '2004-08-13', 2, 1, 9632222810, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(42, '2023-1-2685', 'ALBER JUNE', 'MAHUSAY', 'MUMAR', 'MALE', '2004-06-20', 4, 1, 9085106966, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(43, '2023-1-2686', 'ABBIE', 'GOLLODO', 'VERTUDEZ', 'FEMALE', '2004-11-17', 3, 1, 9512352573, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(44, '2023-1-2688', 'MARLYN', 'GARCIA', 'CAJES', 'FEMALE', '2004-11-22', 2, 1, 9358504415, 'P5, SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(45, '2023-1-2689', 'FAIRY JANE', 'POLO', 'CUBOS', 'FEMALE', '2001-06-05', 1, 1, 9359775658, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(46, '2023-1-2690', 'LURENGEL', 'TAMPOR', 'AMBAIC', 'MALE', '2004-10-07', 4, 1, 9516357280, 'P2, SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(47, '2023-1-2691', 'MA. MENYROSE', 'HOYBIA', 'ROSALES', 'FEMALE', '2004-10-24', 3, 1, 9705705996, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(48, '2023-1-2692', 'JESSA', '', 'TAGSIP', 'FEMALE', '2004-10-16', 5, 1, 9926779659, 'JANDAYAN SUR, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(49, '2023-1-2693', 'ALVIN JAY', '', 'PERSIGAS', 'MALE', '2004-12-20', 2, 1, 9207908638, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(50, '2023-1-2694', 'REJELO', 'PERSIGAS', 'AMOLAT', 'MALE', '2005-06-18', 2, 1, 9488862816, 'LOMANGOG, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(51, '2023-1-2695', 'HANA LOURIENN', 'BOLANIO', 'MAHUMOT', 'FEMALE', '2004-12-29', 2, 1, 9516117928, 'MAHAYAG, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(52, '2023-1-2696', 'KYLENE', 'TRISMUNDO', 'TORREON', 'FEMALE', '2005-09-26', 5, 1, 9103038991, 'ALUMAR, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(53, '2023-1-2697', 'MARY KRIS', 'PAJARES', 'AMILA', 'FEMALE', '2004-12-25', 4, 1, 9308261061, 'CANSUNGAY, PILAR, BOHOL', NULL, NULL, NULL, NULL),
(54, '2023-1-2698', 'LENNY JEAN', 'AMPO', 'BONCALES', 'FEMALE', '2005-08-14', 2, 1, 9486268660, 'CAMANAGA, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(55, '2023-1-2699', 'KARREL LOU', 'CA?IZARES', 'RENDON', 'FEMALE', '2005-06-19', 2, 1, 9467700369, ' MAHAYAG, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(56, '2023-1-2700', 'ROXANE', 'CAJES', 'LACADMAN', 'FEMALE', '1993-08-21', 1, 1, 9302724055, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(57, '2023-1-2700', 'MECCAILA', 'PARADERO', 'DE LA TORRE', 'FEMALE', '2005-01-30', 2, 1, 9928471761, 'DAGOHOY, INABANGA, BOHOL', NULL, NULL, NULL, NULL),
(58, '2023-1-2701', 'MARY MAE', 'NOTADO', 'RETIZA', 'FEMALE', '2005-04-27', 3, 1, 9367619039, 'P3, KAGAWASAN, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(59, '2023-1-2702', 'JOSE JERBIE', 'BALINGIT', 'OMIT', 'MALE', '2003-12-24', 3, 1, 9859074079, 'NOCNOCAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(60, '2023-1-2703', 'JIFFY CHARLES', 'TORREON', 'MANGUBAT', 'MALE', '2002-03-08', 4, 1, 9934125018, 'MAHANAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(61, '2023-1-2705', 'ANALAICA', 'ITEM', 'EVARDONE', 'FEMALE', '2004-10-25', 3, 1, 9693538376, 'BALINTAWAK, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(62, '2023-1-2705', 'MA. DIEZEL', 'ROSAGARAN', 'CAMACHO', 'FEMALE', '2004-01-21', 5, 1, 9126926625, 'NASINGIN, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(63, '2023-1-2706', 'PHILICITY LYNN ', 'NANOY', 'CASTILLON', 'FEMALE', '2005-05-14', 1, 1, 9693303713, 'CONCEPCION, MABINI, BOHOL', NULL, NULL, NULL, NULL),
(64, '2023-1-2707', 'VENJO', 'TORREON', 'BOHOL', 'MALE', '2005-01-15', 3, 1, 9928491495, 'HANDUMON, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(65, '2023-1-2708', 'RUELITO', 'AMPO', 'CURIBA', 'MALE', '2004-03-28', 2, 1, 9106991113, 'LA SUERTE, PILAR, BOHOL', NULL, NULL, NULL, NULL),
(66, '2023-1-2709', 'KAYCEE', 'TORREON', 'CERIDA', 'FEMALE', '2004-09-10', 4, 1, 9859474464, 'ALUMAR, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(67, '2023-1-2710', 'ANABETH', 'POLESTICO', 'ARTIAGA', 'FEMALE', '2001-06-24', 2, 1, 9518683004, 'SAN PEDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(68, '2023-1-2711', 'RHEA MAY', 'ABAIS', 'ABA?O', 'FEMALE', '2004-12-06', 5, 1, 9935298247, 'HANDUMON, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(69, '2023-1-2712', 'JOYVA', 'FUENTES', 'AURESTILA', 'FEMALE', '2005-06-26', 1, 1, 9534252816, 'ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(70, '2023-1-2713', 'APRIL MAE', 'NOGADAS', 'AVENIDO', 'FEMALE', '2004-04-25', 3, 1, 9382420535, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(71, '2023-1-2714', 'CRESTIN JEN', 'BORMOEL', 'FUROG', 'FEMALE', '2003-07-07', 1, 1, 9709246494, 'PINAMGO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(72, '2023-1-2715', 'NOVEMAE', 'AUXTERO', 'MUNALEM', 'FEMALE', '2004-11-14', 5, 1, 9635306435, 'P7, STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(73, '2023-1-2716', 'RHOJENN ANGELIE', 'SASIL', 'BORJA', 'FEMALE', '2004-10-12', 5, 1, 9489472564, 'P4, STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(74, '2023-1-2717', 'MA. EDESA', 'CUIZON', 'CUTARRA', 'FEMALE', '2004-11-21', 1, 1, 9701096867, 'P6, SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(75, '2023-1-2718', 'DANISA', 'ROMERO', 'AVERGONZADO', 'FEMALE', '1998-08-31', 2, 1, 9926255264, 'SOOM, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(76, '2023-1-2719', 'MARIA FE', 'CRESCENCIO', 'AVENTAJADO', 'FEMALE', '2005-02-07', 3, 1, 9505219761, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(77, '2023-1-2720', 'ELJANE FERIE', 'TEVES', 'TURTOGA', 'FEMALE', '2005-06-20', 1, 1, 9925322663, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(78, '2023-1-2721', 'MARIANE MAE', 'CUYSONA', 'TRAZO', 'FEMALE', '1999-11-11', 2, 1, 9654694064, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(79, '2023-1-2722', 'JULEBETH', '', 'HINLAYAGAN', 'FEMALE', '2001-07-24', 4, 1, 9813901680, 'SAN JOSE, TALIBO, BOHOL', NULL, NULL, NULL, NULL),
(80, '2023-1-2723', 'JUSTINE', 'SABALONES', 'PUNAY', 'MALE', '2005-07-16', 4, 1, 9927335613, 'HINGOTANAN, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(81, '2023-1-2724', 'GLENN', 'JARINA', 'DOLLISON JR.', 'MALE', '2004-09-15', 3, 1, 9218606376, 'P2, SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(82, '2023-1-2725', 'HANAH', 'BAAY', 'APARICIO', 'FEMALE', '2005-01-28', 2, 1, 9207870370, 'POBLACION, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(83, '2023-1-2726', 'JOHN RIMOND', 'DIEGOR', 'PAULINES', 'MALE', '2004-09-13', 2, 1, 9947629477, 'CANSUNGAY, PILAR, BOHOL', NULL, NULL, NULL, NULL),
(84, '2023-1-2726', 'NIELBERT', 'MABALATAN', 'GARCIA', 'MALE', '2005-02-15', 4, 1, 9550651372, 'HINGOTANAN, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(85, '2023-1-2727', 'JENNILYN', 'MENDEZ', 'MANATAD', 'FEMALE', '2004-03-17', 4, 1, 9389250861, 'NOCNOCAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(86, '2023-1-2728', 'SUNNY JAMES', 'GAUDICOS', 'CAPIN', 'MALE', '2005-09-04', 1, 1, 9756011092, 'PITOGO, BOHOL', NULL, NULL, NULL, NULL),
(87, '2023-1-2729', 'LYCA', 'ORIVELLO', 'GOLLODO', 'FEMALE', '2001-07-23', 3, 1, 9516416599, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(88, '2023-1-2730', 'WINSTON', 'RACINES', 'AVENIDO', 'MALE', '2005-03-11', 2, 1, 9269491978, 'GARCIA, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(89, '2023-1-2731', 'REYMA', 'BERGANTIN', 'CAJES', 'FEMALE', '2004-08-23', 2, 1, 9505715960, 'SAN VICENTE, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(90, '2023-1-2731', 'JUNNA MEA', 'BOLHANO', 'LABAO', 'FEMALE', '2003-11-30', 2, 1, 9260393036, 'P4, SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(91, '2023-1-2732', 'ALMINA', 'TORREON', 'INOT', 'FEMALE', '2003-06-30', 1, 1, 9630079068, 'MAHANAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(92, '2023-1-2733', 'JHONA MAE', 'AUXTERO', 'GURREA', 'FEMALE', '2003-09-26', 5, 1, 9939848184, 'P4, SIKATUNA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(93, '2023-1-2735', 'EMELYN', 'BONCALES', 'YONTING', 'FEMALE', '2004-10-16', 2, 1, 9678457393, 'SAN ISIDRO, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(94, '2023-1-2736', 'JANNA LEE', 'BUMAYA', 'BAAY', 'FEMALE', '2004-04-27', 2, 1, 9701099255, 'SAN JOSE, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(95, '2023-1-2738', 'RYZA JANE', 'AGUHAR', 'GARCIA', 'FEMALE', '2005-01-24', 1, 1, 9122628034, 'P1, ESKINITA, POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(96, '2023-1-2739', 'JEA MAY', 'ADMIRABLE', 'AUXTERO', 'FEMALE', '2004-04-10', 3, 1, 9432500541, 'P3, SIKATUNA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(97, '2023-1-2740', 'GOLDEN MARIE', 'CABAJAR', 'BARRAL', 'FEMALE', '2002-11-03', 1, 1, 9386757192, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(98, '2023-1-2741', 'ZAMAICA', 'TOLENTINO', 'DABASOL', 'FEMALE', '2005-04-08', 3, 1, 9271524197, 'PINAMGO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(99, '2023-1-2742', 'KIM SHYNE', 'TORREON', 'FORTUNA', 'FEMALE', '2003-04-15', 1, 1, 9159122017, 'MAHANAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(100, '2023-1-2743', 'RICHEL', 'ABANDA', 'CALLA?GA', 'FEMALE', '2004-05-10', 3, 1, 9105007549, 'P6, MAGSAYSAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(101, '2023-1-2744', 'JOSE JASPER', 'TORREMOCHA', 'MORTERA', 'MALE', '2003-12-26', 1, 1, 9265059887, 'MAHANAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(102, '2023-1-2745', 'JESAIAH', 'WENCESLAO', 'SOTTO', 'FEMALE', '2001-08-17', 5, 1, 9352627955, 'POBLACION 2, MABINI, BOHOL', NULL, NULL, NULL, NULL),
(103, '2023-1-2746', 'NI?A', 'AGUHAR', 'APARECE', 'FEMALE', '2005-01-04', 4, 1, 90737013574, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(104, '2023-1-2747', 'RENA ANGEL', 'ALINAPON', 'GUTANG', 'FEMALE', '2005-03-05', 4, 1, 9089707666, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(105, '2023-1-2748', 'JOSE JERBIE', 'BALINGIT', 'OMIT', 'MALE', '2003-12-24', 1, 1, 9859074079, 'NOCNOCAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(106, '2023-1-2750', 'DAISY JANE', 'CAMACHO', 'APARRI', 'FEMALE', '2004-11-25', 2, 1, 9318366305, 'JANDAYAN NORTE, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(107, '2023-1-2751', 'ANGELINE', 'MORALINA', 'TORREON', 'FEMALE', '2005-07-01', 1, 1, 9505411534, 'P3, MAHANAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(108, '2023-1-2752', 'KRISTINE', 'DIGAL', 'SALISE', 'FEMALE', '2004-12-05', 2, 1, 9633665040, 'CANDELARIA, DAGOHOY, BOHOL', NULL, NULL, NULL, NULL),
(109, '2023-1-2753', 'JENARIE', 'SEGUERA', 'GILDO', 'FEMALE', '2005-08-04', 2, 1, 9265058701, 'CAMBANGAY NORTE, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(110, '2023-1-2754', 'JESSA MAY', 'GARAY', 'AMOGUIS', 'FEMALE', '2004-05-20', 2, 1, 9503335561, 'CALUASAN, DAGOHOY, BOHOL', NULL, NULL, NULL, NULL),
(111, '2023-1-2755', 'MA. JESSA', 'AMIT', 'MANGUBAT', 'FEMALE', '1992-06-09', 1, 1, 9454976195, 'P3, MAHANAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(112, '2023-1-2756', 'JEFFREY', 'TOROBA', 'CUTAMORA', 'MALE', '1992-04-28', 4, 1, 9308831514, 'SOOM, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(113, '2023-1-2757', 'RICHARD KATE', 'CAJES', 'ABAPO', 'MALE', '2005-02-04', 1, 1, 9928238125, 'P3, STO. NIN?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(114, '2023-1-2758', 'QUEENNIE MAE', 'SOSMENA', 'AUTIDA', 'FEMALE', '2004-06-06', 3, 1, 9489056684, 'P4, STO. NIN?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(115, '2023-1-2759', 'AIRON KIN', 'CUTANDA', 'QUIROY', 'MALE', '2004-11-15', 1, 1, 9854427196, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(116, '2023-1-2760', 'RICA', 'NUERA', 'LUMOTHANG', 'FEMALE', '2003-05-15', 2, 1, 9532913222, 'SAN VICENTE, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(117, '2023-1-2761', 'SHEILA MAE', 'BAGTASOS', 'GOLOSINO', 'FEMALE', '2004-11-28', 2, 1, 9519119719, 'ACHILA, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(118, '2023-1-2761', 'FLORA MAY', 'PIQUERO', 'DENULAN', 'FEMALE', '2003-09-09', 5, 1, 9169623455, 'PAG-ASA, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(119, '2023-1-2762', 'JEANNIE', 'MANTICA', 'BOISER', 'FEMALE', '2003-09-07', 2, 1, 9636439038, 'P4, TAPON, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(120, '2023-1-2762', 'LUKE KIRBY', 'ILANO', 'JAO', 'MALE', '2004-10-27', 4, 1, 9651607140, 'SAG, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(121, '2023-1-2764', 'RANOLFO JR.', 'CERE?O', 'TAPALES', 'MALE', '2003-09-15', 1, 1, 9854967956, 'MATIN-AO, CARMEN, BOHOL', NULL, NULL, NULL, NULL),
(122, '2023-1-2764', 'CHARISSE', 'AUGUIS', 'QUINLOG', 'FEMALE', '2005-04-17', 2, 1, 9263949986, 'MAHAGBU, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(123, '2023-1-2765', 'JHONDEL', 'BUNAOS', 'BOTECARIO', 'MALE', '2004-05-03', 4, 1, 9108407391, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(124, '2023-1-2766', 'JOHN DALE', 'EVANGELISTA', 'CUERBO', 'MALE', '2004-12-31', 1, 1, 9261534308, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(125, '2023-1-2767', 'TRISHA', 'TAYOM', 'MONTENEGRO', 'FEMALE', '2003-12-11', 2, 1, 9501246972, 'TAPON, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(126, '2023-1-2768', 'ROJIELYN', 'TAGHOY', 'CAMPONG', 'FEMALE', '1990-10-27', 3, 1, 9361146431, 'P6, SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(127, '2023-1-2769', 'PAUL JOHN', 'TORRES', 'CASTRO', 'MALE', '2004-10-14', 2, 1, 9707764749, 'P2, SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(128, '2023-1-2770', 'CHERRY', 'AUTENTICO', 'CRESCENCIO', 'FEMALE', '2002-08-11', 5, 1, 9997320838, 'P7, SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(129, '2023-1-2771', 'JUANITO JR.', 'BERMOY', 'OROYAN', 'MALE', '2002-12-18', 2, 1, 9815690893, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(130, '2023-1-2772', 'JEERUZ MARL', 'ITEM', 'TABAR', 'MALE', '2005-07-27', 4, 1, 9752457458, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(131, '2023-1-2773', 'ANDREA', 'AUSTRIA', 'NUERA', 'FEMALE', '2002-11-30', 2, 1, 9389463646, 'SAN VICENTE, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(132, '2023-1-2774', 'JHOVAN', 'HUATON', 'ALAMA', 'MALE', '2004-10-08', 2, 1, 9319215076, 'LOMANGOG, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(133, '2023-1-2775', 'BENJIE', 'AUXTERO', 'AVERONZADO', 'MALE', '2004-10-07', 1, 1, 993984050, 'SIKATUNA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(134, '2023-1-2776', 'JULIETA', 'GEREBESE', 'LAPORE', 'FEMALE', '2005-11-20', 1, 1, 9304928193, 'TUBORAN, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(135, '2023-1-2777', 'CHRISTINE', 'PAREDES', 'REYES', 'FEMALE', '2004-07-08', 2, 1, 9504760790, 'TAPON, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(136, '2023-1-2778', 'ARA GRACE', 'VILLAVER', 'LAPI?A', 'FEMALE', '2003-06-20', 3, 1, 9813895964, 'NOCNOCAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(137, '2023-1-2779', 'CHARLENE', 'AVERGONZADO', 'GURREA', 'FEMALE', '2004-12-06', 1, 1, 9926331147, 'SIKATUNA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(138, '2023-1-2781', 'JEZIEL LEA MITCH', 'TURAN', 'CREDO', 'FEMALE', '2005-11-28', 4, 1, 9123989520, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(139, '2023-1-2782', 'RUTCHEL', 'GARCIA', 'LABAJO', 'FEMALE', '2004-11-09', 1, 1, 9462783243, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(140, '2023-1-2783', 'ANGEL ANN', 'BUTAL', 'EVARDONE', 'FEMALE', '2004-04-13', 1, 1, 9702468338, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(141, '2023-1-2784', 'JENNYLYN', '', 'GARCIA', 'FEMALE', '2004-05-17', 5, 1, 9636925002, 'ACHILA, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(142, '2023-1-2786', 'ERICA ZOE', 'AMOLAT', 'DADULA', 'MALE', '2003-09-26', 5, 1, 9976732070, 'PAG-ASA, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(143, '2023-1-2787', 'ANGEL', 'TURTOGA', 'AUXTERIACO', 'FEMALE', '2005-03-28', 1, 1, 9971808962, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(144, '2023-1-2788', 'JULIEMAE', 'CAVAN', 'FUROG', 'FEMALE', '2004-07-14', 1, 1, 9384138310, 'ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(145, '2023-1-2789', 'JUNDEL', 'DOLOSO', 'AVERGONZADO', 'MALE', '2002-07-27', 1, 1, 9653201128, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(146, '2023-1-2790', 'JERAMIE', 'TIN-AO', 'BUNADO', 'FEMALE', '2005-02-21', 5, 1, 9565091326, 'P5, SIKATUNA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(147, '2023-1-2791', 'SHAIREL', 'SARIGUMBA', 'NAPALLA', 'FEMALE', '2004-11-08', 3, 1, 9260357877, 'PUERTO SAN PEDRO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(148, '2023-1-2792', 'MARICEL', '', 'SIMBAJON', 'FEMALE', '2003-10-04', 1, 1, 9854427181, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(149, '2023-1-2793', 'MARJORIE', 'FUNDALES', 'GARCIA', 'FEMALE', '2004-01-08', 5, 1, 9676241837, 'BALINTAWAK, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(150, '2023-1-2794', 'REMELYN', 'MEJEAS', 'LOFRANCO', 'FEMALE', '1999-11-25', 5, 1, 9637581307, 'SAN PEDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(151, '2023-1-2795', 'DYESABEL ', 'EVALLE', 'AUXTERO', 'FEMALE', '2003-09-28', 1, 1, 9935328545, 'ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(152, '2023-1-2796', 'CRISTAN', 'AUTENTICO', 'GONZALES', 'MALE', '2002-10-15', 1, 1, 9362892202, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(153, '2023-1-2797', 'MARJORIE', 'POLESTICO', 'GURREA', 'FEMALE', '2003-06-19', 3, 1, 9476801762, 'P4, SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(154, '2023-1-2798', 'MICHAEL DANE', 'ROSALES', 'POLESTICO', 'MALE', '2004-11-23', 1, 1, 9928491916, 'NUEVA ESPERANZA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(155, '2023-1-2799', 'BENEDICT', 'TORREON', 'EYANA', 'MALE', '2005-08-03', 1, 1, 9635292456, 'P7, SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(156, '2023-1-2801', 'AZOMIE', 'PA?ARES', 'SOTTO', 'FEMALE', '2005-01-16', 1, 1, 9309572801, 'SAG, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(157, '2023-1-2802', 'RONALDO', 'BITOONAN', 'DELLAMAS', 'MALE', '2003-12-15', 1, 1, 9384519955, 'RIZAL, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(158, '2023-1-2803', 'MAE', '', 'TORREON', 'FEMALE', '2005-05-22', 1, 1, 9092778970, 'P2, SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(159, '2023-1-2804', 'MARY AN', 'ORAY', 'ORANG', 'FEMALE', '2003-11-14', 2, 1, 9702569215, 'SAN VICENTE, PILAR, BOHOL', NULL, NULL, NULL, NULL),
(160, '2023-1-2805', 'CHARAL JAVE', '', 'VALLESPIN', 'FEMALE', '2003-08-11', 3, 1, 9161228396, 'SAN ROQUE, MABINI, BOHOL', NULL, NULL, NULL, NULL),
(161, '2023-1-2806', 'MERI CRIS', 'FUENTES', 'BORJA', 'FEMALE', '2002-12-01', 1, 1, 9270743262, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(162, '2023-1-2807', 'CHESTER KIAN', 'AUTIDA', 'EVALAROZA', 'FEMALE', '2002-08-05', 3, 1, 9707763030, 'PINAMGO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(163, '2023-1-2809', 'LABELLE', 'AVERGONZADO', 'TORRES', 'FEMALE', '2005-11-23', 1, 1, 9630346808, 'P3, SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(164, '2023-1-2810', 'SHANN KIETH IAN', 'CABILEZ', 'DIACOR', 'MALE', '1999-12-21', 1, 1, 970259972, 'MAHANAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(165, '2023-1-2811', 'VANESSA', 'AZCUNA', 'BUTAC', 'FEMALE', '2005-07-28', 1, 1, 9935979636, 'P6, SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(166, '2023-1-2812', 'CHRISTIAN', 'BONGATOR', 'QUIMOD', 'MALE', '2005-08-14', 1, 1, 9974174317, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(167, '2023-1-2813', 'ARJAY', 'IDPALINA', 'PALAYPAY', 'MALE', '2005-02-09', 1, 1, 9669306575, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(168, '2023-1-2814', 'RAYAN', '', 'CUERBO', 'MALE', '2004-12-17', 1, 1, 9510778279, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(169, '2023-1-2814', 'BERNARD', '', 'LORETO', 'MALE', '1996-01-10', 1, 1, 9075217456, 'SOOM, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(170, '2023-1-2815', 'JUSTIN', 'AUXTERO', 'YANGGA', 'MALE', '2005-03-16', 1, 1, 9554906448, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(171, '2023-1-2816', 'RICHARD', 'TEDRA', 'SASIL', 'MALE', '2002-11-16', 1, 1, 9973868779, 'CALUASAN, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(172, '2023-1-2816', 'MYLEN', 'URCEJOLA', 'SAYSON', 'FEMALE', '2005-07-29', 1, 1, 9363110742, 'HINGOTANAN EAST, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(173, '2023-1-2817', 'LUIS MIGUEL', 'SAPILAN', 'UNAJAN', 'MALE', '2005-01-27', 1, 1, 9692364671, 'SALVADOR, SIERRA BULLONES, BOHOL', NULL, NULL, NULL, NULL),
(174, '2023-1-2818', 'CINDERELLA', 'AUTIDA', 'LEJERO', 'FEMALE', '2004-06-07', 3, 1, 9165263197, 'SAN VICENTE, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(175, '2023-1-2819', 'BRITNEY', 'LORA', 'HAYAG', 'FEMALE', '2004-07-07', 1, 1, 9368660214, 'HINGOTANAN EAST, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(176, '2023-1-2820', 'VAN JUN', 'AUXTERO', 'SOBRIO', 'MALE', '1994-05-03', 2, 1, 9691112130, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(177, '2023-1-2821', 'CLAIRE', 'RAFOLS', 'AUGUIS', 'MALE', '2002-05-29', 1, 1, 9384701191, 'BUSALIAN, JAO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(178, '2023-1-2823', 'BEYONCE', 'VIVA', 'GARCIA', 'FEMALE', '2005-05-16', 4, 1, 9774684416, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(179, '2023-1-2824', 'JEA', 'MARTINEZ', 'BARICUATRO', 'FEMALE', '2004-02-29', 1, 1, 9398818383, 'BUGAONG, BUENAVISTA, BOHOL', NULL, NULL, NULL, NULL),
(180, '2023-1-2825', 'ROMEO', 'AUXTERO', 'AUGUIS JR.', 'MALE', '2004-12-18', 1, 1, 9104890920, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(181, '2023-1-2826', 'JOHARRA', 'BAGUIO', 'LUEGA', 'FEMALE', '2005-06-03', 1, 1, 9935108225, 'RIZAL, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(182, '2023-1-2827', 'MA. DAYZY', 'ANUTA', 'CAJES', 'FEMALE', '2005-03-02', 1, 1, 9926331193, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(183, '2023-1-2828', 'RONIEL', 'AUTENTICO', 'CUIZON', 'MALE', '2005-03-06', 1, 1, 9319888603, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(184, '2023-1-2829', 'JENNIFER KATE', 'POLESTICO', 'FERNANDEZ', 'FEMALE', '2005-05-09', 2, 1, 9487215501, 'POBLACION, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(185, '2023-1-2830', 'JUN DAVE', 'CASOYLA', 'BONGHANOY', 'MALE', '2004-10-30', 1, 1, 9702338639, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(186, '2023-1-2831', 'VENBERLYN', 'ESTILLOSO', 'AGUAN', 'FEMALE', '1999-11-30', 5, 1, 9754538794, 'ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(187, '2023-1-2832', 'RHEA JEAN ', 'AVERGONZADO', 'AUZA', 'FEMALE', '2004-08-20', 3, 1, 9559837675, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(188, '2023-1-2833', 'MERY GRECE', 'GARCIA', 'AUXTERO', 'FEMALE', '2003-01-30', 1, 1, 9489825093, 'ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(189, '2023-1-2834', 'JESON', 'POLO', 'GOLE?A', 'MALE', '2000-05-06', 1, 1, 9096937800, 'PINAMGO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(190, '2023-1-2835', 'BABYLYN JANE', 'RAMOS', 'OSMIL', 'FEMALE', '2004-06-30', 5, 1, 9516142245, 'P2, STO. NIN?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(191, '2023-1-2836', 'CRISTINE', '', 'GARCIA', 'FEMALE', '1994-10-20', 3, 1, 9662164529, 'BALINTAWAK, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(192, '2023-1-2836', 'FELIX', 'AUTENTICO', 'ERONICO', 'MALE', '1990-11-20', 2, 1, 9653278342, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(193, '2023-1-2837', 'JHONRYL', 'TABIOLO', 'GONZALES', 'MALE', '2004-05-21', 1, 1, 9507601878, 'HINGOTANAN EAST, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(194, '2023-1-2839', 'ELLA ANTONETTE', 'AUXILIO', 'CASTRO', 'FEMALE', '2005-04-27', 5, 1, 9939043699, 'P3, STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(195, '2023-1-2840', 'REGIE', 'RIGOR', 'GARCIA', 'MALE', '2001-09-30', 1, 1, 9650491781, 'BILANGBILANGAN DAKU, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(196, '2023-1-2842', 'JEFFERSON', 'OPONDA', 'CABIDO', 'MALE', '2004-08-12', 1, 1, 9065565368, 'P6, BALINTAWAK, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(197, '2023-1-2844', 'RAY ANGELOU', 'FORTALIZA', 'CABERO', 'MALE', '2004-05-01', 1, 1, 9505718226, 'BILANGBILANGAN DAKU, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(198, '2023-1-2844', 'CLAIRE', 'TIMON', 'BUTANAS', 'FEMALE', '2005-03-14', 2, 1, 9511321686, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(199, '2023-1-2845', 'CHABELITA ', 'AYING ', 'MELECIO ', 'FEMALE', '2004-02-16', 1, 1, 9503993405, 'BILANGBILANGAN DAKU, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(200, '2023-1-2846', 'NOREN MAE', 'NAYRE', 'BINASBAS ', 'FEMALE', '2004-08-25', 5, 1, 9558014336, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(201, '2023-1-2847', 'ANALIE', 'CUIZON', 'AUXTERO', 'FEMALE', '2004-09-08', 2, 1, 9302487892, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(202, '2023-1-2848', 'JUSTINE', '', 'ORAIN', 'MALE', '2000-04-02', 1, 1, 9382468445, 'P2, BILANGBILANGAN DAKU, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(203, '2023-1-2849', 'CATLYN', 'AVENIDO', 'RENOMERON', 'FEMALE', '2003-02-12', 2, 1, 9511199494, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(204, '2023-1-2850', 'HANELIE', 'BALUCA', 'YUCOT', 'FEMALE', '1999-01-16', 4, 1, 9935328799, 'MAHAGBU, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(205, '2023-1-2851', 'JOHN MARK', 'LICAYAN', 'SOLACITO', 'MALE', '2004-10-12', 2, 1, 9949131472, 'DEL MAR MABINI BOHOL', NULL, NULL, NULL, NULL),
(206, '2023-1-2852', 'LEONARD', 'ACOJEDO', 'GARBO', 'MALE', '2003-08-18', 1, 1, 9302318798, 'BILANGBILANGAN DAKU, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(207, '2023-1-2853', 'REMEDIOS', 'CASQUEJO', 'POLESTICO', 'FEMALE', '2002-02-17', 1, 1, 9079175794, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(208, '2023-1-2854', 'HANNAH MARIE', 'TAMBALO', 'AUTIDA', 'FEMALE', '2005-03-17', 5, 1, 9275804134, 'P2, TANGHALIGUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(209, '2023-1-2855', 'JESSA MAE', 'TALAMAN', 'VALLEJOS', 'FEMALE', '2004-08-19', 2, 1, 9948859658, 'DEL MAR MABINI BOHOL', NULL, NULL, NULL, NULL),
(210, '2023-1-2856', 'CELISTENO JR. ', 'PALMA', 'TORREMOCHA', 'MALE', '1999-06-27', 1, 1, 9708415134, 'SAG, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(211, '2023-1-2857', 'ARIEL', 'CANOY', 'BONIEL', 'MALE', '2001-06-02', 4, 1, 9505401410, 'PINAMGO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(212, '2023-1-2858', 'JOMARI ', 'CATAYAS', 'LIBRES', 'MALE', '2003-06-09', 1, 1, 9670142972, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(213, '2023-1-2859', 'JENILYN', 'DUPIT', 'CURAN', 'FEMALE', '2002-05-15', 5, 1, 9105211073, 'STO. NIN?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(214, '2023-1-2860', 'ANGELICA', 'RAMOS', 'TOBES', 'FEMALE', '2005-10-26', 1, 1, 9261219062, 'P1, STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(215, '2023-1-2861', 'ANGELA', 'AUTENTICO', 'BOYLES', 'FEMALE', '2005-07-09', 4, 1, 9855522491, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(216, '2023-1-2863', 'CHRISA', 'MAHINAY', 'CAMPUGAN', 'FEMALE', '2004-12-06', 1, 1, 9550465147, 'P7, STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(217, '2023-1-2864', 'JAMUERA', 'DYPONGCO', 'ENCARNACION', 'FEMALE', '2005-01-25', 3, 1, 9389432203, 'HINGOTANAN, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(218, '2023-1-2865', 'LARA JANE', 'FUENTES', 'AURESTILA', 'FEMALE', '2004-07-07', 1, 1, 9925970875, 'P4, STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(219, '2023-1-2866', 'MICHAEL ', 'MONDEDO', 'DE LARA', 'MALE', '2002-10-17', 1, 1, 9463454684, 'POBLACION, DAGOHOY, BOHOL', NULL, NULL, NULL, NULL),
(220, '2023-1-2867', 'MARSHA', 'DESAMPARADO', 'CASOYLA', 'FEMALE', '2005-05-24', 3, 1, 9275823905, 'P5, SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(221, '2023-1-2868', 'SHEENA ERMA', 'MONDOC', 'ARONG', 'FEMALE', '2005-01-25', 3, 1, 9389497789, 'BILANGBILANGAN DAKU, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(222, '2023-1-2869', 'ADAMSON', 'AMIT', 'CRESENCIO', 'MALE', '1989-02-25', 1, 1, 9101033089, 'SAGASA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(223, '2023-1-2870', 'ARNIE', 'TURA', 'AVENIDO', 'MALE', '2000-01-10', 2, 1, 9558000489, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(224, '2023-1-2870', 'ANALOU', 'DUSABAN', 'COSICOL', 'FEMALE', '2004-10-23', 2, 1, 9651626483, 'P2, CAMALIAN, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(225, '2023-1-2871', 'DEVE', 'BUNADO', 'DINOY', 'FEMALE', '2004-02-26', 3, 1, 9358533424, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(226, '2023-1-2872', 'JOSEPHINE', 'CAJES ', 'PAYAPAYA', 'FEMALE', '1986-10-08', 1, 1, 9750984837, 'P2, STO.NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(227, '2023-1-2873', 'MARY JEAN', 'LAUDIANA', 'CUYACOT', 'FEMALE', '2005-01-19', 2, 1, 9558016206, 'CORAZON, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(228, '2023-1-2874', 'MARY CRIS', 'OREHUELA', 'BUNAOS', 'FEMALE', '2005-11-02', 5, 1, 9936132559, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(229, '2023-1-2875', 'PETER', 'MABALA', 'OPONDA', 'MALE', '1995-06-28', 1, 1, 9072961698, 'SAGASA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(230, '2023-1-2876', 'ARLITO', 'TORADIO', 'ARTIAGA', 'MALE', '1997-10-03', 2, 1, 9661652256, 'CORAZON, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(231, '2023-1-2877', 'GONNY', 'CAMPO', 'OLIVA', 'MALE', '2005-02-06', 2, 1, 9977488325, 'CORAZON, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(232, '2023-1-2878', 'KESHIA MARIE', '', 'ECLIPSE', 'FEMALE', '2004-06-07', 1, 1, 9095810487, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(233, '2023-1-2879', 'ANGELO', 'GOLOSINO', 'FLORES', 'FEMALE', '2004-08-30', 5, 1, 9207791665, 'ACHILA, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(234, '2023-1-2880', 'JOQUER', 'CURIBA', 'DELAMBACA', 'MALE', '1995-02-15', 2, 1, 9300457532, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(235, '2023-1-2881', 'CATHLENE', 'VILLAVER', 'JAGNA', 'FEMALE', '2005-04-01', 1, 1, 9380910592, 'NOCNOCAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(236, '2023-1-2882', 'GEVANNY', 'CUYACOT', 'AUTIDA', 'MALE', '2000-02-14', 4, 1, 9653205805, 'CAMALIAN, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(237, '2023-1-2883', 'JOYCELL', 'RAMOS', 'AVENIDO', 'FEMALE', '2004-09-11', 3, 1, 9657084694, 'P7, BALINTAWAK, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(238, '2023-1-2884', 'JOSUE', 'MENDOZA', 'SAVIOR', 'MALE', '2003-01-12', 2, 1, 9505467616, 'SAN JOSE, MABINI, BOHOL', NULL, NULL, NULL, NULL),
(239, '2023-1-2885', 'CYRIL JAMES', 'ABARQUEZ', 'GALORIO', 'MALE', '2000-11-22', 3, 1, 9958861936, 'P4, LOCSOON, NUEVA VIDA NORTE, CARMEN, BOHOL', NULL, NULL, NULL, NULL),
(240, '2023-1-2886', 'MAYLEN', 'CUTARA', 'GARCIA', 'FEMALE', '2003-08-01', 2, 1, 9358900782, 'P6, SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(241, '2023-1-2887', 'JEAN MARGARETH', 'ASTILLO ', 'CASTRO ', 'FEMALE', '2004-07-29', 1, 1, 9958842123, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(242, '2023-1-2888', 'RUDELYN JOY', 'GENCIANOS', 'ABANADOR', 'FEMALE', '2004-07-02', 4, 1, 9102978122, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(243, '2023-1-2888', 'ANAMARIE', 'PAQUIBOT', 'BOYLES', 'FEMALE', '1999-11-06', 4, 1, 9534951018, 'CATOOGAN, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(244, '2023-1-2889', 'KETTY', 'SABAL', 'AVERGONZADO', 'FEMALE', '2002-04-26', 1, 1, 9503374240, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(245, '2023-1-2890', 'THERESE AIZASOBEL', 'FENIZA', 'GURREA', 'FEMALE', '2001-02-28', 5, 1, 9074930978, 'TANGHALIGUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(246, '2023-1-2891', 'TROY ', 'CAMACHO ', 'EVARDO ', 'MALE', '2003-12-31', 1, 1, 9657395837, 'PINAMGO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(247, '2023-1-2892', 'EMMANUEL', 'APOSTOL', 'ROSAGARAN', 'MALE', '2002-08-04', 1, 1, 9385142474, 'PINAMGO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(248, '2023-1-2893', 'FRANCIS LOUIE', '', 'AUXTERO', 'MALE', '2002-05-18', 4, 1, 9105036608, 'P2, ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(249, '2023-1-2894', 'JOLITO', 'TRAGO', 'AUZA JR', 'FEMALE', '2003-12-27', 5, 1, 985270098, 'TANGHALIGUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(250, '2023-1-2896', 'JOHN DAVE', 'PELLONE', 'AULESTIA', 'MALE', '2004-07-06', 5, 1, 9708197191, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(251, '2023-1-2897', 'GERMAN', 'TABARANZA', 'PARCO', 'MALE', '2004-03-03', 1, 1, 9511197392, 'BONGBONG, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(252, '2023-1-2898', 'TRICIA', '', 'CABASIG', 'FEMALE', '2001-10-13', 1, 1, 9380735646, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(253, '2023-1-2899', 'JAYCHELLE', 'TABARANZA', 'HINLAYAGAN', 'FEMALE', '2004-11-22', 1, 1, 9382418759, 'BONGBONG, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(254, '2023-1-2900', 'JAY MARRIE', 'GONZAGA', 'CA?ETE ', 'FEMALE', '2005-07-19', 5, 1, 9484438843, 'CALUASAN, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(255, '2023-1-2901', 'JENNIE', 'DACLES', 'MIRADORES', 'FEMALE', '2003-10-11', 5, 1, 9122601686, 'P6, CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(256, '2023-1-2902', 'ELMIELYN', 'IGO-IGO', 'POGOY', 'FEMALE', '2005-03-08', 1, 1, 9186217768, 'HINGOTANAN WEST, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(257, '2023-1-2903', 'ROBERT', 'ATON', 'BENITEZ', 'MALE', '2004-08-07', 1, 1, 9361668189, 'HINGOTANAN WEST, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(258, '2023-1-2904', 'RHEA MAE', 'AUXTERO', 'CAJES', 'FEMALE', '2003-11-03', 4, 1, 9948971140, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(259, '2023-1-2905', 'JOCELYN', 'BAYKING', 'BAUTISTA', 'FEMALE', '2002-11-28', 1, 1, 9504782271, 'SAN PEDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(260, '2023-1-2906', 'PATRICIA ALTHEA', 'PELONE', 'DERESAS', 'FEMALE', '2005-09-10', 4, 1, 9957557581, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(261, '2023-1-2907', 'CIENNY ROSE', 'CAJES', 'PURACAN', 'FEMALE', '2003-11-25', 4, 1, 9676922609, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(262, '2023-1-2908', 'LEO', 'NUEVA', 'CAJES', 'MALE', '2004-04-25', 2, 1, 9934943620, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(263, '2023-1-2909', 'BRITNEY', 'VIVA', 'GARCIA', 'FEMALE', '2004-03-12', 1, 1, 9664526450, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(264, '2023-1-2910', 'CRISLYN ', 'MOLINAS', 'SOCIAS', 'FEMALE', '2005-04-07', 1, 1, 9502201813, 'MAGSAYSAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(265, '2023-1-2911', 'MARGELYN', 'FLORES', 'POLO', 'FEMALE', '2004-10-22', 1, 1, 9068200791, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(266, '2023-1-2912', 'JOWY', 'DINOPOL', 'POLESTICO', 'MALE', '2003-10-14', 1, 1, 9352114989, 'ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(267, '2023-1-2913', 'RAMIE', 'RAMOS', 'VALMORES JR.', 'MALE', '2000-05-09', 1, 1, 9503371090, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(268, '2023-1-2914', 'MELRHO', 'CRISTAL', 'OCOY', 'MALE', '2005-02-20', 2, 1, 9928238667, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(269, '2023-1-2915', 'JOHN JERWIN', 'RAVANSO', 'VILLARIN', 'MALE', '2001-06-18', 4, 1, 9973868920, 'CALANGGAMAN, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(270, '2023-1-2916', 'ROXANNE', 'AUTENTICO', 'AVENIDO', 'FEMALE', '2005-08-16', 1, 1, 9559339368, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(271, '2023-1-2917', 'MICHAEL ', 'AVERGONZADO ', 'OLBES ', 'MALE', '2004-09-29', 1, 1, 9978971746, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(272, '2023-1-2918', 'JESSREL', 'BITOONAN', 'VALMORIA', 'MALE', '2004-03-01', 1, 1, 9752457319, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(273, '2023-1-2919', 'WENCE PAUL', 'AUXTERO', 'TORREON', 'MALE', '2004-09-15', 2, 1, 9923902740, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(274, '2023-1-2920', 'EDELITO ', '', 'ENOC ', 'MALE', '2004-09-25', 1, 1, 9276990363, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(275, '2023-1-2921', 'KIRBY', 'TORREMOCHA', 'BETACHE', 'MALE', '2004-11-06', 1, 1, 9268138690, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(276, '2023-1-2922', 'RONIE', 'ABREA', 'BENITEZ', 'MALE', '2003-01-04', 1, 1, 9057377581, 'DAWAHON ISLAND, BATO, LEYTE', NULL, NULL, NULL, NULL),
(277, '2023-1-2923', 'CELESTE', 'BALANE', 'PEJANA', 'FEMALE', '2005-10-23', 3, 1, 9389315380, 'SAN VICENTE, PRESIDENT CARLOS P. GARCIA, BOHOL', NULL, NULL, NULL, NULL),
(278, '2023-1-2924', 'JOVELYN', 'RICO', 'BONGHANOY', 'FEMALE', '2002-09-29', 1, 1, 9502232481, 'NOCNOCAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(279, '2023-1-2924', 'NADINE', 'TECSON', 'DUAMAN', 'FEMALE', '2004-11-12', 2, 1, 9503387616, 'P6, SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(280, '2023-1-2925', 'JOHN PAUL', '', 'ROSALES', 'MALE', '2001-01-06', 1, 1, 9509831896, 'BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(281, '2023-1-2926', 'NOEMIE GRACE', 'NAVARRO', 'BONGHANOY', 'FEMALE', '2004-09-18', 3, 1, 9759155399, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(282, '2023-1-2927', 'EVELYN', 'PATALINGHUG', 'CAJES ', 'FEMALE', '2005-01-23', 1, 1, 9351809800, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(283, '2023-1-2928', 'REGINE', '', 'ABARQUEZ', 'FEMALE', '2005-01-21', 1, 1, 9357153034, 'HINGOTANAN WEST, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(284, '2023-1-2929', 'KIMBERLY', 'ESTRADA', 'YDER', 'FEMALE', '2005-02-23', 2, 1, 9519312562, 'BASDIO, LOON, BOHOL', NULL, NULL, NULL, NULL),
(285, '2023-1-2929', 'ANNA MAY', 'RIVAS', 'GUMATAY', 'FEMALE', '2005-03-28', 4, 1, 9651622782, 'BAY- ANG, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(286, '2023-1-2930', 'GASPAR JR.', 'CUTARRA', 'TORRETA', 'MALE', '2002-04-16', 1, 1, 9771859969, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(287, '2023-1-2931', 'RALDY', 'QUERIQUERI', 'CLEOPAS', 'MALE', '2004-08-06', 2, 1, 9532234438, 'PAG-ASA, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(288, '2023-1-2932', 'JOMARIE', 'TURTOGA', 'CAJES', 'FEMALE', '2005-08-01', 1, 1, 9302931658, 'P6, STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(289, '2023-1-2933', 'DHAFNEY JANE', 'IMBO', 'OMILA', 'FEMALE', '2005-01-23', 5, 1, 9656792524, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(290, '2023-1-2934', 'JEVIE', 'ODTOJAN', 'CABARDO', 'FEMALE', '2005-04-22', 1, 1, 9750976573, 'HINGOTANAN WEST, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(291, '2023-1-2934', 'MARIELLE JOY ', 'ARDIENTE', 'TURTOGA', 'FEMALE', '2004-08-23', 1, 1, 9380784277, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(292, '2023-1-2935', 'CARLOUIE JAY', 'DACAYANA', 'GURREA', 'MALE', '2004-11-06', 3, 1, 9050912468, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(293, '2023-1-2936', 'JACOB MANUEL', 'BIHAGAN', 'ODIAS', 'MALE', '2005-07-25', 1, 1, 9389432203, 'HINGOTANAN WEST, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(294, '2023-1-2937', 'SHERA MAY ', 'ENDEREZ', 'CABANSAY', 'FEMALE', '2003-11-15', 1, 1, 9073248491, 'HINGOTANAN EAST, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(295, '2023-1-2938', 'RICKY JAME', 'SALCEDO', 'DACULLO', 'MALE', '2005-07-07', 1, 1, 9553771529, 'MAHAYAG, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(296, '2023-1-2939', 'ROXANNE', 'AVENIDO', 'ESPENOZA', 'FEMALE', '2004-09-28', 3, 1, 9678461050, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(297, '2023-1-2940', 'JONAS', '', 'SABAL', 'MALE', '2002-12-24', 1, 1, 9503446591, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(298, '2023-1-2941', 'YAMIE', 'POLO', 'BAGTONG', 'FEMALE', '2001-10-15', 1, 1, 9617291076, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(299, '2023-1-2942', 'KYLE HARVEY', 'MUMAR', 'PAYAG', 'MALE', '2004-12-01', 1, 1, 9560076023, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(300, '2023-1-2944', 'GLENN MARK', 'BOLIGAO', 'GURREA', 'MALE', '2003-02-13', 5, 1, 9554910810, 'P1, SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(301, '2023-1-2945', 'REYMOND', 'PALMA', 'BARON', 'MALE', '2001-11-08', 1, 1, 9319205555, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(302, '2023-1-2946', 'SANTE', 'OTARRA', 'PALMA', 'MALE', '2004-01-23', 1, 1, 9072960858, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(303, '2023-1-2947', 'LYNDELL', 'BOLIGAO', 'GURREA', 'FEMALE', '2004-05-15', 3, 1, 9554910676, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(304, '2023-1-2947', 'JHAN HARVEY', 'ACQUAIT', 'PURACAN', 'MALE', '2005-06-11', 1, 1, 9676810437, 'BUGANG, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(305, '2023-1-2948', 'DESIE DARYN', 'CASQUEJO', 'CABULAO', 'FEMALE', '2004-11-07', 5, 1, 9488079243, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(306, '2023-1-2949', 'VINCENT', '', 'BAAY', 'MALE', '2005-02-14', 1, 1, 9559831360, 'BUGANG, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(307, '2023-1-2950', 'JOHN LLOYD', 'MALISA', 'BONIEL', 'MALE', '2004-06-01', 1, 1, 9512919167, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(308, '2023-1-2951', 'MYLENE', 'SANTIAGO', 'QUIRING', 'FEMALE', '2005-02-20', 3, 1, 9127744381, 'DATAG, GARCIA HERNANDEZ, BOHOL', NULL, NULL, NULL, NULL),
(309, '2023-1-2952', 'JONA MAE', 'GARCIA ', 'CAJES ', 'FEMALE', '2005-01-14', 1, 1, 9609094333, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(310, '2023-1-2953', 'RAYLIN', '', 'CABILLA', 'FEMALE', '2004-06-28', 1, 1, 9926345925, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(311, '2023-1-2954', 'NI?O JAMES', 'RAMOS', 'VILLAMERO', 'MALE', '2005-01-21', 1, 1, 9355763654, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(312, '2023-1-2955', 'JOHN MAR', 'AUXTERIACO', 'ERONICO', 'MALE', '2004-07-02', 2, 1, 9925711431, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(313, '2023-1-2956', 'JERALD ', 'PA?ARES', 'AUXILIO ', 'MALE', '2003-07-10', 1, 1, 9938935289, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(314, '2023-1-2957', 'ECHILLE MAE', 'DUPALCO', 'AUDITOR', 'FEMALE', '2005-08-03', 3, 1, 9066394868, 'P2, SINANDIGAN, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(315, '2023-1-2958', 'JOSEPH', 'DOVERTE', 'CABREROS', 'MALE', '2004-12-15', 1, 1, 9461879084, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(316, '2023-1-2959', 'ENSLEY', 'EVANGELISTA', 'GEAGONIA', 'MALE', '2004-08-02', 1, 1, 9508626147, 'RIZAL, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(317, '2023-1-2960', 'JENERICA', '', 'PALAPAR', 'FEMALE', '2004-01-01', 3, 1, 9817953255, 'SAG, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(318, '2023-1-2961', 'JENALYN', 'DAHAN', 'SABAL', 'FEMALE', '2005-03-21', 4, 1, 9702220608, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(319, '2023-1-2962', 'MIKEE', 'SUMAYO', 'VILLANUEVA', 'FEMALE', '2005-02-02', 1, 1, 9512921495, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(320, '2023-1-2963', 'JADE', 'ROMARES', 'ACOJEDO', 'FEMALE', '2004-02-18', 3, 1, 9456479233, 'BILANGBILANGAN DAKU, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(321, '2023-1-2964', 'EDIELYN', 'GURREA', 'CUTARRA ', 'FEMALE', '2005-03-24', 1, 1, 9935298129, 'SIKATUNA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(322, '2023-1-2964', 'VINCENT RAY', 'TAMPOS', 'PARSACALA', 'MALE', '1996-06-06', 1, 1, 9811782186, 'RIZAL, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(323, '2023-1-2965', 'SANDRO NI?O', 'GALIDO', 'AUGUIS', 'MALE', '2005-01-16', 2, 1, 9934694700, 'P5, BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(324, '2023-1-2966', 'JOMARI', 'AUTENTICO', 'OLAIVAR', 'MALE', '2005-07-19', 1, 1, 9678459135, 'BALINTAWAK, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(325, '2023-1-2967', 'JOHN RICHARD', 'DELATORRE', 'MABALA', 'MALE', '2004-07-05', 3, 1, 9161286047, 'BILANGBILANGAN EAST, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(326, '2023-1-2968', 'ELJOY', 'SOCAJEL', 'SUBRIO', 'FEMALE', '2004-09-02', 3, 1, 9105828959, 'BILANGBILANGAN DAKU, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(327, '2023-1-2969', 'MELUDE', 'CASQUEJO', 'CASUCOT', 'FEMALE', '2002-07-13', 1, 1, 9127849989, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(328, '2023-1-2970', 'MARK JED', 'AUXTERO ', 'JOVELLAR', 'MALE', '2005-03-30', 1, 1, 9072567734, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(329, '2023-1-2971', 'MA. VANESSA', 'BALABA', 'AUTIDA', 'FEMALE', '2003-09-18', 5, 1, 9706626526, 'CAMALIAN, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(330, '2023-1-2972', 'JOHNRO', 'BERECASIO', 'BALINGIT', 'MALE', '2005-04-17', 4, 1, 9702468438, 'BILANGBILANGAN DAKU, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(331, '2023-1-2973', 'JUSTIN', '', 'TUYAC', 'MALE', '2003-12-13', 1, 1, 9814680471, 'POBLACION 2, MABINI, BOHOL', NULL, NULL, NULL, NULL),
(332, '2023-1-2974', 'ONIEL', '', 'AUXTERO', 'MALE', '2004-01-06', 1, 1, 9504264346, 'RIZAL, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(333, '2023-1-2975', 'JUSTIN KYLLE', 'MIASCO', 'ZACARIAS', 'MALE', '2004-02-02', 5, 1, 9852604890, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(334, '2023-1-2976', 'ACEL ', 'DOLMIGUEZ', 'PADIN ', 'MALE', '2004-08-15', 1, 1, 9676916779, 'NOCNOCAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(335, '2023-1-2977', 'DAVE CHRISTIAN', 'COMPENDIO', 'NICDAO', 'MALE', '2004-12-16', 2, 1, 9062633602, 'HAGBUYO, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(336, '2023-1-2978', 'MARIANNE', 'CABALAN', 'GABISAN', 'FEMALE', '2003-07-12', 3, 1, 9073273660, 'BILANGBILANGAN DAKU, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL);
INSERT INTO `students` (`id`, `studentNo`, `firstName`, `middleName`, `lastName`, `sex`, `birthdate`, `courseID`, `yearLevelID`, `contactNo`, `address`, `photo`, `archive`, `created_at`, `updated_at`) VALUES
(337, '2023-1-2979', 'JOLO', 'FUROG', 'ALBORES', 'MALE', '2004-07-22', 1, 1, 9701098905, 'PINAMGO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(338, '2023-1-2980', 'MA. ANA ', 'YAMSON', 'RAMOS', 'FEMALE', '2003-12-28', 1, 1, 9632222792, 'SUBA, JAO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(339, '2023-1-2981', 'JENECEL ', 'AVANZADO ', 'SABAL ', 'FEMALE', '2002-07-28', 1, 1, 9702117808, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(340, '2023-1-2981', 'JOSH SHANE IAN', '', 'BONCALES', 'MALE', '2004-10-19', 2, 1, 9634504703, 'POBLACION, SAN  MIGUEL', NULL, NULL, NULL, NULL),
(341, '2023-1-2982', 'ELLYANNA JOY', 'MAINIT', 'AVENIDO', 'FEMALE', '2005-07-11', 4, 1, 9062651422, 'P5, TUBOG, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(342, '2023-1-2984', 'MIDOURE', '', 'LABAJO', 'FEMALE', '2004-08-01', 1, 1, 9759608906, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(343, '2023-1-2985', 'MARK ANTHONY', 'CA?IZARES', 'AUTIDA', 'MALE', '2004-07-05', 2, 1, 9701926704, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(344, '2023-1-2986', 'ROXANNE', 'TORREON', 'LEOLIGAO', 'FEMALE', '2003-06-10', 1, 1, 9907543823, 'P1, MAHANAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(345, '2023-1-2987', 'APRIL ROSE ', '', 'TORREON ', 'FEMALE', '2002-04-03', 1, 1, 9469818973, 'MAHANAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(346, '2023-1-2988', 'JAYSON JADE', '', 'RIVAS', 'MALE', '2002-05-24', 1, 1, 9488058812, 'P4, SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(347, '2023-1-2989', 'JOAN', 'OCON', 'BERNAS', 'FEMALE', '2005-03-16', 1, 1, 9505216679, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(348, '2023-1-2990', 'SHAIRA MAE ', 'GURREA', 'ARTIAGA', 'FEMALE', '2005-06-09', 1, 1, 9359787486, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(349, '2023-1-2991', 'MICA', 'PELICANO', 'ERONICO', 'FEMALE', '2004-01-20', 5, 1, 9656792201, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(350, '2023-1-2992', 'RENALYN', 'GERONA', 'TUBO', 'FEMALE', '2004-02-11', 2, 1, 9367749070, 'TUBORAN, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(351, '2023-1-2993', 'PAULA ANGELA', 'LAPINID', 'POGOY', 'FEMALE', '2005-08-04', 1, 1, 9105316966, 'P3, SAN JOSE, TALI BON, BOHOL', NULL, NULL, NULL, NULL),
(352, '2023-1-2994', 'GLYDEL ANN MARIE', 'FANGONIL', 'QUINDAO', 'FEMALE', '2005-05-11', 1, 1, 9939043632, 'P6, SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(353, '2023-1-2995', 'KENNETH', 'PANGANDOYON', 'PASCUA', 'MALE', '2005-06-30', 1, 1, 9516422613, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(354, '2023-1-2996', 'MARY JANE', '', 'VILLANUEVA', 'FEMALE', '2004-06-16', 1, 1, 9939043632, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(355, '2023-1-2997', 'JANE AMERRI', 'LUMICTIN', 'YBA?EZ', 'FEMALE', '2004-02-10', 1, 1, 9925547224, 'P4, STO. NI?O, TALIBON , BOHOL', NULL, NULL, NULL, NULL),
(356, '2023-1-2997', 'EMMALYN', 'PULIDO', 'OMBOY', 'FEMALE', '2003-10-02', 2, 1, 9268123107, 'P3, SAN AGUSTIN, TALI BON, BOHOL', NULL, NULL, NULL, NULL),
(357, '2023-1-2999', 'RHEA PAMELA', 'GILBAS', 'LABRADA', 'FEMALE', '2003-05-22', 2, 1, 9664966107, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(358, '2023-1-2999', 'JAMAICA', 'ROSALES', 'MACUA', 'FEMALE', '1995-12-12', 5, 1, 9385251679, 'NUEVA ESPERANZA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(359, '2023-1-3000', 'MERIE CRISH', 'ARADO', 'ROSALES', 'FEMALE', '2004-12-26', 5, 1, 9650489325, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(360, '2023-1-3001', 'AXEL ', 'BARON ', 'GOLLODO ', 'MALE', '2004-09-03', 1, 1, 9948971160, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(361, '2023-1-3002', 'MARLON', 'MAHUMOT', 'BALONGA JR.', 'MALE', '2003-06-20', 1, 1, 9462497371, 'MALITBOG, DAGOHOY, BOHOL', NULL, NULL, NULL, NULL),
(362, '2023-1-3003', 'NADINE GRACE', 'COTEJO', 'DIVINAGRACIA', 'FEMALE', '2005-01-15', 1, 1, 9936290734, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(363, '2023-1-3004', 'JENNILYN', 'MAHUMOT', 'CUAMAG', 'FEMALE', '2005-01-23', 3, 1, 9389239790, 'CAGAWASAN, DAGOHOY, BOHOL', NULL, NULL, NULL, NULL),
(364, '2023-1-3005', 'DENNIS', 'SEISMUNDO', 'BAAY', 'MALE', '2002-10-03', 1, 1, 9463458140, 'CAGAWITAN, DAGOHOY, BOHOL', NULL, NULL, NULL, NULL),
(365, '2023-1-3006', 'SAMANTHA', 'BAAY', 'TAGOLIMOT', 'FEMALE', '2005-02-11', 1, 1, 9702238174, 'MALITBOG, DAGOHOY, BOHOL', NULL, NULL, NULL, NULL),
(366, '2023-1-3007', 'NICO ', 'LANOY', 'SAMUYA', 'MALE', '2004-02-22', 1, 1, 9636208545, 'MALITBOG, DAGOHOY, BOHOL', NULL, NULL, NULL, NULL),
(367, '2023-1-3008', 'MARIEL', 'AUXTERO', 'SABIOR', 'FEMALE', '2003-03-19', 1, 1, 9262587553, 'RIZAL, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(368, '2023-1-3009', 'CECIL MAE', 'MACADAEG', 'MAHUMOT', 'FEMALE', '2004-10-13', 3, 1, 9075155293, 'MAHAYAG, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(369, '2023-1-3010', 'KENT GAISLER', 'BARBAS', 'BARON ', 'MALE', '2004-07-20', 1, 1, 9925339336, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(370, '2023-1-3011', 'JOANNE AVRIL', '', 'DELFINO', 'FEMALE', '2004-07-16', 1, 1, 9455500642, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(371, '2023-1-3012', 'TADASHI', '', 'ENOG', 'MALE', '2004-12-11', 1, 1, 9949784295, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(372, '2023-1-3013', 'RICHARD', 'CRESCENCIO', 'TORRENUEVA', 'MALE', '2005-04-28', 1, 1, 9361699798, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(373, '2023-1-3014', 'RODLY', 'AVILLAR', 'JAO', 'MALE', '2003-06-28', 1, 1, 9389448781, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(374, '2023-1-3015', 'EVEN', 'CASOYLA', 'YBA?EZ', 'MALE', '2004-11-28', 1, 1, 9166823636, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(375, '2023-1-3016', 'REY', '', 'MATORAN', 'MALE', '2004-05-26', 2, 1, 9302713588, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(376, '2023-1-3017', 'ARWEN ', 'JAGNA', 'TONGCO', 'MALE', '2003-08-22', 1, 1, 9062638852, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(377, '2023-1-3018', 'ARWEL', 'JAGNA', 'TONGCO', 'MALE', '2003-08-22', 1, 1, 9561795158, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(378, '2023-1-3018', 'AERIANE', 'GADIANA', 'ABADIES', 'FEMALE', '2004-11-18', 2, 1, 9484300882, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(379, '2023-1-3019', 'MAILA', 'BULALA', 'CERNA', 'FEMALE', '2004-11-27', 3, 1, 9517135395, ' MAHAYAG, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(380, '2023-1-3020', 'JOHN CLIYD', 'DIEPARINE', 'ABELLAR', 'MALE', '2003-09-16', 1, 1, 9556209725, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(381, '2023-1-3021', 'MELKA', 'AUXTERO', 'AVERGONZADO', 'FEMALE', '2004-04-02', 2, 1, 9556015371, 'P3, SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(382, '2023-1-3022', 'KEN REYMART', 'GARCIA ', 'VILLAVER', 'MALE', '2001-06-30', 1, 1, 9562465569, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(383, '2023-1-3023', 'JOHN', 'ABANGAN', 'VILLASICA', 'MALE', '2003-06-24', 1, 1, 9166823636, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(384, '2023-1-3024', 'JENNEFFER', 'AUTIDA', 'MILLIANG', 'FEMALE', '2005-04-04', 2, 1, 9359787213, 'P-2 SAN VICENTE, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(385, '2023-1-3025', 'MARCELENO ', 'BACANTE', 'ABELLAR', 'MALE', '2023-08-01', 1, 1, 9166823623, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(386, '2023-1-3026', 'JEROM', 'GABISAN', 'SEROYLA', 'MALE', '2003-09-06', 1, 1, 9463404014, 'BILANGBILANGAN DAKU, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(387, '2023-1-3027', 'SEAN LEO', 'RAMOS', 'A?ABIEZA', 'MALE', '2005-06-01', 4, 1, 9104183083, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(388, '2023-1-3028', 'REBECCA', 'BEMIL', 'CASTRO', 'FEMALE', '2005-03-19', 5, 1, 9637584792, 'LUSONG, BUENAVISTA, BOHOL', NULL, NULL, NULL, NULL),
(389, '2023-1-3029', 'JOSA', 'SENO', 'PAREDES', 'FEMALE', '2004-06-05', 1, 1, 9122674906, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(390, '2023-1-3030', 'REGINE', 'REYES', 'RA?A', 'FEMALE', '2004-05-05', 2, 1, 9949558188, 'CASATE, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(391, '2023-1-3031', 'RYAN ', 'GONZALES ', 'ANZANO ', 'MALE', '2002-07-12', 1, 1, 9650497566, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(392, '2023-1-3032', 'LIVIE', 'CUTAMORA', 'CA?ADA', 'MALE', '2005-08-29', 1, 1, 9380963214, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(393, '2023-1-3033', 'MARYHEN', 'AVERGONZADO ', 'LEOLIGAO ', 'FEMALE', '2005-08-17', 1, 1, 9461221203, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(394, '2023-1-3034', 'NELSON ', 'AUXTERO', 'YBA?EZ JR.', 'MALE', '2004-09-20', 1, 1, 9461221203, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(395, '2023-1-3035', 'JAYMARD', 'A?ANA', 'EVARDO', 'MALE', '2005-01-06', 4, 1, 9362895230, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(396, '2023-1-3036', 'WINSTON ', 'AUTENTICO', 'GARCES ', 'MALE', '2004-04-30', 1, 1, 9561496662, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(397, '2023-1-3037', 'ADRIAN', 'BITOONAN', 'AVENIDO', 'MALE', '2002-04-13', 1, 1, 9352551709, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(398, '2023-1-3038', 'AHRA', 'PANTUAN', 'OCLARIT', 'FEMALE', '2004-11-11', 2, 1, 9633888021, 'DATAG GARCIA HERNADEZ BOHOL', NULL, NULL, NULL, NULL),
(399, '2023-1-3039', 'SHIELOU', 'PAGARAN', 'GALENDEZ', 'FEMALE', '2004-08-02', 2, 1, 9701617255, 'WEST-LUNGSODAAN GARCIA HERNANDEZ BOHOL', NULL, NULL, NULL, NULL),
(400, '2023-1-3040', 'JOHANE', 'TORREMOCHA', 'COLON', 'FEMALE', '2004-02-05', 2, 1, 9264637366, 'MAHANAY, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(401, '2023-1-3041', 'JOHN LEANDER', 'DEIPARINE', 'GARCIA', 'MALE', '2005-02-27', 1, 1, 9308304705, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(402, '2023-1-3042', 'ARIEL ', 'GARCIA ', 'SURIGAO', 'MALE', '2004-05-24', 1, 1, 9854417759, 'BOSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(403, '2023-1-3043', 'MA. FANES', 'FUROG', 'CASQUEJO', 'FEMALE', '2004-12-29', 2, 1, 9634488553, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(404, '2023-1-3044', 'AIRA', 'MEJIAS', 'PENDON', 'FEMALE', '2004-03-03', 2, 1, 9496537588, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(405, '2023-1-3045', 'NI?O REY', 'GABISAN ', 'DAGOHOY', 'MALE', '2004-02-07', 1, 1, 9308304705, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(406, '2023-1-3046', 'JOHN LESTER', 'MARGATINEZ', 'AVERGONZADO', 'MALE', '2002-08-18', 2, 1, 9510779863, 'CAGAWITAN, DAGOHOY, BOHOL', NULL, NULL, NULL, NULL),
(407, '2023-1-3047', 'JERICO', 'VALMORIA', 'BONCALES', 'MALE', '2004-09-24', 2, 1, 9706281421, 'BAYONGAN, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(408, '2023-1-3048', ' EMSON', 'DAGOHOY', 'GARCIA ', 'MALE', '2003-01-12', 1, 1, 9308304705, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(409, '2023-1-3049', 'ELIZABETH', 'QUIMSON', 'TURTOGA', 'FEMALE', '2004-11-09', 1, 1, 9519312853, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(410, '2023-1-3050', 'MAY ANN', 'LIGUTAN', 'DANO', 'FEMALE', '2001-12-24', 3, 1, 9939081029, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(411, '2023-1-3051', 'ZORIN', 'MINGUITO', 'TORREON', 'MALE', '2005-03-12', 2, 1, 9816653453, 'TULANG, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(412, '2023-1-3052', 'JAIRRON', 'BALAGA', 'DANO', 'MALE', '2004-06-13', 3, 1, 9705672327, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(413, '2023-1-3053', 'RONALD', 'POLESTICO', 'PAREDO', 'MALE', '2003-07-02', 1, 1, 9384700865, 'SAN PEDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(414, '2023-1-3054', 'RIALYN', 'AUGUIS', 'AGRAVANTE', 'FEMALE', '2004-10-10', 3, 1, 9947731580, 'BILANGBILANGAN DAKU, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(415, '2023-1-3055', 'JULIET ', 'AUXTERO ', 'ROSALES', 'FEMALE', '2003-07-23', 1, 1, 9268123821, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(416, '2023-1-3056', 'ROBIN', 'OLIVA', 'MUMAR', 'MALE', '2004-11-09', 1, 1, 9269239919, 'BUENAVISTA, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(417, '2023-1-3057', 'JOHN PAUL ', '', 'HOYBIA ', 'MALE', '2005-05-25', 1, 1, 9319346615, 'NUEVA ESTRELLA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(418, '2023-1-3058', 'KAYE MARIE', 'SALVADO', 'GARCIA', 'FEMALE', '2004-11-14', 1, 1, 9933024621, 'P1, NUEVA ESPERANZA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(419, '2023-1-3059', 'TEDDY BOY ', 'RAMOGA', 'SIMBORIO', 'MALE', '2003-09-12', 2, 1, 9635345208, 'POBLACION, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(420, '2023-1-3060', 'TRISHA ', 'GUARIN ', 'MATURAN ', 'FEMALE', '2002-11-23', 1, 1, 9273863672, 'BOOD, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(421, '2023-1-3061', 'JERIEL', 'DAHAN', 'SABAL', 'FEMALE', '2004-01-07', 1, 1, 9702220608, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(422, '2023-1-3062', 'SHARA KATRINA', 'CASTRO', 'MOSQUEDA', 'FEMALE', '2001-08-03', 1, 1, 9519978383, 'POBOLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(423, '2023-1-3063', 'KLARIZ', 'EVARDO', 'FERNANDEZ', 'FEMALE', '2005-09-21', 3, 1, 9273082143, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(424, '2023-1-3065', 'MARY ROSE', 'CAJES', 'SACARES', 'FEMALE', '2004-05-09', 3, 1, 9928951442, 'P2, STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(425, '2023-1-3066', 'RODRIGO', 'TORREON', 'MEJIAS JR.', 'MALE', '2003-03-23', 1, 1, 9939081097, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(426, '2023-1-3067', 'AMADO', 'SOBIOR', 'ABESIA', 'MALE', '2001-07-31', 1, 1, 9261526738, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(427, '2023-1-3068', 'DANIELLE ANDREA', 'EVARDO', 'DECASA', 'FEMALE', '2002-03-15', 5, 1, 9565091616, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(428, '2023-1-3069', 'ROMAR', 'RAMIREZ', 'EJARES ', 'MALE', '2004-03-24', 1, 1, 9759155309, 'BUTAN, PITOGO, BOHOL', NULL, NULL, NULL, NULL),
(429, '2023-1-3070', 'BIANCA MARIE', 'CADENAS', 'PREGUNTA', 'FEMALE', '2005-05-03', 2, 1, 9469877740, 'P1, KINAN-OAN, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(430, '2023-1-3071', 'MARY GRACE', 'OROYAN', 'ARTIAGA', 'FEMALE', '2002-06-05', 2, 1, 9928951372, 'P7, POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(431, '2023-1-3072', 'CHENMERA', 'TUBO', 'MESIONA', 'FEMALE', '2002-11-22', 1, 1, 9071913354, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(432, '2023-1-3073', 'NESTOR', 'NOGADAS', 'MANUNGBAO', 'MALE', '2004-02-26', 1, 1, 9168220495, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(433, '2023-1-3074', 'JIRALD', 'BUNAOS', 'EWICAN', 'MALE', '2000-01-31', 1, 1, 9364534018, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(434, '2023-1-3075', 'IVY', 'MUMAR', 'CA?EZO', 'FEMALE', '2005-07-25', 2, 1, 9503856769, 'SAN VICENTE, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(435, '2023-1-3076', 'JOHN DALE ', 'TA?O', 'BOQUILA ', 'MALE', '2002-09-14', 1, 1, 9099334495, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(436, '2023-1-3078', 'JUN KYLE', 'BERING', 'BUNAOS', 'MALE', '2005-05-14', 1, 1, 9057147921, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(437, '2023-1-3079', 'RYZA', 'AUXTERO', 'OCOY', 'FEMALE', '2005-01-31', 2, 1, 9467694659, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(438, '2023-1-3081', 'ALLYN GRACE', 'POLO', 'CUIZON', 'FEMALE', '2001-01-11', 1, 1, 9487358538, 'ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(439, '2023-1-3082', 'MARK', 'OROYAN', 'MOLOS', 'MALE', '2001-10-03', 2, 1, 9709011601, 'MAGSAYSAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(440, '2023-1-3083', 'DIOSCE MAY', 'ESTILLORE', 'AUSTRAL', 'FEMALE', '2004-05-08', 1, 1, 9303055743, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(441, '2023-1-3084', 'PETER LLOYD', 'MIER', 'LIBRES', 'MALE', '2004-09-22', 2, 1, 9776391918, 'MINOL, MABINI, BOHOL', NULL, NULL, NULL, NULL),
(442, '2023-1-3085', 'MA. BELEN', 'TABIGUE', 'REYES', 'FEMALE', '2004-10-29', 1, 1, 9484495173, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(443, '2023-1-3086', 'BLESEL ', 'ERONICO ', 'GARCIA ', 'FEMALE', '2004-08-17', 1, 1, 9382420466, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(444, '2023-1-3087', 'JOSHUA', 'GUILLEN', 'LASAM', 'MALE', '2001-08-11', 2, 1, 9928491647, 'JANDAYAN NORTE, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(445, '2023-1-3088', 'GIAN', 'LEOLIGAO', 'GARCIA', 'MALE', '2004-11-22', 4, 1, 9935299429, 'MAHANAY, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(446, '2023-1-3089', 'JESTHEL', 'CASQUEJO', 'CAJES', 'FEMALE', '2005-07-04', 1, 1, 9104428753, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(447, '2023-1-3090', 'KHEN JAY ', '', 'ROSALES ', 'MALE', '2004-04-26', 1, 1, 9480416743, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(448, '2023-1-3091', 'RYN ALLYSON', 'SANCHEZ', 'EVARDO', 'FEMALE', '2004-12-28', 1, 1, 9353462573, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(449, '2023-1-3092', 'EDRIAN', 'NU?EZ', 'PEREZ', 'MALE', '2004-01-30', 1, 1, 9463458370, 'CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(450, '2023-1-3093', 'HARBIE', 'SANCHEZ', 'GARCIA ', 'MALE', '2005-04-20', 1, 1, 9505679102, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(451, '2023-1-3094', 'RHEA JANE', 'POLO', 'VALMORIA', 'FEMALE', '2004-06-13', 1, 1, 9702595899, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(452, '2023-1-3095', 'NOAH JAY', 'FERNANDER', 'ROSALES', 'MALE', '2003-11-01', 1, 1, 9943175209, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(453, '2023-1-3095', 'DALVE', 'CUERBO', 'SINGH', 'FEMALE', '2002-11-27', 4, 1, 9635345885, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(454, '2023-1-3096', 'MELGRES', 'OSMIL', 'CABIDO', 'FEMALE', '2004-11-11', 1, 1, 9670125032, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(455, '2023-1-3097', 'RODEL ', 'OROYAN ', 'FUENTES', 'MALE', '2002-03-01', 1, 1, 9954783512, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(456, '2023-1-3098', 'JOSEPH AL EMMANUEL', 'ESCARTIN', 'AMBA', 'MALE', '2005-04-28', 3, 1, 9926246896, 'P2, NUEVA ESTRELLA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(457, '2023-1-3099', 'JANDIE', 'OROYAN', 'BUTAL', 'MALE', '2004-08-08', 1, 1, 9705674995, 'MAGSAYSAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(458, '2023-1-3100', 'JOROSS', 'TAMPOS', 'SOCORIN', 'MALE', '2004-04-04', 1, 1, 9265868857, 'BURGOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(459, '2023-1-3101', 'JADE', 'BITOONAN ', 'PECHAN', 'MALE', '2004-02-16', 1, 1, 9503321757, 'RIZAL, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(460, '2023-1-3102', 'ROSE ANN', 'DAHILAN', 'CASUCOT', 'FEMALE', '2004-08-27', 1, 1, 9650490275, 'SAN FRANCSICO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(461, '2023-1-3103', 'MARNIE', 'TURTOGA', 'ASCENCION', 'FEMALE', '2004-11-06', 1, 1, 9050737378, 'TUNAAN DAKU, SIKATUNA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(462, '2023-1-3104', 'JUBELEN APRIL JOY', 'HONTANOSAS', 'JAO ', 'FEMALE', '2005-04-16', 1, 1, 9105074326, 'P4, SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(463, '2023-1-3105', 'JUBANIE', 'QUIROY', 'POQUITA', 'MALE', '2001-10-23', 2, 1, 9702228959, 'PINAMGO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(464, '2023-1-3106', 'RIECHEL', 'CUERBO', 'CAJES', 'FEMALE', '2002-11-10', 1, 1, 9158381154, 'P4, SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(465, '2023-1-3107', 'JOSELITO', 'MONDAYA', 'NICANOR', 'MALE', '1998-05-25', 2, 1, 9561402583, 'BAGACAY, TALIBON BOHOL', NULL, NULL, NULL, NULL),
(466, '2023-1-3108', 'LOVERN ACE', 'OGDANG', 'SUBSUBAN', 'MALE', '2004-02-01', 1, 1, 9128705286, 'MAHAYAG, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(467, '2023-1-3109', 'VIA MARIE', '', 'UY', 'FEMALE', '2000-07-07', 1, 1, 9676808213, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(468, '2023-1-3110', 'JOHN FRAN LEO', 'BAAY', 'FERNANDEZ', 'MALE', '2004-03-13', 1, 1, 9677989661, 'P2, DITA, CAMB. NORTE, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(469, '2023-1-3111', 'JYRAH', 'SOBRIO', 'AVERGONZADO', 'FEMALE', '2005-01-02', 3, 1, 9616508679, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(470, '2023-1-3112', 'GUIA CHRISTINE JANE', 'AGUHAR', 'NAVE', 'FEMALE', '2004-10-14', 1, 1, 9462491704, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(471, '2023-1-3113', 'JHANNA MAE', 'CASOYLA', 'MAGLASANG', 'FEMALE', '2005-01-29', 3, 1, 9661640665, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(472, '2023-1-3114', 'KIM JOHN PAUL', 'CAJES', 'CABILEZ', 'MALE', '2004-06-21', 3, 1, 9661672472, 'MAHANAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(473, '2023-1-3115', 'AIVAN GLENN', 'BUNO', 'FUROG', 'MALE', '2004-09-25', 1, 1, 9352115034, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(474, '2023-1-3116', 'JOHN REYMART', '', 'OROYAN', 'MALE', '2003-11-19', 1, 1, 9105036811, 'CANGMONDO, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(475, '2023-1-3117', 'MARNEL', 'AURESTILA', 'LOGAOS', 'MALE', '2003-01-12', 2, 1, 9064541642, 'POBLACION, DANAO, BOHOL', NULL, NULL, NULL, NULL),
(476, '2023-1-3118', 'JEREMY', 'AUTOR', 'CABER', 'FEMALE', '2005-04-25', 2, 1, 9462493966, 'PAG-ASA, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(477, '2023-1-3119', 'STEVEN', 'QUINLOG', 'ROSATASE', 'MALE', '2004-11-06', 1, 1, 9852604984, 'CATABAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(478, '2023-1-3120', 'RENSER ', 'TORREGOSA', 'OMBING ', 'MALE', '2005-06-30', 1, 1, 9380849619, 'SAN PEDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(479, '2023-1-3123', 'JEANLYDE', '', 'TORREFIEL', 'MALE', '2002-10-10', 1, 1, 9092990913, 'MAHANAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(480, '2023-1-3124', 'RENIL ', 'PACOMIOS', 'INOJALIS', 'MALE', '2004-07-13', 1, 1, 9361665170, 'MAGSAYSAY , TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(481, '2023-1-3125', 'REYMAR', 'REMORERAS', 'OMBAYAN ', 'MALE', '2005-10-17', 1, 1, 9359771879, 'MAGSAYSAY , TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(482, '2023-1-3126', 'CHRISTIAN JAY', 'MONSANTO', 'ROSALES', 'MALE', '2004-12-29', 1, 1, 9308222658, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(483, '2023-1-3127', 'ROZANIE', '', 'BORJA ', 'FEMALE', '2003-02-16', 5, 1, 9207909035, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(484, '2023-1-3128', 'JOVIT', 'BENJAMIN', 'CAJES', 'MALE', '2005-09-30', 5, 1, 9923902778, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(485, '2023-1-3129', 'JOHN BARTLEY', 'CAJES', 'INSO ', 'MALE', '2005-06-24', 1, 1, 9519976506, 'TANGHALIGUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(486, '2023-1-3130', 'RICKY JAY', 'DALIPE', 'GARCIA', 'MALE', '2003-11-06', 1, 1, 9096577500, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(487, '2023-1-3131', 'MERY CIELO', '', 'CUIZON', 'FEMALE', '2004-08-16', 3, 1, 9122468748, 'P3, ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(488, '2023-1-3132', 'JESSELMIE', 'BITOONAN', 'CORATO', 'FEMALE', '2004-06-06', 2, 1, 9307384675, 'P4, BURGOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(489, '2023-1-3133', 'RHONNIEMAE', 'MOSQUEDA', 'CREDO', 'FEMALE', '2004-09-26', 1, 1, 9502264135, 'P1, SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(490, '2023-1-3134', 'JHONREY', 'DARO', 'TORREON ', 'MALE', '2004-01-22', 1, 1, 9361666213, 'P6, SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(491, '2023-1-3135', 'MAEJOY', 'SAMPILO', 'BAYONAS', 'FEMALE', '2005-04-22', 5, 1, 9926264009, 'P7, TAGUM SUR, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(492, '2023-1-3136', 'PRINCESS ANGEL', 'BALTIMORE', 'MAQUILANG', 'FEMALE', '2005-12-01', 5, 1, 9198553876, 'P1, BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(493, '2023-1-3137', 'FRECELA', 'IDULSA', 'HAPAYAN', 'FEMALE', '2002-11-06', 2, 1, 9165375366, 'BONKOKAN, ILAYA, LILA, BOHOL', NULL, NULL, NULL, NULL),
(494, '2023-1-3138', 'CLARK KENT', 'RABADON', 'SANJORJO', 'MALE', '2004-06-19', 1, 1, 9380578981, 'CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(495, '2023-1-3139', 'LESTHER JEFF', '', 'PEREZ', 'MALE', '2004-12-10', 1, 1, 9488684560, 'CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(496, '2023-1-3140', 'RENA', 'TAMBAL', 'AUTENTICO', 'FEMALE', '2005-07-04', 5, 1, 9632716969, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(497, '2023-1-3141', 'MARY JOY', 'BANQUILLA', 'AUTENTICO', 'FEMALE', '2004-10-01', 5, 1, 9503849676, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(498, '2023-1-3143', 'MANILYN', 'GARCIA', 'TORREJAS', 'FEMALE', '1995-01-20', 1, 1, 9068205757, 'P6, SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(499, '2023-1-3144', 'BERNARD', 'BUNAOS', 'CAFE', 'MALE', '2000-06-30', 1, 1, 9658914800, 'P6, SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(500, '2023-1-3145', 'BERNIE', 'RAYNA ', 'SORIA ', 'MALE', '2005-06-10', 1, 1, 9554560511, 'P4, BALINTAWAK, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(501, '2023-1-3146', 'JOYCEDITO JR.', 'BABATID', 'CAJES', 'MALE', '2005-11-18', 1, 1, 9158380584, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(502, '2023-1-3147', 'CHINDY MARIE', 'ROSALES', 'ARTIAGA', 'FEMALE', '2004-08-24', 5, 1, 9261534228, 'P3, SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(503, '2023-1-3148', 'JOHN KENNETH', 'BACARRO', 'RAMOS', 'MALE', '2001-01-16', 1, 1, 9463603575, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(504, '2023-1-3149', 'GELMAR', 'BADAL ', 'BUNO ', 'MALE', '2002-08-27', 1, 1, 9487367599, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(505, '2023-1-3150', 'JUDYVEL', 'DUHAYLUNGSOD', 'BUTAL', 'FEMALE', '2004-09-20', 1, 1, 9161286571, 'ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(506, '2023-1-3151', 'MARIA BELYN', 'CUIZON', 'LABAN', 'FEMALE', '2003-11-10', 5, 1, 9709011815, 'P4, SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(507, '2023-1-3152', 'CRISTINE JOY', 'RAMOS', 'TRAGO', 'FEMALE', '2004-05-19', 1, 1, 9928238558, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(508, '2023-1-3153', 'LE ANN', 'SOCIAS', 'TRAGO', 'FEMALE', '2004-11-30', 1, 1, 9707586005, 'TUNAAN-DAKU, SIKATUNA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(509, '2023-1-3154', 'LORENCE', 'DIACOR', 'AVERGONZADO ', 'MALE', '2002-07-16', 1, 1, 9935979603, 'P4, SIKATUNA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(510, '2023-1-3155', 'AARON JOHN', 'CALISAY', 'TORREMOCHA', 'MALE', '2003-09-11', 1, 1, 9938684969, 'P3, SIKATUNA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(511, '2023-1-3157', 'EMERSON', 'DAGOOC', 'AUTIDA', 'MALE', '2005-03-19', 1, 1, 9463566559, 'P7, SIKATUNA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(512, '2023-1-3159', 'MAVHEL', '', 'AUXTERO', 'FEMALE', '1994-11-22', 3, 1, 9504204346, 'RIZAL, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(513, '2023-1-3160', 'MARTINA ', 'SUELLO', 'TORREON ', 'FEMALE', '1996-08-12', 1, 1, 9308596396, 'P1, SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(514, '2023-1-3161', 'JEANE', 'PEROCHO', 'AVENIDO', 'FEMALE', '2005-05-27', 1, 1, 9480032335, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(515, '2023-1-3162', 'ANGELIE', 'LANIVA', 'SOCIAS', 'FEMALE', '2004-07-31', 2, 1, 9935300105, 'HANDUMAN, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(516, '2023-1-3163', 'JOVIE ANN', 'BOTERO', 'MAHILUM', 'FEMALE', '2004-02-01', 2, 1, 9085824470, 'JANDAYAN SUR, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(517, '2023-1-3164', 'MAE ANN', 'GUACA', 'CASQUEJO', 'FEMALE', '2003-07-20', 1, 1, 9942350242, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(518, '2023-1-3165', 'ARGEN', 'BAGUIO', 'AURESTILA', 'MALE', '2004-03-15', 1, 1, 9859074080, 'SIKATUNA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(519, '2023-1-3167', 'JEVEN', 'SASTRILLAS', 'VILLAS ', 'MALE', '2004-12-26', 1, 1, 9358517646, 'HINGOTANAN WEST, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(520, '2023-1-3169', 'VINCE', 'MEJASCO', 'NU?EZ', 'MALE', '2002-01-06', 2, 1, 9935300105, 'JANDAYAN SUR, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(521, '2023-1-3170', 'MARK KEVIN', 'PASADAS', 'AUTENTICO', 'MALE', '2003-06-18', 1, 1, 9952970718, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(522, '2023-1-3171', 'ROGER', 'CARAMIHAN', 'RODRIGUEZ JR.', 'MALE', '2003-04-16', 1, 1, 9939391577, 'P1, SIKATUNA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(523, '2023-1-3172', 'MARK JHON', 'CADORNA', 'BUNO', 'MALE', '2004-03-31', 1, 1, 9532231946, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(524, '2023-1-3173', 'NICKA', '', 'HINLAYAGAN', 'FEMALE', '2003-09-13', 4, 1, 9959615264, 'HINLAYAGAN ILAYA, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(525, '2023-1-3174', 'KLINT JAMES ', 'TORREFIEL ', 'FLORES ', 'MALE', '2004-08-13', 1, 1, 9463403855, 'MAHANAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(526, '2023-1-3175', 'ARGELO', 'JAO', 'ESCARTIN', 'MALE', '2004-04-10', 1, 1, 9943179846, 'ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(527, '2023-1-3175', 'MARy JOY', 'GUPITA', 'ROSALES', 'FEMALE', '2004-12-09', 4, 1, 9926343701, 'HINLAYAGAN ILAYA, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(528, '2023-1-3176', 'RONAVIE', 'DUTOSME', 'GARCIA', 'FEMALE', '2004-05-11', 2, 1, 9388072317, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(529, '2023-1-3177', 'MENDEL LISTER ', 'FLORES ', 'CADORNA ', 'MALE', '2004-02-19', 1, 1, 9358504437, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(530, '2023-1-3178', 'ROGEN', 'POLESTICO', 'CADORNA', 'MALE', '2003-11-03', 1, 1, 9480006786, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(531, '2023-1-3179', 'MARJORIE', 'GANSINO', 'TUBO', 'FEMALE', '2003-03-22', 4, 1, 905226922, 'BONGBONG, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(532, '2023-1-3180', 'SHEAN RUSSEL', 'POGOY', 'ANESLAGON', 'MALE', '2005-04-30', 1, 1, 9661640592, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(533, '2023-1-3181', 'JAMES EARL ', 'ESTIOLA ', 'MELENDRES', 'MALE', '2004-08-27', 1, 1, 9391547374, 'P4, SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(534, '2023-1-3182', 'CHARLES BRYLL', 'SUPAS', 'COLICO', 'MALE', '2004-11-23', 2, 1, 9679264415, 'CABATUAN, DANAO, BOHOL', NULL, NULL, NULL, NULL),
(535, '2023-1-3183', 'KURT JOHN', '', 'ANESLAGON', 'MALE', '2004-12-07', 1, 1, 9674195121, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(536, '2023-1-3183', 'SHERWIN ', 'ERONICO ', 'RODRIGUEZ', 'MALE', '2005-02-22', 1, 1, 9263412988, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(537, '2023-1-3184', 'ROBEL REY', 'TIMBAL', 'FORTUNA', 'MALE', '2000-09-24', 3, 1, 9304864783, 'CASATE, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(538, '2023-1-3186', 'JOHN MARK', 'CUTAS', 'FERRER', 'MALE', '2004-10-12', 1, 1, 9358900898, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(539, '2023-1-3187', 'KYLLE JUSTINE ', 'AUZA', 'DERESAS', 'MALE', '2005-02-22', 1, 1, 9065568391, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(540, '2023-1-3188', 'AMIL REY', 'SOCIAS', 'RODRIGUEZ', 'MALE', '2004-03-09', 1, 1, 9668577496, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(541, '2023-1-3189', 'JONBEL', 'AVENIDO ', 'AUTENTICO', 'MALE', '2005-04-12', 1, 1, 9385989085, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(542, '2023-1-3190', 'EDRYL MAR ', 'JAO ', 'AVANZADO ', 'MALE', '2004-03-23', 1, 1, 9759605893, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(543, '2023-1-3191', 'ARIEL', 'FUROG', 'AUTENTICO', 'MALE', '1998-11-10', 1, 1, 9128673834, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(544, '2023-1-3192', 'MYLENE', 'ARNADO ', 'TORREJOS', 'FEMALE', '2004-09-17', 1, 1, 9070545243, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(545, '2023-1-3194', 'JOHN NOEL', 'DELIMA', 'VILLAVER', 'MALE', '2003-12-03', 1, 1, 9380806771, 'NOCNOCAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(546, '2023-1-3195', 'CHARLS ', 'CABE ', 'CASOYLA ', 'MALE', '2004-09-22', 1, 1, 9934124986, 'SUBA, JAO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(547, '2023-1-3196', 'PETER PAUL', 'BACANE', 'POLESTICO', 'MALE', '2004-06-29', 4, 1, 9507896341, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(548, '2023-1-3196', 'RYAN', 'FUENTES', 'RODRIGUEZ', 'MALE', '2004-09-13', 4, 1, 9978665291, 'P1, ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(549, '2023-1-3197', 'CHRISTIAN', 'CEREMONES', 'MONDOC', 'MALE', '2004-06-25', 1, 1, 9261525848, 'BUTAN, PRES.CPG, BOHOL', NULL, NULL, NULL, NULL),
(550, '2023-1-3198', 'JOBELLE MARIE ', 'EVARDO ', 'PASADAS', 'FEMALE', '2004-03-29', 1, 1, 9850946049, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(551, '2023-1-3199', 'JAYCEL', 'SALAMANCA', 'EVARDO', 'FEMALE', '2005-09-11', 1, 1, 9678461062, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(552, '2023-1-3200', 'JASMINE MARY ', 'DABASOL ', 'JULIO ', 'FEMALE', '2004-07-03', 1, 1, 9054887224, 'PINAMGO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(553, '2023-1-3201', 'JAN MAE', 'OMIT', 'GURNE', 'FEMALE', '2005-01-11', 1, 1, 9938405016, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(554, '2023-1-3202', 'JAY-R', 'GARCIA ', 'EVARDO ', 'MALE', '2003-09-17', 1, 1, 9309877542, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(555, '2023-1-3203', 'JENARD', 'AUGUIS', 'NGOHO', 'MALE', '2004-08-14', 1, 1, 9102983014, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(556, '2023-1-3204', 'JAMES ADRIAN', '', 'EVARDO', 'MALE', '2004-05-12', 2, 1, 9099926752, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(557, '2023-1-3205', 'JHON LLOYD', 'GARCIA', 'ROLEDA', 'MALE', '2002-12-23', 2, 1, 9126269885, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(558, '2023-1-3206', 'MA. TERESITA', 'WAMAR', 'TORREON', 'FEMALE', '2002-12-13', 1, 1, 9489752216, 'BANSAN, SAG, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(559, '2023-1-3207', 'JUDISA', 'CAMPOS', 'TORRETA', 'FEMALE', '2001-03-11', 1, 1, 9635345694, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(560, '2023-1-3208', 'JASMINE', 'POCSON', 'LUGAO', 'FEMALE', '2003-10-07', 5, 1, 9092274859, 'P3, BONGBONG, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(561, '2023-1-3209', 'NESTOR JR.', 'ECAT', 'BALDOMAN', 'MALE', '1994-07-08', 5, 1, 9074174656, 'P2, POBLACION, DAGOHOY, BOHOL', NULL, NULL, NULL, NULL),
(562, '2023-1-3210', 'RISHEALJEAN', 'HIOCO', 'AULESTIA', 'FEMALE', '2003-10-21', 3, 1, 9380770268, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(563, '2023-1-3210', 'ROSE ANN', 'TORREMOCHA', 'TORRETA', 'FEMALE', '2005-03-11', 1, 1, 9918785996, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(564, '2023-1-3211', 'MARK JEPRIL', 'RAMIS', 'BAGTONG', 'MALE', '2005-04-10', 2, 1, 9653203419, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(565, '2023-1-3212', 'MYLAINE', 'PETALCORIN', 'EVARDO', 'FEMALE', '2002-07-06', 1, 1, 9214196318, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(566, '2023-1-3213', 'GUENEY MARIE', 'MONTALDO', 'ASANE', 'FEMALE', '2004-02-26', 1, 1, 9706281573, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(567, '2023-1-3214', 'ZAIRA', 'BONCALES', 'OTARRA', 'FEMALE', '2003-11-03', 1, 1, 9077369525, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(568, '2023-1-3215', 'MAYLIN', 'TORREJAS', 'LUMICTIN', 'FEMALE', '2005-05-16', 1, 1, 9511300779, 'RIZAL, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(569, '2023-1-3216', 'ARMA MAE', 'RODRIGO', 'TAMPOS', 'FEMALE', '2003-07-05', 1, 1, 9705641376, 'BURGOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(570, '2023-1-3217', 'JOHN ERIC ', 'LOFRANCO ', 'EVARDONE', 'MALE', '2004-07-12', 1, 1, 9855086518, 'SAN PEDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(571, '2023-1-3218', 'NI?O REY', 'CARREON', 'RINGCONADA', 'MALE', '2004-07-11', 2, 1, 9501279100, 'TAGUM NORTE, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(572, '2023-1-3219', 'RAMIR', 'AVERGONZADO', 'PATUNGAN JR.', 'MALE', '2004-12-30', 1, 1, 9504764194, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(573, '2023-1-3220', 'KYLA ABEGAIL', 'GARCIA ', 'CREDO ', 'FEMALE', '2004-09-11', 1, 1, 9509993724, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(574, '2023-1-3220', 'BILLY JOHN', 'AVERGONZADO', 'PATUNGAN', 'MALE', '2003-02-13', 1, 1, 9706281312, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(575, '2023-1-3221', 'RJ LYNN', 'ROSALES', 'BALAG', 'FEMALE', '2005-02-10', 2, 1, 9308264653, 'FATIMA, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(576, '2023-1-3222', 'JHON MARK', 'PETALCORIN', 'RODAS', 'MALE', '2004-11-05', 1, 1, 9636930023, 'PINAMGO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(577, '2023-1-3223', 'ROSE VILL', 'LAPASTORA', 'POLESTICO ', 'FEMALE', '2005-02-04', 1, 1, 9813902098, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(578, '2023-1-3224', 'JENDY ROSE', 'CABILLO', 'CALINAWAN', 'FEMALE', '2004-07-03', 1, 1, 9217995281, 'CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(579, '2023-1-3225', 'JOSEL MAY', 'CASENILLAS', 'CALABRIA', 'FEMALE', '2003-05-10', 1, 1, 9978470905, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(580, '2023-1-3225', 'MARVI JOY', 'MIRADORES', 'RABADON', 'FEMALE', '2002-11-18', 1, 1, 9691467596, 'CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(581, '2023-1-3226', 'RONBEL', 'ROTOMO', 'TONGCO', 'MALE', '2004-06-29', 4, 1, 9958838259, 'NOCNOCAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(582, '2023-1-3227', 'MA. ANA', 'HINAMPAS', 'ABA?O', 'FEMALE', '2004-12-19', 1, 1, 9638730892, 'BAANSAN, SAG, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(583, '2023-1-3227', 'KENNETH', 'CRESCENCIO', 'AUTENTICO', 'MALE', '2003-01-26', 4, 1, 9670143045, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(584, '2023-1-3228', 'LIEZEL', 'MARZON', 'AVENIDO', 'FEMALE', '1983-08-10', 2, 1, 9103762497, 'P6, NUEVA ESTRELLA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(585, '2023-1-3229', 'JASPER MCKINLY', 'MILO', 'AVENIDO', 'MALE', '2005-01-01', 2, 1, 9352603160, 'TUBOG, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(586, '2023-1-3230', 'MA. VERONICA ', 'HINAMPAS', 'ABA?O', 'FEMALE', '2000-09-16', 1, 1, 9382670127, 'BAANSAN, SAG, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(587, '2023-1-3231', 'GELLIETH MAE', '', 'LOFRANCO ', 'FEMALE', '2004-05-16', 3, 1, 9359897224, 'SAN VICENTE, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(588, '2023-1-3232', 'JOANNAH LEE', 'EVALAROZA', 'LACABA', 'FEMALE', '2004-07-05', 1, 1, 9661640284, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(589, '2023-1-3233', 'JHONY', 'PELENIA', 'PADILLO', 'MALE', '2004-06-08', 1, 1, 963129680, 'CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(590, '2023-1-3234', 'ROMER ', 'FERNAN', 'QUERVO ', 'MALE', '2004-07-02', 1, 1, 9380578979, 'CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(591, '2023-1-3236', 'ALBERT ', '', 'LUGOD', 'MALE', '2001-04-19', 1, 1, 9703858362, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(592, '2023-1-3237', 'JON ALFRED', 'ARBASTO', 'EVARDO', 'MALE', '2003-09-20', 1, 1, 9093842033, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(593, '2023-1-3238', 'CHRIS JORENZ', 'CONDE', 'GARCIA', 'MALE', '2004-12-18', 2, 1, 9925711556, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(594, '2023-1-3239', 'MA. MAY ', 'ABENDAN ', 'MEJIAS ', 'FEMALE', '2004-05-09', 1, 1, 9305292853, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(595, '2023-1-3240', 'LARA SHAYNE', 'OMPAD', 'SERE', 'FEMALE', '2004-09-13', 1, 1, 9634503515, 'CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(596, '2023-1-3241', 'GERALDINE', 'DOLOSO', 'LOFRANCO', 'FEMALE', '1998-01-16', 3, 1, 9128834613, 'SAN PEDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(597, '2023-1-3241', 'MA. CONCEPCION', 'NUEZ', 'POLESTICO ', 'FEMALE', '2004-12-08', 1, 1, 9928636250, 'P6, HINLAYAGAN ILAUD, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(598, '2023-1-3242', 'JONALIE', 'JIMENEZ', 'LUMICTIN ', 'FEMALE', '2003-06-27', 5, 1, 9703858683, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(599, '2023-1-3243', 'KARYLLE JANE', 'CRUZ', 'OTARRA', 'FEMALE', '2004-09-28', 1, 1, 9306764341, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(600, '2023-1-3244', 'SHERWIN', 'PELENIA', 'OBE?A', 'MALE', '2005-05-22', 3, 1, 9859471815, 'CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(601, '2023-1-3245', 'ALTHEA', 'BABATID', 'CREDO', 'FEMALE', '2003-12-19', 2, 1, 9122761597, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(602, '2023-1-3246', 'JAY CRISTIAN', 'AUXTERO', 'EVANGELISTA', 'MALE', '2000-06-06', 1, 1, 9358527944, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(603, '2023-1-3247', 'ROSEMARIE', 'CAJES', 'LUMICTIN', 'FEMALE', '2000-08-26', 5, 1, 9704541364, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(604, '2023-1-3248', 'JERALIE', 'LARGO', 'ABESIA', 'FEMALE', '2003-05-29', 1, 1, 9706505456, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(605, '2023-1-3249', 'JYN', 'CAIBIGAN', 'AUXTERIACO', 'FEMALE', '2005-01-08', 5, 1, 9556321300, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(606, '2023-1-3250', 'LORIE JANE ', '', 'TORREON ', 'FEMALE', '2000-11-07', 1, 1, 9128778966, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(607, '2023-1-3251', 'JENELOU', 'TORREON', 'PA?ARES', 'FEMALE', '2003-11-06', 1, 1, 9633836037, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(608, '2023-1-3251', 'FRANCIS', 'MATIVO', 'CAGAMPANG', 'MALE', '2003-07-05', 2, 1, 9708017223, 'P4, BONGBONG, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(609, '2023-1-3252', 'JEANELLE', 'ROSALES', 'BUTAL', 'FEMALE', '2004-10-20', 2, 1, 9268125958, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(610, '2023-1-3253', 'CRISTINE JANE ', 'PATOC ', 'CABASAN', 'FEMALE', '2004-09-20', 1, 1, 9707764814, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(611, '2023-1-3254', 'JESSAME', 'BITOONAN', 'VALMORIA', 'FEMALE', '2005-05-21', 1, 1, 9388098856, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(612, '2023-1-3255', 'JOSEPH', '', 'FLORES', 'MALE', '2003-10-21', 1, 1, 9676818370, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(613, '2023-1-3256', 'RACHELLE ANN', 'SANTILLANA', 'YAHYA', 'FEMALE', '2004-08-18', 3, 1, 9854989224, 'MOTO SUR, LOON, BOHOL', NULL, NULL, NULL, NULL),
(614, '2023-1-3257', 'CRISTINA', 'MEQUELLO', 'TORRENUEVA', 'FEMALE', '2004-12-14', 1, 1, 9385289162, 'C.P.G., GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(615, '2023-1-3258', 'ANGEL ', 'FLORES ', 'CUIZON ', 'FEMALE', '2002-09-08', 1, 1, 9105001132, 'SAN VICENTE', NULL, NULL, NULL, NULL),
(616, '2023-1-3260', 'MARY JANE', 'AMARILLE', 'CORDOBIS', 'FEMALE', '2004-12-16', 3, 1, 9851333851, 'P7, BURGOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(617, '2023-1-3261', 'NI?O RICO', 'AUGUIS', 'AUXTERO', 'MALE', '2005-01-17', 1, 1, 9303359119, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(618, '2023-1-3262', 'JAMES ALFRED', 'LISO', 'NOGADAS', 'MALE', '2005-05-30', 1, 1, 9358504452, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(619, '2023-1-3263', 'JONATHAN ', 'TERO ', 'FUENTES', 'MALE', '2004-10-09', 1, 1, 9269459442, 'SAN VICENTE, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(620, '2023-1-3264', 'JOSEPH', 'MEJASCO', 'ALCOSER', 'MALE', '2003-09-17', 2, 1, 9938426132, 'JANDAYAN NORTE, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(621, '2023-1-3265', 'JHON FIELD', 'ARANEZ', 'GALINGGALING', 'MALE', '2004-07-28', 1, 1, 9638751292, 'P4, SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(622, '2023-1-3266', 'JAY VERSON', 'HUMOC', 'APARRE', 'MALE', '2004-05-18', 1, 1, 9852700983, 'P2, SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(623, '2023-1-3267', 'JEFFERSON', 'DEOCARIZA', 'TURTOGA', 'MALE', '2004-04-21', 1, 1, 9929842040, 'MAGSAYSAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(624, '2023-1-3268', 'PERDIEL', 'EGARGUIN', 'ESTORPE', 'MALE', '2003-08-29', 1, 1, 9107679142, 'LILOAN NORTE, INABANGA, BOHOL', NULL, NULL, NULL, NULL),
(625, '2023-1-3269', 'MARY JANE', 'PETALCORIN', 'VALMORIA', 'FEMALE', '1997-11-19', 3, 1, 9636551864, 'PINAMGO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(626, '2023-1-3270', 'JOY', 'BARRIENTOS', 'VALMORES ', 'FEMALE', '2004-06-08', 1, 1, 9070110969, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(627, '2023-1-3271', 'DIAN ELIZABETH ', 'ZAMORA', 'TEVES', 'FEMALE', '1996-09-27', 5, 1, 9569713256, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(628, '2023-1-3272', 'JOSHUA', 'GUEVARRA', 'CAJES', 'MALE', '2004-01-25', 5, 1, 9925547409, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(629, '2023-1-3273', 'IVY', 'ALFEREZ', 'SOTOMAYOR', 'FEMALE', '2003-11-25', 5, 1, 9638755581, 'SAN ANTONIO, SAGBAYAN, BOHOL', NULL, NULL, NULL, NULL),
(630, '2023-1-3274', 'NI?O', 'VISTAL', 'TORREON', 'MALE', '2005-05-19', 1, 1, 9658742377, 'LILOAN NORTE, INABANGA, BOHOL', NULL, NULL, NULL, NULL),
(631, '2023-1-3275', 'KEN', 'TORRES', 'LUBRICO', 'MALE', '2004-03-26', 4, 1, 9854248654, 'NUEVA ESPERANZA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(632, '2023-1-3276', 'NI?A MARIE', 'AVENIDO', 'HAYAHAY', 'FEMALE', '2004-01-18', 1, 1, 9636929228, 'NUEVA ESPERANZA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(633, '2023-1-3277', 'MA. NOIME', 'BUCOD', 'ROMERO', 'FEMALE', '2005-05-19', 1, 1, 9816327472, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(634, '2023-1-3278', 'LOIDA', 'AVENIDO', 'AVERGONZADO', 'FEMALE', '2005-07-30', 1, 1, 9701184793, 'NUEVA ESPERANZA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(635, '2023-1-3279', 'JUDAH IRISH', '', 'TORREFIEL', 'FEMALE', '2003-06-06', 1, 1, 9634932573, 'CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(636, '2023-1-3280', 'JHON MARK ', 'PASADAS', 'QUIMSON', 'MALE', '2002-01-04', 1, 1, 9096124227, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(637, '2023-1-3281', 'ERICA', 'BOLOHABO', 'CAMACHO', 'FEMALE', '2003-02-07', 1, 1, 9267627181, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(638, '2023-1-3282', 'KEAN LESTER ', 'AUTENTICO', 'AUGUIS', 'MALE', '2023-07-10', 4, 1, 9500217613, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(639, '2023-1-3283', 'JANINE VANCH', 'TORREON', 'PALING', 'FEMALE', '2005-01-29', 1, 1, 9556321400, 'MAHANAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(640, '2023-1-3284', 'OMAR', 'POLESTICO', 'BORJA', 'MALE', '2001-05-27', 2, 1, 9507435633, 'ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(641, '2023-1-3285', 'MARK CHRISTIAN ', 'SANCHEZ', 'SUBSUBAN', 'MALE', '2003-12-25', 1, 1, 9382445579, 'CAGAWITAN, DAGOHOY, BOHOL', NULL, NULL, NULL, NULL),
(642, '2023-1-3286', 'JOANA ROSE', 'DUNGOL', 'CAPOTE', 'FEMALE', '2004-07-06', 1, 1, 9938405149, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(643, '2023-1-3287', 'RANDY', 'GORILLO', 'SUBSUBAN', 'MALE', '2000-11-15', 1, 1, 9073345730, 'CAGAWITAN, DAGOHOY, BOHOL', NULL, NULL, NULL, NULL),
(644, '2023-1-3288', 'REZEL JANE', 'GARCIA', 'CUER', 'FEMALE', '2004-09-26', 1, 1, 9302320102, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(645, '2023-1-3289', 'JASMEN', 'PUEBLO', 'BOVIER', 'FEMALE', '2003-12-10', 1, 1, 9487347452, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(646, '2023-1-3289', 'JUNELLE', 'BACAYO', 'QUIMSON', 'MALE', '2003-01-01', 2, 1, 9169621841, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(647, '2023-1-3290', 'DEXTER ', 'SEISMUNDO ', 'BAAY', 'MALE', '2000-06-18', 1, 1, 9507642194, 'CAGAWITAN, DAGOHOY, BOHOL', NULL, NULL, NULL, NULL),
(648, '2023-1-3291', 'CLEIN LORDWILL', 'JOSE', 'SURIGAO', 'MALE', '2004-10-17', 4, 1, 96863535340, 'P6, PUERTO SAN PEDRO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(649, '2023-1-3292', 'JESSA MAE', 'MOLLEJON', 'SEVILLETA', 'MALE', '2001-02-20', 3, 1, 9361672599, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(650, '2023-1-3294', 'JUNARD', 'OROYAN', 'CREDO', 'MALE', '2000-08-25', 1, 1, 9169623413, 'P6, ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(651, '2023-1-3295', 'JUNIELLE', 'EVALLE', 'EVANGELISTA', 'MALE', '2003-05-11', 1, 1, 9096124227, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(652, '2023-1-3296', 'CHRISTIAN', 'QUERIADO', 'ALBORES', 'MALE', '2004-12-15', 2, 1, 9706285271, 'TUBOG, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(653, '2023-1-3297', 'RUBELYN', 'AUXTERO', 'GARCIA', 'FEMALE', '2004-10-05', 3, 1, 9639017529, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(654, '2023-1-3298', 'JOHN LLOYD', 'POSTANES', 'GARCIA', 'MALE', '2004-10-07', 2, 1, 9505486774, ' TUBOG, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(655, '2023-1-3299', 'GENESIS', 'ORAPA', 'EVALAROZA', 'MALE', '2003-11-25', 1, 1, 9701933322, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(656, '2023-1-3300', 'ALAYSA MAE', 'POLO', 'BITUIN', 'FEMALE', '2005-03-25', 4, 1, 9637745924, 'P2 BUNSO, SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(657, '2023-1-3301', 'MARIEL', 'FUENTES', 'ALPAS', 'FEMALE', '2004-12-31', 3, 1, 9707756600, 'SAN VICENTE, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(658, '2023-1-3302', 'METCH MELODY', 'PEDIDA', 'RAMOS', 'FEMALE', '2004-10-31', 5, 1, 9695423171, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(659, '2023-1-3303', 'MARK JOSEPH', '', 'AUXTERIACO ', 'MALE', '2003-10-18', 1, 1, 9151963803, 'P4, SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(660, '2023-1-3304', 'KATE LYKA', 'AUTENTICO', 'AUXILIO', 'FEMALE', '2005-04-16', 3, 1, 9070136412, 'P5, STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(661, '2023-1-3306', 'JAMEIKA', 'LAURDEN', 'FUROG', 'FEMALE', '2004-09-11', 3, 1, 9265058619, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(662, '2023-1-3307', 'CHARLESA JOANA', 'OPAMIN', 'LANOY', 'FEMALE', '2004-09-14', 1, 1, 9078849050, 'KABASACAN, SAGBAYAN, BOHOL', NULL, NULL, NULL, NULL),
(663, '2023-1-3308', 'EDUARDO JR.', 'AUXTERO', 'MONDAGA', 'MALE', '2002-11-10', 2, 1, 9693670436, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(664, '2023-1-3309', 'ANGEL ANN ', 'AMOR', 'MEJASCO', 'FEMALE', '2005-05-27', 1, 1, 9504726296, 'JANDAYAN NORTE, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(665, '2023-1-3310', 'JASPER', 'DEVILLERES', 'PAREJA', 'MALE', '2003-03-20', 3, 1, 9567147520, 'BALINTAWAK, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(666, '2023-1-3311', 'JANNINE IVY', '', 'POLO', 'FEMALE', '2004-05-16', 5, 1, 9358733219, 'P2 BUNSO, SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(667, '2023-1-3312', 'RAYMOND', 'SOCOBOS', 'DALAPO', 'MALE', '2002-01-01', 1, 1, 9851333876, 'RIZAL, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(668, '2023-1-3313', 'DEJEAN', 'AVENIDO', 'OPONDA', 'FEMALE', '2005-04-16', 3, 1, 9505402447, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(669, '2023-1-3314', 'GODAIVA', 'MADRID', 'CA?AS', 'FEMALE', '2004-12-06', 1, 1, 9486805629, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(670, '2023-1-3315', 'CARYL FLOR', 'BALUNDO', 'OSMIL', 'MALE', '1999-04-25', 4, 1, 9554905532, ' P4, SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(671, '2023-1-3316', 'MARY JEAN', 'POLESTICO', 'NABE', 'FEMALE', '2005-09-29', 2, 1, 9389311420, 'BAGO, BUENAVISTA, BOHOL', NULL, NULL, NULL, NULL);
INSERT INTO `students` (`id`, `studentNo`, `firstName`, `middleName`, `lastName`, `sex`, `birthdate`, `courseID`, `yearLevelID`, `contactNo`, `address`, `photo`, `archive`, `created_at`, `updated_at`) VALUES
(672, '2023-1-3319', 'PATRICK', 'ANDAGAN', 'OSMIL', 'MALE', '2001-11-27', 4, 1, 9486323134, 'P4, SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(673, '2023-1-3320', 'RAMCESS', 'GALIENDO', 'RABADON', 'MALE', '2002-01-11', 1, 1, 9264635844, 'CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(674, '2023-1-3321', 'ERICH DIANE', 'AUTIDA', 'MARONE ', 'FEMALE', '2005-10-18', 1, 1, 9462521146, 'SAN PEDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(675, '2023-1-3322', 'VINCENT', 'GALANIDO', 'AUXTERO', 'MALE', '2002-12-22', 1, 1, 9456801545, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(676, '2023-1-3324', 'JUREYN', 'CABASAG', 'ROSALES', 'MALE', '2004-06-30', 2, 1, 9507608182, 'NUEVA ESPERANZA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(677, '2023-1-3326', 'LAUREN', 'LAGUROS ', 'POLESTICO ', 'MALE', '2001-03-24', 1, 1, 9519308451, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(678, '2023-1-3327', 'JELBERT', 'GARING', 'AVENIDO', 'MALE', '2001-07-27', 1, 1, 9504772390, 'SAN VICENTE, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(679, '2023-1-3328', 'RONIEL', 'AUXTERO', 'MAGSAYO', 'MALE', '2000-10-26', 1, 1, 9169612343, 'P2, SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(680, '2023-1-3329', 'YASMIN', 'POLINAR', 'GARCIA', 'FEMALE', '2003-12-28', 5, 1, 9947542966, 'P3, MANGA WEST, MANDAWA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(681, '2023-1-3330', 'ANGELENE', 'TORREFIEL', 'FERRER', 'FEMALE', '2002-09-22', 1, 1, 9632716577, 'RIZAL, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(682, '2023-1-3331', 'DIANA MAE', 'TABAR', 'MUMAR', 'FEMALE', '2003-05-03', 1, 1, 9701223470, 'SAN ISIDRO, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(683, '2023-1-3332', 'MARY CLER ', 'OMBING', 'AUTENTICO ', 'FEMALE', '2005-10-24', 1, 1, 9487331615, 'SAN PEDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(684, '2023-1-3333', 'BRANDO', 'TABAR', 'HOYLE', 'MALE', '2003-10-09', 1, 1, 9632702250, 'SAN ISIDRO, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(685, '2023-1-3334', 'APOLINARIO', 'COMPENDIO', 'AURIT, JR.', 'MALE', '2003-08-12', 3, 1, 9505436542, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(686, '2023-1-3335', 'MARINO', 'POLESTICO', 'GURREA', 'MALE', '1998-05-07', 1, 1, 9073173249, 'P4, SITIO PANABANG, SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(687, '2023-1-3336', 'RANDY', 'RAMOS', 'AUTENTICO ', 'MALE', '2004-11-19', 1, 1, 9358733486, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(688, '2023-1-3337', 'MELVIN', 'MELECIO', 'AGUHAR', 'MALE', '2004-02-14', 1, 1, 9389059001, 'P6, POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(689, '2023-1-3338', 'RENDILL', 'CALINAWAN', 'PA?ARES', 'MALE', '2005-02-21', 1, 1, 9507859714, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(690, '2023-1-3339', 'MARK JAYSON', 'ORIOQUE', 'CAJES', 'MALE', '2005-01-17', 4, 1, 9507610507, 'KINAN-OAN, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(691, '2023-1-3340', 'REXIS', 'PAULIN', 'TANGPOS', 'MALE', '1999-03-28', 1, 1, 9701221255, 'MACAAS, TUBIGON, BOHOL', NULL, NULL, NULL, NULL),
(692, '2023-1-3341', 'LESTER', 'MEJIAS', 'EVANGELISTA ', 'MALE', '2004-05-23', 1, 1, 9097759563, 'GUNDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(693, '2023-1-3342', 'NOVIE LYCKA', 'MACAN', 'YABO', 'FEMALE', '2002-07-23', 2, 1, 9480535371, 'NUEVA ESTRELLA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(694, '2023-1-3343', 'ALLIEN', 'OLAGUER', 'BUMAYA', 'MALE', '2005-07-27', 1, 1, 9813901864, 'SAN JOSE, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(695, '2023-1-3344', 'JANES ', 'APARICIO', 'BUNADO ', 'FEMALE', '2004-07-05', 1, 1, 9702238868, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(696, '2023-1-3345', 'CRISLYN JOY', 'CAMANSO', 'CUYACOT', 'FEMALE', '2005-08-21', 2, 1, 9518991770, 'NUEVA ESTRELLA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(697, '2023-1-3346', 'MIKE JOEY', 'BUMAYA', 'GARAY', 'MALE', '2005-05-02', 1, 1, 9507439014, 'SAN JOSE, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(698, '2023-1-3347', 'CINDEE', 'YAMUTA', 'NUCALAN', 'FEMALE', '2005-06-12', 3, 1, 9099688249, 'SUNNYBROOK, POBLACION, ALICIA, BOHOL', NULL, NULL, NULL, NULL),
(699, '2023-1-3348', 'AYLA', 'MILLANES', 'AUTENTICO', 'FEMALE', '2004-06-09', 1, 1, 9936129685, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(700, '2023-1-3349', 'MELVIN', 'TAMPOS', 'ARCALES', 'MALE', '2005-02-23', 4, 1, 9362895042, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(701, '2023-1-3350', 'JERALYN', 'COMPENDIO', 'LANDAO', 'FEMALE', '2004-05-13', 1, 1, 9384700304, 'HAGBUYO, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(702, '2023-1-3351', 'LISA MAE ', 'HINAMPAS', 'AVENIDO ', 'FEMALE', '2004-10-21', 1, 1, 9504171509, 'SAN JOSE, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(703, '2023-1-3352', 'GERALDINE', 'RICAFORT', 'GAUM', 'FEMALE', '2004-12-01', 1, 1, 9308925878, 'SAN ISIDRO, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(704, '2023-1-3353', 'KENJAY', 'RUIZ', 'CASUCOT', 'MALE', '2005-03-26', 1, 1, 9358731937, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(705, '2023-1-3354', 'RAFFY', 'LOGRO?O', 'FINEZA', 'MALE', '2004-06-21', 1, 1, 9559837489, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(706, '2023-1-3355', 'STEPHEN', 'ABELLAR', 'RODRIGUEZ', 'MALE', '2003-09-11', 1, 1, 9503772739, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(707, '2023-1-3356', 'KLENT EMMANUEL', 'MESADA', 'AUZA', 'MALE', '2005-02-17', 1, 1, 9503426794, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(708, '2023-1-3357', 'JOSHUA', 'SOBRIO ', 'DE LA CERNA', 'MALE', '2004-08-10', 1, 1, 9516421602, 'NUEVA ESPERANZA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(709, '2023-1-3358', 'KERWIN', 'CABRERA', 'AUGUIS', 'MALE', '2004-08-25', 1, 1, 9703856838, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(710, '2023-1-3359', 'JUSTINE', 'POLESTICO', 'AUTENTICO', 'MALE', '2004-08-28', 4, 1, 9651465259, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(711, '2023-1-3360', 'ARTH', 'AGUDO ', 'VALMORIA ', 'MALE', '2003-09-19', 1, 1, 9091633819, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(712, '2023-1-3361', 'MYRA', 'AUGUIS', 'TORREJOS', 'FEMALE', '2005-02-13', 1, 1, 9166823888, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(713, '2023-1-3363', 'MECHEIL', 'RAMOS ', 'AUXTERO', 'FEMALE', '2002-08-16', 1, 1, 9949358224, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(714, '2023-1-3364', 'LAICA', '', 'CAMACHO', 'FEMALE', '2004-08-29', 1, 1, 9702982429, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(715, '2023-1-3365', 'MERRY JOY', 'CABILLA', 'BONGALOS', 'FEMALE', '1999-08-06', 1, 1, 9926330522, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(716, '2023-1-3366', 'ELISA MAE ', 'LUDIVESE', 'AUZA', 'FEMALE', '2005-01-19', 1, 1, 9924845435, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(717, '2023-1-3367', 'REYMARK', 'A?ASCO', 'PETALCORIN', 'MALE', '2001-08-13', 1, 1, 9122568640, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(718, '2023-1-3368', 'JAPHETH ', 'ANOD ', 'JIMENEZ', 'MALE', '2002-07-04', 1, 1, 9127145481, 'SAN PEDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(719, '2023-1-3369', 'RALPH', 'VALMORIA', 'GARCIA', 'MALE', '2002-03-22', 1, 1, 9384700261, 'P2, SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(720, '2023-1-3370', 'JOHN PAL', 'MEJASCO', 'CUIZON', 'MALE', '2004-11-26', 1, 1, 9927690605, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(721, '2023-1-3371', 'JOHN LLOYD', 'LOFRANCO ', 'OMBING', 'MALE', '2002-12-11', 1, 1, 9127145481, 'SAN PEDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(722, '2023-1-3372', 'MARK EMMANUEL', 'AVENIDO', 'ESID', 'MALE', '2004-05-03', 1, 1, 9151930689, 'P5, SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(723, '2023-1-3373', 'LOIJAY', '', 'WABE', 'MALE', '2004-03-04', 1, 1, 9951045089, 'CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(724, '2023-1-3374', 'REYMART', 'SOCATRE', 'TAGALOG', 'MALE', '2004-04-18', 1, 1, 9952886500, 'SAG, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(725, '2023-1-3375', 'MARIO', '', 'CABERO', 'MALE', '1998-07-01', 1, 1, 9462763934, 'BILANGBILANGAN DAKU, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(726, '2023-1-3376', 'JAYSON', 'AUZA ', 'ABA?O', 'MALE', '2004-01-11', 1, 1, 9634484797, 'SAG, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(727, '2023-1-3377', 'MARY JANE', 'JAO', 'VIVA', 'FEMALE', '2004-05-06', 1, 1, 9552744499, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(728, '2023-1-3378', 'LOURDELENE', 'BALUNDO', 'LAMOSTE', 'FEMALE', '2005-01-26', 1, 1, 9552744499, 'SAN JOSE, TALIBON, BOOL', NULL, NULL, NULL, NULL),
(729, '2023-1-3379', 'LEO JR.', 'ANTIVO', 'POLESTICO', 'MALE', '2005-08-24', 1, 1, 9482165407, 'P8, SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(730, '2023-1-3380', 'MA. LUZ', 'PANOGALINOG', 'AUGUIS', 'FEMALE', '2004-03-18', 1, 1, 9067874468, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(731, '2023-1-3381', 'JAY', 'TUBO ', 'TORREMOCHA', 'MALE', '2003-01-07', 1, 1, 9207971181, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(732, '2023-1-3382', 'LAWRENCE', 'FORTUNA', 'LOFRANCO', 'MALE', '2005-08-26', 1, 1, 9503373430, 'SAN PEDRO, TALIBON, BOOL', NULL, NULL, NULL, NULL),
(733, '2023-1-3383', 'EDMIR', 'LOFRANCO', 'CALIT', 'MALE', '2005-07-08', 1, 1, 9122767599, 'SAN PEDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(734, '2023-1-3384', 'ANALYN', 'ESTILLORE', 'MONTIMAN', 'FEMALE', '2004-04-20', 5, 1, 9850947597, 'TUNAAN DAKU, SIKATUNA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(735, '2023-1-3385', 'VANESA', 'PARBA', 'BULABOS', 'FEMALE', '2003-07-27', 1, 1, 9519544428, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(736, '2023-1-3386', 'SHERWIN JAY', 'GARCIA ', 'LOFRANCO ', 'MALE', '2002-12-27', 1, 1, 9104903698, 'SAN PEDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(737, '2023-1-3386', 'PROMISE JOY', 'AUTIDA', 'MONDAGA', 'FEMALE', '1998-06-18', 5, 1, 9851327360, 'SIKATUNA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(738, '2023-1-3387', 'ANGEL MAE', 'QUERVO', 'ROSALES', 'FEMALE', '2004-11-12', 2, 1, 9261526753, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(739, '2023-1-3388', 'ROBERTO JR.', 'CASOYLA', 'NGOHO', 'MALE', '2004-03-04', 1, 1, 9519544428, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(740, '2023-1-3389', 'JOHN PAUL', 'POLESTICO', 'CARILLAS', 'MALE', '2005-11-17', 1, 1, 9651456547, 'P8, SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(741, '2023-1-3390', 'GERALDINE', 'FUROG', 'POLENTINOS', 'FEMALE', '2001-01-23', 5, 1, 9508222899, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(742, '2023-1-3391', 'JOMAR', 'VALLENTE', 'BELTRAN', 'MALE', '2001-01-25', 2, 1, 9066085503, 'SAN ISIDRO, MABINI, BOHOL', NULL, NULL, NULL, NULL),
(743, '2023-1-3392', 'SHIELA MAE', 'SABAL', 'TORREON', 'FEMALE', '2004-05-16', 5, 1, 9502216203, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(744, '2023-1-3393', 'ERICA JANE ', 'SORIA', 'MULATO', 'FEMALE', '2004-09-13', 1, 1, 9304285293, 'P2, POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(745, '2023-1-3394', 'CHRISTINA', 'EVARDO', 'TURTOGA ', 'FEMALE', '2004-08-17', 5, 1, 9169614750, 'P2, SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(746, '2023-1-3395', 'RIZAL RICO ', 'TEVES ', 'POLESTICO ', 'MALE', '2000-12-30', 1, 1, 9512921577, 'P8, SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(747, '2023-1-3396', 'NICK LESTER', 'RAMOS', 'BUNO', 'MALE', '2004-02-20', 1, 1, 9658726904, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(748, '2023-1-3397', 'RODNE', 'TORRETA', 'POLO', 'MALE', '2003-03-29', 1, 1, 9863835647, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(749, '2023-1-3398', 'CYNIEL', 'ARO', 'HOYBIA', 'MALE', '2004-06-15', 1, 1, 9276253992, 'P4, SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(750, '2023-1-3399', 'ANDY', 'POLO ', 'TORRENUEVA', 'MALE', '2002-01-25', 1, 1, 9939848183, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(751, '2023-1-3403', 'VINCENT', 'GALANIDO', 'AUXTERO', 'MALE', '2002-12-22', 2, 1, 9456801545, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(752, '2023-1-3404', 'LYCA', 'DUETES', 'REYES', 'FEMALE', '2003-05-15', 2, 1, 9632288723, 'TAPON, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(753, '2023-1-3405', 'MARY JOY', 'BENSING', 'AGUPASA ', 'MALE', '2004-10-21', 4, 1, 9686116402, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(754, '2023-1-3406', 'JOVELYN', 'AUXTERO', 'SUELLO', 'FEMALE', '2001-02-22', 2, 1, 9504775182, 'TANGHALIGUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(755, '2023-1-3408', 'WYNA', 'DIVINAGRACIA', 'CENIZA', 'FEMALE', '2004-08-26', 2, 1, 9532890756, 'PANGHAGBAN, BUENAVISTA, BOHOL', NULL, NULL, NULL, NULL),
(756, '2023-1-3409', 'VERNIE', 'DEGAMO', 'TORREON', 'MALE', '2004-03-25', 2, 1, 9651455562, 'PANGHAGBAN, BUENAVISTA, BOHOL', NULL, NULL, NULL, NULL),
(757, '2023-1-3411', 'DHEZA', 'LAURON', 'SALIOT', 'FEMALE', '2001-12-16', 5, 1, 9064539157, 'LEBERTAD SUR, SAGBAYAN, BOHOL', NULL, NULL, NULL, NULL),
(758, '2023-1-3412', 'JERAMAE', 'APARICIO', 'BETASA', 'FEMALE', '2004-12-21', 2, 1, 9352601963, 'TABOK, DANAO, BOHOL', NULL, NULL, NULL, NULL),
(759, '2023-1-3413', 'EVELINO', 'CUYSONA', 'VALLESER JR.', 'MALE', '2004-07-13', 2, 1, 9924935391, 'P4, IMELDA, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(760, '2023-1-3414', 'ALEAH KAYE', 'GURREA', 'DELA CRUZ', 'FEMALE', '2003-02-13', 5, 1, 9462781584, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(761, '2023-1-3415', 'ROSANA', 'LEOLIGAO', 'WALAWALA', 'FEMALE', '1989-08-01', 2, 1, 9127931911, '\nMAHANAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(762, '2023-1-3416', 'MARCEL', 'TRAGO', 'AVERGONZADO', 'MALE', '2003-09-04', 4, 1, 9851333838, 'ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(763, '2023-1-3418', 'DIANA MAY', 'PURACAN', 'AVANZADO', 'FEMALE', '2004-05-28', 5, 1, 9530640329, 'P3, LOS ANGELES, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(764, '2023-1-3419', 'JOHANNA MARIE', 'MASIAS', 'BUFE', 'FEMALE', '2003-10-01', 2, 1, 9752417334, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(765, '2023-1-3420', 'DANDIE', 'OMABAYAN', 'AUXTERO', 'MALE', '2003-08-21', 4, 1, 9503836279, 'BALINTAWAK, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(766, '2023-1-3421', 'RICKY', 'TORINO', 'DA?O', 'MALE', '2004-10-08', 2, 1, 9461836220, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(767, '2023-1-3422', 'PRECIOUS JAY', 'CELOCIA', 'DIEZ', 'FEMALE', '2005-05-28', 2, 1, 9676240845, 'PANGHAGBAN, BUENAVISTA, BOHOL', NULL, NULL, NULL, NULL),
(768, '2023-1-3423', 'JONILYN', 'MAHUMAS', 'NUEZ', 'FEMALE', '2004-10-24', 5, 1, 9362895806, 'P2, LOS ANGELES, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(769, '2023-1-3424', 'MARVIN', 'GEONSON', 'QUILLOPAS', 'MALE', '1997-07-01', 2, 1, 9633814918, 'CORAZON, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(770, '2023-1-3425', 'JAY-R', 'VALLOSO', 'FOSTANES', 'MALE', '2004-08-05', 2, 1, 9759130153, 'VALAGA, MABINI, BOHOL', NULL, NULL, NULL, NULL),
(771, '2023-1-3426', 'MARDY', 'PACUMBABA', 'GONZAGA', 'MALE', '2002-12-03', 4, 1, 9462407802, 'P7, SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(772, '2023-1-3427', 'JOHN PAUL', 'VALLECERA', 'VALLOTA', 'MALE', '2002-10-22', 2, 1, 9914855582, 'VALAGA, MABINI, BOHOL', NULL, NULL, NULL, NULL),
(773, '2023-1-3428', 'DARYL', 'LINGO', 'DALANGIN', 'MALE', '2004-02-21', 4, 1, 9959511461, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(774, '2023-1-3430', 'VINCENT REY', 'AMANTE', 'AVENIDO', 'MALE', '2004-07-26', 2, 1, 9352121134, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(775, '2023-1-3431', 'MARK ANDREW', 'AUGUIS', 'ESPEDILLA', 'MALE', '2003-12-31', 2, 1, 9461265128, 'BUSALIAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(776, '2023-1-3432', 'DANICA', 'POLESTICO', 'OLAYVAR', 'FEMALE', '2004-08-23', 2, 1, 9261534050, 'SAN VICENTE, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(777, '2023-1-3433', 'DANILO JR.', 'BUSBUS', 'PAIGALAN', 'MALE', '2005-08-29', 2, 1, 9814680304, 'VALAGA, MABINI, BOHOL', NULL, NULL, NULL, NULL),
(778, '2023-1-3434', 'KIRSTEN KARREL', 'CAVALIDA', 'VALMORIA', 'FEMALE', '2004-02-01', 5, 1, 9060643114, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(779, '2023-1-3435', 'CHARLENE ANN', 'AUTOR', 'CUTOR', 'FEMALE', '2004-02-23', 3, 1, 9753979391, 'PAG-ASA, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(780, '2023-2-2640', 'RENIEL ', 'MARINTES', 'VADAL ', 'MALE', '1999-01-26', 1, 1, 9099446125, 'CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(781, '2023-2-2647', 'SARAH JOY', 'R', 'BEBIRO', 'FEMALE', '1989-11-22', 3, 1, 9512920568, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(782, '2023-2-2648', 'JENILYN', 'CASENILLAS', 'BUNO', 'FEMALE', '2004-09-26', 3, 1, 9532909184, 'HAZEL CASENILLAS\n09550116950\nSAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(783, '2023-2-2650', 'CARLA', 'R', 'CALINAWAN', 'FEMALE', '2004-11-17', 3, 1, 9759163398, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(784, '2023-2-2651', 'JELLY MAE', 'Y', 'CA?ETE', 'FEMALE', '2001-04-11', 3, 1, 950, 'CASATE, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(785, '2023-2-2655', 'JOCELYN', '', 'JAYOMA', 'FEMALE', '1998-05-29', 3, 1, 9102909346, 'PUERTO SAN PEDRO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(786, '2023-2-2657', 'ELGEN', 'PANSACALA', 'MI?OZA', 'MALE', '2004-02-10', 3, 1, 9462618156, 'PINAMGO, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(787, '2023-2-2661', 'CRESIL JANE', 'MONDOC', 'POLO', 'FEMALE', '2001-04-14', 3, 1, 9531445200, 'SUBA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(788, '2023-2-2664', 'CRISTHL ', 'ANUTA', 'TORRALBA', 'FEMALE', '2005-04-16', 3, 1, 9925312665, 'ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(789, '2023-2-2666', 'NICOLE', 'LORETO', 'YBA?EZ', 'FEMALE', '2004-11-04', 3, 1, 9461001634, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(790, '2023-2-2669', 'PETER FRANZ', 'AGLINA', 'ABUYABOR', 'MALE', '2001-06-21', 1, 1, 9085859135, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(791, '2023-2-2672', 'MAGNON, JR.', 'ILUSTRISIMO', 'ARSOLON', 'MALE', '2000-12-01', 1, 1, 9109470486, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(792, '2023-2-2673', 'HANS KERVIE', 'AUTENTICO', 'AUGUIS', 'MALE', '2005-07-18', 1, 1, 9357153198, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(793, '2023-2-2675', 'RAMJEE', 'BUNO', 'AURIT', 'MALE', '2005-07-05', 1, 1, 9634876719, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(794, '2023-2-2680', 'JOHN LOYD', 'ROSALES', 'AUXTERO', 'MALE', '2004-07-07', 1, 1, 9519318582, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(795, '2023-2-2682', 'JHONAS', 'CAJES', 'AVENIDO', 'MALE', '2003-07-24', 1, 1, 9630345786, 'NUEVA ESTRELLA, BIEN UNIO, BOHOL', NULL, NULL, NULL, NULL),
(796, '2023-2-2683', 'GLENN', 'GARCIA', 'AVENIDO', 'MALE', '1997-12-17', 1, 1, 985, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(797, '2023-2-2687', 'ANICETO', 'SURIGAO', 'BASALO JR. ', 'MALE', '2001-08-20', 1, 1, 950, 'TUBORAN, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(798, '2023-2-2690', 'ALDRIN', 'MACUA', 'BITOR', 'MALE', '2004-02-29', 1, 1, 9701933986, 'POBLACION, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(799, '2023-2-2694', 'JOEL', 'POLISTECO', 'BUNAOS', 'MALE', '2001-10-18', 1, 1, 9463337796, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(800, '2023-2-2698', 'LILA JANE', 'ALIBO', 'CALINAWAN', 'FEMALE', '2005-07-10', 1, 1, 9678463610, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(801, '2023-2-2700', 'JOHN MAR', 'TABIGUE', 'CAMOCAMO', 'MALE', '2005-06-23', 1, 1, 946, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(802, '2023-2-2705', 'KYLE', 'LASPI?AS', 'CUIZON', 'MALE', '2003-10-07', 1, 1, 9503353015, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(803, '2023-2-2709', 'JAY VINCENT', '', 'DAGOHOY', 'MALE', '2004-11-23', 1, 1, 9386758119, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(804, '2023-2-2710', 'RYAN EARL', 'ITEM', 'DAYTA', 'MALE', '2004-10-15', 1, 1, 9708195047, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(805, '2023-2-2713', 'LIRA MARIE', 'ALINAPON', 'DELA CRUZ', 'FEMALE', '2004-11-12', 1, 1, 9925331254, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(806, '2023-2-2719', 'JONEL', 'CEFRE', 'EVALLE', 'MALE', '2001-07-18', 1, 1, 9706282988, 'BUSALI-AN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(807, '2023-2-2720', 'DAVE', '', 'FAJARDO', 'MALE', '2001-10-29', 1, 1, 9293247852, 'SAG, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(808, '2023-2-2725', 'RODRIGO', 'MANLANGIT', 'FUENTES, JR.', 'MALE', '2004-04-21', 1, 1, 9678463611, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(809, '2023-2-2735', 'ZEREMIE', 'BUNAOS', 'GARCIA', 'MALE', '2005-06-08', 1, 1, 9509514442, 'P1, SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(810, '2023-2-2738', 'ARCELI', 'BACALLAN', 'GARCIA', 'FEMALE', '2004-02-17', 1, 1, 9261526963, 'BUSALI-AN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(811, '2023-2-2739', 'JAY LORD', 'BANGCOY', 'GAVIOLA', 'MALE', '2003-04-18', 1, 1, 9105020595, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(812, '2023-2-2742', 'JOMAR', 'QUIACHON', 'LAFUENTE', 'MALE', '2000-10-20', 1, 1, 9532638117, 'BALINTAWAK, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(813, '2023-2-2744', 'BENJAMIN III', 'ESTOY', 'LOFRANCO', 'MALE', '2002-06-07', 1, 1, 9482048772, 'SAN PEDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(814, '2023-2-2748', 'ANIANO', '', 'MANLANGIT', 'MALE', '2002-04-24', 1, 1, 938, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(815, '2023-2-2750', 'MARIA JESARY', '', 'MEJIAS', 'FEMALE', '2003-10-02', 1, 1, 9480356294, 'GUINDACPAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(816, '2023-2-2753', 'MARBBY', 'CASQUEJO', 'MONTEBON', 'FEMALE', '2005-08-06', 1, 1, 915, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(817, '2023-2-2759', 'JELVELYN', 'TORRENUEVA', 'OTARRA', 'FEMALE', '2005-03-10', 1, 1, 927, 'P7, CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(818, '2023-2-2763', 'JAMICA ROSE', 'AVENTAJADO', 'PETALLAR', 'FEMALE', '2005-09-20', 1, 1, 9927690642, 'P4, NUEVA ESPERANZA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(819, '2023-2-2765', 'MICHAEL', '', 'POLESTICO', 'MALE', '2004-01-29', 1, 1, 9060635794, 'SAN FRANCISCO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(820, '2023-2-2768', 'JAKE', 'ROSALES', 'PURESA', 'MALE', '2004-01-20', 1, 1, 9654694065, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(821, '2023-2-2773', 'MIKE JUL', 'CUIZON', 'RAMOS', 'MALE', '1998-07-07', 1, 1, 9105256499, 'P3, ZAMORA, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(822, '2023-2-2784', 'JOHN PAUL', 'GURREA', 'SEVERO', 'MALE', '2005-07-10', 1, 1, 9814688462, 'P1, SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(823, '2023-2-2785', 'RUSSEL', 'BITOONAN', 'SUELLO', 'MALE', '2005-03-24', 1, 1, 9706284902, 'BURGOS, TALIBON, B OHOL', NULL, NULL, NULL, NULL),
(824, '2023-2-2798', 'CHRISPEL', 'POLESTICO', 'UDLOT', 'MALE', '2004-11-11', 1, 1, 9508605380, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(825, '2023-2-2802', 'EARL FRANCIS', 'GARCIA', 'YUCOT', 'MALE', '2005-03-04', 1, 1, 9507859890, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(826, '2023-2-2809', 'WEEVAN', 'AUTIDA', 'TURTOGA', 'MALE', '2004-08-23', 1, 1, 9925547298, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(827, '2023-2-2812', 'JELMARK', 'C', 'AUTIDA', 'MALE', '2002-07-07', 2, 1, 9925539114, 'PAG-ASA, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(828, '2023-2-2815', 'GUADALUPE', 'MOSQUEDA', 'BELHIDA', 'FEMALE', '1979-09-12', 2, 1, 9482739642, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(829, '2023-2-2816', 'LLOYD', 'ESTRERA', 'BENBAN', 'MALE', '2003-03-25', 2, 1, 9480031521, 'P2, SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(830, '2023-2-2819', 'MA. SHEILLO', 'PALUGA', 'CAJES', 'FEMALE', '2005-02-08', 2, 1, 9927690497, 'LA UNION, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(831, '2023-2-2826', 'JAYBOY', 'S', 'DELAMBACA', 'MALE', '2005-09-12', 2, 1, 9305110674, 'ESTACA, PILAR, BOHOL', NULL, NULL, NULL, NULL),
(832, '2023-2-2828', 'KEZIAH JOIE', 'BUENAFE', 'LOTA', 'FEMALE', '2003-04-29', 2, 1, 9635307764, 'NASINGIN, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(833, '2023-2-2829', 'JETHRO DAVE', 'BUENAFE', 'LOTA', 'MALE', '2004-12-11', 2, 1, 9935299892, 'NASINGIN, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(834, '2023-2-2833', 'JUDEA', 'TORREFIEL', 'NOMIO', 'FEMALE', '2004-01-30', 2, 1, 9935299891, 'NASINGIN, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(835, '2023-2-2834', 'RAINIER', 'PADERNA', 'OCABA', 'MALE', '2004-05-22', 2, 1, 9278605146, 'NASINGIN, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(836, '2023-2-2835', 'FELIXBERTO, JR.', 'TABAR', 'OCABA', 'MALE', '2004-09-20', 2, 1, 9918892353, 'NASINGIN, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(837, '2023-2-2836', 'IAN LEE', '', 'OVEIRES', 'MALE', '2004-08-14', 2, 1, 927, 'SAN ROQUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(838, '2023-2-2838', 'MARVIE', 'MINGUITO', 'PONGCOL', 'MALE', '2003-03-28', 2, 1, 9947426472, 'NASINGIN, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(839, '2023-2-2839', 'RENATO', '', 'PUEBLOS', 'MALE', '2002-04-27', 2, 1, 9504765846, 'BAUD, CPG, BOHOL', NULL, NULL, NULL, NULL),
(840, '2023-2-2841', 'KRISTINE', '', 'RAMIENTOS', 'FEMALE', '2002-08-16', 2, 1, 9572921523, 'P2, POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(841, '2023-2-2842', 'PSALM', 'TORNIADO', 'REVILLA', 'MALE', '2004-10-28', 2, 1, 9106955660, 'NASINGIN, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(842, '2023-2-2844', 'MARK CHRISTIAN', 'O', 'SANCHEZ', 'MALE', '2003-05-31', 2, 1, 9510780096, 'SAN CARLOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(843, '2023-2-2845', 'JERENOAH', 'MERIN', 'TAMPOS', 'MALE', '2004-07-24', 2, 1, 9635305936, 'NASINGIN, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(844, '2023-2-2846', 'JOHNRY', 'HIRAMEL', 'TANI', 'MALE', '2004-01-03', 2, 1, 9949066075, 'NASINGIN, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(845, '2023-2-2847', 'REYMALYN', 'RICAFORTE', 'TIMON', 'FEMALE', '2005-01-16', 2, 1, 9651457038, 'SAN VICENTE, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(846, '2023-2-2849', 'DAISY', '', 'VILLONDO', 'FEMALE', '2004-09-18', 2, 1, 9935347288, 'GARCIA, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(847, '2023-2-2852', 'MELAGROSE', 'ESTOCE', 'TORREGOSA', 'FEMALE', '2004-11-27', 2, 1, 9463175754, 'BURGOS, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(848, '2023-2-2853', 'JHERICO', 'SABIOR', 'ANTIG', 'MALE', '2004-06-26', 5, 1, 9510776981, 'P2, NAMOONG BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(849, '2023-2-2854', 'ANGELA', 'CUTARA', 'AVENIDO', 'FEMALE', '2003-10-30', 5, 1, 9505216951, 'POBLACION, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(850, '2023-2-2857', 'MARIA NICOLE', 'ONTUA', 'ESCOBAL', 'FEMALE', '2004-10-16', 5, 1, 9938920376, 'LOBOGON, DUERO, BOHOL', NULL, NULL, NULL, NULL),
(851, '2023-2-2858', 'KAREN MAE', 'O', 'GARCIA', 'FEMALE', '2000-05-06', 5, 1, 9938405089, 'NUEVA ESPERANZA, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(852, '2023-2-2859', 'BLESHERY', 'M', 'LAURENTE', 'FEMALE', '2004-05-09', 5, 1, 9505717888, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(853, '2023-2-2860', 'MA. ALLIEN', 'A', 'NEIS', 'FEMALE', '2005-02-13', 5, 1, 9924825057, 'BAGACAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(854, '2023-2-2861', 'KIM', 'RITA', 'PAELMAR', 'MALE', '2005-06-26', 5, 1, 9666942474, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(855, '2023-2-2862', 'JOHN PATRICK', 'C', 'PURACAN', 'MALE', '2005-09-14', 5, 1, 9676800429, 'BUGANG, SAN MIGUEL, BOHOL', NULL, NULL, NULL, NULL),
(856, '2023-2-2864', 'ARPIE', 'PALMA', 'TORREFIEL', 'MALE', '1997-10-17', 5, 1, 9380850627, 'MAHANAY, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(857, '2023-2-2865', 'JAY', 'OLAN', 'TRAGO', 'MALE', '2004-09-18', 5, 1, 9126933381, 'TANGHALIGUE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(858, '2023-2-2867', 'CHRISTIAN NIEL', 'OROYAN', 'USARES', 'MALE', '2005-02-27', 5, 1, 9304285313, 'BURGOS, TALIBON, B OHOL', NULL, NULL, NULL, NULL),
(859, '2023-2-2868', 'OMAR', 'BUTIHEN', 'ABAYABAY', 'MALE', '2004-10-25', 4, 1, 9933426071, 'IMELDA, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(860, '2023-2-2869', 'FERNAND', 'TONGCO', 'ALMACIN', 'MALE', '2005-07-24', 4, 1, 9505435089, 'CALITUBAN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(861, '2023-2-2871', 'EDUARDO, JR.', 'OSMIL', 'AVENIDO', 'MALE', '1987-03-11', 4, 1, 9755337049, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(862, '2023-2-2877', 'JOSHNER', 'SUSON', 'CAJES', 'MALE', '2002-12-24', 4, 1, 9086498171, 'P6, STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(863, '2023-2-2878', 'RANDELENE', 'BUTIHEN', 'CUTAMORA', 'MALE', '2005-04-30', 4, 1, 9165773018, 'IMELDA, UBAY, BOHOL', NULL, NULL, NULL, NULL),
(864, '2023-2-2879', 'BLYTHE ZEUS', 'E', 'GILO', 'MALE', '2005-01-02', 4, 1, 9957747401, 'P7, BALINTAWAK, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(865, '2023-2-2880', 'CHRISTIAN PAUL', 'M', 'LA ROSA', 'MALE', '1995-04-04', 4, 1, 9669306657, 'P3, LA VICTORIA, TRINIDAD, BOHOL', NULL, NULL, NULL, NULL),
(866, '2023-2-2882', 'ANGEL MAE', '', 'MULA', 'FEMALE', '2005-09-15', 4, 1, 9462521122, 'SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(867, '2023-2-2885', 'ELDRICK', 'P', 'SERE?O', 'MALE', '2004-09-26', 4, 1, 9948647439, 'HINGOTANAN, BIEN UNIDO, BOHOL', NULL, NULL, NULL, NULL),
(868, '2023-2-2886', 'DOMINIC LEE', 'A', 'TORETA', 'MALE', '2004-12-21', 4, 1, 9092928383, 'P1, SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(869, '2023-2-2887', 'RESTITUTO', 'R', 'TORREJAS, JR.', 'MALE', '2003-09-18', 4, 1, 9483674840, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(870, '2020-01-0443', 'SHAREN JANE ', 'TORREON', 'TORREGOSA', 'FEMALE', '2002-05-07', 3, 4, 9939043226, 'JANDAYAN NORTE, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(871, '2020-01-0002', 'JOHN CARLO', 'TURTOGA', 'BERALLO', 'MALE', '1999-11-16', 1, 4, 9949274083, 'P3, SAN ISIDRO, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(872, '2020-01-0004', 'MYLIN', '', 'DELICANA', 'FEMALE', '2002-04-14', 1, 4, 9925311718, 'STO. NI?O, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(873, '2020-01-0135', 'CRISTIAN', 'BUNADO', 'VILLAHERMOSA', 'MALE', '2001-09-12', 2, 4, 9260887436, 'CAMPAO ORIENTAL, GETAFE, BOHOL', NULL, NULL, NULL, NULL),
(874, '2020-01-0134', 'FRANCIS MARION', 'CAJES', 'SALISE', 'MALE', '2001-05-10', 1, 4, 9637949968, 'SAN JOSE, TALIBON, BOHOL', NULL, NULL, NULL, NULL),
(875, '2022-1-1928', 'ANGELITA', 'BARDONES', 'LOIGA', 'FEMALE', '1985-08-24', 3, 2, 9128812898, 'SAN AGUSTIN, TALIBON, BOHOL', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `archive` int(2) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `position`, `username`, `password`, `archive`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'TPC Library Admin', 'Administrator', 'tpclibadmin@2023', '$2y$10$7KooeWEWmTDzKLGCnXIdwuULsp4L1JMdt/oSPTU/t6SlJcq8AfqsS', 0, NULL, '2023-11-17 07:16:19', '2023-11-17 07:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `year_levels`
--

CREATE TABLE `year_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `yearLevel` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `year_levels`
--

INSERT INTO `year_levels` (`id`, `yearLevel`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL),
(4, 4, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_student_foreign` (`studentId`),
  ADD KEY `attendance_instructor_foreign` (`instructorId`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_addedby_foreign` (`addedBy`),
  ADD KEY `books_categoryid_foreign` (`categoryId`);

--
-- Indexes for table `borrowed`
--
ALTER TABLE `borrowed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrowed_bookid_foreign` (`bookID`),
  ADD KEY `borrowed_issuedby_foreign` (`issuedBy`),
  ADD KEY `borrowed_returnedto_foreign` (`returnedTo`),
  ADD KEY `borrowed_student_foreign` (`studentId`),
  ADD KEY `borrowed_instructor_foreign` (`instructorId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `damagedbooks`
--
ALTER TABLE `damagedbooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookId` (`bookId`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructors_departmentid_foreign` (`departmentID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_courseid_foreign` (`courseID`),
  ADD KEY `students_yearlevelid_foreign` (`yearLevelID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `year_levels`
--
ALTER TABLE `year_levels`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT for table `borrowed`
--
ALTER TABLE `borrowed`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `damagedbooks`
--
ALTER TABLE `damagedbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=876;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `year_levels`
--
ALTER TABLE `year_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_instructor_foreign` FOREIGN KEY (`instructorId`) REFERENCES `instructors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendance_instructorid_foreign` FOREIGN KEY (`instructorId`) REFERENCES `instructors` (`id`),
  ADD CONSTRAINT `attendance_student_foreign` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_addedby_foreign` FOREIGN KEY (`addedBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `books_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`);

--
-- Constraints for table `borrowed`
--
ALTER TABLE `borrowed`
  ADD CONSTRAINT `borrowed_bookid_foreign` FOREIGN KEY (`bookID`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `borrowed_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `borrowed_instructor_foreign` FOREIGN KEY (`instructorId`) REFERENCES `instructors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `borrowed_issuedby_foreign` FOREIGN KEY (`issuedBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `borrowed_returnedto_foreign` FOREIGN KEY (`returnedTo`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `borrowed_student_foreign` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `borrowed_studentid_foreign` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`);

--
-- Constraints for table `damagedbooks`
--
ALTER TABLE `damagedbooks`
  ADD CONSTRAINT `damagedbooks_ibfk_1` FOREIGN KEY (`bookId`) REFERENCES `books` (`id`);

--
-- Constraints for table `instructors`
--
ALTER TABLE `instructors`
  ADD CONSTRAINT `instructors_departmentid_foreign` FOREIGN KEY (`departmentID`) REFERENCES `courses` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_courseid_foreign` FOREIGN KEY (`courseID`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `students_yearlevelid_foreign` FOREIGN KEY (`yearLevelID`) REFERENCES `year_levels` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
