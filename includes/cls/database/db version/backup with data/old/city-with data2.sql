-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2015 at 12:31 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

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
`id` smallint(3) unsigned NOT NULL,
  `booth_title` varchar(50) NOT NULL,
  `booth_winpoint` tinyint(3) unsigned NOT NULL,
  `booth_loosepoint` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `booth_maxplayer` int(2) unsigned DEFAULT '10',
  `booth_gametime` time DEFAULT '00:01:00',
  `section_id` smallint(2) unsigned NOT NULL,
  `booth_status` enum('enable','disable','expire') NOT NULL DEFAULT 'enable',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booths`
--

INSERT INTO `booths` (`id`, `booth_title`, `booth_winpoint`, `booth_loosepoint`, `booth_maxplayer`, `booth_gametime`, `section_id`, `booth_status`, `date_modified`) VALUES
(1, 'غرفه تست', 1, 0, 10, '00:00:00', 7, 'enable', '2015-03-18 11:26:54'),
(30, 'کودکان مقاومت', 1, 0, 10, '00:01:00', 1, 'enable', NULL),
(31, 'مسابقه دیجیتالی', 1, 0, 10, '00:01:00', 1, 'enable', NULL),
(32, 'رنگین کمان', 1, 0, 10, '00:01:00', 1, 'enable', NULL),
(33, 'گوی و میدان', 1, 0, 10, '00:01:00', 1, 'enable', NULL),
(34, 'خلاقیت', 1, 0, 10, '00:01:00', 1, 'enable', NULL),
(35, 'مار و پله طبقاتی', 1, 0, 10, '00:01:00', 1, 'enable', '2015-03-18 11:30:27'),
(36, 'نمایش عروسکی', 1, 0, 10, '00:01:00', 1, 'enable', NULL),
(37, 'راز ابرها', 1, 0, 10, '00:01:00', 1, 'enable', NULL),
(38, 'گلستان', 1, 0, 10, '00:01:00', 2, 'enable', NULL),
(39, 'تیروکمان', 1, 0, 10, '00:01:00', 2, 'enable', NULL),
(40, 'لی لی', 1, 0, 10, '00:01:00', 2, 'enable', NULL),
(41, 'بسکتبال', 1, 0, 10, '00:01:00', 2, 'enable', NULL),
(42, 'پازل', 1, 0, 10, '00:01:00', 2, 'enable', NULL),
(43, 'چیدمان خانه', 1, 0, 10, '00:01:00', 2, 'enable', NULL),
(44, 'هنرهای دخترانه', 1, 0, 10, '00:01:00', 2, 'enable', NULL),
(45, 'بازی دیجیتالی', 1, 0, 10, '00:01:00', 2, 'enable', NULL),
(46, 'مسابقه کتاب', 1, 0, 10, '00:01:00', 2, 'enable', NULL),
(47, 'ورودی خردسالان', 1, 0, 10, '00:01:00', 5, 'enable', '2015-03-18 11:38:55'),
(48, 'ورودی والدین', 1, 0, 10, '00:01:00', 6, 'enable', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `citys`
--

CREATE TABLE IF NOT EXISTS `citys` (
`id` smallint(5) unsigned NOT NULL,
  `province_id` smallint(5) unsigned NOT NULL,
  `city_name` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=453 DEFAULT CHARSET=utf8;

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
`id` smallint(3) unsigned NOT NULL,
  `country_code` char(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `country_namefa` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countrys`
--

