-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 19, 2015 at 06:28 PM
-- Server version: 5.6.23
-- PHP Version: 5.5.20

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bgarza`
--

-- --------------------------------------------------------

--
-- Table structure for table `capital`
--

CREATE TABLE IF NOT EXISTS `capital` (
  `capitalID` int(11) NOT NULL DEFAULT '0',
  `yearMadeCapital` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `capital`
--

INSERT INTO `capital` (`capitalID`, `yearMadeCapital`) VALUES
(1, 1790),
(2, 1000),
(3, 1325),
(4, 1949),
(5, 1866),
(6, 1990),
(7, 358),
(8, 1043),
(9, 722),
(10, 1797),
(11, 1194),
(12, 438),
(13, 1075),
(14, 776),
(15, 1343),
(16, 564),
(17, 1780),
(18, 718),
(19, 947),
(20, 1115),
(21, 1766),
(22, 1405),
(23, 563),
(24, 1008),
(25, 972),
(26, 460),
(27, 1053),
(28, 1717),
(29, 767),
(30, 1562),
(31, 558),
(32, 1915),
(33, 1897),
(34, 1520),
(35, 943),
(36, 1727),
(37, 378),
(38, 971),
(39, 1285),
(40, 1004),
(41, 1529),
(42, 1966),
(43, 1623),
(44, 1692),
(45, 1932),
(46, 1586),
(47, 1864),
(48, 958),
(49, 1831),
(50, 1865),
(51, 1067),
(52, 1125),
(53, 1782),
(54, 416),
(55, 830),
(56, 807),
(57, 1436),
(58, 716),
(59, 816),
(60, 1171),
(61, 604),
(62, 1470),
(63, 397),
(64, 513),
(65, 684),
(66, 1489),
(67, 1041),
(68, 1902),
(69, 1252),
(70, 1376),
(71, 1032),
(72, 1161),
(73, 979),
(74, 926),
(75, 657),
(76, 1314),
(77, 495),
(78, 688),
(79, 710),
(80, 1662),
(81, 1323),
(82, 520),
(83, 1322),
(84, 949),
(85, 1188),
(86, 1799),
(87, 1388),
(88, 475),
(89, 1345),
(90, 676),
(91, 1166),
(92, 1311),
(93, 1110),
(94, 1748),
(95, 1485),
(96, 587),
(97, 991),
(98, 1080),
(99, 1017),
(100, 717),
(101, 1928),
(102, 1365),
(103, 917),
(104, 1157),
(105, 1239),
(106, 965);

-- --------------------------------------------------------

--
-- Table structure for table `continent`
--

CREATE TABLE IF NOT EXISTS `continent` (
  `Size` int(11) DEFAULT NULL,
  `continentName` char(40) NOT NULL DEFAULT '',
  `population` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `continent`
--

INSERT INTO `continent` (`Size`, `continentName`, `population`) VALUES
(30000000, 'Africa', 1100000000),
(14000000, 'Antarctica', 0),
(44500000, 'Asia', 4000000000),
(7600000, 'Australia', 23000000),
(10000000, 'Europe', 742000000),
(24000000, 'North America', 528000000),
(17000000, 'South America', 387000000);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `countryID` int(11) NOT NULL DEFAULT '0',
  `GDP` int(11) DEFAULT NULL,
  `name` text,
  `hapIndx` int(11) DEFAULT NULL,
  `typeGovt` char(40) DEFAULT NULL,
  `incomePerCapita` int(11) DEFAULT NULL,
  `population` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`countryID`, `GDP`, `name`, `hapIndx`, `typeGovt`, `incomePerCapita`, `population`) VALUES
(1, 17000000, 'United States', 37, 'Parliamentary democracy', 54800, 318892103),
(2, 2435000, 'United Kingdom', 48, 'Constitutional Monarchy', 37700, 63742977),
(3, 2143000, 'Mexico', 53, 'Federal Republic', 17900, 120286655),
(4, 17630000, 'China', 45, 'Communist state', 12900, 1355692576),
(5, 1579000, 'Canada', 44, 'Parliamentary democracy', 44500, 34834841),
(6, 3621000, 'Germany', 47, 'Federal Republic', 44700, 80996685),
(7, 5616561, 'Serbia', 71, 'ut quam', 41535, 5111241),
(8, 46452529, 'Bhutan', 19, 'morbi tristique', 16335, 20406473),
(9, 43281371, 'Guernsey', 81, 'magna nec', 93545, 12697769),
(10, 19122081, 'South Sudan', 56, 'Aliquam rutrum', 78518, 13788061),
(11, 48939715, 'Cape Verde', 77, 'amet luctus', 49261, 20232426),
(12, 42770243, 'Montserrat', 0, 'ad litora', 75087, 4691838),
(13, 14520774, 'Ethiopia', 45, 'auctor, nunc', 21192, 20587794),
(14, 32561803, 'Sri Lanka', 29, 'In at', 53709, 9933667),
(15, 36539195, 'Italy', 60, 'urna. Nullam', 39164, 10234829),
(16, 34631287, 'Netherlands', 35, 'fringilla ornare', 85424, 14462537),
(17, 11251623, 'Korea, North', 100, 'semper rutrum.', 76113, 21560838),
(18, 45310289, 'Iceland', 98, 'justo. Proin', 68077, 17077243),
(19, 46901698, 'Tunisia', 72, 'vitae purus', 50361, 12869101),
(20, 37174876, 'Tonga', 13, 'non arcu.', 29048, 8953211),
(21, 26659770, 'Japan', 45, 'vestibulum, neque', 91446, 22948471),
(22, 10745470, 'Lebanon', 80, 'sit amet,', 35642, 2771562),
(23, 34281999, 'Lithuania', 63, 'congue, elit', 63158, 25226890),
(24, 902626, 'Congo (Brazzaville)', 83, 'Etiam ligula', 78651, 6108822),
(25, 6629963, 'British Indian Ocean Territory', 6, 'Nulla aliquet.', 66421, 29613327),
(26, 7453979, 'Antigua and Barbuda', 36, 'Duis ac', 59482, 14018048),
(27, 22102696, 'Lorem', 62, 'pulvinar arcu', 11903, 12809338),
(28, 6381796, 'Croatia', 85, 'lectus. Cum', 77090, 25267956),
(29, 8446845, 'Burundi', 7, 'ac turpis', 95572, 18064706),
(30, 37613023, 'United States of Bryan', 45, 'lacinia. Sed', 17753, 24751472),
(31, 9845153, 'Palestine, State of', 80, 'sed sem', 7236, 29600911),
(32, 28920531, 'Ethiopianitlis', 70, 'non dui', 49573, 27761874),
(33, 16861747, 'Cameroon', 85, 'nec ante', 566, 18519011),
(34, 46263753, 'Virgin Islands, United States', 38, 'dolor elit,', 40588, 6988840),
(35, 46257135, 'Dominican Republic', 86, 'varius orci,', 74156, 27181079),
(36, 45596399, 'Mozambique', 98, 'enim commodo', 37291, 5288618),
(37, 21094444, 'People''s Democratic Republic of Martin', 6, 'et nunc.', 42219, 6063187),
(38, 32473587, 'Macao', 74, 'lacus. Mauris', 3914, 26342416),
(39, 45040429, 'Gargantua', 78, 'dis parturient', 45067, 14569688),
(40, 18628989, 'Iran', 96, 'massa. Vestibulum', 2081, 16758228),
(41, 5138449, 'Fiji', 69, 'Aenean gravida', 88515, 20086691),
(42, 5451593, 'Kenya', 43, 'a neque.', 88982, 10363247),
(43, 36058451, 'Macedonia', 62, 'Morbi neque', 34222, 9187339),
(44, 31871081, 'United Arab Emirates', 70, 'risus. Donec', 81102, 11831743),
(45, 47902268, 'Mario Federation', 59, 'id sapien.', 37122, 15007737),
(46, 22289078, 'Iraq', 1, 'tortor, dictum', 90917, 14596599),
(47, 38744870, 'Fireland', 43, 'eget ipsum.', 75698, 4752843),
(48, 21816987, 'Ipsum', 96, 'sit amet,', 8350, 805557),
(49, 11232280, 'Turks and Caicos Islands', 56, 'aliquam arcu.', 20713, 16588262),
(50, 18926696, 'Brazil', 56, 'ut quam', 9173, 26166416),
(51, 7493966, 'Thailand', 8, 'et risus.', 12485, 12024221),
(52, 29427092, 'United State of Texas', 81, 'Phasellus ornare.', 89227, 1871550),
(53, 28517415, 'Malawi', 61, 'odio semper', 24268, 22891499),
(54, 45598597, 'Ukraine', 42, 'ultrices, mauris', 19426, 29968831),
(55, 31403531, 'Gabon', 93, 'ante. Nunc', 10678, 27118101),
(56, 44959718, 'Belarus', 100, 'orci quis', 27031, 24225438),
(57, 41029091, 'Turkmenistan', 36, 'Duis gravida.', 23525, 3240531),
(58, 47960140, 'Sierra Leone', 44, 'a, aliquet', 94113, 14312655),
(59, 17460483, 'Laos', 85, 'nec urna', 87616, 25136220),
(60, 27640958, 'Chad', 81, 'aliquam, enim', 15867, 3465700),
(61, 46448786, 'Wallis and Futuna', 35, 'enim nisl', 40232, 29161014),
(62, 13789254, 'Ethiotopia', 95, 'nec enim.', 92725, 2624180),
(63, 5882154, 'Mayotte', 37, 'elit pede,', 88407, 2065218),
(64, 37684331, 'Kyrgyzstan', 12, 'magna. Phasellus', 70958, 10850669),
(65, 33403121, 'Antarctica', 49, 'non dui', 37682, 29088535),
(66, 27794457, 'Philippines', 30, 'dapibus ligula.', 52440, 19581120),
(67, 15289980, 'Trinidad and Tobago', 25, 'hendrerit id,', 21467, 9443212),
(68, 47310622, 'Puerto Rico', 33, 'nascetur ridiculus', 44972, 29145100),
(69, 29394492, 'Latvia', 26, 'Duis elementum,', 46004, 10716407),
(70, 34721681, 'Gurundia', 89, 'euismod est', 44199, 9800827),
(71, 17889108, 'Holy See (Vatican City State)', 28, 'Donec nibh.', 13028, 15358465),
(72, 47957017, 'Togo', 26, 'sed sem', 79558, 27494922),
(73, 9132791, 'Venezuela', 82, 'amet, consectetuer', 90908, 20134563),
(74, 31468694, 'South Georgia and The South Sandwich Islands', 78, 'dictum magna.', 21143, 8108500),
(75, 44454073, 'Central African Republic', 41, 'et ultrices', 27981, 8026606),
(76, 46413022, 'Tajikistan', 58, 'est tempor', 19458, 13617368),
(77, 26966219, 'Ecuador', 52, 'nunc id', 53747, 6059204),
(78, 19441857, 'Chinatopia', 20, 'turpis nec', 49789, 12392798),
(79, 10649126, 'Atlantis', 95, 'eleifend. Cras', 32794, 9805762),
(80, 12224568, 'Egypt', 94, 'rhoncus. Donec', 64751, 92223),
(81, 7581204, 'Bangladesh', 89, 'posuere cubilia', 33301, 26290591),
(82, 12748888, 'Guern', 93, 'a, scelerisque', 5382, 24155454),
(83, 40389517, 'Germania', 23, 'risus quis', 57489, 28510046),
(84, 18850059, 'Guam', 12, 'auctor, nunc', 50576, 7124549),
(85, 15738313, 'Federation of Legos', 33, 'ipsum primis', 86999, 16657108),
(86, 42920634, 'Slovenia', 46, 'nulla. Cras', 73735, 1827452),
(87, 31576180, 'Argentina', 27, 'egestas. Aliquam', 72123, 25081642),
(88, 30600789, 'Afghanistan', 76, 'ipsum primis', 61841, 25368595),
(89, 46628602, 'Botswana', 77, 'nisi. Mauris', 71356, 2226355),
(90, 38470321, 'Albania', 94, 'Aliquam fringilla', 65280, 27461592),
(91, 3081969, 'Kiribati', 2, 'egestas rhoncus.', 83443, 10737336),
(92, 1536478, 'Chadlantis', 49, 'Quisque libero', 66382, 7735987),
(93, 22677162, 'South Africa', 9, 'Quisque imperdiet,', 36818, 14973715),
(94, 39659981, 'Tanzania', 2, 'Fusce diam', 53699, 17440789),
(95, 38659504, 'Liberia', 95, 'amet ante.', 25174, 26112878),
(96, 35947306, 'Morocco', 100, 'arcu. Nunc', 30472, 28169051),
(97, 41456306, 'Poland', 2, 'Suspendisse aliquet,', 12908, 18188308),
(98, 42264200, 'Gotham', 82, 'sed libero.', 44991, 14847092),
(99, 16970477, 'Saint Helena, Ascension and Tristan da Cunha', 68, 'et risus.', 53933, 4661201),
(100, 28006865, 'Bangladeshia', 11, 'in magna.', 58692, 4318112),
(101, 12178659, 'Liechtenstein', 57, 'nascetur ridiculus', 56359, 29049962),
(102, 9977244, 'United States of Eurasia', 55, 'Nulla facilisi.', 60808, 8577960),
(103, 35891073, 'Samoa', 11, 'arcu iaculis', 81057, 9382682),
(104, 11190026, 'Saint Pierre and Miquelon', 92, 'venenatis lacus.', 89177, 24278118),
(105, 18130494, 'Holy Republic of Brett', 64, 'malesuada fringilla', 70358, 28450346),
(106, 19762539, 'Åland Islands', 61, 'taciti sociosqu', 25112, 4768042);

-- --------------------------------------------------------

--
-- Table structure for table `ethnicGroup`
--

CREATE TABLE IF NOT EXISTS `ethnicGroup` (
  `majorReligion` char(40) DEFAULT NULL,
  `nativeCountry` char(40) DEFAULT NULL,
  `language` char(40) DEFAULT NULL,
  `name` char(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ethnicGroup`
