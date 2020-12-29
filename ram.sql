-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2020 at 07:08 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ram`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_deatails`
--

CREATE TABLE `admin_deatails` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contactno` varchar(13) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `uploadimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_deatails`
--

INSERT INTO `admin_deatails` (`id`, `fullname`, `emailid`, `password`, `contactno`, `address`, `city`, `state`, `country`, `zip_code`, `gender`, `uploadimage`) VALUES
(1, 'Ramkumar saini', 'ram.rk.kumar0786@gmail.com', 'ramkumar', '9039780746', 'Road no. 24 , B,Block ,Sharda nagar nariyal kheda', 'bhopal', 'madhaya pradesh', 'India', '462001', 'male', 'cf1d982560a22b398ebb3b93419993b8_+919039780746.jpg'),
(2, 'khusi yadav', 'khusicbsa@gmail.com', 'khusi', '8871582581', 'Surendra Palace near barkatullaha collage ', 'Bhopal', 'madhaya pradesh', 'India', '462038', 'female', 'e93c967ceaadf909754419a57aa3d17a_IMG-20151212-WA0007.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `cartid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cartdetail`
--

INSERT INTO `cartdetail` (`id`, `pid`, `qty`, `cartid`) VALUES
(1, 26, 1, 'W4xqpf07i7Ln2Klff1EHsr3sw'),
(2, 57, 1, 'W4xqpf07i7Ln2Klff1EHsr3sw'),
(3, 55, 1, 'cVkhdPp52jejqgI1F24weBQx2');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `click` int(11) NOT NULL,
  `status1` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryname`, `status`, `click`, `status1`) VALUES
(1, 'Furniture', 1, 64, 0),
(2, 'Electronics', 1, 2, 0),
(4, 'Books', 1, 18, 0),
(5, 'Shoes', 1, 39, 0),
(6, 'Pen', 1, 29, 0);

-- --------------------------------------------------------

--
-- Table structure for table `childcategory`
--