INSERT INTO `countrys` (`id`, `country_code`, `country_name`, `country_namefa`) VALUES
(1, 'US', 'United States', 'ایالات متحده'),
(2, 'CA', 'Canada', 'کانادا'),
(3, 'AF', 'Afghanistan', 'افغانستان'),
(4, 'AL', 'Albania', 'آلبانی'),
(5, 'DZ', 'Algeria', 'الجزایر'),
(6, 'DS', 'American Samoa', 'ساموآ آمریکا'),
(7, 'AD', 'Andorra', 'آندورا'),
(8, 'AO', 'Angola', 'آنگولا'),
(9, 'AI', 'Anguilla', 'آنگویلا'),
(10, 'AQ', 'Antarctica', 'قطب جنوب'),
(11, 'AG', 'Antigua and/or Barbuda', 'آنتیگوا و / یا باربودا'),
(12, 'AR', 'Argentina', 'آرژانتین'),
(13, 'AM', 'Armenia', 'ارمنستان'),
(14, 'AW', 'Aruba', 'آروبا'),
(15, 'AU', 'Australia', 'استرالیا'),
(16, 'AT', 'Austria', 'اتریش'),
(17, 'AZ', 'Azerbaijan', 'آذربایجان'),
(18, 'BS', 'Bahamas', 'باهاما'),
(19, 'BH', 'Bahrain', 'بحرین'),
(20, 'BD', 'Bangladesh', 'بنگلادش'),
(21, 'BB', 'Barbados', 'باربادوس'),
(22, 'BY', 'Belarus', 'بلاروس'),
(23, 'BE', 'Belgium', 'بلژیک'),
(24, 'BZ', 'Belize', 'بلیز'),
(25, 'BJ', 'Benin', 'بنین'),
(26, 'BM', 'Bermuda', 'برمودا'),
(27, 'BT', 'Bhutan', 'بوتان'),
(28, 'BO', 'Bolivia', 'بولیوی'),
(29, 'BA', 'Bosnia and Herzegovina', 'بوسنی و هرزگوین'),
(30, 'BW', 'Botswana', 'بوتسوانا'),
(31, 'BV', 'Bouvet Island', 'جزیره بووه'),
(32, 'BR', 'Brazil', 'برزیل'),
(33, 'IO', 'British lndian Ocean Territory', 'قلمرو اقیانوس هند و بریتانیا'),
(34, 'BN', 'Brunei Darussalam', 'برونئی دارالسلام'),
(35, 'BG', 'Bulgaria', 'بلغارستان'),
(36, 'BF', 'Burkina Faso', 'بورکینا فاسو'),
(37, 'BI', 'Burundi', 'بروندی'),
(38, 'KH', 'Cambodia', 'کامبوج'),
(39, 'CM', 'Cameroon', 'کامرون'),
(40, 'CV', 'Cape Verde', 'کیپ ورد'),
(41, 'KY', 'Cayman Islands', 'جزایر کیمن'),
(42, 'CF', 'Central African Republic', 'جمهوری آفریقای مرکزی'),
(43, 'TD', 'Chad', 'چاد'),
(44, 'CL', 'Chile', 'شیلی'),
(45, 'CN', 'China', 'چین'),
(46, 'CX', 'Christmas Island', 'جزیره کریسمس'),
(47, 'CC', 'Cocos (Keeling) Islands', 'جزایر کوکوس'),
(48, 'CO', 'Colombia', 'کلمبیا'),
(49, 'KM', 'Comoros', 'کومور'),
(50, 'CG', 'Congo', 'کنگو'),
(51, 'CK', 'Cook Islands', 'جزایر کوک'),
(52, 'CR', 'Costa Rica', 'کاستاریکا'),
(53, 'HR', 'Croatia (Hrvatska)', 'کرواسی'),
(54, 'CU', 'Cuba', 'کوبا'),
(55, 'CY', 'Cyprus', 'قبرس'),
(56, 'CZ', 'Czech Republic', 'جمهوری چک'),
(57, 'DK', 'Denmark', 'دانمارک'),
(58, 'DJ', 'Djibouti', 'جیبوتی'),
(59, 'DM', 'Dominica', 'دومینیکا'),
(60, 'DO', 'Dominican Republic', 'جمهوری دومینیکن'),
(61, 'TP', 'East Timor', 'تیمور شرق'),
(62, 'EC', 'Ecuador', 'اکوادور'),
(63, 'EG', 'Egypt', 'مصر'),
(64, 'SV', 'El Salvador', 'السالوادور'),
(65, 'GQ', 'Equatorial Guinea', 'گینه استوایی'),
(66, 'ER', 'Eritrea', 'اریتره'),
(67, 'EE', 'Estonia', 'استونی'),
(68, 'ET', 'Ethiopia', 'اتیوپی'),
(69, 'FK', 'Falkland Islands (Malvinas)', 'جزایر فالکلند (مالویناس)'),
(70, 'FO', 'Faroe Islands', 'جزایر فارو'),
(71, 'FJ', 'Fiji', 'فیجی'),
(72, 'FI', 'Finland', 'فنلاند'),
(73, 'FR', 'France', 'فرانسه'),
(74, 'FX', 'France, Metropolitan', 'فرانسه، متروپولیتن'),
(75, 'GF', 'French Guiana', 'گویان فرانسه'),
(76, 'PF', 'French Polynesia', 'پلینزی فرانسه'),
(77, 'TF', 'French Southern Territories', 'سرزمین های جنوبی فرانسه'),
(78, 'GA', 'Gabon', 'گابن'),
(79, 'GM', 'Gambia', 'گامبیا'),
(80, 'GE', 'Georgia', 'گرجستان'),
(81, 'DE', 'Germany', 'آلمان'),
(82, 'GH', 'Ghana', 'غنا'),
(83, 'GI', 'Gibraltar', 'جبل الطارق'),
(84, 'GR', 'Greece', 'یونان'),
(85, 'GL', 'Greenland', 'گرینلند'),
(86, 'GD', 'Grenada', 'گرانادا'),
(87, 'GP', 'Guadeloupe', 'جزیره گوادلوپ'),
(88, 'GU', 'Guam', 'گوام'),
(89, 'GT', 'Guatemala', 'گواتمالا'),
(90, 'GN', 'Guinea', 'گینه'),
(91, 'GW', 'Guinea-Bissau', 'گینه بیسائو'),
(92, 'GY', 'Guyana', 'گویان'),
(93, 'HT', 'Haiti', 'هائیتی'),
(94, 'HM', 'Heard and Mc Donald Islands', 'هرد و مک دونالد جزایر'),
(95, 'HN', 'Honduras', 'هندوراس'),
(96, 'HK', 'Hong Kong', 'هنگ کنگ'),
(97, 'HU', 'Hungary', 'مجارستان'),
(98, 'IS', 'Iceland', 'ایسلند'),
(99, 'IN', 'India', 'هندوستان'),
(100, 'ID', 'Indonesia', 'اندونزی'),
(101, 'IR', 'Iran (Islamic Republic of)', 'جمهوری اسلامی ایران'),
(102, 'IQ', 'Iraq', 'عراق'),
(103, 'IE', 'Ireland', 'ایرلند'),
(105, 'IT', 'Italy', 'ایتالیا'),
(106, 'CI', 'Ivory Coast', 'ساحل عاج'),
(107, 'JM', 'Jamaica', 'جامائیکا'),
(108, 'JP', 'Japan', 'ژاپن'),
(109, 'JO', 'Jordan', 'اردن'),
(110, 'KZ', 'Kazakhstan', 'قزاقستان'),
(111, 'KE', 'Kenya', 'کنیا'),
(112, 'KI', 'Kiribati', 'کیریباتی'),
(113, 'KP', 'Korea, Democratic People''s Republic of', 'کره، جمهوری دموکراتیک خلق'),
(114, 'KR', 'Korea, Republic of', 'کره، جمهوری'),
(115, 'XK', 'Kosovo', 'کوزوو'),
(116, 'KW', 'Kuwait', 'کویت'),
(117, 'KG', 'Kyrgyzstan', 'قرقیزستان'),
(118, 'LA', 'Lao People''s Democratic Republic', 'جمهوری دموکراتیک کنگو'),
(119, 'LV', 'Latvia', 'لتونی'),
(120, 'LB', 'Lebanon', 'لبنان'),
(121, 'LS', 'Lesotho', 'لسوتو'),
(122, 'LR', 'Liberia', 'لیبریا'),
(123, 'LY', 'Libyan Arab Jamahiriya', 'لیبی، جمهوری عربی'),
(124, 'LI', 'Liechtenstein', 'لیختن اشتاین'),
(125, 'LT', 'Lithuania', 'لیتوانی'),
(126, 'LU', 'Luxembourg', 'لوکزامبورگ'),
(127, 'MO', 'Macau', 'ماکائو'),
(128, 'MK', 'Macedonia', 'مقدونیه'),
(129, 'MG', 'Madagascar', 'جزیره مالاگازی'),
(130, 'MW', 'Malawi', 'مالاوی'),
(131, 'MY', 'Malaysia', 'مالزی'),
(132, 'MV', 'Maldives', 'مالدیو'),
(133, 'ML', 'Mali', 'مالی'),
(134, 'MT', 'Malta', 'مالت'),
(135, 'MH', 'Marshall Islands', 'جزایر مارشال'),
(136, 'MQ', 'Martinique', 'مارتینیک'),
(137, 'MR', 'Mauritania', 'موریتانی'),
(138, 'MU', 'Mauritius', 'موریس'),
(139, 'TY', 'Mayotte', 'مایوت'),
(140, 'MX', 'Mexico', 'مکزیک'),
(141, 'FM', 'Micronesia, Federated States of', 'میکرونزی، ایالات فدرال'),
(142, 'MD', 'Moldova, Republic of', 'مولداوی، جمهوری'),
(143, 'MC', 'Monaco', 'اهل موناکو'),
(144, 'MN', 'Mongolia', 'مغولستان'),
(145, 'ME', 'Montenegro', 'مونته نگرو'),
(146, 'MS', 'Montserrat', 'مونتسرات'),
(147, 'MA', 'Morocco', 'مراکش'),
(148, 'MZ', 'Mozambique', 'موزامبیک'),
(149, 'MM', 'Myanmar', 'میانمار'),
(150, 'NA', 'Namibia', 'نامیبیا'),
(151, 'NR', 'Nauru', 'نائورو'),
(152, 'NP', 'Nepal', 'نپال'),
(153, 'NL', 'Netherlands', 'هلند'),
(154, 'AN', 'Netherlands Antilles', 'آنتیل هلند'),
(155, 'NC', 'New Caledonia', 'کالدونیای جدید'),
(156, 'NZ', 'New Zealand', 'نیوزیلند'),
(157, 'NI', 'Nicaragua', 'نیکاراگوئه'),
(158, 'NE', 'Niger', 'نیجر'),
(159, 'NG', 'Nigeria', 'نیجریه'),
(160, 'NU', 'Niue', 'نیوئه'),
(161, 'NF', 'Norfork Island', 'جزیره نورفورک (آرکانزاس)'),
(162, 'MP', 'Northern Mariana Islands', 'جزایر ماریانای شمالی'),
(163, 'NO', 'Norway', 'نروژ'),
(164, 'OM', 'Oman', 'عمان'),
(165, 'PK', 'Pakistan', 'پاکستان'),
(166, 'PW', 'Palau', 'پالائو'),
(167, 'PA', 'Panama', 'پاناما'),
(168, 'PG', 'Papua New Guinea', 'پاپوآ گینه نو'),
(169, 'PY', 'Paraguay', 'پاراگوئه'),
(170, 'PE', 'Peru', 'پرو'),
(171, 'PH', 'Philippines', 'فیلیپین'),
(172, 'PN', 'Pitcairn', 'پیتکارین'),
(173, 'PL', 'Poland', 'لهستان'),
(174, 'PT', 'Portugal', 'پرتغال'),
(175, 'PR', 'Puerto Rico', 'پورتوریکو'),
(176, 'QA', 'Qatar', 'قطر'),
(177, 'RE', 'Reunion', 'تجدید دیدار'),
(178, 'RO', 'Romania', 'رومانی'),
(179, 'RU', 'Russian Federation', 'فدراسیون روسیه'),
(180, 'RW', 'Rwanda', 'رواندا'),
(181, 'KN', 'Saint Kitts and Nevis', 'سنت کیتس و نویس'),
(182, 'LC', 'Saint Lucia', 'سنت لوسیا'),
(183, 'VC', 'Saint Vincent and the Grenadines', 'سنت وینسنت و گرنادین'),
(184, 'WS', 'Samoa', 'ساموآ'),
(185, 'SM', 'San Marino', 'سان مارینو'),
(186, 'ST', 'Sao Tome and Principe', 'سائوتومه و پرنسیپ'),
(187, 'SA', 'Saudi Arabia', 'عربستان سعودی'),
(188, 'SN', 'Senegal', 'سنگال'),
(189, 'RS', 'Serbia', 'صربستان'),
(190, 'SC', 'Seychelles', 'سیشل'),
(191, 'SL', 'Sierra Leone', 'سیرالئون'),
(192, 'SG', 'Singapore', 'سنگاپور'),
(193, 'SK', 'Slovakia', 'اسلواکی'),
(194, 'SI', 'Slovenia', 'اسلوونی'),
(195, 'SB', 'Solomon Islands', 'جزایر سلیمان'),
(196, 'SO', 'Somalia', 'سومالی'),
(197, 'ZA', 'South Africa', 'آفریقای جنوبی'),
(198, 'GS', 'South Georgia South Sandwich Islands', 'جزایر ساندویچ جنوبی گرجستان جنوبی'),
(199, 'ES', 'Spain', 'اسپانیا'),
(200, 'LK', 'Sri Lanka', 'سری لانکا'),
(201, 'SH', 'St. Helena', 'سنت هلن'),
(202, 'PM', 'St. Pierre and Miquelon', 'سنت پیر و میکلون'),
(203, 'SD', 'Sudan', 'سودان'),
(204, 'SR', 'Suriname', 'سورینام'),
(205, 'SJ', 'Svalbarn and Jan Mayen Islands', 'اسوالبارن و جان جزایر ماین'),
(206, 'SZ', 'Swaziland', 'سوازیلند'),
(207, 'SE', 'Sweden', 'سوئد'),
(208, 'CH', 'Switzerland', 'سویس'),
(209, 'SY', 'Syrian Arab Republic', 'سوریه، جمهوری عربی'),
(210, 'TW', 'Taiwan', 'تایوان'),
(211, 'TJ', 'Tajikistan', 'تاجیکستان'),
(212, 'TZ', 'Tanzania, United Republic of', 'تانزانیا، جمهوری متحده'),
(213, 'TH', 'Thailand', 'تایلند'),
(214, 'TG', 'Togo', 'توگو'),
(215, 'TK', 'Tokelau', 'توکلائو'),
(216, 'TO', 'Tonga', 'تونگا'),
(217, 'TT', 'Trinidad and Tobago', 'ترینیداد و توباگو'),
(218, 'TN', 'Tunisia', 'تونس'),
(219, 'TR', 'Turkey', 'ترکیه'),
(220, 'TM', 'Turkmenistan', 'ترکمنستان'),
(221, 'TC', 'Turks and Caicos Islands', 'جزایر ترکس و کیاکوس'),
(222, 'TV', 'Tuvalu', 'تووالو'),
(223, 'UG', 'Uganda', 'اوگاندا'),
(224, 'UA', 'Ukraine', 'اوکراین'),
(225, 'AE', 'United Arab Emirates', 'امارات متحده عربی'),
(226, 'GB', 'United Kingdom', 'انگلستان'),
(227, 'UM', 'United States minor outlying islands', 'جزایر کوچک حاشیهای ایالات متحده'),
(228, 'UY', 'Uruguay', 'اروگوئه'),
(229, 'UZ', 'Uzbekistan', 'ازبکستان'),
(230, 'VU', 'Vanuatu', 'وانواتو'),
(231, 'VA', 'Vatican City State', 'دولت شهر واتیکان'),
(232, 'VE', 'Venezuela', 'ونزوئلا'),
(233, 'VN', 'Vietnam', 'ویتنام'),
(234, 'VG', 'Virgin Islands (British)', 'جزایر ویرجین (بریتانیا)'),
(235, 'VI', 'Virgin Islands (U.S.)', 'جزایر ویرجین (ایالات متحده)'),
(236, 'WF', 'Wallis and Futuna Islands', 'جزایر والیس و فوتونا'),
(237, 'EH', 'Western Sahara', 'صحرای غربی'),
(238, 'YE', 'Yemen', 'یمن'),
(239, 'YU', 'Yugoslavia', 'یوگسلاوی'),
(240, 'ZR', 'Zaire', 'زئیر'),
(241, 'ZM', 'Zambia', 'زامبیا'),
(242, 'ZW', 'Zimbabwe', 'زیمبابوه');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE IF NOT EXISTS `games` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(6) unsigned NOT NULL,
  `booth_id` smallint(3) unsigned NOT NULL,
  `game_prize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `game_date` date NOT NULL,
  `game_regtime` datetime DEFAULT NULL,
  `game_starttime` datetime DEFAULT NULL,
  `game_endtime` datetime DEFAULT NULL,
  `game_status` enum('time','start','win','loose','absent','delete') NOT NULL DEFAULT 'time',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `games`
--
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
`id` int(10) unsigned NOT NULL,
  `user_id` int(6) unsigned NOT NULL,
  `kid_color` enum('red','green','blue','black','white','yellow','purple') NOT NULL,
  `kid_number` smallint(1) unsigned NOT NULL,
  `kid_date` date NOT NULL,
  `kid_regtime` datetime DEFAULT NULL,
  `kid_returntime` datetime DEFAULT NULL,
  `kid_endtime` datetime DEFAULT NULL,
  `kid_status` enum('in','out','babylost','parentlost','awaiting') NOT NULL DEFAULT 'in',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kids`
