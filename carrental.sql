-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2023 at 12:38 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'e6e061838856bf47e1de730719fb2609', '2021-06-17 07:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(3, 186478083, 'wendy@mail.com', 14, '2021-06-17', '2021-06-20', 'Can we negotiate a discount?', 1, '2021-06-16 14:33:24', '2021-06-16 14:36:02'),
(4, 721013792, 'thembinkosi@gmail.com', 16, '2021-06-21', '2021-06-30', 'yfsej', 1, '2021-06-16 17:22:10', '2021-06-17 07:04:07'),
(5, 434752550, 'thembinkosi@gmail.com', 17, '2021-06-17', '2021-06-18', 'Test', 2, '2021-06-17 06:55:10', '2021-06-17 07:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(12, 'Toyota', '2021-06-10 10:06:38', NULL),
(13, 'Suzuki', '2021-06-10 10:06:42', NULL),
(14, 'Mazda', '2021-06-10 10:06:45', NULL),
(15, 'Mercedes Benz', '2021-06-10 10:06:48', NULL),
(16, 'Nissan', '2021-06-10 10:06:59', NULL),
(17, 'Ford', '2021-06-10 10:07:13', NULL),
(18, 'BMW', '2021-06-16 13:47:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Area 47/4/787, Lilongwe', 'info@meritcarhire.co.mw', '0992357357');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Merit Car Hire respects your privacy and has created this privacy statement to demonstrate that commitment. The following policy discloses how we gather and use information through our website.<br><br>All information obtained through the Merit Car Hire website is confidential. Information is requested to make your visit to the Merit website more productive and to provide a better Merit Car Hire experience.</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">We offer a varied fleet of cars, ranging from the compact. All our vehicles have air conditioning, &nbsp;power steering, electric windows. All our vehicles are bought and maintained at official dealerships only. Automatic transmission cars are available in every booking class.&nbsp;</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\">As we are not affiliated with any specific automaker, we are able to provide a variety of vehicle makes and models for customers to rent.</span><div><span style=\"color: rgb(62, 62, 62); font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 11px;\">Our mission is to be recognised as the global leader in Car Rental for companies and the public and private sector by partnering with our clients to provide the best and most efficient Cab Rental solutions and to achieve service excellence.</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\"><br></span></div>'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">What will I need when collecting my car?<br>\r\nWhen do I pay for my rental car?<br>\r\nIs there a cancellation or no-show fee?<br>\r\nCan I extend my rental after collecting the car?<br>\r\nWhat do I need if I have an accident?<br>\r\nWhat do I do if my rental car breaks down? &nbsp;</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Franklin', 'Franklin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '6465465465', '', 'Lilongwe', 'Lilongwe', 'Malawi', '2021-06-06 14:00:49', '2021-06-06 14:00:49'),
(4, 'Tamanda', 'tamanda@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0123456789', NULL, NULL, NULL, NULL, '2021-06-16 14:12:58', NULL),
(5, 'Tamanda', 'tamanda@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0123456789', NULL, NULL, NULL, NULL, '2021-06-16 14:20:51', NULL),
(6, 'Wendy', 'wendy@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0883173880', NULL, NULL, NULL, NULL, '2021-06-16 14:30:03', NULL),
(7, 'GHOST', 'chawanangwatambala@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '0999999999', NULL, NULL, NULL, NULL, '2021-06-17 19:34:57', NULL),
(8, 'faith', 'faith@mail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1234567890', NULL, NULL, NULL, NULL, '2022-09-08 19:56:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(14, 'Demio', 14, 'Nice compact car for city drives with very good fuel economy', 15000, 'Petrol', 2009, 5, 'BK076069_d07190.jpg', 'BK076069_6cba8e.jpg', 'BK076069_dc632e.jpg', 'BK076069_8e64b2.jpg', 'OIP.jpg', 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, NULL, '2021-06-10 10:57:27', NULL),
(16, 'Quantum', 12, 'A  minibus van with a capacity of up to 14 people seated comfortably. The turbo charged 1kd D4D engine makes it a titan to be reckoned with on the road.  Very good for long distance trips.', 45000, 'Diesel', 2016, 14, 'BK086865_fa2156.jpg', 'BK086865_a3a433.jpg', 'BK086865_ffa684.jpg', 'BK086865_21e22c.jpg', 'BK086865_b4434b.jpg', 1, 1, 1, NULL, 1, 1, 1, 1, NULL, 1, NULL, NULL, '2021-06-10 12:29:33', '2021-06-10 12:31:16'),
(17, 'Swift', 13, 'Great small car for people who enjoy driving. The Suzuki Swift is a car that will always keep the person behind it\'s while ever-smiling and overjoyed just by what this little car can do. Great for city drives coupled with a good fuel economy, it is definitely a good hire.  ', 12000, 'Petrol', 2011, 5, 'BK076263_2bba7a.jpeg', 'BK076263_eac26c.jpeg', 'BK076263_6432c2.jpeg', 'BK076263_7d4d3b.jpeg', 'BK076263_53ce63.jpeg', 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-06-10 13:27:10', NULL),
(18, 'Vitara', 13, 'A crossover SUV great for city and long distance drives.', 35000, 'Petrol', 2016, 5, 'BH915065_769ff4.jpg', 'BH915065_0efe50.jpg', 'BH915065_3836f5.jpg', 'BH915065_081842.jpg', 'BH915065_e05f84.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-06-10 13:34:50', NULL),
(19, 'C Class', 15, 'Economical but elegant.', 100000, 'Petrol', 2017, 5, 'BK081856_9c0881.jpg', 'BH885563_c7def1.jpg', 'BK081856_60272a.jpg', 'BK081856_6cdd6f.jpg', 'BH885563_cb4750.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-06-10 17:24:14', NULL),
(20, 'Dualis', 16, 'Compact SUV great for city drives and long distance open roads', 25000, 'Petrol', 2013, 5, 'BK064638_b0171a.jpg', 'BK064638_878655.jpg', 'BK064638_02b59f.jpg', 'BK064638_987d90.jpg', 'BK064638_f2af8e.jpg', 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, '2021-06-10 17:32:21', NULL),
(21, 'Landcruiser Prado', 12, 'Luxurious off-road vehicle.  ', 120000, 'Diesel', 2018, 8, 'BK087577_e23a1c.jpg', 'BK087577_12136c.jpg', 'BK087577_4d4c1b.jpg', 'BK087577_869f46.jpg', 'BK087577_997657.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-06-10 18:10:31', NULL),
(22, 'Hilux', 12, 'The pick-up that divided and conquered Africa!', 80000, 'Diesel', 2018, 5, 'BH790242_2bf6cc.jpg', 'BH790242_bb2416.jpg', 'BH790242_2251c8.jpg', 'BH790242_d05e84.jpg', 'BH790242_70f8ae.jpg', 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2021-06-10 18:22:24', NULL),
(23, 'Fortuner', 12, 'You get the best of both worlds with the Fortuner.', 85000, 'Diesel', 2018, 7, 'BH819230_5f005f.jpg', 'BH819230_451b67.jpg', 'BH819230_a85007.jpg', 'BH819230_558b49.jpg', 'BH819230_5c970f.jpg', 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2021-06-10 18:33:44', NULL),
(24, 'Coaster', 12, 'A 36 seater that will take you places and beyond', 90000, 'Diesel', 2014, 36, 'BH940137_6d3d54.jpg', 'BH940137_2f16e8.jpg', 'BH940137_2348a3.jpg', 'BH940137_35cfd4.jpg', 'BH940137_d4d132.jpg', 1, NULL, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-16 13:43:04', NULL),
(25, 'Tiida Latio', 16, 'Great fuel economy.', 18000, 'Petrol', 2009, 5, 'BH510297_20b85e.jpg', 'BH510297_f878b0.jpg', 'BH510297_58cf90.jpg', 'BH510297_d6f5e8.jpg', 'BH510297_8a4710.jpg', 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, NULL, '2021-06-16 13:46:43', NULL),
(26, '320i', 18, 'A piece of German engineering that handles like a dream.', 95000, 'Petrol', 2017, 5, 'BK010207_07f304.jpg', 'BK010207_808f46.jpg', 'BK010207_7ac6bd.jpg', 'BK010207_706696.jpg', 'BK010207_c6630e.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2021-06-16 13:49:59', '2021-06-16 13:51:02'),
(27, 'X-Trail', 16, 'An answer to a lot of city drive problems.', 45000, 'Petrol', 2018, 5, 'BH774963_3e7766.jpg', 'BH774963_978a04.jpg', 'BH774963_e21a5e.jpg', 'BH774963_8b0e63.jpg', 'BH774963_323559.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-06-16 13:55:41', '2021-06-16 13:57:02'),
(28, 'Land Cruiser', 12, 'Reliable!', 80000, 'Diesel', 2018, 8, 'BH797309_2ac0ce.jpg', 'BH797309_bcd649.jpg', 'BH797309_6e4149.jpg', 'BH797309_d04b03.jpg', 'BH797309_fa8f5c.jpg', 1, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, '2021-06-16 14:01:09', '2021-06-16 14:03:02'),
(29, 'Everest XLT', 17, '6 Speed automatic that is nothing but fun on the road.', 70000, 'Diesel', 2018, 8, 'BK061303_9b4f28.jpg', 'BK061303_5abc88.jpg', 'BK061303_3f9e2f.jpg', 'BK061303_9f83e1.jpg', 'BK061303_5c414d.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-06-17 08:08:55', NULL),
(30, 'Ranger XLT', 17, '6 Speed Automatic that is fun on and off road', 70000, 'Diesel', 2018, 5, 'BK087092_f9027e.jpg', 'BK087092_79c79f.jpg', 'BK087092_230662.jpg', 'BK087092_606750.jpg', 'BK087092_b91c2a.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-06-17 08:13:06', '2021-06-17 19:47:39'),
(31, 'Corolla', 12, 'Toyota\'s all time best seller.', 25000, 'Petrol', 2011, 5, 'BK013608_a6e44d.jpeg', 'BK013608_469cd1.jpeg', 'BK013608_936496.jpeg', 'BK013608_bdbaed.jpeg', 'BK013608_d98db4.jpeg', 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, NULL, '2021-06-17 08:16:52', NULL),
(32, 'Corolla Axio', 12, 'Pretty good car with a good fuel economy.', 20000, 'Petrol', 2016, 5, 'BK043545_0bd01e.jpeg', 'BK043545_f34c21.jpeg', 'BK043545_8f794d.jpeg', 'BK043545_b14492.jpeg', 'BK043545_02fb47.jpeg', 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2021-06-17 08:20:13', '2021-06-17 19:41:49'),
(33, 'E Class', 15, 'Elegance at its best!', 130000, 'Petrol', 2018, 5, 'BH926360_6a3b44.jpg', 'BH926360_3cb970.jpg', 'BH926360_0cca8d.jpg', 'BH926360_285183.jpg', 'BH926360_d6a8f4.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-06-17 08:23:03', '2021-06-17 19:45:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
