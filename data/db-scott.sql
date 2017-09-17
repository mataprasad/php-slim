-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2017 at 01:52 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-scott`
--
CREATE DATABASE IF NOT EXISTS `db-scott` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db-scott`;

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--

CREATE TABLE `bonus` (
  `ENAME` varchar(10) DEFAULT NULL,
  `JOB` varchar(9) DEFAULT NULL,
  `SAL` decimal(12,2) DEFAULT NULL,
  `COMM` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `DEPTNO` int(11) NOT NULL,
  `DNAME` varchar(14) DEFAULT NULL,
  `LOC` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`DEPTNO`, `DNAME`, `LOC`) VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');

-- --------------------------------------------------------

--
-- Table structure for table `dummy`
--

CREATE TABLE `dummy` (
  `DUMMY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy`
--

INSERT INTO `dummy` (`DUMMY`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `EMPNO` int(11) NOT NULL,
  `ENAME` varchar(10) DEFAULT NULL,
  `JOB` varchar(9) DEFAULT NULL,
  `MGR` int(11) DEFAULT NULL,
  `HIREDATE` datetime DEFAULT NULL,
  `SAL` decimal(12,2) DEFAULT NULL,
  `COMM` decimal(12,2) DEFAULT NULL,
  `DEPTNO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES
(7369, 'SMITH', 'CLERK', 7902, '1980-12-17 00:00:00', '800.00', NULL, 20),
(7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20 00:00:00', '1600.00', '300.00', 30),
(7521, 'WARD', 'SALESMAN', 7698, '1981-02-22 00:00:00', '1250.00', '500.00', 30),
(7566, 'JONES', 'MANAGER', 7839, '1981-04-02 00:00:00', '2975.00', NULL, 20),
(7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28 00:00:00', '1250.00', '1400.00', 30),
(7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01 00:00:00', '2850.00', NULL, 30),
(7782, 'CLARK', 'MANAGER', 7839, '1981-06-09 00:00:00', '2450.00', NULL, 10),
(7788, 'SCOTT', 'ANALYST', 7566, '1982-12-09 00:00:00', '3000.00', NULL, 20),
(7839, 'KING', 'PRESIDENT', NULL, '1981-11-17 00:00:00', '5000.00', NULL, 10),
(7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08 00:00:00', '1500.00', '0.00', 30),
(7876, 'ADAMS', 'CLERK', 7788, '1983-01-12 00:00:00', '1100.00', NULL, 20),
(7900, 'JAMES', 'CLERK', 7698, '1981-12-03 00:00:00', '950.00', NULL, 30),
(7902, 'FORD', 'ANALYST', 7566, '1981-12-03 00:00:00', '3000.00', NULL, 20),
(7934, 'MILLER', 'CLERK', 7782, '1982-01-23 00:00:00', '1300.00', NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `ret_emp`
--

CREATE TABLE `ret_emp` (
  `EMPNO` int(11) NOT NULL,
  `ENAME` varchar(10) DEFAULT NULL,
  `JOB` varchar(9) DEFAULT NULL,
  `MGR` int(11) DEFAULT NULL,
  `HIREDATE` datetime DEFAULT NULL,
  `SAL` decimal(12,2) DEFAULT NULL,
  `COMM` decimal(12,2) DEFAULT NULL,
  `DEPTNO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ret_emp`
--

INSERT INTO `ret_emp` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`) VALUES
(7521, 'WARD', 'SALESMAN', 7698, '1981-02-22 00:00:00', '1250.00', '500.00', 30),
(7369, 'SMITH', 'CLERK', 7902, '1980-12-17 00:00:00', '800.00', NULL, 20),
(7566, 'JONES', 'MANAGER', 7839, '1981-04-02 00:00:00', '2975.00', NULL, 20),
(7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20 00:00:00', '1600.00', '500.00', 30),
(8011, 'ARCHAR', 'CLERK', 7698, '1981-04-02 00:00:00', '4000.00', '400.00', 20),
(8022, 'ROBART', 'CLERK', 7839, '1981-04-02 00:00:00', '4300.00', NULL, 20),
(8033, 'ROBIN', 'CLERK', 7698, '1981-04-02 00:00:00', '3000.00', NULL, 20);

-- --------------------------------------------------------

--
-- Table structure for table `salgrade`
--

CREATE TABLE `salgrade` (
  `GRADE` int(11) DEFAULT NULL,
  `LOSAL` int(11) DEFAULT NULL,
  `HISAL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salgrade`
--

INSERT INTO `salgrade` (`GRADE`, `LOSAL`, `HISAL`) VALUES
(1, 700, 1200),
(2, 1201, 1400),
(3, 1401, 2000),
(4, 2001, 3000),
(5, 3001, 9999);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`DEPTNO`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`EMPNO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