--

INSERT INTO `kids` (`id`, `user_id`, `kid_color`, `kid_number`, `kid_date`, `kid_regtime`, `kid_returntime`, `kid_endtime`, `kid_status`, `date_modified`) VALUES
(1, 95, 'black', 5, '2015-03-19', '2015-03-19 14:44:29', '2015-03-19 14:44:36', '2015-03-19 14:44:37', 'out', '2015-03-19 11:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
`id` smallint(5) unsigned NOT NULL,
  `option_cat` varchar(50) NOT NULL,
  `option_name` varchar(50) NOT NULL,
  `option_value` varchar(200) DEFAULT NULL,
  `option_extra` varchar(400) DEFAULT NULL,
  `option_status` enum('enable','disable','expire') NOT NULL DEFAULT 'enable',
  `user_id` int(6) unsigned DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `option_cat`, `option_name`, `option_value`, `option_extra`, `option_status`, `user_id`, `date_modified`) VALUES
(1, 'kindergarten_limit', 'limit', '100', NULL, 'enable', NULL, NULL),
(2, 'change', 'changerate', '300', NULL, 'enable', NULL, NULL),
(3, 'game', 'gold', '5', NULL, 'enable', NULL, NULL),
(4, 'game', 'silver', '3', NULL, 'enable', NULL, NULL),
(5, 'game', 'bronze', '0', NULL, 'enable', NULL, '2015-03-14 07:39:19');

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
  `permission_id` smallint(5) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