--

INSERT INTO `ethnicGroup` (`majorReligion`, `nativeCountry`, `language`, `name`) VALUES
('magna.', 'Phasellus', 'scelerisque', 'a'),
('felis,', 'auctor', 'Praesent', 'a,'),
('tellus', 'gravida', 'leo.', 'adipiscing'),
('orci.', 'ipsum', 'mauris', 'aliquet'),
('vel', 'et', 'erat.', 'ante'),
('lobortis', 'augue', 'magnis', 'blandit'),
('Praesent', 'Sed', 'tincidunt', 'commodo'),
('dictum', 'In', 'dictum', 'congue,'),
('non,', 'Vivamus', 'nunc', 'Cras'),
('lectus,', 'ipsum.', 'sapien', 'Curabitur'),
('congue,', 'sagittis.', 'Donec', 'dapibus'),
('metus', 'malesuada', 'felis', 'dis'),
('tellus', 'odio', 'cursus.', 'dui'),
('Calvinism', 'Netherlands', 'Dutch', 'Dutch'),
('mus.', 'egestas', 'erat,', 'eleifend.'),
('Anglicanism', 'England', 'English', 'English'),
('mattis', 'pretium', 'Praesent', 'enim,'),
('nulla.', 'sem', 'Nullam', 'faucibus'),
('Roman Catholocism', 'France', 'French', 'French'),
('neque.', 'ac', 'enim.', 'Fusce'),
('Lutheranism', 'Germany', 'German', 'Germans'),
('at,', 'vel', 'inasg', 'id,'),
('arcu', 'auctor', 'orci,', 'in'),
('ut', 'mollis', 'Nam', 'infda'),
('Roman Catholocism', 'Italy', 'Italian', 'Italians'),
('urna', 'Donec', 'velit.', 'lacinia'),
('orci', 'sapien,', 'odio.', 'lacus.'),
('Aliquam', 'lobortis.', 'natoque', 'lacusite.'),
('lectus', 'mollis', 'congue', 'leo,'),
('ut,', 'lorem', 'vel', 'lobortis'),
('Nunc', 'Proin', 'ad', 'lorem'),
('vulputate', 'ullamcorper', 'elit.', 'magna.'),
('natoque', 'arcu', 'tristique', 'massa.'),
('ante.', 'Proin', 'Cras', 'montes,'),
('nuncda,', 'Sed', 'Aenean', 'montesadf,'),
('amet,', 'Nullam', 'enim', 'Morbi'),
('congue', 'sodales', 'auctor,', 'Nam'),
('interdum.', 'Nam', 'molestie', 'nascetur'),
('Nullam', 'Nunc', 'eu', 'nec'),
('pellentesque', 'sit', 'Mauris', 'nisi'),
('metus', 'Aliquam', 'sagittis', 'non'),
('blandit', 'Duis', 'Aenean', 'nulla.'),
('adipiscing', 'Lorem', 'pretium', 'nuncafd'),
('ipsum', 'facilisis', 'odio', 'Nunfdac'),
('ac', 'semper', 'Sed', 'orci,'),
('feugiat.', 'sit', 'nisi', 'pede'),
('fringilla', 'cubilia', 'feugiat', 'pellentesque.'),
('tellus', 'pede', 'mollis', 'pharetra'),
('mi', 'in,', 'vel', 'Praesent'),
('vel', 'felis,', 'porta', 'rhoncus'),
('ullamcorper,', 'ante', 'varius', 'rutrum'),
('pede,', 'In', 'inceptos', 'Sed'),
('risus.', 'Suspendisse', 'malesuada', 'sem'),
('lorem', 'magna', 'nunc', 'sit'),
('felis,', 'elementum,', 'habitant', 'sociis'),
('Roman Catholocism', 'Spain', 'Spanish', 'Spaniards'),
('ac,', 'lobortis', 'elit.', 'ullamcorper'),
('libero', 'Suspendisse', 'ornare,', 'Ut'),
('eros', 'malesuada', 'arcu', 'vitae,'),
('nascetur', 'nisi', 'fringilla.', 'vulputate');