CREATE TABLE `childcategory` (
  `id` int(11) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `subcategory_id` varchar(255) NOT NULL,
  `childcategory` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `status1` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childcategory`
--

INSERT INTO `childcategory` (`id`, `category_id`, `subcategory_id`, `childcategory`, `status`, `status1`) VALUES
(1, '1', '1', 'Round table', 1, 0),
(2, '1', '1', 'Study table', 1, 0),
(3, '2', '4', 'Samsung', 1, 0),
(4, '2', '4', 'Lava', 1, 0),
(5, '2', '5', 'Sony', 1, 0),
(6, '2', '4', 'samsung', 1, 0),
(8, '4', '7', 'I too had a love story', 1, 0),
(10, '5', '8', 'Red bata', 1, 0),
(11, '5', '9', 'Light wieght sport shoes', 1, 0),
(14, '1', '3', 'Linghting table', 1, 0),
(15, '1', '3', '3D table', 1, 0),
(16, '1', '2', 'Automatic chair', 1, 0),
(17, '1', '2', 'Flying chair', 1, 0),
(20, '6', '12', 'Triangle Metallic Ballpoint Pen', 1, 0),
(21, '6', '12', 'Cross Edge Roller Ball Pen, Nitro Blue', 1, 0),
(22, '6', '12', 'SCRIKSS BALL POINT PEN VINTAGE BLACK', 1, 0),
(23, '6', '13', 'Uni-ball Signo Broad UM-153 Gel Pen', 1, 0),
(24, '6', '13', 'Uni-ball Signo UM-151 Gel Pen', 1, 0),
(25, '6', '13', 'Pilot Hi-Tec-C Maica Gel Pen', 1, 0),
(26, '6', '14', 'Pilot Metropolitan Fountain Pen', 1, 0),
(27, '6', '14', 'Baoer Dragan snake gold Fountain Pen', 1, 0),
(28, '6', '14', 'Hero 975 Gold Nib Emotion Fountain Pen', 1, 0),
(29, '4', '15', 'Hatchet by Gary Paulsen', 1, 0),
(30, '4', '15', 'Treasure Island by Robert Louis Stevenson', 1, 0),
(31, '4', '15', 'Swiss Family Robinson by Johann David Wyss', 1, 0),
(32, '4', '15', 'The Adventures of Captain Hatteras by Jules Verne', 1, 0),
(33, '4', '15', 'The Tigers of Mompracem by Emilio Salgari', 1, 0),
(34, '4', '15', 'The Pirates of Malaysia by Emilio Salgari', 1, 0),
(35, '4', '16', 'Atonement', 1, 0),
(36, '4', '16', '2666', 1, 0),
(37, '4', '16', 'Life of Pi', 1, 0),
(38, '4', '16', 'The Shadow of the Wind', 1, 0),
(39, '4', '16', 'The Known World', 1, 0),
(40, '4', '17', 'The Girl with the Dragon Tattoo', 1, 0),
(41, '4', '17', 'The Shadow of the Wind', 1, 0),
(42, '4', '17', 'Midnight in the Garden of Good and Evil', 1, 0),
(43, '4', '17', 'The Woman in White', 1, 0),
(44, '4', '17', 'The Devil in the White City', 1, 0),
(45, '4', '18', 'The Haunting of Hill House', 1, 0),
(46, '4', '18', 'For Whom The Bell Tolls', 1, 0),
(47, '4', '18', 'The Queen of the Damned', 1, 0),
(48, '4', '18', 'The Island of Dr. Moreau', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `country_id` varchar(255) NOT NULL,
  `state_id` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `country_id`, `state_id`, `city`, `status`) VALUES
(1, '1', '1', 'ram nagar', 1),
(2, '1', '3', 'west Bombay', 1),
(3, '1', '2', 'rajapur', 1),
(4, '1', '3', 'east bombay', 1),
(5, '1', '4', 'Sunder nagar', 1),
(6, '2', '5', 'face1', 1),
(7, '2', '6', 'East redchip', 1),
(8, '3', '7', 'chin', 1),
(9, '3', '8', 'vistu', 1),
(10, '4', '9', 'rohtak', 1),
(11, '4', '10', 'ratlam', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `countryname` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `countryname`, `status`) VALUES
(1, 'India', 1),
(2, 'Usa', 1),
(3, 'Chaina', 1),
(4, 'Bangla desh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customerdeatails`
--

CREATE TABLE `customerdeatails` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dmethod` varchar(255) NOT NULL,
  `pmethod` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `no_of_click` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerdeatails`
--

INSERT INTO `customerdeatails` (`id`, `firstname`, `lastname`, `company`, `address`, `city`, `zipcode`, `contactno`, `emailid`, `password`, `dmethod`, `pmethod`, `date`, `no_of_click`, `status`) VALUES
(1, 'ram', 'saini', 'dezven', 'nariyal kheda', 'bhopal', '462001', '9039780746', 'ram.rk.kumar0786@gmail.com', 'ramkumar', 'Ship in weekday', 'Pay with credit card', '11/04/2017', 101, 0),
(40, 'ravi', 'patel', 'ezeon', 'krond', 'Bhopal', '462001', '9685300845', 'ravi@gmail.com', '123456', 'Ship in Weekend', 'Pay with credit card', '10/04/2017', 0, 0),
(41, 'muskan', 'sharma', 'dezven', 'krond', 'Bhopal', '462001', '9039780746', 'muskan@gmail.com', '123456', 'Ship in Weekend', 'KNET', '', 0, 0),
(42, 'khusi', 'yadav', 'dezven', 'surendra place bhopal', 'bhopal', '462001', '8871582581', 'khusicbsa@gmail.com', '123456', 'Ship Tomorrow', 'KNET', '17/04/2017', 0, 0),
(45, 'lalit', '', '', '', '', '', '', 'lalit.tilwani@gmail.com', '123456', '', '', '', 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `khusi`
--

CREATE TABLE `khusi` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khusi`
--

INSERT INTO `khusi` (`id`, `username`, `password`, `emailid`) VALUES
(1, 'ram', 'ram', 'ram.rk.kumar0786@gmail.com'),
(2, 'khusi', 'khusi', 'kushicbsa@gmail.com'),
(3, 'mohan', 'mohan', 'mohan.ms@gmail.com'),
(4, 'ramendra', 'ramendra', 'ramendra@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `emailid`, `password`) VALUES
(1, 'ravi@gmail.com', 'raj');

-- --------------------------------------------------------

--
-- Table structure for table `nregisters`
--

CREATE TABLE `nregisters` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nregisters`
--

INSERT INTO `nregisters` (`id`, `fullname`, `emailid`, `password`) VALUES
(1, 'ram', 'ram.rk.kumar0786@gmail.com', 'ramkumar'),
(2, 'khusi', 'khusicbsa@gmail.com', 'khusi1');

-- --------------------------------------------------------

--
-- Table structure for table `orderfeed`
--

CREATE TABLE `orderfeed` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `Productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `orderid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderfeed`
--

INSERT INTO `orderfeed` (`id`, `userid`, `Productid`, `quantity`, `price`, `total`, `orderid`) VALUES
(1, 1, 26, 1, '657', '657', 1),
(2, 1, 26, 1, '657', '657', 1),
(3, 1, 57, 1, '54000', '54000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `shortdiscription` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `uploadimage` varchar(255) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `subcategory_id` varchar(255) NOT NULL,
  `child_id` varchar(255) NOT NULL,
  `country_id` varchar(255) NOT NULL,
  `state_id` varchar(255) NOT NULL,
  `city_id` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `no_of_click` int(11) NOT NULL,
  `percentage_click` float NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `shortdiscription`, `description`, `price`, `uploadimage`, `category_id`, `subcategory_id`, `child_id`, `country_id`, `state_id`, `city_id`, `brand`, `quantity`, `color`, `size`, `no_of_click`, `percentage_click`, `status`) VALUES
(2, 'Bata shoes ', 'Bata shoes for school', 'Bata shoes for school in any class', '1200', '56ad36da98b40cf61bafa47332120b00_1.jpg', '5', '8', '10', '1', '2', '3', 'Bata ', '20', 'Dark black', '9', 2, 0.14, '1'),
(5, 'Baby Shoes', 'Baby Shoes for school', 'Baby Shoes for school \r\nand light weight also', '850', 'a788435c33c0952be17650623e046a34_19.jpg', '5', '8', '10', '1', '1', '1', 'bata', '12', 'blue', '8', 0, 0, '1'),
(6, 'shoes', 'shoes', 'shoes', '900', 'cd4f82e70f92ed16d19952761be50a4a_15.jpg', '5', '8', '10', '1', '1', '1', 'bata', '20', 'black', '7', 0, 0, '1'),
(7, 'table1', 'table1', 'table1', '1200', 'd3942df4eb065ea707d0006f3c3bbe66_7.jpg', '1', '1', '2', '1', '2', '3', 'planwood', '12', 'blue', '12', 0, 0, '1'),
(8, 'table2', 'table2', 'table2', '1100', 'de25153bb36785ce801ec9367af6d0a2_8.jpg', '1', '3', '14', '1', '2', '3', 'light table', '1', 'light', '10', 0, 0, '1'),
(9, 'dinning', 'dinning', 'dinning', '12000', '7a622e6a28deedd40fcb3a188b5cbc33_9.jpg', '1', '3', '14', '1', '2', '3', 'lighting', '1', 'blue', '10', 2, 0.14, '1'),
(10, 'dinner table', 'dinner table', 'dinner table', '11000', 'c1fe57e172e1b7fd7b910edc74a5ea63_10.jpg', '1', '3', '14', '1', '1', '1', 'apple', '1', 'purple', '50', 2, 0.14, '1'),
(11, 'dinner 2', 'dinner 2', 'dinner 2', '15000', '4b091388292f4c26be317b2b2b9f3bb4_11.jpg', '1', '3', '14', '1', '1', '1', 'blue', '1', 'red', '10', 16, 1.12, '1'),
(12, 'ROUND  table', 'ROUND  table', 'ROUND  table', '1295', '98c9e5bacffe4a9fe0aff2b4f2907d48_hightower_martini_walnut_table_large.jpeg', '1', '1', '1', '2', '5', '6', 'wood', '10', 'Dark brown', '10', 6, 0.42, '1'),
(13, 'ROUND  TABLE 2', 'ROUND  TABLE 2', 'ROUND  TABLE 2', '1390', 'dfa427391b0fb9384410985af5eff8b8_table-6.jpg', '1', '1', '1', '3', '7', '8', 'woo', '7', 'Dark black', '12', 6, 0.42, '1'),
(14, 'ROUND  TABLE 3', 'ROUND  TABLE 2', 'ROUND  TABLE 2', '1480', '2a318ac15c82f7c289523bb4eb1d7aec_download.jpg', '1', '1', '1', '3', '7', '8', 'wood', '4', 'Dark brown', '12', 8, 0.56, '1'),
(15, 'CHAIR', 'CHAIR', 'CHAIR', '1834', 'e00226d7bb71a68378e6673b66dba8fa_3.jpg', '1', '2', '16', '1', '2', '3', 'wood', '2', 'Dark black', '12', 2, 0.14, '1'),
(16, 'CHAIR 2', 'CHAIR 2', 'CHAIR 2', '1543', '8499bacd264dc822af4214c35ddf38b7_2.jpg', '1', '2', '16', '1', '3', '4', 'wood', '2', 'Dark black', '14', 0, 0, '1'),
(17, 'CHAIR 3', 'CHAIR 3', 'CHAIR 3', '1120', '749d3ea5e3428f83b0e5e571c6fdde33_5.jpg', '1', '2', '16', '1', '4', '5', 'wood', '12', 'Dark black', '11', 0, 0, '1'),
(25, 'Baby shoesv', 'Baby shoes', 'Baby shoes', '234', '893830fbf5fffbedc86157209f077bd0_Gift-Punch-Services-Pvt-Ltd-SDL690044194-1-3245b.jpg', '5', '9', '11', '2', '6', '7', 'red cheery', '2', 'red', '4', 3, 0.21, '1'),
(26, 'Baby shoes', 'Baby shoes', 'Baby shoes', '657', 'baaef135d996eaaf1ea2351c1d0db19f_Brats-N-Angels-Multicolour-Baby-SDL445001698-1-41dc9.jpg', '5', '9', '11', '3', '7', '8', 'red cheery', '1', 'Dark pink', '4', 40, 2.8, '1'),
(27, 'study table 2', 'study table 2', 'study table 2', '2354', '834120a3f3e1e5056b25476cba7c5292_Arabia_Capra_Bench_Mahogany_00_IMG_0274_LP.jpg', '1', '1', '2', '2', '6', '7', 'dimond', '2', 'black', '34', 4, 0.28, '1'),
(28, 'study table 3', 'study table 2', 'study table 2', '44356', '621ef09f29088ed0f6360defe5c3248f_ovalblack-870x637.jpg', '1', '3', '15', '1', '2', '3', 'dimond1', '1', 'green', '14', 23, 1.61, '1'),
(30, 'Triangle Metallic', 'Triangle Metallic Ballpoint Pen', 'INK COLOR Blue\r\n MATERIAL DETAILS Principle Material - Plastic\r\n LENGTH 5.31 in DIAMETER 0.5 in PRODUCT WEIGHT 10 g BRAND Submarine', '990', 'e3d15cf45d8c7976d699bba9b33b10a0_Crystal-Pen-Black-Crystal-Ball-SDL955148581-1-8437c.jpg', '6', '12', '20', '1', '3', '2', ' Submarine™', '12', ' Blue', ' 5.31 in', 0, 0, '1'),
(31, 'Cross Edge Roller Ball Pen', 'Cross Edge Roller Ball Pen, Nitro Blue', 'Manufacturer Part Number AT0555-3\r\n', '1883 ', 'b6bc8b1d280fd41ff20194aa29cec715_Cross-Edge-Nitro-Blue-Chrome-SDL611380591-1-c6d14 (1) 2014.jpg', '6', '12', '21', '3', '8', '9', 'Cross ', '5', 'Blue ', '5 in', 0, 0, '1'),
(32, 'SCRIKSS BALL POINT PEN', 'SCRIKSS BALL POINT PEN VINTAGE BLACK 71929', 'Technical Details\r\nModel Number	SCR-VINTAGE-71929\r\nInk Colour	Blue\r\nTip Type	ballpoint', ' 669', 'f319e6b82c31249836b1eef545073163_Perfect-Black-with-Vintage-Silver-SDL813562696-1-fa494 797.jpg', '6', '12', '22', '1', '1', '1', 'SCRIKSS', '5', 'White', '6 in', 0, 0, '1'),
(33, 'Hatchet by Gary Paulsen', 'Hatchet by Gary Paulsen ', ' A tale of survival, Hatchet traces the story of young Brian, who is left stranded in the Canadian wilderness when his plane crashes.\r\n  Forced to survive with little food or gear, Brian’s will to live is put to the test.', '1464 ', '38a2dc913d2dc9fd43d09d316e59f8fd_hatchet-original-imaeqtfyyhrtmgrf 1464.jpeg', '4', '15', '29', '2', '5', '6', 'Star Books', '5', 'red', '8', 1, 0.07, '1'),
(34, 'Treasure Island by Robert Louis Stevenson', 'Treasure Island by Robert Louis Stevenson', 'Easily the best known adventure novel, this is Stevenson’s masterpiece. The son of an innkeeper, young Jim Hawkins finds himself thrust\r\n into the world of piracy as he joins Long John Silver in the search for buried treasure.', '1150', '4d1e7601c6fc2b00772bcd39f05e23f3_treasure-island-original-imae37aw7nyqvy6t.jpeg', '4', '15', '30', '2', '6', '7', 'Star Books', '7', 'red', '8', 0, 0, '1'),
(35, 'Swiss Family Robinson ', 'Swiss Family Robinson by Johann David Wyss', 'Stranded on a desert island as a result of a catastrophic shipwreck, a family is forced to survive with nothing but the natural resources available. Eventually, they are able to create an impressive compound within which they are able to live at ease in t', '1250', 'c53cdc79e2402bb586aefc503c48bd78_swiss-family-robinson-original-imaeyx5phkh7sfzq.jpeg', '4', '15', '31', '3', '7', '8', 'Star Books', '8', 'blue', '10 in', 0, 0, '1'),
(36, 'The Adventures of Captain Hatteras ', 'The Adventures of Captain Hatteras by Jules Verne', 'In this, one of Verne’s lesser known works, Captain Hatteras enlists a team with the goal of reaching the North Pole. Along the way wills are tested as they face sub-zero temperatures and possible starvation, and eventually the men begin to whisper of mut', '1440', '63604482a2e15b95417d02de30d98c22_at-the-north-pole-or-the-adventures-of-captain-hatteras-original-imaearvphbvdharx.jpeg', '4', '15', '32', '4', '10', '11', 'Star Books', '7', 'brown', '15 in', 0, 0, '1'),
(37, 'Atonement ', 'Atonement ', 'Atonement is a 2001 British metafiction novel written by Ian McEwan concerning the understanding and responding to the need for personal atonement. Set in three time periods, 1935 England, Second World War England and France, and present-day England, it c', '325', '67380330867f240dd997eafaa1294f2c_atonement-original-imadbkz2mragnrra  325.jpeg', '4', '16', '35', '1', '3', '2', 'Raj Books', '7', 'Blue', '17 in', 0, 0, '1'),
(38, '2666 ', '2666', '\r\nA NATIONAL BOOK CRITICS CIRCLE AWARD WINNERNew York Times Book Review 10 Best Books of 2008 Time Magazine\'s Best Book of 2008 \r\nLos Angeles Times Best Books of 2008 San Francisco Chronicle\'s 50 Best .', '391', 'd7f1d33b60bca7a680d950d94c020817_2666-original-imaegmyzf9bfxfpy  391.jpeg', '4', '16', '36', '3', '7', '8', 'Raj Books', '6', 'red', '19', 2, 0.14, '1'),
(39, 'Life of Pi', 'Life of Pi', 'Life of Pi is a Canadian fantasy adventure novel by Yann Martel published in 2001. The protagonist, Piscine Molitor \"Pi\" Patel, an Indian boy from Pondicherry, explores issues of spirituality and practicality from an early age.', '231', '68d42e28b33fef79b890803c5fae587e_life-of-pi-original-imadef4y7qsuey37 231.jpeg', '4', '16', '37', '1', '1', '1', 'Raj Books', '20', 'yellow', '20', 0, 0, '1'),
(40, 'The Shadow of the Wind', 'The Shadow of the Wind', 'The Shadow of the Wind is a 2001 novel by Spanish writer Carlos Ruiz Zafón and a worldwide bestseller.', '474', 'efa8c70c844156e33f1d3aa4ef69dc83_the-shadow-of-the-wind-original-imaefahthkysan8h  474.jpeg', '4', '16', '38', '1', '4', '5', 'Raj Books', '7', 'black', '20', 2, 0.14, '1'),
(41, 'The Known World', 'The Known World', 'The Known World is a 2003 historical novel by Edward P. Jones. Set in Virginia during the antebellum era, it examines the issues regarding the ownership of black slaves by both white and black Americans.', '649', '94d1c4cac0fa00c999e66d4020965b47_the-known-world-original-imadeytyj5jg5zja   649.jpeg', '4', '16', '39', '1', '2', '3', 'Raj Books', '6', 'white', '20', 1, 0.07, '1'),
(42, 'The Girl with the Dragon Tattoo', 'The Girl with the Dragon Tattoo', 'Mikael Blomkvist, a once-respected financial journalist, watches his professional life rapidly crumble around him. Prospects appear bleak until an unexpected (and unsettling) offer to resurrect his name is extended by an old-school titan of Swedish indust', '350', 'c7a6e55ba7427cc1a04a69f44b04d4c8_the-girl-with-the-dragon-tattoo-original-imaeru7jrugezpxc  350.jpeg', '4', '17', '40', '1', '1', '1', 'Raj Books', '12', 'red', '21', 0, 0, '1'),
(43, 'Midnight in the Garden of Good and Evil', 'Midnight in the Garden of Good and Evil', 'Voodoo. Decadent socialites packing Lugars. Cotillions. With towns like Savannah, Georgia, who needs Fellini? Midnight in the Garden of Good and Evil takes two narrative strands--each worthy of its own book--and weaves them together to make a single fasci', '638', '4617c281e3ed228f5a048146482f659c_midnight-in-the-garden-of-good-and-evil-original-imaeahfhehfavaqj  638.jpeg ', '4', '17', '42', '1', '1', '1', 'Raj Books', '10', 'red', '21', 1, 0.07, '1'),
(44, 'The Woman in White ', 'The Woman in White ', 'In one moment, every drop of blood in my body was brought to a stop... There, as if it had that moment sprung out of the earth, stood the figure of a solitary Woman, dressed from head to foot in white\' The Woman in White famously opens with Walter Hartrig', '1259', '54b47f5e1da8dbe9adac26ad3b995d00_the-woman-in-white-original-imaeb8bfa2gnxgsy  1259.jpeg', '4', '17', '43', '1', '2', '3', 'Raj Books', '15', 'red', '21', 3, 0.21, '1'),
(45, 'The Devil in the White City', 'The Devil in the White City', 'Author Erik Larson imbues the incredible events surrounding the 1893 Chicago World\'s Fair with such drama that readers may find themselves checking the book\'s categorization to be sure that \'The Devil in the White City\' is not, in fact, a highly imaginati', '651', 'd125a4ef5fcd9e941cb56c039f00e4f2_the-devil-in-the-white-city-original-imadxq8fvhqj4ast  651.jpeg', '4', '17', '44', '1', '3', '2', 'Star Books', '12', 'red', '21', 4, 0.28, '1'),
(46, 'The Haunting of Hill House ', 'The Haunting of Hill House ', 'First published in 1959, Shirley Jackson\'s The Haunting of Hill House has been hailed as a perfect work of unnerving terror. It is the story of four seekers who arrive at a notoriously unfriendly pile called Hill House: Dr. Montague, an occult scholar loo', '629', '235be813ea5088ef3a6d4571d370f37f_haunting-of-hill-house-original-imaesbhcwfrgdmse  629.jpeg', '4', '18', '45', '1', '1', '1', 'Star Books', '5', 'purple', '21', 3, 0.21, '1'),
(47, 'For Whom The Bell Tolls', 'A WAR RAGES AROUND US EVERY DAY. THE STRUGGLE TO SAVE ALL MANKIND. THE ULTIMATE EVIL.', 'The battle for souls has raged since the truce that followed the First Great War of the Angels. God has struck the ultimate blow and sacrifice to gain the advantage and defeat His fallen angel and estranged son, Lucifer.\r\n As Lucifer stands at the foot of', '567', 'dd0910f45c551384c0b947b59f10337b_for-whom-the-bell-tolls-executions-at-swansea-prison-original-imae89jcmwzhjjgj  567.jpeg', '4', '18', '46', '1', '2', '3', 'Raj Books', '12', 'light blue', '15', 3, 0.21, '1'),
(48, 'The Island of Dr. Moreau', 'The Island of Dr. Moreau', 'Ranked among the classic novels of the English language and the inspiration for several unforgettable movies, this early work of H. G. Wells was greeted in 1896 by howls of protest from reviewers, who found it horrifying and blasphemous. They wanted to kn', '220', 'bd65586796428a950ef500637416148e_the-island-of-dr-moreau-original-imaddqqjmfjfagka 220.jpeg', '4', '18', '48', '1', '1', '1', 'Raj Books', '14', 'red', '21', 1, 0.07, '1'),
(49, 'Uni-ball Signo Broad UM-153 Gel Pen ', 'Uni-ball Signo Broad UM-153 Gel Pen - White Ink', 'Uni-ball Signo Broad UM-153 Gel Pen - White Ink', '440', 'f15cf80d3680f841ab09597b514a8d2b_Uniball-Impact-UM-153S-Gel-SDL071626900-1-66bc2 440.jpg', '6', '13', '23', '1', '1', '1', 'DelGuard', '12', 'Black', '6 in', 2, 0.14, '1'),
(50, 'Uni-ball Signo UM-151 Gel Pen', 'Uni-ball Signo UM-151 Gel Pen - 0.38 mm - Black', 'Uni-ball Signo UM-151 Gel Pen - 0.38 mm - Black', '420', '0efc50d16148c0f02e81b6254ec43697_Uniball-Signo-Gelstick-Gel-Pen-SDL365547325-1-de23b  420.jpg', '6', '13', '24', '1', '2', '3', 'DelGuard', '10', 'Black', '7 in', 0, 0, '1'),
(51, 'Pilot Hi-Tec-C Maica Gel Pen', 'Pilot Hi-Tec-C Maica Gel Pen - 0.4 mm - Black', 'Pilot Hi-Tec-C Maica Gel Pen - 0.4 mm - Black', '2122', 'fa84d71aff7123203d556e875e91bbca_Limited-pilot-CECIL-McBEE-Hi-SDL837344209-1-69ae1 2122.jpg', '6', '13', '25', '1', '2', '3', 'DelGuard', '15', 'White', '8 in', 0, 0, '1'),
(52, 'Pilot Metropolitan Fountain Pen', 'Pilot Metropolitan Fountain Pen - Black Plain - Fine Nib ', 'Pilot Metropolitan Fountain Pen - Black Plain - Fine Nib\r\n', '55735', '9e69c5d6d8cb2b1fea8b8f5ac71bdd94_Pilot-fountain-pen-KenIzuru-Makie-SDL207469706-1-6a6f9  55735.jpg', '6', '14', '26', '1', '2', '3', 'SCRIKSS', '5', 'Dark black', '5 in', 0, 0, '1'),
(53, 'Baoer Dragan snake gold Fountain Pen', 'Baoer Dragan snake gold Fountain Pen (Blue, Black)', 'Baoer Dragan snake gold Fountain Pen (Blue, Black)', '650', '4972aeafa80e0b1b1c27f99e4ea65316_Jinhao-Golden-Fountain-Pen-with-SDL788555028-1-8b166  650.jpg', '6', '14', '27', '2', '6', '7', 'SCRIKSS', '3', 'Golden', '5 in', 0, 0, '1'),
(54, 'Hero 975 Gold Nib Fountain Pen', 'Hero 975 Gold Nib Emotion Fountain Pen (Blue, Black)', 'Hero 975 Gold Nib Emotion Fountain Pen (Blue, Black)', '650', '395de048d5280c25be53f113d23ebd6c_Srpc-Blue-Fountain-and-Roller-SDL146900604-1-6e8d2.JPG', '6', '14', '28', '1', '3', '4', 'SARASA', '12', 'blue', '6 in', 1, 0.07, '1'),
(55, 'Hero 975 Gold Nib ', 'Hero 975 Gold Nib Emotion', 'Hero 975 Gold Nib Emotion Fountain Pen', '410', 'e06ee21d214cad02eefbcf0ae3a1754b_Hero-Fountain-Pen-Iridium-Nib-SDL248339754-3-643c7(2)410.jpg', '6', '14', '28', '1', '1', '1', 'DelGuard', '5', 'Golden', '6', 6, 0.42, '1'),
(56, 'Hero 975 Gold Nib 3', 'Hero 975 Gold Nib Emotion Fountain Pen', 'Hero 975 Gold Nib Emotion Fountain Pen', '1399', '97e66e98e0a433df2bdbe7a50998d5ac_Hero 975 Gold Nib Emotion Fountain Pen(3)1399.JPG', '6', '14', '28', '1', '2', '3', 'SCRIKSS', '5', 'Golden', '6 in', 6, 0.42, '1'),
(57, 'Hero 975 Gold Nib 4', 'Hero 975 Gold Nib Emotion Fountain Pen (Blue, Black)', 'Hero 975 Gold Nib Emotion Fountain Pen', '54000', '51c5c71ae3e9e95e6a711e6260ac62c1_Hero 975 Gold Nib Emotion Fountain Pen(4)54000.jpg', '6', '14', '28', '1', '1', '1', 'SARASA', '5', 'Black', '8 in', 2, 0.14, '1'),
(58, 'Baoer Dragan snake gold 2', 'Baoer Dragan snake gold Fountain Pen (Blue, Black)', 'Baoer Dragan snake gold Fountain Pen (Blue, Black)', '325', '7b4654454e2c4fc669f01ec3e39f141a_Baoer-Golden-Fountain-Ink-Pen-SDL073821796-1-8cb17(2) 325.jpg', '6', '14', '27', '1', '2', '3', 'Spanic', '5', 'Black and white', '7 in', 1, 0.07, '1'),
(59, 'Baoer Dragan snake gold Fountain Pen 3', 'Baoer Dragan snake gold Fountain Pen (Blue, Black)', 'Baoer Dragan snake gold Fountain Pen (Blue, Black)', '560', '5aa00b8d7aa897a88e47202b9010567a_Baoer-Fountain-Pen-Carved-Running-SDL357018092-1-e469f(3).jpg', '6', '14', '27', '1', '1', '1', 'SCRIKSS', '7', 'Golden', '9 in', 0, 0, '1'),
(60, 'Baoer Dragan snake gold Fountain Pen 4', 'Baoer Dragan snake gold Fountain Pen (Blue, Black)', 'Baoer Dragan snake gold Fountain Pen (Blue, Black)', '786', '902da2ce8f40ff0ec42c28e92421c4ac_Baoer-Golden-Cap-On-and-SDL433352198-1-ae61d(4)786.jpg', '6', '14', '27', '2', '5', '6', 'Shello', '5', 'Golden and black', '9 in', 0, 0, '1'),
(61, 'Pilot Metropolitan Fountain Pen 2', 'Pilot Metropolitan Fountain Pen', 'Pilot Metropolitan Fountain Pen', '106270', 'eb6cad552fc57ad5b26d7d994c1b35c8_Pilot Metropolitan Fountain Pen(2)106270.jpg', '6', '14', '26', '2', '5', '6', 'SCRIKSS', '5', 'Golden and black', '9 in', 2, 0.14, '1'),
(62, 'Pilot Metropolitan Fountain Pen 3', 'Pilot Metropolitan Fountain Pen', 'Pilot Metropolitan Fountain Pen', '1140', 'fa5cbd287fc7bc925ed33c4cc6b8fb54_Pilot Metropolitan Fountain Pen(3)1140.jpg', '6', '14', '26', '2', '5', '6', 'Shello', '4', 'white and pink', '8 in', 0, 0, '1'),
(63, 'Pilot Metropolitan Fountain Pen 4', 'Pilot Metropolitan Fountain Pen', 'Pilot Metropolitan Fountain Pen', '4590', '39d13bf44defbc69aa21a007e7b09303_Pilot Metropolitan Fountain Pen(4)4590.jpg', '6', '14', '26', '1', '1', '1', 'Spanic', '5', 'White', '8 in', 0, 0, '1'),
(64, 'Pilot Hi-Tec-C Maica Gel Pen 2', 'Pilot Hi-Tec-C Maica Gel Pen', 'Pilot Hi-Tec-C Maica Gel Pen', '2462', '1a5c731b9326a4d35200f21b59820e0a_Pilot Hi-Tec-C Maica Gel Pen(2)2462.jpg', '6', '13', '25', '2', '6', '7', 'SCRIKSS', '5', 'white and pink', '8 in', 0, 0, '1'),
(65, 'Pilot Hi-Tec-C Maica Gel Pen 3', 'Pilot Hi-Tec-C Maica Gel Pen', 'Pilot Hi-Tec-C Maica Gel Pen', '2470', 'e135b64b186431f2faf0be9957df469c_Pilot Hi-Tec-C Maica Gel Pen(3)2470.jpg', '6', '13', '25', '1', '1', '1', 'SARASA', '3', 'white and pink', '7', 0, 0, '1'),
(66, 'Pilot Hi-Tec-C Maica Gel Pen 4', 'Pilot Hi-Tec-C Maica Gel Pen', 'Pilot Hi-Tec-C Maica Gel Pen', '2580', 'de76a76aa0cb9edcb3976315c9a1e8d5_Pilot Hi-Tec-C Maica Gel Pen(4)2580.jpg', '6', '13', '25', '1', '1', '1', 'SCRIKSS', '5', 'white and pink', '8', 0, 0, '1'),
(67, 'Uni-ball Signo UM-151 Gel Pen 2', 'Uni-ball Signo UM-151 Gel Pen', 'Uni-ball Signo UM-151 Gel Pen', '500', '5658edbd956c3a4f8592607511686e23_Uni-ball Signo Broad UM-153 Gel Pen (2)500.jpg', '6', '13', '24', '1', '1', '1', 'Spanic', '4', 'Black', '8 in', 0, 0, '1'),
(68, 'Uni-ball Signo UM-151 Gel Pen 3', 'Uni-ball Signo UM-151 Gel Pen', 'Uni-ball Signo UM-151 Gel Pen', '250', '9b67b6b69a83c7d3898040fb50344f31_Uni-ball Signo UM-151 Gel Pen(2)250.jpg', '6', '13', '24', '1', '1', '1', 'Shello', '4', 'green', '8 in', 1, 0.07, '1'),
(71, 'baile-and002075-original-imaefggbbxtmdvua q', 'baile-and002075-original-imaefggbbxtmdvua  299', 'baile-and002075-original-imaefggbbxtmdvua  299', '299', '41dea30cf0efafe4e840bd58f026b630_baile-and002075-original-imaefggbbxtmdvua  299.jpeg', '6', '12', '22', '1', '1', '1', 'SCRIKSS', '4', 'red', '9 in', 0, 0, '1'),
(73, 'Srpc-4824488824-original', 'Srpc-4824488824-original', 'Srpc-4824488824-original', '890', '01485165f1ddcb31c5af6f7f61025db6_srpc-4824488824-original-imaezngsae2rcxph  890.jpeg', '6', '12', '22', '1', '1', '1', 'SCRIKSS', '4', 'Red and Black', '7 in', 0, 0, '1'),
(74, 'Cross-at0555-6-original', 'Cross-at0555-6-original', 'Cross-at0555-6-original', '2345', '96cde3ddc4da1e5e097065aee544963e_cross-at0555-6-original-imaezyharzub884z  2345.jpeg', '6', '12', '22', '1', '3', '2', 'SARASA', '5', 'cream', '7 in', 0, 0, '1'),
(76, 'Parker-9000022513-original', 'Parker-9000022513-original', 'Parker-9000022513-original', '852', '29d06126fe2310cdc62aecad73e7ad85_parker-9000022513-original-imaezjad27uacu2g   852.jpeg', '6', '12', '21', '1', '1', '1', 'Spanic', '4', 'red', '7 in', 0, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `mobileno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fullname`, `email`, `password`, `gender`, `mobileno`) VALUES
(8, 'ravi', 'ram.rk@gmail.com', '1234', 'Male', '9039780746'),
(16, 'ram', 'ram.rk@gmail.com', 'angel', 'Male', '8871582581'),
(18, 'dsaedas', 'ram.rkgmail.com', 'fsdf', 'Male', '9039780746'),
(19, 'raksha', 'raksha83@gmail.com', 'raksha', 'Female', '8955602345');

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` int(11) NOT NULL,
  `fullname` varchar(300) DEFAULT NULL,
  `emailid` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `contactno` varchar(300) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip_code` varchar(50) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `register_by` varchar(300) DEFAULT NULL,
  `facebookimage` varchar(300) DEFAULT NULL,
  `googleimage` varchar(300) DEFAULT NULL,
  `verify` varchar(200) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `fullname`, `emailid`, `password`, `contactno`, `address`, `city`, `state`, `country`, `zip_code`, `gender`, `create_at`, `register_by`, `facebookimage`, `googleimage`, `verify`, `status`) VALUES
(1, 'shailendra sharma', 'shailendra.sharma105@gmail.com', '123456', '9893304801', '152, chocksay nagar, Behind chinar estate, DIG bangalo,', 'Bhopal', 'Madhya Pradesh', 'India', '462001', NULL, NULL, NULL, NULL, NULL, 'H847oISh4c', 1),
(2, 'shailendra sharma', 'dezvengroup@gmail.com', '123456', '9893304801', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'W7diKdNgKH', 1),
(4, 'shirish sharma', 'shailendrsssa.sharma105@gmail.com', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-02-11 08:44:51', NULL, NULL, NULL, 'OSQc6RYFy2', 1),
(10, 'maneesh', 'manish96385@gmail.com', '123', '43546', 'mp nagar bhopal', 'bhopal', 'mp', 'india', '098898', NULL, '2017-03-10 12:06:58', NULL, NULL, NULL, 'm0Ot1e4C9L', 1),
(12, 'PRASHANT PATWA', 'prashantpatwa497@gmail.com', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-10 01:50:42', NULL, NULL, NULL, 'qIbpUZuNTH', 1),
(13, 'jaya', 'jaya@gmail.com', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-10 03:06:58', NULL, NULL, NULL, 'fhft9HsjwL', 0),
(14, 'venkatesh', 'thyncweb@outlook.com', 'Mira@Jewel', '8886464966', 'Hyderabad', 'Hyderabad', 'Telangana', 'India', '500082', NULL, '2017-03-15 03:37:55', NULL, NULL, NULL, 'dS4nclWNRt', 1),
(15, 'anshul', 'anshultiwari8894@gmail.com', '123', '343434', 'mp nagar', 'bhopal', 'mp', 'India', '462021', NULL, '2017-03-16 11:39:17', NULL, NULL, NULL, '1tMhmffKIQ', 1),
(16, 'sonam', 'sonampatel0112@gmail.com', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-22 04:40:32', NULL, NULL, NULL, 'ep8AYlJUjo', 1),
(17, 'anshul tiwari', 'anshul@gmail.com', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'anshul tiwari', 'anshul@gmail.com', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'anshul tiwari', 'anshul@gmail.com', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'ram', 'ram.rk.kumar0786@gmail.com', 'ramkumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'soniya', 'soniya@gmail.com', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'diksha', 'diksha@gmail.com', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'sona', 'sona@gmail.com', 'sona123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'jigysha', 'jigysha@gmail.com', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'radha', 'radha@gmail.com', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'harsha', 'harsha@gmail.com', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'sunny', 'sunny@gmail.com', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'ravina', 'ravina@gmail.com', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `firstname` varchar(111) DEFAULT NULL,
  `middlename` varchar(111) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `emailid` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `mobileno` varchar(255) DEFAULT NULL,
  `branchname` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `emailid`, `password`, `mobileno`, `branchname`, `nationality`, `comment`) VALUES
(1, 'ram', 'kumar', 'saini', 'male', 'ram.rk.kumar0786@gmail.com', 'raj', '9039780746', 'Master of computer application', 'indian', 'write here'),
(2, 'khusi', '', 'yadav', 'female', 'kushicbsa@gmail.com', 'raj', '9144411329', 'Master of computer application', 'indian', ''),
(4, 'ramendra', '', 'singh', 'MALE', 'ramendra@gmail.com', 'raja', '2147483647', 'Mechanical Engg', 'INDIAN', 'Hii frnds'),
(5, 'sona', '', 'yadav', 'FEMALE', 'sonakumari@gmail.com', 'raja', '2147483647', 'Master of computer application', 'INDIAN', 'Hii friends'),
(6, 'ravi', '', 'pal', 'male', 'ravipaltarun1@gmail.com', 'raja', '2147483647', 'Master of computer application', 'indian', 'Hii , I am ravi'),
(7, 'harsha', '', 'harchandani', 'female', 'harchandani.harsha@gmail.com', 'raja', '2147483647', 'Master of computer application', 'indian', 'Hii i m harsha '),
(8, 'diksha', '', 'pandey', 'female', 'dikshapandey@gmail.com', 'raja', '2147483647', 'Master of computer application', 'indian', 'Allaha kasam'),
(9, 'anupam', '', 'shrivastava', 'male', 'anupam.shrivastava@gmail.com', 'raja', '8064232522', 'Master of computer application', 'indian', ''),
(11, 'kranti', '', 'sharma', 'female', 'krantisharma@gmail.com', 'raja', '8871581581', 'Master of computer application', 'indian', ''),
(12, 'krishna', 'singh', 'yadav', 'male', 'krishnasingh@gmail.com', 'raja', '9907123456', 'Master of computer application', 'indian', ''),
(17, 'rinky', 'kumari', 'saini', 'female', 'rinkyks@gmail.com', 'raja', '9685300845', 'Computer Science & Engg', 'indian', '');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `id` int(11) NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `ip_address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`id`, `product_name`, `ip_address`) VALUES
(1, 'pen', '104.168.37.52'),
(2, 'pen', '104.168.37.52'),
(3, 'shoes', '104.168.37.52'),
(4, 'shoes', '104.168.37.52'),
(5, 'pen', '104.168.37.52'),
(6, 'books', '104.168.37.52'),
(7, 'book', '104.168.37.52'),
(8, 'books', '104.168.37.52'),
(9, 'car', '104.168.37.52'),
(10, 'pen', '104.168.37.52'),
(11, 'hyjybj', '104.168.37.52');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `country_id` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `country_id`, `state`, `status`) VALUES
(1, '1', 'Delhi', 1),
(2, '1', 'Bangloar', 1),
(3, '1', 'Bombay', 1),
(4, '1', 'Goa', 1),
(5, '2', 'RED Street', 1),
(6, '2', 'Westurn highway', 1),
(7, '3', 'Jiu Mah', 1),
(8, '3', 'Hum tuh na', 1),
(9, '4', 'dhaka', 1),
(10, '4', 'hizaab pur', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `status1` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `category_id`, `subcategory`, `status`, `status1`) VALUES
(1, '1', 'Tables', 1, 0),
(2, '1', 'chairs', 1, 0),
(3, '1', 'Dinning tables', 1, 0),
(4, '2', 'Mobiles', 1, 0),
(5, '2', 'T.V.', 1, 0),
(8, '5', 'Bata', 1, 0),
(9, '5', 'Red Charry', 1, 0),
(12, '6', 'BALLPOINT PENS', 1, 0),
(13, '6', 'GEL PENS', 1, 0),
(14, '6', 'FOUNTAIN PEN ', 1, 0),
(15, '4', 'Action and Adventure.', 1, 0),
(16, '4', 'Novels.', 1, 0),
(17, '4', 'Mystery', 1, 0),
(18, '4', 'Horror', 1, 0),
(19, '4', 'reliance', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_move`
--

CREATE TABLE `user_move` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(300) NOT NULL,
  `datetime` datetime NOT NULL,
  `page_name` varchar(300) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `product_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_move`
--

INSERT INTO `user_move` (`id`, `ip_address`, `datetime`, `page_name`, `status`, `product_id`) VALUES
(1, '104.168.37.52', '2017-04-17 06:17:20', 'localhost/html/index.php', 1, 0),
(2, '104.168.37.52', '2017-04-17 06:24:27', 'localhost/html/index.php', 1, 0),
(3, '104.168.37.52', '2017-04-17 06:25:08', 'localhost/html/apple-iphones.php?id=28', 1, 28),
(4, '104.168.37.52', '2017-04-17 06:25:29', 'localhost/html/detail.php?id=54', 1, 54),
(5, '104.168.37.52', '2017-04-17 06:46:25', 'localhost/html/index.php', 1, 0),
(6, '104.168.37.52', '2017-04-17 06:46:28', 'localhost/html/index.php', 1, 0),
(7, '104.168.37.52', '2017-04-17 06:50:56', 'localhost/html/index.php', 1, 0),
(8, '104.168.37.52', '2017-04-17 07:05:39', 'localhost/html/index.php', 1, 0),
(9, '104.168.37.52', '2017-04-17 07:05:47', '127.0.0.1/html/apple-iphones.php?id=26', 1, 26),
(10, '104.168.37.52', '2017-04-17 10:18:24', '127.0.0.1/html/apple-iphones.php?id=26', 1, 26),
(11, '104.168.37.52', '2017-04-17 10:19:17', '127.0.0.1/html/index.php', 1, 0),
(12, '104.168.37.52', '2017-04-17 10:19:19', '127.0.0.1/html/index.php', 1, 0),
(13, '104.168.37.52', '2017-04-17 10:53:16', '127.0.0.1/html/index.php', 1, 0),
(14, '104.168.37.52', '2017-04-17 10:53:55', '127.0.0.1/html/apple-iphones.php?id=14', 1, 14),
(15, '104.168.37.52', '2017-04-17 10:53:57', '127.0.0.1/html/detail.php?id=9', 1, 9),
(16, '104.168.37.52', '2017-04-17 10:54:03', '127.0.0.1/html/basket.php?id=9', 1, 9),
(17, '104.168.37.52', '2017-04-17 10:54:09', '127.0.0.1/html/apple-iphones.php?id=46', 1, 46),
(18, '104.168.37.52', '2017-04-17 10:54:11', '127.0.0.1/html/detail.php?id=47', 1, 47),
(19, '104.168.37.52', '2017-04-17 10:54:17', '127.0.0.1/html/basket.php?id=47', 1, 47),
(20, '104.168.37.52', '2017-04-17 10:54:23', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(21, '104.168.37.52', '2017-04-17 10:54:24', '127.0.0.1/html/detail.php?id=26', 1, 26),
(22, '104.168.37.52', '2017-04-17 10:54:30', '127.0.0.1/html/basket.php?id=26', 1, 26),
(23, '104.168.37.52', '2017-04-17 10:54:35', '127.0.0.1/html/register.php', 1, 0),
(24, '104.168.37.52', '2017-04-17 10:56:01', '127.0.0.1/html/index.php', 1, 0),
(25, '104.168.37.52', '2017-04-17 11:09:38', '127.0.0.1/html/index.php', 1, 0),
(26, '104.168.37.52', '2017-04-17 11:09:42', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(27, '104.168.37.52', '2017-04-17 11:09:44', '127.0.0.1/html/detail.php?id=13', 1, 13),
(28, '104.168.37.52', '2017-04-17 11:09:48', '127.0.0.1/html/index.php', 1, 0),
(29, '104.168.37.52', '2017-04-17 11:09:54', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(30, '104.168.37.52', '2017-04-17 11:09:56', '127.0.0.1/html/detail.php?id=13', 1, 13),
(31, '104.168.37.52', '2017-04-17 11:10:05', '127.0.0.1/html/basket.php?id=13', 1, 13),
(32, '104.168.37.52', '2017-04-17 11:10:08', '127.0.0.1/html/register.php', 1, 0),
(33, '104.168.37.52', '2017-04-17 11:10:58', '127.0.0.1/html/index.php', 1, 0),
(34, '104.168.37.52', '2017-04-18 11:19:41', '127.0.0.1/html/detail.php?id=13', 1, 13),
(35, '104.168.37.52', '2017-04-18 11:19:47', '127.0.0.1/html/index.php', 1, 0),
(36, '104.168.37.52', '2017-04-18 11:19:50', '127.0.0.1/html/index.php', 1, 0),
(37, '104.168.37.52', '2017-04-18 11:29:27', '127.0.0.1/html/apple-iphones.php?id=45', 1, 45),
(38, '104.168.37.52', '2017-04-18 11:29:29', '127.0.0.1/html/detail.php?id=46', 1, 46),
(39, '104.168.37.52', '2017-04-18 11:29:35', '127.0.0.1/html/basket.php?id=46', 1, 46),
(40, '104.168.37.52', '2017-04-18 11:29:37', '127.0.0.1/html/register.php', 1, 0),
(41, '104.168.37.52', '2017-04-18 11:39:11', '127.0.0.1/html/index.php', 1, 0),
(42, '104.168.37.52', '2017-04-18 12:16:31', '127.0.0.1/html/index.php', 1, 0),
(43, '104.168.37.52', '2017-04-18 12:16:37', '127.0.0.1/html/index.php?event=ram', 1, 0),
(44, '104.168.37.52', '2017-04-18 12:27:30', '127.0.0.1/html/index.php', 1, 0),
(45, '104.168.37.52', '2017-04-18 12:38:00', '127.0.0.1/html/index.php', 1, 0),
(46, '104.168.37.52', '2017-04-18 12:38:08', '127.0.0.1/html/index.php?event=pen', 1, 0),
(47, '104.168.37.52', '2017-04-18 12:38:20', '127.0.0.1/html/index.php?event=shoes', 1, 0),
(48, '104.168.37.52', '2017-04-18 12:40:49', '127.0.0.1/html/index.php', 1, 0),
(49, '104.168.37.52', '2017-04-18 12:41:19', '127.0.0.1/html/index.php?event=mobile', 1, 0),
(50, '104.168.37.52', '2017-04-18 12:42:47', '127.0.0.1/html/index.php', 1, 0),
(51, '104.168.37.52', '2017-04-18 12:42:55', '127.0.0.1/html/index.php?event=pens', 1, 0),
(52, '104.168.37.52', '2017-04-18 12:43:14', '127.0.0.1/html/index.php?event=pen', 1, 0),
(53, '104.168.37.52', '2017-04-18 12:45:58', '127.0.0.1/html/index.php', 1, 0),
(54, '104.168.37.52', '2017-04-18 12:46:06', '127.0.0.1/html/index.php?event=BOOKS', 1, 0),
(55, '104.168.37.52', '2017-04-18 12:47:29', '127.0.0.1/html/index.php', 1, 0),
(56, '104.168.37.52', '2017-04-18 12:47:35', '127.0.0.1/html/index.php?event=pen', 1, 0),
(57, '104.168.37.52', '2017-04-18 12:48:35', '127.0.0.1/html/index.php', 1, 0),
(58, '104.168.37.52', '2017-04-18 12:52:14', '127.0.0.1/html/index.php', 1, 0),
(59, '104.168.37.52', '2017-04-18 12:59:09', '127.0.0.1/html/index.php', 1, 0),
(60, '104.168.37.52', '2017-04-18 01:01:38', '127.0.0.1/html/index.php', 1, 0),
(61, '104.168.37.52', '2017-04-18 01:01:48', '127.0.0.1/html/index.php', 1, 0),
(62, '104.168.37.52', '2017-04-18 01:03:54', '127.0.0.1/html/index.php', 1, 0),
(63, '104.168.37.52', '2017-04-18 01:04:46', '127.0.0.1/html/index.php', 1, 0),
(64, '104.168.37.52', '2017-04-18 01:04:49', '127.0.0.1/html/index.php', 1, 0),
(65, '104.168.37.52', '2017-04-18 01:06:58', '127.0.0.1/html/index.php', 1, 0),
(66, '104.168.37.52', '2017-04-18 01:07:31', '127.0.0.1/html/index.php', 1, 0),
(67, '104.168.37.52', '2017-04-18 01:07:38', '127.0.0.1/html/index.php?event=pen', 1, 0),
(68, '104.168.37.52', '2017-04-18 01:08:32', '127.0.0.1/html/index.php', 1, 0),
(69, '104.168.37.52', '2017-04-18 01:08:39', '127.0.0.1/html/index.php?event=pen', 1, 0),
(70, '104.168.37.52', '2017-04-18 01:09:18', '127.0.0.1/html/index.php', 1, 0),
(71, '104.168.37.52', '2017-04-18 01:11:52', '127.0.0.1/html/index.php', 1, 0),
(72, '104.168.37.52', '2017-04-18 01:11:55', '127.0.0.1/html/index.php', 1, 0),
(73, '104.168.37.52', '2017-04-18 01:12:28', '127.0.0.1/html/index.php', 1, 0),
(74, '104.168.37.52', '2017-04-18 01:12:31', '127.0.0.1/html/index.php', 1, 0),
(75, '104.168.37.52', '2017-04-18 01:17:31', '127.0.0.1/html/index.php', 1, 0),
(76, '104.168.37.52', '2017-04-18 01:18:39', '127.0.0.1/html/index.php', 1, 0),
(77, '104.168.37.52', '2017-04-18 01:40:58', '127.0.0.1/html/index.php', 1, 0),
(78, '104.168.37.52', '2017-04-18 01:41:01', '127.0.0.1/html/index.php', 1, 0),
(79, '104.168.37.52', '2017-04-18 01:42:00', '127.0.0.1/html/index.php', 1, 0),
(80, '104.168.37.52', '2017-04-18 01:42:03', '127.0.0.1/html/index.php', 1, 0),
(81, '104.168.37.52', '2017-04-18 01:42:12', '127.0.0.1/html/index.php', 1, 0),
(82, '104.168.37.52', '2017-04-18 02:52:35', '127.0.0.1/html/index.php', 1, 0),
(83, '104.168.37.52', '2017-04-18 05:01:58', '127.0.0.1/html/index.php', 1, 0),
(84, '104.168.37.52', '2017-04-18 05:56:10', '127.0.0.1/html/index.php', 1, 0),
(85, '104.168.37.52', '2017-04-18 05:56:22', '127.0.0.1/html/apple-iphones.php?id=45', 1, 45),
(86, '104.168.37.52', '2017-04-18 05:56:50', '127.0.0.1/html/apple-iphones.php?id=33', 1, 33),
(87, '104.168.37.52', '2017-04-18 05:56:56', '127.0.0.1/html/apple-iphones.php?id=38', 1, 38),
(88, '104.168.37.52', '2017-04-18 05:56:58', '127.0.0.1/html/detail.php?id=40', 1, 40),
(89, '104.168.37.52', '2017-04-18 05:57:06', '127.0.0.1/html/basket.php?id=40', 1, 40),
(90, '104.168.37.52', '2017-04-18 05:57:11', '127.0.0.1/html/apple-iphones.php?id=43', 1, 43),
(91, '104.168.37.52', '2017-04-18 05:57:12', '127.0.0.1/html/detail.php?id=44', 1, 44),
(92, '104.168.37.52', '2017-04-18 05:57:18', '127.0.0.1/html/basket.php?id=44', 1, 44),
(93, '104.168.37.52', '2017-04-18 05:57:27', '127.0.0.1/html/apple-iphones.php?id=41', 1, 41),
(94, '104.168.37.52', '2017-04-18 05:57:32', '127.0.0.1/html/apple-iphones.php?id=47', 1, 47),
(95, '104.168.37.52', '2017-04-18 05:57:36', '127.0.0.1/html/apple-iphones.php?id=38', 1, 38),
(96, '104.168.37.52', '2017-04-18 05:57:41', '127.0.0.1/html/apple-iphones.php?id=44', 1, 44),
(97, '104.168.37.52', '2017-04-18 05:57:43', '127.0.0.1/html/detail.php?id=45', 1, 45),
(98, '104.168.37.52', '2017-04-18 05:57:49', '127.0.0.1/html/basket.php?id=45', 1, 45),
(99, '104.168.37.52', '2017-04-18 05:57:54', '127.0.0.1/html/register.php', 1, 0),
(100, '104.168.37.52', '2017-04-18 06:05:08', '127.0.0.1/html/index.php', 1, 0),
(101, '104.168.37.52', '2017-04-18 06:05:56', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(102, '104.168.37.52', '2017-04-18 06:06:02', '127.0.0.1/html/detail.php?id=13', 1, 13),
(103, '104.168.37.52', '2017-04-18 06:06:07', '127.0.0.1/html/basket.php?id=13', 1, 13),
(104, '104.168.37.52', '2017-04-18 06:11:21', '127.0.0.1/html/index.php', 1, 0),
(105, '104.168.37.52', '2017-04-18 06:11:24', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(106, '104.168.37.52', '2017-04-18 06:11:26', '127.0.0.1/html/detail.php?id=26', 1, 26),
(107, '104.168.37.52', '2017-04-18 06:51:11', '127.0.0.1/html/detail.php?id=26', 1, 26),
(108, '104.168.37.52', '2017-04-19 11:11:53', '127.0.0.1/html/detail.php?id=26', 1, 26),
(109, '104.168.37.52', '2017-04-19 11:21:55', '127.0.0.1/html/index.php', 1, 0),
(110, '104.168.37.52', '2017-04-19 11:22:00', '127.0.0.1/html/apple-iphones.php?id=10', 1, 10),
(111, '104.168.37.52', '2017-04-19 11:22:06', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(112, '104.168.37.52', '2017-04-19 11:22:08', '127.0.0.1/html/detail.php?id=26', 1, 26),
(113, '104.168.37.52', '2017-04-19 11:22:19', '127.0.0.1/html/basket.php?id=26', 1, 26),
(114, '104.168.37.52', '2017-04-19 11:22:22', '127.0.0.1/html/register.php', 1, 0),
(115, '104.168.37.52', '2017-04-19 11:23:29', '127.0.0.1/html/index.php', 1, 0),
(116, '104.168.37.52', '2017-04-19 11:23:33', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(117, '104.168.37.52', '2017-04-19 11:23:34', '127.0.0.1/html/detail.php?id=26', 1, 26),
(118, '104.168.37.52', '2017-04-19 11:23:36', '127.0.0.1/html/basket.php?id=26', 1, 26),
(119, '104.168.37.52', '2017-04-19 11:24:06', '127.0.0.1/html/index.php', 1, 0),
(120, '104.168.37.52', '2017-04-19 11:24:11', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(121, '104.168.37.52', '2017-04-19 11:24:12', '127.0.0.1/html/detail.php?id=26', 1, 26),
(122, '104.168.37.52', '2017-04-19 11:24:15', '127.0.0.1/html/basket.php?id=26', 1, 26),
(123, '104.168.37.52', '2017-04-19 11:24:19', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(124, '104.168.37.52', '2017-04-19 11:24:21', '127.0.0.1/html/detail.php?id=26', 1, 26),
(125, '104.168.37.52', '2017-04-19 11:24:23', '127.0.0.1/html/basket.php?id=26', 1, 26),
(126, '104.168.37.52', '2017-04-19 11:24:26', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(127, '104.168.37.52', '2017-04-19 11:24:28', '127.0.0.1/html/detail.php?id=26', 1, 26),
(128, '104.168.37.52', '2017-04-19 11:24:31', '127.0.0.1/html/basket.php?id=26', 1, 26),
(129, '104.168.37.52', '2017-04-19 11:24:33', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(130, '104.168.37.52', '2017-04-19 11:24:35', '127.0.0.1/html/detail.php?id=26', 1, 26),
(131, '104.168.37.52', '2017-04-19 11:24:36', '127.0.0.1/html/basket.php?id=26', 1, 26),
(132, '104.168.37.52', '2017-04-19 11:24:39', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(133, '104.168.37.52', '2017-04-19 11:24:41', '127.0.0.1/html/detail.php?id=26', 1, 26),
(134, '104.168.37.52', '2017-04-19 11:24:43', '127.0.0.1/html/basket.php?id=26', 1, 26),
(135, '104.168.37.52', '2017-04-19 11:24:46', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(136, '104.168.37.52', '2017-04-19 11:24:48', '127.0.0.1/html/detail.php?id=26', 1, 26),
(137, '104.168.37.52', '2017-04-19 11:24:50', '127.0.0.1/html/basket.php?id=26', 1, 26),
(138, '104.168.37.52', '2017-04-19 12:31:23', '127.0.0.1/html/basket.php', 1, 0),
(139, '104.168.37.52', '2017-04-19 12:31:32', '127.0.0.1/html/index.php', 1, 0),
(140, '104.168.37.52', '2017-04-19 12:31:36', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(141, '104.168.37.52', '2017-04-19 12:31:43', '127.0.0.1/html/index.php', 1, 0),
(142, '104.168.37.52', '2017-04-19 12:31:46', '127.0.0.1/html/index.php', 1, 0),
(143, '104.168.37.52', '2017-04-19 12:35:41', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(144, '104.168.37.52', '2017-04-19 12:44:03', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(145, '104.168.37.52', '2017-04-19 12:44:06', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(146, '104.168.37.52', '2017-04-19 12:44:24', '127.0.0.1/html/index.php', 1, 0),
(147, '104.168.37.52', '2017-04-19 12:44:38', '127.0.0.1/html/apple-iphones.php?id=15', 1, 15),
(148, '104.168.37.52', '2017-04-19 12:45:48', '127.0.0.1/html/apple-iphones.php?id=14', 1, 14),
(149, '104.168.37.52', '2017-04-19 12:56:46', '127.0.0.1/html/index.php', 1, 0),
(150, '104.168.37.52', '2017-04-19 02:57:01', '127.0.0.1/html/index.php', 1, 0),
(151, '104.168.37.52', '2017-04-19 03:12:10', '127.0.0.1/html/index.php', 1, 0),
(152, '104.168.37.52', '2017-04-19 05:14:50', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(153, '104.168.37.52', '2017-04-19 05:14:52', '127.0.0.1/html/detail.php?id=14', 1, 14),
(154, '104.168.37.52', '2017-04-19 05:14:54', '127.0.0.1/html/basket.php?id=14', 1, 14),
(155, '104.168.37.52', '2017-04-19 05:14:59', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(156, '104.168.37.52', '2017-04-19 05:15:01', '127.0.0.1/html/detail.php?id=14', 1, 14),
(157, '104.168.37.52', '2017-04-19 05:15:07', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(158, '104.168.37.52', '2017-04-19 05:15:09', '127.0.0.1/html/detail.php?id=14', 1, 14),
(159, '104.168.37.52', '2017-04-19 05:15:12', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(160, '104.168.37.52', '2017-04-19 05:15:14', '127.0.0.1/html/detail.php?id=14', 1, 14),
(161, '104.168.37.52', '2017-04-19 05:15:17', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(162, '104.168.37.52', '2017-04-19 05:18:51', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(163, '104.168.37.52', '2017-04-19 05:19:08', '127.0.0.1/html/apple-iphones.php?id=2', 1, 2),
(164, '104.168.37.52', '2017-04-19 05:19:15', '127.0.0.1/html/apple-iphones.php?id=15', 1, 15),
(165, '104.168.37.52', '2017-04-19 05:19:26', '127.0.0.1/html/apple-iphones.php?id=14', 1, 14),
(166, '104.168.37.52', '2017-04-19 05:19:36', '127.0.0.1/html/apple-iphones.php?id=2', 1, 2),
(167, '104.168.37.52', '2017-04-19 05:19:58', '127.0.0.1/html/index.php', 1, 0),
(168, '104.168.37.52', '2017-04-19 05:20:01', '127.0.0.1/html/index.php', 1, 0),
(169, '104.168.37.52', '2017-04-19 05:20:27', '127.0.0.1/html/index.php', 1, 0),
(170, '104.168.37.52', '2017-04-19 05:20:44', '127.0.0.1/html/index.php', 1, 0),
(171, '104.168.37.52', '2017-04-19 05:23:43', '127.0.0.1/html/index.php', 1, 0),
(172, '104.168.37.52', '2017-04-19 05:27:08', '127.0.0.1/html/index.php', 1, 0),
(173, '104.168.37.52', '2017-04-19 05:27:41', '127.0.0.1/html/index.php', 1, 0),
(174, '104.168.37.52', '2017-04-19 05:36:54', 'localhost/html/index.php', 1, 0),
(175, '104.168.37.52', '2017-04-19 05:37:13', 'localhost/html/index.php?id=1', 1, 1),
(176, '104.168.37.52', '2017-04-19 05:45:41', 'localhost/html/index.php', 1, 0),
(177, '104.168.37.52', '2017-04-19 05:47:09', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(178, '104.168.37.52', '2017-04-19 05:47:14', '127.0.0.1/html/detail.php?id=12', 1, 12),
(179, '104.168.37.52', '2017-04-19 05:47:19', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(180, '104.168.37.52', '2017-04-19 05:47:20', '127.0.0.1/html/detail.php?id=12', 1, 12),
(181, '104.168.37.52', '2017-04-19 05:47:23', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(182, '104.168.37.52', '2017-04-19 05:47:24', '127.0.0.1/html/detail.php?id=12', 1, 12),
(183, '104.168.37.52', '2017-04-19 05:47:28', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(184, '104.168.37.52', '2017-04-19 05:47:30', '127.0.0.1/html/detail.php?id=12', 1, 12),
(185, '104.168.37.52', '2017-04-19 05:47:35', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(186, '104.168.37.52', '2017-04-19 05:47:36', '127.0.0.1/html/detail.php?id=12', 1, 12),
(187, '104.168.37.52', '2017-04-19 05:47:39', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(188, '104.168.37.52', '2017-04-19 05:47:42', '127.0.0.1/html/detail.php?id=12', 1, 12),
(189, '104.168.37.52', '2017-04-19 05:47:45', '127.0.0.1/html/apple-iphones.php?id=1', 1, 1),
(190, '104.168.37.52', '2017-04-19 06:07:20', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(191, '104.168.37.52', '2017-04-19 07:00:49', '127.0.0.1/html/index.php', 1, 0),
(192, '104.168.37.52', '2017-04-19 10:26:32', '127.0.0.1/html/index.php', 1, 0),
(193, '104.168.37.52', '2017-04-19 10:39:39', '127.0.0.1/html/index.php', 1, 0),
(194, '104.168.37.52', '2017-04-19 10:39:45', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(195, '104.168.37.52', '2017-04-19 10:40:02', '127.0.0.1/html/apple-iphones.php?id=27', 1, 27),
(196, '104.168.37.52', '2017-04-19 10:40:05', '127.0.0.1/html/apple-iphones.php?id=26', 1, 26),
(197, '104.168.37.52', '2017-04-19 10:40:08', '127.0.0.1/html/apple-iphones.php?id=25', 1, 25),
(198, '104.168.37.52', '2017-04-19 10:40:10', '127.0.0.1/html/apple-iphones.php?id=24', 1, 24),
(199, '104.168.37.52', '2017-04-19 10:40:13', '127.0.0.1/html/apple-iphones.php?id=23', 1, 23),
(200, '104.168.37.52', '2017-04-19 10:40:17', '127.0.0.1/html/apple-iphones.php?id=22', 1, 22),
(201, '104.168.37.52', '2017-04-19 10:40:20', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(202, '104.168.37.52', '2017-04-19 11:11:30', '127.0.0.1/html/index.php', 1, 0),
(203, '104.168.37.52', '2017-04-19 11:11:35', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(204, '104.168.37.52', '2017-04-19 11:11:38', '127.0.0.1/html/apple-iphones.php?id=27', 1, 27),
(205, '104.168.37.52', '2017-04-19 11:11:45', '127.0.0.1/html/apple-iphones.php?id=26', 1, 26),
(206, '104.168.37.52', '2017-04-19 11:20:59', '127.0.0.1/html/apple-iphones.php?id=24', 1, 24),
(207, '104.168.37.52', '2017-04-19 11:29:55', '127.0.0.1/html/index.php', 1, 0),
(208, '104.168.37.52', '2017-04-19 11:30:02', '127.0.0.1/html/apple-iphones.php?id=23', 1, 23),
(209, '104.168.37.52', '2017-04-19 11:30:06', '127.0.0.1/html/detail.php?id=49', 1, 49),
(210, '104.168.37.52', '2017-04-19 11:30:10', '127.0.0.1/html/apple-iphones.php?id=24', 1, 24),
(211, '104.168.37.52', '2017-04-19 11:30:14', '127.0.0.1/html/detail.php?id=69', 1, 69),
(212, '104.168.37.52', '2017-04-19 11:30:21', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(213, '104.168.37.52', '2017-04-19 11:30:23', '127.0.0.1/html/detail.php?id=55', 1, 55),
(214, '104.168.37.52', '2017-04-19 11:30:27', '127.0.0.1/html/apple-iphones.php?id=27', 1, 27),
(215, '104.168.37.52', '2017-04-19 11:30:30', '127.0.0.1/html/detail.php?id=58', 1, 58),
(216, '104.168.37.52', '2017-04-19 11:30:34', '127.0.0.1/html/apple-iphones.php?id=25', 1, 25),
(217, '104.168.37.52', '2017-04-19 11:30:39', '127.0.0.1/html/apple-iphones.php?id=24', 1, 24),
(218, '104.168.37.52', '2017-04-19 11:30:41', '127.0.0.1/html/detail.php?id=68', 1, 68),
(219, '104.168.37.52', '2017-04-19 11:30:46', '127.0.0.1/html/apple-iphones.php?id=24', 1, 24),
(220, '104.168.37.52', '2017-04-19 11:30:48', '127.0.0.1/html/detail.php?id=69', 1, 69),
(221, '104.168.37.52', '2017-04-19 11:30:56', '127.0.0.1/html/apple-iphones.php?id=23', 1, 23),
(222, '104.168.37.52', '2017-04-19 11:30:59', '127.0.0.1/html/detail.php?id=49', 1, 49),
(223, '104.168.37.52', '2017-04-19 11:31:00', '127.0.0.1/html/apple-iphones.php?id=23', 1, 23),
(224, '104.168.37.52', '2017-04-19 11:31:03', '127.0.0.1/html/detail.php?id=70', 1, 70),
(225, '104.168.37.52', '2017-04-19 11:31:05', '127.0.0.1/html/apple-iphones.php?id=23', 1, 23),
(226, '104.168.37.52', '2017-04-19 11:31:22', '127.0.0.1/html/index.php', 1, 0),
(227, '104.168.37.52', '2017-04-19 11:31:25', '127.0.0.1/html/apple-iphones.php?id=26', 1, 26),
(228, '104.168.37.52', '2017-04-19 11:31:29', '127.0.0.1/html/apple-iphones.php?id=23', 1, 23),
(229, '104.168.37.52', '2017-04-19 11:42:33', '127.0.0.1/html/index.php', 1, 0),
(230, '104.168.37.52', '2017-04-19 11:43:31', '127.0.0.1/html/apple-iphones.php?id=22', 1, 22),
(231, '104.168.37.52', '2017-04-20 10:57:14', '127.0.0.1/html/apple-iphones.php?id=22', 1, 22),
(232, '104.168.37.52', '2017-04-20 10:59:16', '127.0.0.1/html/index.php', 1, 0),
(233, '104.168.37.52', '2017-04-20 10:59:42', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(234, '104.168.37.52', '2017-04-20 11:00:08', '127.0.0.1/html/apple-iphones.php?id=27', 1, 27),
(235, '104.168.37.52', '2017-04-20 11:00:13', '127.0.0.1/html/apple-iphones.php?id=26', 1, 26),
(236, '104.168.37.52', '2017-04-20 11:00:35', '127.0.0.1/html/apple-iphones.php?id=25', 1, 25),
(237, '104.168.37.52', '2017-04-20 11:00:39', '127.0.0.1/html/apple-iphones.php?id=24', 1, 24),
(238, '104.168.37.52', '2017-04-20 11:00:48', '127.0.0.1/html/apple-iphones.php?id=24', 1, 24),
(239, '104.168.37.52', '2017-04-20 11:00:51', '127.0.0.1/html/apple-iphones.php?id=23', 1, 23),
(240, '104.168.37.52', '2017-04-20 11:00:57', '127.0.0.1/html/apple-iphones.php?id=22', 1, 22),
(241, '104.168.37.52', '2017-04-20 11:01:02', '127.0.0.1/html/apple-iphones.php?id=21', 1, 21),
(242, '104.168.37.52', '2017-04-20 11:01:41', '127.0.0.1/html/apple-iphones.php?id=20', 1, 20),
(243, '104.168.37.52', '2017-04-20 11:01:49', '127.0.0.1/html/apple-iphones.php?id=21', 1, 21),
(244, '104.168.37.52', '2017-04-20 11:01:55', '127.0.0.1/html/apple-iphones.php?id=22', 1, 22),
(245, '104.168.37.52', '2017-04-20 11:02:35', '127.0.0.1/html/apple-iphones.php?id=22', 1, 22),
(246, '104.168.37.52', '2017-04-20 11:03:07', '127.0.0.1/html/apple-iphones.php?id=20', 1, 20),
(247, '104.168.37.52', '2017-04-20 11:03:10', '127.0.0.1/html/apple-iphones.php?id=21', 1, 21),
(248, '104.168.37.52', '2017-04-20 11:04:22', '127.0.0.1/html/apple-iphones.php?id=21', 1, 21),
(249, '104.168.37.52', '2017-04-20 11:10:29', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(250, '104.168.37.52', '2017-04-20 11:10:33', '127.0.0.1/html/index.php', 1, 0),
(251, '104.168.37.52', '2017-04-20 11:31:09', '127.0.0.1/html/index.php', 1, 0),
(252, '104.168.37.52', '2017-04-20 11:35:45', '127.0.0.1/html/index.php', 1, 0),
(253, '104.168.37.52', '2017-04-20 11:36:23', '127.0.0.1/html/index.php?event=shoes', 1, 0),
(254, '104.168.37.52', '2017-04-20 11:38:33', '127.0.0.1/html/index.php', 1, 0),
(255, '104.168.37.52', '2017-04-20 11:38:42', '127.0.0.1/html/index.php', 1, 0),
(256, '104.168.37.52', '2017-04-20 11:50:04', '127.0.0.1/html/index.php?event=shoes', 1, 0),
(257, '104.168.37.52', '2017-04-20 12:31:30', '127.0.0.1/html/index.php', 1, 0),
(258, '104.168.37.52', '2017-04-20 03:19:33', 'localhost/html/index.php', 1, 0),
(259, '104.168.37.52', '2017-04-20 05:32:52', 'localhost/html/index.php', 1, 0),
(260, '104.168.37.52', '2017-04-20 05:51:07', 'localhost/html/index.php', 1, 0),
(261, '104.168.37.52', '2017-04-20 05:51:11', 'localhost/html/index.php', 1, 0),
(262, '104.168.37.52', '2017-04-20 05:51:48', 'localhost/html/index.php', 1, 0),
(263, '104.168.37.52', '2017-04-20 06:38:10', 'localhost/html/index.php', 1, 0),
(264, '104.168.37.52', '2017-04-20 06:38:14', 'localhost/html/index.php', 1, 0),
(265, '104.168.37.52', '2017-04-20 06:38:46', 'localhost/html/index.php', 1, 0),
(266, '104.168.37.52', '2017-04-20 06:50:53', 'localhost/html/index.php', 1, 0),
(267, '104.168.37.52', '2017-04-20 06:51:22', 'localhost/html/index.php', 1, 0),
(268, '104.168.37.52', '2017-04-20 06:53:32', 'localhost/html/index.php', 1, 0),
(269, '104.168.37.52', '2017-04-20 06:55:44', 'localhost/html/index.php', 1, 0),
(270, '104.168.37.52', '2017-04-20 06:56:30', 'localhost/html/index.php', 1, 0),
(271, '104.168.37.52', '2017-04-20 06:56:57', 'localhost/html/index.php', 1, 0),
(272, '104.168.37.52', '2017-04-21 11:06:41', 'localhost/html/index.php', 1, 0),
(273, '104.168.37.52', '2017-04-21 11:10:20', 'localhost/html/index.php', 1, 0),
(274, '104.168.37.52', '2017-04-21 11:10:48', 'localhost/html/index.php', 1, 0),
(275, '104.168.37.52', '2017-04-21 12:01:32', 'localhost/html/index.php', 1, 0),
(276, '104.168.37.52', '2017-04-21 12:03:30', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(277, '104.168.37.52', '2017-04-21 12:04:26', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(278, '104.168.37.52', '2017-04-21 12:25:51', '127.0.0.1/html/index.php', 1, 0),
(279, '104.168.37.52', '2017-04-21 04:37:17', '127.0.0.1/html/index.php?id=1', 1, 1),
(280, '104.168.37.52', '2017-04-21 04:37:24', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(281, '104.168.37.52', '2017-04-21 04:37:26', '127.0.0.1/html/detail.php?id=26', 1, 26),
(282, '104.168.37.52', '2017-04-21 04:37:31', '127.0.0.1/html/basket.php?id=26', 1, 26),
(283, '104.168.37.52', '2017-04-21 05:54:15', '127.0.0.1/html/index.php', 1, 0),
(284, '104.168.37.52', '2017-04-21 06:21:20', 'localhost/html/index.php', 1, 0),
(285, '104.168.37.52', '2017-04-21 06:48:48', 'localhost/html/index.php', 1, 0),
(286, '104.168.37.52', '2017-04-21 06:50:59', 'localhost/html/index.php', 1, 0),
(287, '104.168.37.52', '2017-04-21 07:15:23', 'localhost/html/index.php', 1, 0),
(288, '104.168.37.52', '2017-04-21 07:19:27', 'localhost/html/index.php', 1, 0),
(289, '104.168.37.52', '2017-04-21 07:58:31', 'localhost/html/index.php', 1, 0),
(290, '104.168.37.52', '2017-04-21 10:59:53', 'localhost/html/index.php', 1, 0),
(291, '104.168.37.52', '2017-04-21 11:00:06', '127.0.0.1/html/index.php?event=pen', 1, 0),
(292, '104.168.37.52', '2017-04-21 11:00:19', '127.0.0.1/html/index.php?event=books', 1, 0),
(293, '104.168.37.52', '2017-04-21 11:00:25', '127.0.0.1/html/index.php?event=book', 1, 0),
(294, '104.168.37.52', '2017-04-21 11:00:51', '127.0.0.1/html/index.php?event=books', 1, 0),
(295, '104.168.37.52', '2017-04-21 11:01:22', '127.0.0.1/html/index.php', 1, 0),
(296, '104.168.37.52', '2017-04-21 11:02:49', 'localhost/html/index.php', 1, 0),
(297, '104.168.37.52', '2017-04-21 11:08:10', 'localhost/html/register.php', 1, 0),
(298, '104.168.37.52', '2017-04-21 11:10:22', 'localhost/html/contact.php', 1, 0),
(299, '104.168.37.52', '2017-04-21 11:13:56', 'localhost/html/contact.php', 1, 0),
(300, '104.168.37.52', '2017-04-21 11:16:07', 'localhost/html/index.php', 1, 0),
(301, '104.168.37.52', '2017-04-21 11:16:44', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(302, '104.168.37.52', '2017-04-21 11:18:13', '127.0.0.1/html/detail.php?id=55', 1, 55),
(303, '104.168.37.52', '2017-04-21 11:20:03', '127.0.0.1/html/index.php?id=1', 1, 1),
(304, '104.168.37.52', '2017-04-21 11:20:49', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(305, '104.168.37.52', '2017-04-21 11:20:51', '127.0.0.1/html/detail.php?id=55', 1, 55),
(306, '104.168.37.52', '2017-04-21 11:20:54', '127.0.0.1/html/basket.php?id=55', 1, 55),
(307, '104.168.37.52', '2017-04-21 11:21:23', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(308, '104.168.37.52', '2017-04-21 11:21:24', '127.0.0.1/html/detail.php?id=56', 1, 56),
(309, '104.168.37.52', '2017-04-21 11:21:27', '127.0.0.1/html/basket.php?id=56', 1, 56),
(310, '104.168.37.52', '2017-04-21 11:41:44', '127.0.0.1/html/index.php', 1, 0),
(311, '104.168.37.52', '2017-04-21 11:41:49', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(312, '104.168.37.52', '2017-04-21 11:41:51', '127.0.0.1/html/detail.php?id=56', 1, 56),
(313, '104.168.37.52', '2017-04-21 11:41:53', '127.0.0.1/html/detail.php?id=56', 1, 56),
(314, '104.168.37.52', '2017-04-21 11:44:01', '127.0.0.1/html/index.php', 1, 0),
(315, '104.168.37.52', '2017-04-21 11:44:47', '127.0.0.1/html/index.php', 1, 0),
(316, '104.168.37.52', '2017-04-21 11:45:09', '127.0.0.1/html/index.php', 1, 0),
(317, '104.168.37.52', '2017-04-21 11:45:12', '127.0.0.1/html/faq.php', 1, 0),
(318, '104.168.37.52', '2017-04-21 11:46:30', '127.0.0.1/html/basket.php', 1, 0),
(319, '104.168.37.52', '2017-04-21 11:47:07', '127.0.0.1/html/index.php', 1, 0),
(320, '104.168.37.52', '2017-04-22 11:19:55', 'localhost/html/index.php', 1, 0),
(321, '104.168.37.52', '2017-04-23 11:22:02', 'localhost/html/index.php', 1, 0),
(322, '104.168.37.52', '2017-04-23 11:39:37', 'localhost/html/index.php', 1, 0),
(323, '104.168.37.52', '2017-04-23 11:50:09', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(324, '104.168.37.52', '2017-04-23 11:50:26', '127.0.0.1/html/register.php', 1, 0),
(325, '104.168.37.52', '2017-04-23 11:51:04', '127.0.0.1/html/index.php', 1, 0),
(326, '104.168.37.52', '2017-04-23 11:51:16', '127.0.0.1/html/index.php', 1, 0),
(327, '104.168.37.52', '2017-04-23 11:51:23', '127.0.0.1/html/apple-iphones.php?id=48', 1, 48),
(328, '104.168.37.52', '2017-04-23 11:51:27', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(329, '104.168.37.52', '2017-04-23 11:51:40', '127.0.0.1/html/detail.php?id=56', 1, 56),
(330, '104.168.37.52', '2017-04-23 11:52:01', '127.0.0.1/html/basket.php?id=56', 1, 56),
(331, '104.168.37.52', '2017-04-23 11:52:10', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(332, '104.168.37.52', '2017-04-23 11:52:12', '127.0.0.1/html/detail.php?id=26', 1, 26),
(333, '104.168.37.52', '2017-04-23 11:52:19', '127.0.0.1/html/basket.php?id=26', 1, 26),
(334, '104.168.37.52', '2017-04-23 11:52:29', '127.0.0.1/html/register.php', 1, 0),
(335, '104.168.37.52', '2017-04-23 11:54:47', '127.0.0.1/html/index.php', 1, 0),
(336, '104.168.37.52', '2017-04-23 11:55:44', '127.0.0.1/html/index.php', 1, 0),
(337, '104.168.37.52', '2017-04-23 11:56:41', '127.0.0.1/html/index.php', 1, 0),
(338, '104.168.37.52', '2017-04-23 11:56:50', '127.0.0.1/html/register.php', 1, 0),
(339, '104.168.37.52', '2017-04-23 11:57:23', '127.0.0.1/html/index.php', 1, 0),
(340, '104.168.37.52', '2017-04-23 11:57:47', '127.0.0.1/html/index.php?id=1', 1, 1),
(341, '104.168.37.52', '2017-04-23 11:58:07', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(342, '104.168.37.52', '2017-04-23 12:00:56', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(343, '104.168.37.52', '2017-04-23 12:01:02', '127.0.0.1/html/detail.php?id=26', 1, 26),
(344, '104.168.37.52', '2017-04-23 12:01:07', '127.0.0.1/html/basket.php?id=26', 1, 26),
(345, '104.168.37.52', '2017-04-23 12:01:08', '127.0.0.1/html/basket.php?id=26', 1, 26),
(346, '104.168.37.52', '2017-04-23 12:01:12', '127.0.0.1/html/apple-iphones.php?id=10', 1, 10),
(347, '104.168.37.52', '2017-04-23 12:01:16', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(348, '104.168.37.52', '2017-04-23 12:01:19', '127.0.0.1/html/detail.php?id=26', 1, 26),
(349, '104.168.37.52', '2017-04-23 12:02:59', '127.0.0.1/html/index.php?event=car', 1, 0),
(350, '104.168.37.52', '2017-04-23 12:03:16', '127.0.0.1/html/index.php?event=pen', 1, 0),
(351, '104.168.37.52', '2017-04-23 12:06:06', '127.0.0.1/html/index.php', 1, 0),
(352, '104.168.37.52', '2017-04-23 12:35:11', 'localhost/html/index.php', 1, 0),
(353, '104.168.37.52', '2017-04-23 12:35:47', '127.0.0.1/html/apple-iphones.php?id=26', 1, 26),
(354, '104.168.37.52', '2017-04-23 12:36:04', '127.0.0.1/html/detail.php?id=61', 1, 61),
(355, '104.168.37.52', '2017-04-23 12:36:19', '127.0.0.1/html/basket.php?id=61', 1, 61),
(356, '104.168.37.52', '2017-04-23 12:36:29', '127.0.0.1/html/register.php', 1, 0),
(357, '104.168.37.52', '2017-04-23 12:36:38', '127.0.0.1/html/index.php', 1, 0),
(358, '104.168.37.52', '2017-04-23 12:45:01', '127.0.0.1/html/index.php', 1, 0),
(359, '104.168.37.52', '2017-04-23 12:48:22', '127.0.0.1/html/index.php?event=hyjybj', 1, 0),
(360, '104.168.37.52', '2017-04-23 12:48:34', '127.0.0.1/html/index.php', 1, 0),
(361, '104.168.37.52', '2017-04-23 01:12:13', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(362, '104.168.37.52', '2017-04-23 01:12:16', '127.0.0.1/html/detail.php?id=26', 1, 26),
(363, '104.168.37.52', '2017-04-23 01:12:19', '127.0.0.1/html/basket.php?id=26', 1, 26),
(364, '104.168.37.52', '2017-04-23 01:12:27', '127.0.0.1/html/index.php', 1, 0),
(365, '104.168.37.52', '2017-04-23 01:13:43', '127.0.0.1/html/index.php', 1, 0),
(366, '104.168.37.52', '2017-04-23 01:13:47', '127.0.0.1/html/apple-iphones.php?id=11', 1, 11),
(367, '104.168.37.52', '2017-04-23 01:13:49', '127.0.0.1/html/detail.php?id=26', 1, 26),
(368, '104.168.37.52', '2017-04-23 01:13:51', '127.0.0.1/html/basket.php?id=26', 1, 26),
(369, '104.168.37.52', '2017-04-23 01:23:56', '127.0.0.1/html/register.php', 1, 0),
(370, '104.168.37.52', '2017-04-23 01:50:10', '127.0.0.1/html/index.php', 1, 0),
(371, '104.168.37.52', '2017-04-23 02:35:41', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(372, '104.168.37.52', '2017-04-23 02:35:43', '127.0.0.1/html/detail.php?id=57', 1, 57),
(373, '104.168.37.52', '2017-04-23 02:35:45', '127.0.0.1/html/basket.php?id=57', 1, 57),
(374, '104.168.37.52', '2017-04-23 02:50:16', '127.0.0.1/html/index.php', 1, 0),
(375, '104.168.37.52', '2017-04-24 03:36:15', 'localhost/html/index.php', 1, 0),
(376, '104.168.37.52', '2017-04-24 03:36:41', '127.0.0.1/html/apple-iphones.php?id=28', 1, 28),
(377, '104.168.37.52', '2017-04-24 03:36:44', '127.0.0.1/html/detail.php?id=55', 1, 55),
(378, '104.168.37.52', '2017-04-24 03:36:46', '127.0.0.1/html/basket.php?id=55', 1, 55),
(379, '104.168.37.52', '2017-11-08 04:31:56', '127.0.0.1/html/index.php', 1, 0),
(380, '104.168.37.52', '2017-11-08 04:35:54', '127.0.0.1/html/index.php', 1, 0),
(381, '104.168.37.52', '2017-11-08 04:36:12', '127.0.0.1/html/index.php', 1, 0),
(382, '104.168.37.52', '2017-11-08 04:36:14', '127.0.0.1/html/index.php', 1, 0),
(383, '104.168.37.52', '2017-11-08 04:36:15', '127.0.0.1/html/index.php', 1, 0),
(384, '104.168.37.52', '2017-11-14 06:17:17', 'localhost/html/index.php', 1, 0),
(385, '104.168.37.52', '2017-11-26 09:53:51', 'localhost/html/', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `cartid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `uid`, `pid`, `cartid`) VALUES
(1, 1, 23, 'Kt0OKnw36d2xisj2y5b1dh5S3'),
(2, 43, 53, 'bhP8qTdNtdacfQ2HIV31gPq5V'),
(3, 42, 26, 'QOzKWNPQI29dNXhcTBCKFhNo9'),
(4, 1, 56, 'LZLajq56pmx3g9ZE63FzYvP9n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_deatails`
--
ALTER TABLE `admin_deatails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategory`
--
ALTER TABLE `childcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerdeatails`
--
ALTER TABLE `customerdeatails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khusi`
--
ALTER TABLE `khusi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nregisters`
--
ALTER TABLE `nregisters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderfeed`
--
ALTER TABLE `orderfeed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_move`
--
ALTER TABLE `user_move`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_deatails`
--
ALTER TABLE `admin_deatails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `childcategory`
--
ALTER TABLE `childcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customerdeatails`
--
ALTER TABLE `customerdeatails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `khusi`
--
ALTER TABLE `khusi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nregisters`
--
ALTER TABLE `nregisters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orderfeed`
--
ALTER TABLE `orderfeed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `search`
--
ALTER TABLE `search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_move`
--
ALTER TABLE `user_move`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
