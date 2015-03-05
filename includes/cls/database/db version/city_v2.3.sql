-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 05, 2015 at 09:25 PM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.6.6-1+deb.sury.org~trusty+1

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
  `booth_maxplayer` int(2) unsigned DEFAULT '10',
  `booth_gametime` time DEFAULT '00:01:00',
  `section_id` smallint(2) unsigned NOT NULL,
  `booth_status` enum('enable','disable','expire') NOT NULL DEFAULT 'enable',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `booths_sections_id` (`section_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `booths`
--

INSERT INTO `booths` (`id`, `booth_title`, `booth_winpoint`, `booth_loosepoint`, `booth_maxplayer`, `booth_gametime`, `section_id`, `booth_status`, `date_modified`) VALUES
(1, 'غرفه طناب کشی', 10, 1, 10, '00:00:00', 1, 'enable', '2015-02-08 15:08:24'),
(2, 'تیراندازی', 15, 2, 3, '00:01:00', 5, 'enable', '2015-03-05 14:55:55'),
(3, 'اسب سواری', 18, 3, 2, '00:01:00', 5, 'enable', NULL);

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
  `game_status` enum('time','start','win','loose','absent','delete') NOT NULL DEFAULT 'time',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `users_games_id` (`user_id`),
  KEY `booths_games_id` (`booth_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=213 ;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `user_id`, `booth_id`, `game_prize`, `game_date`, `game_regtime`, `game_starttime`, `game_endtime`, `game_status`, `date_modified`) VALUES
