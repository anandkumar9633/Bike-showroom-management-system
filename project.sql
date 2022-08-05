-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2021 at 02:54 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `adminname` varchar(255) NOT NULL,
  `customername` varchar(255) NOT NULL,
  `bikecompany` varchar(255) NOT NULL,
  `bikemodel` varchar(255) NOT NULL,
  `colour` varchar(255) NOT NULL,
  `price` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`adminname`, `customername`, `bikecompany`, `bikemodel`, `colour`, `price`) VALUES
('bike', 'anandkumar', 'ktm', 'stealthblack', 'black', 300000),
('bike', 'rithesh', 'royal enfield', '500cc', 'stealth black', 300000),
('bike', 'ali', 'ktm', 'rc390', 'orange', 250000),
('bike', 'rithesh', 'yamaha', '160cc', 'blue', 150000),
('bike', 'mir', 'royal enfield', '500cc', 'stealth black', 250000),
('bike', 'suresh', 'royal enfield', '500cc', 'black', 250000),
('bike', 'anand', 'royal enfiled', '500cc ', 'black', 250000),
('bike', 'ram', 'royal enfield', '500cc', 'black', 250000),
('bike', 'ram', 'royal enfield', '500cc', 'black', 250000),
('bike', 'king', 'ktm', '390', 'orange', 200000),
('bike', 'ram', 'ktm', 'duke', 'orange', 250000),
('bike', 'ramesh', 'ktm', 'duke 390', 'orange', 2500000),
('ali', 'kai', 'royal enfield', '350cc', 'black', 120000),
('bike', 'hema', 'royal enfield', '350cc', 'black', 200000),
('bike', 'ram', 'royal enfield', 'stealth black 500', 'black', 250000);

--
-- Triggers `booking`
--
DELIMITER $$
CREATE TRIGGER `booking_trig` BEFORE INSERT ON `booking` FOR EACH ROW insert into reg_time(exe_time)values(now())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `hero` (
  `name` varchar(200) NOT NULL,
  `color` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `specifications` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`name`, `color`, `price`, `specifications`) VALUES
