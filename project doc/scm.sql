-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2024 at 07:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `airfreights`
--

CREATE TABLE `airfreights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `flight_number` varchar(255) NOT NULL,
  `arrival_airport_name` varchar(255) NOT NULL,
  `insurance_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Albania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Algeria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Andorra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Angola', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Antigua and Barbuda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Argentina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Armenia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Australia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Austria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Azerbaijan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Bahamas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Bahrain', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Bangladesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Barbados', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Belarus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Belgium', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Belize', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Benin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Bhutan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Bolivia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Bosnia and Herzegovina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Botswana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Brazil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Brunei', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Bulgaria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Burkina Faso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Burundi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Cabo Verde', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Cambodia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Cameroon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Canada', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Central African Republic', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Chad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Chile', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'China', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Colombia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Comoros', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Congo, Democratic Republic of the', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Congo, Republic of the', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Costa Rica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Croatia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Cuba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Cyprus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Czech Republic (Czechia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Denmark', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Djibouti', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Dominica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Dominican Republic', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'East Timor (Timor-Leste)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Ecuador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Egypt', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'El Salvador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Equatorial Guinea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Eritrea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Estonia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Eswatini (Swaziland)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Ethiopia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Fiji', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Finland', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'France', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Gabon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Gambia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Georgia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Germany', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Ghana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Greece', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Grenada', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Guatemala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Guinea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Guinea-Bissau', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Guyana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Haiti', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Honduras', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Hungary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Iceland', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'India', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Indonesia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Iran', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Iraq', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Ireland', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Israel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Italy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Ivory Coast (C?te d\'Ivoire)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Jamaica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Japan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Jordan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Kazakhstan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Kenya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Kiribati', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Korea, North (North Korea)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Korea, South (South Korea)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Kosovo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Kuwait', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Kyrgyzstan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Laos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Latvia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Lebanon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Lesotho', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Liberia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Libya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Liechtenstein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Lithuania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Luxembourg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Madagascar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Malawi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Malaysia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Maldives', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Mali', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Malta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Marshall Islands', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Mauritania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Mauritius', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Mexico', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Micronesia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Moldova', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Monaco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Mongolia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Montenegro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Morocco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Mozambique', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Myanmar (Burma)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Namibia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Nauru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Nepal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Netherlands', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'New Zealand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Nicaragua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Niger', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Nigeria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'North Macedonia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Norway', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Oman', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Pakistan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Palau', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Panama', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Papua New Guinea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Paraguay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Peru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Philippines', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Poland', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Portugal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Qatar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Romania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Russia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Rwanda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Saint Kitts and Nevis', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Saint Lucia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Saint Vincent and the Grenadines', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Samoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'San Marino', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Sao Tome and Principe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Saudi Arabia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Senegal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Serbia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Seychelles', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Sierra Leone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'Singapore', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'Slovakia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Slovenia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Solomon Islands', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Somalia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'South Africa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'South Sudan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Spain', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Sri Lanka', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Sudan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Suriname', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Sweden', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Switzerland', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Syria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Taiwan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Tajikistan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Tanzania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Thailand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Togo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Tonga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Trinidad and Tobago', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Tunisia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Turkey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Turkmenistan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Tuvalu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Uganda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Ukraine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'United Arab Emirates', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'United Kingdom', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'United States of America', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Uruguay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Uzbekistan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Vanuatu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Vatican City', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Venezuela', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'Vietnam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Yemen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Zambia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Zimbabwe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Abkhazia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Akrotiri and Dhekelia (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'American Samoa (US)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Anguilla (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Aruba (Netherlands)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Ascension Island (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Bermuda (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Bonaire (Netherlands)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Bouvet Island (Norway)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'British Indian Ocean Territory (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'British Virgin Islands (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'Cayman Islands (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Christmas Island (Australia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Cocos (Keeling) Islands (Australia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Cook Islands (New Zealand)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Cura?ao (Netherlands)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Falkland Islands (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Faroe Islands (Denmark)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'French Guiana (France)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'French Polynesia (France)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Gibraltar (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Greenland (Denmark)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Guam (US)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Guernsey (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Isle of Man (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'Jersey (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'Macau (China)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'Martinique (France)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'Mayotte (France)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'Montserrat (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'New Caledonia (France)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Niue (New Zealand)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Norfolk Island (Australia)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'Northern Cyprus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'Northern Mariana Islands (US)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'Pitcairn Islands (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'Puerto Rico (US)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'R?union (France)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'Saba (Netherlands)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'Saint Barth?lemy (France)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'Saint Helena, Ascension and Tristan da Cunha (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'Saint Martin (France)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'Saint Pierre and Miquelon (France)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Sint Eustatius (Netherlands)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'Sint Maarten (Netherlands)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'South Georgia and South Sandwich Islands (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'Transnistria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'Turks and Caicos Islands (UK)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'U.S. Virgin Islands (US)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'Wallis and Futuna (France)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'Western Sahara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'Palestine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'Nagorno-Karabakh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 'Sahrawi Arab Democratic Republic', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 'Somaliland', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 'USA', '2024-10-26 21:46:12', '2024-10-26 21:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `company_name`, `contact_no`, `email`, `address`, `created_at`, `updated_at`) VALUES
(3, 'KSRM', '0123456789', 'ksrm@yahoo.com', 'Kabir Manzil, Sheikh Mujib Road, Agrabad, Chattogram, Bangladesh', '2024-11-08 21:42:48', '2024-11-08 21:42:48'),
(4, 'BSRM (Bangladesh Steel Re-Rolling Mills):', '465789', 'bsrm@yahoo.com', 'Ali Mansion, 1207/1099 Sadarghat Road, Chattogram-4000, Bangladesh', '2024-11-08 21:43:20', '2024-11-08 21:43:20'),
(5, 'SSRM (S. Alam Steel Re-Rolling Mills):', '789456', 'ssrm@gmail.com', 'S. Alam Bhaban, 2119 Asadgonj, Chattogram-4000, Bangladesh', '2024-11-08 21:44:00', '2024-11-08 21:44:00'),
(6, 'M/S Tahera & Sons', '15948', 'ms@yahoo.com', 'Dhaka, Bangladesh', '2024-11-08 21:47:37', '2024-11-08 21:47:37'),
(7, 'Popular International Express Ltd.', '26154', 'pp@gmail.com', 'CTG, Bangladesh', '2024-11-08 21:48:17', '2024-11-08 21:48:17'),
(8, 'UNIOCEAN Shipping Lines Ltd.', '784956', 'uni@yahoo.com', 'Sylhet@yahoo.com', '2024-11-08 21:49:02', '2024-11-08 21:49:02'),
(9, 'R.K. International', '324589', 'rk@yahoo.com', 'singapur@gmail.com', '2024-11-08 21:49:42', '2024-11-08 21:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `freights`
--

CREATE TABLE `freights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `vat` decimal(5,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `shipment_type` varchar(50) NOT NULL,
  `pickup_time` datetime NOT NULL,
  `delivery_time` datetime NOT NULL,
  `total_qty` int(11) NOT NULL,
  `pickup_location` varchar(255) NOT NULL,
  `delivery_location` varchar(255) NOT NULL,
  `transport_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `freights`
--

INSERT INTO `freights` (`id`, `customer_id`, `total_amount`, `vat`, `payment_method`, `shipment_type`, `pickup_time`, `delivery_time`, `total_qty`, `pickup_location`, `delivery_location`, `transport_type_id`, `created_at`, `updated_at`) VALUES
(3, 1, 570000.00, 14.00, 'creditCard', 'road', '2024-12-12 00:00:00', '2025-01-10 00:00:00', 500, 'UAE', 'CTG', 0, '2024-10-27 00:23:25', '2024-10-27 00:23:25'),
(4, 0, 78451111.00, 8.00, 'bankTransfer', 'Highway Freight', '2024-01-15 00:00:00', '2025-01-10 00:00:00', 500, 'CTG', 'Sylhet', 0, '2024-10-27 01:57:53', '2024-10-27 01:57:53'),
(6, 0, 15000.00, 9.00, 'creditCard', 'Highway Freight', '2024-11-22 00:00:00', '2024-11-23 00:00:00', 1500, 'Dhaka', 'Qatar', 1, '2024-11-08 21:17:04', '2024-11-08 21:17:04'),
(7, 0, 1500000.00, 3.00, 'bankTransfer', 'Sailing Freight', '2024-01-15 00:00:00', '2024-11-25 00:00:00', 7800, 'Canada', 'CTG', 9, '2024-11-08 21:51:18', '2024-11-08 21:51:18'),
(8, 0, 1500000.00, 3.00, 'creditCard', 'Highway Freight', '2024-01-15 00:00:00', '2024-11-25 00:00:00', 7800, 'Canada', 'CTG', 8, '2024-11-08 22:08:10', '2024-11-08 22:08:10'),
(9, 0, 25000.00, 8.00, 'creditCard', 'Air Freight', '2024-11-14 11:02:00', '2024-11-12 11:03:00', 496, 'CTG', 'Dhaka', 8, '2024-11-08 23:03:48', '2024-11-08 23:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `highwayfreights`
--

CREATE TABLE `highwayfreights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `vehicle_id` varchar(255) NOT NULL,
  `arrival_location` varchar(255) NOT NULL,
  `insurance_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insurances`
--

CREATE TABLE `insurances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `cargo_serial_number` varchar(255) DEFAULT NULL,
  `claim_period` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_category_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_category_id`, `item_name`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 'Yarn', 'on processing', '2024-11-02 00:38:11', '2024-11-02 00:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `name`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Oil', 'Paid', '2024-11-02 00:37:35', '2024-11-02 00:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `country_id`, `state_id`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2get', '2024-10-27 00:03:34', '2024-10-27 00:03:34'),
(5, 9, 26, 'Akborsha', '2024-10-27 02:27:02', '2024-10-27 02:27:02'),
(6, 14, 14, 'Lalbag', '2024-11-08 22:52:51', '2024-11-08 22:52:51'),
(7, 14, 14, 'Khatungonj', '2024-11-08 22:53:27', '2024-11-08 22:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_08_044846_create_insuranceclaims_table', 1),
(6, '2024_10_09_053049_create_airfreights_table', 1),
(7, '2024_10_10_144107_create_sailingfreights_table', 1),
(8, '2024_10_12_035121_create_highwayfreights_table', 1),
(9, '2024_10_13_160737_create_warehouses_table', 1),
(10, '2024_10_16_165800_create_customers_table', 1),
(11, '2024_10_24_034134_create_freights_table', 1),
(13, '2024_10_24_060844_create_countries_table', 1),
(14, '2024_10_24_061930_create_states_table', 1),
(15, '2024_10_24_063022_create_locations_table', 1),
(16, '2024_10_24_075641_create_warehouse_blocks_table', 1),
(17, '2024_10_24_081802_create_item_categories_table', 1),
(18, '2024_10_24_082442_create_items_table', 1),
(19, '2024_10_24_083129_create_transport_types_table', 1),
(20, '2024_10_24_083933_create_order_details_table', 1),
(21, '2024_10_26_143147_create_staff_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'hosp', 'b3031943f5e675b3fe0221386def46523075b1da271d218216ae10dc04d596c8', '[\"*\"]', NULL, NULL, '2024-11-03 01:43:35', '2024-11-03 01:43:35'),
(2, 'App\\Models\\User', 1, 'hosp', 'c3c504df136583ee40b4ce8a61c5c79d363f6737e79d9633f88c220d743dbb5f', '[\"*\"]', NULL, NULL, '2024-11-03 01:48:24', '2024-11-03 01:48:24'),
(3, 'App\\Models\\User', 5, 'hosp', 'f19fe88614dcc22cae12f0a0f63482e97857d202e9971a928e2a5c9fc17a3e6d', '[\"*\"]', NULL, NULL, '2024-11-03 02:14:39', '2024-11-03 02:14:39'),
(4, 'App\\Models\\User', 6, 'hosp', 'c00b6bbdee4251ef0a233c7c4a9dc6436388cc0b5c043180424830f7a3dedc85', '[\"*\"]', NULL, NULL, '2024-11-03 22:20:55', '2024-11-03 22:20:55'),
(5, 'App\\Models\\User', 6, 'hosp', '373e1acc92faa8e6d11f5bb00adc062a9b454aacc07e5e9a48cc244a3a1962f4', '[\"*\"]', NULL, NULL, '2024-11-03 22:21:09', '2024-11-03 22:21:09'),
(6, 'App\\Models\\User', 6, 'hosp', 'cf6a5e8bda918d94ce6e10e92573239debf7013a924f9b4d58c5112de09c111e', '[\"*\"]', NULL, NULL, '2024-11-03 22:21:21', '2024-11-03 22:21:21'),
(7, 'App\\Models\\User', 7, 'hosp', 'e65824c2a0f0b21af4ee8fb1ad08e6a71ee2f5e2df8b2c3e65a47e59189bf384', '[\"*\"]', NULL, NULL, '2024-11-03 22:57:38', '2024-11-03 22:57:38'),
(8, 'App\\Models\\User', 7, 'hosp', '616ec11351e8c9b56d4d82fb0b1418d5cd2cb420086df16d339e435618335f78', '[\"*\"]', NULL, NULL, '2024-11-03 22:57:48', '2024-11-03 22:57:48'),
(9, 'App\\Models\\User', 8, 'hosp', 'c80f75202aaa2f691d7e0fc893325516d26252e5feee0f7b69275043f5848bc1', '[\"*\"]', NULL, NULL, '2024-11-03 22:59:34', '2024-11-03 22:59:34'),
(10, 'App\\Models\\User', 8, 'hosp', 'a2d5f46c02e537e369a3e426b5dc0886518f4ff8d87dffa56655a2d35210e7e4', '[\"*\"]', NULL, NULL, '2024-11-03 23:00:16', '2024-11-03 23:00:16'),
(11, 'App\\Models\\User', 9, 'hosp', 'a5739d8b57658a62b960a90b8e139117635d83794d075159540d2e90f06d95b8', '[\"*\"]', NULL, NULL, '2024-11-04 02:20:28', '2024-11-04 02:20:28'),
(12, 'App\\Models\\User', 6, 'hosp', 'cea0240a087bce896dca9285d2cc9755c13ed81249fb175c5460ccbdb0ace2bf', '[\"*\"]', NULL, NULL, '2024-11-07 00:10:55', '2024-11-07 00:10:55'),
(13, 'App\\Models\\User', 15, 'hosp', '67a5eec9658bf2d03b989726b15e3fecfcc15b622d178ff4dfc1833b43c46cbf', '[\"*\"]', NULL, NULL, '2024-11-08 22:14:22', '2024-11-08 22:14:22'),
(14, 'App\\Models\\User', 15, 'hosp', 'd2f249f3d1e1bdd6e5f2d37ecf9086eb14e369c6171b0a1c40bbb8b748b7b57b', '[\"*\"]', NULL, NULL, '2024-11-08 22:14:47', '2024-11-08 22:14:47'),
(15, 'App\\Models\\User', 16, 'hosp', '9bf89719923e689524bdc672fa791339ed50e443cb5ba5b993aa0834c5b001c7', '[\"*\"]', NULL, NULL, '2024-11-08 22:21:49', '2024-11-08 22:21:49'),
(16, 'App\\Models\\User', 6, 'hosp', '520022eb17c2d8d421cdf1dbf1677b09004604388621f6ee4849767b1c998441', '[\"*\"]', NULL, NULL, '2024-11-08 22:42:13', '2024-11-08 22:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `identity` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `identity`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin', '2023-11-13 00:34:48', NULL),
(2, 'Admin', 'admin', '2023-11-13 00:34:48', NULL),
(3, 'Customer', 'customer', '2023-11-24 23:09:17', '2023-11-24 23:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `sailingfreights`
--

CREATE TABLE `sailingfreights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `ship_name` varchar(255) NOT NULL,
  `arrival_port_name` varchar(255) NOT NULL,
  `insurance_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kabul', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 'Tirana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 'Algiers', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 4, 'Andorra la Vella', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 5, 'Luanda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 6, 'Saint John\'s', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 7, 'Buenos Aires', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 8, 'Yerevan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 9, 'Canberra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 10, 'Vienna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 11, 'Baku', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 12, 'Nassau', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 13, 'Manama', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 14, 'Dhaka', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 15, 'Bridgetown', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 16, 'Minsk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 17, 'Brussels', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 18, 'Belmopan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 19, 'Porto-Novo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 20, 'Thimphu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 21, 'Sucre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 22, 'Sarajevo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 23, 'Gaborone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 24, 'Bras?lia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 25, 'Bandar Seri Begawan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 26, 'Sofia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 27, 'Ouagadougou', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 28, 'Bujumbura', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 29, 'Praia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 30, 'Phnom Penh', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transport_types`
--

CREATE TABLE `transport_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `base_price` decimal(8,2) NOT NULL,
  `per_unit_price` decimal(8,2) NOT NULL,
  `average_duration` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transport_types`
--

INSERT INTO `transport_types` (`id`, `name`, `type`, `base_price`, `per_unit_price`, `average_duration`, `created_at`, `updated_at`) VALUES
(4, 'Freightliner Cascadia', 'Heavy-Duty Truck', 150.00, 25.00, 10, '2024-11-08 21:35:06', '2024-11-08 21:35:06'),
(5, 'Volvo VNL', 'Semi-Truck', 140.00, 30.00, 10, '2024-11-08 21:35:46', '2024-11-08 21:35:46'),
(6, 'Kenworth T680', 'Semi-Truck', 145.00, 30.00, 10, '2024-11-08 21:36:15', '2024-11-08 21:36:15'),
(7, 'Peterbilt 579', 'Heavy-Duty Truck', 160.00, 35.00, 10, '2024-11-08 21:36:51', '2024-11-08 21:36:51'),
(8, 'International LT Series', 'Semi-Truck', 135.00, 30.00, 8, '2024-11-08 21:37:19', '2024-11-08 21:37:19'),
(9, 'Mack Anthem', 'Heavy-Duty Truck', 145.00, 30.00, 10, '2024-11-08 21:37:47', '2024-11-08 21:37:47'),
(10, 'Komatsu HD785-7', 'Off-Highway Dump Truck', 200.00, 40.00, 8, '2024-11-08 21:38:24', '2024-11-08 21:38:24'),
(11, 'Caterpillar 797F', 'Off-Highway Dump Truck', 3.00, 200.00, 8, '2024-11-08 21:39:57', '2024-11-08 21:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rahim', 'rahim@gmail.com', 1, NULL, '$2y$12$R1HoEt6S.WLlNugx3MIl2OkS8XBbN.ZhOKvyK3nJKFhPEW76mzvRu', NULL, '2024-11-03 01:43:35', '2024-11-03 01:43:35'),
(2, 'Rabbani Ahmed', 'ahmed@gmail.com', 2, NULL, '$2y$12$toRqiGKunqLxC//y8dxlF.yEQPuhlbkuUZR7wM4QRjxO7uosLG5Wq', NULL, '2024-11-03 02:11:53', '2024-11-03 02:11:53'),
(5, 'tom', 't@gmail.com', 1, NULL, '$2y$12$uBKf16IywHmtZw25fez6Kuu/rn9Fg0Fnfpm06h9x76DVse6WR7F9G', NULL, '2024-11-03 02:14:39', '2024-11-03 02:14:39'),
(6, 'Sanjid', 'sanjid@gmail.com', 1, NULL, '$2y$12$gPjLHBuwlNnwvr1W/mNxIuXc4GXUGEHXxeUh7muhT0fJ5RQ0HK5i2', NULL, '2024-11-03 22:20:55', '2024-11-03 22:20:55'),
(7, 'Tanim', 'tanim@gmail.com', 1, NULL, '$2y$12$pPpjNd8jpc3Bz27fH8.aKOrsCsA5ABi52B2H288gxoxSy0nn2fT76', NULL, '2024-11-03 22:57:38', '2024-11-03 22:57:38'),
(8, 'soniya', 'soni@gmail.com', 1, NULL, '$2y$12$e7v4I17K7XyxCD1ROcE8zu8Uch/r.bqYX6bYpGFGHJ/hUAovoORtW', NULL, '2024-11-03 22:59:34', '2024-11-03 22:59:34'),
(9, 'Rimon', 'rimon@gmail.com', 3, NULL, '$2y$12$xUanTW3fQMvKbC9EmyIvNOldzbrGPYLjEG9NDzYZmKvRcCYgLACX6', NULL, '2024-11-04 02:15:42', '2024-11-04 02:15:42'),
(12, 'Rimon', 'rimon@yahoo.com', 3, NULL, '$2y$12$AxcHsq2teb.6taRdJ/5AYuimPt5Rg4m.q6WX755pr2XFE7OLLya2e', NULL, '2024-11-04 02:17:08', '2024-11-04 02:17:08'),
(15, 'nurkhan', 'nur@yahoo.com', 0, NULL, '$2y$12$/vOa78i84usCPv/xMs56H.F9YGxu9NeG3XIhgkQQvuDUjmzoriBuq', NULL, '2024-11-08 22:14:21', '2024-11-08 22:14:21'),
(16, 'sohana', 'so@gmail.com', 0, NULL, '$2y$12$/hIku48ms4gLfNc3m5XcuOXwC7ukd/lIcwc1bf1BeBUKsCXmeKLlO', NULL, '2024-11-08 22:21:49', '2024-11-08 22:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `address`, `contact_no`, `employee_id`, `created_at`, `updated_at`) VALUES
(1, 'Chaldal Caktai Warehouse', 'Caktai', '4859', 1, '2024-11-08 22:44:15', '2024-11-08 22:44:15'),
(2, 'BSRM Storage & Service Center (FastBuild Plant)', 'BSRM', '15263', 2, '2024-11-08 22:44:40', '2024-11-08 22:44:40'),
(3, 'Incontrade Limited', 'Laldiar Char, East Patenga, Chittagong, Bangladesh', '15263', 3, '2024-11-08 22:45:29', '2024-11-08 22:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_blocks`
--

CREATE TABLE `warehouse_blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `width` double(8,2) NOT NULL,
  `height` double(8,2) NOT NULL,
  `depth` double(8,2) NOT NULL,
  `location` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouse_blocks`
--

INSERT INTO `warehouse_blocks` (`id`, `name`, `width`, `height`, `depth`, `location`, `note`, `created_at`, `updated_at`) VALUES
(2, 'Section-5', 12.00, 28.00, 36.00, 'Sylhet', 'Available', '2024-11-08 22:48:44', '2024-11-08 22:48:44'),
(3, 'Section-6', 14.00, 20.00, 15.00, 'CTG', 'Available', '2024-11-08 22:49:15', '2024-11-08 22:49:15'),
(4, 'Section-7', 40.00, 46.00, 20.00, 'Dhaka', 'Engaged', '2024-11-08 22:50:12', '2024-11-08 22:50:12'),
(5, 'Section-8', 20.00, 16.00, 10.00, 'UAE', 'Engaged', '2024-11-08 22:50:48', '2024-11-08 22:50:48'),
(6, 'Section-9', 22.00, 24.00, 48.00, 'USA', 'Available', '2024-11-08 22:51:52', '2024-11-08 22:51:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airfreights`
--
ALTER TABLE `airfreights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `freights`
--
ALTER TABLE `freights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `highwayfreights`
--
ALTER TABLE `highwayfreights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurances`
--
ALTER TABLE `insurances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_type_unique` (`name`),
  ADD UNIQUE KEY `roles_identity_unique` (`identity`);

--
-- Indexes for table `sailingfreights`
--
ALTER TABLE `sailingfreights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport_types`
--
ALTER TABLE `transport_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `warehouses_employee_id_unique` (`employee_id`);

--
-- Indexes for table `warehouse_blocks`
--
ALTER TABLE `warehouse_blocks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airfreights`
--
ALTER TABLE `airfreights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `freights`
--
ALTER TABLE `freights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `highwayfreights`
--
ALTER TABLE `highwayfreights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurances`
--
ALTER TABLE `insurances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sailingfreights`
--
ALTER TABLE `sailingfreights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `transport_types`
--
ALTER TABLE `transport_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `warehouse_blocks`
--
ALTER TABLE `warehouse_blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
