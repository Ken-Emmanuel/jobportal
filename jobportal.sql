-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 07:23 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7987979878, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-06-04 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplyjob`
--

CREATE TABLE `tblapplyjob` (
  `ID` int(10) NOT NULL,
  `UserId` int(5) DEFAULT NULL,
  `JobId` int(5) DEFAULT NULL,
  `Applydate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` varchar(200) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblapplyjob`
--

INSERT INTO `tblapplyjob` (`ID`, `UserId`, `JobId`, `Applydate`, `Status`, `ResponseDate`) VALUES
(2, 1, 3, '2020-06-04 11:54:10', 'Sorted', '2020-06-04 11:54:10'),
(4, 4, 8, '2023-04-29 04:02:14', 'Rejected', '2023-04-29 04:02:14'),
(5, 5, 15, '2023-05-02 05:07:37', NULL, NULL),
(6, 5, 8, '2023-05-02 05:10:22', NULL, NULL),
(7, 4, 11, '2023-05-02 05:14:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'Development - IT', 'Development -Information Technology.', '2018-09-03 06:32:34', '2020-06-05 11:53:56', 1),
(3, 'HR', 'Human resoucre', '2018-09-03 06:33:33', '0000-00-00 00:00:00', 1),
(5, 'Finance', 'Finance', '2020-06-05 11:26:40', '0000-00-00 00:00:00', 0),
(6, 'Admin', 'Adiminstrator', '2020-09-02 18:18:44', NULL, 0),
(7, 'Marketing', 'Marketing Job Needed', '2023-05-02 01:58:57', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbleducation`
--

CREATE TABLE `tbleducation` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) DEFAULT NULL,
  `Qualification` varchar(200) DEFAULT NULL,
  `ClgorschName` varchar(200) DEFAULT NULL,
  `PassingYear` varchar(200) DEFAULT NULL,
  `Stream` varchar(200) DEFAULT NULL,
  `CGPA` decimal(2,0) DEFAULT NULL,
  `Percentage` decimal(4,0) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbleducation`
--

INSERT INTO `tbleducation` (`ID`, `UserID`, `Qualification`, `ClgorschName`, `PassingYear`, `Stream`, `CGPA`, `Percentage`, `CreationDate`) VALUES
(7, 5, 'Others', 'Pentecost University', '2015', 'N', '98', '98', '2023-05-02 01:35:14'),
(8, 4, 'Others', 'Karashika College', '2013', 'N', '99', '99', '2023-05-02 01:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployers`
--

CREATE TABLE `tblemployers` (
  `id` int(11) NOT NULL,
  `ConcernPerson` varchar(150) DEFAULT NULL,
  `EmpEmail` varchar(250) DEFAULT NULL,
  `EmpPassword` varchar(250) DEFAULT NULL,
  `CompnayName` varchar(255) DEFAULT NULL,
  `CompanyTagline` mediumtext DEFAULT NULL,
  `CompnayDescription` mediumtext DEFAULT NULL,
  `CompanyUrl` varchar(255) DEFAULT NULL,
  `CompnayLogo` varchar(200) DEFAULT NULL,
  `noOfEmployee` char(10) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `typeBusinessEntity` varchar(255) DEFAULT NULL,
  `lcation` varchar(255) DEFAULT NULL,
  `establishedIn` char(200) DEFAULT NULL,
  `RegDtae` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployers`
--

INSERT INTO `tblemployers` (`id`, `ConcernPerson`, `EmpEmail`, `EmpPassword`, `CompnayName`, `CompanyTagline`, `CompnayDescription`, `CompanyUrl`, `CompnayLogo`, `noOfEmployee`, `industry`, `typeBusinessEntity`, `lcation`, `establishedIn`, `RegDtae`, `LastUpdationDate`, `Is_Active`) VALUES
(4, 'Solomon', 'brothersolo@jobseeker.mio', '$2y$12$l8/ELpCWm3G3FyCb8aQqT.oxPkG9wqIuJtjkqQyIdS7mfZJunhcbS', 'MARV ARTS/DESIGN', 'MARVELLOS ART/DESIGN', 'HR/FINANCE DEPARTMENT', 'http://marve.com', '1a64ca9ec541e4382c9691b95ef1e120.jpg', '10', 'Art and Design', 'pvt ltd', 'ACCRA / KUMASI', '20 october, 2000', '2023-04-29 02:51:29', '2023-05-02 04:54:25', 1),
(5, 'John', 'eatapple@hungry.co', '$2y$12$0bfynhBIPLeJAvdrLKwfReiN9rgSMp1snwNxq31WmdimyKDD5i7We', 'APPLE', 'SCIENCE INNOVATION', 'WE BELIEVE THAT SCIENCE CAN MAKE A DIFFERENCE', 'http://eatapple@hungry.com', 'b1da06d3142be0cc87fd99209c2885d7.png', '2000', 'Technology', 'Pvt ltd', 'HQ @ Accra', '2003', '2023-05-02 03:17:45', '2023-05-02 04:57:40', 1),
(6, 'Arnold', 'shellwork@money.io', '$2y$12$rcZZr4jmJAMnNnrXuGCk8ef8yu95kdBb92hn/bzskZotHsTLlZ2EO', 'SHELLWORK', 'OIL AND GAS', 'WE DEAL IN THE PRODUCTION OF OIL AND GAS', 'http://shellwork@money.com', '00bf23e130fa1e525e332ff03dae345d.png', '5000', 'OIL AND GAS', 'PVT LTD', 'Accra / Kumasi', '1999', '2023-05-02 03:20:37', '2023-05-02 05:01:50', 1),
(7, 'Peter O', 'colgatepaste@cool.om', '$2y$12$mbza./zdBo0ztnVRrEvw3eyLELRBjmnbftCCqJqULAB77O2pykYsG', 'COLGATE-PASTE', 'TOOTH-PASTE', 'HEALTHY TEETH AND BREATH ATTRACTS PEOPLE', 'http://colgatepaste@cool.com', 'ca39993310a4e1beb7d32a7f93909860.png', '600', 'PRODUCTION', 'PVT LTD', 'Accra / Kumasi', '2000', '2023-05-02 03:25:10', '2023-05-02 05:04:21', 1),
(8, 'Success C', 'bread@fam.ltd', '$2y$12$uf18mpVWqr143KDvOD7uCe1RnTfOxtdkYC4aNWPRvVzddqQS54Gb6', 'MYBREAD', 'BREAD-IS-FAMILY', 'BREAD UNITS FAMILY', 'http://bread@fam.ltd', 'c4915980294de3a6630d3303b1b4a777.png', '15', 'Production', 'Sole Proprietorship', 'Accra', '2018', '2023-05-02 03:30:19', '2023-05-02 04:59:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblexperience`
--

CREATE TABLE `tblexperience` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `EmployerName` varchar(200) DEFAULT NULL,
  `EmployementType` varchar(200) DEFAULT NULL,
  `Designation` varchar(200) DEFAULT NULL,
  `Ctc` decimal(10,0) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `Skills` varchar(200) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblexperience`
--

INSERT INTO `tblexperience` (`ID`, `UserID`, `EmployerName`, `EmployementType`, `Designation`, `Ctc`, `FromDate`, `ToDate`, `Skills`, `CreationDate`) VALUES
(1, 1, 'ABC PVT LTD', 'Full Time', 'Software Developer', '50000', '2012-06-05', '2014-09-07', 'PHP,PDO', '2020-06-03 11:12:01'),
(2, 1, 'PAL pvt ltd', 'Full Time', 'Software Developer', '60000', '2014-09-08', '2018-06-09', 'PHP,PDO', '2020-06-03 11:14:41'),
(3, 1, 'FALT pvt ltd', 'Full Time', 'Software Developer', '75000', '2019-09-08', '', 'PHP, PDO', '2020-06-03 11:17:54'),
(4, 1, 'HMT Pvt ltd', 'fulltime', 'Software Developer', '75000', '2020-01-09', '', 'PHP, PDO, HTML, Excel', '2020-06-03 12:12:40'),
(5, 3, 'ABC', 'Fulltimw', 'Software Developer', '25000', '2019-07-02', '2020-02-29', '', '2020-09-02 18:15:05'),
(6, 3, 'XYZ', 'Fulltime', 'Software Developer', '40000', '2020-03-01', '2020-09-02', '', '2020-09-02 18:15:43'),
(7, 5, 'Mr Wick ', 'Fulltime', 'Project Manager', '10000', '2016-02-01', '2020-05-02', '', '2023-05-02 01:40:51'),
(8, 4, 'Avaitor Takeoff', 'Fulltime', 'System Design, Front-end development', '20000', '2016-10-10', '2022-02-21', '', '2023-05-02 01:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbljobs`
--

CREATE TABLE `tbljobs` (
  `jobId` int(11) NOT NULL,
  `employerId` int(11) NOT NULL,
  `jobCategory` varchar(255) DEFAULT NULL,
  `jobTitle` varchar(255) DEFAULT NULL,
  `jobType` varchar(255) DEFAULT NULL,
  `salaryPackage` char(200) DEFAULT NULL,
  `skillsRequired` varchar(255) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `jobLocation` varchar(255) DEFAULT NULL,
  `jobDescription` mediumtext DEFAULT NULL,
  `JobExpdate` date DEFAULT NULL,
  `postinDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `isActive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljobs`
--

INSERT INTO `tbljobs` (`jobId`, `employerId`, `jobCategory`, `jobTitle`, `jobType`, `salaryPackage`, `skillsRequired`, `experience`, `jobLocation`, `jobDescription`, `JobExpdate`, `postinDate`, `updationDate`, `isActive`) VALUES
(8, 4, 'HR', 'HR OFFICER', 'Full Time', '1000 - 5000', 'EXECUTIVE TRAINING', '2', 'KUMASI', 'A HR OFFICER IS NEEDED', '2023-03-09', '2023-04-29 03:03:19', '2023-05-02 03:05:13', 1),
(9, 4, 'Finance', 'Accountants and Auditors', 'Full Time', '4000 - 7000', 'Marketing skills', '2', 'Accra', '<span style=\"font-family: &quot;DM Sans&quot;, sans-serif; font-size: 17px;\"><b>Accountants</b></span><span style=\"color: rgb(0, 0, 0); font-family: &quot;DM Sans&quot;, sans-serif; font-size: 17px;\"><b> </b>and <b>auditors</b> needed to analyze company’s finances and prepare financial documents.&nbsp;</span>', '2024-11-03', '2023-04-29 03:17:04', '2023-05-02 03:09:28', 1),
(10, 5, 'Development - IT', 'SOFTWARE APPLICATION DEVELOPER', 'Contract', '1000 - 25000', 'JAVA, JS ,REACT JS, NODE JS', '4', 'Accra', 'A SOFTWARE APPLICATION DEVELOPER is needed. \r\nNote: This is a 3 months contract job', '2023-08-08', '2023-05-02 04:06:04', '2023-05-02 04:16:59', 1),
(11, 5, 'Development - IT', 'FRONT-END DEVELOPMENT', 'Freelance', '4000 - 7000', 'HTML,CSS,JS ,REACT JS, NODE JS, BOOTSTRAP', '2', 'Accra, kumashi and Capecoast', 'A front-end developer is needed in our company.. you will be working with the UI/UX team', '2023-10-20', '2023-05-02 04:11:51', '2023-05-02 04:17:48', 1),
(12, 5, 'Development - IT', 'JAVA DEVELOPMENT', 'Full Time', '5000 to $10000', 'CORE JAVA', '3', 'Accra, Remote', 'FULL JAVA DEVELOPER IS NEEDED FOR SOFTWARE DEVELOPMENT AND MANAGEMENT', '2023-07-21', '2023-05-02 04:16:23', NULL, 1),
(13, 6, 'Finance', 'ACCOUNTING', 'Full Time', '$500 to $1000', 'Accounting Skills, Good communication', '3', 'KUMASI', 'AN ACCOUNTANT IS NEEDED TO HELP KEEP TRACK', '2024-12-09', '2023-05-02 04:23:04', NULL, 1),
(14, 6, 'HR', 'HR EXCUTIVE', 'Contract', '1000 - 5000', 'EXECUTIVE TRAINING, INDUCTION, EMPLOYEE RELATIONS', '4', 'Accra', 'YOUR TASK WILL BE TO TRAIN AND INDUCT', '2024-06-07', '2023-05-02 04:29:42', NULL, 1),
(15, 8, 'Marketing', 'MARKETING', 'Freelance', '500 to $1000', 'Marketing skills', '2', 'Accra, kumasi and Capecoast', 'YOUR MARKETING SKILLS WILL BE NEEDED TO HELP MARKET OUR PRODUCT', '2024-01-02', '2023-05-02 04:33:14', NULL, 1),
(16, 8, 'HR', 'HR OFFICE', 'Full Time', '4000 - 7000', 'OFFICE WORKS AND GOOD TIME MANAGEMENT', '4', 'Accra and Kumasi', 'You should also have a Good communication skill', '2024-01-03', '2023-05-02 04:37:34', NULL, 1),
(17, 7, 'Development - IT', 'PHP DEVELOPER', 'Full Time', '3000 - 9000', 'PHP, MYSQL,HTML', '2', 'kumasi, Remote', 'we are in search of php developer to help manage and maintain our database', '2023-09-30', '2023-05-02 04:47:11', NULL, 1),
(18, 7, 'Marketing', 'HR MANAGEMNT / MARTKING', 'Temporary', '500 to $1000', 'Marketing skills and HR management skills', '3', 'Accra and Kumasi', 'A HR manager with an experience of 3years is needed also note that you will be involved in marketing our product', '2023-11-10', '2023-05-02 04:51:51', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbljobseekers`
--

CREATE TABLE `tbljobseekers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(150) DEFAULT NULL,
  `EmailId` varchar(150) DEFAULT NULL,
  `ContactNumber` bigint(15) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  `Resume` varchar(150) DEFAULT NULL,
  `AboutMe` mediumtext DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `Skills` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsActive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljobseekers`
--

INSERT INTO `tbljobseekers` (`id`, `FullName`, `EmailId`, `ContactNumber`, `Password`, `Resume`, `AboutMe`, `ProfilePic`, `Skills`, `RegDate`, `LastUpdationDate`, `IsActive`) VALUES
(2, 'Sarita', 'sarita@gmail.com', 9878979879, '$2y$12$A.hc1lnvQEx/yJmqdAtFveJDy/4YrmXErdh0rAs8YfZXGFAMQdu/i', '7b46decdf5055deead5bda75bca512521591076613.pdf', NULL, NULL, 'PHP, CodeIgniter', '2020-06-02 05:43:33', '2020-09-02 17:24:04', 1),
(4, 'Mikel kweku', 'kwekumike@seek.com', 543333334, '$2y$12$V8qX/1FHUk/PMSDHuGHzo.bJkSN2T0f/BZuVm/qNgGcczAGtdJ3/C', '965bc9d3836baf285a5fbfe9a7bf51d11682991812.pdf', 'AWESOME IN EVERYTHING', '462423f3c2ff8af1b9c49ece3018bd601682991853.png', 'i can do all things AKA believe', '2023-04-29 03:54:35', '2023-05-02 05:12:22', 1),
(5, 'Learner Mary', 'learnermary@food.com', 1234567, '$2y$12$J7PFmzGET4aTkqEsu4cdYeAzIRBktIeIgW0rNeU8ke12pv3FWlD.6', '965bc9d3836baf285a5fbfe9a7bf51d11682990989.pdf', 'I LOVE BEING MARY *WINKS*', '9517827a64d23210557773cc4418c2831682991067.png', 'Marketing Executive, Project Manager, Sales Executive', '2023-05-02 01:29:49', '2023-05-02 01:33:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `ID` int(10) NOT NULL,
  `JobID` int(5) DEFAULT NULL,
  `UserID` int(5) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmessage`
--

INSERT INTO `tblmessage` (`ID`, `JobID`, `UserID`, `Message`, `Status`, `ResponseDate`) VALUES
(4, 8, 4, 'NOT Qualified for this position', 'Rejected', '2023-04-29 04:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` longtext DEFAULT NULL,
  `Email` varchar(200) NOT NULL,
  `MobileNumber` bigint(10) NOT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<div class=\"iw-heading  style1 vc_custom_1511523196571 border-color-theme\" style=\"outline: none; box-sizing: border-box; margin-top: 0px; margin-right: auto; margin-left: auto; color: rgb(119, 119, 119); font-family: \" open=\"\" sans\";=\"\" font-size:=\"\" 13px;=\"\" width:=\"\" 670px;=\"\" margin-bottom:=\"\" 35px=\"\" !important;\"=\"\"><div class=\"iwh-description\" style=\"outline: none; box-sizing: border-box; color: rgb(51, 51, 51); font-size: 16px; line-height: 28px; font-weight: 600;\">Our job pilot creates an opportunity for both job seekers and organizations to embrace an easy employment process. Users can register for free on this job portal and receive job postings and updates related to their career search or&nbsp;field.</div></div><div class=\"iw-heading  style1 vc_custom_1511523484678 border-color-theme\" style=\"outline: none; box-sizing: border-box; margin-top: 0px; margin-right: auto; margin-left: auto; color: rgb(119, 119, 119); font-family: \" open=\"\" sans\";=\"\" font-size:=\"\" 13px;=\"\" width:=\"\" 670px;=\"\" margin-bottom:=\"\" 30px=\"\" !important;\"=\"\"><div class=\"iwh-description\" style=\"outline: none; box-sizing: border-box; color: rgb(51, 51, 51); font-size: 16px; line-height: 28px;\">As an organization, you can make use of our job portal to post different job openings as well as use them for searching for the most deserving candidates for vacancies. This helps to save time and help streamline the right candidate for a particular job.<br style=\"outline: none; box-sizing: border-box;\">Who can use our online job portal?<br style=\"outline: none; box-sizing: border-box;\">Our job portal can be used by both organizations to post job openings and job seekers to find the job of their choice. Our job pilot creates a platform for people seeking job opportunities and corporations seeking the best candidates for job openings to come together.<br style=\"outline: none; box-sizing: border-box;\">At www.job-here.com, we are one of the best job sites and we also have provisions that make it possible for them to collect the required knowledge and background of each company or candidate. All the jobs are categorically organized in groups related to each field and industry. Job pilots, also known as Career portals have aided numerous job seekers get suitable work and given a boost to their career growth.<br style=\"outline: none; box-sizing: border-box;\">So do not hesitate to explore your career opportunities with our job portal and give your career the elevation that you have always been waiting for.</div></div>', '2020-06-05 12:18:06', 0, '2023-05-02 02:52:35'),
(2, 'contactus', 'Contact Us', 'The Synagogue Church of All Nations', 'jobpilot@gmail.com', 1234567890, '2023-05-02 03:48:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tbleducation`
--
ALTER TABLE `tbleducation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblemployers`
--
ALTER TABLE `tblemployers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblexperience`
--
ALTER TABLE `tblexperience`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `tbljobs`
--
ALTER TABLE `tbljobs`
  ADD PRIMARY KEY (`jobId`);

--
-- Indexes for table `tbljobseekers`
--
ALTER TABLE `tbljobseekers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbleducation`
--
ALTER TABLE `tbleducation`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblemployers`
--
ALTER TABLE `tblemployers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblexperience`
--
ALTER TABLE `tblexperience`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbljobs`
--
ALTER TABLE `tbljobs`
  MODIFY `jobId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbljobseekers`
--
ALTER TABLE `tbljobseekers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