-- --------------------------------------------------------

--
-- Table structure for table `isCapitalOf`
--

CREATE TABLE IF NOT EXISTS `isCapitalOf` (
  `countryID` int(11) NOT NULL,
  `capitalID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isCapitalOf`
--

INSERT INTO `isCapitalOf` (`countryID`, `capitalID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(52, 52),
(53, 53),
(54, 54),
(55, 55),
(56, 56),
(57, 57),
(58, 58),
(59, 59),
(60, 60),
(61, 61),
(62, 62),
(63, 63),
(64, 64),
(65, 65),
(66, 66),
(67, 67),
(68, 68),
(69, 69),
(70, 70),
(71, 71),
(72, 72),
(73, 73),
(74, 74),
(75, 75),
(76, 76),
(77, 77),
(78, 78),
(79, 79),
(80, 80),
(81, 81),
(82, 82),
(83, 83),
(84, 84),
(85, 85),
(86, 86),
(87, 87),
(88, 88),
(89, 89),
(90, 90),
(91, 91),
(92, 92),
(93, 93),
(94, 94),
(95, 95),
(96, 96),
(97, 97),
(98, 98),
(99, 99),
(100, 100),
(101, 101),
(102, 102),
(103, 103),
(104, 104),
(105, 105),
(106, 106);

-- --------------------------------------------------------

--
-- Table structure for table `isInCountry`
--

CREATE TABLE IF NOT EXISTS `isInCountry` (
  `cityID` int(11) NOT NULL DEFAULT '0',
  `countryID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isInCountry`
--

INSERT INTO `isInCountry` (`cityID`, `countryID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(52, 52),
(53, 53),
(54, 54),
(55, 55),
(56, 56),
(57, 57),
(58, 58),
(59, 59),
(60, 60),
(61, 61),
(62, 62),
(63, 63),
(64, 64),
(65, 65),
(66, 66),
(67, 67),
(68, 68),
(69, 69),
(70, 70),
(71, 71),
(72, 72),
(73, 73),
(74, 74),
(75, 75),
(76, 76),
(77, 77),
(78, 78),
(79, 79),
(80, 80),
(81, 81),
(82, 82),
(83, 83),
(84, 84),
(85, 85),
(86, 86),
(87, 87),
(88, 88),
(89, 89),
(90, 90),
(91, 91),
(92, 92),
(93, 93),
(94, 94),
(95, 95),
(96, 96),
(97, 97),
(98, 98),
(99, 99),
(100, 100),
(101, 101),
(102, 102),
(103, 103),
(104, 104),
(105, 105),
(106, 106);

-- --------------------------------------------------------

--
-- Table structure for table `isPresentIn`
--

CREATE TABLE IF NOT EXISTS `isPresentIn` (
  `name` char(40) NOT NULL DEFAULT '',
  `countryID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isPresentIn`
--

INSERT INTO `isPresentIn` (`name`, `countryID`) VALUES
('English', 1),
('Germans', 1),
('English', 2),
('enim,', 2),
('dapibus', 3),
('Spaniards', 3),
('montes,', 4),
('', 5),
('French', 6),
('Germans', 6),
('pede', 6),
('sem', 7),
('nec', 8),
('dis', 9),
('pellentesque.', 10),
('Fusce', 11),
('Sed', 12),
('massa.', 13),
('a,', 14),
('dis', 15),
('lorem', 16),
('congue,', 17),
('Sed', 18),
('infda', 19),
('lobortis', 20),
('montesadf,', 21),
('in', 22),
('lorem', 23),
('Nam', 24),
('non', 25),
('in', 26),
('Nam', 27),
('non', 28),
('Nam', 29),
('commodo', 31),
('pede', 32),
('ante', 33),
('lacusite.', 34),
('pede', 35),
('rhoncus', 38),
('dis', 39),
('lacus.', 40),
('adipiscing', 41),
('Sed', 42),
('ullamcorper', 44),
('dapibus', 45),
('blandit', 46),
('lacusite.', 47),
('nulla.', 48),
('pharetra', 50),
('faucibus', 51),
('blandit', 52),
('nascetur', 53),
('nulla.', 54),
('pharetra', 55),
('dis', 56),
('lacus.', 57),
('in', 58),
('non', 59),
('pede', 60);

-- --------------------------------------------------------

--
-- Table structure for table `locatedInContinent`
--

CREATE TABLE IF NOT EXISTS `locatedInContinent` (
  `countryID` int(11) NOT NULL,
  `continentName` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locatedInContinent`
--

INSERT INTO `locatedInContinent` (`countryID`, `continentName`) VALUES
(8, 'Africa'),
(10, 'Africa'),
(11, 'Africa'),
(36, 'Africa'),
(44, 'Africa'),
(46, 'Africa'),
(52, 'Africa'),
(59, 'Africa'),
(63, 'Africa'),
(68, 'Africa'),
(71, 'Africa'),
(81, 'Africa'),
(105, 'Africa'),
(106, 'Africa'),
(4, 'Asia'),
(7, 'Asia'),
(12, 'Asia'),
(13, 'Asia'),
(25, 'Asia'),
(29, 'Asia'),
(34, 'Asia'),
(42, 'Asia'),
(49, 'Asia'),
(51, 'Asia'),
(56, 'Asia'),
(57, 'Asia'),
(61, 'Asia'),
(62, 'Asia'),
(67, 'Asia'),
(77, 'Asia'),
(78, 'Asia'),
(88, 'Asia'),
(96, 'Asia'),
(101, 'Asia'),
(103, 'Asia'),
(2, 'Europe'),
(6, 'Europe'),
(14, 'Europe'),
(15, 'Europe'),
(20, 'Europe'),
(21, 'Europe'),
(23, 'Europe'),
(30, 'Europe'),
(31, 'Europe'),
(38, 'Europe'),
(40, 'Europe'),
(41, 'Europe'),
(43, 'Europe'),
(75, 'Europe'),
(85, 'Europe'),
(89, 'Europe'),
(90, 'Europe'),
(91, 'Europe'),
(93, 'Europe'),
(102, 'Europe'),
(1, 'North America'),
(3, 'North America'),
(5, 'North America'),
(16, 'North America'),
(17, 'North America'),
(22, 'North America'),
(24, 'North America'),
(27, 'North America'),
(28, 'North America'),
(32, 'North America'),
(33, 'North America'),
(37, 'North America'),
(45, 'North America'),
(47, 'North America'),
(48, 'North America'),
(50, 'North America'),
(54, 'North America'),
(55, 'North America'),
(60, 'North America'),
(64, 'North America'),
(65, 'North America'),
(66, 'North America'),
(69, 'North America'),
(70, 'North America'),
(72, 'North America'),
(76, 'North America'),
(80, 'North America'),
(83, 'North America'),
(84, 'North America'),
(87, 'North America'),
(95, 'North America'),
(98, 'North America'),
(100, 'North America'),
(104, 'North America'),
(9, 'South America'),
(18, 'South America'),
(19, 'South America'),
(26, 'South America'),
(35, 'South America'),
(39, 'South America'),
(53, 'South America'),
(58, 'South America'),
(73, 'South America'),
(74, 'South America'),
(79, 'South America'),
(82, 'South America'),
(86, 'South America'),
(92, 'South America'),
(94, 'South America'),
(97, 'South America'),
(99, 'South America');

-- --------------------------------------------------------

--
-- Table structure for table `majorCity`
--

CREATE TABLE IF NOT EXISTS `majorCity` (
  `majorCityID` int(11) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `name` char(40) DEFAULT NULL,
  `population` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `majorCity`
--

INSERT INTO `majorCity` (`majorCityID`, `size`, `name`, `population`) VALUES
(1, 68, 'Washington, D.C', 658893),
(2, 607, 'London', 8308000),
(3, 573, 'Mexico City', 8851000),
(4, 6487, 'Beijing', 11510000),
(5, 1073, 'Ottawa', 883391),
(6, 344, 'Berlin', 3502000),
(7, 67, 'Loreminian', 8),
(8, 16448, 'odio', 144634),
(9, 40258, 'natoque', 762915),
(10, 31203, 'elementum', 298078),
(11, 851, 'Aenean', 840755),
(12, 35984, 'mauris', 330967),
(13, 14768, 'ut', 281145),
(14, 20797, 'Phasellus', 772844),
(15, 31669, 'non,', 655200),
(16, 28421, 'sagittis', 584098),
(17, 45993, 'mus.', 187493),
(18, 15627, 'diam', 906776),
(19, 33905, 'Mauris', 391656),
(20, 13666, 'aptent', 706311),
(21, 27569, 'adipiscing', 260359),
(22, 18911, 'commodo', 906676),
(23, 40954, 'Sed', 469335),
(24, 4825, 'pretium', 133997),
(25, 1318, 'velit', 360421),
(26, 35309, 'et,', 256657),
(27, 23995, 'a', 265340),
(28, 2845, 'risus.', 764101),
(29, 16875, 'est', 267314),
(30, 20479, 'Donec', 454165),
(31, 34346, 'vitae', 351634),
(32, 27335, 'Sed', 876464),
(33, 9427, 'odio,', 982706),
(34, 883, 'mauris', 400681),
(35, 48125, 'purus', 978680),
(36, 47582, 'non', 316129),
(37, 5309, 'fringilla,', 653122),
(38, 20148, 'luctus', 489913),
(39, 9943, 'eros', 920273),
(40, 1264, 'natoque', 152788),
(41, 35006, 'scelerisque', 67710),
(42, 721, 'adipiscing', 834420),
(43, 48919, 'Aliquam', 110691),
(44, 40721, 'Aliquam', 655673),
(45, 17016, 'eros.', 417143),
(46, 39138, 'Nulla', 595064),
(47, 4234, 'nascetur', 143667),
(48, 19914, 'porttitor', 978152),
(49, 5684, 'eleifend', 756923),
(50, 11219, 'interdum.', 326581),
(51, 34741, 'Vestibulum', 852481),
(52, 18655, 'congue', 778813),
(53, 25237, 'ipsum', 422721),
(54, 37852, 'erat', 676661),
(55, 33301, 'felis', 983111),
(56, 29870, 'semper', 801815),
(57, 29930, 'dictum', 4994),
(58, 9529, 'mollis.', 155584),
(59, 43273, 'libero.', 345153),
(60, 37512, 'ac', 649297),
(61, 40265, 'et', 981665),
(62, 33657, 'sit', 115072),
(63, 12005, 'volutpat', 801356),
(64, 299, 'sit', 613697),
(65, 3181, 'aliquam,', 844467),
(66, 11608, 'nec', 580073),
(67, 29783, 'vitae,', 973293),
(68, 22878, 'imperdiet', 937930),
(69, 7691, 'lacus.', 872998),
(70, 32066, 'tortor', 193924),
(71, 40061, 'Nunc', 614724),
(72, 7292, 'egestas', 189001),
(73, 44273, 'lorem', 574900),
(74, 1112, 'Etiam', 591332),
(75, 45013, 'in', 880890),
(76, 36706, 'pede,', 871859),
(77, 33705, 'malesuada', 621831),
(78, 2119, 'Etiam', 430594),
(79, 46297, 'semper', 612907),
(80, 43950, 'quam.', 737923),
(81, 47343, 'nec,', 42840),
(82, 16612, 'semper', 502187),
(83, 48288, 'ipsum.', 453497),
(84, 1479, 'interdum', 587586),
(85, 21658, 'massa', 967534),
(86, 26339, 'neque', 98804),
(87, 33297, 'lectus', 323073),
(88, 41563, 'libero.', 178577),
(89, 46883, 'sociis', 741926),
(90, 20818, 'sed', 18037),
(91, 30101, 'non', 499668),
(92, 3760, 'quis', 724378),
(93, 4693, 'mi', 319007),
(94, 37271, 'Ut', 291484),
(95, 6094, 'Quisque', 336306),
(96, 17869, 'ultrices.', 557441),
(97, 48805, 'rutrum', 397296),
(98, 6026, 'metus', 723049),
(99, 33815, 'sed', 300848),
(100, 17008, 'erat,', 5271),
(101, 30448, 'et', 897535),
(102, 9121, 'orci', 81253),
(103, 4230, 'eget', 713644),
(104, 42760, 'consequat,', 930720),
(105, 22462, 'sapien,', 807027),
(106, 9955, 'purus', 934017);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE IF NOT EXISTS `organization` (
  `name` char(40) DEFAULT NULL,
  `type` char(40) DEFAULT NULL,
  `yearFounded` int(11) DEFAULT NULL,
  `organizationID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`name`, `type`, `yearFounded`, `organizationID`) VALUES
('North Atlantic Treaty Organization', 'Military Alliance', 1949, 1),
('World Trade Organization', 'International Trade Organization', 1995, 2),
('OPEC', 'Cartel', 1961, 3),
('Asia-Pacific Economic Cooperation', 'Economic forum', 1989, 4),
('European Investment Bank', 'International financial institution', 1959, 5),
('Council of Europe', 'Advisory international organization', 1949, 6),
('Donec dignissim', 'nisl. Maecenas', 1834, 7),
('Phasellus dolor', 'nunc. In', 1890, 8),
('faucibus id,', 'velit. Sed', 1868, 9),
('consectetuer adipiscing', 'aliquam arcu.', 1837, 10),
('Curabitur ut', 'dictum mi,', 1995, 11),
('ac mattis', 'cursus non,', 2014, 12),
('Aenean gravida', 'egestas, urna', 1926, 13),
('Nunc mauris.', 'nec, mollis', 1894, 14),
('Duis a', 'Donec est', 1838, 15),
('dictum magna.', 'sollicitudin adipiscing', 1878, 16),
('a purus.', 'faucibus lectus,', 1899, 17),
('Ut tincidunt', 'ut quam', 1966, 18),
('enim. Curabitur', 'natoque penatibus', 1867, 19),
('pretium neque.', 'vestibulum massa', 1921, 20),
('Donec vitae', 'ut nisi', 1856, 21),
('eget, ipsum.', 'non arcu.', 1934, 22),
('luctus ut,', 'justo faucibus', 1912, 23),
('vitae erat', 'elementum purus,', 1896, 24),
('dictum eu,', 'interdum. Nunc', 1993, 25),
('et netus', 'Proin nisl', 2009, 26),
('luctus sit', 'semper pretium', 1815, 27),
('ligula. Aenean', 'ipsum. Donec', 1994, 28),
('neque venenatis', 'Vivamus euismod', 2009, 29),
('ut cursus', 'sit amet,', 1867, 30),
('vulputate, posuere', 'odio. Nam', 1916, 31),
('Integer vulputate,', 'ut ipsum', 2013, 32),
('Praesent interdum', 'malesuada id,', 1897, 33),
('non lorem', 'mauris sapien,', 1913, 34),
('Aliquam nisl.', 'nunc id', 1965, 35),
('dui. Suspendisse', 'eu lacus.', 1986, 36),
('Etiam bibendum', 'Nunc sollicitudin', 1918, 37),
('lobortis risus.', 'sit amet', 1887, 38),
('auctor velit.', 'vulputate, nisi', 1947, 39),
('ligula. Donec', 'rutrum urna,', 1970, 40),
('lacus. Quisque', 'nisl elementum', 1801, 41),
('accumsan neque', 'felis, adipiscing', 1877, 42),
('fermentum fermentum', 'dolor. Donec', 1885, 43),
('libero. Integer', 'Aenean egestas', 1850, 44),
('neque. Morbi', 'vel, vulputate', 1825, 45),
('egestas. Duis', 'quis, tristique', 1989, 46),
('velit. Quisque', 'egestas. Aliquam', 1806, 47),
('sociis natoque', 'mauris ipsum', 1877, 48),
('a odio', 'lorem tristique', 1813, 49),
('eu dui.', 'odio a', 1993, 50),
('amet risus.', 'neque sed', 1880, 51),
('penatibus et', 'in faucibus', 1891, 52),
('Suspendisse non', 'Nam ligula', 1923, 53),
('eu eros.', 'cubilia Curae;', 1967, 54),
('Ut tincidunt', 'enim. Etiam', 1960, 55),
('Ut tincidunt', 'Vivamus nisi.', 1882, 56),
('quis urna.', 'luctus. Curabitur', 1804, 57),
('Nunc lectus', 'malesuada. Integer', 1993, 58),
('Aenean egestas', 'risus. Duis', 1819, 59),
('malesuada ut,', 'Nullam feugiat', 1880, 60),
('et magnis', 'auctor. Mauris', 1914, 61),
('Mauris vel', 'In nec', 1881, 62),
('amet ornare', 'ligula. Aliquam', 1859, 63),
('Quisque libero', 'pellentesque massa', 1962, 64),
('est. Nunc', 'eu erat', 1865, 65),
('dui. Cras', 'lectus pede,', 1996, 66);

-- --------------------------------------------------------

--
-- Table structure for table `participatesIn`
--

CREATE TABLE IF NOT EXISTS `participatesIn` (
  `countryID` int(11) NOT NULL DEFAULT '0',
  `organizationID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participatesIn`
--

INSERT INTO `participatesIn` (`countryID`, `organizationID`) VALUES
(1, 1),
(1, 4),
(1, 67),
(2, 1),
(2, 9),
(3, 94),
(4, 4),
(5, 1),
(5, 70),
(6, 1),
(7, 14),
(8, 73),
(9, 8),
(9, 32),
(9, 34),
(11, 55),
(12, 31),
(13, 31),
(15, 24),
(15, 67),
(15, 92),
(17, 94),
(23, 74),
(24, 25),
(25, 45),
(26, 76),
(26, 86),
(27, 15),
(28, 4),
(28, 81),
(28, 82),
(29, 36),
(30, 96),
(31, 7),
(32, 49),
(32, 102),
(33, 30),
(35, 82),
(35, 102),
(36, 43),
(38, 101),
(39, 37),
(39, 95),
(41, 78),
(42, 22),
(45, 105),
(46, 37),
(47, 94),
(50, 64),
(51, 42),
(51, 104),
(52, 41),
(52, 55),
(52, 75),
(54, 26),
(55, 19),
(56, 11),
(59, 33),
(60, 85),
(60, 99),
(63, 14),
(64, 14),
(64, 100),
(65, 20),
(65, 80),
(65, 103);

-- --------------------------------------------------------

--
-- Table structure for table `utilizesNaturalResources`
--

CREATE TABLE IF NOT EXISTS `utilizesNaturalResources` (
  `utilizesNaturalResourcesID` int(11) NOT NULL,
  `typeOfResource` char(40) DEFAULT NULL,
  `name` char(40) NOT NULL DEFAULT '',
  `countryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilizesNaturalResources`
--

INSERT INTO `utilizesNaturalResources` (`utilizesNaturalResourcesID`, `typeOfResource`, `name`, `countryID`) VALUES
(1, 'Industrial supply', 'Oil', 1),
(2, 'Industrial supply', 'Oil', 6),
(3, 'Industrial supply', 'Oil', 5),
(4, 'Organic supply', 'Foodstuffs', 2),
(5, 'Industrial supply', 'Oil', 2),
(6, 'Element supply', 'Metal ores', 4),
(7, 'tellus. Nunc', 'iaculis', 55),
(8, 'Cras eu', 'porttitor', 101),
(9, 'penatibus et', 'venenatis', 54),
(10, 'Proin ultrices.', 'eu', 54),
(11, 'Nulla interdum.', 'Mauris', 75),
(12, 'nunc sed', 'et,', 65),
(13, 'malesuada ut,', 'fringilla', 62),
(14, 'felis. Donec', 'porttitor', 43),
(15, 'mauris a', 'ut', 44),
(16, 'magnis dis', 'quis', 106),
(17, 'aliquet vel,', 'dolor', 101),
(18, 'Etiam imperdiet', 'mi', 75),
(19, 'commodo tincidunt', 'non,', 105),
(20, 'enim. Nunc', 'Integer', 93),
(21, 'posuere vulputate,', 'a,', 75),
(22, 'ac libero', 'nonummy', 45),
(23, 'Aliquam', 'hymenaeos', 74),
(24, 'ac arcu.', 'Nulla', 52),
(25, 'ornare tortor', 'dui.', 1),
(26, 'venenatis a,', 'mauris.', 33),
(27, 'tellus, imperdiet', 'amet', 103),
(28, 'ut lacus.', 'Mauris', 72),
(29, 'elementum purus,', 'tellus.', 23),
(30, 'amet, dapibus', 'ornare,', 73),
(31, 'egestas. Aliquam', 'id,', 78),
(32, 'facilisis, magna', 'elementum', 5),
(33, 'diam lorem,', 'Cum', 67),
(34, 'eleifend. Cras', 'Nulla', 81),
(35, 'sociis natoque', 'Sed', 59),
(36, 'posuere vulputate,', 'mollis', 78),
(37, 'eu tellus.', 'magna', 84),
(38, 'id magna', 'et', 76),
(39, 'sem, vitae', 'egestas', 38),
(40, 'ut lacus.', 'elit,', 47),
(41, 'ut, nulla.', 'sit', 50),
(42, 'aptent taciti', 'fermentum', 94),
(43, 'turpis. Aliquam', 'nec,', 86),
(44, 'nec luctus', 'est.', 21),
(45, 'egestas. Sed', 'tincidunt,', 40),
(46, 'faucibus lectus,', 'Curabitur', 53),
(47, 'eu, odio.', 'nulla.', 2),
(48, 'convallis convallis', 'vel,', 54),
(49, 'in faucibus', 'adipiscing,', 23),
(50, 'vestibulum, neque', 'porta', 100),
(51, 'libero lacus,', 'ipsum', 101),
(52, 'vehicula et,', 'nibh', 98),
(53, 'in consequat', 'blandit', 65),
(54, 'ipsum primis', 'molestie', 71),
(55, 'auctor. Mauris', 'nunc,', 35),
(56, 'vel arcu.', 'sollicitudin', 48),
(57, 'dictum augue', 'velit', 86),
(58, 'ridiculus mus.', 'varius', 32),
(59, 'tristique ac,', 'molestie', 45),
(60, 'magna sed', 'Cras', 74),
(61, 'ante dictum', 'facilisis', 81),
(62, 'porttitor eros', 'Nulla', 50),
(63, 'arcu. Vestibulum', 'molestie', 9),
(64, 'tempor erat', 'dolor', 74),
(65, 'Duis at', 'odio', 101),
(66, 'non lorem', 'posuere', 56);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `capital`
--
ALTER TABLE `capital`
  ADD PRIMARY KEY (`capitalID`);

--
-- Indexes for table `continent`
--
ALTER TABLE `continent`
  ADD PRIMARY KEY (`continentName`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`countryID`);

--
-- Indexes for table `ethnicGroup`
--
ALTER TABLE `ethnicGroup`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `isCapitalOf`
--
ALTER TABLE `isCapitalOf`
  ADD PRIMARY KEY (`capitalID`,`countryID`), ADD KEY `countryID` (`countryID`);

--
-- Indexes for table `isInCountry`
--
ALTER TABLE `isInCountry`
  ADD PRIMARY KEY (`cityID`,`countryID`), ADD KEY `countryID` (`countryID`);

--
-- Indexes for table `isPresentIn`
--
ALTER TABLE `isPresentIn`
  ADD PRIMARY KEY (`name`,`countryID`), ADD KEY `countryID` (`countryID`);

--
-- Indexes for table `locatedInContinent`
--
ALTER TABLE `locatedInContinent`
  ADD PRIMARY KEY (`countryID`), ADD KEY `continentName` (`continentName`);

--
-- Indexes for table `majorCity`
--
ALTER TABLE `majorCity`
  ADD PRIMARY KEY (`majorCityID`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`organizationID`);

--
-- Indexes for table `participatesIn`
--
ALTER TABLE `participatesIn`
  ADD PRIMARY KEY (`organizationID`,`countryID`), ADD KEY `countryID` (`countryID`);

--
-- Indexes for table `utilizesNaturalResources`
--
ALTER TABLE `utilizesNaturalResources`
  ADD PRIMARY KEY (`utilizesNaturalResourcesID`,`name`), ADD KEY `countryID` (`countryID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `capital`
--
ALTER TABLE `capital`
ADD CONSTRAINT `capital_ibfk_1` FOREIGN KEY (`capitalID`) REFERENCES `majorCity` (`majorCityID`) ON DELETE CASCADE;

--
-- Constraints for table `isCapitalOf`
--
ALTER TABLE `isCapitalOf`
ADD CONSTRAINT `iscapitalof_ibfk_1` FOREIGN KEY (`capitalID`) REFERENCES `capital` (`capitalID`),
ADD CONSTRAINT `iscapitalof_ibfk_2` FOREIGN KEY (`countryID`) REFERENCES `country` (`countryID`);

--
-- Constraints for table `isInCountry`
--
ALTER TABLE `isInCountry`
ADD CONSTRAINT `isincountry_ibfk_1` FOREIGN KEY (`cityID`) REFERENCES `majorCity` (`majorCityID`),
ADD CONSTRAINT `isincountry_ibfk_2` FOREIGN KEY (`countryID`) REFERENCES `country` (`countryID`);

--
-- Constraints for table `isPresentIn`
--
ALTER TABLE `isPresentIn`
ADD CONSTRAINT `ispresentin_ibfk_1` FOREIGN KEY (`name`) REFERENCES `ethnicGroup` (`name`),
ADD CONSTRAINT `ispresentin_ibfk_2` FOREIGN KEY (`countryID`) REFERENCES `country` (`countryID`);

--
-- Constraints for table `locatedInContinent`
--
ALTER TABLE `locatedInContinent`
ADD CONSTRAINT `locatedincontinent_ibfk_1` FOREIGN KEY (`continentName`) REFERENCES `continent` (`continentName`),
ADD CONSTRAINT `locatedincontinent_ibfk_2` FOREIGN KEY (`countryID`) REFERENCES `country` (`countryID`);

--
-- Constraints for table `participatesIn`
--
ALTER TABLE `participatesIn`
ADD CONSTRAINT `participatesin_ibfk_1` FOREIGN KEY (`organizationID`) REFERENCES `organization` (`organizationID`),
ADD CONSTRAINT `participatesin_ibfk_2` FOREIGN KEY (`countryID`) REFERENCES `country` (`countryID`);

--
-- Constraints for table `utilizesNaturalResources`
--
ALTER TABLE `utilizesNaturalResources`
ADD CONSTRAINT `utilizesnaturalresources_ibfk_1` FOREIGN KEY (`countryID`) REFERENCES `country` (`countryID`) ON DELETE CASCADE;
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