(159, 8, 2, 0, '2015-03-06', '2015-03-02 01:04:30', '2015-03-04 15:56:17', '2015-03-04 15:56:18', 'time', '2015-03-05 15:39:54'),
(160, 9, 2, 10, '2015-03-06', '2015-03-01 01:04:33', '2015-03-04 16:34:21', '2015-03-05 18:53:55', 'win', '2015-03-05 15:38:48'),
(161, 10, 2, 1, '2015-03-04', '2015-03-01 01:04:35', '2015-03-04 16:34:20', '2015-03-04 16:34:22', 'loose', '2015-03-05 15:12:19'),
(162, 11, 2, 1, '2015-03-04', '2015-03-01 01:04:37', '2015-03-04 16:34:20', '2015-03-04 16:34:24', 'loose', '2015-03-05 15:12:34'),
(163, 12, 1, 0, '2015-03-03', '2015-03-01 01:12:12', '2015-03-04 16:33:22', '2015-03-04 16:33:58', 'time', '2015-03-05 15:30:24'),
(164, 8, 1, 10, '2015-03-04', '2015-03-01 01:12:22', '2015-03-04 10:24:40', '2015-03-03 03:59:17', 'win', '2015-03-05 15:30:00'),
(165, 10, 2, 0, '2015-03-04', '2015-03-01 01:12:36', '2015-03-04 10:21:23', '2015-03-01 01:13:37', 'time', '2015-03-05 15:30:18'),
(166, 11, 2, 0, '2015-03-03', '2015-03-01 01:12:38', '2015-03-04 15:56:44', '2015-03-04 15:56:57', 'absent', '2015-03-05 15:30:11'),
(167, 13, 2, 0, '2015-03-03', '2015-03-03 03:37:41', NULL, NULL, 'time', '2015-03-05 15:28:00'),
(168, 86, 2, 1, '2015-03-05', '2015-03-05 18:52:16', '2015-03-05 18:53:54', '2015-03-05 18:53:59', 'loose', '2015-03-05 15:28:02'),
(169, 87, 2, 0, '2015-03-05', '2015-03-05 18:52:18', NULL, NULL, 'absent', '2015-03-05 15:27:52'),
(170, 88, 2, 10, '2015-03-07', '2015-03-05 18:52:21', '2015-03-05 18:53:57', '2015-03-05 18:54:00', 'win', '2015-03-05 15:39:52'),
(171, 70, 2, 1, '2015-03-06', '2015-03-05 18:52:44', '2015-03-05 18:53:57', '2015-03-05 18:54:02', 'loose', '2015-03-05 15:39:56'),
(172, 71, 1, 10, '2015-03-05', '2015-03-05 18:52:46', '2015-03-05 18:53:59', '2015-03-05 18:54:01', 'win', '2015-03-05 15:24:01'),
(173, 72, 1, 1, '2015-03-05', '2015-03-05 18:52:47', '2015-03-05 18:53:57', '2015-03-05 18:54:00', 'loose', '2015-03-05 15:24:00'),
(174, 73, 1, 10, '2015-03-07', '2015-03-05 18:52:49', '2015-03-05 18:53:58', '2015-03-05 18:54:01', 'win', '2015-03-05 15:38:20'),
(175, 74, 1, 10, '2015-03-05', '2015-03-05 18:52:50', '2015-03-05 18:53:58', '2015-03-05 18:54:06', 'win', '2015-03-05 15:24:06'),
(176, 75, 1, 1, '2015-03-07', '2015-03-05 18:52:52', '2015-03-05 18:54:03', '2015-03-05 18:54:06', 'loose', '2015-03-05 15:38:28'),
(177, 76, 1, 10, '2015-03-05', '2015-03-05 18:52:54', '2015-03-05 18:54:04', '2015-03-05 18:54:08', 'win', '2015-03-05 15:24:08'),
(178, 77, 1, 10, '2015-03-05', '2015-03-05 18:52:55', '2015-03-05 18:54:04', '2015-03-05 18:54:07', 'win', '2015-03-05 15:24:07'),
(179, 78, 1, 10, '2015-03-07', '2015-03-05 18:52:57', '2015-03-05 18:54:05', '2015-03-05 18:54:08', 'win', '2015-03-05 15:38:23'),
(180, 61, 1, 10, '2015-03-05', '2015-03-05 18:53:04', '2015-03-05 18:54:05', '2015-03-05 18:54:08', 'win', '2015-03-05 15:24:08'),
(181, 63, 2, 10, '2015-03-05', '2015-03-05 18:53:08', '2015-03-05 18:54:05', '2015-03-05 18:54:07', 'win', '2015-03-05 15:28:08'),
(182, 61, 2, 10, '2015-03-05', '2015-03-05 18:54:45', '2015-03-05 18:55:08', '2015-03-05 18:55:12', 'win', '2015-03-05 15:27:54'),
(183, 63, 1, 10, '2015-03-06', '2015-03-04 18:54:47', '2015-03-05 18:55:08', '2015-03-05 18:55:12', 'win', '2015-03-05 15:39:16'),
(184, 65, 1, 10, '2015-03-08', '2015-03-04 18:54:49', '2015-03-05 18:55:09', '2015-03-05 18:55:14', 'win', '2015-03-05 15:39:24'),
(185, 66, 1, 10, '2015-03-05', '2015-03-05 18:54:51', '2015-03-05 18:55:09', '2015-03-05 18:55:12', 'win', '2015-03-05 15:25:12'),
(186, 70, 1, 10, '2015-03-05', '2015-03-05 18:54:54', '2015-03-05 18:55:09', '2015-03-05 18:55:14', 'win', '2015-03-05 15:25:14'),
(187, 71, 1, 10, '2015-03-05', '2015-03-05 18:54:55', '2015-03-05 18:55:10', '2015-03-05 18:55:14', 'win', '2015-03-05 15:25:14'),
(188, 72, 1, 10, '2015-03-05', '2015-03-05 18:54:56', '2015-03-05 18:55:10', '2015-03-05 18:55:13', 'win', '2015-03-05 15:25:13'),
(189, 73, 1, 10, '2015-03-05', '2015-03-05 18:54:57', '2015-03-05 18:55:11', '2015-03-05 18:55:13', 'win', '2015-03-05 15:25:13'),
(190, 74, 1, 10, '2015-03-05', '2015-03-05 18:54:58', '2015-03-05 18:55:11', '2015-03-05 18:55:18', 'win', '2015-03-05 15:25:18'),
(191, 75, 1, 1, '2015-03-05', '2015-03-05 18:55:00', '2015-03-05 18:55:15', '2015-03-05 18:55:18', 'loose', '2015-03-05 15:25:18'),
(192, 76, 1, 10, '2015-03-05', '2015-03-05 18:55:01', '2015-03-05 18:55:16', '2015-03-05 18:55:17', 'win', '2015-03-05 15:25:17'),
(193, 77, 1, 1, '2015-03-05', '2015-03-05 18:55:03', '2015-03-05 18:55:16', '2015-03-05 18:55:17', 'loose', '2015-03-05 15:25:17'),
(194, 78, 1, 10, '2015-03-05', '2015-03-05 18:55:05', '2015-03-05 18:55:17', '2015-03-05 18:55:19', 'win', '2015-03-05 15:25:19'),
(195, 70, 1, 10, '2015-03-05', '2015-03-05 18:55:40', '2015-03-05 18:55:53', '2015-03-05 18:55:55', 'win', '2015-03-05 15:25:55'),
(196, 71, 1, 10, '2015-03-05', '2015-03-05 18:55:41', '2015-03-05 18:55:54', '2015-03-05 18:55:56', 'win', '2015-03-05 15:25:56'),
(197, 72, 1, 10, '2015-03-05', '2015-03-05 18:55:42', '2015-03-05 18:55:56', '2015-03-05 18:55:57', 'win', '2015-03-05 15:25:57'),
(198, 73, 2, 10, '2015-03-05', '2015-03-05 18:55:44', '2015-03-05 18:55:54', '2015-03-05 18:55:57', 'win', '2015-03-05 15:27:49'),
(199, 74, 1, 10, '2015-03-05', '2015-03-05 18:55:45', '2015-03-05 18:55:58', '2015-03-05 18:55:58', 'win', '2015-03-05 15:25:58'),
(200, 75, 1, 10, '2015-03-05', '2015-03-05 18:55:46', '2015-03-05 18:55:59', '2015-03-05 18:55:59', 'win', '2015-03-05 15:25:59'),
(201, 76, 1, 10, '2015-03-05', '2015-03-05 18:55:47', '2015-03-05 18:55:59', '2015-03-05 18:56:01', 'win', '2015-03-05 15:26:01'),
(202, 77, 1, 10, '2015-03-05', '2015-03-05 18:55:48', '2015-03-05 18:56:00', '2015-03-05 18:56:02', 'win', '2015-03-05 15:26:02'),
(203, 78, 1, 1, '2015-03-05', '2015-03-05 18:55:50', '2015-03-05 18:56:00', '2015-03-05 18:56:01', 'loose', '2015-03-05 15:26:01'),
(204, 61, 1, 10, '2015-03-05', '2015-03-05 19:12:16', '2015-03-05 19:12:30', '2015-03-05 19:12:32', 'win', '2015-03-05 15:42:32'),
(205, 63, 1, 10, '2015-03-05', '2015-03-05 19:12:20', '2015-03-05 19:12:31', '2015-03-05 19:12:32', 'win', '2015-03-05 15:42:32'),
(206, 65, 1, 10, '2015-03-05', '2015-03-05 19:12:23', '2015-03-05 19:12:31', '2015-03-05 19:12:33', 'win', '2015-03-05 15:42:33'),
(207, 61, 3, 18, '2015-03-05', '2015-03-05 19:13:26', '2015-03-05 19:13:30', '2015-03-05 19:13:31', 'win', '2015-03-05 15:43:31'),
(208, 63, 3, 18, '2015-03-05', '2015-03-05 19:13:29', '2015-03-05 19:13:30', '2015-03-05 19:13:31', 'win', '2015-03-05 15:43:31'),
(209, 61, 3, 18, '2015-03-05', '2015-03-05 19:14:06', '2015-03-05 19:14:13', '2015-03-05 19:14:13', 'win', '2015-03-05 15:44:13'),
(210, 61, 3, 18, '2015-03-05', '2015-03-05 19:14:19', '2015-03-05 19:14:51', '2015-03-05 19:14:51', 'win', '2015-03-05 15:44:51'),
(211, 61, 3, 3, '2015-03-05', '2015-03-05 19:15:28', '2015-03-05 19:15:58', '2015-03-05 19:15:59', 'loose', '2015-03-05 15:45:59'),
(212, 61, 3, 0, '2015-03-05', '2015-03-05 19:20:58', '2015-03-05 21:12:26', NULL, 'start', '2015-03-05 17:42:26');

