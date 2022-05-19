-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2021 at 06:29 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentals`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `IDNo` int(11) NOT NULL,
  `Phone_Number` varchar(12) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(20) DEFAULT NULL,
  `First_Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`IDNo`, `Phone_Number`, `Name`, `Last_Name`, `First_Name`) VALUES
(100, '914-379-9520', 'Karla Drake', 'Drake', 'Karla'),
(101, '603-428-4103', 'Tyrone Brown', 'Brown', 'Tyrone'),
(102, '304-781-3354', 'Lynette Reynolds', 'Reynolds', 'Lynette'),
(103, '775-371-4917', 'Lucas Hale', 'Hale', 'Lucas'),
(104, '701-647-8916', 'Joanna Wolfe', 'Wolfe', 'Joanna'),
(105, '617-719-8482', 'Margaret Thornton', 'Thornton', 'Margaret'),
(106, '870-729-2055', 'Traci Morgan', 'Morgan', 'Traci'),
(107, '785-259-6796', 'Patti Luna', 'Luna', 'Patti'),
(108, '215-641-2267', 'Allison Jefferson', 'Jefferson', 'Allison'),
(109, '240-409-3717', 'Thomas Summers', 'Summers', 'Thomas'),
(110, '406-760-7251', 'Bernard Ortega', 'Ortega', 'Bernard'),
(111, '256-232-5064', 'Shannon Maxwell', 'Maxwell', 'Shannon'),
(112, '770-867-0718', 'Natasha Ramsey', 'Ramsey', 'Natasha'),
(113, '352-261-1903', 'Tim Herrera', 'Herrera', 'Tim'),
(114, '217-522-0696', 'Judy Miller', 'Miller', 'Judy'),
(115, '701-420-4937', 'Jamie Farmer', 'Farmer', 'Jamie'),
(116, '816-949-1045', 'Dexter Patrick', 'Patick', 'Dexter'),
(117, '314-915-7535', 'Pam Nunez', 'Nunez', 'Pam'),
(118, '620-820-7863', 'Sonya Goodwin', 'Goodwin', 'Sonya'),
(119, '309-928-9389', 'Mercedes Mclaughlin', 'Mclaughlin', 'Mercedes'),
(120, '814-664-9983', 'John Steele', 'Steele', 'John'),
(121, '683-123-4432', 'Dillon Shaver', 'Shaver', 'Dillon');

-- --------------------------------------------------------

--
-- Table structure for table `rental_place`
--

