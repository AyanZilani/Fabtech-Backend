-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2020 at 10:08 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fabtech`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesstoken`
--

CREATE TABLE `accesstoken` (
  `id` varchar(255) NOT NULL,
  `ttl` int(11) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accesstoken`
--

INSERT INTO `accesstoken` (`id`, `ttl`, `scopes`, `created`, `userId`) VALUES
('scLwQrJghSjjGpp4f3PnbuBW3OGCENYhdUfxWwENh9siJ98sGDVDBovdoSW99lYJ', 1209600, NULL, '2020-02-20 07:53:06', 5);

-- --------------------------------------------------------

--
-- Table structure for table `acl`
--

CREATE TABLE `acl` (
  `id` int(11) NOT NULL,
  `model` varchar(512) DEFAULT NULL,
  `property` varchar(512) DEFAULT NULL,
  `accessType` varchar(512) DEFAULT NULL,
  `permission` varchar(512) DEFAULT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `additionalcertificate`
--

CREATE TABLE `additionalcertificate` (
  `id` int(11) NOT NULL,
  `certificate_name` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `additionalcertificate`
--

INSERT INTO `additionalcertificate` (`id`, `certificate_name`) VALUES
(1, 'T-BOISIET'),
(2, 'Authorized Entrant and Standby Person (AESP) Certificate'),
(3, 'Oil and Gas Safety Passport (OGSP) Certificate'),
(4, 'CIDB green card'),
(5, 'Medical');

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `icno` varchar(50) DEFAULT NULL,
  `passportno` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `street1` varchar(100) DEFAULT NULL,
  `street2` varchar(100) DEFAULT NULL,
  `street3` varchar(100) DEFAULT NULL,
  `postcode` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `profile_pic` varchar(50) DEFAULT NULL,
  `attachment_ic` varchar(50) DEFAULT NULL,
  `attachment_passport` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `attachment_education` varchar(50) DEFAULT NULL,
  `attachment_resumecv` varchar(50) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`id`, `name`, `icno`, `passportno`, `nationality`, `street1`, `street2`, `street3`, `postcode`, `city`, `state`, `country`, `dob`, `age`, `profile_pic`, `attachment_ic`, `attachment_passport`, `education`, `attachment_education`, `attachment_resumecv`, `phone_no`, `user_id`) VALUES
(1, 'Saiful', '121212', '', '', '', '', '', '', '', '', '', '', '', '768px-NafSadh_Profile.jpg', '', '', '', '', '', '', 6);

-- --------------------------------------------------------

--
-- Table structure for table `applicantapplication`
--

CREATE TABLE `applicantapplication` (
  `id` int(11) NOT NULL,
  `application_datetime` text DEFAULT NULL,
  `application_type` varchar(512) DEFAULT NULL,
  `application_status` varchar(512) DEFAULT NULL,
  `applicant_trade` varchar(512) DEFAULT NULL,
  `isHide` tinyint(1) DEFAULT NULL,
  `isAssign` tinyint(1) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `job_available_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applicantapplication`
--

INSERT INTO `applicantapplication` (`id`, `application_datetime`, `application_type`, `application_status`, `applicant_trade`, `isHide`, `isAssign`, `applicant_id`, `job_available_id`) VALUES
(1, '2020-2-20 14:42:43', 'Self-apply', 'Accepted', 'Welder', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `applicantcertificates`
--

CREATE TABLE `applicantcertificates` (
  `id` int(11) NOT NULL,
  `types` varchar(512) DEFAULT NULL,
  `expired` varchar(512) DEFAULT NULL,
  `levels` varchar(512) DEFAULT NULL,
  `clevel` varchar(512) DEFAULT NULL,
  `welding` varchar(512) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `attachment_certificate` varchar(512) DEFAULT NULL,
  `trade_name` varchar(512) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  `isInvited` tinyint(1) DEFAULT NULL,
  `inv_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applicantcertificates`
--

INSERT INTO `applicantcertificates` (`id`, `types`, `expired`, `levels`, `clevel`, `welding`, `experience`, `attachment_certificate`, `trade_name`, `applicant_id`, `remark`, `isInvited`, `inv_id`) VALUES
(1, 'Driving License', '2020-02-29', '', '', '', 5, 'lt22671785.png', 'Driver', 1, NULL, NULL, NULL),
(2, 'CIDB green card', '2020-02-29', NULL, NULL, NULL, NULL, 'lt22671785.png', NULL, 1, 'Additional', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applicanttrades`
--

CREATE TABLE `applicanttrades` (
  `id` int(11) NOT NULL,
  `trade_name` varchar(512) DEFAULT NULL,
  `applicant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applicanttrades`
--

INSERT INTO `applicanttrades` (`id`, `trade_name`, `applicant_id`) VALUES
(1, 'Pipe Fitter', 1),
(2, 'Grinder', 1),
(3, 'Material Coordinator', 1);

-- --------------------------------------------------------

--
-- Table structure for table `broadcastmessage`
--

CREATE TABLE `broadcastmessage` (
  `id` int(11) NOT NULL,
  `broadcast_message_content` varchar(512) NOT NULL,
  `broadcast_message_datetime` varchar(512) NOT NULL,
  `fa_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `certificate_name` varchar(512) DEFAULT NULL,
  `isAdditional` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `comment_content` varchar(512) DEFAULT NULL,
  `comment_datetime` varchar(512) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dailylogreport`
--

CREATE TABLE `dailylogreport` (
  `id` int(11) NOT NULL,
  `log` varchar(512) DEFAULT NULL,
  `log_attachment` varchar(512) DEFAULT NULL,
  `log_date` varchar(512) DEFAULT NULL,
  `log_time` varchar(512) DEFAULT NULL,
  `modified_datetime` varchar(512) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `sv_eng_id` int(11) DEFAULT NULL,
  `log_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dailylogreport`
--

INSERT INTO `dailylogreport` (`id`, `log`, `log_attachment`, `log_date`, `log_time`, `modified_datetime`, `project_id`, `sv_eng_id`, `log_type_id`) VALUES
(1, 'crew log', 'lt22671785.png', '20/2/2020', '15:3:41', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dailytimesheet`
--

CREATE TABLE `dailytimesheet` (
  `id` int(11) NOT NULL,
  `time_in` varchar(512) DEFAULT NULL,
  `time_out` varchar(512) DEFAULT NULL,
  `time_in2` varchar(512) DEFAULT NULL,
  `time_out2` varchar(512) DEFAULT NULL,
  `isPresent` tinyint(1) DEFAULT NULL,
  `normal_wh` int(11) DEFAULT NULL,
  `ot_wh` varchar(512) DEFAULT NULL,
  `date` varchar(512) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `sv_eng_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dailytimesheet`
--

INSERT INTO `dailytimesheet` (`id`, `time_in`, `time_out`, `time_in2`, `time_out2`, `isPresent`, `normal_wh`, `ot_wh`, `date`, `applicant_id`, `sv_eng_id`, `project_id`) VALUES
(1, '08:00', '22:00', '', '', 1, 14, NULL, '20/2/2020', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dailytimesheetdetails`
--

CREATE TABLE `dailytimesheetdetails` (
  `id` int(11) NOT NULL,
  `time_in` varchar(512) NOT NULL,
  `time_out` varchar(512) NOT NULL,
  `hours_left` varchar(512) NOT NULL,
  `dtd_attachment` varchar(512) NOT NULL,
  `sv_verified` varchar(512) NOT NULL,
  `client_rep_verified` varchar(512) NOT NULL,
  `dt_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fabtechadmin`
--

CREATE TABLE `fabtechadmin` (
  `id` int(11) NOT NULL,
  `fa_name` varchar(512) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fbuser`
--

CREATE TABLE `fbuser` (
  `id` int(11) NOT NULL,
  `username` varchar(512) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `title` varchar(512) DEFAULT NULL,
  `realm` varchar(512) DEFAULT NULL,
  `emailVerified` tinyint(1) DEFAULT NULL,
  `verificationToken` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fbuser`
--

INSERT INTO `fbuser` (`id`, `username`, `password`, `email`, `title`, `realm`, `emailVerified`, `verificationToken`) VALUES
(1, 'applicant1', '$2a$10$E24HLtiayiWeRYPg6taqKOUoICq/OEvp7DdaHOhheKHEmiKmn0Qia', 'applicant1@system.com', NULL, NULL, NULL, NULL),
(2, 'Operational_director', '$2a$10$eX62KtPYRi14m1jHCUPUzuyJFia7L3LBdx8ib3Hk3Fg.f3ifuNR2W', 'Operational_director@system.com', NULL, NULL, NULL, NULL),
(3, 'Fabtech_admin', '$2a$10$yptzbbKOD0.Q2j9L1EFErudgmC52bloCnt1EU0Y3AXMpdKe/Z3pKS', 'Fabtech_admin@system.com', NULL, NULL, NULL, NULL),
(4, 'Site_sv_engineer', '$2a$10$Xh5iGDMuxDI9UOB.4Vgt0.TMYr1vUFQD2SotHx.YH6h2mf0j.iDte', 'Site_sv_engineer@system.com', NULL, NULL, NULL, NULL),
(5, 'Top_management', '$2a$10$4gEZBZTzkN.2mya/xs4pD.Hd8/zkw/52z6tAu0EoWjFuSbBXQ9Oqa', 'Top_management@system.com', NULL, NULL, NULL, NULL),
(6, 'Saiful', '$2a$10$Q8A.z.Z8MhTxZONSloPo3Ou6B/07KfXxpB8YrjwnUzrw4CZk2OZKC', 'saiful@system.com', NULL, NULL, NULL, NULL),
(7, 'Ahmad', '$2a$10$hXQnGRhQG/ScjH1QMx7VvO7AToeQ./pgUx7WIillP/ndp2nPTkO1C', 'ahmad@system.com', 'Foreman', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fbuserdetails`
--

CREATE TABLE `fbuserdetails` (
  `id` int(11) NOT NULL,
  `user_icno` varchar(512) DEFAULT NULL,
  `user_phoneno` varchar(512) DEFAULT NULL,
  `user_address` varchar(512) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fbuserdetails`
--

INSERT INTO `fbuserdetails` (`id`, `user_icno`, `user_phoneno`, `user_address`, `user_id`) VALUES
(1, NULL, NULL, NULL, 6),
(2, NULL, NULL, NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `internalmessage`
--

CREATE TABLE `internalmessage` (
  `id` int(11) NOT NULL,
  `content` varchar(512) DEFAULT NULL,
  `send_datetime` varchar(512) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `internalmessage`
--

INSERT INTO `internalmessage` (`id`, `content`, `send_datetime`, `sender_id`, `project_id`) VALUES
(1, 'Test ', '20/2/2020 14:58:27', 2, 1),
(2, 'test', '20/2/2020 15:54:12', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `issueslist`
--

CREATE TABLE `issueslist` (
  `id` int(11) NOT NULL,
  `issue_datetime` varchar(512) DEFAULT NULL,
  `location` varchar(512) DEFAULT NULL,
  `due_date` varchar(512) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `attachment` varchar(512) DEFAULT NULL,
  `status` varchar(512) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  `isHide` tinyint(1) DEFAULT NULL,
  `isImpactAWO` tinyint(1) DEFAULT NULL,
  `modified_datetime` varchar(512) DEFAULT NULL,
  `issuetype_id` int(11) DEFAULT NULL,
  `issued_by` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issueslist`
--

INSERT INTO `issueslist` (`id`, `issue_datetime`, `location`, `due_date`, `description`, `attachment`, `status`, `remark`, `isHide`, `isImpactAWO`, `modified_datetime`, `issuetype_id`, `issued_by`, `project_id`) VALUES
(1, '20/2/2020 15:47:33', 'Kapal A', '2020-02-24', 'description', 'lt22671785.png', 'In Progress', NULL, 0, 1, '2020/2/20 15:48', 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `issuetype`
--

CREATE TABLE `issuetype` (
  `id` int(11) NOT NULL,
  `name` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issuetype`
--

INSERT INTO `issuetype` (`id`, `name`) VALUES
(1, 'HSE'),
(2, 'Equipment'),
(3, 'Quality'),
(4, 'Material'),
(5, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `jobsavailable`
--

CREATE TABLE `jobsavailable` (
  `id` int(11) NOT NULL,
  `job_name` varchar(512) DEFAULT NULL,
  `preferred_trade` varchar(512) DEFAULT NULL,
  `job_description` varchar(512) DEFAULT NULL,
  `job_scope` varchar(512) DEFAULT NULL,
  `job_responsible` varchar(512) DEFAULT NULL,
  `job_location` varchar(512) DEFAULT NULL,
  `job_requirement1` varchar(512) DEFAULT NULL,
  `job_requirement2` varchar(512) DEFAULT NULL,
  `job_close` varchar(512) DEFAULT NULL,
  `job_start` varchar(512) DEFAULT NULL,
  `job_end` varchar(512) DEFAULT NULL,
  `rateperhour` varchar(512) DEFAULT NULL,
  `application_type` varchar(512) DEFAULT NULL,
  `no_position` varchar(512) DEFAULT NULL,
  `isHide` tinyint(1) DEFAULT NULL,
  `isClose` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobsavailable`
--

INSERT INTO `jobsavailable` (`id`, `job_name`, `preferred_trade`, `job_description`, `job_scope`, `job_responsible`, `job_location`, `job_requirement1`, `job_requirement2`, `job_close`, `job_start`, `job_end`, `rateperhour`, `application_type`, `no_position`, `isHide`, `isClose`) VALUES
(1, 'Welder', 'Welder', 'Welder Description', 'Welder scope', 'welder responsible', 'johor', 'req 1 ', 'req 2', '2020-02-21', '', '', '', 'Open', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobsinvitation`
--

CREATE TABLE `jobsinvitation` (
  `id` int(11) NOT NULL,
  `isDelete` tinyint(1) DEFAULT NULL,
  `job_available_id` int(11) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `logtype`
--

CREATE TABLE `logtype` (
  `id` int(11) NOT NULL,
  `name` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logtype`
--

INSERT INTO `logtype` (`id`, `name`) VALUES
(1, 'Crew'),
(2, 'Subcontractor'),
(3, 'Equipment'),
(4, 'Material');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `msg_title` varchar(512) NOT NULL,
  `msg_content` varchar(512) NOT NULL,
  `msg_datetime` varchar(512) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `msg_title`, `msg_content`, `msg_datetime`, `user_id`) VALUES
(1, 'new title ', 'content', '2020-2-20 14:43:48', 3);

-- --------------------------------------------------------

--
-- Table structure for table `operationaldirector`
--

CREATE TABLE `operationaldirector` (
  `id` int(11) NOT NULL,
  `od_name` varchar(512) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `post_title` varchar(512) DEFAULT NULL,
  `post_content` varchar(512) DEFAULT NULL,
  `post_datetime` varchar(512) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projectassigned`
--

CREATE TABLE `projectassigned` (
  `id` int(11) NOT NULL,
  `sv_eng_name` varchar(512) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projectcreated`
--

CREATE TABLE `projectcreated` (
  `id` int(11) NOT NULL,
  `project_name` varchar(512) DEFAULT NULL,
  `project_duration` varchar(512) DEFAULT NULL,
  `project_start` varchar(512) DEFAULT NULL,
  `project_end` varchar(512) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectcreated`
--

INSERT INTO `projectcreated` (`id`, `project_name`, `project_duration`, `project_start`, `project_end`, `service_id`) VALUES
(1, 'Megah Project', '2 Month(s)', '2020-03-01', '2020-04-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projectdetails`
--

CREATE TABLE `projectdetails` (
  `id` int(11) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `details_attachment` varchar(250) DEFAULT NULL,
  `details_remark` varchar(250) DEFAULT NULL,
  `isAdditional` tinyint(1) DEFAULT NULL,
  `modified_datetime` varchar(512) DEFAULT NULL,
  `start_datetime` varchar(512) DEFAULT NULL,
  `end_datetime` varchar(512) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `requestlist_id` int(11) DEFAULT NULL,
  `sv_eng_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectdetails`
--

INSERT INTO `projectdetails` (`id`, `details`, `status`, `details_attachment`, `details_remark`, `isAdditional`, `modified_datetime`, `start_datetime`, `end_datetime`, `project_id`, `requestlist_id`, `sv_eng_id`) VALUES
(1, 'detail 1', 'Approved', NULL, NULL, NULL, '20/2/2020 15:6:54', '20/2/2020 15:6:54', NULL, 1, NULL, 1),
(2, 'detail 2', 'Approved', NULL, NULL, NULL, '20/2/2020 15:10:20', '20/2/2020 15:10:20', NULL, 1, NULL, 1),
(3, 'detail 3', 'Approved', NULL, NULL, NULL, '20/2/2020 15:10:28', NULL, '20/2/2020 15:10:28', 1, NULL, 1),
(4, 'detail 5', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(5, 'detail 4', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(6, 'desc', 'In Progress', NULL, NULL, 1, '20/2/2020 15:43:32', '20/2/2020 15:43:32', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `projectsveng`
--

CREATE TABLE `projectsveng` (
  `id` int(11) NOT NULL,
  `sv_eng_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectsveng`
--

INSERT INTO `projectsveng` (`id`, `sv_eng_id`, `project_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `projectworker`
--

CREATE TABLE `projectworker` (
  `id` int(11) NOT NULL,
  `isPresent` tinyint(1) DEFAULT NULL,
  `trade` varchar(512) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `timesheet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectworker`
--

INSERT INTO `projectworker` (`id`, `isPresent`, `trade`, `applicant_id`, `project_id`, `timesheet_id`) VALUES
(1, 1, 'Welder', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `requestlist`
--

CREATE TABLE `requestlist` (
  `id` int(11) NOT NULL,
  `request_type` varchar(512) DEFAULT NULL,
  `request_datetime` varchar(512) DEFAULT NULL,
  `request_location` varchar(512) DEFAULT NULL,
  `request_status` varchar(512) DEFAULT NULL,
  `request_approvalName` varchar(512) DEFAULT NULL,
  `request_approvalType` varchar(512) DEFAULT NULL,
  `request_requestorType` varchar(512) DEFAULT NULL,
  `request_requestorName` varchar(512) DEFAULT NULL,
  `request_desc` varchar(512) DEFAULT NULL,
  `request_pic` varchar(512) DEFAULT NULL,
  `sv_eng_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requestlist`
--

INSERT INTO `requestlist` (`id`, `request_type`, `request_datetime`, `request_location`, `request_status`, `request_approvalName`, `request_approvalType`, `request_requestorType`, `request_requestorName`, `request_desc`, `request_pic`, `sv_eng_id`, `project_id`) VALUES
(1, 'Additional Work Order', '20/2/2020 15:39:20', 'Kapal A', 'Approved', 'Ali', 'Client', 'Client', 'Ali', 'desc', 'lt22671785.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Applicant', NULL, '2020-02-20 06:28:52', '2020-02-20 06:28:52'),
(2, 'Operational_director', NULL, '2020-02-20 06:28:52', '2020-02-20 06:28:52'),
(3, 'Fabtech_admin', NULL, '2020-02-20 06:28:52', '2020-02-20 06:28:52'),
(4, 'Site_sv_engineer', NULL, '2020-02-20 06:28:52', '2020-02-20 06:28:52'),
(5, 'Top_management', NULL, '2020-02-20 06:28:52', '2020-02-20 06:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `rolemapping`
--

CREATE TABLE `rolemapping` (
  `id` int(11) NOT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rolemapping`
--

INSERT INTO `rolemapping` (`id`, `principalType`, `principalId`, `roleId`) VALUES
(1, 'User', '1', 1),
(2, 'User', '2', 2),
(3, 'User', '3', 3),
(4, 'User', '4', 4),
(5, 'User', '5', 5),
(6, 'USER', '6', 1),
(7, 'USER', '7', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sitesvengineer`
--

CREATE TABLE `sitesvengineer` (
  `id` int(11) NOT NULL,
  `sv_eng_name` varchar(512) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sitesvengineer`
--

INSERT INTO `sitesvengineer` (`id`, `sv_eng_name`, `user_id`) VALUES
(1, 'Ahmad', 7);

-- --------------------------------------------------------

--
-- Table structure for table `taskdetails`
--

CREATE TABLE `taskdetails` (
  `id` int(11) NOT NULL,
  `task_title` varchar(512) NOT NULL,
  `task_details` varchar(512) NOT NULL,
  `task_datetime` varchar(512) NOT NULL,
  `task_status` varchar(512) NOT NULL,
  `top_management_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `topmanagement`
--

CREATE TABLE `topmanagement` (
  `id` int(11) NOT NULL,
  `top_management_name` varchar(512) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tradecertlinked`
--

CREATE TABLE `tradecertlinked` (
  `id` int(11) NOT NULL,
  `trade_name` varchar(512) DEFAULT NULL,
  `certificate_name` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tradecertlinked`
--

INSERT INTO `tradecertlinked` (`id`, `trade_name`, `certificate_name`) VALUES
(1, 'Blaster Painter', 'Blasting & Painting Certificate'),
(2, 'Driver', 'Driving License'),
(3, 'Electrician', 'Electrician Certificate'),
(4, 'Fire Watcher', 'Fire Watcher Safety Certificate'),
(5, 'General Worker', NULL),
(6, 'GRE Bonder', 'GRE/FRP Bonders Certificate'),
(7, 'Helper', NULL),
(8, 'Instrument Technician', 'Instrumentation Certificate'),
(9, 'Material Coordinator', NULL),
(10, 'Mechanical Fitter', 'Mechanical Fitter Certificate'),
(11, 'Pipe Fitter', 'Pipe Fitter Certificate'),
(12, 'PTW Coordinator', NULL),
(13, 'QA/QC', 'Welding Inspector Certificate'),
(14, 'Rigger', 'Rigging & Slinging Certificate'),
(15, 'Safety Supervisor', 'Site Safety Supervisor (SSS) Certificate'),
(16, 'Scaffolder', 'Scaffolding Certificate'),
(17, 'Scaffolding Inspector', 'Scaffolding Inspector Certificate'),
(18, 'Welder', 'Welding Certificate'),
(19, 'Foreman', NULL),
(20, 'Marker', NULL),
(21, 'Grinder', NULL),
(22, 'Quality Controller', NULL),
(23, 'Safety Promoter', NULL),
(24, 'Semi Skill', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trades`
--

CREATE TABLE `trades` (
  `id` int(11) NOT NULL,
  `trade_name` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trades`
--

INSERT INTO `trades` (`id`, `trade_name`) VALUES
(1, 'Blaster Painter'),
(2, 'Driver'),
(3, 'Electrician'),
(4, 'Fire Watcher'),
(5, 'General Worker'),
(6, 'GRE Bonder'),
(7, 'Helper'),
(8, 'Instrument Technician'),
(9, 'Material Coordinator'),
(10, 'Mechanical Fitter'),
(11, 'Pipe Fitter'),
(12, 'PTW Coordinator'),
(13, 'QA/QC'),
(14, 'Rigger'),
(15, 'Safety Supervisor'),
(16, 'Scaffolder'),
(17, 'Scaffolding Inspector'),
(18, 'Welder'),
(19, 'Foreman'),
(20, 'Marker'),
(21, 'Grinder'),
(22, 'Quality Controller'),
(23, 'Safety Promoter'),
(24, 'Semi Skill');

-- --------------------------------------------------------

--
-- Table structure for table `typeofservices`
--

CREATE TABLE `typeofservices` (
  `id` int(11) NOT NULL,
  `service_name` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `typeofservices`
--

INSERT INTO `typeofservices` (`id`, `service_name`) VALUES
(1, 'Marine'),
(2, 'Offshore'),
(3, 'Supply');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesstoken`
--
ALTER TABLE `accesstoken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acl`
--
ALTER TABLE `acl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `additionalcertificate`
--
ALTER TABLE `additionalcertificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicantapplication`
--
ALTER TABLE `applicantapplication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicantcertificates`
--
ALTER TABLE `applicantcertificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicanttrades`
--
ALTER TABLE `applicanttrades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `broadcastmessage`
--
ALTER TABLE `broadcastmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailylogreport`
--
ALTER TABLE `dailylogreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailytimesheet`
--
ALTER TABLE `dailytimesheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dailytimesheetdetails`
--
ALTER TABLE `dailytimesheetdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabtechadmin`
--
ALTER TABLE `fabtechadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fbuser`
--
ALTER TABLE `fbuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fbuserdetails`
--
ALTER TABLE `fbuserdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internalmessage`
--
ALTER TABLE `internalmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issueslist`
--
ALTER TABLE `issueslist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issuetype`
--
ALTER TABLE `issuetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobsavailable`
--
ALTER TABLE `jobsavailable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobsinvitation`
--
ALTER TABLE `jobsinvitation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logtype`
--
ALTER TABLE `logtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operationaldirector`
--
ALTER TABLE `operationaldirector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectassigned`
--
ALTER TABLE `projectassigned`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectcreated`
--
ALTER TABLE `projectcreated`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectdetails`
--
ALTER TABLE `projectdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectsveng`
--
ALTER TABLE `projectsveng`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectworker`
--
ALTER TABLE `projectworker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requestlist`
--
ALTER TABLE `requestlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rolemapping`
--
ALTER TABLE `rolemapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `principalId` (`principalId`);

--
-- Indexes for table `sitesvengineer`
--
ALTER TABLE `sitesvengineer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taskdetails`
--
ALTER TABLE `taskdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topmanagement`
--
ALTER TABLE `topmanagement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tradecertlinked`
--
ALTER TABLE `tradecertlinked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trades`
--
ALTER TABLE `trades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typeofservices`
--
ALTER TABLE `typeofservices`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acl`
--
ALTER TABLE `acl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `additionalcertificate`
--
ALTER TABLE `additionalcertificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applicantapplication`
--
ALTER TABLE `applicantapplication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applicantcertificates`
--
ALTER TABLE `applicantcertificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `applicanttrades`
--
ALTER TABLE `applicanttrades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `broadcastmessage`
--
ALTER TABLE `broadcastmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dailylogreport`
--
ALTER TABLE `dailylogreport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dailytimesheet`
--
ALTER TABLE `dailytimesheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dailytimesheetdetails`
--
ALTER TABLE `dailytimesheetdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fabtechadmin`
--
ALTER TABLE `fabtechadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fbuser`
--
ALTER TABLE `fbuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fbuserdetails`
--
ALTER TABLE `fbuserdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `internalmessage`
--
ALTER TABLE `internalmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `issueslist`
--
ALTER TABLE `issueslist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `issuetype`
--
ALTER TABLE `issuetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobsavailable`
--
ALTER TABLE `jobsavailable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobsinvitation`
--
ALTER TABLE `jobsinvitation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logtype`
--
ALTER TABLE `logtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `operationaldirector`
--
ALTER TABLE `operationaldirector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projectassigned`
--
ALTER TABLE `projectassigned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projectcreated`
--
ALTER TABLE `projectcreated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projectdetails`
--
ALTER TABLE `projectdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projectsveng`
--
ALTER TABLE `projectsveng`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projectworker`
--
ALTER TABLE `projectworker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `requestlist`
--
ALTER TABLE `requestlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rolemapping`
--
ALTER TABLE `rolemapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sitesvengineer`
--
ALTER TABLE `sitesvengineer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taskdetails`
--
ALTER TABLE `taskdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topmanagement`
--
ALTER TABLE `topmanagement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tradecertlinked`
--
ALTER TABLE `tradecertlinked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `trades`
--
ALTER TABLE `trades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `typeofservices`
--
ALTER TABLE `typeofservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
