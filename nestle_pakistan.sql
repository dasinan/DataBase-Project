-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2022 at 08:25 AM
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
-- Database: `nestle_pakistan`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `Company_code` int(10) NOT NULL,
  `Company_name` varchar(50) DEFAULT NULL,
  `Company_rating` int(5) DEFAULT NULL,
  `Establishment_year` varchar(20) DEFAULT NULL,
  `Manager_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`Company_code`, `Company_name`, `Company_rating`, `Establishment_year`, `Manager_id`) VALUES
(1, 'Singapore', 5, '2003-12-31', 102011),
(2, 'Pakistan', 5, '2018-02-13', 102023),
(4, 'Bangladesh', 5, '1998-08-28', 102045),
(5, 'Delhi', 5, '1995-07-12', 102065),
(8, 'Nepal', 5, '1992-02-10', 102087);

-- --------------------------------------------------------

--
-- Table structure for table `company_manager`
--

CREATE TABLE `company_manager` (
  `Manager_id` int(10) NOT NULL,
  `Manager_name` varchar(50) DEFAULT NULL,
  `Meeting_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_manager`
--

INSERT INTO `company_manager` (`Manager_id`, `Manager_name`, `Meeting_name`) VALUES
(102011, 'Hamid', 'Board  Break Experience at the event'),
(102023, 'Asher', 'Charting Course'),
(102045, 'Hades', 'First Friday Forum'),
(102065, 'Abel', 'Staff Meeting'),
(102087, 'Adrien', 'Back on Top'),
(102090, 'Adam', 'Network');

-- --------------------------------------------------------

--
-- Table structure for table `salary_department`
--

CREATE TABLE `salary_department` (
  `Salaryslipno` int(10) NOT NULL,
  `Pay_date` varchar(20) DEFAULT NULL,
  `Salary` int(20) DEFAULT NULL,
  `Bonus_amount` int(20) DEFAULT NULL,
  `Worker_gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary_department`
--

INSERT INTO `salary_department` (`Salaryslipno`, `Pay_date`, `Salary`, `Bonus_amount`, `Worker_gender`) VALUES
(3002, '6-02-2022', 10000, 1400, 'Male'),
(3006, '28-08-2022', 15000, 200, 'Male'),
(30011, '30-11-2022', 20000, 6000, 'Male'),
(30012, '2-09-2022', 90000, 8000, 'Female'),
(30021, '16-01-2022', 25000, 20000, 'Male'),
(30022, '21-02-2022', 20000, 1200, 'Female'),
(30024, '26-05-2022', 211000, 500, 'Male'),
(30043, '11-12-2022', 15770, 12000, 'Male'),
(30045, '10-22-2022', 250000, 2300, 'Female'),
(30057, '3-01-2022', 31000, 5000, 'Female'),
(30065, '24-09-2022', 50000, 2000, 'Male'),
(30067, '31-04-2022', 70000, 9000, 'Male'),
(30098, '14-10-2022', 200000, 1000, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `stock_finance`
--

CREATE TABLE `stock_finance` (
  `Stock_name` varchar(50) NOT NULL,
  `Stock_profitrate` float DEFAULT NULL,
  `Stock_lossrate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_finance`
--

INSERT INTO `stock_finance` (`Stock_name`, `Stock_profitrate`, `Stock_lossrate`) VALUES
('Beverages', 89, 11),
('Cereals', 89, 11),
('Chilled', 96, 4),
('Coffee', 95, 5),
('Eye care', 89, 11),
('Frozen Food', 99, 1),
('Hot coca', 90, 10),
('Instant foods', 80, 20),
('Mct Oil', 85, 15),
('Novartis  Ovaltine', 85, 15),
('Pet care', 91, 9),
('Water', 79, 21),
('Yogurt', 95, 5);

-- --------------------------------------------------------

--
-- Table structure for table `stock_production`
--

CREATE TABLE `stock_production` (
  `stock_id` int(10) NOT NULL,
  `Item_sold` int(20) DEFAULT NULL,
  `Item_purchased` int(20) DEFAULT NULL,
  `Stock_productionrate` float DEFAULT NULL,
  `StockManager_id` int(10) DEFAULT NULL,
  `Stock_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_production`
--

INSERT INTO `stock_production` (`stock_id`, `Item_sold`, `Item_purchased`, `Stock_productionrate`, `StockManager_id`, `Stock_name`) VALUES
(1001, 1500, 2000, 50, 78, 'Hot coca'),
(1002, 1300, 6710, 70, 45621, 'Novartis  Ovaltine'),
(1003, 1400, 567800, 120, 65701, 'Mct Oil'),
(1004, 5000, 3210, 90, 78, 'Coffee'),
(1005, 7800, 5460, 70, 78, 'Water'),
(1007, 5410, 2190, 56, 65701, 'Yogurt'),
(1008, 801, 5400, 89, 65701, 'Frozen Food'),
(1009, 8760, 3000, 35, 45621, 'Eye care'),
(1010, 2103, 6700, 64, 45621, 'Instant foods'),
(1011, 3012, 2100, 80, 45621, 'Chilled'),
(1012, 9021, 5000, 100, 65701, 'Pet care'),
(1013, 9801, 9000, 110, 45621, 'Beverages');

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `Worker_id` int(10) NOT NULL,
  `Worker_name` varchar(50) DEFAULT NULL,
  `Worker_age` int(5) DEFAULT NULL,
  `Worker_department` varchar(50) DEFAULT NULL,
  `Worker_position` varchar(50) DEFAULT NULL,
  `Salaryslipno` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workers`