('karizma', 'Blue', 210000, 'Engine Displacement ~ 300 cc\r\nMeilage~35kmpl\r\nMaximum Power ~ 34 BHP @ 8,000 rpm\r\nMaximum Torque ~ 30 NM @ 6500 rpm\r\nNumber of Cylinder ~ 1-Cylinder\r\nNumber of Gears ~ 6-Gears\r\nSeat Height ~ 810 mm\r\nGround Clearance ~ 145 mm\r\nKerb/Wet Weight ~ 165 kg\r\nFuel Tank Capacity ~ 15.3 litres\r\nEngine Description ~ 300cc Liquid Cooled, 4- stroke single cylinder DOHC, Fuel Injection, Oil Cooler Engine\r\nCooling ~ Liquid Cooled\r\nEngine Displacement ~ 300 cc\r\nMaximum Power ~ 34 BHP @ 8,000 rpm\r\nMaximum Torque ~ 30 NM @ 6,500 rpm\r\nNumber of Cylinder ~ 1-Cylinder\r\nBore ~ 65.5 mm\r\nStroke ~ 66.2 mm\r\nNumber of Gears ~ 6-Gears\r\nClutch ~ Multiplate Wet'),
('xtreme', 'white', 101000, 'Engine CC:163 cc\r\nMeilage:45Kmpl\r\nNo Of Cylinder:1\r\nMax Power:15 bhp @ 8500 rpm\r\nMax Torque:14 Nm @ 6500 rpm\r\nValves Per Cylinder:2\r\nFuel Delivery:Advanced Programmed Fuel Injection\r\nCooling :SystemAir cooled\r\nStarting Mechanism:Self/Kick\r\nEmission Standard:bs-6\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `ktm`
--

CREATE TABLE `ktm` (
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `specifications` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ktm`
--

INSERT INTO `ktm` (`name`, `color`, `price`, `specifications`) VALUES
('RC200', 'Black', 204000, 'Fuel Type:Petrol\r\nMax Power:24.6 bhp @ 10,000 rpm\r\nMax Torque :19.2 Nm @ 8,000 rpm\r\nEmission Standard:BS-6\r\nDisplacement:199.5 cc\r\nCylinders:1\r\nBore:72 mm\r\nStroke:49 mm\r\nValves Per Cylinder:4\r\nCompression Ratio:14.5:1\r\nCooling System:Liquid Cooled\r\nTransmission:6 Speed Manual\r\nClutch:Wet multi-disc clutch\r\nFuel Tank Capacity:9.5 litres\r\nReserve Fuel Capacity:1.5 litres\r\nRiding Range: 285 Km\r\nMilea'),
('Duke390', 'orange', 270000, 'Fuel Type:Petrol\r\nMax Power:42.9 bhp @ 9,000 rpm\r\nMax Torque:37 Nm @ 7,000 rpm\r\nCooling :SystemLiquid Cooled\r\nTransmission:6 Speed Manual\r\nTransmission :TypeChain Drive\r\nEmission Standard:BS-VI\r\nDisplacement:373.2 cc\r\nCylinders:1\r\nBore:89 mm\r\nStroke:60 mm\r\nValves Per Cylinder:4\r\nCompression Ratio:12.88:1\r\nIgnition:Digital Ignition\r\nSpark Plugs:1 Per Cylinder\r\nClutch:PASC antihopping clutch, mechan');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `name` varchar(11) NOT NULL,
  `contact` bigint(11) NOT NULL,
  `address` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `name` varchar(255) NOT NULL,
  `contact` bigint(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `contact`, `address`, `email`) VALUES
('susdj', 6565, 'vdfv', 'bdfbdfb'),
('suresh', 5446656565, 'banglore', 'anandkumar9036@gmail.com'),
('ram', 565265625, 'anekal', 'ram@gmail.com'),
('deepak', 889265692, 'anekal', 'deepak@gmail.com'),
('anand', 8892165784, 'banglore', 'anand@gmail.com'),
('king', 2568956563, 'anekal', 'king@gmail.com'),
('ali', 25, 'anekal', 'ali@gmail.com'),
('alamdar', 25, 'anekal', 'alamdar@gmail.com'),
('ali', 12345, 'bengalore', 'and@gmail.com'),
('ali', 12345, 'america', 'rcb@gmail.com'),
('vignesh', 456987, 'australia', 'annn@gmail.com'),
('hema', 12345, 'bangalore', 'hema@gmail.com'),
('anandkumar', 8892165784, 'anekal', 'anandkumar'),
('ram', 8892165784, 'banglore', 'ram@gmail.com');

--
-- Triggers `registration`
--
DELIMITER $$
CREATE TRIGGER `reg_trig` BEFORE INSERT ON `registration` FOR EACH ROW insert into reg_time(exe_time)values(now())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `reg_time`
--

CREATE TABLE `reg_time` (
  `exe_time` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg_time`
--

INSERT INTO `reg_time` (`exe_time`) VALUES
(2147483647),
(20210107224635),
(20210107225259),
(20210107230434),
(20210125141623),
(20210125142050),
(20210125142300),
(20210125143143),
(20210125143851),
(20210125144143),
(20210129093027),
(20210129122305),
(20210129122435);

-- --------------------------------------------------------

--
-- Table structure for table `royalenfield`
--

CREATE TABLE `royalenfield` (
  `name` varchar(200) NOT NULL,
  `color` varchar(255) NOT NULL,
  `price` bigint(11) NOT NULL,
  `specifications` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `royalenfield`
--

INSERT INTO `royalenfield` (`name`, `color`, `price`, `specifications`) VALUES
('10', '', 0, ''),
('20', '', 0, ''),
('GunMetalGrey', 'grey', 207000, 'meilage~35\r\ndisplacement:346cc\r\nenginetype:4 stroke single cylinder\r\nmax power:20ps@5250 rpm\r\nmax torque:28nm @4000rpm\r\nfuel capacity:13.5L\r\nbrakes:Dual channel ABS\r\n'),
('ClassicStealthBlack', 'Stealth Black', 245000, 'Mileage :32 kmpl\r\nEngine Type :Single Cylinder, 4 stroke, Air cooled\r\nMax Power :27.57 PS @ 5250 rpm\r\nFront Brake :Disc\r\nFuel Capacity :13.5L\r\nDisplacement :499cc\r\nNo. of Cylinders :1\r\nMax Torque :41.3 Nm @ 4000 rpm\r\nRear Brake : Disc\r\nABS :Dual Channel\r\nSpeedometer :Analogue\r\nOdometer :Analogue\r\nIg');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `bikes` varchar(255) NOT NULL,
  `units` int(100) NOT NULL,
  `sold` int(100) NOT NULL,
  `available` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`bikes`, `units`, `sold`, `available`) VALUES
('Gun Metal Grey', 70, 5, 65),
('Stealth Black 500', 80, 20, 60),
('RC 200', 30, 25, 5),
('Duke 390', 20, 10, 10),
('R15', 35, 0, 0),
('FZ', 52, 10, 5),
('Karizma 300', 45, 15, 30),
('Xtreme 160', 50, 20, 30),
('', 0, 0, 0),
('', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `yamaha`
--

CREATE TABLE `yamaha` (
  `name` varchar(200) NOT NULL,
  `color` varchar(200) NOT NULL,
  `price` bigint(20) NOT NULL,
  `specifications` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `yamaha`
--

INSERT INTO `yamaha` (`name`, `color`, `price`, `specifications`) VALUES
('R15', 'Blue', 148550, 'Fuel Type:Petrol\r\nMax Power:18.37 bhp @ 10,000 rpm\r\nMax Torque:14.1 Nm @ 8,500 rpm\r\nCooling System:Liquid Cooled\r\nTransmission:6 Speed Manual\r\nTransmission :TypeChain Drive\r\nEmission Standard:BS-VI\r\nDisplacement:155 cc\r\nCylinders:1\r\nBore:58 mm\r\nStroke:59 mm\r\nValves Per Cylinder:4\r\nCompression Ratio:11.6 : 1\r\nIgnition:TCI (Transistor controlled ignition)\r\nSpark Plugs:1 Per Cylinder\r\nClutch:Wet Multiple-disc\r\nFuel Delivery :SystemFuel Injection\r\nFuel Tank Capacity:11 litres\r\nRiding Range :440 Km\r\nMileage - Owner Reported 40 kmpl\r\n\r\n\r\n'),
('FZ', 'Dark Matte Blue', 104550, 'Fuel Type:Petrol\r\nMax Power:12.2 bhp @ 7,250 rpm\r\nMax Torque:13.6 Nm @ 5,500 rpm\r\nCooling :SystemAir Cooled\r\nTransmission:5 Speed Manual\r\nTransmission :TypeChain Drive\r\nEmission Standard:BS-VI\r\nDisplacement:149 cc,Cylinders1\r\nBore:57.3 mm,Stroke:57.9 mm\r\nValves Per Cylinder:2\r\nCompression Ratio:9.5:1\r\nIgnition:Transistor Controlled Ignition\r\nSpark Plugs:1 Per Cylinder');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