`id` smallint(5) unsigned NOT NULL,
  `permission_title` varchar(50) NOT NULL,
  `permission_status` enum('enable','disable','expire') NOT NULL DEFAULT 'enable',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission_title`, `permission_status`, `date_modified`) VALUES
(1, 'Admin', 'enable', NULL),
(2, 'Registerer', 'enable', NULL),
(3, 'Boother ', 'enable', NULL),
(4, 'Visitor', 'enable', NULL),
(5, 'Kindergarten', 'enable', NULL),
(6, 'sellman', 'enable', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE IF NOT EXISTS `provinces` (
`id` smallint(5) unsigned NOT NULL,
  `country_id` smallint(3) unsigned NOT NULL,
  `province_name` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

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
`id` smallint(2) unsigned NOT NULL,
  `section_title` varchar(50) NOT NULL,
  `section_maxpoint` tinyint(3) NOT NULL,
  `section_status` enum('enable','disable','expire') NOT NULL DEFAULT 'enable',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_title`, `section_maxpoint`, `section_status`, `date_modified`) VALUES
(1, 'کودکان پسر', 10, 'enable', NULL),
(2, 'کودکان دختر', 10, 'enable', NULL),
(3, 'پسران جوان', 10, 'enable', NULL),
(4, 'دختران جوان', 10, 'enable', NULL),
(5, 'خردسالان', 10, 'enable', NULL),
(6, 'والدین', 10, 'enable', NULL),
(7, 'تست', 10, 'enable', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlogs`
--

CREATE TABLE IF NOT EXISTS `userlogs` (
`id` int(10) unsigned NOT NULL,
  `userlog_type` enum('insert','update','delete','select','error','login','signup','changepass','access','logout') NOT NULL,
  `userlog_module` varchar(50) NOT NULL,
  `userlog_value` varchar(200) DEFAULT NULL,
  `userlog_priority` enum('high','medium','low','critical') NOT NULL DEFAULT 'medium',
  `userlog_ip` int(10) NOT NULL,
  `userlog_time` datetime NOT NULL,
  `user_id` int(6) unsigned DEFAULT NULL,
  `userlog_status` enum('enable','disable','expire') NOT NULL DEFAULT 'enable',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userlogs`
--

INSERT INTO `userlogs` (`id`, `userlog_type`, `userlog_module`, `userlog_value`, `userlog_priority`, `userlog_ip`, `userlog_time`, `user_id`, `userlog_status`, `date_modified`) VALUES
(1, 'login', 'login', NULL, 'low', 2130706433, '2015-03-18 15:20:14', 8, 'enable', NULL),
(2, 'login', 'login', NULL, 'low', 2130706433, '2015-03-18 16:16:11', 8, 'enable', NULL),
(3, 'login', 'login', NULL, 'low', 2130706433, '2015-03-18 16:37:10', 8, 'enable', NULL),
(4, 'login', 'login', NULL, 'low', 2130706433, '2015-03-18 16:38:13', 8, 'enable', NULL),
(5, 'login', 'login', NULL, 'low', -1062729870, '2015-03-18 17:34:44', 9, 'enable', NULL),
(6, 'login', 'login', NULL, 'low', -1062729870, '2015-03-18 17:35:36', 9, 'enable', NULL),
(7, 'login', 'login', NULL, 'low', -1062729869, '2015-03-19 10:45:14', 18, 'enable', NULL),
(8, 'login', 'login', NULL, 'low', 2130706433, '2015-03-19 10:46:56', 17, 'enable', NULL),
(9, 'login', 'login', NULL, 'low', 2130706433, '2015-03-19 10:49:33', 17, 'enable', NULL),
(10, 'login', 'login', NULL, 'low', -1062729873, '2015-03-19 10:51:32', 19, 'enable', NULL),
(11, 'login', 'login', NULL, 'low', -1062729869, '2015-03-19 10:51:40', 18, 'enable', NULL),
(12, 'login', 'login', NULL, 'low', -1062729870, '2015-03-19 10:52:11', 22, 'enable', NULL),
(13, 'login', 'login', NULL, 'low', -1062729871, '2015-03-19 10:52:30', 20, 'enable', NULL),
(14, 'login', 'login', NULL, 'low', -1062729866, '2015-03-19 10:52:48', 25, 'enable', NULL),
(15, 'login', 'login', NULL, 'low', -1062729867, '2015-03-19 10:53:26', 26, 'enable', NULL),
(16, 'login', 'login', NULL, 'low', -1062729876, '2015-03-19 10:54:43', 21, 'enable', NULL),
(17, 'login', 'login', NULL, 'low', -1062729968, '2015-03-19 10:54:54', 23, 'enable', NULL),
(18, 'login', 'login', NULL, 'low', -1062729879, '2015-03-19 10:55:13', 24, 'enable', NULL),
(19, 'login', 'login', NULL, 'low', -1062729880, '2015-03-19 10:55:23', 27, 'enable', NULL),
(20, 'login', 'login', NULL, 'low', -1062729869, '2015-03-19 10:55:34', 18, 'enable', NULL),
(21, 'access', 'register', NULL, 'medium', -1062729869, '2015-03-19 10:56:18', NULL, 'enable', NULL),
(22, 'access', 'register', NULL, 'medium', -1062729869, '2015-03-19 10:56:19', NULL, 'enable', NULL),
(23, 'access', 'register', NULL, 'medium', -1062729869, '2015-03-19 10:56:19', NULL, 'enable', NULL),
(24, 'login', 'login', NULL, 'low', -1062729869, '2015-03-19 10:57:19', 18, 'enable', NULL),
(25, 'login', 'login', NULL, 'low', -1062729869, '2015-03-19 11:00:58', 18, 'enable', NULL),
(26, 'login', 'login', NULL, 'low', -1062729867, '2015-03-19 11:04:48', 26, 'enable', NULL),
(27, 'login', 'login', NULL, 'low', -1062729866, '2015-03-19 11:11:05', 25, 'enable', NULL),
(28, 'login', 'login', NULL, 'low', -1062729968, '2015-03-19 11:12:13', 23, 'enable', NULL),
(29, 'login', 'login', NULL, 'low', -1062729882, '2015-03-19 11:12:39', 47, 'enable', NULL),
(30, 'login', 'login', NULL, 'low', 2130706433, '2015-03-19 11:14:14', 21, 'enable', NULL),
(31, 'login', 'login', NULL, 'low', -1062729876, '2015-03-19 11:16:29', 21, 'enable', NULL),
(32, 'login', 'login', NULL, 'low', 2130706433, '2015-03-19 11:19:57', 18, 'enable', NULL),
(33, 'login', 'login', NULL, 'low', -1062729876, '2015-03-19 11:20:14', 21, 'enable', NULL),
(34, 'login', 'login', NULL, 'low', -1062729876, '2015-03-19 11:23:02', 21, 'enable', NULL),
(35, 'login', 'login', NULL, 'low', 2130706433, '2015-03-19 11:24:08', 8, 'enable', NULL),
(36, 'login', 'login', NULL, 'low', -1062729869, '2015-03-19 11:24:16', 18, 'enable', NULL),
(37, 'login', 'login', NULL, 'low', -1062729876, '2015-03-19 11:26:18', 21, 'enable', NULL),
(38, 'login', 'login', NULL, 'low', -1062729871, '2015-03-19 11:34:54', 20, 'enable', NULL),
(39, 'login', 'login', NULL, 'low', -1062729869, '2015-03-19 11:35:03', 18, 'enable', NULL),
(40, 'login', 'login', NULL, 'low', -1062729876, '2015-03-19 11:39:44', 21, 'enable', NULL),
(41, 'login', 'login', NULL, 'low', -1062729880, '2015-03-19 11:54:57', 27, 'enable', NULL),
(42, 'login', 'login', NULL, 'low', -1062729880, '2015-03-19 12:00:54', 27, 'enable', NULL),
(43, 'login', 'login', NULL, 'low', -1062729882, '2015-03-19 12:06:53', 47, 'enable', NULL),
(44, 'login', 'login', NULL, 'low', -1062729869, '2015-03-19 12:16:58', 18, 'enable', NULL),
(45, 'login', 'login', NULL, 'low', 2130706433, '2015-03-19 13:44:02', 23, 'enable', NULL),
(46, 'login', 'login', NULL, 'low', 2130706433, '2015-03-19 13:44:18', 24, 'enable', NULL),
(47, 'login', 'login', NULL, 'low', 2130706433, '2015-03-19 14:43:27', 50, 'enable', NULL),
(48, 'access', 'apple-touch-icon-precomposed.png', NULL, 'medium', -1062729931, '2015-03-19 15:00:47', NULL, 'enable', NULL),
(49, 'access', 'apple-touch-icon.png', NULL, 'medium', -1062729931, '2015-03-19 15:00:47', NULL, 'enable', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usermetas`
--

CREATE TABLE IF NOT EXISTS `usermetas` (
`id` smallint(6) unsigned NOT NULL,
  `user_id` int(6) unsigned NOT NULL,
  `usermeta_cat` varchar(50) NOT NULL,
  `usermeta_name` varchar(100) NOT NULL,
  `usermeta_value` varchar(500) DEFAULT NULL,
  `usermeta_extra` varchar(500) DEFAULT NULL,
  `usermeta_status` enum('enable','disable','expire') NOT NULL DEFAULT 'enable',
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(6) unsigned NOT NULL,
  `user_gender` enum('male','female') DEFAULT 'male',
  `user_firstname` varchar(15) NOT NULL,
  `user_lastname` varchar(30) NOT NULL,
  `user_mobile` varchar(15) DEFAULT NULL,
  `user_mobile2` varchar(15) DEFAULT NULL,
  `user_password` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `permission_id` smallint(5) unsigned NOT NULL,
  `booth_id` smallint(3) unsigned DEFAULT NULL,
  `user_barcode` int(5) unsigned zerofill NOT NULL,
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
  `user_feedback` tinyint(3) unsigned DEFAULT NULL,
  `user_status` enum('active','awaiting','deactive','removed','filter','exit') NOT NULL DEFAULT 'active',
  `user_enterdatetime` datetime NOT NULL,
  `user_exitdatetime` datetime DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_gender`, `user_firstname`, `user_lastname`, `user_mobile`, `user_mobile2`, `user_password`, `permission_id`, `booth_id`, `user_barcode`, `user_birthyear`, `user_degree`, `country_id`, `user_province`, `user_nationalcode`, `user_passport`, `user_imageaddr`, `user_logincounter`, `user_refinecounter`, `user_parent`, `user_feedback`, `user_status`, `user_enterdatetime`, `user_exitdatetime`, `date_modified`) VALUES
(5, 'male', 'جواد', 'عوض زاده', '989357629759', NULL, '$2y$07$x889MdhsRxGcGshcrqdEc.mcx0e1o2PeIjJPKx0VdxK4LQ1xDnZUS', 1, 1, 10000, 1990, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-18 16:34:15', NULL, '2015-03-19 08:18:29'),
(6, 'male', 'رضا', 'محیطی', '989109610612', NULL, '$2y$07$8YHQXcb0TblkqgdtG/dAseC//MUscFTM5fSsga8.qJJSNog27CSMC', 1, 1, 10006, 1990, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 16:34:15', NULL, '2015-03-19 08:18:10'),
(8, 'male', 'کاربر', 'سطح ۱', '989120001111', NULL, '$2y$07$Lfmh5iKdHVRLA5iresYl1.TIw7UxIRKviWymBf8.6LZYe4Ta.tjbq', 1, 1, 10001, 1990, NULL, 101, '10', NULL, NULL, NULL, 5, NULL, NULL, NULL, 'active', '2015-03-19 16:34:15', NULL, '2015-03-19 08:18:15'),
(9, 'male', 'کاربر', 'سطح ۲', '989120002222', NULL, '$2y$07$Pb/d4KwCCjs75Xmw9jFYJe6NtfQTvQECQrrakpvs/t5cJnGH1O0Ce', 2, 1, 10002, 1990, NULL, 101, '10', NULL, NULL, NULL, 2, NULL, NULL, NULL, 'active', '2015-03-19 16:34:15', NULL, '2015-03-19 08:18:17'),
(10, 'male', 'کاربر', 'سطح ۳', '989120003333', NULL, '$2y$07$unk4DSpJZIQI3ojbcFptPeydtIM/BJvIV2JXsHIKB2DKublolvk86', 3, 1, 10003, 1990, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 16:34:15', NULL, '2015-03-19 08:18:20'),
(11, 'male', 'کاربر', 'سطح ۴', '989120004444', NULL, '$2y$07$PFcSFRbDiDfyD3xQIOZ6hOK1N.gbHG4dsUfzMAL5eHBxX29Q0dSky', 4, 1, 10004, 1990, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 16:34:15', NULL, '2015-03-19 08:18:32'),
(12, 'male', 'کاربر', 'سطح ۵', '989120005555', NULL, '$2y$07$e1gyYa0mZJ7YWLwCm8xn2OsA.ljlhd5mFQOshOx0TtkRoA.PkvjOa', 5, 1, 10005, 1990, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 16:34:15', NULL, '2015-03-19 08:18:07'),
(17, 'male', '', '', '989197455702', NULL, '$2y$07$NesTsx8sXiBAn8qiyY7tHOx2yY/Rt7kJhvWlMJp6bAgfrC7NsCZp6', 6, 1, 00000, NULL, NULL, 101, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 'active', '2015-03-19 10:43:35', NULL, '2015-03-19 07:49:23'),
(18, 'male', '', '', '989353811442', NULL, '$2y$07$rYZ3CvvW/gc5XFX25NCZfeibLwr0NrV8Jdngosx0TQABYvNXiSuEa', 6, 1, 00000, NULL, NULL, 101, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, 'active', '2015-03-19 10:43:46', NULL, '2015-03-19 08:46:58'),
(19, 'male', '', '', '989127519746', NULL, '$2y$07$pYvBz4Mmotgnd.7Mfqr3jezH3RMJg5xihGSJm4iC/FiLvllZ17Q9W', 2, 1, 00000, NULL, NULL, 101, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'active', '2015-03-19 10:43:57', NULL, '2015-03-19 07:21:32'),
(20, 'male', '', '', '989192902563', NULL, '$2y$07$ejP1VAhpBnLHW5BA78BkG.3SxoYg9zaSW5AxTDiUIR2mfOmzaKSS2', 2, 1, 00000, NULL, NULL, 101, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 'active', '2015-03-19 10:44:08', NULL, '2015-03-19 08:04:54'),
(21, 'male', '', '', '989303810147', NULL, '$2y$07$wmac38RgL2Yg/n0frlsTNeqIgTkajQ3c37PzYxHaG9wuoryRaEp76', 5, 1, 00000, NULL, NULL, 101, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, 'active', '2015-03-19 10:44:28', NULL, '2015-03-19 08:09:44'),
(22, 'male', '', '', '989196922458', NULL, '$2y$07$09EM1m49r4R/cMjy3wFtEeaweYMRzuvy0iJUHMvw3Vq7LGmabguNy', 6, 1, 00000, NULL, NULL, 101, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'active', '2015-03-19 10:45:19', NULL, '2015-03-19 07:49:41'),
(23, 'male', '', '', '989198688968', NULL, '$2y$07$K4cE5UX8xAkndDOWcy4Ol.vAQ4TqWsUhXHMMPMtItSYk7xjcfCudm', 2, 1, 00000, NULL, NULL, 101, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 'active', '2015-03-19 10:45:36', NULL, '2015-03-19 10:14:02'),
(24, 'male', '', '', '989375974508', NULL, '$2y$07$eEHWdf4TgoJqGUmwd8kisu9UoMI0d13n4GfuDpu8.W3hI42EgQbhu', 2, 1, 00000, NULL, NULL, 101, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 'active', '2015-03-19 10:45:46', NULL, '2015-03-19 10:14:18'),
(25, 'male', '', '', '989371211186', NULL, '$2y$07$j8p.yzR4voj4ozK6GUqdn.ppHStxVE0J46rM3iNgpW9TSe37VoItG', 2, 1, 00000, NULL, NULL, 101, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 'active', '2015-03-19 10:45:57', NULL, '2015-03-19 07:41:05'),
(26, 'male', '', '', '989388927499', NULL, '$2y$07$efgrUI7RKeRq7Kd2ZgULFelctRS00M9uGaxYTjrut7dOrCjkIQOhu', 2, 1, 00000, NULL, NULL, 101, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 'active', '2015-03-19 10:46:07', NULL, '2015-03-19 07:34:48'),
(27, 'male', '', '', '989192525318', NULL, '$2y$07$MUmKjwwIlrhYjGzZjfZJfuE9DMquBO7aPxSzgEwiPdRpLpChdt4qW', 2, 1, 00000, NULL, NULL, 101, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 'active', '2015-03-19 10:46:16', NULL, '2015-03-19 08:30:54'),
(28, 'male', '', '', '989104731980', NULL, '$2y$07$Eg83LPPk0zg28hS/tqyz6OHx9i/QeeTPRe40P0vlAw9LnTynROUl6', 2, 1, 00000, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 10:46:27', NULL, '2015-03-19 07:18:57'),
(29, 'male', '', '', '989373104906', NULL, '$2y$07$/EIGkm3GnQ39snFImdEtz.w3ztbI1bk0mDbwqalH/aYzB.wrpNaQe', 2, 1, 00000, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 10:46:37', NULL, '2015-03-19 07:17:26'),
(30, 'female', 'کبری ', 'ناصری', '09192902563', NULL, NULL, 4, NULL, 01655, NULL, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 10:54:25', NULL, NULL),
(31, 'female', 'فاطمه', 'ابراهیمی', '09193582012', NULL, NULL, 4, NULL, 07129, NULL, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 10:56:23', NULL, NULL),
(32, 'male', 'محمد مهدی', 'رضایی', '09127519746', NULL, NULL, 4, NULL, 01178, NULL, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 10:57:26', NULL, NULL),
(33, 'male', 'زهرا', 'عابدی', '09365695721', NULL, NULL, 4, NULL, 07036, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 10:57:59', NULL, NULL),
(34, 'male', 'مهدی', 'گوهری بخشایش', '09143043196', NULL, NULL, 4, NULL, 01733, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 10:59:10', NULL, NULL),
(35, 'male', 'مهسان', 'فراهی', '09380812032', NULL, NULL, 4, NULL, 01656, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 10:59:27', NULL, NULL),
(36, 'male', 'آسیه ', 'قاسمی', '09398812572', NULL, NULL, 4, NULL, 07400, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 10:59:29', NULL, NULL),
(37, 'female', 'حمیده', 'خلیلی', '09156113450', NULL, NULL, 4, NULL, 00886, NULL, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:00:20', NULL, NULL),
(38, 'male', 'سعیده', 'خلیلی', '09156113450', NULL, NULL, 4, NULL, 00887, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:00:46', NULL, NULL),
(39, 'male', 'فریبا', 'نوری', '09193878274', NULL, NULL, 4, NULL, 01609, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:01:17', NULL, NULL),
(40, 'male', 'سید محمد', 'حسینی', '091935852012', NULL, NULL, 4, NULL, 08057, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:02:12', NULL, NULL),
(41, 'male', 'محمد رضا', 'نوری', '09193878274', NULL, NULL, 4, NULL, 01224, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:02:43', NULL, NULL),
(42, 'male', 'آسیه', 'شهریاری فرد', '09120242166', NULL, NULL, 4, NULL, 07399, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:02:44', NULL, NULL),
(43, 'male', 'محمد حسین', 'محسنی', '0000000000', NULL, NULL, 4, NULL, 01021, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:03:35', NULL, NULL),
(44, 'male', 'عارف حسین', 'محسینی', '0000000000', NULL, NULL, 4, NULL, 01015, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:04:08', NULL, NULL),
(45, 'male', 'فاطمه ', 'محمدی', '09130292536', NULL, NULL, 4, NULL, 07298, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:04:45', NULL, NULL),
(46, 'male', 'محمد', 'صیدی', '09198505463', NULL, NULL, 4, NULL, 01747, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:09:33', NULL, NULL),
(47, 'male', '', '', '989130510919', NULL, '$2y$07$TB29EK0U0lUtZY4gHN3SGeM2or/zwr.bdveGoGq4WcDw9dRmcE40u', 2, 1, 00000, NULL, NULL, 101, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 'active', '2015-03-19 11:09:43', NULL, '2015-03-19 09:11:53'),
(48, 'male', 'فاطمه', 'سیدی', '09102844105', NULL, NULL, 4, NULL, 00657, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:09:44', NULL, NULL),
(49, 'male', 'قربان', 'نوری', '09126820374', NULL, NULL, 4, NULL, 01734, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:12:32', NULL, NULL),
(50, 'male', '', '', '989306324839', NULL, '$2y$07$LTjMpbx.uH2CkDYPRqWh4.meb/BcKTFH3nOOcrLBVfZ6XCmsasg2e', 5, 1, 00000, NULL, NULL, 101, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'active', '2015-03-19 11:12:43', NULL, '2015-03-19 11:13:27'),
(51, 'male', 'امید', 'نوری', '09193878274', NULL, NULL, 4, NULL, 01735, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:13:05', NULL, NULL),
(52, 'male', 'ستوده', 'غفوری', '09126820374', NULL, NULL, 4, NULL, 01658, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:13:43', NULL, NULL),
(53, 'male', 'فرشته', 'نوری', '09193878274', NULL, NULL, 4, NULL, 01659, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:14:23', NULL, NULL),
(54, 'female', 'حمیده ', 'خلیلی', '09156113450', NULL, NULL, 4, NULL, 01233, 2004, NULL, 101, '10', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:15:52', NULL, NULL),
(55, 'male', 'سعیده ', 'خلیلی ', '09156113450', NULL, NULL, 4, NULL, 01606, 2004, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:18:41', NULL, NULL),
(56, 'male', 'سیده ملیحه', 'سلیمانی', '09156113450', NULL, NULL, 4, NULL, 01225, 1972, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:19:51', NULL, NULL),
(57, 'male', 'محمد رضا', 'گمار', '09362444808', NULL, NULL, 4, NULL, 07197, 2012, NULL, 101, '30', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:22:13', NULL, NULL),
(58, 'male', 'کیانوش', 'بابازاده', '00000000000', NULL, NULL, 4, NULL, 01020, 2003, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:22:57', NULL, NULL),
(59, 'male', 'جمال ادین', 'راحمی', '09132748007', NULL, NULL, 4, NULL, 01736, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:24:27', NULL, NULL),
(60, 'male', 'ابوالفضل', 'کاشف', '09195420856', NULL, NULL, 4, NULL, 01737, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:25:14', NULL, NULL),
(61, 'male', 'مهدی', 'زارعی', '09193590078', NULL, NULL, 4, NULL, 01505, 2003, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:32:53', NULL, NULL),
(62, 'male', 'مرتضی', 'بابایی', '09102937019', NULL, NULL, 4, NULL, 07196, 2003, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:33:04', NULL, NULL),
(63, 'male', 'امیر', 'احمد خانلو', '09356369404', NULL, NULL, 4, NULL, 01654, 2002, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'deactive', '2015-03-19 11:33:37', '2015-03-19 12:11:31', '2015-03-19 08:41:31'),
(64, 'male', 'علیرضا', 'صابر', '09106398476', NULL, NULL, 4, NULL, 07195, 2001, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:33:55', NULL, NULL),
(65, 'male', 'حامد', 'حسینی', '09106129094', NULL, NULL, 4, NULL, 01506, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:34:09', NULL, NULL),
(66, 'male', 'علی', 'احمد خانلو', '09356369404', NULL, NULL, 4, NULL, 01653, 2002, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:34:28', NULL, NULL),
(67, 'male', 'مهدی ', 'زارعی', '09191541206', NULL, NULL, 4, NULL, 01322, NULL, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:34:38', NULL, NULL),
(68, 'male', 'میلاد ', 'حاجی', '09197465987', NULL, NULL, 4, NULL, 07194, 2002, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:34:44', NULL, NULL),
(69, 'male', 'سید ابوالفضل', 'مهدوی زاده', '09192942947', NULL, NULL, 4, NULL, 01652, 2004, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:35:15', NULL, NULL),
(70, 'male', 'سید محسن', 'موسوی', '09192513866', NULL, NULL, 4, NULL, 01507, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:35:29', NULL, NULL),
(71, 'male', 'علیرضا', 'آمره ای', '09125515938', NULL, NULL, 4, NULL, 07193, 2002, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:35:33', NULL, NULL),
(72, 'male', 'سید محمد مهدی', 'مهدوی زاده', '09192942947', NULL, NULL, 4, NULL, 01651, 2007, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:35:41', NULL, NULL),
(73, 'male', 'علی', 'یداللهی', '09395582601', NULL, NULL, 4, NULL, 01016, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:36:11', NULL, NULL),
(74, 'male', 'محمد جواد', 'باقری', '09194519761', NULL, NULL, 4, NULL, 07192, 2003, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:36:26', NULL, NULL),
(75, 'male', 'سید محمد عیسی', 'موسوی', '09192513866', NULL, NULL, 4, NULL, 01650, 2003, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:36:31', NULL, NULL),
(76, 'male', 'امیر', 'وحید مقدم', '09192525923', NULL, NULL, 4, NULL, 01019, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:37:13', NULL, NULL),
(77, 'male', 'مصطفی', 'نوروزی', '09331407752', NULL, NULL, 4, NULL, 07189, 2002, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:37:20', NULL, NULL),
(78, 'male', 'علیرضا', 'توانا', '09190497813', NULL, NULL, 4, NULL, 01649, 2005, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:37:41', NULL, NULL),
(79, 'male', 'علیرضا', 'حسینی', '09127514478', NULL, NULL, 4, NULL, 01017, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:37:43', NULL, NULL),
(80, 'male', 'قاسم', 'عباسی', '09102935458', NULL, NULL, 4, NULL, 07190, 2000, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:37:49', NULL, NULL),
(81, 'male', 'محمد', 'طاهر پور', '09392601018', NULL, NULL, 4, NULL, 01648, 1998, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:38:53', NULL, NULL),
(82, 'male', 'محمد', 'رسولی', '0000000000', NULL, NULL, 4, NULL, 07191, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:41:37', NULL, NULL),
(83, 'male', 'امیرحسین', 'فرحبخش', '09133418590', NULL, NULL, 4, NULL, 07188, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:45:25', NULL, NULL),
(84, 'male', 'احد', 'همتی', '09144124700', NULL, NULL, 4, NULL, 01738, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:46:40', NULL, NULL),
(85, 'female', 'مریم', 'شفوی', '09147663191', NULL, NULL, 4, NULL, 01660, NULL, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:47:39', NULL, NULL),
(86, 'male', 'رمضانعلی', 'سلیمان پور', '09112119986', NULL, NULL, 4, NULL, 01739, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:48:14', NULL, NULL),
(87, 'male', 'محدثه', 'فرهبخش', '09135812952', NULL, NULL, 4, NULL, 01661, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:49:01', NULL, NULL),
(88, 'male', 'محمد احسان', 'گنجه کویری', '09191486285', NULL, NULL, 4, NULL, 01740, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:49:05', NULL, NULL),
(89, 'male', 'امیر حسین', 'عفراوی', '09333678388', NULL, NULL, 4, NULL, 01254, 2007, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:49:14', NULL, NULL),
(90, 'male', 'سیده ملیحه', 'سلیمانی', '09156113450', NULL, NULL, 4, NULL, 00950, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:50:40', NULL, NULL),
(91, 'male', 'سید علیرضا', 'موسوی احمدآبادی', '09102040172', NULL, NULL, 4, NULL, 01703, 2000, NULL, 101, '31', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:52:28', NULL, NULL),
(92, 'male', 'علیرضا', 'مرشدی', '09127491685', NULL, NULL, 4, NULL, 01268, 2001, NULL, 101, NULL, 372099882, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:53:09', NULL, NULL),
(93, 'male', 'علیرضا', 'صابر', '09106398476', NULL, NULL, 4, NULL, 01324, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:58:14', NULL, NULL),
(94, 'male', 'قاسم', 'عباسی', '09102935458', NULL, NULL, 4, NULL, 01325, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 11:59:45', NULL, NULL),
(95, 'male', 'محمد ', 'علی بیگی', '09365189952', NULL, NULL, 4, NULL, 07187, 2004, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 12:02:32', NULL, NULL),
(96, 'male', 'محمد هادی', 'جباری', '09193586734', NULL, NULL, 4, NULL, 07186, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 12:05:33', NULL, NULL),
(97, 'female', 'سیده فاطمه تقیه', 'همدانی', '09192529302', NULL, NULL, 4, NULL, 01533, 2001, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 12:14:18', NULL, NULL),
(98, 'male', 'تست', 'ادمین', NULL, NULL, NULL, 4, NULL, 00123, NULL, NULL, 101, '18', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'active', '2015-03-19 13:41:50', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booths`
--
ALTER TABLE `booths`
 ADD PRIMARY KEY (`id`), ADD KEY `booths_sections_id` (`section_id`);

--
-- Indexes for table `citys`
--
ALTER TABLE `citys`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `unique name in province` (`province_id`,`city_name`), ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `countrys`
--
ALTER TABLE `countrys`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
 ADD PRIMARY KEY (`id`), ADD KEY `users_games_id` (`user_id`), ADD KEY `booths_games_id` (`booth_id`);

--
-- Indexes for table `kids`
--
ALTER TABLE `kids`
 ADD PRIMARY KEY (`id`), ADD KEY `kindergartens_users_id` (`user_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
 ADD PRIMARY KEY (`id`), ADD KEY `options_users_id` (`user_id`);

--
-- Indexes for table `permissiondetails`
--
ALTER TABLE `permissiondetails`
 ADD PRIMARY KEY (`id`), ADD KEY `permissions_permissiondetails_id` (`permission_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `unique province in country` (`province_name`,`country_id`), ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogs`
--
ALTER TABLE `userlogs`
 ADD PRIMARY KEY (`id`), ADD KEY `userlogs_users_id` (`user_id`);

--
-- Indexes for table `usermetas`
--
ALTER TABLE `usermetas`
 ADD PRIMARY KEY (`id`), ADD KEY `usermetas_users_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD KEY `users_booths_id` (`booth_id`), ADD KEY `users_permissions_id` (`permission_id`), ADD KEY `users_countrys_id` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booths`
--
ALTER TABLE `booths`
MODIFY `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `citys`
--
ALTER TABLE `citys`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=453;
--
-- AUTO_INCREMENT for table `countrys`
--
ALTER TABLE `countrys`
MODIFY `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=243;
--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kids`
--
ALTER TABLE `kids`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
MODIFY `id` smallint(2) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `userlogs`
--
ALTER TABLE `userlogs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `usermetas`
--
ALTER TABLE `usermetas`
MODIFY `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
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
