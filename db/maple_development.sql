-- phpMyAdmin SQL Dump
-- version 3.3.2deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2010 年 07 月 07 日 00:16
-- 服务器版本: 5.1.41
-- PHP 版本: 5.3.2-1ubuntu4.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `maple_development`
--

-- --------------------------------------------------------

--
-- 表的结构 `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `clicks` int(11) DEFAULT NULL,
  `kind` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `category_id`, `image`, `intro`, `body`, `status`, `created_at`, `updated_at`, `language_id`, `clicks`, `kind`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`, `featured`) VALUES
(1, 'fsdfsd', 'fsdfd', 1, NULL, 'sdf', 'sdfsdf', 'live', '2010-04-07 14:34:46', '2010-04-07 14:34:46', 2, NULL, 'news', 'rails.png', 'image/png', 1787, '2010-04-07 14:34:46', NULL),
(2, '今天的文章', 'gdfgdfdf', 1, NULL, 'fds', 'sdf', 'live', '2010-04-08 14:05:24', '2010-04-08 14:05:24', 2, NULL, 'news', 'topMenuImages.png', 'image/png', 562, '2010-04-08 14:05:24', NULL),
(3, 'dffsdf', 'rwr', 1, NULL, 'fsdf', 'sdf', 'live', '2010-04-08 14:14:50', '2010-04-08 14:14:50', 2, NULL, 'news', 'topMenuImages.png', 'image/png', 562, '2010-04-08 14:14:50', 0),
(4, '上海', 'sdfsd', 1, NULL, 'fs', 'sfdsdf', 'live', '2010-04-08 14:31:29', '2010-04-08 14:31:29', 2, NULL, 'news', 'image1.jpg', 'image/jpeg', 57139, '2010-04-08 14:31:29', 1),
(5, 'dggd', 'fsdfsd', 1, NULL, 'fsfsdvxczzcccccccccsdafsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 'sfdf', 'live', '2010-04-08 15:57:15', '2010-04-10 14:08:05', 2, NULL, 'news', 'image2.jpg', 'image/jpeg', 31001, '2010-04-08 15:57:15', 1),
(6, 'fsfsffsd', 'sdfsdfsfdsdf', 1, NULL, 'fsdfxvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv', 'sdffsdsdfsfddddddddddd', 'live', '2010-04-09 13:57:15', '2010-04-10 14:04:27', 2, NULL, 'news', 'image4-smallf.jpg', 'image/jpeg', 24445, '2010-04-09 13:57:15', 0),
(7, 'jhhk', 'sasfdsdf', 1, NULL, 'sdff', 'errrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', 'live', '2010-04-10 02:27:51', '2010-04-10 14:01:09', 2, NULL, 'news', 'image3.jpg', 'image/jpeg', 62222, '2010-04-10 02:27:51', 0),
(8, 'tete', 'e', 1, NULL, 'sdffs', 'sdfsdf', 'live', '2010-04-10 10:51:50', '2010-04-10 10:57:56', 2, NULL, 'news', 'image4.jpg', 'image/jpeg', 50690, '2010-04-10 10:57:56', 0),
(9, 'gasdffs', 'ffsdfsd', 1, NULL, 'rrtxvfsadddddddddddddddddddddddddddddddddddddddddddddddd', 'rtrtr', 'live', '2010-04-10 11:00:14', '2010-04-10 14:05:17', 2, NULL, 'news', 'image5.jpg', 'image/jpeg', 21144, '2010-04-10 11:00:14', 0),
(10, 'dfsdfasdff', 'fasdsdfa', 1, NULL, 'fssf', 'fasasfd', 'live', '2010-04-10 11:23:42', '2010-04-10 11:23:42', 2, NULL, 'news', 'image1.jpg', 'image/jpeg', 30420, '2010-04-10 11:23:42', 1),
(14, 'fdsf', 'fsss', 1, NULL, 'fsd', 'sdf', 'live', '2010-04-15 14:29:53', '2010-04-15 14:29:53', 2, NULL, 'bulletin', 'Bear.bmp', 'image/bmp', 14671, '2010-04-15 14:29:52', 0),
(15, 'fsfsfsd', 'about', 2, NULL, 'fafss', 'fsdfds', 'live', '2010-04-17 07:01:11', '2010-04-24 04:02:34', 1, NULL, 'page', 'popumed_velocity.jpg', 'image/jpeg', 344621, '2010-04-17 07:01:11', 0),
(16, 'Java 程序设计', 'fafs', 1, NULL, '复苏', '四算法的撕得粉碎代阿飞代', 'live', '2010-04-17 12:45:32', '2010-04-17 12:45:32', 2, NULL, 'article', 'Alien_2.bmp', 'image/bmp', 10682, '2010-04-17 12:45:31', 0),
(17, 'ttwe', 'test', 2, NULL, 'fafsfs', 'fsfs', 'live', '2010-04-24 04:26:50', '2010-04-24 04:26:50', 1, NULL, 'page', 'Da_Vinci.bmp', 'image/bmp', 13059, '2010-04-24 04:26:50', 0),
(18, '成立背景', 'chenglibeijing', 5, NULL, '', '<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p style="margin-bottom: 0cm;"><strong>中加在环境资源与可持续发展领域合作大有可为，复旦</strong><strong>与女王大学</strong><strong>应抓住机会</strong></p>\r\n<p style="text-indent: 0.85cm; margin-bottom: 0cm;">近几年随着中国经济的快速发展，中国的生态环境问题（资源短缺、环境污染等）日益显现，这将严重威胁中国经济的可持续发展。加拿大不仅自然资源方面丰富，与中国人力资源丰富有着极强的互补性，而且在自然资源管理方面也经验丰富，许多方面（如水资源管理方面）领先于世界，非常值得中国学习和借鉴。与此同时，在追求经济增长的过程中，如何实现能源安全与环境保护，对中加两国都是一项艰巨任务，双方都有义务携手应对目前的能源与环境挑战。为此，近年来，双方交流合作日益密切，在科技方面，特别是环境与能源领域，中加合作开始明显加速，<span style="font-family: DejaVu Serif,serif;">2007</span>年<span style="font-family: DejaVu Serif,serif;">1</span>月中<span style="font-family: DejaVu Serif,serif;">-</span>加签署了中加科技协定，这对对中加关系、中加科技合作与交流产生了深远的影响，中加科技合作联委会于<span style="font-family: DejaVu Serif,serif;">2007</span>年<span style="font-family: DejaVu Serif,serif;">5</span>月成立并在加拿大渥太华召开了首次会议；中加科技合作与产业化基金正式启动；不列颠哥伦比亚省和魁北克省分别与中方建立了合作研究基金并共同征集了项目，双方将在能源、环境、卫生、农业等优先领域加强合作，推动科研和产业化。中国科技部也把中加科技协定作为大学、企业和科研机构参与国际合作和促进科研成果产业的一个重要平台。<span style="font-family: DejaVu Serif,serif;">2008</span>年<span style="font-family: DejaVu Serif,serif;">1</span>月，科技部万钢部长会见了来访的加拿大国际贸易部部长艾民（<span style="font-family: DejaVu Serif,serif;">David Emerson</span>）一行，双方就中加科技关系现状、中加科技协定签署一年来的执行情况以及两国未来科技合作交换了意见，表示将进一步深入推动中加合作，特别是在资源环境领域。复旦应利用中加目前合作的势头，借助加拿大在资源环境领域的研究优势，整合自身在环境与可持续发展方面的研究力量。</p>\r\n<p style="margin-bottom: 0cm;">&nbsp;</p>\r\n<p style="margin-bottom: 0cm;"><strong>加拿大女王大学与复旦大学的良好的合作基础</strong></p>\r\n<p style="text-indent: 1.06cm; margin-bottom: 0cm;">中加合作方面，复旦具有一定优势和基础，<span style="font-family: DejaVu Serif,serif;">2000</span>年<span style="font-family: DejaVu Serif,serif;">3</span>月加拿大女王大学校长团访问复旦大学，并签署了合作备忘录。根据备忘录附录二的第一款，双方共同筹建成立了&ldquo;复旦与女王大学城市化过程环境研究联合实验室&rdquo;（见附件<span style="font-family: DejaVu Serif,serif;">2</span>）。实验室从成立到现在，双方科研人员开展了卓有成效的合作研究<span style="font-family: DejaVu Serif,serif;">,</span>共同申请合作项目<span style="font-family: DejaVu Serif,serif;">5</span>项，其中成功中标<span style="font-family: DejaVu Serif,serif;">3</span>项；双方教授互访近<span style="font-family: DejaVu Serif,serif;">30</span>人次，其中<span style="font-family: DejaVu Serif,serif;">Bruce Anderson</span>教授、 <span style="font-family: DejaVu Serif,serif;">Yuxiang Wang</span>教授成功申请为&ldquo;复旦大学生物多样性与生态工程教育部重点实验室&rdquo;的访问学者；研究生短期交流（<span style="font-family: DejaVu Serif,serif;">3</span>个月）<span style="font-family: DejaVu Serif,serif;">6</span>人次；共同发表学术<span style="font-family: DejaVu Serif,serif;">5</span>篇论文，<span style="font-family: DejaVu Serif,serif;">2007</span>年，共同组团参加在英国举办的&ldquo;中国城市转型与城市规划&rdquo;国际会议，并提交会议论文<span style="font-family: DejaVu Serif,serif;">3</span>篇。（见附件<span style="font-family: DejaVu Serif,serif;">3</span>）。</p>\r\n<p style="text-indent: 0.85cm; margin-bottom: 0cm;">&nbsp;</p>\r\n<p style="margin-bottom: 0cm;"><strong>复旦大学与女王大学都有意扩大合作范围，建立新的合作平台</strong></p>\r\n<p style="text-indent: 1.06cm; margin-bottom: 0cm;">由于近两年中加合作领域的扩宽，原有的合作实验室已经不能容纳一些新的合作主题，复旦大学和女王大学都有意扩大合作范围，并建立一个稳定的合作平台，所以我们建议将&ldquo;复旦与女王大学城市化过程环境研究实验室&rdquo;提升为&ldquo;复旦<span style="font-family: DejaVu Serif,serif;">-</span>女王大学生态环境与可持续发展研究中心&rdquo;（以下简称：中心），以适应新的形势。这也将带动复旦大学环境与可持续发展学科的发展，促进包括环境科学、生命科学（生态学）、公共卫生、环境经济、公共决策等文理多学科的交叉。另外，两校校长代表团互访时，都表达的建立中心的兴趣和愿望，加拿大驻华使馆对建立此中心也兴趣浓厚，愿意给予一定支持。</p>', 'live', '2010-07-06 15:10:10', '2010-07-06 15:18:32', 2, NULL, 'page', 'maple.jpg', 'image/jpeg', 50331, '2010-07-06 15:10:10', 0),
(19, '宗旨与目的', 'zongzhi-yu-mudi', 5, NULL, '', '<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p style="margin-bottom: 0cm;">本中心旨在统合两校已有合作项目，拓展女王大学与复旦大学的深度合作。通过整合复旦大学与女王大学在环境与可持续发展领域的优势，以协作科研为基础，建立与发展一个科研、政策咨询、学术与专业<span style="font-family: DejaVu Serif,serif;">/</span>职业培训为一体，以环境与可持续发展为主题的高水平的跨国高校联合中心。</p>\r\n<p style="margin-bottom: 0cm;">协作科研将是本中心建立与发展的基础与起点，有了这个两校合作平台，将会有利于有关课题的申请，例如，中方资源：上海市科委、国家自然科学基金委员会、科技部等部门的国际合作项目；加方资源：<span style="font-family: DejaVu Serif,serif;">CIDA</span>、<span style="font-family: DejaVu Serif,serif;">ISTP Canada</span>，<span style="font-family: DejaVu Serif,serif;">NRC-IRAP: Industrial Research Assistance Program, National Research Council Canada</span>等；以前沿性的科研为基础，本中心将会为具有重大意义的人类所面临的生态环境与可持续发展方面的问题提供可操作的政策方案，例如，在本中心所界定的核心问题领域，如水资源管理，环境治理，可再生能源等方面进行政策研究，提供政策方案；</p>\r\n<p style="margin-bottom: 0cm; padding: 0cm 0cm 0.04cm; border: medium medium 1px none none solid -moz-use-text-color -moz-use-text-color #000000;">学术的、专业<span style="font-family: DejaVu Serif,serif;">/</span>职业的培训将为本中心自身提供可持续发展的动力与资源。如，利用复旦大学、女王大学高水平、综合性大学的优势，组织职业培训，例如，环境评估，土地分类，水资源管理，公共政策等；与已有的干部与职业培训机构合作举办相关公共政策，公共管理方面的培训班。</p>', 'live', '2010-07-06 15:21:30', '2010-07-06 15:21:30', 2, NULL, 'page', 'stock-vector-vector-target-35063818.jpg', 'image/jpeg', 50644, '2010-07-06 15:21:30', 0),
(20, '中心成员', 'zhongxin-chengyuan', 5, NULL, '', '<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p style="margin-bottom: 0cm;"><span style="background: none repeat scroll 0% 0% #d8d8d8;"><strong>复旦大学生物多样性研究所</strong></span></p>\r\n<p style="margin-bottom: 0cm;">复旦大学生物多样性与生态工程教育部重点实验室</p>\r\n<p style="margin-bottom: 0cm;">复旦大学环境科学系</p>\r\n<p style="margin-bottom: 0cm;">加拿大女王大学生物系</p>\r\n<p style="margin-bottom: 0cm;">加拿大女王大学市政工程系</p>', 'live', '2010-07-06 15:26:51', '2010-07-06 15:26:51', 2, NULL, 'page', 'intercultural.png', 'image/png', 126065, '2010-07-06 15:26:51', 0),
(21, '运行机制', 'yunxing-jizhi', 5, NULL, '', '<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p style="margin-bottom: 0cm;"><span style="font-family: 黑体;"><strong>第一阶段（</strong></span><span style="font-family: 黑体;"><strong>1-5</strong></span><span style="font-family: 黑体;"><strong>年）：起步探索阶段</strong></span></p>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: 黑体;"><strong>目标：整合已有的资源，探索合作机制，初步建立成为复旦</strong></span><span style="font-family: 黑体;"><strong>-</strong></span><span style="font-family: 黑体;"><strong>女王大学科研、教育、培训的平台</strong></span></p>\r\n<ol>\r\n<li>\r\n<p style="margin-bottom: 0cm;">中心设在复旦大学，下设若干课题研究组：如水资源研究组、能源研究组、环境经济研究组、公共决策研究组等；</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm;">现阶段为降低中心运行成本，中心不设固定编制，所有研究人员为兼职，中加双方各设一名中心负责人，负责日常联络和定期研讨；</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm;">中心将设立网络研究平台供成员进行交流，并定期出版中心简报</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm;">中心初期的日常公共开支，将由复旦和女王大学双方共同承担，以后的日常费用，将从以中心名义申请的各项课题中抽提一定比例管理费中来解决</p>\r\n</li>\r\n</ol>\r\n<p style="margin-left: 0.77cm; margin-bottom: 0cm;">&nbsp;</p>\r\n<p style="text-indent: 0.74cm; margin-bottom: 0cm;"><span style="font-family: 黑体;"><strong>第二阶段（</strong></span><span style="font-family: 黑体;"><strong>5-10</strong></span><span style="font-family: 黑体;"><strong>年）：发展完善阶段</strong></span></p>\r\n<p style="margin-left: 2.33cm; text-indent: -1.48cm; margin-bottom: 0cm;"><span style="font-family: 黑体;"><strong>目标：在第一阶段的发展基础上，总结经验，完善合作机制，扩大中心影响，使中心成为在中国与加拿大资源环境领域具有一定影响力，且具有国际视野的科研、培训和咨询实体</strong></span></p>\r\n<ol>\r\n<li>\r\n<p style="margin-bottom: 0cm;">中心设立固定的办公场所、固定的人员编制</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm;">经费来源：中加政府出资、中加企业、<span style="font-family: DejaVu Serif,serif;">NGOs</span>等</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm;">优化原有的研究力量和研究方向，吸引新的研究成员</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm;">实行中心两校人员定期交流互访</p>\r\n</li>\r\n</ol>\r\n<p style="margin-left: 0.74cm; margin-bottom: 0cm;">&nbsp;</p>\r\n<p style="text-indent: 0.74cm; margin-bottom: 0cm;"><span style="font-family: 黑体;"><strong>第三阶段（</strong></span><span style="font-family: 黑体;"><strong>10-20</strong></span><span style="font-family: 黑体;"><strong>年）：成熟阶段</strong></span></p>\r\n<p style="margin-left: 2.33cm; text-indent: -1.48cm; margin-bottom: 0cm;"><span style="font-family: 黑体;"><strong>目标：成为国际上有影响力的资源环境与可持续发展领域的研究中心，成为中国政府资源环境领域政策与决策的高级智囊团。</strong></span></p>\r\n<ol>\r\n<li>\r\n<p style="margin-bottom: 0cm;">举办具有国际影响的环境资源与可持续发展论坛</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm;">创办一流专业杂志</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm;">设立相应的环境与可持续发展基金支持中心的活动</p>\r\n</li>\r\n</ol>\r\n<p style="margin-bottom: 0cm;">&nbsp;</p>', 'live', '2010-07-06 15:39:52', '2010-07-06 15:39:52', 2, NULL, 'page', 'img04.jpg', 'image/jpeg', 7710, '2010-07-06 15:39:52', 0),
(22, '研究方向', 'yanjiu-fangxiang', 5, NULL, '', '<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p style="margin-bottom: 0cm;"><strong>中心下设几个分中心：</strong></p>\r\n<ul>\r\n<li>\r\n<p style="margin-bottom: 0cm;">水资源与水环境</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm;">城市与区域规划</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm;">可再生能源</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm;">可持续发展理论与方法</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm;">可持续发展与公共政策</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm; padding: 0cm 0cm 0.04cm; border: medium medium 1px none none solid -moz-use-text-color -moz-use-text-color #000000;">可持续发展的经济学</p>\r\n</li>\r\n</ul>', 'live', '2010-07-06 15:42:54', '2010-07-06 15:42:54', 2, NULL, 'page', 'Detective_cut_out_clip.gif', 'image/gif', 51199, '2010-07-06 15:42:54', 0),
(23, '研究骨干', 'yanjiu-gugan', 5, NULL, '', '<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p style="margin-bottom: 0cm;"><strong>复旦大学：</strong>任文伟（区域生态学、水环境研究）（中方协调员）</p>\r\n<p style="margin-left: 1.09cm; text-indent: 2.12cm; margin-bottom: 0cm;">钟  扬（生物能源、生物信息）</p>\r\n<p style="margin-left: 1.09cm; text-indent: 0.85cm; margin-bottom: 0cm;">王祥荣（城市与区域规划）</p>\r\n<p style="margin-left: 1.09cm; text-indent: 0.85cm; margin-bottom: 0cm;">于  海（社会学、公共决策）</p>\r\n<p style="margin-left: 1.09cm; text-indent: 2.12cm; margin-bottom: 0cm;">潘天舒（人类学）</p>\r\n<p style="margin-left: 1.09cm; text-indent: 2.12cm; margin-bottom: 0cm;">张  军（经济学）</p>\r\n<p style="margin-left: 1.09cm; text-indent: 2.12cm; margin-bottom: 0cm;">彭希哲 （人口与可持续发展）</p>\r\n<p style="margin-left: 1.09cm; text-indent: 2.12cm; margin-bottom: 0cm;">姜庆武 （公共卫生）</p>\r\n<p style="margin-left: 1.09cm; text-indent: 2.12cm; margin-bottom: 0cm;">屈云芳 （水环境安全）</p>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: 黑体;"><strong>女王大学</strong></span>：<span style="font-family: DejaVu Serif,serif;">John Meligrana</span>（城市与区域规划、环境管理）（加方协调员）</p>\r\n<p style="margin-left: 1.09cm; text-indent: 2.12cm; margin-bottom: 0cm;"><span style="font-family: DejaVu Serif,serif;">Hoklin Leung </span>（城市与区域规划、公共决策）</p>\r\n<p style="margin-left: 1.09cm; text-indent: 2.12cm; margin-bottom: 0cm;"><span style="font-family: DejaVu Serif,serif;">Bruce Anderson</span>（生态工程、水环境）</p>\r\n<p style="margin-left: 2.35cm; text-indent: 0.85cm; margin-bottom: 0cm;"><span style="font-family: DejaVu Serif,serif;">Yuxiang Wang </span>（水生生态、生态毒理）</p>\r\n<p style="margin-left: 1.09cm; text-indent: 0.85cm; margin-bottom: 0cm;"><span style="font-family: DejaVu Serif,serif;"> Zhiyao Zhang   (</span>环境政治，土地政治，<span style="font-family: DejaVu Serif,serif;">)</span></p>\r\n<p style="margin-left: 1.09cm; margin-bottom: 0cm;"><span style="font-family: 黑体;"><strong>中心总协调员：</strong></span>张志尧 （女王大学驻中国办事处主任）</p>', 'live', '2010-07-06 15:46:50', '2010-07-06 15:46:50', 2, NULL, 'page', 'rails.png', 'image/png', 6646, '2010-07-06 15:46:50', 0),
(24, '科研项目', 'keyan-xiangmu', 5, NULL, '', '<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } --> <ol>\r\n<li>\r\n<p style="margin-bottom: 0cm;">云南<span style="font-family: DejaVu Serif,serif;">CIDA</span>项目<span style="font-family: DejaVu Serif,serif;">: </span>云南省可利用可持续土地政策调整与实施研究</p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: DejaVu Serif,serif;">John&rsquo;s RDI </span>项目<span style="font-family: DejaVu Serif,serif;">: 	Investigate greater public input and participation in land use 	planning and environment management.</span></p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm;">科技部国家科技支撑项目：长三角村镇土地规模利用技术开发</p>\r\n</li>\r\n</ol>\r\n<p style="margin-left: 0.64cm; margin-bottom: 0cm;"><span style="font-family: DejaVu Serif,serif;">4.</span>科技部国际科技合作项目：高通量生态陷阱治理湖泊蓝藻 <span style="font-family: DejaVu Serif,serif;">(</span>微囊藻<span style="font-family: DejaVu Serif,serif;">)</span>水华的技术体系研究与示范</p>', 'live', '2010-07-06 15:48:03', '2010-07-06 15:48:03', 2, NULL, 'page', 'img04.jpg', 'image/jpeg', 7710, '2010-07-06 15:48:03', 0),
(25, '合作项目', 'hezuo-xiangmu', 5, NULL, '', '<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } -->\r\n<p style="text-indent: 0.92cm; margin-bottom: 0cm;"><span style="font-family: 黑体;"><strong>合作刊物论文 </strong></span></p>\r\n<p style="text-indent: 0.92cm; margin-bottom: 0cm;">&nbsp;</p>\r\n<ol>\r\n<li>\r\n<p style="margin-bottom: 0.35cm;"><span style="font-size: x-small;">任文伟，</span><span style="font-family: DejaVu Serif,serif;"><span style="font-size: x-small;">John 	Meligrana</span></span><span style="font-size: x-small;">，骆亦其，陈家宽，中国环境政策的变迁</span><span style="font-family: DejaVu Serif,serif;"><span style="font-size: x-small;">---</span></span><span style="font-size: x-small;">中国大坝的过去、现在和未来</span><span style="font-family: DejaVu Serif,serif;"><span style="font-size: x-small;">, 	2004</span></span><span style="font-size: x-small;">，</span><span style="font-family: DejaVu Serif,serif;"><span style="font-size: x-small;"><em>Nature</em></span><span style="font-size: x-small;">, 	432 (supp): 50-55</span></span><span style="font-size: x-small;">。</span><span style="font-family: DejaVu Serif,serif;"><span style="font-size: x-small;">(China 	Voice II</span></span><span style="font-size: x-small;">，中文增刊</span><span style="font-family: DejaVu Serif,serif;"><span style="font-size: x-small;">) </span></span></p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0.35cm;"><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Ren 	W, Sacret A., Migration won&rsquo;t make Chinese deserts bloom, </span></span><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;"><em>Nature,</em></span></span><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;"> 2004</span></span></span><span style="font-size: x-small;">，</span><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">430</span></span></span><span style="font-size: x-small;">：</span><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">723</span></span></span></p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0.35cm;"><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Ren 	W,</span></span><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;"> Zhong, Y Meligrana J, Anderson B </span></span><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;"><em>et 	al</em></span></span><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">., 	Urbanization, land use, and water quality in Shanghai 1949-1996, </span></span><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;"><em>Environment 	International</em></span></span><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;"> , 2003</span></span></span><span style="font-size: x-small;">，</span><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">29: 	649&ndash; 659.</span></span></span></p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: DejaVu Serif,serif;">Meligrana,J, </span>任文伟<span style="font-family: DejaVu Serif,serif;">, 	Anderson,B, </span>加拿大对发展管理的构思与实践：温哥华市的案例研究，<em>城市发展研究，</em><span style="font-family: DejaVu Serif,serif;">2003</span>（<span style="font-family: DejaVu Serif,serif;">6</span>），<span style="font-family: DejaVu Serif,serif;">96-100.</span></p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0.35cm;"><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">John 	Meligrana</span></span></span><span style="font-size: x-small;">，</span><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Wenwei 	Ren</span></span></span><span style="font-size: x-small;">，</span><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Zhiyao 	Zhang</span></span></span><span style="font-size: x-small;">，</span><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Bruce 	Anderson</span></span></span><span style="font-size: x-small;">，<span style="font-family: Arial,sans-serif;">1</span></span><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Planning 	a Mega City&rsquo;s Future: An Evaluation of Shanghai&rsquo;s Municipal Land 	Use Plan</span></span></span><span style="font-size: x-small;">，</span><span style="font-family: DejaVu Serif,serif;"><em>Town 	Planning Review</em></span><em>，</em><span style="font-family: DejaVu Serif,serif;">2008</span></p>\r\n</li>\r\n</ol>\r\n<p style="text-indent: 0.67cm; margin-bottom: 0cm;"><span style="font-family: 黑体;"><strong>会议报告</strong></span></p>\r\n<p style="text-indent: 0.52cm; margin-bottom: 0cm;"><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Verdana;"><span style="font-size: xx-small;"><em>International Conference on China&rsquo;s Urban Transition and City Planning </em></span></span><span style="font-family: Verdana;"><span style="font-size: xx-small;">29</span></span><sup><span style="font-family: Verdana;"><span style="font-size: xx-small;">th</span></span></sup><span style="font-family: Verdana;"><span style="font-size: xx-small;"> -30</span></span><sup><span style="font-family: Verdana;"><span style="font-size: xx-small;">th</span></span></sup><span style="font-family: Verdana;"><span style="font-size: xx-small;"> June 2007, Cardiff, UK</span></span></span></p>\r\n<ol>\r\n<li>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Wenwei 	Ren, Bruce Anderson, John Meligrana, Bin Zhao, Zhiyao Zhang, Dilemma 	and Solutions: Wetland conservation in the shadow of the megacity of 	Shanghai</span></span></span></p>\r\n</li>\r\n</ol>\r\n<p style="margin-left: 0.74cm; margin-bottom: 0cm;">&nbsp;</p>\r\n<ol>\r\n<li>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Zengfu 	Liu, Wenwei Ren, Bruce Anderson, John Meligrana, Chongming 	Eco-island: Demonstrating the building of a resource efficient and 	environmentally friendly society in China</span></span></span></p>\r\n</li>\r\n</ol>\r\n<p style="margin-left: 0.74cm; margin-bottom: 0cm;">&nbsp;</p>\r\n<ol>\r\n<li>\r\n<p style="margin-bottom: 0cm;"><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">John 	Meligrana</span></span></span><span style="font-size: x-small;">，</span><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Wenwei 	Ren</span></span></span><span style="font-size: x-small;">，</span><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Zhiyao 	Zhang</span></span></span><span style="font-size: x-small;">，</span><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Bruce 	Anderson</span></span></span><span style="font-size: x-small;">，</span><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Planning 	a Mega City&rsquo;s Future: An Evaluation of Shanghai&rsquo;s Municipal Land 	Use Plan </span></span></span></p>\r\n</li>\r\n</ol>\r\n<p style="text-indent: 0.85cm; margin-bottom: 0cm;">&nbsp;</p>\r\n<p style="text-indent: 0.85cm; margin-bottom: 0cm;">合作著作（章节）</p>\r\n<p style="margin-left: 0.74cm; margin-bottom: 0cm;"><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Wenwei REN, John MELIGRANA, Zhiyao ZHANG, Bruce ANDERSON</span></span></span><span style="font-size: x-small;">，</span><span style="font-family: DejaVu Serif,serif;"><span style="font-family: Arial,sans-serif;"><span style="font-size: x-small;">Balancing Economic Development and Environmental Protection: A Discussion of China&rsquo;s Hydroelectric Dam Projects </span></span></span></p>', 'live', '2010-07-06 15:49:25', '2010-07-06 15:49:25', 2, NULL, 'page', 'maple.jpg', 'image/jpeg', 50331, '2010-07-06 15:49:25', 0),
(26, '教学项目', 'jiaoxue-xiangmu', 5, NULL, '', '<!-- 		@page { margin: 2cm } 		P { margin-bottom: 0.21cm } --> \r\n<ul>\r\n<li>&nbsp;女王大学发展研究中心（<span style="font-family: DejaVu Serif,serif;">DEVs</span>）学生在复旦大学社会发展与公共政策学院为期<span style="font-family: DejaVu Serif,serif;">1</span>学期的合作交流学习（<span style="font-family: DejaVu Serif,serif;">2005&mdash;&mdash;</span>现在） </li>\r\n</ul>\r\n<ul>\r\n<li>&nbsp;   女王大学<span style="font-family: DejaVu Serif,serif;">MPA</span>在复旦大学中国经济研究中心的暑期培训班（<span style="font-family: DejaVu Serif,serif;">2006&mdash;</span>现在）</li>\r\n</ul>\r\n<ul>\r\n<li>&nbsp;   &ldquo;水环境多样性与环境评价&rdquo;中加联合课程（<span style="font-family: DejaVu Serif,serif;">2008-</span>现在）</li>\r\n</ul>', 'live', '2010-07-06 15:51:17', '2010-07-06 15:51:17', 2, NULL, 'page', 'Detective_cut_out_clip.gif', 'image/gif', 51199, '2010-07-06 15:51:16', 0);

-- --------------------------------------------------------

--
-- 表的结构 `bulletins`
--

CREATE TABLE IF NOT EXISTS `bulletins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `bulletins`
--


-- --------------------------------------------------------

--
-- 表的结构 `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `language_id`) VALUES
(1, '图书', '2010-04-03 03:09:37', '2010-04-03 03:09:37', 2),
(2, 'books', '2010-04-03 03:09:46', '2010-04-03 03:09:46', 1),
(4, '水资源处理', '2010-04-24 07:02:50', '2010-04-24 07:02:50', 2),
(5, '资料', '2010-07-06 15:08:35', '2010-07-06 15:08:35', 2),
(6, 'material', '2010-07-06 15:09:16', '2010-07-06 15:09:16', 1);

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `article_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `author`, `email`, `comment`, `article_id`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'dfg', 'dfgf', 'dfgf', 14, NULL, '2010-04-15 14:50:50', '2010-04-15 14:50:50'),
(2, 'fsdfsdds', 'sfs', 'sfs', 15, NULL, '2010-04-17 07:11:59', '2010-04-17 07:11:59'),
(3, 'agsdfsfasdfsd', 'fsdfsda', 'aaaaafssssssssss', 15, NULL, '2010-04-17 07:12:12', '2010-04-17 07:12:12');

-- --------------------------------------------------------

--
-- 表的结构 `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `parent_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `galleries`
--


-- --------------------------------------------------------

--
-- 表的结构 `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `image`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '', NULL, 1, '2010-04-03 03:09:00', '2010-04-03 03:09:00'),
(2, '简体中文', 'zh_CN', '', NULL, 1, '2010-04-03 03:09:21', '2010-04-03 03:09:21');

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `news`
--