CREATE TABLE `rental_place` (
  `Contract_ID` int(11) NOT NULL,
  `Rental_ID` int(11) DEFAULT NULL,
  `Customer_ID` int(11) DEFAULT NULL,
  `Vehicle_ID` int(11) DEFAULT NULL,
  `StartDate` varchar(10) DEFAULT NULL,
  `Return_Date` varchar(10) DEFAULT NULL,
  `Amount_Due` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rental_place`
--

INSERT INTO `rental_place` (`Contract_ID`, `Rental_ID`, `Customer_ID`, `Vehicle_ID`, `StartDate`, `Return_Date`, `Amount_Due`) VALUES
(1, NULL, NULL, NULL, '1', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rental_rates`
--

CREATE TABLE `rental_rates` (
  `Rate_ID` int(11) NOT NULL,
  `RRCarType` varchar(12) DEFAULT NULL,
  `Daily_Rates` varchar(20) DEFAULT NULL,
  `Weekly_Rates` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rental_rates`
--

INSERT INTO `rental_rates` (`Rate_ID`, `RRCarType`, `Daily_Rates`, `Weekly_Rates`) VALUES
(406, 'Van', '30', '90'),
(407, 'Compact', '50', '100'),
(408, 'Mid-Size', '55', '105'),
(409, 'Full-Size', '75', '130'),
(410, 'Large', '60', '110'),
(411, 'SUV', '70', '120'),
(412, 'Truck', '85', '135');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `Vehicle_ID` int(8) NOT NULL,
  `Available_To_Rent` varchar(5) DEFAULT NULL,
  `Year` int(4) DEFAULT NULL,
  `Vehicle_Name` varchar(20) DEFAULT NULL,
  `Vehicle_Color` varchar(20) DEFAULT NULL,
  `Body_Type` varchar(20) DEFAULT NULL,
  `Vehicle_Model` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`Vehicle_ID`, `Available_To_Rent`, `Year`, `Vehicle_Name`, `Vehicle_Color`, `Body_Type`, `Vehicle_Model`) VALUES
(1000, 'yes', 2001, 'Kia Spehia', 'White', 'Compact', 'Kia'),
(1001, 'yes', 2002, 'Dodge Intrepid', 'Red', 'Full-Size', 'Ford'),
(1002, 'no', 1995, 'Acura Integra', 'Grey', 'Sports-Compact', 'Acura'),
(1003, 'yes', 1999, 'Subaru Legacy', 'Blue', 'Mid-size', 'Subaru'),
(1004, 'yes', 2007, 'Hyundai Sonata', 'White', 'Mid-size', 'Hyundai'),
(1005, 'no', 2010, 'Hyundai Elantra', 'Black', 'Compact', 'Hyundai'),
(1006, 'no', 2008, 'Buick Enclave', 'Orange', 'SUV', 'Buick'),
(1007, 'yes', 2006, 'Chevrolet Suburban', 'Grey', 'SUV', 'Chevrolet'),
(1008, 'no', 2003, 'Dodge Ram PickUp 250', 'Tan', 'Cab-Pickup', 'Dodge'),
(1020, 'Yes', 2020, 'Toyota Tundra', 'White', 'Truck', 'Toyota'),
(1021, 'Yes', 2020, 'Toyota 86', 'Blue', 'Sports-Compact', 'Toyota'),
(1022, 'Yes', 2020, 'Subaru BRZ', 'Orange', 'Compact', 'Subaru'),
(1023, 'Yes', 2021, 'Toyota Highlander', 'Gunmetal Grey', 'SUV', 'Toyota'),
(1024, 'Yes', 2021, 'Ford Explorer', 'Red', 'SUV', 'Ford'),
(1025, 'Yes', 2021, 'Ford F-150', 'Black', 'Truck', 'Ford'),
(1026, 'Yes', 2021, 'Ram 1500', 'Grey', 'Truck', 'Ram'),
(1027, 'Yes', 2021, 'Honda Ridgeline ', 'Beige', 'Truck', 'Honda'),
(1028, 'Yes', 2020, 'Nissan Maxima', 'Silver', 'Full-Size', 'Nissan'),
(1029, 'Yes', 2020, 'Kia Cadenza', 'Dark-Blue', 'Full-Size', 'Kia'),
(1030, 'Yes', 2020, 'Ford Taurus', 'Black', 'Full-size', 'Ford'),
(1031, 'Yes', 2021, 'Honda Accord', 'Dark-Blue', 'Mid-Size', 'Honda'),
(1032, 'Yes', 2021, 'Volkswagen Passat', 'Blue', 'Mid-size', 'Volkswagen'),
(1033, 'Yes', 2021, 'Lexus IS350', 'White', 'Compact', 'Lexus'),
(1034, 'Yes', 2021, 'Audi A4', 'Dark Brown', 'Compact', 'Audi'),
(1035, 'Yes', 2021, 'Infiniti Q50', 'Silver', 'Compact', 'Infiniti'),
(1041, 'Yes', 2017, 'Honda Accord ', 'Red', 'Compact', 'Mid-Size');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`IDNo`);

--
-- Indexes for table `rental_place`
--
ALTER TABLE `rental_place`
  ADD PRIMARY KEY (`Contract_ID`),
  ADD KEY `Rental_ID` (`Rental_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Vehicle_ID` (`Vehicle_ID`);

--
-- Indexes for table `rental_rates`
--
ALTER TABLE `rental_rates`
  ADD PRIMARY KEY (`Rate_ID`),
  ADD KEY `RRCarType` (`RRCarType`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`Vehicle_ID`),
  ADD KEY `Body_Type` (`Body_Type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `IDNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `rental_rates`
--
ALTER TABLE `rental_rates`
  MODIFY `Rate_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `Vehicle_ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1042;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rental_place`
--
ALTER TABLE `rental_place`
  ADD CONSTRAINT `Customer_ID_ibfk_002` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`IDNo`),
  ADD CONSTRAINT `Rental_Rate_ID_ibfk_003` FOREIGN KEY (`Rental_ID`) REFERENCES `rental_rates` (`Rate_ID`),
  ADD CONSTRAINT `Vehicle_ID_ibfk_001` FOREIGN KEY (`Vehicle_ID`) REFERENCES `vehicle` (`Vehicle_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
