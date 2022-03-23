-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 23, 2022 at 02:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rdbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `agent_id` bigint(10) NOT NULL,
  `agent_name` varchar(50) NOT NULL,
  `agent_area` varchar(50) NOT NULL,
  `agent_commision` bigint(10) NOT NULL,
  `agent_mob` bigint(10) NOT NULL,
  `agent_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`agent_id`, `agent_name`, `agent_area`, `agent_commision`, `agent_mob`, `agent_address`) VALUES
(101, 'pk', 'station road', 1000, 789456, 'uurhiehiug'),
(102, 'mukkesh', 'bus stand', 2000, 7894561234, 'askfhwhfwhfh'),
(103, 'jk', 'post office', 1500, 123456789, '****************'),
(104, 'sita', 'post office', 1200, 7894566548, '************************'),
(105, 'gita', 'ramjang', 5000, 456889998, 'kfhshfk'),
(106, 'shayam', 'mansoravar', 8900, 2356898, 'adhsdkhfckhsk'),
(107, 'ram', 'gate park', 4580, 985985985, 'achsdchsdhcis'),
(108, 'ashok', 'rambagh', 4500, 45645678, 'acncsdhcgysd'),
(109, 'anil', 'sodala', 9369, 45689748, 'dcnsdkjchskd'),
(110, 'amit', 'mumbia', 1500, 4564564563, 'acdkjhckjds');

-- --------------------------------------------------------

--
-- Table structure for table `bottle`
--

CREATE TABLE `bottle` (
  `bottle_id` bigint(10) NOT NULL,
  `bottle_name` varchar(50) NOT NULL,
  `bottle_brand` varchar(50) NOT NULL,
  `bottle_price` bigint(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `expire` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bottle`
--

INSERT INTO `bottle` (`bottle_id`, `bottle_name`, `bottle_brand`, `bottle_price`, `type`, `expire`) VALUES
(101, 'a125', 'milton', 195, 'stell', 5),
(102, 'mbbm9', 'cello', 500, 'stell', 6),
(103, 'tyt9', 'nike', 800, 'stell', 7),
(104, 'sd25', 'piegon', 800, 'stell', 10),
(105, 'as6', 'nirlon', 456, 'plastic', 6),
(106, 'qw99', 'puma', 565, 'stell', 8),
(107, 'aa66', 'bosoril', 11100, 'silver', 5),
(108, 'pp33', 'reebok', 249, 'iron', 7),
(109, '55658', 'nirlon', 68, 'stell', 9),
(110, 'ak33', 'milton', 99, 'plastic', 15);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` bigint(10) NOT NULL,
  `brand_name` varchar(50) NOT NULL,
  `brand_cetegory` varchar(50) NOT NULL,
  `brand_code` bigint(10) NOT NULL,
  `brand_city` varchar(50) NOT NULL,
  `brand_zipcode` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `brand_cetegory`, `brand_code`, `brand_city`, `brand_zipcode`) VALUES
(101, 'khfkjk', 'jekgjg', 354654, 'jfhhfh', 466),
(102, 'fhjhf', 'fjwjfjh', 5464, 'kjfkjf', 6565),
(103, 'wekfjwelk', 'wefhwekf', 646, 'wefjjwe', 456),
(104, 'weflkkf', 'welfjwl', 4666, 'wefwehfkj', 656),
(105, 'flkjlkf', 'weflkjwlkf', 6496, 'ferfl', 654565),
(106, 'wefjef', 'gfmerlkgjlr', 65656, 'wefjwelf', 45641),
(107, 'fmerkjfk', 'fhkjjf', 95652, 'fsljfjf', 6416),
(108, 'wflr', 'kkfle', 366, 'flerkj', 6665),
(109, 'fgerlg', 'fkjerjg', 666, 'fkjffjer', 56),
(110, 'feriufh', 'klfjl', 55665, 'lfjler', 56564);

-- --------------------------------------------------------

--
-- Table structure for table `compeny`
--

CREATE TABLE `compeny` (
  `compeny_id` bigint(10) NOT NULL,
  `compeny_name` varchar(50) NOT NULL,
  `compeny_mail` varchar(50) NOT NULL,
  `compeny_phone` bigint(10) NOT NULL,
  `compeny_pincode` bigint(10) NOT NULL,
  `compeny_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `compeny`
