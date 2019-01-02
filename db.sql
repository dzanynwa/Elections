-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 02, 2019 at 08:47 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Elections`
--

-- --------------------------------------------------------

--
-- Table structure for table `Candidate`
--

CREATE TABLE `Candidate` (
  `Candidate_ID` int(11) NOT NULL,
  `Party` int(11) NOT NULL,
  `C_Fname` varchar(255) DEFAULT NULL,
  `C_Lname` varchar(255) DEFAULT NULL,
  `Position` int(11) NOT NULL,
  `C_Nationality` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Candidate`
--

INSERT INTO `Candidate` (`Candidate_ID`, `Party`, `C_Fname`, `C_Lname`, `Position`, `C_Nationality`) VALUES
(1, 1, 'Šefik', 'Džaferović', 1, 'Bošnjak'),
(2, 2, 'Denis', 'Bećirović', 1, 'Bošnjak'),
(3, 6, 'Fahrudin', 'Radoncčić', 1, 'Bošnjak'),
(4, 12, 'Mirsad', 'Hadžikadić', 1, 'Bošnjak'),
(5, 5, 'Željko', 'Komšić', 1, 'Hrvat'),
(6, 10, 'Dragan', 'Čović', 1, 'Hrvat'),
(7, 11, 'Dijana', 'Zelenika', 1, 'Hrvat'),
(8, 3, 'Boriša', 'Falatar', 1, 'Hrvat'),
(9, 7, 'Milorad', 'Dodik', 1, 'Srbin'),
(10, 8, 'Mladen', 'Ivanić', 1, 'Srbin');

-- --------------------------------------------------------

--
-- Table structure for table `ElectionUnit`
--

