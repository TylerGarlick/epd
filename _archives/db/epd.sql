-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2014 at 05:41 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `epd`
--
CREATE DATABASE IF NOT EXISTS `epd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `epd`;

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(30) NOT NULL,
  `area_activeFlag` tinyint(4) NOT NULL DEFAULT '1',
  `user_id` int(20) NOT NULL,
  `datetime_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `area_name`, `area_activeFlag`, `user_id`, `datetime_created`) VALUES
(1, 'CVD', 1, 11, '2014-04-30 12:01:56'),
(2, 'Diffusion', 1, 11, '2014-04-30 12:01:56'),
(3, 'Dry Etch', 1, 11, '2014-04-30 12:01:56'),
(4, 'Photo', 1, 11, '2014-04-30 12:01:56'),
(5, 'Wet Process', 1, 13, '2014-04-30 21:42:22'),
(6, 'test-area', 1, 13, '2014-04-30 21:42:00'),
(7, 'test2', 1, 11, '2014-04-30 12:01:56'),
(8, 'RDA2', 1, 11, '2014-04-30 12:01:56'),
(9, 'test3', 1, 11, '2014-04-30 12:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `combine`
--

CREATE TABLE IF NOT EXISTS `combine` (
  `combine_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) NOT NULL,
  `combine_current_shift_id` int(11) NOT NULL,
  `combine_oncoming_shift_id` int(11) NOT NULL,
  `datetime_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `combine_comment_id` varchar(2000) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`combine_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `combine`
--

INSERT INTO `combine` (`combine_id`, `area_id`, `combine_current_shift_id`, `combine_oncoming_shift_id`, `datetime_created`, `combine_comment_id`, `user_id`) VALUES
(1, 1, 3, 4, '2014-05-22 09:34:17', '3,4,5,6,7,9,11,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,33,34,35,37,38,39,40,41,42,43,44,45,46,47,49,50,51,52', 13),
(2, 1, 4, 3, '2014-05-22 09:35:50', '3,4,5,6,7,9,11,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,33,34,35,37,38,39,40,41,42,43,44,45,46,47,49,50,51,52', 13),
(3, 1, 1, 2, '2014-05-22 09:36:21', '3,4,5,6,7,9,11,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,33,34,35,37,38,39,40,41,42,43,44,45,46,47,49,50,51,52', 13),
(4, 1, 2, 1, '2014-05-22 09:36:41', '3,4,5,6,7,9,11,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,33,34,35,37,38,39,40,41,42,43,44,45,46,47,49,50,51,52', 13),
(5, 1, 3, 4, '2014-05-22 09:44:22', '3,4,5,6,7,9,11,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,33,34,35,37,38,39,40,41,42,43,44,45,46,47,49,50,51,52', 13);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_value` varchar(1000) NOT NULL,
  `comment_activeFlag` tinyint(4) NOT NULL DEFAULT '1',
  `comment_showFlag` tinyint(4) NOT NULL DEFAULT '1',
  `tag_id` varchar(200) NOT NULL,
  `datetime_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `module_instance_id` int(11) NOT NULL,
  `module_item_id` int(11) NOT NULL,
  `comment_image_url` varchar(200) NOT NULL,
  `comment_imageThumb_url` varchar(200) NOT NULL,
  `comment_attributes_id` int(11) NOT NULL,
  `comment_frozenFlag` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `section_id`, `equipment_id`, `user_id`, `comment_value`, `comment_activeFlag`, `comment_showFlag`, `tag_id`, `datetime_created`, `module_instance_id`, `module_item_id`, `comment_image_url`, `comment_imageThumb_url`, `comment_attributes_id`, `comment_frozenFlag`) VALUES
(2, 1, 1, 11, 'test 4', 1, 0, '0', '2014-04-16 03:32:52', 0, 0, '', '', 0, 0),
(3, 1, 4, 11, 'test #2', 1, 1, '0', '2014-04-16 03:33:33', 0, 0, '', '', 0, 0),
(4, 2, 6, 11, 'test #2', 1, 1, '0', '2014-04-16 03:33:51', 0, 0, '', '', 0, 0),
(5, 3, 7, 11, 'test #2', 1, 1, '0', '2014-04-16 22:49:40', 0, 0, '', '', 0, 0),
(6, 4, 9, 11, 'test #2', 1, 1, '0', '2014-04-16 23:03:24', 0, 0, '', '', 0, 0),
(7, 4, 9, 11, 'test #2', 1, 1, '0', '2014-04-16 23:03:55', 0, 0, '', '', 0, 0),
(8, 1, 1, 11, 'test #2', 1, 0, '0', '2014-04-18 02:44:34', 0, 0, '', '', 0, 0),
(9, 1, 1, 11, 'Just another comment!', 1, 1, '0', '2014-04-18 04:32:49', 0, 0, '', '', 0, 0),
(10, 4, 10, 11, 'SOD Comment', 1, 0, '0', '2014-04-18 04:33:21', 0, 0, '', '', 0, 0),
(11, 4, 9, 11, 'Another SOD Comment', 1, 1, '0', '2014-04-18 04:33:41', 0, 0, '', '', 0, 0),
(12, 1, 1, 11, 'Test comment 3', 1, 0, '0', '2014-04-22 01:42:23', 0, 0, '', '', 0, 0),
(13, 1, 11, 11, 'This is another comment', 1, 0, '0', '2014-04-22 05:26:04', 0, 0, '', '', 0, 0),
(14, 2, 6, 11, 'gfdng', 1, 1, '0', '2014-04-24 03:14:02', 0, 0, '', '', 0, 0),
(15, 1, 1, 11, 'Another new comment', 1, 1, '0', '2014-04-25 00:26:50', 0, 0, '', '', 0, 0),
(16, 8, 18, 11, 'My New commmmmment!', 1, 1, '0', '2014-04-25 01:34:25', 0, 0, '', '', 0, 0),
(17, 4, 9, 11, 'Batch Change', 1, 1, '0', '2014-04-25 02:13:47', 0, 0, '', '', 0, 0),
(18, 8, 18, 11, 'Another comment', 1, 1, '0', '2014-04-25 03:00:11', 0, 0, '', '', 0, 0),
(19, 9, 19, 11, 'Heres my comment', 1, 1, '0', '2014-04-25 03:03:20', 0, 0, '', '', 0, 0),
(20, 1, 1, 11, 'picture test', 1, 1, '0', '2014-04-29 16:21:08', 0, 0, '', '', 0, 0),
(21, 1, 1, 11, 'picture test', 1, 1, '0', '2014-04-29 17:42:06', 0, 0, 'images/1398793984_patient1.jpg', 'images/thumb/thumb_1398793984_patient1.jpg', 0, 0),
(22, 1, 1, 11, 'test picture', 1, 1, '0', '2014-04-29 17:43:49', 0, 0, 'images/1398794252_patient2.jpg', 'images/thumb/thumb_1398794252_patient2.jpg', 0, 0),
(23, 1, 1, 11, 'test comment', 1, 1, '0', '2014-04-29 17:44:33', 0, 0, 'images/1398794252_patient2.jpg', 'images/thumb/thumb_1398794252_patient2.jpg', 0, 0),
(24, 1, 1, 11, 'test comment', 1, 1, '0', '2014-04-29 17:46:36', 0, 0, 'images/1398794252_patient2.jpg', 'images/thumb/thumb_1398794252_patient2.jpg', 0, 0),
(25, 1, 1, 13, 'test picture - edit page', 1, 1, '3,5,6', '2014-04-29 17:48:09', 0, 0, 'images/1400033660_1398794252_patient2.jpg', 'images/thumb/thumb_1400033660_1398794252_patient2.jpg', 0, 0),
(26, 1, 4, 11, 'text picture comment', 1, 1, '0', '2014-04-29 17:48:48', 0, 0, 'images/1398794252_patient2.jpg', 'images/thumb/thumb_1398794252_patient2.jpg', 0, 0),
(27, 1, 4, 11, 'test picture', 1, 1, '0', '2014-04-29 17:49:38', 0, 0, 'images/patient1.jpg', 'images/thumb/thumb_patient1.jpg', 0, 0),
(28, 1, 4, 11, 'test picture', 1, 1, '0', '2014-04-29 17:52:25', 0, 0, 'images/1398793945patient1.jpg', 'images/thumb/thumb_1398793945patient1.jpg', 0, 0),
(29, 1, 4, 11, 'test picture', 1, 1, '0', '2014-04-29 17:53:04', 0, 0, 'images/1398793984_patient1.jpg', 'images/thumb/thumb_1398793984_patient1.jpg', 0, 0),
(30, 2, 5, 11, 'test comment with picture', 1, 1, '0', '2014-04-29 17:57:32', 0, 0, 'images/1398794252_patient2.jpg', 'images/thumb/thumb_1398794252_patient2.jpg', 0, 0),
(31, 1, 1, 13, 'My comment', 0, 0, '0', '2014-04-29 19:46:01', 0, 0, '', '', 0, 0),
(32, 1, 1, 13, 'my comment with picture', 0, 0, '0', '2014-04-29 19:46:20', 0, 0, '', '', 0, 0),
(33, 9, 19, 13, 'My comment with picture', 1, 1, '0', '2014-04-29 19:49:03', 0, 0, '', '', 0, 0),
(34, 9, 19, 13, 'My comment without picture', 1, 1, '0', '2014-04-29 19:49:19', 0, 0, '', '', 0, 0),
(35, 4, 9, 16, 'test', 1, 1, '0', '2014-04-30 01:03:58', 0, 0, '', '', 0, 0),
(36, 1, 1, 16, 'test test', 1, 0, '0', '2014-04-30 01:04:26', 0, 0, '', '', 0, 0),
(37, 1, 15, 13, 'test test edited', 1, 1, '1,2,3', '2014-04-30 01:05:08', 0, 0, '', '', 0, 0),
(38, 3, 21, 16, 'test on vg', 1, 1, '0', '2014-04-30 01:10:00', 0, 0, '', '', 0, 0),
(39, 1, 1, 13, 'my comment', 1, 1, '0', '2014-04-30 03:12:27', 0, 0, '', '', 0, 0),
(40, 2, 5, 13, 'comment', 1, 1, '0', '2014-05-02 04:05:52', 0, 0, '', '', 0, 0),
(41, 4, 9, 13, 'Test', 1, 1, '0', '2014-05-02 04:07:24', 0, 0, '', '', 0, 0),
(42, 1, 1, 13, 'new comment with tag', 1, 1, '1', '2014-05-08 06:23:04', 0, 0, '', '', 0, 0),
(43, 1, 1, 13, 'new comment with tag', 1, 1, '1', '2014-05-08 06:23:38', 0, 0, '', '', 0, 0),
(44, 1, 1, 13, 'new comment tag', 1, 1, '3', '2014-05-08 06:25:23', 0, 0, '', '', 0, 0),
(45, 1, 1, 13, 'new comment w tag', 1, 1, '4', '2014-05-08 06:27:15', 0, 0, '', '', 0, 0),
(46, 1, 1, 13, 'new comment with tag', 1, 1, '1,2,3', '2014-05-08 06:28:03', 0, 0, '', '', 0, 0),
(47, 1, 1, 13, 'New comment with tag', 1, 1, '1,2,3,4', '2014-05-08 06:28:35', 0, 0, '', '', 0, 0),
(48, 7, 17, 13, 'test', 1, 0, '0', '2014-05-08 21:56:14', 0, 0, '', '', 0, 0),
(49, 1, 1, 13, 'Testing Module Comments', 1, 1, '0', '2014-05-09 12:09:04', 1, 1, '', '', 0, 0),
(50, 2, 5, 13, 'test tag', 1, 1, '1,5', '2014-05-10 04:16:34', 0, 0, '', '', 0, 0),
(51, 2, 22, 13, 'Test tag #2', 1, 1, '1,2', '2014-05-10 04:17:54', 0, 0, '', '', 0, 0),
(52, 1, 1, 13, 'Another comment for this module item', 1, 1, '1,2', '2014-05-15 04:11:20', 1, 1, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment_attributes`
--

CREATE TABLE IF NOT EXISTS `comment_attributes` (
  `comment_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_attributes_frozenFlag` tinyint(1) NOT NULL DEFAULT '0',
  `comment_attributes_hideOnCombineFlag` tinyint(4) NOT NULL DEFAULT '0',
  `comment_attributes_inProgressUserId` int(11) NOT NULL,
  PRIMARY KEY (`comment_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dam_daily`
--

CREATE TABLE IF NOT EXISTS `dam_daily` (
  `dam_daily_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `dam_daily_item_name` varchar(200) NOT NULL,
  `dam_daily_item_description` varchar(2000) NOT NULL,
  `created_by_user_id` int(11) NOT NULL,
  `dam_daily_item_completeFlag` tinyint(1) NOT NULL DEFAULT '0',
  `completed_by_user_id` int(11) NOT NULL,
  `datetime_completed` datetime NOT NULL,
  PRIMARY KEY (`dam_daily_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dam_history`
--

CREATE TABLE IF NOT EXISTS `dam_history` (
  `dam_history` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`dam_history`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE IF NOT EXISTS `equipment` (
  `equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `equipment_shortname` varchar(100) NOT NULL,
  `equipment_longname` varchar(100) NOT NULL,
  `equipment_activeFlag` tinyint(4) NOT NULL DEFAULT '1',
  `equipment_showFlag` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`equipment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`equipment_id`, `section_id`, `equipment_shortname`, `equipment_longname`, `equipment_activeFlag`, `equipment_showFlag`) VALUES
(1, 1, 'D08-C', 'TCPR2D08C0', 1, 1),
(4, 1, 'D08-B', 'TCPR2D08B0', 1, 1),
(5, 2, 'D61-A', 'BPPR2D61A0', 1, 1),
(6, 2, 'D61-B', 'BPPR2D61B0', 1, 1),
(7, 3, 'E18-A', 'HPPR2E18A0', 1, 1),
(8, 3, 'E18-B', 'HPPR2E18B0', 1, 1),
(9, 4, 'E83-3', 'SDAT2E8330', 1, 1),
(10, 4, 'E83-4', 'SDAT2E8340', 1, 1),
(11, 2, 'NNN', 'test4', 0, 1),
(12, 2, 'LongNameTest', 'Test', 1, 1),
(13, 1, 'Test2', 'Test2', 1, 1),
(14, 1, 'Test', 'LongNameTest', 0, 1),
(15, 1, 'D08-A', 'TCPR2D08A0', 1, 1),
(16, 2, 'MNT', 'My New Tool', 1, 1),
(17, 7, 'M68', 'OIVE2M6800', 1, 1),
(18, 8, 'DE-1', 'DE Tool 1', 1, 1),
(19, 9, 'DF-01', 'Batch Furance', 1, 1),
(20, 1, 'D44A', 'TCPR2D44A0', 1, 1),
(21, 3, 'nm2', 'new name2', 1, 1),
(22, 2, 'D61-C', 'BPPR2D61C0', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) NOT NULL,
  `module_type_id` int(11) NOT NULL,
  `module_name` varchar(200) NOT NULL,
  `module_type` varchar(200) NOT NULL,
  `module_description` varchar(1000) NOT NULL,
  `module_activeFlag` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `area_id`, `module_type_id`, `module_name`, `module_type`, `module_description`, `module_activeFlag`) VALUES
(1, 1, 1, 'Scotts Project', 'Shift Projects', '', 1),
(2, 1, 2, 'Nylon Filtered SOD', 'SharePoints', '', 1),
(3, 2, 3, 'Another Module', 'My Module', '', 1),
(4, 1, 4, 'Particle Recovery Plan', 'Action Plan', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_instance`
--

CREATE TABLE IF NOT EXISTS `module_instance` (
  `module_instance_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `module_instance_activeFlag` int(11) NOT NULL DEFAULT '1',
  `module_instance_showFlag` int(11) NOT NULL DEFAULT '1',
  `datetime_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`module_instance_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `module_instance`
--

INSERT INTO `module_instance` (`module_instance_id`, `module_id`, `section_id`, `equipment_id`, `user_id`, `tag_id`, `module_instance_activeFlag`, `module_instance_showFlag`, `datetime_created`) VALUES
(1, 1, 1, 1, 0, 0, 1, 1, '2014-05-09 17:14:47'),
(2, 1, 1, 15, 0, 1, 1, 1, '2014-05-14 11:10:10'),
(3, 2, 1, 15, 0, 2, 1, 1, '2014-05-14 11:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `module_item`
--

CREATE TABLE IF NOT EXISTS `module_item` (
  `module_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `module_item_headerOrder` int(100) NOT NULL,
  `module_item_headerName` varchar(1000) NOT NULL,
  `module_item_activeFlag` tinyint(4) NOT NULL DEFAULT '1',
  `module_item_showFlag` tinyint(4) NOT NULL DEFAULT '1',
  `tag_id` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `datetime_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datetime_modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`module_item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `module_item`
--

INSERT INTO `module_item` (`module_item_id`, `module_id`, `module_item_headerOrder`, `module_item_headerName`, `module_item_activeFlag`, `module_item_showFlag`, `tag_id`, `user_id`, `datetime_created`, `datetime_modified`) VALUES
(1, 1, 1, 'item 1a', 1, 1, '', 13, '2014-05-09 01:05:57', NULL),
(2, 1, 3, 'item 1b', 1, 1, '', 13, '2014-05-09 01:05:57', NULL),
(5, 1, 4, 'Add New Item', 1, 1, '', 0, '2014-05-09 06:31:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `module_type`
--

CREATE TABLE IF NOT EXISTS `module_type` (
  `module_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_type_name` varchar(200) NOT NULL,
  `module_type_description` varchar(2000) NOT NULL,
  `area_id` int(11) NOT NULL,
  `module_type_activeFlag` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`module_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `module_type`
--

INSERT INTO `module_type` (`module_type_id`, `module_type_name`, `module_type_description`, `area_id`, `module_type_activeFlag`) VALUES
(1, 'Shift Projects', 'This Module Type contains Modules full of Shift Projects and SharePoint requests', 1, 1),
(2, 'SharePoints', 'Just another description', 1, 1),
(3, 'My Module', 'My Module Description', 2, 1),
(4, 'Action Plan', 'Description for Action Plan', 1, 1),
(5, 'Eng Requests', 'This Module Type contains Modules for Engineering Requests', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) NOT NULL,
  `section_name` varchar(100) NOT NULL,
  `section_activeFlag` tinyint(4) NOT NULL DEFAULT '1',
  `section_showFlag` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `area_id`, `section_name`, `section_activeFlag`, `section_showFlag`) VALUES
(1, 1, 'AC/TC', 1, 1),
(2, 1, 'BPSG', 1, 1),
(3, 1, 'HARP', 1, 1),
(4, 1, 'SOD', 1, 1),
(5, 1, 'test section', 1, 1),
(6, 2, 'DF Batch Section', 1, 1),
(7, 1, 'SiH4 Oxide', 1, 1),
(8, 3, 'New Section', 1, 1),
(9, 2, 'DF Process', 1, 1),
(10, 9, 'test4s', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE IF NOT EXISTS `shift` (
  `shift_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) NOT NULL,
  `shift_name` varchar(11) NOT NULL,
  `shift_activeFlag` tinyint(1) NOT NULL,
  PRIMARY KEY (`shift_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `area_id`, `shift_name`, `shift_activeFlag`) VALUES
(1, 1, 'A', 0),
(2, 1, 'E', 0),
(3, 1, 'C', 0),
(4, 1, 'F', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_type_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `tag_name` varchar(100) NOT NULL,
  `tag_activeFlag` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_type_id`, `area_id`, `tag_name`, `tag_activeFlag`) VALUES
(1, 1, 1, 'Scratch Test', 1),
(2, 3, 1, 'DTS Follow Up', 1),
(3, 5, 1, 'SOD Batch Qual', 1),
(4, 2, 4, 'New Tag 2', 0),
(5, 9, 1, 'Host Update', 1),
(6, 9, 1, 'New Tool Install', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tag_type`
--

CREATE TABLE IF NOT EXISTS `tag_type` (
  `tag_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_type_name` varchar(200) NOT NULL,
  `tag_type_description` varchar(2000) NOT NULL,
  `area_id` int(11) NOT NULL,
  `tag_type_activeFlag` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tag_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tag_type`
--

INSERT INTO `tag_type` (`tag_type_id`, `tag_type_name`, `tag_type_description`, `area_id`, `tag_type_activeFlag`) VALUES
(1, 'Post Maintenance', '', 1, 1),
(2, 'Post Maintenance', '', 2, 1),
(3, 'Defectivity Troubleshooting', '', 1, 1),
(4, 'Defectivity Troubleshooting', '', 2, 1),
(5, 'Material Qualifications', '', 1, 1),
(6, 'Material Qualifications', '', 2, 1),
(7, 'Recipes', '', 1, 1),
(8, 'Recipes', '', 2, 1),
(9, 'Setups', '', 1, 1),
(10, 'Setups', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `pwd` char(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `role` int(11) NOT NULL,
  `area_id` int(50) NOT NULL,
  `user_activeFlag` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `pwd`, `user_name`, `role`, `area_id`, `user_activeFlag`) VALUES
(1, 'test', 'sfayer', 1, 1, 1),
(2, 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'test', 0, 1, 1),
(7, 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'test3', 0, 1, 1),
(9, 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'testuser', 0, 1, 1),
(10, 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'test34', 0, 2, 1),
(11, '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'sfayer2', 0, 1, 1),
(13, '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'scott', 1, 1, 1),
(14, '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'testuser1', 0, 1, 1),
(15, '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'anotheruser', 0, 1, 1),
(16, '011c945f30ce2cbafc452f39840f025693339c42', '1111', 1, 1, 1),
(17, '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'new-user', 0, 2, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