--

INSERT INTO `workers` (`Worker_id`, `Worker_name`, `Worker_age`, `Worker_department`, `Worker_position`, `Salaryslipno`) VALUES
(34, 'steven', 29, 'stock finance', 'clerck', 3002),
(45, 'John', 31, 'Administration', 'Clerk', 30012),
(78, 'Valli', 32, 'Salary department', 'Manager', 30021),
(96, 'Daniel', 49, 'Salary department', 'SA_REP', 30011),
(3218, 'James', 42, 'Marketing', 'SA_MAN', 3006),
(34501, 'neena', 36, 'admnistration', 'clerck', 30043),
(45621, 'Nancy', 54, 'Stock finance', 'Manager', 30065),
(56719, 'Hazel', 31, 'Stock production', 'SA_REP', 30022),
(65701, 'Urman', 45, 'Stock production', 'Manager', 30045),
(203012, 'Lex', 27, 'Marketing', 'SA_REP', 30067),
(203016, 'David', 40, 'Stock finance', 'SA_MAN', 30098),
(203045, 'Alexander', 29, 'Stock production', 'SA_MAN', 30024),
(203115, 'Diana', 52, 'Stock production', 'Clerk', 30057);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_details`
--
ALTER TABLE `company_details`
  ADD PRIMARY KEY (`Company_code`),
  ADD KEY `Manager_id` (`Manager_id`);

--
-- Indexes for table `company_manager`
--
ALTER TABLE `company_manager`
  ADD PRIMARY KEY (`Manager_id`);

--
-- Indexes for table `salary_department`
--
ALTER TABLE `salary_department`
  ADD PRIMARY KEY (`Salaryslipno`);

--
-- Indexes for table `stock_finance`
--
ALTER TABLE `stock_finance`
  ADD PRIMARY KEY (`Stock_name`);

--
-- Indexes for table `stock_production`
--
ALTER TABLE `stock_production`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `StockManager_id` (`StockManager_id`),
  ADD KEY `Stock_name` (`Stock_name`);

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`Worker_id`),
  ADD KEY `Salaryslipno` (`Salaryslipno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company_details`
--
ALTER TABLE `company_details`
  ADD CONSTRAINT `company_details_ibfk_1` FOREIGN KEY (`Manager_id`) REFERENCES `company_manager` (`Manager_id`);

--
-- Constraints for table `stock_production`
--
ALTER TABLE `stock_production`
  ADD CONSTRAINT `stock_production_ibfk_1` FOREIGN KEY (`StockManager_id`) REFERENCES `workers` (`Worker_id`),
  ADD CONSTRAINT `stock_production_ibfk_2` FOREIGN KEY (`Stock_name`) REFERENCES `stock_finance` (`Stock_name`);

--
-- Constraints for table `workers`
--
ALTER TABLE `workers`
  ADD CONSTRAINT `workers_ibfk_1` FOREIGN KEY (`Salaryslipno`) REFERENCES `salary_department` (`Salaryslipno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