CREATE TABLE `ElectionUnit` (
  `Unit_ID` int(11) NOT NULL,
  `Unit_Name` varchar(255) DEFAULT NULL,
  `Entitet` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ElectionUnit`
--

INSERT INTO `ElectionUnit` (`Unit_ID`, `Unit_Name`, `Entitet`) VALUES
(1, 'Izborna Jedinica 1', 'FBiH'),
(2, 'Izborna Jedinica 2', 'FBiH'),
(3, 'Izborna Jedinica 3', 'FBiH'),
(4, 'Izborna Jedinica 4', 'FBiH'),
(5, 'Izborna Jedinica 5', 'FBiH'),
(6, 'Izborna Jedinica 1', 'RS'),
(7, 'Izborna Jedinica 2', 'RS'),
(8, 'Izborna Jedinica 3', 'RS'),
(9, 'Federacija', 'FBiH'),
(10, 'RS', 'RS');

-- --------------------------------------------------------

--
-- Table structure for table `Level`
--

CREATE TABLE `Level` (
  `Level_ID` int(11) NOT NULL,
  `Level_Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Level`
--

INSERT INTO `Level` (`Level_ID`, `Level_Name`) VALUES
(1, 'Drzavni'),
(2, 'FBiH'),
(3, 'RS'),
(4, 'Kanton'),
(5, 'Drzavni');

-- --------------------------------------------------------

--
-- Table structure for table `Party`
--

CREATE TABLE `Party` (
  `Party_ID` int(255) NOT NULL,
  `Party_Name` varchar(100) NOT NULL,
  `DOF` date NOT NULL,
  `Party_Abr` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Party`
--

INSERT INTO `Party` (`Party_ID`, `Party_Name`, `DOF`, `Party_Abr`) VALUES
(1, 'Stranka Demokratskih Akcija', '1993-05-06', 'SDA'),
(2, 'Socijaldemokratska Partija', '1998-12-03', 'SDP'),
(3, 'Naša Stranka', '2015-10-18', 'NS'),
(4, 'Narod i Pravda', '2017-05-19', 'NiP'),
(5, 'Demokratska Fronta', '2015-03-12', 'DF'),
(6, 'Savez za bolju budućnost', '2012-01-09', 'SBB'),
(7, 'Savez Nezavisnih Socijal Demokrata', '2005-06-18', 'SNSD'),
(8, 'Savez za Pobjedu', '2016-10-16', 'SZP'),
(9, 'Nezavisni Blok', '2016-12-23', 'NB'),
(10, 'Hrvatska Demokratska Zajednica', '1999-08-20', 'HDZ'),
(11, 'Hrvatska Demokratska Zajednica 1990', '2012-06-10', 'HDZ 1990'),
(12, 'Platforma za Progres', '2018-11-25', 'PZP');

-- --------------------------------------------------------

--
-- Table structure for table `Position`
--

CREATE TABLE `Position` (
  `Position_ID` int(11) NOT NULL,
  `Position_Name` varchar(255) DEFAULT NULL,
  `Level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Position`
--

INSERT INTO `Position` (`Position_ID`, `Position_Name`, `Level`) VALUES
(1, 'Predsjednistvo', 1),
(2, 'Parlament', 1),
(3, 'Parlament', 2),
(4, 'Predsjednik', 3),
(5, 'Narodna Skupstina', 3),
(6, 'Skupstina', 4);

-- --------------------------------------------------------

--
-- Table structure for table `VotingPlace`
--

CREATE TABLE `VotingPlace` (
  `Voting_ID` int(11) NOT NULL,
  `VPlace_Name` varchar(255) DEFAULT NULL,
  `EUnit` int(11) NOT NULL,
  `Position` int(11) NOT NULL,
  `NumOfVotes` int(11) DEFAULT NULL,
  `Candidate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `VotingPlace`
--

INSERT INTO `VotingPlace` (`Voting_ID`, `VPlace_Name`, `EUnit`, `Position`, `NumOfVotes`, `Candidate`) VALUES
(1, 'Stari Grad', 1, 1, 6954, 5),
(2, 'Stari Grad', 1, 1, 3370, 1),
(3, 'Stari Grad', 1, 1, 3832, 2),
(4, 'Stari Grad', 1, 1, 2463, 4),
(5, 'Stari Grad', 1, 1, 2214, 3),
(6, 'Stari Grad', 1, 1, 515, 8),
(7, 'Stari Grad', 1, 1, 132, 7),
(8, 'Stari Grad', 1, 1, 108, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Candidate`
--
ALTER TABLE `Candidate`
  ADD PRIMARY KEY (`Candidate_ID`),
  ADD KEY `fk_party_candidate` (`Party`),
  ADD KEY `fk_position_candidate` (`Position`);

--
-- Indexes for table `ElectionUnit`
--
ALTER TABLE `ElectionUnit`
  ADD PRIMARY KEY (`Unit_ID`);

--
-- Indexes for table `Level`
--
ALTER TABLE `Level`
  ADD PRIMARY KEY (`Level_ID`);

--
-- Indexes for table `Party`
--
ALTER TABLE `Party`
  ADD PRIMARY KEY (`Party_ID`);

--
-- Indexes for table `Position`
--
ALTER TABLE `Position`
  ADD PRIMARY KEY (`Position_ID`),
  ADD KEY `fk_level_position` (`Level`);

--
-- Indexes for table `VotingPlace`
--
ALTER TABLE `VotingPlace`
  ADD PRIMARY KEY (`Voting_ID`),
  ADD KEY `fk_position_voting` (`Position`),
  ADD KEY `fk_eunit_voting` (`EUnit`),
  ADD KEY `fk_candidate_voting` (`Candidate`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Candidate`
--
ALTER TABLE `Candidate`
  ADD CONSTRAINT `fk_party_candidate` FOREIGN KEY (`Party`) REFERENCES `Party` (`Party_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_position_candidate` FOREIGN KEY (`Position`) REFERENCES `Position` (`Position_ID`);

--
-- Constraints for table `Position`
--
ALTER TABLE `Position`
  ADD CONSTRAINT `fk_level_position` FOREIGN KEY (`Level`) REFERENCES `Level` (`Level_ID`);

--
-- Constraints for table `VotingPlace`
--
ALTER TABLE `VotingPlace`
  ADD CONSTRAINT `fk_candidate_voting` FOREIGN KEY (`Candidate`) REFERENCES `Candidate` (`Candidate_ID`),
  ADD CONSTRAINT `fk_eunit_voting` FOREIGN KEY (`EUnit`) REFERENCES `ElectionUnit` (`Unit_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_position_voting` FOREIGN KEY (`Position`) REFERENCES `Position` (`Position_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
