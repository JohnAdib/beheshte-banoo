-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 10, 2015 at 08:14 PM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.6.5-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `city`
--

-- --------------------------------------------------------

--
-- Table structure for table `barcodes`
--

CREATE TABLE IF NOT EXISTS `barcodes` (
  `barcode_id` int(6) unsigned NOT NULL,
  `user_id` int(6) unsigned NOT NULL,
  `barcode_enter` datetime NOT NULL,
  `barcode_exit` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  KEY `users_barcodes_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `booths`
--

CREATE TABLE IF NOT EXISTS `booths` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `booth_title` varchar(50) NOT NULL,
  `booth_winpoint` tinyint(3) unsigned NOT NULL,
  `booth_loosepoint` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `booth_status` enum('enable','disable','expire') NOT NULL DEFAULT 'enable',
  `booth_gametime` time NOT NULL DEFAULT '00:01:00',
  `section_id` smallint(2) unsigned NOT NULL,
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `booths_sections_id` (`section_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `booths`
--

INSERT INTO `booths` (`id`, `booth_title`, `booth_winpoint`, `booth_loosepoint`, `booth_status`, `booth_gametime`, `section_id`, `date_modified`) VALUES
(1, 'غرفه طناب کشی', 10, 1, 'enable', '00:00:00', 1, '2015-02-08 15:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(6) unsigned NOT NULL,
  `booth_id` smallint(3) unsigned NOT NULL,
  `game_prize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `game_date` date NOT NULL,
  `game_regtime` datetime DEFAULT NULL,
  `game_starttime` datetime DEFAULT NULL,
  `game_endtime` datetime DEFAULT NULL,
  `game_status` enum('time','start','win','delete') NOT NULL DEFAULT 'time',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `users_games_id` (`user_id`),
  KEY `booths_games_id` (`booth_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `user_id`, `booth_id`, `game_prize`, `game_date`, `game_regtime`, `game_starttime`, `game_endtime`, `game_status`, `date_modified`) VALUES
(1, 5, 1, 0, '2015-02-08', NULL, NULL, NULL, 'delete', '2015-02-10 16:38:42');

--
-- Triggers `games`
--
DROP TRIGGER IF EXISTS `games_BU_inline_update_start`;
DELIMITER //
CREATE TRIGGER `games_BU_inline_update_start` BEFORE UPDATE ON `games`
 FOR EACH ROW IF NEW.game_status <> OLD.game_status THEN

 if new.game_status = 'start' then
  set New.game_prize = (select booth_loosepoint from booths where id = New.booth_id );

 elseif new.game_status = 'win' then
  set New.game_prize = (select booth_winpoint   from booths where id = New.booth_id );

else
  set New.game_prize = 0;
 END IF;
END IF
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `kindergartens`
--

CREATE TABLE IF NOT EXISTS `kindergartens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(6) unsigned NOT NULL,
  `token_id` smallint(3) unsigned NOT NULL,
  `kindergarten_date` date NOT NULL,
  `kindergarten_starttime` datetime DEFAULT NULL,
  `kindergarten_endtime` datetime DEFAULT NULL,
  `kindergarten_status` enum('in','out','babylost','parentlost','awaiting') NOT NULL DEFAULT 'in',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `kindergartens_tokens_id` (`token_id`),
  KEY `kindergartens_users_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `option_cat` varchar(50) NOT NULL,
  `option_name` varchar(50) NOT NULL,
  `option_value` varchar(200) DEFAULT NULL,
  `option_extra` varchar(400) DEFAULT NULL,
  `option_status` enum('enable','disable','expire') NOT NULL DEFAULT 'enable',
  `user_id` int(6) unsigned DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `options_users_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `option_cat`, `option_name`, `option_value`, `option_extra`, `option_status`, `user_id`, `date_modified`) VALUES
(1, 'kindergarten_limit', 'limit', '100', NULL, 'enable', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissiondetails`
--

CREATE TABLE IF NOT EXISTS `permissiondetails` (
  `id` smallint(5) NOT NULL,
  `permissiondetail_module` varchar(50) NOT NULL,
  `permissiondetail_view` enum('yes','no') NOT NULL DEFAULT 'yes',
  `permissiondetail_add` enum('yes','no') NOT NULL DEFAULT 'no',
  `permissiondetail_edit` enum('yes','no') NOT NULL DEFAULT 'no',
  `permissiondetail_delete` enum('yes','no') NOT NULL DEFAULT 'no',
  `permission_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_permissiondetails_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `permission_title` varchar(50) NOT NULL,
  `permission_status` enum('enable','disable','expire') NOT NULL DEFAULT 'enable',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission_title`, `permission_status`, `date_modified`) VALUES
(1, 'admin', 'enable', NULL),
(2, 'booths', 'enable', NULL),
(3, 'visitors', 'enable', NULL),
(4, 'regiserer', 'enable', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `id` smallint(2) unsigned NOT NULL AUTO_INCREMENT,
  `section_title` varchar(50) NOT NULL,
  `section_maxpoint` tinyint(3) NOT NULL,
  `section_status` enum('enable','disable','expire') NOT NULL DEFAULT 'enable',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_title`, `section_maxpoint`, `section_status`, `date_modified`) VALUES
(1, 'کودکان پسر', 10, 'enable', NULL),
(2, 'کودکان دختر', 10, 'enable', NULL),
(3, 'پسران جوان', 10, 'enable', NULL),
(4, 'دختران جوان', 10, 'enable', NULL),
(5, 'خردسالان', 10, 'enable', NULL),
(6, 'والدین', 10, 'enable', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE IF NOT EXISTS `tokens` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `token_colors` varchar(20) NOT NULL,
  `token_numbers` smallint(3) NOT NULL,
  `token_status` enum('enable','disable','expire') NOT NULL DEFAULT 'enable',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token_colors`, `token_numbers`, `token_status`, `date_modified`) VALUES
(1, 'قرمز', 1, 'enable', NULL),
(2, 'قرمز', 2, 'enable', NULL),
(3, 'قرمز', 3, 'enable', NULL),
(4, 'قرمز', 4, 'enable', NULL),
(5, 'قرمز', 5, 'enable', NULL),
(6, 'قرمز', 6, 'enable', NULL),
(7, 'قرمز', 7, 'enable', NULL),
(8, 'قرمز', 8, 'enable', NULL),
(9, 'قرمز', 9, 'enable', NULL),
(10, 'قرمز', 10, 'enable', NULL),
(11, 'آبی', 1, 'enable', NULL),
(12, 'آبی', 2, 'enable', NULL),
(13, 'آبی', 3, 'enable', NULL),
(14, 'آبی', 4, 'enable', NULL),
(15, 'آبی', 5, 'enable', NULL),
(16, 'آبی', 6, 'enable', NULL),
(17, 'آبی', 7, 'enable', NULL),
(18, 'آبی', 8, 'enable', NULL),
(19, 'آبی', 9, 'enable', NULL),
(20, 'آبی', 10, 'enable', NULL),
(21, 'سبز', 1, 'enable', NULL),
(22, 'سبز', 2, 'enable', NULL),
(23, 'سبز', 3, 'enable', NULL),
(24, 'سبز', 4, 'enable', NULL),
(25, 'سبز', 5, 'enable', NULL),
(26, 'سبز', 6, 'enable', NULL),
(27, 'سبز', 7, 'enable', NULL),
(28, 'سبز', 8, 'enable', NULL),
(29, 'سبز', 9, 'enable', NULL),
(30, 'سبز', 10, 'enable', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlogs`
--

CREATE TABLE IF NOT EXISTS `userlogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userlog_type` enum('insert','update','delete','select','error','login','signup','changepass','access','logout') NOT NULL,
  `userlog_module` varchar(50) NOT NULL,
  `userlog_value` varchar(200) DEFAULT NULL,
  `userlog_priority` enum('high','medium','low','critical') NOT NULL DEFAULT 'medium',
  `userlog_ip` int(10) NOT NULL,
  `userlog_time` datetime NOT NULL,
  `user_id` int(6) unsigned DEFAULT NULL,
  `userlog_status` enum('enable','disable','expire') NOT NULL DEFAULT 'enable',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `userlogs_users_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Table structure for table `usermetas`
--

CREATE TABLE IF NOT EXISTS `usermetas` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(6) unsigned NOT NULL,
  `usermeta_cat` varchar(50) NOT NULL,
  `usermeta_name` varchar(100) NOT NULL,
  `usermeta_value` varchar(500) DEFAULT NULL,
  `usermeta_extra` varchar(500) DEFAULT NULL,
  `usermeta_status` enum('enable','disable','expire') NOT NULL DEFAULT 'enable',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `usermetas_users_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `user_gender` enum('male','female') DEFAULT 'male',
  `user_firstname` varchar(15) NOT NULL,
  `user_lastname` varchar(30) NOT NULL,
  `user_mobile` varchar(15) DEFAULT NULL,
  `user_mobile2` varchar(15) DEFAULT NULL,
  `user_password` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `user_birthday` datetime DEFAULT NULL,
  `user_degree` varchar(50) DEFAULT NULL,
  `user_country` varchar(50) DEFAULT NULL,
  `user_province` varchar(50) DEFAULT NULL,
  `user_codemelli` bigint(10) DEFAULT NULL,
  `user_passport` varchar(50) DEFAULT NULL,
  `user_imageaddr` varchar(500) DEFAULT NULL,
  `user_logincounter` smallint(3) unsigned NOT NULL DEFAULT '0',
  `user_refinecounter` smallint(2) DEFAULT NULL,
  `user_parent` int(6) DEFAULT NULL,
  `permission_id` smallint(5) unsigned NOT NULL,
  `user_feedback` tinyint(3) unsigned DEFAULT NULL,
  `user_status` enum('active','awaiting','deactive','removed','filter','exit') NOT NULL DEFAULT 'active',
  `user_createdate` datetime NOT NULL,
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `booth_id` smallint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_booths_id` (`booth_id`),
  KEY `users_permissions_id` (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_gender`, `user_firstname`, `user_lastname`, `user_mobile`, `user_mobile2`, `user_password`, `user_birthday`, `user_degree`, `user_country`, `user_province`, `user_codemelli`, `user_passport`, `user_imageaddr`, `user_logincounter`, `user_refinecounter`, `user_parent`, `permission_id`, `user_feedback`, `user_status`, `user_createdate`, `date_modified`, `booth_id`) VALUES
(5, 'male', 'جواد', 'عوض زاده', '989357629759', NULL, '$2y$07$x889MdhsRxGcGshcrqdEc.mcx0e1o2PeIjJPKx0VdxK4LQ1xDnZUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 1, NULL, 'active', '2015-02-09 22:44:14', '2015-02-10 16:38:05', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barcodes`
--
ALTER TABLE `barcodes`
  ADD CONSTRAINT `users_barcodes_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `booths`
--
ALTER TABLE `booths`
  ADD CONSTRAINT `booths_sections_id` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `booths_games_id` FOREIGN KEY (`booth_id`) REFERENCES `booths` (`id`),
  ADD CONSTRAINT `users_games_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `kindergartens`
--
ALTER TABLE `kindergartens`
  ADD CONSTRAINT `kindergartens_tokens_id` FOREIGN KEY (`token_id`) REFERENCES `tokens` (`id`),
  ADD CONSTRAINT `kindergartens_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `permissiondetails`
--
ALTER TABLE `permissiondetails`
  ADD CONSTRAINT `permissions_permissiondetails_id` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`);

--
-- Constraints for table `userlogs`
--
ALTER TABLE `userlogs`
  ADD CONSTRAINT `userlogs_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `usermetas`
--
ALTER TABLE `usermetas`
  ADD CONSTRAINT `usermetas_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_booths_id` FOREIGN KEY (`booth_id`) REFERENCES `booths` (`id`),
  ADD CONSTRAINT `users_permissions_id` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
