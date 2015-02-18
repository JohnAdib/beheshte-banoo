-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 19, 2015 at 03:27 AM
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
-- Table structure for table `citys`
--

CREATE TABLE IF NOT EXISTS `citys` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `province_id` smallint(5) unsigned NOT NULL,
  `city_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique name in province` (`province_id`,`city_name`),
  KEY `province_id` (`province_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=453 ;

--
-- Dumping data for table `citys`
--

INSERT INTO `citys` (`id`, `province_id`, `city_name`) VALUES
(23, 1, 'آذر شهر'),
(22, 1, 'اسکو'),
(15, 1, 'اهر'),
(27, 1, 'ایلخچی'),
(29, 1, 'باسمنج'),
(20, 1, 'بستان آباد'),
(12, 1, 'بناب'),
(4, 1, 'بندر شرفخانه'),
(2, 1, 'تبریز'),
(14, 1, 'تسوج'),
(9, 1, 'جلفا'),
(28, 1, 'خسروشهر'),
(10, 1, 'سراب'),
(30, 1, 'سهند'),
(7, 1, 'شبستر'),
(26, 1, 'صوفیان'),
(17, 1, 'عجبشیر'),
(24, 1, 'قره آغاج'),
(5, 1, 'مراغه'),
(8, 1, 'مرند'),
(19, 1, 'ملکان'),
(25, 1, 'ممقان'),
(6, 1, 'میانه'),
(11, 1, 'هادیشهر'),
(16, 1, 'هریس'),
(18, 1, 'هشترود'),
(21, 1, 'ورزقان'),
(449, 1, 'چاروایماق'),
(13, 1, 'کلیبر'),
(3, 1, 'کندوان'),
(31, 2, 'ارومیه'),
(45, 2, 'اشنویه'),
(39, 2, 'بوکان'),
(34, 2, 'تکاب'),
(35, 2, 'خوی'),
(37, 2, 'سر دشت'),
(41, 2, 'سلماس'),
(44, 2, 'سیه چشمه'),
(42, 2, 'شاهین دژ'),
(48, 2, 'شوط'),
(33, 2, 'ماکو'),
(36, 2, 'مهاباد'),
(40, 2, 'میاندوآب'),
(32, 2, 'نقده'),
(47, 2, 'پلدشت'),
(43, 2, 'پیرانشهر'),
(38, 2, 'چالدران'),
(46, 2, 'چایپاره'),
(49, 3, 'اردبیل'),
(51, 3, 'بیله سوار'),
(53, 3, 'خلخال'),
(50, 3, 'سرعین'),
(54, 3, 'مشگین شهر'),
(55, 3, 'مغان'),
(56, 3, 'نمین'),
(57, 3, 'نیر'),
(52, 3, 'پارس آباد'),
(58, 3, 'کوثر'),
(59, 3, 'کیوی'),
(60, 3, 'گرمی'),
(83, 4, 'آران و بیدگل'),
(72, 4, 'اردستان'),
(61, 4, 'اصفهان'),
(84, 4, 'باغ بهادران'),
(91, 4, 'تودشک'),
(69, 4, 'تیران'),
(90, 4, 'حاجی آباد'),
(78, 4, 'خمینی شهر'),
(85, 4, 'خوانسار'),
(74, 4, 'درچه'),
(66, 4, 'دهاقان'),
(81, 4, 'دولت آباد'),
(82, 4, 'زرین شهر'),
(73, 4, 'سمیرم'),
(79, 4, 'شاهین شهر'),
(77, 4, 'شهرضا'),
(88, 4, 'عسگران'),
(87, 4, 'علویجه'),
(62, 4, 'فریدن'),
(63, 4, 'فریدون شهر'),
(64, 4, 'فلاورجان'),
(71, 4, 'فولاد شهر'),
(76, 4, 'مبارکه'),
(86, 4, 'مهردشت'),
(68, 4, 'نایین'),
(80, 4, 'نجف آباد'),
(67, 4, 'نطنز'),
(89, 4, 'نهضت آباد'),
(92, 4, 'ورزنه'),
(70, 4, 'کاشان'),
(75, 4, 'کوهپایه'),
(65, 4, 'گلپایگان'),
(96, 5, 'آبدانان'),
(93, 5, 'ایلام'),
(99, 5, 'ایوان'),
(98, 5, 'دره شهر'),
(95, 5, 'دهلران'),
(100, 5, 'سرابله'),
(97, 5, 'شیروان چرداول'),
(94, 5, 'مهران'),
(111, 6, 'اهرم'),
(112, 6, 'برازجان'),
(117, 6, 'بردخون'),
(101, 6, 'بوشهر'),
(102, 6, 'تنگستان'),
(114, 6, 'جم'),
(113, 6, 'خارک'),
(110, 6, 'خورموج'),
(103, 6, 'دشتستان'),
(109, 6, 'دشتی'),
(104, 6, 'دیر'),
(105, 6, 'دیلم'),
(108, 6, 'ریشهر'),
(116, 6, 'عسلویه'),
(115, 6, 'کاکی'),
(106, 6, 'کنگان'),
(107, 6, 'گناوه'),
(123, 7, 'اسلامشهر'),
(134, 7, 'باقرشهر'),
(126, 7, 'بومهن'),
(127, 7, 'تجریش'),
(118, 7, 'تهران'),
(122, 7, 'دماوند'),
(136, 7, 'رباط کریم'),
(124, 7, 'رودهن'),
(121, 7, 'ری'),
(132, 7, 'شریف آباد'),
(443, 7, 'شمیران'),
(135, 7, 'شهریار'),
(128, 7, 'فشم'),
(120, 7, 'فیروزکوه'),
(137, 7, 'قدس'),
(133, 7, 'قرچک'),
(125, 7, 'لواسان'),
(138, 7, 'ملارد'),
(119, 7, 'ورامین'),
(130, 7, 'پاکدشت'),
(131, 7, 'چهاردانگه'),
(129, 7, 'کهریزک'),
(143, 8, 'اردل'),
(141, 8, 'بروجن'),
(145, 8, 'سامان'),
(139, 8, 'شهرکرد'),
(140, 8, 'فارسان'),
(144, 8, 'لردگان'),
(142, 8, 'چلگرد'),
(148, 9, 'بیرجند'),
(153, 9, 'درمیان'),
(150, 9, 'سربیشه'),
(151, 9, 'طبس مسینا'),
(147, 9, 'فردوس'),
(146, 9, 'قاین'),
(152, 9, 'قهستان'),
(149, 9, 'نهبندان'),
(166, 10, 'بردسکن'),
(163, 10, 'تایباد'),
(162, 10, 'تربت جام'),
(160, 10, 'تربت حیدریه'),
(161, 10, 'خواف'),
(169, 10, 'درگز'),
(156, 10, 'سبزوار'),
(172, 10, 'سر ولایت'),
(165, 10, 'سرخس'),
(159, 10, 'طبس'),
(171, 10, 'طرقبه'),
(167, 10, 'فریمان'),
(164, 10, 'قوچان'),
(154, 10, 'مشهد'),
(155, 10, 'نیشابور'),
(168, 10, 'چناران'),
(157, 10, 'کاشمر'),
(170, 10, 'کلات'),
(158, 10, 'گناباد'),
(177, 11, 'آشخانه'),
(174, 11, 'اسفراین'),
(173, 11, 'بجنورد'),
(175, 11, 'جاجرم'),
(179, 11, 'ساروج'),
(176, 11, 'شیروان'),
(178, 11, 'گرمه'),
(183, 12, 'آبادان'),
(195, 12, 'امیدیه'),
(188, 12, 'اندیمشک'),
(180, 12, 'اهواز'),
(186, 12, 'ایذه'),
(181, 12, 'ایرانشهر'),
(198, 12, 'باغ ملک'),
(194, 12, 'بندر امام خمینی'),
(193, 12, 'بندر ماهشهر'),
(196, 12, 'بهبهان'),
(202, 12, 'حمیدیه'),
(184, 12, 'خرمشهر'),
(191, 12, 'دزفول'),
(203, 12, 'دغاغله'),
(201, 12, 'رامشیر'),
(197, 12, 'رامهرمز'),
(189, 12, 'سوسنگرد'),
(192, 12, 'شادگان'),
(182, 12, 'شوش'),
(187, 12, 'شوشتر'),
(200, 12, 'لالی'),
(185, 12, 'مسجد سلیمان'),
(204, 12, 'ملاثانی'),
(199, 12, 'هندیجان'),
(190, 12, 'هویزه'),
(206, 12, 'ویسی'),
(215, 13, 'آب بر'),
(208, 13, 'ابهر'),
(213, 13, 'ایجرود'),
(209, 13, 'خدابنده'),
(212, 13, 'خرمدره'),
(214, 13, 'زرین آباد'),
(207, 13, 'زنجان'),
(216, 13, 'قیدار'),
(211, 13, 'ماهنشان'),
(210, 13, 'کارم'),
(220, 14, 'ایوانکی'),
(222, 14, 'بسطام'),
(221, 14, 'دامغان'),
(217, 14, 'سمنان'),
(218, 14, 'شاهرود'),
(450, 14, 'مهدی شهر'),
(219, 14, 'گرمسار'),
(230, 15, 'ایرانشهر'),
(225, 15, 'خاش'),
(231, 15, 'راسک'),
(227, 15, 'زابل'),
(223, 15, 'زاهدان'),
(226, 15, 'سراوان'),
(228, 15, 'سرباز'),
(232, 15, 'میرجاوه'),
(229, 15, 'نیکشهر'),
(224, 15, 'چابهار'),
(239, 16, 'آباده'),
(252, 16, 'اردکان'),
(254, 16, 'ارسنجان'),
(259, 16, 'ارژن'),
(247, 16, 'استهبان'),
(234, 16, 'اقلید'),
(266, 16, 'باب انار'),
(267, 16, 'بوانات'),
(245, 16, 'جهرم'),
(250, 16, 'حاجی آباد'),
(263, 16, 'خان زنیان'),
(268, 16, 'خرامه'),
(238, 16, 'خرم بید'),
(269, 16, 'خنج'),
(235, 16, 'داراب'),
(261, 16, 'داریون'),
(265, 16, 'ده بید'),
(262, 16, 'زرقان'),
(258, 16, 'سروستان'),
(256, 16, 'سوریان'),
(242, 16, 'سپیدان'),
(270, 16, 'سیاخ دارنگون'),
(233, 16, 'شیراز'),
(253, 16, 'صفاشهر'),
(257, 16, 'فراشبند'),
(236, 16, 'فسا'),
(244, 16, 'فیروز آباد'),
(255, 16, 'قیروکارزین'),
(243, 16, 'لار'),
(452, 16, 'لارستان'),
(248, 16, 'لامرد'),
(237, 16, 'مرودشت'),
(241, 16, 'ممسنی'),
(249, 16, 'مهر'),
(251, 16, 'نورآباد'),
(246, 16, 'نی ریز'),
(240, 16, 'کازرون'),
(264, 16, 'کوار'),
(260, 16, 'گویم'),
(273, 17, 'آبیک'),
(446, 17, 'آوج'),
(274, 17, 'بویین زهرا'),
(272, 17, 'تاکستان'),
(271, 17, 'قزوین'),
(275, 18, 'قم'),
(281, 19, 'آسارا'),
(278, 19, 'اشتهارد'),
(283, 19, 'اندیشه'),
(282, 19, 'شهرک گلستان'),
(276, 19, 'طالقان'),
(287, 19, 'ماهدشت'),
(288, 19, 'مشکین دشت'),
(285, 19, 'نظر آباد'),
(277, 19, 'نظرآباد'),
(279, 19, 'هشتگرد'),
(284, 19, 'کرج'),
(280, 19, 'کن'),
(286, 19, 'گوهردشت'),
(291, 20, 'بانه'),
(292, 20, 'بیجار'),
(298, 20, 'حسن آباد'),
(290, 20, 'دیواندره'),
(293, 20, 'سقز'),
(289, 20, 'سنندج'),
(297, 20, 'صلوات آباد'),
(295, 20, 'قروه'),
(296, 20, 'مریوان'),
(294, 20, 'کامیاران'),
(302, 21, 'انار'),
(301, 21, 'بابک'),
(305, 21, 'بافت'),
(311, 21, 'بردسیر'),
(309, 21, 'بم'),
(310, 21, 'جیرفت'),
(451, 21, 'رابر'),
(300, 21, 'راور'),
(304, 21, 'رفسنجان'),
(447, 21, 'ریگان'),
(308, 21, 'زرند'),
(306, 21, 'سیرجان'),
(299, 21, 'کرمان'),
(307, 21, 'کهنوج'),
(303, 21, 'کوهبنان'),
(313, 22, 'اسلام آباد غرب'),
(322, 22, 'جوانرود'),
(314, 22, 'سر پل ذهاب'),
(316, 22, 'سنقر'),
(323, 22, 'شاهو'),
(320, 22, 'صحنه'),
(317, 22, 'قصر شیرین'),
(319, 22, 'هرسین'),
(321, 22, 'پاوه'),
(312, 22, 'کرمانشاه'),
(315, 22, 'کنگاور'),
(318, 22, 'گیلان غرب'),
(448, 23, 'بهمنی'),
(326, 23, 'دنا'),
(329, 23, 'دهدشت'),
(327, 23, 'دوگنبدان'),
(328, 23, 'سی سخت'),
(330, 23, 'لیکک'),
(325, 23, 'گچساران'),
(324, 23, 'یاسوج'),
(340, 24, 'آزاد شهر'),
(332, 24, 'آق قلا'),
(338, 24, 'بندر گز'),
(336, 24, 'ترکمن'),
(341, 24, 'رامیان'),
(334, 24, 'علی آباد کتول'),
(335, 24, 'مینو دشت'),
(337, 24, 'کردکوی'),
(339, 24, 'کلاله'),
(331, 24, 'گرگان'),
(333, 24, 'گنبد کاووس'),
(347, 25, 'آستارا'),
(349, 25, 'آستانه اشرفیه'),
(360, 25, 'املش'),
(365, 25, 'بندر کیاشهر'),
(353, 25, 'بندرانزلی'),
(346, 25, 'تالش'),
(362, 25, 'خشک بیجار'),
(363, 25, 'خمام'),
(342, 25, 'رشت'),
(356, 25, 'رضوان شهر'),
(345, 25, 'رود سر'),
(350, 25, 'رودبار'),
(359, 25, 'سیاهکل'),
(358, 25, 'شفت'),
(352, 25, 'صومعه سرا'),
(351, 25, 'فومن'),
(361, 25, 'لاهیجان'),
(364, 25, 'لشت نشا'),
(344, 25, 'لنگرود'),
(357, 25, 'ماسال'),
(348, 25, 'ماسوله'),
(343, 25, 'منجیل'),
(355, 25, 'هشتپر'),
(354, 25, 'کلاچای'),
(372, 26, 'ازنا'),
(375, 26, 'الشتر'),
(371, 26, 'الیگودرز'),
(369, 26, 'بروجرد'),
(366, 26, 'خرم آباد'),
(368, 26, 'دزفول'),
(370, 26, 'دورود'),
(367, 26, 'ماهشهر'),
(373, 26, 'نور آباد'),
(376, 26, 'پلدختر'),
(374, 26, 'کوهدشت'),
(378, 27, 'آمل'),
(379, 27, 'بابل'),
(380, 27, 'بابلسر'),
(390, 27, 'بلده'),
(381, 27, 'بهشهر'),
(382, 27, 'تنکابن'),
(383, 27, 'جویبار'),
(385, 27, 'رامسر'),
(377, 27, 'ساری'),
(386, 27, 'سواد کوه'),
(394, 27, 'فریدون کنار'),
(387, 27, 'قایم شهر'),
(393, 27, 'محمود آباد'),
(389, 27, 'نور'),
(391, 27, 'نوشهر'),
(388, 27, 'نکا'),
(392, 27, 'پل سفید'),
(384, 27, 'چالوس'),
(396, 28, 'آشتیان'),
(395, 28, 'اراک'),
(397, 28, 'تفرش'),
(398, 28, 'خمین'),
(399, 28, 'دلیجان'),
(400, 28, 'ساوه'),
(401, 28, 'سربند'),
(403, 28, 'شازند'),
(402, 28, 'محلات'),
(442, 28, 'کمیجان'),
(413, 29, 'ابوموسی'),
(411, 29, 'انگهران'),
(408, 29, 'بستک'),
(414, 29, 'بندر جاسک'),
(416, 29, 'بندر خمیر'),
(407, 29, 'بندر لنگه'),
(404, 29, 'بندرعباس'),
(415, 29, 'تنب بزرگ'),
(409, 29, 'حاجی آباد'),
(410, 29, 'دهبارز'),
(405, 29, 'قشم'),
(412, 29, 'میناب'),
(417, 29, 'پارسیان'),
(406, 29, 'کیش'),
(425, 30, 'اسدآباد'),
(426, 30, 'بهار'),
(421, 30, 'تویسرکان'),
(424, 30, 'رزن'),
(445, 30, 'فامنین'),
(420, 30, 'ملایر'),
(422, 30, 'نهاوند'),
(419, 30, 'همدان'),
(423, 30, 'کبودر اهنگ'),
(430, 31, 'ابرکوه'),
(429, 31, 'اردکان'),
(435, 31, 'اشکذر'),
(433, 31, 'بافق'),
(428, 31, 'تفت'),
(439, 31, 'حمیدیه شهر'),
(437, 31, 'خضرآباد'),
(441, 31, 'زارچ'),
(440, 31, 'سید میرزا'),
(438, 31, 'شاهدیه'),
(432, 31, 'طبس'),
(434, 31, 'مهریز'),
(431, 31, 'میبد'),
(436, 31, 'هرات'),
(427, 31, 'یزد');

-- --------------------------------------------------------

--
-- Table structure for table `countrys`
--

CREATE TABLE IF NOT EXISTS `countrys` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` char(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=243 ;

--
-- Dumping data for table `countrys`
--

INSERT INTO `countrys` (`id`, `country_code`, `country_name`) VALUES
(1, 'US', 'United States'),
(2, 'CA', 'Canada'),
(3, 'AF', 'Afghanistan'),
(4, 'AL', 'Albania'),
(5, 'DZ', 'Algeria'),
(6, 'DS', 'American Samoa'),
(7, 'AD', 'Andorra'),
(8, 'AO', 'Angola'),
(9, 'AI', 'Anguilla'),
(10, 'AQ', 'Antarctica'),
(11, 'AG', 'Antigua and/or Barbuda'),
(12, 'AR', 'Argentina'),
(13, 'AM', 'Armenia'),
(14, 'AW', 'Aruba'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia and Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BV', 'Bouvet Island'),
(32, 'BR', 'Brazil'),
(33, 'IO', 'British lndian Ocean Territory'),
(34, 'BN', 'Brunei Darussalam'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CV', 'Cape Verde'),
(41, 'KY', 'Cayman Islands'),
(42, 'CF', 'Central African Republic'),
(43, 'TD', 'Chad'),
(44, 'CL', 'Chile'),
(45, 'CN', 'China'),
(46, 'CX', 'Christmas Island'),
(47, 'CC', 'Cocos (Keeling) Islands'),
(48, 'CO', 'Colombia'),
(49, 'KM', 'Comoros'),
(50, 'CG', 'Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JM', 'Jamaica'),
(108, 'JP', 'Japan'),
(109, 'JO', 'Jordan'),
(110, 'KZ', 'Kazakhstan'),
(111, 'KE', 'Kenya'),
(112, 'KI', 'Kiribati'),
(113, 'KP', 'Korea, Democratic People''s Republic of'),
(114, 'KR', 'Korea, Republic of'),
(115, 'XK', 'Kosovo'),
(116, 'KW', 'Kuwait'),
(117, 'KG', 'Kyrgyzstan'),
(118, 'LA', 'Lao People''s Democratic Republic'),
(119, 'LV', 'Latvia'),
(120, 'LB', 'Lebanon'),
(121, 'LS', 'Lesotho'),
(122, 'LR', 'Liberia'),
(123, 'LY', 'Libyan Arab Jamahiriya'),
(124, 'LI', 'Liechtenstein'),
(125, 'LT', 'Lithuania'),
(126, 'LU', 'Luxembourg'),
(127, 'MO', 'Macau'),
(128, 'MK', 'Macedonia'),
(129, 'MG', 'Madagascar'),
(130, 'MW', 'Malawi'),
(131, 'MY', 'Malaysia'),
(132, 'MV', 'Maldives'),
(133, 'ML', 'Mali'),
(134, 'MT', 'Malta'),
(135, 'MH', 'Marshall Islands'),
(136, 'MQ', 'Martinique'),
(137, 'MR', 'Mauritania'),
(138, 'MU', 'Mauritius'),
(139, 'TY', 'Mayotte'),
(140, 'MX', 'Mexico'),
(141, 'FM', 'Micronesia, Federated States of'),
(142, 'MD', 'Moldova, Republic of'),
(143, 'MC', 'Monaco'),
(144, 'MN', 'Mongolia'),
(145, 'ME', 'Montenegro'),
(146, 'MS', 'Montserrat'),
(147, 'MA', 'Morocco'),
(148, 'MZ', 'Mozambique'),
(149, 'MM', 'Myanmar'),
(150, 'NA', 'Namibia'),
(151, 'NR', 'Nauru'),
(152, 'NP', 'Nepal'),
(153, 'NL', 'Netherlands'),
(154, 'AN', 'Netherlands Antilles'),
(155, 'NC', 'New Caledonia'),
(156, 'NZ', 'New Zealand'),
(157, 'NI', 'Nicaragua'),
(158, 'NE', 'Niger'),
(159, 'NG', 'Nigeria'),
(160, 'NU', 'Niue'),
(161, 'NF', 'Norfork Island'),
(162, 'MP', 'Northern Mariana Islands'),
(163, 'NO', 'Norway'),
(164, 'OM', 'Oman'),
(165, 'PK', 'Pakistan'),
(166, 'PW', 'Palau'),
(167, 'PA', 'Panama'),
(168, 'PG', 'Papua New Guinea'),
(169, 'PY', 'Paraguay'),
(170, 'PE', 'Peru'),
(171, 'PH', 'Philippines'),
(172, 'PN', 'Pitcairn'),
(173, 'PL', 'Poland'),
(174, 'PT', 'Portugal'),
(175, 'PR', 'Puerto Rico'),
(176, 'QA', 'Qatar'),
(177, 'RE', 'Reunion'),
(178, 'RO', 'Romania'),
(179, 'RU', 'Russian Federation'),
(180, 'RW', 'Rwanda'),
(181, 'KN', 'Saint Kitts and Nevis'),
(182, 'LC', 'Saint Lucia'),
(183, 'VC', 'Saint Vincent and the Grenadines'),
(184, 'WS', 'Samoa'),
(185, 'SM', 'San Marino'),
(186, 'ST', 'Sao Tome and Principe'),
(187, 'SA', 'Saudi Arabia'),
(188, 'SN', 'Senegal'),
(189, 'RS', 'Serbia'),
(190, 'SC', 'Seychelles'),
(191, 'SL', 'Sierra Leone'),
(192, 'SG', 'Singapore'),
(193, 'SK', 'Slovakia'),
(194, 'SI', 'Slovenia'),
(195, 'SB', 'Solomon Islands'),
(196, 'SO', 'Somalia'),
(197, 'ZA', 'South Africa'),
(198, 'GS', 'South Georgia South Sandwich Islands'),
(199, 'ES', 'Spain'),
(200, 'LK', 'Sri Lanka'),
(201, 'SH', 'St. Helena'),
(202, 'PM', 'St. Pierre and Miquelon'),
(203, 'SD', 'Sudan'),
(204, 'SR', 'Suriname'),
(205, 'SJ', 'Svalbarn and Jan Mayen Islands'),
(206, 'SZ', 'Swaziland'),
(207, 'SE', 'Sweden'),
(208, 'CH', 'Switzerland'),
(209, 'SY', 'Syrian Arab Republic'),
(210, 'TW', 'Taiwan'),
(211, 'TJ', 'Tajikistan'),
(212, 'TZ', 'Tanzania, United Republic of'),
(213, 'TH', 'Thailand'),
(214, 'TG', 'Togo'),
(215, 'TK', 'Tokelau'),
(216, 'TO', 'Tonga'),
(217, 'TT', 'Trinidad and Tobago'),
(218, 'TN', 'Tunisia'),
(219, 'TR', 'Turkey'),
(220, 'TM', 'Turkmenistan'),
(221, 'TC', 'Turks and Caicos Islands'),
(222, 'TV', 'Tuvalu'),
(223, 'UG', 'Uganda'),
(224, 'UA', 'Ukraine'),
(225, 'AE', 'United Arab Emirates'),
(226, 'GB', 'United Kingdom'),
(227, 'UM', 'United States minor outlying islands'),
(228, 'UY', 'Uruguay'),
(229, 'UZ', 'Uzbekistan'),
(230, 'VU', 'Vanuatu'),
(231, 'VA', 'Vatican City State'),
(232, 'VE', 'Venezuela'),
(233, 'VN', 'Vietnam'),
(234, 'VG', 'Virgin Islands (British)'),
(235, 'VI', 'Virgin Islands (U.S.)'),
(236, 'WF', 'Wallis and Futuna Islands'),
(237, 'EH', 'Western Sahara'),
(238, 'YE', 'Yemen'),
(239, 'YU', 'Yugoslavia'),
(240, 'ZR', 'Zaire'),
(241, 'ZM', 'Zambia'),
(242, 'ZW', 'Zimbabwe');

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
(1, 'Admin', 'enable', NULL),
(2, 'Registerer', 'enable', NULL),
(3, 'Boother ', 'enable', NULL),
(4, 'Visitor', 'enable', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE IF NOT EXISTS `provinces` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` smallint(3) unsigned NOT NULL,
  `province_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique province in country` (`province_name`,`country_id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `country_id`, `province_name`) VALUES
(1, 101, 'آذربایجان شرقی'),
(2, 101, 'آذربایجان غربی'),
(3, 101, 'اردبیل'),
(4, 101, 'اصفهان'),
(19, 101, 'البرز'),
(5, 101, 'ایلام'),
(6, 101, 'بوشهر'),
(7, 101, 'تهران'),
(9, 101, 'خراسان جنوبی'),
(10, 101, 'خراسان رضوی'),
(11, 101, 'خراسان شمالی'),
(12, 101, 'خوزستان'),
(13, 101, 'زنجان'),
(14, 101, 'سمنان'),
(15, 101, 'سیستان و بلوچستان'),
(16, 101, 'فارس'),
(17, 101, 'قزوین'),
(18, 101, 'قم'),
(26, 101, 'لرستان'),
(27, 101, 'مازندران'),
(28, 101, 'مرکزی'),
(29, 101, 'هرمزگان'),
(30, 101, 'همدان'),
(8, 101, 'چهارمحال بختیاری'),
(20, 101, 'کردستان'),
(21, 101, 'کرمان'),
(22, 101, 'کرمانشاه'),
(23, 101, 'کهکیلویه و بویراحمد'),
(24, 101, 'گلستان'),
(25, 101, 'گیلان'),
(31, 101, 'یزد');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=303 ;

--
-- Dumping data for table `userlogs`
--

INSERT INTO `userlogs` (`id`, `userlog_type`, `userlog_module`, `userlog_value`, `userlog_priority`, `userlog_ip`, `userlog_time`, `user_id`, `userlog_status`, `date_modified`) VALUES
(24, 'access', 'home', NULL, 'high', 2130706433, '2015-02-10 20:25:53', 5, 'enable', NULL),
(26, 'access', 'home', NULL, 'high', 2130706433, '2015-02-10 21:58:00', NULL, 'enable', NULL),
(27, 'access', 'home', NULL, 'high', 2130706433, '2015-02-10 21:58:01', NULL, 'enable', NULL),
(28, 'access', 'home', NULL, 'high', 2130706433, '2015-02-10 21:58:02', NULL, 'enable', NULL),
(31, 'access', 'home', NULL, 'high', 2130706433, '2015-02-10 21:58:49', NULL, 'enable', NULL),
(32, 'access', 'home', NULL, 'high', 2130706433, '2015-02-10 21:59:02', NULL, 'enable', NULL),
(33, 'access', 'home', NULL, 'high', 2130706433, '2015-02-10 21:59:37', NULL, 'enable', NULL),
(34, 'access', 'home', NULL, 'high', 2130706433, '2015-02-10 21:59:37', NULL, 'enable', NULL),
(35, 'login', 'login', NULL, 'low', 2130706433, '2015-02-10 21:59:44', 5, 'enable', NULL),
(36, 'access', 'home', NULL, 'high', 2130706433, '2015-02-11 18:35:04', NULL, 'enable', NULL),
(37, 'access', 'favicon.ico', NULL, 'high', 2130706433, '2015-02-11 18:35:04', NULL, 'enable', NULL),
(38, 'access', 'home', NULL, 'high', 2130706433, '2015-02-11 18:35:06', NULL, 'enable', NULL),
(39, 'access', 'favicon.ico', NULL, 'high', 2130706433, '2015-02-11 18:35:06', NULL, 'enable', NULL),
(40, 'login', 'login', NULL, 'low', 2130706433, '2015-02-11 18:35:10', 5, 'enable', NULL),
(41, 'login', 'login', NULL, 'low', 2130706433, '2015-02-11 18:35:28', 5, 'enable', NULL),
(42, 'login', 'login', NULL, 'low', 2130706433, '2015-02-12 16:39:07', 5, 'enable', NULL),
(43, 'login', 'login', NULL, 'low', 2130706433, '2015-02-12 16:41:45', 5, 'enable', NULL),
(44, 'login', 'login', NULL, 'low', 2130706433, '2015-02-12 17:00:17', 5, 'enable', NULL),
(45, 'access', 'register', NULL, 'high', 2130706433, '2015-02-12 22:33:39', NULL, 'enable', NULL),
(46, 'access', 'register', NULL, 'high', 2130706433, '2015-02-12 22:33:45', NULL, 'enable', NULL),
(47, 'access', 'register', NULL, 'high', 2130706433, '2015-02-12 22:33:50', NULL, 'enable', NULL),
(48, 'login', 'login', NULL, 'low', 2130706433, '2015-02-12 22:35:14', 5, 'enable', NULL),
(49, 'login', 'login', NULL, 'low', 2130706433, '2015-02-12 22:39:28', 5, 'enable', NULL),
(50, 'login', 'login', NULL, 'low', 2130706433, '2015-02-12 22:40:49', 5, 'enable', NULL),
(51, 'login', 'login', NULL, 'low', 2130706433, '2015-02-12 22:44:27', 5, 'enable', NULL),
(52, 'login', 'login', NULL, 'low', 2130706433, '2015-02-12 22:44:54', 5, 'enable', NULL),
(53, 'login', 'login', NULL, 'low', 2130706433, '2015-02-12 22:46:32', 5, 'enable', NULL),
(54, 'login', 'login', NULL, 'low', 2130706433, '2015-02-12 22:46:44', 5, 'enable', NULL),
(55, 'access', 'register', NULL, 'high', 2130706433, '2015-02-13 00:13:52', NULL, 'enable', NULL),
(56, 'access', 'register', NULL, 'high', 2130706433, '2015-02-13 00:13:54', NULL, 'enable', NULL),
(57, 'access', 'register', NULL, 'high', 2130706433, '2015-02-13 00:13:58', NULL, 'enable', NULL),
(58, 'login', 'login', NULL, 'low', 2130706433, '2015-02-13 00:14:05', 5, 'enable', NULL),
(59, 'access', 'register', NULL, 'high', 2130706433, '2015-02-13 12:49:57', NULL, 'enable', NULL),
(60, 'login', 'login', NULL, 'low', 2130706433, '2015-02-13 12:52:40', 6, 'enable', NULL),
(61, 'login', 'login', NULL, 'low', 2130706433, '2015-02-13 14:50:40', 5, 'enable', NULL),
(62, 'login', 'login', NULL, 'low', 2130706433, '2015-02-13 21:09:20', 5, 'enable', NULL),
(63, 'login', 'login', NULL, 'low', 2130706433, '2015-02-15 03:39:11', 5, 'enable', NULL),
(64, 'login', 'login', NULL, 'low', 2130706433, '2015-02-15 04:15:45', 5, 'enable', NULL),
(65, 'access', 'home', NULL, 'high', 2130706433, '2015-02-15 05:11:51', 5, 'enable', NULL),
(66, 'access', 'favicon.ico', NULL, 'high', 2130706433, '2015-02-15 05:11:51', 5, 'enable', NULL),
(67, 'login', 'login', NULL, 'low', 2130706433, '2015-02-15 05:11:58', 5, 'enable', NULL),
(68, 'access', 'home', NULL, 'high', 2130706433, '2015-02-15 05:12:03', 5, 'enable', NULL),
(69, 'access', 'favicon.ico', NULL, 'high', 2130706433, '2015-02-15 05:12:03', 5, 'enable', NULL),
(70, 'access', 'home', NULL, 'high', 2130706433, '2015-02-15 05:12:19', 5, 'enable', NULL),
(71, 'access', 'favicon.ico', NULL, 'high', 2130706433, '2015-02-15 05:12:19', 5, 'enable', NULL),
(72, 'access', 'home', NULL, 'high', 2130706433, '2015-02-15 05:12:20', 5, 'enable', NULL),
(73, 'access', 'favicon.ico', NULL, 'high', 2130706433, '2015-02-15 05:12:20', 5, 'enable', NULL),
(74, 'access', 'home', NULL, 'high', 2130706433, '2015-02-15 05:12:20', 5, 'enable', NULL),
(75, 'access', 'favicon.ico', NULL, 'high', 2130706433, '2015-02-15 05:12:20', 5, 'enable', NULL),
(76, 'access', 'home', NULL, 'high', 2130706433, '2015-02-15 05:12:21', 5, 'enable', NULL),
(77, 'access', 'favicon.ico', NULL, 'high', 2130706433, '2015-02-15 05:12:21', 5, 'enable', NULL),
(78, 'login', 'login', NULL, 'low', 2130706433, '2015-02-15 05:12:35', 5, 'enable', NULL),
(79, 'login', 'login', NULL, 'low', 2130706433, '2015-02-15 05:30:52', 5, 'enable', NULL),
(80, 'login', 'login', NULL, 'low', 2130706433, '2015-02-15 05:31:14', 5, 'enable', NULL),
(81, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 13:20:41', NULL, 'enable', NULL),
(82, 'login', 'login', NULL, 'low', 2130706433, '2015-02-15 13:20:48', 5, 'enable', NULL),
(83, 'login', 'login', NULL, 'low', 2130706433, '2015-02-15 17:00:51', 5, 'enable', NULL),
(84, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:06:20', NULL, 'enable', NULL),
(85, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:06:41', NULL, 'enable', NULL),
(86, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:06:54', NULL, 'enable', NULL),
(87, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:07:11', NULL, 'enable', NULL),
(88, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:07:14', NULL, 'enable', NULL),
(89, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:33:45', NULL, 'enable', NULL),
(90, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:52:08', NULL, 'enable', NULL),
(91, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:52:27', NULL, 'enable', NULL),
(92, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:52:45', NULL, 'enable', NULL),
(93, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:52:46', NULL, 'enable', NULL),
(94, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:53:34', NULL, 'enable', NULL),
(95, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:53:55', NULL, 'enable', NULL),
(96, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:54:03', NULL, 'enable', NULL),
(97, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:54:22', NULL, 'enable', NULL),
(98, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:54:27', NULL, 'enable', NULL),
(99, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:54:43', NULL, 'enable', NULL),
(100, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:55:17', NULL, 'enable', NULL),
(101, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:55:19', NULL, 'enable', NULL),
(102, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:55:50', NULL, 'enable', NULL),
(103, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:55:55', NULL, 'enable', NULL),
(104, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:56:57', NULL, 'enable', NULL),
(105, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 20:58:23', NULL, 'enable', NULL),
(106, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:00:20', NULL, 'enable', NULL),
(107, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:02:12', NULL, 'enable', NULL),
(108, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:02:12', NULL, 'enable', NULL),
(109, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:02:13', NULL, 'enable', NULL),
(110, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:02:13', NULL, 'enable', NULL),
(111, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:02:26', NULL, 'enable', NULL),
(112, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:02:27', NULL, 'enable', NULL),
(113, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:05:03', NULL, 'enable', NULL),
(114, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:05:13', NULL, 'enable', NULL),
(115, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:06:18', NULL, 'enable', NULL),
(116, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:08:40', NULL, 'enable', NULL),
(117, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:08:41', NULL, 'enable', NULL),
(118, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:08:56', NULL, 'enable', NULL),
(119, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:09:20', NULL, 'enable', NULL),
(120, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:09:22', NULL, 'enable', NULL),
(121, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:09:56', NULL, 'enable', NULL),
(122, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:10:24', NULL, 'enable', NULL),
(123, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:11:12', NULL, 'enable', NULL),
(124, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:11:20', NULL, 'enable', NULL),
(125, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:11:23', NULL, 'enable', NULL),
(126, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:11:25', NULL, 'enable', NULL),
(127, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:12:10', NULL, 'enable', NULL),
(128, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:12:37', NULL, 'enable', NULL),
(129, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:12:46', NULL, 'enable', NULL),
(130, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:17:24', NULL, 'enable', NULL),
(131, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:18:02', NULL, 'enable', NULL),
(132, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:28:29', NULL, 'enable', NULL),
(133, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:28:42', NULL, 'enable', NULL),
(134, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:28:44', NULL, 'enable', NULL),
(135, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:29:10', NULL, 'enable', NULL),
(136, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:29:27', NULL, 'enable', NULL),
(137, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:29:28', NULL, 'enable', NULL),
(138, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:29:44', NULL, 'enable', NULL),
(139, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:29:49', NULL, 'enable', NULL),
(140, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:29:50', NULL, 'enable', NULL),
(141, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:34:16', NULL, 'enable', NULL),
(142, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:35:30', NULL, 'enable', NULL),
(143, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:36:30', NULL, 'enable', NULL),
(144, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:37:03', NULL, 'enable', NULL),
(145, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:37:58', NULL, 'enable', NULL),
(146, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:38:08', NULL, 'enable', NULL),
(147, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:41:01', NULL, 'enable', NULL),
(148, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:41:40', NULL, 'enable', NULL),
(149, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:42:50', NULL, 'enable', NULL),
(150, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:43:13', NULL, 'enable', NULL),
(151, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:43:21', NULL, 'enable', NULL),
(152, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:43:28', NULL, 'enable', NULL),
(153, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:43:36', NULL, 'enable', NULL),
(154, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:43:55', NULL, 'enable', NULL),
(155, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:43:59', NULL, 'enable', NULL),
(156, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:45:04', NULL, 'enable', NULL),
(157, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:45:36', NULL, 'enable', NULL),
(158, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:45:48', NULL, 'enable', NULL),
(159, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:45:56', NULL, 'enable', NULL),
(160, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:46:22', NULL, 'enable', NULL),
(161, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:46:35', NULL, 'enable', NULL),
(162, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:46:44', NULL, 'enable', NULL),
(163, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:46:48', NULL, 'enable', NULL),
(164, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:47:04', NULL, 'enable', NULL),
(165, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:47:17', NULL, 'enable', NULL),
(166, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:47:30', NULL, 'enable', NULL),
(167, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:48:52', NULL, 'enable', NULL),
(168, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:48:53', NULL, 'enable', NULL),
(169, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:49:49', NULL, 'enable', NULL),
(170, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:49:53', NULL, 'enable', NULL),
(171, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:50:06', NULL, 'enable', NULL),
(172, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:50:20', NULL, 'enable', NULL),
(173, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:50:59', NULL, 'enable', NULL),
(174, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:51:23', NULL, 'enable', NULL),
(175, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:51:35', NULL, 'enable', NULL),
(176, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:52:47', NULL, 'enable', NULL),
(177, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:55:23', NULL, 'enable', NULL),
(178, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:55:33', NULL, 'enable', NULL),
(179, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:56:58', NULL, 'enable', NULL),
(180, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:57:10', NULL, 'enable', NULL),
(181, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:57:17', NULL, 'enable', NULL),
(182, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:57:40', NULL, 'enable', NULL),
(183, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:57:47', NULL, 'enable', NULL),
(184, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:57:48', NULL, 'enable', NULL),
(185, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:57:54', NULL, 'enable', NULL),
(186, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:58:07', NULL, 'enable', NULL),
(187, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:58:12', NULL, 'enable', NULL),
(188, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:58:49', NULL, 'enable', NULL),
(189, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:59:02', NULL, 'enable', NULL),
(190, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:59:09', NULL, 'enable', NULL),
(191, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:59:16', NULL, 'enable', NULL),
(192, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:59:27', NULL, 'enable', NULL),
(193, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:59:38', NULL, 'enable', NULL),
(194, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:59:48', NULL, 'enable', NULL),
(195, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:59:52', NULL, 'enable', NULL),
(196, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 21:59:57', NULL, 'enable', NULL),
(197, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:00:04', NULL, 'enable', NULL),
(198, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:00:09', NULL, 'enable', NULL),
(199, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:00:36', NULL, 'enable', NULL),
(200, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:00:43', NULL, 'enable', NULL),
(201, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:00:51', NULL, 'enable', NULL),
(202, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:00:56', NULL, 'enable', NULL),
(203, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:01:01', NULL, 'enable', NULL),
(204, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:01:03', NULL, 'enable', NULL),
(205, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:01:11', NULL, 'enable', NULL),
(206, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:01:18', NULL, 'enable', NULL),
(207, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:01:18', NULL, 'enable', NULL),
(208, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:01:26', NULL, 'enable', NULL),
(209, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:01:33', NULL, 'enable', NULL),
(210, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:01:37', NULL, 'enable', NULL),
(211, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:01:43', NULL, 'enable', NULL),
(212, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:01:49', NULL, 'enable', NULL),
(213, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:01:54', NULL, 'enable', NULL),
(214, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:01:57', NULL, 'enable', NULL),
(215, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:02:04', NULL, 'enable', NULL),
(216, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:02:18', NULL, 'enable', NULL),
(217, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:02:57', NULL, 'enable', NULL),
(218, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:02:59', NULL, 'enable', NULL),
(219, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:03:05', NULL, 'enable', NULL),
(220, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:03:10', NULL, 'enable', NULL),
(221, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:03:16', NULL, 'enable', NULL),
(222, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:03:17', NULL, 'enable', NULL),
(223, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:03:25', NULL, 'enable', NULL),
(224, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:04:34', NULL, 'enable', NULL),
(225, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:04:35', NULL, 'enable', NULL),
(226, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:04:37', NULL, 'enable', NULL),
(227, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:04:39', NULL, 'enable', NULL),
(228, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:04:44', NULL, 'enable', NULL),
(229, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:04:46', NULL, 'enable', NULL),
(230, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:05:25', NULL, 'enable', NULL),
(231, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:05:34', NULL, 'enable', NULL),
(232, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:05:53', NULL, 'enable', NULL),
(233, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:05:58', NULL, 'enable', NULL),
(234, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:06:14', NULL, 'enable', NULL),
(235, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:06:17', NULL, 'enable', NULL),
(236, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:06:49', NULL, 'enable', NULL),
(237, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:06:53', NULL, 'enable', NULL),
(238, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:06:55', NULL, 'enable', NULL),
(239, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:06:55', NULL, 'enable', NULL),
(240, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:06:55', NULL, 'enable', NULL),
(241, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:07:11', NULL, 'enable', NULL),
(242, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:07:32', NULL, 'enable', NULL),
(243, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:07:33', NULL, 'enable', NULL),
(244, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:07:33', NULL, 'enable', NULL),
(245, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:07:33', NULL, 'enable', NULL),
(246, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:07:40', NULL, 'enable', NULL),
(247, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:07:40', NULL, 'enable', NULL),
(248, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:07:40', NULL, 'enable', NULL),
(249, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:08:45', NULL, 'enable', NULL),
(250, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:09:04', NULL, 'enable', NULL),
(251, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:09:46', NULL, 'enable', NULL),
(252, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:09:56', NULL, 'enable', NULL),
(253, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:10:05', NULL, 'enable', NULL),
(254, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:10:06', NULL, 'enable', NULL),
(255, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:10:06', NULL, 'enable', NULL),
(256, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:10:06', NULL, 'enable', NULL),
(257, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:12:40', NULL, 'enable', NULL),
(258, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:14:42', NULL, 'enable', NULL),
(259, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:14:43', NULL, 'enable', NULL),
(260, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:15:05', NULL, 'enable', NULL),
(261, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:15:32', NULL, 'enable', NULL),
(262, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:15:33', NULL, 'enable', NULL),
(263, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:16:10', NULL, 'enable', NULL),
(264, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:16:38', NULL, 'enable', NULL),
(265, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:16:42', NULL, 'enable', NULL),
(266, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:16:53', NULL, 'enable', NULL),
(267, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:17:02', NULL, 'enable', NULL),
(268, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:17:47', NULL, 'enable', NULL),
(269, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:17:50', NULL, 'enable', NULL),
(270, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:17:56', NULL, 'enable', NULL),
(271, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:18:02', NULL, 'enable', NULL),
(272, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:20:29', NULL, 'enable', NULL),
(273, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:20:43', NULL, 'enable', NULL),
(274, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:20:57', NULL, 'enable', NULL),
(275, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:21:43', NULL, 'enable', NULL),
(276, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:22:22', NULL, 'enable', NULL),
(277, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:22:25', NULL, 'enable', NULL),
(278, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:22:27', NULL, 'enable', NULL),
(279, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:23:00', NULL, 'enable', NULL),
(280, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:23:50', NULL, 'enable', NULL),
(281, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:23:55', NULL, 'enable', NULL),
(282, 'access', 'register', NULL, 'high', 2130706433, '2015-02-15 22:24:05', NULL, 'enable', NULL),
(283, 'login', 'login', NULL, 'low', 2130706433, '2015-02-16 11:14:46', 5, 'enable', NULL),
(284, 'access', 'register', NULL, 'high', 2130706433, '2015-02-16 14:14:19', NULL, 'enable', NULL),
(285, 'login', 'login', NULL, 'low', 2130706433, '2015-02-16 14:14:28', 5, 'enable', NULL),
(286, 'access', 'register', NULL, 'high', 2130706433, '2015-02-16 18:35:52', NULL, 'enable', NULL),
(287, 'login', 'login', NULL, 'low', 2130706433, '2015-02-16 18:36:24', 5, 'enable', NULL),
(288, 'access', 'register', NULL, 'high', 2130706433, '2015-02-16 23:32:55', NULL, 'enable', NULL),
(289, 'login', 'login', NULL, 'low', 2130706433, '2015-02-16 23:33:02', 5, 'enable', NULL),
(290, 'login', 'login', NULL, 'low', 2130706433, '2015-02-17 09:11:43', 5, 'enable', NULL),
(291, 'access', 'register', NULL, 'high', 2130706433, '2015-02-17 15:51:11', NULL, 'enable', NULL),
(292, 'login', 'login', NULL, 'low', 2130706433, '2015-02-17 15:51:20', 5, 'enable', NULL),
(293, 'access', 'register', NULL, 'high', 2130706433, '2015-02-17 17:31:29', NULL, 'enable', NULL),
(294, 'access', 'register', NULL, 'high', 2130706433, '2015-02-17 17:31:41', NULL, 'enable', NULL),
(295, 'login', 'login', NULL, 'low', 2130706433, '2015-02-17 17:31:46', 5, 'enable', NULL),
(296, 'access', 'register', NULL, 'high', 2130706433, '2015-02-17 23:32:13', NULL, 'enable', NULL),
(297, 'access', 'register', NULL, 'high', 2130706433, '2015-02-17 23:32:17', NULL, 'enable', NULL),
(298, 'access', 'register', NULL, 'high', 2130706433, '2015-02-17 23:32:48', NULL, 'enable', NULL),
(299, 'login', 'login', NULL, 'low', 2130706433, '2015-02-17 23:32:55', 5, 'enable', NULL),
(300, 'login', 'login', NULL, 'low', 2130706433, '2015-02-18 13:59:10', 5, 'enable', NULL),
(301, 'login', 'login', NULL, 'low', 2130706433, '2015-02-18 21:34:32', 5, 'enable', NULL),
(302, 'login', 'login', NULL, 'low', 2130706433, '2015-02-19 01:14:04', 5, 'enable', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  `user_birthdate` datetime DEFAULT NULL,
  `user_degree` varchar(50) DEFAULT NULL,
  `country_id` smallint(3) unsigned DEFAULT '101',
  `user_province` varchar(50) DEFAULT NULL,
  `user_codemelli` bigint(11) unsigned DEFAULT NULL,
  `user_passport` varchar(50) DEFAULT NULL,
  `user_imageaddr` varchar(500) DEFAULT NULL,
  `user_logincounter` smallint(3) unsigned NOT NULL DEFAULT '0',
  `user_refinecounter` smallint(2) unsigned DEFAULT NULL,
  `user_parent` int(6) unsigned DEFAULT NULL,
  `permission_id` smallint(5) unsigned NOT NULL,
  `user_feedback` tinyint(3) unsigned DEFAULT NULL,
  `user_status` enum('active','awaiting','deactive','removed','filter','exit') NOT NULL DEFAULT 'active',
  `user_barcode` int(5) unsigned NOT NULL,
  `user_enterdatetime` datetime NOT NULL,
  `user_exitdatetime` datetime NOT NULL,
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `booth_id` smallint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_booths_id` (`booth_id`),
  KEY `users_permissions_id` (`permission_id`),
  KEY `users_countrys_id` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_gender`, `user_firstname`, `user_lastname`, `user_mobile`, `user_mobile2`, `user_password`, `user_birthdate`, `user_degree`, `country_id`, `user_province`, `user_codemelli`, `user_passport`, `user_imageaddr`, `user_logincounter`, `user_refinecounter`, `user_parent`, `permission_id`, `user_feedback`, `user_status`, `user_barcode`, `user_enterdatetime`, `user_exitdatetime`, `date_modified`, `booth_id`) VALUES
(5, 'male', 'جواد', 'عوض زاده', '989357629759', NULL, '$2y$07$x889MdhsRxGcGshcrqdEc.mcx0e1o2PeIjJPKx0VdxK4LQ1xDnZUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, 1, NULL, 'active', 0, '2015-02-09 22:44:14', '0000-00-00 00:00:00', NULL, NULL),
(6, 'male', 'رضا', 'محیطی', '989109610612', NULL, '$2y$07$8YHQXcb0TblkqgdtG/dAseC//MUscFTM5fSsga8.qJJSNog27CSMC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 4, NULL, 'active', 0, '2015-02-13 12:52:28', '0000-00-00 00:00:00', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booths`
--
ALTER TABLE `booths`
  ADD CONSTRAINT `booths_sections_id` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

--
-- Constraints for table `citys`
--
ALTER TABLE `citys`
  ADD CONSTRAINT `citys_provinces_id` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);

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
-- Constraints for table `provinces`
--
ALTER TABLE `provinces`
  ADD CONSTRAINT `provinces_countrys_id` FOREIGN KEY (`country_id`) REFERENCES `countrys` (`id`);

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
  ADD CONSTRAINT `users_countrys_id` FOREIGN KEY (`country_id`) REFERENCES `countrys` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_permissions_id` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