--
-- Triggers `games`
--
DROP TRIGGER IF EXISTS `games_BU_inline_update_start`;
DELIMITER //
CREATE TRIGGER `games_BU_inline_update_start` BEFORE UPDATE ON `games`
 FOR EACH ROW IF NEW.game_status <> OLD.game_status THEN

 if new.game_status = 'loose' then
  set New.game_prize = (select booth_loosepoint from booths where id = New.booth_id );

 elseif new.game_status = 'win' then
  if(SELECT COUNT(*) FROM `games` WHERE `game_date`=CURDATE() AND `user_id`='10' AND `game_status`='win')>0 then
   set New.game_prize = (select booth_loosepoint from booths where id = New.booth_id );
  else
   set New.game_prize = (select booth_winpoint   from booths where id = New.booth_id );
  END IF;
else
  set New.game_prize = 0;
 END IF;
END IF
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `kids`
--

CREATE TABLE IF NOT EXISTS `kids` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(6) unsigned NOT NULL,
  `kid_color` enum('red','green','blue','black','white','yellow','purple') NOT NULL,
  `kid_number` smallint(1) unsigned NOT NULL,
  `kid_date` date NOT NULL,
  `kid_regtime` datetime DEFAULT NULL,
  `kid_returntime` datetime DEFAULT NULL,
  `kid_endtime` datetime DEFAULT NULL,
  `kid_status` enum('in','out','babylost','parentlost','awaiting') NOT NULL DEFAULT 'in',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `kindergartens_users_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `kids`
--

INSERT INTO `kids` (`id`, `user_id`, `kid_color`, `kid_number`, `kid_date`, `kid_regtime`, `kid_returntime`, `kid_endtime`, `kid_status`, `date_modified`) VALUES
(28, 5, 'red', 1, '2015-03-03', '2015-03-03 05:38:30', '2015-03-03 05:56:50', '2015-03-03 05:56:50', 'out', '2015-03-03 02:26:50'),
(29, 8, 'green', 2, '2015-03-03', '2015-03-03 05:38:41', '2015-03-03 05:56:34', '2015-03-03 05:56:35', 'out', '2015-03-03 02:26:35'),
(30, 11, 'red', 2, '2015-03-03', '2015-03-03 05:39:02', '2015-03-03 06:01:27', '2015-03-03 06:06:13', 'out', '2015-03-03 02:36:13'),
(31, 13, 'red', 3, '2015-03-03', '2015-03-03 05:40:32', NULL, NULL, 'in', NULL),
(32, 8, 'blue', 1, '2015-03-03', '2015-03-03 05:56:40', '2015-03-03 06:06:12', NULL, 'awaiting', '2015-03-03 02:36:12'),
(33, 5, 'black', 1, '2015-03-03', '2015-03-03 05:56:52', NULL, NULL, 'in', NULL),
(34, 11, 'purple', 1, '2015-03-03', '2015-03-03 06:06:27', NULL, NULL, 'in', NULL),
(35, 5, 'purple', 1, '2015-03-04', '2015-03-04 10:37:03', '2015-03-04 10:38:45', '2015-03-04 10:38:47', 'out', '2015-03-04 07:08:47'),
(36, 10, 'yellow', 1, '2015-03-04', '2015-03-04 10:37:10', '2015-03-04 16:20:10', '2015-03-04 16:20:12', 'out', '2015-03-04 12:50:12'),
(37, 11, 'white', 1, '2015-03-04', '2015-03-04 10:37:15', '2015-03-04 10:38:44', NULL, 'awaiting', '2015-03-04 07:08:44'),
(38, 8, 'black', 1, '2015-03-04', '2015-03-04 10:37:48', NULL, NULL, 'in', NULL),
(39, 9, 'blue', 1, '2015-03-04', '2015-03-04 10:37:52', NULL, NULL, 'in', NULL),
(40, 12, 'green', 1, '2015-03-04', '2015-03-04 10:38:00', NULL, NULL, 'in', NULL),
(41, 6, 'red', 1, '2015-03-04', '2015-03-04 10:38:04', NULL, NULL, 'in', NULL),
(42, 13, 'purple', 4, '2015-03-04', '2015-03-04 10:38:38', NULL, NULL, 'in', NULL),
(43, 86, 'red', 1, '2015-03-05', '2015-03-05 20:56:39', '2015-03-05 20:58:18', NULL, 'awaiting', '2015-03-05 17:28:18'),
(44, 87, 'green', 1, '2015-03-05', '2015-03-05 20:56:42', NULL, NULL, 'in', NULL),
(45, 88, 'black', 1, '2015-03-05', '2015-03-05 20:56:49', NULL, NULL, 'in', NULL),
(46, 100, 'white', 1, '2015-03-05', '2015-03-05 20:57:08', NULL, NULL, 'in', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `option_cat`, `option_name`, `option_value`, `option_extra`, `option_status`, `user_id`, `date_modified`) VALUES
(1, 'kindergarten_limit', 'limit', '100', NULL, 'enable', NULL, NULL),
(2, 'change', '', '300', NULL, 'enable', NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission_title`, `permission_status`, `date_modified`) VALUES
(1, 'Admin', 'enable', NULL),
(2, 'Registerer', 'enable', NULL),
(3, 'Boother ', 'enable', NULL),
(4, 'Visitor', 'enable', NULL),
(5, 'Kindergarten', 'enable', '2015-03-03 06:10:29');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `userlogs`
--