--

INSERT INTO `compeny` (`compeny_id`, `compeny_name`, `compeny_mail`, `compeny_phone`, `compeny_pincode`, `compeny_type`) VALUES
(10001, 'tata', 'tata@gmail.com', 223355, 32322, 'stell'),
(10002, 'relience', 'relience@gmail.com', 563568, 55546, 'sim'),
(10003, 'ambuja', 'ambuja@gmail.com', 4564556, 78569, 'meterial'),
(10004, 'apple', 'apple@gmail.com', 568974, 2323232, 'mobile'),
(10005, 'philips', 'philips@gmail.com', 789456, 325654, 'electromic'),
(10006, 'milton', 'milton@gmail.com', 789456, 325698, 'plastic'),
(10007, 'dell', 'dell@gmail.com', 456325, 78946, 'laptop'),
(10008, 'intel', 'intel@gmail.com', 465468, 68946, 'board'),
(10009, 'polar', 'poalr@gmail.com', 78963255, 451658, 'fan'),
(10010, 'campus', 'campus@gmail.com', 4545645, 4125145, 'shoes');

-- --------------------------------------------------------

--
-- Table structure for table `coustmer`
--

CREATE TABLE `coustmer` (
  `couster_id` bigint(10) NOT NULL,
  `coustmer_name` varchar(50) NOT NULL,
  `coustmer_email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone no` bigint(10) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coustmer`
--

INSERT INTO `coustmer` (`couster_id`, `coustmer_name`, `coustmer_email`, `address`, `phone no`, `city`) VALUES
(1001, 'ff', 'xyz@gmail.com', 'kfnjfjer', 64654564, 'nkjfkj'),
(1002, 'lfkfjkwhf', 'xyz@gmail.com', 'jfkjkjf', 5955, 'fjkjfkjr'),
(1003, 'kjhk', 'xyz@gmail.com', 'dfbksdfk', 56565664, 'ddfjsdf'),
(1004, 'bfjfj', 'xyz@gmail.com', 'sdfbjh', 321545, 'dkcjhsdkjfs'),
(1005, 'cjhsdjhsd', 'xyz@gmail.com', 'fnksdhkfjs', 5486, 'svmnskjv'),
(1006, 'sddnckjsnkjv', 'xyz@gmail.com', 'sdcnksjdv', 6846465, 'sd,nsv'),
(1007, 'jhdgajd', 'xyz@gmail.com', 'vdsnvkjs', 25456, 'sdv,snv'),
(1008, 'dcnsdkjv', 'xyz@gmail.com', 'csdhcjsd', 4556, 'dcsdkcjsd'),
(1009, 'csdnckjsd', 'xyz@gmail.com', 'sdlcksdjc', 126646, 'dvksndkvsd'),
(1010, 'sdvnsdkjvnkjs', 'xyz@gmail.com', 'dscsdnkj', 467684, 'sddc sdsdk');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` bigint(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `add` varchar(50) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `salary` bigint(10) NOT NULL,
  `age` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`id`, `name`, `add`, `mobile`, `salary`, `age`) VALUES
(101, 'bjaj', 'hghaghf', 35456763, 2000, 32),
(102, 'kjhgfds', 'jhgfzxcvbnm', 32145661, 2300, 23),
(103, 'nbnftrt', 'cghtrytjuyu', 638521466, 5200, 19),
(104, 'zxcvbn', 'rtyuioojhgfxcvb', 621326212, 1200, 30),
(105, 'nmmnbv', 'wertyuilkjhgfd', 865121521, 2000, 20),
(106, 'vbnm', 'sdfghjklvh', 22136652, 1000, 45),
(107, 'cvbnm', 'ertyuiopcvbnm', 1447651546, 2500, 23),
(108, 'zxcvbnm', 'wlkjhgfxcvbnm', 2164664518, 2500, 20),
(109, 'zxcvbnm', 'sdfghlkbvcxcvbn', 7786521484, 2100, 21),
(110, 'zxcvbnm', 'sdfghjklknbvcx', 7651215485, 3300, 30);

-- --------------------------------------------------------

--
-- Table structure for table `goverment`
--

CREATE TABLE `goverment` (
  `office_id` bigint(10) NOT NULL,
  `office_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pincode` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goverment`
--

INSERT INTO `goverment` (`office_id`, `office_name`, `address`, `email`, `state`, `pincode`) VALUES
(1001, 'dfkheh', 'sdbsd', 'sdkhsdk', 'ddshkhd', 6646),
(1002, 'cksdjksddcsn', 'sndjcsdjc', 'cksbck', 'sddcnksd', 1646),
(1003, 'sanbchshbc', 'sdcs', 'sdcsmn', 'sdcskc', 13465),
(1004, 'asdbdjsh', 'cnsdbc', 'dcdsmnc', 'csdcbsd', 65468),
(1005, 'sddcsdcn', 'sdcnsd', 'sdcsdn', 'nsdkj', 464),
(1006, 'cnsdc', 'sdc,msdn', 'sddnckjsd', 'scnsd', 66546),
(1007, 'csnc', 'asacsd', 'scsd', 'scnksdj', 4656),
(1008, 'cnsdkcj', 'scsdnk', 'sdcds', 'csdnnc', 46664),
(1009, 'sckjsd', 'scnnsdj', 'sdcjksdn', 'sdnsdkj', 5465),
(1010, 'scnskj', 'sdcnds', 'sdcnsd', 'csdn', 646);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`name`, `address`, `phone`, `mail`, `type`, `city`) VALUES
('jhkjfksd', 'djkkdjs', 565654, 'wjff', 'wfjwkjfkj', 'fwekjfw'),
('fwf', 'wefnwkjf', 6464, 'wefjwf', 'weefwfj', 'wefwkjf'),
('fhwe', 'flwejlfw', 5565, 'efkjwefj', 'ewfwekfj', 'efmlf'),
('jefkjkfj', 'qwqwio', 54646, 'qwoid', 'qws', 'fvvdfkv'),
('hgyj', 'jhjhk', 651, 'rtjhk', 'zss', 'lkl'),
('cdsbjh', 'hdj', 154646, 'sd sd,', 'sd sd,mm', 'sdcs,dmncm'),
('sfsdn', 'sdsdn', 468684, 'sdsd,', 'sddsnj', 'dssdk'),
('sdsdn', 'sdsdkj', 6564, 'sdnsdjk', 'dkjsdk', 'sdsdnkj'),
('sdnsdkj', 'dssdkjkj', 115465, 'sdfjnskj', 'sjkj', 'sdnksdj'),
('lsddfkjsjf', 'sdcsdjk', 4646, 'dvnjksdnkjv', 'sdfnfdkjs', 'sdsn');

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `id` bigint(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `size` bigint(10) DEFAULT NULL,
  `memory` bigint(10) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`id`, `name`, `type`, `size`, `memory`, `brand`) VALUES
(1001, 'samsungf1', 'window', 13, 1, 'samsung'),
(1002, 'samsung3232', 'window', 13, 1, 'samsung'),
(1003, 'samsung3232', 'ubuntu', 10, 1, 'asus'),
(1004, 'asus512', 'window', 10, 1, 'asus'),
(1005, 'hp22', 'linux', 12, 2, 'hp'),
(1006, 'mac3', 'ios', 12, 2, 'apple'),
(1007, 'mac9', 'ios', 12, 2, 'apple'),
(1008, 'lenovo9', 'window', 12, 2, 'lenovo'),
(1009, 'lenovo11', 'window', 12, 2, 'lenovo'),
(1010, 'dell99', 'window', 13, 2, 'dell');

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE `mobile` (
  `id` bigint(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `size` bigint(10) DEFAULT NULL,
  `memory` bigint(10) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`id`, `name`, `type`, `size`, `memory`, `brand`) VALUES
(1001, 'samsungf1', 'andorid', 6, 64, 'samsung'),
(1002, 'iphone13', 'ios', 6, 128, 'apple'),
(1003, 'iphone12', 'ios', 6, 256, 'apple'),
(1004, 'oppof11', 'andorid', 6, 64, 'oppo'),
(1005, 'vivos11', 'andorid', 6, 64, 'vivo'),
(1006, 'vivoedge', 'andorid', 6, 128, 'vivo'),
(1007, 'minote5', 'andorid', 6, 512, 'mi'),
(1007, 'minote9', 'andorid', 6, 512, 'mi'),
(1008, 'oneplusnord2', 'andorid', 6, 512, 'oneplus'),
(1008, 'oneplusnord', 'andorid', 6, 512, 'oneplus');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` bigint(10) NOT NULL,
  `payment_name` varchar(50) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone no` bigint(10) NOT NULL,
  `price` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_name`, `payment_type`, `email`, `phone no`, `price`) VALUES
(1001, 'gkjrkg', 'fnsdkjfk', ' jfkj', 55, 5465465),
(1002, 'kfhwhf', 'hjhe', 'jehf', 96566, 5554),
(1003, 'ddjwejh', 'dkdbhd', 'fnkfj', 656, 656),
(1004, 'fbjhfjh', 'efnwefj', 'eefjnewjkf', 155, 213465),
(1005, 'eefkwhhfkh', 'efjjwekjf', 'efjjwekjf', 165464, 55),
(1006, 'efhehfk', 'flwefkje', 'efjjfjk', 5555, 656),
(1007, 'ffhhfhfefjh', 'fjfkf', 'fekjehfk', 565, 54578),
(1008, 'fmfnkj', 'fjfffsf', 'efewwfoie', 656, 67787),
(1009, 'fsjbfjs', 'jksdnkjsdk', 'sdfmskjf', 454, 6597),
(1010, 'dfjsdnkj', 'dfnskf', 'fnskjf', 545, 125);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` bigint(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `item_cost` bigint(10) NOT NULL,
  `cetegory_id` bigint(10) NOT NULL,
  `product_price` bigint(10) NOT NULL,
  `list` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `item_cost`, `cetegory_id`, `product_price`, `list`) VALUES
(1001, 'a', 125652, 35656, 456, 3565),
(1002, 'b', 144464, 1655464, 4646, 3216546),
(1003, 'd', 55165, 535345, 522, 2324),
(1004, 'e', 34534, 675, 4234, 56568),
(1005, 'f', 97978, 2324, 4536, 678),
(1006, 'g', 656778, 22342, 895654, 23454),
(1007, 'h', 5346, 53656, 3455, 5665),
(1008, 'i', 534534, 35345, 534535, 3242),
(1009, 'fg', 23425, 34536, 24234, 425345),
(1010, 'jk', 5543, 3242, 8678, 967);

-- --------------------------------------------------------

--
-- Table structure for table `shoes`
--

CREATE TABLE `shoes` (
  `shoes_id` bigint(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `size` bigint(10) NOT NULL,
  `delevery time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shoes`
--

INSERT INTO `shoes` (`shoes_id`, `name`, `brand`, `type`, `size`, `delevery time`) VALUES
(1001, 'campus11', 'campus', 'sports', 9, '2022-03-09'),
(1002, 'nike54', 'nike', 'sports', 6, '2022-03-26'),
(1003, 'puma55', 'puma', 'boots', 7, '2022-03-01'),
(1004, 'redcheaf', 'redcheaf', 'loafer', 8, '2022-03-02'),
(1005, 'adidas99', 'adidas', 'sneakers', 9, '2022-03-13'),
(1006, 'woodland', 'woodland', 'balletflat', 5, '2022-03-26'),
(1007, 'bata', 'bata', 'clogs', 9, '2022-03-30'),
(1008, 'reebok', 'reebok', 'ugg boots', 7, '2022-03-27'),
(1009, 'lotto', 'lotto', 'pump', 9, '2022-03-18'),
(1010, 'fila', 'fila', 'oxford', 8, '2022-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` bigint(10) NOT NULL,
  `staff_name` varchar(50) NOT NULL,
  `staff_email` varchar(50) NOT NULL,
  `staff_mob` bigint(10) NOT NULL,
  `manager_id` bigint(10) NOT NULL,
  `store_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `staff_email`, `staff_mob`, `manager_id`, `store_id`) VALUES
(1001, 'a', 'xyz@gmail.com', 1243464, 100255, 2326565),
(1002, 'b', 'xyz@gmail.com', 45445, 25452, 2562),
(1003, 'c', 'xyz@gmail.com', 56543, 23547646, 26443),
(1004, 'd', 'xyz@gmail.com', 2144686, 544646, 354646),
(1005, 'e', 'xyz@gmail.com', 64646, 216, 35467464),
(1006, 'f', 'xyz@gmail.com', 647646, 546496, 564),
(1006, 'wd', 'xyz@gmail.com', 4846, 545, 4646),
(1007, 'b', 'xyz@gmail.com', 265656, 2326, 32656),
(1008, 'c', 'xyz@gmail.com', 54845, 1545, 1545),
(1009, 'ff', 'xyz@gmail.com', 3454, 51145, 2155);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `std_id` bigint(10) NOT NULL,
  `std_name` varchar(50) NOT NULL,
  `std_address` varchar(50) NOT NULL,
  `std_mob.` bigint(10) NOT NULL,
  `std_class` varchar(20) NOT NULL,
  `std_age` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`std_id`, `std_name`, `std_address`, `std_mob.`, `std_class`, `std_age`) VALUES
(103, 'c', '[fgh]', 7777777, '3', 13),
(104, 'd', 'ddd', 666666, '4', 14),
(102, 'b', 'bbb', 88888888, '2', 10),
(105, 'a', 'aaa', 5686, '2', 12),
(106, 'nefhkw', 'efnkwjfkjef', 546846, '5', 12),
(107, 'luiiuikuy', 'efefwf', 9464646, '8', 12),
(108, 'efefewf', 'efewfwef', 56444, '5', 12),
(109, 'feefef', 'efwwrfwf', 456464684, '3', 10),
(110, 'dwd', 'ewff', 16545461, '3', 13),
(101, 'ajhytr', 'jhgtfrdews', 2358, '5', 10);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` bigint(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `salary` bigint(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sub_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `uni_id` bigint(10) NOT NULL,
  `uni_name` varchar(50) NOT NULL,
  `uni_add` varchar(50) NOT NULL,
  `uni_phone` bigint(10) NOT NULL,
  `uni_city` varchar(50) NOT NULL,
  `uni_mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`uni_id`, `uni_name`, `uni_add`, `uni_phone`, `uni_city`, `uni_mail`) VALUES
(1001, 'kjhfkwsdkf', 'shchsd', 5465, 'dcbsdhjc', 'dcsdsd'),
(1002, 'kjshdkcsdk', 'dsckskc', 446884, 'csdcnsck', 'sdcnsdkcj'),
(1003, 'dcsdkc', 'csdkcsdkccsddcsdn', 65546, 'sdcjnsdkj', 'dcnsdkjc'),
(1004, 'csdcb', 'sdcnksdj', 464, 'sddcnsm', 'sdcns'),
(1005, 'sdcsk', 'sddcsdnc', 345, 'cnsdcm', 'sdc,s'),
(1006, 'dsckjsdjk', 'sc,,sc', 656, 'sddcksk', 'scs'),
(1007, 'sdcmnsdm', 'sdcsd', 3656, 'dcnsmc', 'cnskjck'),
(1008, 'sdcsdb', 'sdcsd', 1656, 'scnsdk', 'sddcjs'),
(1009, 'scnsddc', 'sddc,sd', 12656, 'sdcsndnc', 'cnc'),
(1010, 'csdn', 'dc,sd,c', 35465, 'dfwjf', 'dnsdj');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
