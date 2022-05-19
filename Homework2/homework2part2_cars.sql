-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 09:47 AM
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
-- Database: `homework2part2_cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE customers (
  IDNo int(11) AUTO_INCREMENT NOT NULL,
  Phone_Number varchar(12) DEFAULT NULL,
  Name varchar(20) DEFAULT NULL,
  Last_Name varchar(20) DEFAULT NULL,
  First_Name varchar(20) DEFAULT NULL,
  PRIMARY KEY(IDNo)
);

--
-- Dumping data for table `customers`
--
ALTER  TABLE customers AUTO_INCREMENT = 100;

INSERT INTO customers (Phone_Number, Name, Last_Name, First_Name) VALUES
('914-379-9520', 'Karla Drake', 'Drake', 'Karla'),
('603-428-4103', 'Tyrone Brown', 'Brown', 'Tyrone'),
('304-781-3354', 'Lynette Reynolds', 'Reynolds', 'Lynette'),
('775-371-4917', 'Lucas Hale', 'Hale', 'Lucas'),
('701-647-8916', 'Joanna Wolfe', 'Wolfe', 'Joanna'),
('617-719-8482', 'Margaret Thornton', 'Thornton', 'Margaret'),
('870-729-2055', 'Traci Morgan', 'Morgan', 'Traci'),
('785-259-6796', 'Patti Luna', 'Luna', 'Patti'),
('215-641-2267', 'Allison Jefferson', 'Jefferson', 'Allison'),
('240-409-3717', 'Thomas Summers', 'Summers', 'Thomas'),
('406-760-7251', 'Bernard Ortega', 'Ortega', 'Bernard'),
('256-232-5064', 'Shannon Maxwell', 'Maxwell', 'Shannon'),
('770-867-0718', 'Natasha Ramsey', 'Ramsey', 'Natasha'),
('352-261-1903', 'Tim Herrera', 'Herrera', 'Tim'),
('217-522-0696', 'Judy Miller', 'Miller', 'Judy'),
('701-420-4937', 'Jamie Farmer', 'Farmer', 'Jamie'),
('816-949-1045', 'Dexter Patrick', 'Patick', 'Dexter'),
('314-915-7535', 'Pam Nunez', 'Nunez', 'Pam'),
('620-820-7863', 'Sonya Goodwin', 'Goodwin', 'Sonya'),
('309-928-9389', 'Mercedes Mclaughlin', 'Mclaughlin', 'Mercedes');

-- --------------------------------------------------------

--
-- Table structure for table `rental_place`
--

CREATE TABLE rental_place (
  Rental_ID int(11) NOT NULL,
  Customer_ID int(11) NOT NULL, 
  Vehicle_ID int(11) NOT NULL,
  StartDate date DEFAULT NULL,
  Return_Date date DEFAULT NULL,
  Amount_Due varchar(6) DEFAULT NULL,
  No_of_Days int(11) DEFAULT NULL,
  No_of_Weeks int(11) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `rental_rates`
--

CREATE TABLE rental_rates (
  Rate_ID int(11) NOT NULL,
  RRCarType varchar(12) DEFAULT NULL,
  Daily_Rates varchar(20) DEFAULT NULL,
  Weekly_Rates varchar(20) DEFAULT NULL
); 

INSERT INTO rental_rates (Rate_ID, RRCarType, Daily_Rates, Weekly_Rates) VALUES
(4473221, 'Van', 30, 40),
(0932119, 'Compact ', 50, 100),
(1123456, 'Mid-Size', 55, 105),
(0884412, 'Large', 60, 110),
(55684123, 'SUV', 70, 120),
(9988432, 'Truck', 85, 135);
-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE vehicle (
  Vehicle_ID int(8) NOT NULL,
  Available_To_Rent VARCHAR(10) DEFAULT NULL,
  Year int(4) DEFAULT NULL,
  Vehicle_Name varchar(20) DEFAULT NULL,
  Vehicle_Color varchar(20) DEFAULT NULL,
  Body_Type varchar(20) DEFAULT NULL,
  Vehicle_Model varchar(20) DEFAULT NULL,
  PRIMARY KEY(Vehicle_ID)
);

INSERT INTO vehicle (Vehicle_ID, Available_To_Rent, Year, Vehicle_Name, Vehicle_Color, Body_Type, Vehicle_Model) VALUES
(75134630, "Yes", 2001, "Kia Spehia", "White", "Compact", "Kia"),
(21875339 , "Yes", 2002, "Dodge Intrepid", "Red", "Full-Size", "Ford"),
(65445863 , "No", 1995, "Acura Integra", "Grey", "Sports-Compact", "Acura"),
(85687405 , "Yes", 1999, "Subaru Legacy", "Blue", "Mid-size", "Subaru"),
(45193952, "Yes", 2007, "Hyundai Sonata", "White", "Mid-size", "Hyundai"),
(09523731 , "No", 2010, "Hyundai Elantra", "Black", "Compact", "Hyundai"),
(41204363 , "No", 2008, "Buick Enclave", "Orange", "SUV", "Buick"),
(64645763, "Yes", 2006, "Chevrolet Suburban", "Grey", "SUV", "Chevrolet"),
(26601641, "No", 2003, "Dodge Ram PickUp 2500", "Tan", "Cab-Pickup", "Dodge");

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