-- --------------------------------------------------------

--
-- 表的结构 `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pages`
--


-- --------------------------------------------------------

--
-- 表的结构 `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `photos`
--


-- --------------------------------------------------------

--
-- 表的结构 `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20100320152117'),
('20100320161455'),
('20100323115947'),
('20100401092909'),
('20100401093833'),
('20100401093853'),
('20100401104706'),
('20100401104853'),
('20100401105903'),
('20100403073814'),
('20100403073844'),
('20100404075332'),
('20100404082405'),
('20100405010313'),
('20100405011035'),
('20100405013430'),
('20100406123435'),
('20100406140510'),
('20100406141009'),
('20100406141550'),
('20100408141001');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remember_token` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token_expires_at` datetime DEFAULT NULL,
  `activation_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated_at` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'passive',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_login` (`login`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `login`, `name`, `email`, `crypted_password`, `salt`, `created_at`, `updated_at`, `remember_token`, `remember_token_expires_at`, `activation_code`, `activated_at`, `state`, `deleted_at`) VALUES
(1, 'wuts', '', 'wuts73@gmail.com', 'ca86c342cfbc78757fedf982d659c545c2e2ee62', '7b76c2a4f734cfbbb59793b1ec50277e669083ed', '2010-04-04 23:22:43', '2010-04-04 23:22:43', NULL, NULL, '6c20e69452974068a91836ca5b43bae1705f401b', '2010-04-05 07:37:12', 'active', NULL);