INSERT INTO `userlogs` (`id`, `userlog_type`, `userlog_module`, `userlog_value`, `userlog_priority`, `userlog_ip`, `userlog_time`, `user_id`, `userlog_status`, `date_modified`) VALUES
(1, 'login', 'login', NULL, 'low', 2130706433, '2015-03-04 13:29:20', 8, 'enable', NULL),
(2, 'login', 'login', NULL, 'low', 2130706433, '2015-03-04 15:39:04', 8, 'enable', NULL),
(3, 'login', 'login', NULL, 'low', 2130706433, '2015-03-04 18:14:51', 8, 'enable', NULL),
(4, 'login', 'login', NULL, 'low', 2130706433, '2015-03-04 18:15:26', 8, 'enable', NULL),
(5, 'login', 'login', NULL, 'low', 2130706433, '2015-03-04 18:15:35', 8, 'enable', NULL),
(6, 'login', 'login', NULL, 'low', 2130706433, '2015-03-04 18:15:42', 8, 'enable', NULL),
(7, 'login', 'login', NULL, 'low', 2130706433, '2015-03-04 18:16:50', 8, 'enable', NULL),
(8, 'login', 'login', NULL, 'low', 2130706433, '2015-03-05 09:38:04', 8, 'enable', NULL),
(9, 'access', 'register', NULL, 'medium', 2130706433, '2015-03-05 12:58:37', NULL, 'enable', NULL),
(10, 'login', 'login', NULL, 'low', 2130706433, '2015-03-05 12:58:43', 8, 'enable', NULL),
(11, 'access', 'register', NULL, 'medium', 2130706433, '2015-03-05 17:45:53', NULL, 'enable', NULL),
(12, 'login', 'login', NULL, 'low', 2130706433, '2015-03-05 17:46:12', 8, 'enable', NULL),
(13, 'login', 'login', NULL, 'low', 2130706433, '2015-03-05 18:55:34', 8, 'enable', NULL),
(14, 'login', 'login', NULL, 'low', 2130706433, '2015-03-05 19:11:41', 8, 'enable', NULL),
(15, 'login', 'login', NULL, 'low', 2130706433, '2015-03-05 19:11:47', 9, 'enable', NULL),
(16, 'login', 'login', NULL, 'low', 2130706433, '2015-03-05 19:12:02', 10, 'enable', NULL),
(17, 'access', 'home', NULL, 'medium', 2130706433, '2015-03-05 19:12:27', 10, 'enable', NULL),
(18, 'access', 'favicon.ico', NULL, 'medium', 2130706433, '2015-03-05 19:12:28', 10, 'enable', NULL),
(19, 'login', 'login', NULL, 'low', 2130706433, '2015-03-05 19:13:09', 10, 'enable', NULL),
(20, 'access', 'date', NULL, 'medium', 2130706433, '2015-03-05 19:16:00', 10, 'enable', NULL),
(21, 'access', 'favicon.ico', NULL, 'medium', 2130706433, '2015-03-05 19:16:00', 10, 'enable', NULL),
(22, 'login', 'login', NULL, 'low', 2130706433, '2015-03-05 19:34:54', 12, 'enable', NULL),
(23, 'login', 'login', NULL, 'low', 2130706433, '2015-03-05 19:35:09', 11, 'enable', NULL),
(24, 'login', 'login', NULL, 'low', 2130706433, '2015-03-05 19:37:39', 11, 'enable', NULL),
(25, 'login', 'login', NULL, 'low', 2130706433, '2015-03-05 19:38:01', 12, 'enable', NULL),
(26, 'login', 'login', NULL, 'low', 2130706433, '2015-03-05 19:38:17', 8, 'enable', NULL);

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
  `user_birthyear` year(4) DEFAULT NULL,
  `user_degree` varchar(50) DEFAULT NULL,
  `country_id` smallint(3) unsigned DEFAULT '101',
  `user_province` varchar(50) DEFAULT NULL,
  `user_nationalcode` bigint(11) unsigned DEFAULT NULL,
  `user_passport` varchar(50) DEFAULT NULL,
  `user_imageaddr` varchar(500) DEFAULT NULL,
  `user_logincounter` smallint(3) unsigned NOT NULL DEFAULT '0',
  `user_refinecounter` smallint(2) unsigned DEFAULT NULL,
  `user_parent` int(6) unsigned DEFAULT NULL,
  `permission_id` smallint(5) unsigned NOT NULL,
  `user_feedback` tinyint(3) unsigned DEFAULT NULL,
  `user_status` enum('active','awaiting','deactive','removed','filter','exit') NOT NULL DEFAULT 'active',
  `user_barcode` int(5) unsigned zerofill NOT NULL,
  `user_enterdatetime` datetime NOT NULL,
  `user_exitdatetime` datetime DEFAULT NULL,
  `booth_id` smallint(3) unsigned DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `users_booths_id` (`booth_id`),
  KEY `users_permissions_id` (`permission_id`),
  KEY `users_countrys_id` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_gender`, `user_firstname`, `user_lastname`, `user_mobile`, `user_mobile2`, `user_password`, `user_birthyear`, `user_degree`, `country_id`, `user_province`, `user_nationalcode`, `user_passport`, `user_imageaddr`, `user_logincounter`, `user_refinecounter`, `user_parent`, `permission_id`, `user_feedback`, `user_status`, `user_barcode`, `user_enterdatetime`, `user_exitdatetime`, `booth_id`, `date_modified`) VALUES
(5, 'male', 'جواد', 'عوض زاده', '989357629759', NULL, '$2y$07$x889MdhsRxGcGshcrqdEc.mcx0e1o2PeIjJPKx0VdxK4LQ1xDnZUS', 2005, NULL, NULL, '10', NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, 'active', 10000, '2015-03-03 16:34:15', NULL, 2, '2015-03-05 15:24:39'),
(6, 'female', 'رضا', 'محیطی', '989109610612', NULL, '$2y$07$8YHQXcb0TblkqgdtG/dAseC//MUscFTM5fSsga8.qJJSNog27CSMC', 1990, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 2, NULL, 'active', 10006, '2015-03-01 16:34:15', NULL, 1, '2015-03-05 12:06:35'),
(8, 'male', 'کاربر', 'سطح ۱', '989120001111', NULL, '$2y$07$Lfmh5iKdHVRLA5iresYl1.TIw7UxIRKviWymBf8.6LZYe4Ta.tjbq', 2005, NULL, 101, '10', 123, NULL, NULL, 46, NULL, NULL, 1, NULL, 'active', 10001, '2015-03-04 16:34:15', NULL, 3, '2015-03-05 16:08:16'),
(9, 'male', 'کاربر', 'سطح ۲', '989120002222', NULL, '$2y$07$Pb/d4KwCCjs75Xmw9jFYJe6NtfQTvQECQrrakpvs/t5cJnGH1O0Ce', 2003, NULL, 101, '10', NULL, NULL, NULL, 2, NULL, NULL, 2, NULL, 'active', 10002, '2015-03-02 16:34:15', NULL, 1, '2015-03-05 15:41:46'),
(10, 'male', 'کاربر', 'سطح ۳', '989120003333', NULL, '$2y$07$unk4DSpJZIQI3ojbcFptPeydtIM/BJvIV2JXsHIKB2DKublolvk86', 2005, NULL, 101, '10', 345, NULL, NULL, 2, NULL, NULL, 3, NULL, 'active', 10003, '2015-03-01 16:34:15', NULL, 3, '2015-03-05 15:43:08'),
(11, 'male', 'کاربر', 'سطح ۴', '989120004444', NULL, '$2y$07$PFcSFRbDiDfyD3xQIOZ6hOK1N.gbHG4dsUfzMAL5eHBxX29Q0dSky', 2004, NULL, 101, '18', NULL, NULL, NULL, 2, NULL, NULL, 4, NULL, 'active', 10004, '2015-03-03 16:34:15', NULL, 1, '2015-03-05 16:07:38'),
(12, 'female', 'کاربر', 'سطح ۵', '989120005555', NULL, '$2y$07$e1gyYa0mZJ7YWLwCm8xn2OsA.ljlhd5mFQOshOx0TtkRoA.PkvjOa', 2003, NULL, 101, '10', 123, NULL, NULL, 10, NULL, NULL, 5, NULL, 'active', 10005, '2015-03-02 16:34:15', NULL, 1, '2015-03-05 16:08:00'),
(13, 'male', 'جواد', 'عوض زاده', '09357269759', NULL, NULL, 2005, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10008, '2015-03-04 03:37:34', NULL, NULL, '2015-03-05 06:20:18'),
(14, 'male', 'سارا', 'ترکمنی', '09357239876', NULL, NULL, 2005, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10028, '2015-03-03 23:18:27', NULL, NULL, '2015-03-05 06:24:46'),
(16, 'male', 'جواد', 'عوض زاده', '09119835682', NULL, NULL, 2003, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10016, '2015-03-04 07:29:50', NULL, NULL, '2015-03-05 06:27:12'),
(20, 'female', 'تست خانم', 'اول', '09111941061', NULL, NULL, 2005, NULL, 101, '18', 2190053995, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10031, '2015-03-04 18:39:26', NULL, NULL, '2015-03-05 06:25:08'),
(21, 'male', 'تست خانم', 'اول', '09111941061', NULL, NULL, 2005, NULL, 101, '10', 2190053995, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10032, '2015-03-02 18:39:28', NULL, NULL, '2015-03-05 06:20:50'),
(22, 'male', 'تست خانم', 'اول', '09111941061', NULL, NULL, 2005, NULL, 101, '18', 2190053995, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10033, '2015-03-05 18:44:54', NULL, NULL, '2015-03-05 06:22:24'),
(23, 'male', 'تست خانم', 'اول', '09111941061', NULL, NULL, 2005, NULL, 101, '10', 2190053995, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10034, '2015-03-04 18:49:57', NULL, NULL, '2015-03-05 06:24:49'),
(24, 'female', 'تست خانم', 'اول', '09111941061', NULL, NULL, 2005, NULL, 101, '10', 2190053994, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10035, '2015-03-06 18:55:25', NULL, NULL, '2015-03-05 06:21:02'),
(25, 'male', 'تست خانم', 'اول', '09111941061', NULL, NULL, 2005, NULL, 101, '10', 2190053994, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10036, '2015-03-04 18:56:08', NULL, NULL, '2015-03-05 06:24:52'),
(26, 'female', 'تست خانم', 'اول', '09111941061', NULL, NULL, 2005, NULL, 101, '10', 2190053994, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10037, '2015-03-04 18:56:45', NULL, NULL, '2015-03-05 06:24:18'),
(27, 'female', 'تست خانم', 'اول', '09111941061', NULL, NULL, 2004, NULL, 101, '10', 2190053994, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10038, '2015-03-06 18:57:03', NULL, NULL, '2015-03-05 06:26:25'),
(28, 'male', 'تست', 'مرد اول', '09111941061', NULL, NULL, 2004, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10039, '2015-03-04 19:09:57', NULL, NULL, '2015-03-05 06:26:22'),
(29, 'male', 'تست', 'مرد اول', '09111941061', NULL, NULL, 2005, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10040, '2015-03-06 19:10:02', NULL, NULL, '2015-03-05 06:26:29'),
(30, 'male', 'تست', 'مرد اول', '09111941061', NULL, NULL, 2005, NULL, 101, '18', 2190053994, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10041, '2015-03-04 19:10:13', NULL, NULL, '2015-03-05 06:20:59'),
(31, 'female', 'تست', 'مرد سوم', '1238513297324', NULL, NULL, 1990, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10040, '2015-03-05 13:24:30', NULL, NULL, '2015-03-05 12:06:24'),
(32, 'male', 'تست', 'مرد چهارم', '091287343245', NULL, NULL, 1990, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10041, '2015-03-05 13:26:18', NULL, NULL, '2015-03-05 12:06:26'),
(33, 'female', 'تست', 'مرد چهارم', '091287343245', NULL, NULL, 2004, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10042, '2015-03-05 13:26:20', NULL, NULL, '2015-03-05 12:05:55'),
(34, 'male', 'تست', 'مرد چهارم', '091287343245', NULL, NULL, 2004, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10043, '2015-03-05 13:26:24', NULL, NULL, '2015-03-05 12:05:58'),
(35, 'male', 'تست', 'مرد چهارم', '091287343245', NULL, NULL, 2005, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10044, '2015-03-03 13:26:30', NULL, NULL, '2015-03-05 12:06:07'),
(36, 'female', 'تست', 'مرد چهارم', '091287343245', NULL, NULL, 2004, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10045, '2015-03-03 13:29:28', NULL, NULL, '2015-03-05 12:05:56'),
(37, 'male', 'تست', 'مرد چهارم', '091287343245', NULL, NULL, 1990, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10046, '2015-03-03 13:30:05', NULL, NULL, '2015-03-05 12:06:21'),
(38, 'male', 'تست', 'مرد چهارم', '091287343245', NULL, NULL, 2005, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10047, '2015-03-02 13:30:44', NULL, NULL, '2015-03-05 12:06:04'),
(39, 'female', 'تست', 'مرد چهارم', '091287343245', NULL, NULL, 2005, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10048, '2015-03-02 13:31:03', NULL, NULL, '2015-03-05 12:06:05'),
(40, 'male', 'تست', 'مرد پنجم', '9281365612', NULL, NULL, 1990, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10049, '2015-03-03 14:22:46', NULL, NULL, '2015-03-05 12:08:12'),
(41, 'male', 'تست', 'مرد پنجم', '9281365612', NULL, NULL, 2005, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10050, '2015-03-05 14:22:57', NULL, NULL, '2015-03-05 14:50:37'),
(42, 'male', 'تست', 'مرد پنجم', '9281365612', NULL, NULL, 1990, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10051, '2015-03-03 14:24:44', NULL, NULL, '2015-03-05 12:08:10'),
(43, 'female', 'تست', 'مرد پنجم', '9281365612', NULL, NULL, 2005, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10052, '2015-03-03 14:30:10', NULL, NULL, '2015-03-05 12:08:02'),
(44, 'male', 'تست', 'مرد پنجم', '9281365612', NULL, NULL, 2005, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10053, '2015-03-05 14:31:08', NULL, NULL, '2015-03-05 12:07:26'),
(45, 'male', 'تست', 'مرد پنجم', '9281365612', NULL, NULL, 2005, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10054, '2015-03-03 14:33:38', NULL, NULL, '2015-03-05 12:08:01'),
(46, 'male', 'تست', 'مرد پنجم', '9281365612', NULL, NULL, 2005, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10055, '2015-03-01 14:33:53', NULL, NULL, '2015-03-05 12:08:17'),
(47, 'female', 'تست', 'خانم سوم', '09125689375', NULL, NULL, 1990, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10060, '2015-03-05 14:34:40', NULL, NULL, '2015-03-05 12:07:05'),
(48, 'male', '', '', NULL, NULL, NULL, 2004, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 00000, '2015-03-05 15:03:13', NULL, NULL, '2015-03-05 12:07:24'),
(49, 'female', '', '', NULL, NULL, NULL, 2005, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 00000, '2015-03-05 15:03:25', NULL, NULL, '2015-03-05 12:07:47'),
(50, 'male', '', '', NULL, NULL, NULL, 2000, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 00000, '2015-03-05 15:04:21', NULL, NULL, '2015-03-05 14:50:54'),
(51, 'female', '', '', NULL, NULL, NULL, 2000, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 00000, '2015-03-05 15:06:50', NULL, NULL, '2015-03-05 14:50:40'),
(52, 'male', '', '', NULL, NULL, NULL, 1990, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 00000, '2015-03-05 15:07:17', NULL, NULL, '2015-03-05 12:09:00'),
(53, 'male', '', '', NULL, NULL, NULL, 2005, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 00000, '2015-03-04 15:07:48', NULL, NULL, '2015-03-05 12:09:08'),
(54, 'male', '', '', NULL, NULL, NULL, 1990, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 00000, '2015-03-04 15:13:23', NULL, NULL, '2015-03-05 12:09:06'),
(55, 'male', '', '', NULL, NULL, NULL, 1990, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 00000, '2015-03-01 15:14:11', NULL, NULL, '2015-03-05 12:08:57'),
(56, 'male', '', '', NULL, NULL, NULL, 1990, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 00000, '2015-03-04 15:17:00', NULL, NULL, '2015-03-05 12:08:46'),
(57, 'female', 'تست', 'خانم سوم', '09125689375', NULL, NULL, 2005, NULL, 101, '10', 2190053994, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10062, '2015-03-05 15:17:04', NULL, NULL, '2015-03-05 12:07:15'),
(58, 'male', 'آقای', 'تست ششم', '124823756213', NULL, NULL, 2005, NULL, 101, '18', 2190053994, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10065, '2015-03-01 15:27:19', NULL, NULL, '2015-03-05 12:08:18'),
(59, 'male', 'آقای', 'تست ششم', '124823756213', NULL, NULL, 2005, NULL, 101, '18', 2190053994, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10066, '2015-03-05 15:27:27', NULL, NULL, '2015-03-05 12:07:14'),
(60, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 2000, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10070, '2015-03-03 16:13:25', NULL, NULL, '2015-03-05 14:51:35'),
(61, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 1990, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10071, '2015-03-05 16:15:05', NULL, NULL, '2015-03-05 14:50:49'),
(62, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 2000, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10072, '2015-03-04 16:15:32', NULL, NULL, '2015-03-05 14:51:33'),
(63, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 1990, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10073, '2015-03-05 16:18:26', NULL, NULL, '2015-03-05 14:50:47'),
(64, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 2000, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10074, '2015-03-04 16:18:49', NULL, NULL, '2015-03-05 14:51:32'),
(65, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 1990, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10075, '2015-03-05 16:19:42', NULL, NULL, '2015-03-05 14:51:22'),
(66, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 2000, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10076, '2015-03-05 16:21:27', NULL, NULL, NULL),
(67, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 1990, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10077, '2015-03-02 16:21:40', NULL, NULL, '2015-03-05 14:51:44'),
(68, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 2000, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10078, '2015-03-03 16:21:52', NULL, NULL, '2015-03-05 14:51:41'),
(69, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 1990, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10079, '2015-03-02 16:22:08', NULL, NULL, '2015-03-05 14:51:39'),
(70, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 2000, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10080, '2015-03-05 16:22:16', NULL, NULL, NULL),
(71, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 2000, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10081, '2015-03-05 16:23:24', NULL, NULL, NULL),
(72, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 2000, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10082, '2015-03-05 16:23:40', NULL, NULL, NULL),
(73, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 2000, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10083, '2015-03-05 16:24:19', NULL, NULL, NULL),
(74, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 2000, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10084, '2015-03-05 16:24:39', NULL, NULL, NULL),
(75, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 2000, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10085, '2015-03-05 16:26:00', NULL, NULL, NULL),
(76, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, 2000, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10086, '2015-03-05 16:26:26', NULL, NULL, NULL),
(77, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, NULL, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10087, '2015-03-05 16:26:37', NULL, NULL, NULL),
(78, 'male', 'تست', 'هفتم', '09124723855293', NULL, NULL, NULL, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10088, '2015-03-05 16:29:00', NULL, NULL, NULL),
(79, 'female', 'تست خانم', 'هشتم', '1287541293712', NULL, NULL, 1990, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10091, '2015-03-05 17:50:58', NULL, NULL, '2015-03-05 14:49:23'),
(80, 'male', '21351325132', '15232135', '23523514312', NULL, NULL, 1991, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10095, '2015-03-05 17:55:18', NULL, NULL, NULL),
(81, 'male', '21351325132', '15232135', '23523514312', NULL, NULL, 1991, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10096, '2015-03-05 17:56:13', NULL, NULL, NULL),
(82, 'male', '21351325132', '15232135', '23523514312', NULL, NULL, 0000, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10097, '2015-03-05 17:56:24', NULL, NULL, NULL),
(83, 'male', '21351325132', '15232135', '23523514312', NULL, NULL, 1991, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10098, '2015-03-05 17:57:01', NULL, NULL, NULL),
(84, 'male', '21351325132', '15232135', '23523514312', NULL, NULL, 1995, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10099, '2015-03-05 17:57:17', NULL, NULL, NULL),
(85, 'male', 'تست', 'بعدی!', '8732513275', NULL, NULL, 2015, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10000, '2015-03-05 18:33:28', NULL, NULL, NULL),
(86, 'male', 'تست', 'بعدی!', '8732513275', NULL, NULL, 2015, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10001, '2015-03-05 18:33:46', NULL, NULL, NULL),
(87, 'male', 'تست', 'بعدی!', '8732513275', NULL, NULL, 2015, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10002, '2015-03-05 18:35:02', NULL, NULL, NULL),
(88, 'male', 'تست', 'بعدی!', '8732513275', NULL, NULL, 2015, NULL, 102, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10003, '2015-03-05 18:37:23', NULL, NULL, NULL),
(89, 'male', 'تست', 'بعدی!', '8732513275', NULL, NULL, 2005, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10004, '2015-03-04 18:44:55', NULL, NULL, '2015-03-05 15:21:14'),
(90, 'male', 'تست', 'بعدی!', '8732513275', NULL, NULL, 2005, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10005, '2015-03-03 18:45:14', NULL, NULL, '2015-03-05 15:21:09'),
(91, 'male', 'تست', 'بعدی!', '8732513275', NULL, NULL, 2005, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10006, '2015-03-02 18:45:22', NULL, NULL, '2015-03-05 15:21:07'),
(92, 'male', 'تست', 'بعدی!', '8732513275', NULL, NULL, 2015, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10007, '2015-03-04 18:45:26', NULL, NULL, '2015-03-05 15:20:59'),
(93, 'male', 'تست', 'استان و کشور', '8732513275', NULL, NULL, 2005, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10008, '2015-03-01 18:46:04', NULL, NULL, '2015-03-05 15:20:48'),
(94, 'male', 'تست', 'استان و کشور', '8732513275', NULL, NULL, 2015, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10009, '2015-03-02 18:46:25', NULL, NULL, '2015-03-05 15:21:02'),
(95, 'male', 'تست', 'استان و کشور', '8732513275', NULL, NULL, 2015, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10010, '2015-03-04 18:46:41', NULL, NULL, '2015-03-05 15:20:46'),
(96, 'male', 'تست', 'استان و کشور', '8732513275', NULL, NULL, 2005, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10011, '2015-03-04 18:46:54', NULL, NULL, '2015-03-05 15:21:04'),
(97, 'male', 'تست', 'استان و کشور', '8732513275', NULL, NULL, 2005, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10012, '2015-03-01 18:47:19', NULL, NULL, '2015-03-05 15:20:50'),
(98, 'male', 'تست', 'استان و کشور', '8732513275', NULL, NULL, 2005, NULL, 88, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10013, '2015-03-03 18:47:54', NULL, NULL, '2015-03-05 15:20:55'),
(99, 'male', 'تست', 'استان و کشور', '8732513275', NULL, NULL, 2005, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10014, '2015-03-02 18:48:07', NULL, NULL, '2015-03-05 15:20:53'),
(100, 'male', 'تست', 'استان و کشور', '8732513275', NULL, NULL, 2005, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10015, '2015-03-05 18:48:19', NULL, NULL, '2015-03-05 15:20:09'),
(101, 'male', 'تست', 'استان و کشور', '8732513275', NULL, NULL, 2005, NULL, 99, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10016, '2015-03-05 18:48:36', NULL, NULL, '2015-03-05 15:20:12'),
(102, 'male', 'تست', 'استان و کشور', '8732513275', NULL, NULL, 2004, NULL, 99, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10017, '2015-03-05 18:49:49', NULL, NULL, NULL),
(103, 'male', 'تست', 'استان و کشور', '8732513275', NULL, NULL, 2004, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10018, '2015-03-05 18:49:53', NULL, NULL, NULL),
(104, 'male', 'تست', 'استان و کشور', '8732513275', NULL, NULL, 2004, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, 4, NULL, 'active', 10019, '2015-03-05 18:49:57', NULL, NULL, NULL);

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
-- Constraints for table `kids`
--
ALTER TABLE `kids`
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
