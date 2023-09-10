-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1:3307
-- Χρόνος δημιουργίας: 10 Σεπ 2023 στις 20:04:50
-- Έκδοση διακομιστή: 10.4.28-MariaDB
-- Έκδοση PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `web_project`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `category`
--

CREATE TABLE `category` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
('a8ac6be68b53443bbd93b229e2f9cd34', 'Ποτά-Αναψυτικά'),
('ee0022e7b1b34eb2b834ea334cda52e7', 'Τρόφιμα'),
('8016e637b54241f8ad242ed1699bf2da', 'Βρεφικά Είδη'),
('d41744460283406a86f8e4bd5010a66d', 'Καθαριότητα'),
('662418cbd02e435280148dbb8892782a', 'Για κατοικίδια');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `subcategory_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `category_id`, `subcategory_id`) VALUES
(107, 'La Vache Qui Rit Τυρί Cheddar Φέτες 200γρ', 'ee0022e7b1b34eb2b834ea334cda52e7', '4c73d0eccd1e4dde8bb882e436a64ebb'),
(109, 'Μίνι Babybel Διχτάκι 6τεμ 120γρ', 'ee0022e7b1b34eb2b834ea334cda52e7', '4c73d0eccd1e4dde8bb882e436a64ebb'),
(132, 'Φάγε Τυρί Τριμμένο Gouda 200γρ', 'ee0022e7b1b34eb2b834ea334cda52e7', '4c73d0eccd1e4dde8bb882e436a64ebb'),
(170, 'Φάγε Μιγμ Tριμ 4 Τυρ 200γρ', 'ee0022e7b1b34eb2b834ea334cda52e7', '4c73d0eccd1e4dde8bb882e436a64ebb'),
(172, 'Φάγε Τυρί Flair Cottage 225γρ', 'ee0022e7b1b34eb2b834ea334cda52e7', '4c73d0eccd1e4dde8bb882e436a64ebb'),
(364, 'Εδέμ Φασόλια Κόκκινα Σε Νερό 240γρ.', 'ee0022e7b1b34eb2b834ea334cda52e7', '50e8a35122854b2b9cf0e97356072f94'),
(724, '3 Άλφα Φασόλια Χονδρά Εισαγωγής 500γρ', 'ee0022e7b1b34eb2b834ea334cda52e7', '50e8a35122854b2b9cf0e97356072f94'),
(749, '3 Άλφα Ρεβύθια Χονδρά Εισαγωγής 500γρ', 'ee0022e7b1b34eb2b834ea334cda52e7', '50e8a35122854b2b9cf0e97356072f94'),
(754, 'Agrino Φασόλια Γίγαντες Ελέφαντες Καστοριάς Π.Γ.Ε. 500γρ', 'ee0022e7b1b34eb2b834ea334cda52e7', '50e8a35122854b2b9cf0e97356072f94'),
(769, '3 Άλφα Φασόλια Γίγαντες Εισαγωγής 500γρ', 'ee0022e7b1b34eb2b834ea334cda52e7', '50e8a35122854b2b9cf0e97356072f94'),
(1029, 'Fix Hellas Μπύρα 6X330ml', 'a8ac6be68b53443bbd93b229e2f9cd34', '329bdd842f9f41688a0aa017b74ffde4'),
(1033, 'Heineken Μπύρα 6X330ml', 'a8ac6be68b53443bbd93b229e2f9cd34', '329bdd842f9f41688a0aa017b74ffde4'),
(1037, 'Stella Artois Μπύρα 6x330ml', 'a8ac6be68b53443bbd93b229e2f9cd34', '329bdd842f9f41688a0aa017b74ffde4'),
(1086, 'Mythos Μπύρα 330ml', 'a8ac6be68b53443bbd93b229e2f9cd34', '329bdd842f9f41688a0aa017b74ffde4'),
(1139, 'Amstel Μπύρα 330ml', 'a8ac6be68b53443bbd93b229e2f9cd34', '329bdd842f9f41688a0aa017b74ffde4'),
(1273, 'Λουξ Πορτοκαλάδα Μπλε 330ml', 'a8ac6be68b53443bbd93b229e2f9cd34', '3010aca5cbdc401e8dfe1d39320a8d1a'),
(1288, 'Coca Cola Zero 1λιτ', 'a8ac6be68b53443bbd93b229e2f9cd34', '3010aca5cbdc401e8dfe1d39320a8d1a'),
(1289, 'Coca Cola 330ml', 'a8ac6be68b53443bbd93b229e2f9cd34', '3010aca5cbdc401e8dfe1d39320a8d1a'),
(1172, 'Red Bull Ενεργειακό Ποτό 250ml', 'a8ac6be68b53443bbd93b229e2f9cd34', '3010aca5cbdc401e8dfe1d39320a8d1a'),
(442, 'Monster Energy Drink 500ml', 'a8ac6be68b53443bbd93b229e2f9cd34', '3010aca5cbdc401e8dfe1d39320a8d1a'),
(756, 'Nestle Φαρίν Λακτέ 350γρ', '8016e637b54241f8ad242ed1699bf2da', '7e86994327f64e3ca967c09b5803966a'),
(417, 'Nutricia Biskotti Ζωάκια 180γρ', '8016e637b54241f8ad242ed1699bf2da', '7e86994327f64e3ca967c09b5803966a'),
(386, 'Γιώτης Ανθός Ορύζης 150γρ', '8016e637b54241f8ad242ed1699bf2da', '7e86994327f64e3ca967c09b5803966a'),
(329, 'Γιώτης Κρέμα Παιδικη Φαρίν Λακτέ Μπισκότο 300γρ', '8016e637b54241f8ad242ed1699bf2da', '7e86994327f64e3ca967c09b5803966a'),
(301, 'Γιώτης Μπισκοτόκρεμα 300γρ', '8016e637b54241f8ad242ed1699bf2da', '7e86994327f64e3ca967c09b5803966a'),
(349, 'Pampers Πάνες Μωρού Premium Pants Nο 5 12-17κιλ 34τεμ', '8016e637b54241f8ad242ed1699bf2da', 'e0efaa1776714351a4c17a3a9d412602'),
(376, 'Pampers Πάνες Premium Care Nο 3 5-9 κιλ 60τεμ', '8016e637b54241f8ad242ed1699bf2da', 'e0efaa1776714351a4c17a3a9d412602'),
(377, 'Pampers Πάνες Premium Care Nο 4 8-14 κιλ 52τεμ', '8016e637b54241f8ad242ed1699bf2da', 'e0efaa1776714351a4c17a3a9d412602'),
(388, 'Babylino Πάνες Μωρού Sensitive Nο7 17+ κιλ 14τεμ', '8016e637b54241f8ad242ed1699bf2da', 'e0efaa1776714351a4c17a3a9d412602'),
(465, 'Pampers Πάνες Μωρού 31τεμ', '8016e637b54241f8ad242ed1699bf2da', 'e0efaa1776714351a4c17a3a9d412602'),
(472, 'Softex Χαρτί Υγείας Super Giga 2 Φύλλα 12τεμ', 'd41744460283406a86f8e4bd5010a66d', '034941f08ca34f7baaf5932427d7e635'),
(490, 'Zewa Deluxe Χαρτί Υγείας 3 Φύλλα 8τεμ', 'd41744460283406a86f8e4bd5010a66d', '034941f08ca34f7baaf5932427d7e635'),
(571, 'Zewa Χαρτι Κουζίνας Wisch And Weg Economy 3τεμ', 'd41744460283406a86f8e4bd5010a66d', '034941f08ca34f7baaf5932427d7e635'),
(682, 'Kleenex Χαρτί Υγείας 2 Φύλλα 12τεμ', 'd41744460283406a86f8e4bd5010a66d', '034941f08ca34f7baaf5932427d7e635'),
(765, 'Zewa Χαρτί Υγείας Deluxe Χαμομήλι 3 Φύλλα 8τεμ 768γρ', 'd41744460283406a86f8e4bd5010a66d', '034941f08ca34f7baaf5932427d7e635'),
(797, 'Skip Υγρό Regular 30πλ', 'd41744460283406a86f8e4bd5010a66d', 'e60aca31a37a40db8a83ccf93bd116b1'),
(860, 'Fairy Original All in One Καψ Πλυντ Πιάτ Λεμόνι 22τεμ', 'd41744460283406a86f8e4bd5010a66d', 'e60aca31a37a40db8a83ccf93bd116b1'),
(862, 'Persil Black Υγρό Απορ Πλυντ Ρούχ 12Μεζ 750ml', 'd41744460283406a86f8e4bd5010a66d', 'e60aca31a37a40db8a83ccf93bd116b1'),
(865, 'Omo Υγρό Απορ Τροπ Λουλ 30πλ 1,95l', 'd41744460283406a86f8e4bd5010a66d', 'e60aca31a37a40db8a83ccf93bd116b1'),
(867, 'Dixan Σκόνη Πλυντ 42πλ 2,31γρ', 'd41744460283406a86f8e4bd5010a66d', 'e60aca31a37a40db8a83ccf93bd116b1'),
(1026, 'Friskies Adult Ξηρά Γατ/Φή Κουν/Κοτ/Λαχ 400γρ', '662418cbd02e435280148dbb8892782a', '926262c303fe402a8542a5d5cf3ac7eb'),
(1080, 'Friskies Άμμος Υγιεινής 5κιλ', '662418cbd02e435280148dbb8892782a', '926262c303fe402a8542a5d5cf3ac7eb'),
(1179, 'Friskies Adult Ξηρά Γατ/Φή Βοδ/Συκ/Κοτ 400γρ', '662418cbd02e435280148dbb8892782a', '926262c303fe402a8542a5d5cf3ac7eb'),
(1182, 'Purina Gold Gourmet Γατ/Φή Βοδ/Κοτ 85γρ', '662418cbd02e435280148dbb8892782a', '926262c303fe402a8542a5d5cf3ac7eb'),
(1191, 'Whiskas Γατ/Φή Κοτόπουλο 400γρ', '662418cbd02e435280148dbb8892782a', '926262c303fe402a8542a5d5cf3ac7eb'),
(1323, 'Cesar Clasicos Σκυλ/Φή Μοσχ 150γρ', '662418cbd02e435280148dbb8892782a', '0c6e42d52765495dbbd06c189a4fc80f'),
(1181, 'Pedigree Σκυλ/Φή Πατέ Κοτοπ/Μοσχ 300γρ', '662418cbd02e435280148dbb8892782a', '0c6e42d52765495dbbd06c189a4fc80f'),
(1180, 'Pedigree Υγ Σκυλ/Φή 3 Ποικ Πουλερικών 400γρ', '662418cbd02e435280148dbb8892782a', '0c6e42d52765495dbbd06c189a4fc80f'),
(1181, 'Pedigree Σκυλ/Φή Πατέ Κοτοπ/Μοσχ 300γρ', '662418cbd02e435280148dbb8892782a', '0c6e42d52765495dbbd06c189a4fc80f'),
(1173, 'Friskies Σκυλ/Φή Ξηρ Κοτ/Λαχ 1,5κιλ', '662418cbd02e435280148dbb8892782a', '0c6e42d52765495dbbd06c189a4fc80f');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `subcategory`
--

CREATE TABLE `subcategory` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `subcategory`
--

INSERT INTO `subcategory` (`id`, `name`, `category_id`) VALUES
('329bdd842f9f41688a0aa017b74ffde4', 'Μπύρες', 'a8ac6be68b53443bbd93b229e2f9cd34'),
('3010aca5cbdc401e8dfe1d39320a8d1a', 'Αναψυκτικά - Ενεργειακά Ποτά', 'a8ac6be68b53443bbd93b229e2f9cd34'),
('4c73d0eccd1e4dde8bb882e436a64ebb', 'Τυριά', 'ee0022e7b1b34eb2b834ea334cda52e7'),
('50e8a35122854b2b9cf0e97356072f94', ' Όσπρια ', 'ee0022e7b1b34eb2b834ea334cda52e7'),
('7e86994327f64e3ca967c09b5803966a', 'Βρεφικές τροφές', '8016e637b54241f8ad242ed1699bf2da'),
('e0efaa1776714351a4c17a3a9d412602', 'Πάνες', '8016e637b54241f8ad242ed1699bf2da'),
('034941f08ca34f7baaf5932427d7e635', 'Χαρτικά', 'd41744460283406a86f8e4bd5010a66d'),
('e60aca31a37a40db8a83ccf93bd116b1', 'Απορρυπαντικά', 'd41744460283406a86f8e4bd5010a66d'),
('926262c303fe402a8542a5d5cf3ac7eb', 'Τροφή Γάτας', '662418cbd02e435280148dbb8892782a'),
('0c6e42d52765495dbbd06c189a4fc80f', 'Τροφή Σκύλου', '662418cbd02e435280148dbb8892782a');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `registration_date` datetime NOT NULL DEFAULT current_timestamp(),
  `token` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `score_history` bigint(20) NOT NULL,
  `token_history` int(12) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `registration_date`, `token`, `score`, `score_history`, `token_history`, `admin`) VALUES
(0, 'Σταμάτης', '@Stam1809', 'stam@gmail.com', '0000-00-00 00:00:00', 0, 0, 0, 0, 1),
(0, 'user1', '0f13dcb6729761548649efb47bb2908d', 'user1@gmail.com', '2023-09-10 20:02:43', 0, 0, 0, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
