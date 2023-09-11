-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1:3307
-- Χρόνος δημιουργίας: 11 Σεπ 2023 στις 22:26:42
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
-- Δομή πίνακα για τον πίνακα `price`
--

CREATE TABLE `price` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Δομή πίνακα για τον πίνακα `shop`
--

CREATE TABLE `shop` (
  `shop_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shop` varchar(255) NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `shop`
--

INSERT INTO `shop` (`shop_id`, `name`, `shop`, `longitude`, `latitude`) VALUES
(354449389, 'Lidl', 'supermarket', 21.712654, 38.2080319),
(360217468, 'The Mart', 'supermarket', 21.7806567, 38.28931),
(360226900, 'Lidl', 'supermarket', 21.7434265, 38.2633511),
(364381224, 'Σουπερμάρκετ Ανδρικόπουλος', 'supermarket', 21.7908028, 38.2952086),
(364463568, 'Σκλαβενίτης', 'supermarket', 21.7642075, 38.2104365),
(598279836, 'Papakos', 'convenience', 21.7622778, 38.23553),
(980515550, 'Lidl', 'supermarket', 21.740082, 38.2312926),
(1643373636, 'Σκλαβενίτης', 'supermarket', 21.7814957, 38.3013087),
(1643818281, 'Σκλαβενίτης', 'supermarket', 21.7489662, 38.2596476),
(1657132006, 'Ρουμελιώτης SUPER Market', 'supermarket', 21.7436127, 38.2613806),
(1657132008, 'Σκλαβενίτης', 'supermarket', 21.741582, 38.2585236),
(1763830009, 'My market', 'supermarket', 21.7473265, 38.2323892),
(1763830474, 'ΑΒ Βασιλόπουλος', 'supermarket', 21.7257294, 38.2322376),
(1770994538, 'Markoulas', 'supermarket', 21.7603629, 38.2644973),
(1815896581, 'Lidl', 'supermarket', 21.8051332, 38.3067563),
(1971240515, 'Ανδρικόπουλος', 'supermarket', 21.736371, 38.2399863),
(1971247760, 'Σκλαβενίτης', 'supermarket', 21.7373409, 38.2364945),
(1971249846, 'My Market', 'supermarket', 21.7342362, 38.2427052),
(3144355008, 'My Market', 'supermarket', 21.7396708, 38.2568618),
(3354481184, 'Ανδρικόπουλος', 'supermarket', 21.7323293, 38.1951968),
(4101518891, 'ΑΒ ΒΑΣΙΛΟΠΟΥΛΟΣ', 'supermarket', 21.7418506, 38.2565589),
(4356183595, 'Σκλαβενίτης', 'supermarket', 21.733285, 38.2434859),
(4357589496, 'Ανδρικόπουλος', 'supermarket', 21.7302559, 38.2427963),
(4372108797, 'Mini Market', 'convenience', 21.8364993, 38.2725804),
(4484528391, 'Carna', 'convenience', 21.7667136, 38.2795377),
(4752810729, 'Mini Market', 'convenience', 21.7770011, 38.3052409),
(4931300543, 'Kronos', 'supermarket', 21.7296435, 38.2425794),
(4953268497, 'Φίλιππας', 'convenience', 21.7504681, 38.2585639),
(5005384516, 'No supermarket', 'supermarket', 21.7363349, 38.2498065),
(5005409493, 'Kiosk', 'convenience', 21.735128, 38.2490852),
(5005409494, 'Kiosk', 'convenience', 21.7349115, 38.2493169),
(5005409495, 'Kiosk', 'convenience', 21.7344427, 38.2489563),
(5005476710, 'Kiosk', 'convenience', 21.7413066, 38.2569875),
(5005476711, 'Kiosk', 'convenience', 21.7409531, 38.2561434),
(5164678230, 'Ανδρικόπουλος - Supermarket', 'supermarket', 21.7481501, 38.2691937),
(5164678230, 'Σκλαβενίτης', 'supermarket', 21.7497014, 38.2690963),
(5396345464, 'Mini Market', 'convenience', 21.8764222, 38.3277388),
(5620198221, 'ΑΒ Βασιλόπουλος', 'supermarket', 21.7357783, 38.2170935),
(5620208927, 'Mini Market', 'convenience', 21.7321204, 38.2160259),
(7673935764, '3A', 'supermarket', 21.7396687, 38.2504514),
(7673976786, 'Spar', 'supermarket', 21.7389771, 38.2486316),
(7673986831, 'ΑΝΔΡΙΚΟΠΟΥΛΟΣ', 'supermarket', 21.7383224, 38.2481545),
(7674120315, 'ΑΝΔΡΙΚΟΠΟΥΛΟΣ', 'supermarket', 21.7308044, 38.2429466),
(7677225097, 'MyMarket', 'supermarket', 21.7265283, 38.2392836),
(8214753473, 'Ena Cash And Carry', 'supermarket', 21.7253472, 38.2346622),
(8214854586, 'ΚΡΟΝΟΣ - (Σκαγιοπουλείου)', 'supermarket', 21.7294915, 38.2358002),
(8214887295, 'Ανδρικόπουλος Super Market', 'supermarket', 21.7306406, 38.2379176),
(8214887306, '3Α Αράπης', 'supermarket', 21.7328984, 38.2375068),
(8214910532, 'Γαλαξίας', 'supermarket', 21.733787, 38.2361127),
(8215010716, 'Super Market Θεοδωρόπουλος', 'supermarket', 21.7283123, 38.2360129),
(8215157448, 'Super Market ΚΡΟΝΟΣ', 'supermarket', 21.7340723, 38.2390442),
(8777081651, 'Σκλαβενίτης', 'supermarket', 21.7428703, 38.2601801),
(8777171555, '3Α Αράπης', 'supermarket', 21.7460078, 38.2586424),
(8805335004, 'Μασούτης', 'supermarket', 21.7355058, 38.2454669),
(8805467220, 'ΑΒ Shop & Go', 'supermarket', 21.7380288, 38.24957),
(8806495733, '3Α ΑΡΑΠΗΣ', 'supermarket', 21.7455558, 38.2398789),
(9651304117, 'Περίπτερο', 'convenience', 21.7408745, 38.2554443);

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
