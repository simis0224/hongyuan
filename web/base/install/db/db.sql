-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 01 月 18 日 09:06
-- 服务器版本: 5.1.50
-- PHP 版本: 5.2.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `abc`
--

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_duilian`
--

CREATE TABLE IF NOT EXISTS `dev_advs_duilian` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL DEFAULT '',
  `src2` char(100) NOT NULL DEFAULT '',
  `url` char(200) NOT NULL DEFAULT '',
  `url2` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `dev_advs_duilian`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_lb`
--

CREATE TABLE IF NOT EXISTS `dev_advs_lb` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `groupid` int(5) NOT NULL DEFAULT '1',
  `title` char(100) NOT NULL DEFAULT '',
  `src` char(100) NOT NULL DEFAULT '',
  `src1` char(255) NOT NULL,
  `url` char(100) NOT NULL DEFAULT '',
  `xuhao` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=46 ;

--
-- 转存表中的数据 `dev_advs_lb`
--

INSERT INTO `dev_advs_lb` (`id`, `groupid`, `title`, `src`, `src1`, `url`, `xuhao`) VALUES
(39, 1, '广告标题', 'advs/pics/20121210/1355105919.jpg', '', 'http://', 1),
(41, 1, '广告标题', 'advs/pics/20121210/1355105923.jpg', '', 'http://', 2),
(45, 1, '广告标题', 'advs/pics/20121210/1355105933.jpg', '', 'http://', 3);

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_lbgroup`
--

CREATE TABLE IF NOT EXISTS `dev_advs_lbgroup` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL DEFAULT '',
  `xuhao` int(5) NOT NULL DEFAULT '0',
  `moveable` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `dev_advs_lbgroup`
--

INSERT INTO `dev_advs_lbgroup` (`id`, `groupname`, `xuhao`, `moveable`) VALUES
(1, '默认轮播广告组', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_link`
--

CREATE TABLE IF NOT EXISTS `dev_advs_link` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `groupid` int(5) NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `xuhao` int(5) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `src` varchar(100) NOT NULL DEFAULT '',
  `cl` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- 转存表中的数据 `dev_advs_link`
--

INSERT INTO `dev_advs_link` (`id`, `groupid`, `name`, `url`, `xuhao`, `type`, `src`, `cl`) VALUES
(56, 1, '2', 'http://www.baidu.com', 0, '', 'advs/pics/20100105/1262680791.gif', 0),
(57, 1, '2', 'http://www.baidu.com', 0, '', 'advs/pics/20100105/1262680800.gif', 0),
(58, 1, '2', 'http://www.baidu.com', 0, '', 'advs/pics/20100105/1262680854.gif', 0),
(59, 1, '2', 'http://www.baidu.com', 0, '', 'advs/pics/20100106/1262763267.gif', 0),
(60, 1, '2', 'http://www.baidu.com', 0, '', 'advs/pics/20100106/1262763295.gif', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_linkgroup`
--

CREATE TABLE IF NOT EXISTS `dev_advs_linkgroup` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL DEFAULT '',
  `xuhao` int(5) NOT NULL DEFAULT '0',
  `moveable` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `dev_advs_linkgroup`
--

INSERT INTO `dev_advs_linkgroup` (`id`, `groupname`, `xuhao`, `moveable`) VALUES
(1, '默认友情链接组', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_logo`
--

CREATE TABLE IF NOT EXISTS `dev_advs_logo` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL DEFAULT '',
  `url` char(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `dev_advs_logo`
--

INSERT INTO `dev_advs_logo` (`id`, `groupname`, `src`, `url`) VALUES
(1, '网站标志一', 'advs/pics/20121210/1355104487.png', '#');

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_movi`
--

CREATE TABLE IF NOT EXISTS `dev_advs_movi` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `dev_advs_movi`
--

INSERT INTO `dev_advs_movi` (`id`, `groupname`, `src`) VALUES
(1, '视频广告测试一', 'http://vhead.blog.sina.com.cn/player/outer_player.swf?auto=1&vid=16205152&uid=1504617052');

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_pic`
--

CREATE TABLE IF NOT EXISTS `dev_advs_pic` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL DEFAULT '',
  `url` char(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dev_advs_pic`
--

INSERT INTO `dev_advs_pic` (`id`, `groupname`, `src`, `url`) VALUES
(1, '测试图片广告', 'advs/pics/20091126/1259213779.gif', 'http://www.try.com');

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_pop`
--

CREATE TABLE IF NOT EXISTS `dev_advs_pop` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text,
  `ifpop` int(1) NOT NULL DEFAULT '0',
  `popwidth` int(10) DEFAULT NULL,
  `popheight` int(10) DEFAULT NULL,
  `popleft` int(10) DEFAULT NULL,
  `poptop` int(10) DEFAULT NULL,
  `poptoolbar` int(1) DEFAULT NULL,
  `popmenubar` int(1) DEFAULT NULL,
  `popstatus` int(1) DEFAULT NULL,
  `poplocation` int(1) DEFAULT NULL,
  `popscrollbars` varchar(50) DEFAULT NULL,
  `popresizable` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dev_advs_pop`
--

INSERT INTO `dev_advs_pop` (`id`, `title`, `body`, `ifpop`, `popwidth`, `popheight`, `popleft`, `poptop`, `poptoolbar`, `popmenubar`, `popstatus`, `poplocation`, `popscrollbars`, `popresizable`) VALUES
(1, '弹出窗口', '窗口内容 ', 0, 400, 300, 0, 0, 0, 0, 0, 0, 'auto', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_advs_text`
--

CREATE TABLE IF NOT EXISTS `dev_advs_text` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `groupname` char(200) NOT NULL,
  `text` char(200) NOT NULL DEFAULT '',
  `url` char(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `dev_advs_text`
--

INSERT INTO `dev_advs_text` (`id`, `groupname`, `text`, `url`) VALUES
(1, '促销广告一', '本季特大优惠活动开始啦qq', 'http://www.com');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_admin`
--

CREATE TABLE IF NOT EXISTS `dev_base_admin` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `job` varchar(50) NOT NULL,
  `jobid` varchar(20) NOT NULL,
  `moveable` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `dev_base_admin`
--

INSERT INTO `dev_base_admin` (`id`, `user`, `password`, `name`, `job`, `jobid`, `moveable`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', '管理员', '管理员', 'A001', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_adminauth`
--

CREATE TABLE IF NOT EXISTS `dev_base_adminauth` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `coltype` varchar(30) NOT NULL,
  `auth` int(5) NOT NULL DEFAULT '0',
  `name` char(50) NOT NULL DEFAULT '',
  `intro` char(255) NOT NULL DEFAULT '',
  `xuhao` int(10) NOT NULL DEFAULT '0',
  `pid` int(10) NOT NULL DEFAULT '0',
  `pname` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=184 ;

--
-- 转存表中的数据 `dev_base_adminauth`
--

INSERT INTO `dev_base_adminauth` (`id`, `coltype`, `auth`, `name`, `intro`, `xuhao`, `pid`, `pname`) VALUES
(69, 'advs', 91, '网站标志管理', '', 1, 2, ''),
(17, 'advs', 95, '网站广告管理', '', 5, 2, ''),
(30, 'advs', 96, '友情链接管理', '', 4, 7, ''),
(1, 'base', 1, '网站参数设置', '', 1, 0, ''),
(2, 'base', 2, '修改管理密码', '', 2, 0, ''),
(3, 'base', 3, '管理账户维护', '', 3, 0, ''),
(5, 'base', 5, '网站排版设置', '', 5, 0, ''),
(66, 'base', 6, '模块插件管理', '', 6, 0, ''),
(67, 'base', 7, '软件升级更新', '', 7, 0, ''),
(114, 'job', 225, '应聘表单设置', '', 7, 22, ''),
(113, 'job', 224, '企业人才库查询', '', 4, 22, ''),
(112, 'job', 223, '求职申请处理', '', 3, 22, ''),
(111, 'job', 222, '招聘职位管理', '', 2, 22, ''),
(110, 'job', 221, '招聘职位发布', '', 1, 22, ''),
(6, 'menu', 11, '导航菜单设置', '', 1, 1, ''),
(38, 'news', 120, '文章模块参数设置', '', 0, 12, ''),
(39, 'news', 121, '文章分类', '', 1, 12, ''),
(13, 'news', 122, '文章管理', '', 2, 12, ''),
(12, 'news', 123, '文章专题设置', '', 3, 12, ''),
(40, 'news', 125, '文章发布', '', 5, 12, ''),
(41, 'news', 126, '文章修改', '', 6, 12, ''),
(43, 'page', 301, '网页分组和管理', '', 1, 30, ''),
(27, 'tools', 81, '访问统计系统', '', 1, 7, ''),
(29, 'tools', 82, '投票调查系统', '', 3, 7, ''),
(72, 'base', 8, '管理菜单设置', '', 8, 0, ''),
(73, 'product', 180, '产品模块参数设置', '', 0, 15, ''),
(74, 'product', 181, '产品分类', '', 1, 15, ''),
(75, 'product', 182, '产品管理', '', 2, 15, ''),
(76, 'product', 183, '产品专题设置', '', 3, 15, ''),
(77, 'product', 185, '产品发布', '', 5, 15, ''),
(78, 'product', 186, '产品修改', '', 6, 15, ''),
(87, 'base', 9, '模块安装卸载', '', 9, 0, ''),
(88, 'photo', 150, '图片模块参数设置', '', 0, 15, ''),
(89, 'photo', 151, '图片分类', '', 1, 15, ''),
(90, 'photo', 152, '图片管理', '', 2, 15, ''),
(91, 'photo', 153, '图片专题设置', '', 3, 15, ''),
(92, 'photo', 155, '图片发布', '', 5, 15, ''),
(93, 'photo', 156, '图片修改', '', 6, 15, ''),
(132, 'tools', 83, '图片投票系统', '', 3, 7, ''),
(133, 'tools', 84, 'QQ客服系统', '', 4, 7, ''),
(134, 'tools', 85, '51客服系统', '', 5, 7, ''),
(135, 'tools', 86, '51la统计系统', '', 6, 7, ''),
(136, 'tools', 87, '移动短信留言', '', 7, 7, ''),
(176, 'feedback', 211, '反馈表单设置', '', 1, 21, ''),
(177, 'feedback', 212, '反馈留言管理', '', 3, 21, '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_adminmenu`
--

CREATE TABLE IF NOT EXISTS `dev_base_adminmenu` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `pid` int(6) NOT NULL DEFAULT '0',
  `menu` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `xuhao` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `dev_base_adminmenu`
--

INSERT INTO `dev_base_adminmenu` (`id`, `pid`, `menu`, `url`, `xuhao`) VALUES
(1, 0, '栏目菜单设置', 'menu/admin/menu.php?groupid=1', 1),
(2, 0, '公司简介修改', 'page/admin/page_edit.php?id=1&groupid=1', 3),
(6, 0, '联系方式修改', 'page/admin/page_edit.php?id=64&groupid=22', 6),
(8, 0, '公司产品管理', 'product/admin/product_con.php', 7),
(11, 0, '新闻动态管理', 'news/admin/news_con.php', 8),
(15, 0, '上传网站标志', 'advs/admin/advs_logo_modi.php?id=1', 2),
(25, 0, '门店展示管理', 'photo/admin/photo_con.php?pid=9', 14),
(18, 0, '公司荣誉管理', 'photo/admin/photo_con.php?pid=8', 11),
(23, 0, '招聘职位管理', 'job/admin/job.php', 17),
(24, 0, '发布招聘职位', 'job/admin/jobadd.php', 19),
(26, 0, '公司文化修改', 'page/admin/page_edit.php?id=66&groupid=1', 4);

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_adminrights`
--

CREATE TABLE IF NOT EXISTS `dev_base_adminrights` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `auth` char(20) DEFAULT NULL,
  `user` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3361 ;

--
-- 转存表中的数据 `dev_base_adminrights`
--

INSERT INTO `dev_base_adminrights` (`id`, `auth`, `user`) VALUES
(3360, '735', 'admin'),
(3359, '734', 'admin'),
(3358, '733', 'admin'),
(3357, '732', 'admin'),
(3356, '731', 'admin'),
(3355, '730', 'admin'),
(3354, '212', 'admin'),
(3353, '211', 'admin'),
(3352, '87', 'admin'),
(3351, '86', 'admin'),
(3350, '85', 'admin'),
(3349, '84', 'admin'),
(3348, '83', 'admin'),
(3347, '156', 'admin'),
(3346, '155', 'admin'),
(3345, '153', 'admin'),
(3344, '152', 'admin'),
(3343, '151', 'admin'),
(3342, '150', 'admin'),
(3341, '9', 'admin'),
(3340, '186', 'admin'),
(3339, '185', 'admin'),
(3338, '183', 'admin'),
(3337, '182', 'admin'),
(3336, '181', 'admin'),
(3335, '180', 'admin'),
(3334, '8', 'admin'),
(3333, '82', 'admin'),
(3332, '81', 'admin'),
(3331, '301', 'admin'),
(3330, '126', 'admin'),
(3329, '125', 'admin'),
(3328, '123', 'admin'),
(3327, '122', 'admin'),
(3326, '121', 'admin'),
(3325, '120', 'admin'),
(3324, '11', 'admin'),
(3323, '221', 'admin'),
(3322, '222', 'admin'),
(3321, '223', 'admin'),
(3320, '224', 'admin'),
(3319, '225', 'admin'),
(3318, '7', 'admin'),
(3317, '6', 'admin'),
(3316, '5', 'admin'),
(3315, '3', 'admin'),
(3314, '2', 'admin'),
(3313, '1', 'admin'),
(3312, '96', 'admin'),
(3311, '95', 'admin'),
(3310, '91', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_border`
--

CREATE TABLE IF NOT EXISTS `dev_base_border` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `bordertype` varchar(10) NOT NULL DEFAULT 'border',
  `tempid` char(8) NOT NULL DEFAULT '',
  `tempname` varchar(50) NOT NULL DEFAULT '边框模板',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=211 ;

--
-- 转存表中的数据 `dev_base_border`
--

INSERT INTO `dev_base_border` (`id`, `bordertype`, `tempid`, `tempname`) VALUES
(1, 'border', '001', '可选颜色边框模板'),
(12, 'border', '012', '可选颜色边框模板(浅色调)'),
(15, 'border', '015', '可选颜色边框模板'),
(16, 'border', '016', '可选颜色边框模板'),
(18, 'border', '018', '可选颜色边框模板'),
(41, 'border', '512', '无标题栏圆角边框模版'),
(47, 'lable', '201', '标签切换边框模板,浅蓝简约型'),
(48, 'lable', '051', '可选颜色,标签切换边框模板,带总标题'),
(51, 'lable', '204', '标签切换边框模板,浅灰简约,带总标题栏'),
(63, 'border', '500', '条幅边框,无标题栏，搜索条登录框等专用'),
(85, 'border', '526', '条状背景边框(搜索、当前位置提示条专用)'),
(87, 'border', '613', '创意边框'),
(88, 'border', '614', '创意边框'),
(189, 'border', '784', '资讯导航'),
(204, 'border', '783', '卫浴系列'),
(209, 'border', '779', '厨房电器'),
(190, 'border', '780', '产品系列'),
(170, 'border', '788', '当前位置条背景'),
(207, 'border', '781', '联系我们'),
(200, 'border', '782', '整体橱柜'),
(194, 'lable', '205', '切换边框'),
(202, 'border', '785', '栏目导航');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_coltype`
--

CREATE TABLE IF NOT EXISTS `dev_base_coltype` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `coltype` varchar(30) NOT NULL DEFAULT '',
  `colname` varchar(50) NOT NULL DEFAULT '',
  `sname` varchar(30) NOT NULL,
  `ifadmin` int(1) NOT NULL DEFAULT '1',
  `ifchannel` int(1) NOT NULL DEFAULT '0',
  `ifpubplus` int(1) NOT NULL DEFAULT '1',
  `moveable` int(1) NOT NULL DEFAULT '0',
  `installed` int(1) NOT NULL DEFAULT '1',
  `classtbl` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=118 ;

--
-- 转存表中的数据 `dev_base_coltype`
--

INSERT INTO `dev_base_coltype` (`id`, `coltype`, `colname`, `sname`, `ifadmin`, `ifchannel`, `ifpubplus`, `moveable`, `installed`, `classtbl`) VALUES
(1, 'base', '基础模块', '基础', 0, 0, 0, 0, 1, ''),
(2, 'diy', '自定内容', '自定义', 0, 0, 1, 0, 1, ''),
(3, 'menu', '导航菜单', '菜单', 1, 0, 1, 0, 1, ''),
(5, 'index', '首页模块', '首页', 0, 1, 0, 0, 1, ''),
(20, 'page', '网页模块', '网页', 1, 0, 1, 0, 1, ''),
(21, 'news', '文章模块', '文章', 1, 1, 1, 1, 1, '_news_cat'),
(25, 'product', '产品展示', '产品', 1, 1, 1, 1, 1, '_product_cat'),
(26, 'photo', '图片模块', '图片', 1, 1, 1, 1, 1, '_photo_cat'),
(109, 'job', '企业招聘', '招聘', 1, 1, 1, 1, 1, ''),
(97, 'search', '全站搜索', '搜索', 0, 0, 1, 0, 1, ''),
(98, 'advs', '网站广告', '广告', 1, 0, 1, 0, 1, ''),
(99, 'tools', '辅助工具', '工具', 1, 0, 1, 0, 1, ''),
(100, 'effect', '素材特效', '特效', 0, 0, 1, 0, 1, ''),
(116, 'feedback', '留言反馈', '反馈', 1, 1, 1, 1, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_config`
--

CREATE TABLE IF NOT EXISTS `dev_base_config` (
  `xuhao` int(3) NOT NULL DEFAULT '0',
  `vname` varchar(50) NOT NULL DEFAULT '',
  `settype` varchar(30) NOT NULL DEFAULT 'input',
  `colwidth` varchar(3) NOT NULL DEFAULT '30',
  `variable` varchar(32) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dev_base_config`
--

INSERT INTO `dev_base_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '网站名称', 'input', '30', 'SiteName', '整体橱柜公司ymjd.cn', '用于在网页标题、导航栏处显示'),
(2, '网站网址', 'input', '30', 'SiteHttp', 'http://127.0.0.1/', '网站的实际访问网址,末尾加“/”'),
(4, '服务邮箱', 'input', '30', 'SiteEmail', 'service@mydomain.com', '在发送系统邮件时作为发件人邮件'),
(5, '邮件转发方式', 'ownersys', '1', 'ownersys', '0', 'LINUX/UNIX服务器一般可使用内置邮件系统转发邮件；WINDOWS服务器建议使用外部SMTP邮箱转发，并设置以下SMTP邮箱参数'),
(6, 'SMTP服务器', 'input', '30', 'owner_m_smtp', 'mail.mydomain.com', ''),
(7, 'SMTP邮箱用户', 'input', '30', 'owner_m_user', 'alex@mydomain.com', ''),
(8, 'SMTP邮箱密码', 'input', '30', 'owner_m_pass', '123456', ''),
(5, 'SMTP转发邮箱', 'input', '30', 'owner_m_mail', 'alex@mydomain.com', ''),
(9, 'SMTP身份验证', 'YN', '10', 'owner_m_check', '1', ''),
(10, '是否生成并使用静态HTML网页', 'YN', '10', 'CatchOpen', '0', ''),
(11, 'HTML静态网页更新时间(秒)', 'input', '8', 'CatchTime', '3600', '超过此时间访问静态页面时，重新生成静态页并刷新页面'),
(3, '软件授权用户账号', 'input', '30', 'phpwebUser', '', '在本软件安装、升级或使用其他服务时所采用的软件授权用户登录帐号'),
(99, '安全校验码', 'code', '30', 'safecode', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_pageset`
--

CREATE TABLE IF NOT EXISTS `dev_base_pageset` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `coltype` varchar(50) NOT NULL DEFAULT '',
  `pagename` varchar(50) NOT NULL DEFAULT '',
  `th` int(5) NOT NULL DEFAULT '200',
  `ch` int(5) NOT NULL DEFAULT '500',
  `bh` int(5) NOT NULL DEFAULT '200',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `metakey` varchar(255) NOT NULL DEFAULT '',
  `metacon` text NOT NULL,
  `bgcolor` varchar(100) NOT NULL,
  `bgimage` varchar(100) NOT NULL,
  `bgposition` varchar(20) NOT NULL,
  `bgrepeat` varchar(20) NOT NULL DEFAULT 'repeat',
  `bgatt` varchar(10) NOT NULL DEFAULT 'scroll',
  `containwidth` int(5) NOT NULL DEFAULT '900',
  `containbg` varchar(100) NOT NULL DEFAULT '#ffffff',
  `containimg` varchar(100) NOT NULL,
  `containmargin` int(2) NOT NULL DEFAULT '0',
  `containpadding` int(2) NOT NULL DEFAULT '10',
  `containcenter` char(10) NOT NULL DEFAULT 'auto',
  `topbg` varchar(100) NOT NULL DEFAULT 'transparent',
  `topwidth` char(10) NOT NULL DEFAULT '900',
  `contentbg` varchar(100) NOT NULL DEFAULT 'transparent',
  `contentwidth` char(10) NOT NULL DEFAULT '900',
  `contentmargin` int(2) NOT NULL DEFAULT '10',
  `bottombg` varchar(100) NOT NULL DEFAULT 'transparent',
  `bottomwidth` char(10) NOT NULL DEFAULT '900',
  `buildhtml` varchar(12) NOT NULL DEFAULT '0',
  `xuhao` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=524 ;

--
-- 转存表中的数据 `dev_base_pageset`
--

INSERT INTO `dev_base_pageset` (`id`, `name`, `coltype`, `pagename`, `th`, `ch`, `bh`, `pagetitle`, `metakey`, `metacon`, `bgcolor`, `bgimage`, `bgposition`, `bgrepeat`, `bgatt`, `containwidth`, `containbg`, `containimg`, `containmargin`, `containpadding`, `containcenter`, `topbg`, `topwidth`, `contentbg`, `contentwidth`, `contentmargin`, `bottombg`, `bottomwidth`, `buildhtml`, `xuhao`) VALUES
(126, '友情链接', 'advs', 'link', 527, 283, 194, '', '友情链接', '友情链接', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(327, '招聘职位详情', 'job', 'detail', 529, 1392, 196, '', '0', '0', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'id', 3),
(1, '首页', 'index', 'index', 527, 358, 194, '首页', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'none transparent scroll repeat 0% 0%', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'index', 1),
(208, '文章发布', 'member', 'newsfabu', 292, 760, 42, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 8),
(209, '文章管理', 'member', 'newsgl', 292, 216, 42, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 9),
(210, '文章修改', 'member', 'newsmodify', 130, 785, 33, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 10),
(228, '文章分类', 'member', 'newscat', 292, 216, 42, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 9),
(2, '文章检索', 'news', 'query', 529, 534, 196, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'catid', 2),
(3, '文章正文', 'news', 'detail', 529, 589, 196, '', '0', '0', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'id', 3),
(33, '频道首页', 'news', 'main', 375, 528, 91, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'index', 0),
(129, '内容页', 'page', 'html', 527, 474, 194, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'id', 1),
(16, '全站搜索', 'search', 'search', 422, 1579, 57, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 2),
(247, '会员文章', 'news', 'membernews', 130, 420, 33, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 12),
(274, '产品频道首页', 'product', 'main', 529, 1058, 196, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'index', 1),
(353, '家具知识检索', 'news', 'queryknow', 442, 569, 97, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'catid', 2),
(275, '产品查询', 'product', 'query', 527, 884, 194, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'catid', 2),
(276, '产品详情', 'product', 'detail', 529, 458, 196, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'id', 3),
(277, '会员产品', 'product', 'memberproduct', 164, 290, 152, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 12),
(278, '产品管理', 'member', 'productgl', 265, 737, 161, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 1),
(279, '产品发布', 'member', 'productfabu', 265, 442, 161, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(280, '产品修改', 'member', 'productmodify', 265, 498, 161, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(281, '产品分类', 'member', 'productcat', 265, 336, 161, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 9),
(289, '图文频道首页', 'photo', 'main', 422, 772, 57, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'index', 1),
(290, '图片查询', 'photo', 'query', 529, 448, 196, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'catid', 2),
(291, '图片详情', 'photo', 'detail', 529, 388, 196, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'id', 3),
(292, '会员图片', 'photo', 'memberphoto', 164, 290, 152, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 12),
(293, '图片管理', 'member', 'photogl', 162, 267, 150, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 1),
(294, '图片发布', 'member', 'photofabu', 164, 435, 152, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(295, '图片修改', 'member', 'photomodify', 164, 493, 152, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(296, '图片分类', 'member', 'photocat', 147, 267, 150, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 9),
(313, '经营范围', 'page', 'html_honor', 527, 446, 194, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(310, '分组首页', 'page', 'html_main', 200, 500, 200, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(326, '招聘职位查询', 'job', 'main', 529, 425, 196, '企业招聘', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'index', 2),
(312, '公司简介', 'page', 'html_company', 527, 474, 194, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(509, '加盟程序', 'page', 'join_method', 527, 760, 194, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(505, '品牌加盟', 'page', 'join', 529, 454, 196, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'id', 0),
(506, '品牌加盟', 'page', 'join_main', 200, 500, 200, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(507, '加盟须知', 'page', 'join_notice', 527, 452, 194, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(508, '加盟条件', 'page', 'join_condition', 529, 454, 196, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(430, '家具知识正文', 'news', 'detailknow', 442, 369, 97, '', '0', '0', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'id', 4),
(462, '联系方式', 'page', 'service_contact', 529, 386, 196, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(463, '请您留言', 'page', 'service_feedback', 529, 584, 196, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(472, '企业文化', 'page', 'html_culture', 375, 446, 91, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(473, '设备环境', 'page', 'html_ethic', 375, 473, 91, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(484, '留言反馈', 'feedback', 'main', 420, 423, 55, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 1),
(510, '加盟申请', 'page', 'join_application', 529, 641, 196, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(511, '门店展示', 'page', 'join_display', 529, 448, 196, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(491, '销售网络', 'page', 'html_sale', 527, 620, 194, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(519, '客户服务', 'page', 'service', 529, 344, 196, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', 'id', 0),
(520, '客户服务', 'page', 'service_main', 200, 500, 200, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(521, '服务理念', 'page', 'service_service', 529, 285, 196, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0),
(522, '服务宗旨', 'page', 'service_policy', 529, 285, 196, '', '', '', 'transparent', 'url(effect/source/bg/bg.jpg)', '0% 0%', 'repeat', 'scroll', 1002, 'url(effect/source/bg/1262661247.gif) repeat-y', '', 0, 0, 'auto', 'url(effect/source/bg/1262918621.gif)', '900', 'url(effect/source/bg/cbg.png) repeat-y', '900', 0, 'none transparent scroll repeat 0% 0%', '900', '0', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_pagetemp`
--

CREATE TABLE IF NOT EXISTS `dev_base_pagetemp` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `tempname` varchar(50) NOT NULL,
  `bgcolor` varchar(100) NOT NULL,
  `bgimage` varchar(100) NOT NULL,
  `bgposition` varchar(20) NOT NULL,
  `bgrepeat` varchar(20) NOT NULL DEFAULT 'repeat',
  `bgatt` varchar(10) NOT NULL DEFAULT 'scroll',
  `containwidth` int(5) NOT NULL DEFAULT '900',
  `containbg` varchar(100) NOT NULL DEFAULT '#ffffff',
  `containimg` varchar(100) NOT NULL,
  `containmargin` int(2) NOT NULL DEFAULT '0',
  `containpadding` int(2) NOT NULL DEFAULT '10',
  `containcenter` char(10) NOT NULL DEFAULT 'auto',
  `topbg` varchar(100) NOT NULL DEFAULT 'transparent',
  `topwidth` char(10) NOT NULL DEFAULT '900',
  `contentbg` varchar(100) NOT NULL DEFAULT 'transparent',
  `contentwidth` char(10) NOT NULL DEFAULT '900',
  `contentmargin` int(2) NOT NULL DEFAULT '10',
  `bottombg` varchar(100) NOT NULL DEFAULT 'transparent',
  `bottomwidth` char(10) NOT NULL DEFAULT '900',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- 转存表中的数据 `dev_base_pagetemp`
--

INSERT INTO `dev_base_pagetemp` (`id`, `tempname`, `bgcolor`, `bgimage`, `bgposition`, `bgrepeat`, `bgatt`, `containwidth`, `containbg`, `containimg`, `containmargin`, `containpadding`, `containcenter`, `topbg`, `topwidth`, `contentbg`, `contentwidth`, `contentmargin`, `bottombg`, `bottomwidth`) VALUES
(44, '默认背景', '#4682b4', 'url(effect/source/bg/mybg.jpg)', '0% 0%', 'repeat', 'fixed', 900, 'none transparent scroll repeat 0% 0%', '', 0, 0, 'auto', 'url(effect/source/bg/1238691760.jpg)', '900', '#ffffff', '900', 0, '#808080', '900');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_plus`
--

CREATE TABLE IF NOT EXISTS `dev_base_plus` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) DEFAULT '0',
  `plusname` varchar(50) NOT NULL,
  `plustype` varchar(50) DEFAULT '0',
  `pluslocat` varchar(50) DEFAULT '0',
  `tempname` varchar(100) NOT NULL DEFAULT '0',
  `tempcolor` varchar(2) NOT NULL,
  `showborder` char(20) NOT NULL DEFAULT '0',
  `bordercolor` varchar(7) NOT NULL DEFAULT '#dddddd',
  `borderwidth` int(2) NOT NULL DEFAULT '1',
  `borderstyle` varchar(10) NOT NULL DEFAULT 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL DEFAULT 'none',
  `barbg` varchar(10) NOT NULL DEFAULT '#cccccc',
  `barcolor` varchar(10) NOT NULL DEFAULT '#ffffff',
  `backgroundcolor` varchar(7) NOT NULL DEFAULT '#ffffff',
  `morelink` varchar(100) NOT NULL DEFAULT 'http://',
  `width` int(5) NOT NULL DEFAULT '100',
  `height` int(5) NOT NULL DEFAULT '100',
  `top` int(5) NOT NULL DEFAULT '0',
  `left` int(5) NOT NULL DEFAULT '0',
  `zindex` int(2) NOT NULL DEFAULT '99',
  `padding` int(11) NOT NULL DEFAULT '0',
  `shownums` int(10) NOT NULL DEFAULT '0',
  `ord` varchar(100) NOT NULL DEFAULT 'id',
  `sc` varchar(10) NOT NULL DEFAULT 'desc',
  `showtj` int(5) NOT NULL DEFAULT '0',
  `cutword` int(20) DEFAULT '0',
  `target` varchar(30) DEFAULT '0',
  `catid` int(100) NOT NULL DEFAULT '0',
  `cutbody` int(5) NOT NULL DEFAULT '0',
  `picw` int(3) NOT NULL DEFAULT '100',
  `pich` int(3) NOT NULL DEFAULT '100',
  `fittype` char(10) NOT NULL DEFAULT 'fill',
  `title` varchar(100) NOT NULL,
  `body` text,
  `pic` varchar(255) NOT NULL,
  `piclink` char(255) NOT NULL DEFAULT '-1',
  `attach` varchar(255) NOT NULL,
  `movi` varchar(255) NOT NULL,
  `sourceurl` varchar(30) NOT NULL,
  `word` char(255) NOT NULL,
  `word1` char(255) NOT NULL,
  `word2` char(255) NOT NULL,
  `word3` char(255) NOT NULL DEFAULT '',
  `word4` char(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `link1` char(255) NOT NULL DEFAULT '',
  `link2` char(255) NOT NULL DEFAULT '',
  `link3` char(255) NOT NULL,
  `link4` char(255) NOT NULL,
  `tags` char(30) NOT NULL,
  `groupid` varchar(20) NOT NULL DEFAULT '',
  `projid` varchar(20) NOT NULL DEFAULT '',
  `modno` int(3) NOT NULL DEFAULT '0',
  `setglobal` int(5) NOT NULL DEFAULT '0',
  `overflow` varchar(20) NOT NULL DEFAULT 'hidden',
  `bodyzone` varchar(10) NOT NULL DEFAULT 'content',
  `display` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16993 ;

--
-- 转存表中的数据 `dev_base_plus`
--

INSERT INTO `dev_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4072, 'news', 'modMemberNewsQuery', '会员文章检索', 'news', 'membernews', 'tpl_newsquery.htm', '-1', 'K001', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 383, 35, 0, 90, 10, 20, 'id', 'desc', 0, 30, '_self', 0, -1, -1, -1, 'fill', '会员文章', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4071, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'membernews', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 650, 30, 15, 234, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4070, 'advs', 'modLogo', '网站标志', 'news', 'membernews', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 308, 64, 21, 17, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4067, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'membernews', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 545, 39, 14, 34, 6, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4066, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'membernews', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 397, 52, 43, 415, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(10813, 'menu', 'modBottomMenu', '底部菜单（一级）', 'index', 'index', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 7, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4103, 'diy', 'modHeadPic', '头部自定义效果图', 'news', 'membernews', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 286, 129, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20090508/1241762139.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4107, 'diy', 'modHeadPic', '头部自定义效果图', 'product', 'memberproduct', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 286, 129, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20090508/1241762139.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4115, 'diy', 'modHeadPic', '头部自定义效果图', 'photo', 'memberphoto', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 286, 129, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20090508/1241762139.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5106, 'menu', 'modMainMenu', '一级导航菜单', 'photo', 'memberphoto', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 36, 105, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(10570, 'effect', 'modNowDate', '当前日期时间', 'member', 'productmodify', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(10571, 'effect', 'modNowDate', '当前日期时间', 'member', 'productcat', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6812, 'search', 'modSearchForm', '全站搜索表单', 'news', 'querytech', 'tpl_searchform_dolphin.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 221, 32, 47, 741, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '全站搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6811, 'diy', 'modPic', '图片/FLASH', 'news', 'querytech', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 898, 66, 12, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20091211/1260497184.gif', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 12, 0, 'hidden', 'bottom', 'block'),
(6388, 'news', 'modNewsClassTech', '技术一级分类', 'news', 'querytech', 'tpl_newsclasstech.htm', '-1', 'A779', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 201, 159, 10, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 78, -1, -1, -1, 'fill', '技术分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6381, 'diy', 'modColorZone', '空白色块', 'news', 'querytech', 'tpl_colorzone.htm', '-1', 'A778', '#e10000', 1, 'solid', '', 'click', 'none', '', '', '#e10000', '-1', 685, 50, 14, 215, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6807, 'effect', 'modSetHomePageCyrano', '设为首页加入收藏', 'news', 'querytech', 'tpl_sethomepage_cyrano.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 218, 38, 0, 663, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '设为首页加入收藏', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(9271, 'diy', 'modPic', '图片/FLASH', 'news', 'detailsrv', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 120, 6, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20091230/1262135985.gif', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 21, 0, 'hidden', 'bottom', 'block'),
(5098, 'menu', 'modMainMenu', '一级导航菜单', 'product', 'memberproduct', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 36, 105, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5094, 'menu', 'modMainMenu', '一级导航菜单', 'news', 'membernews', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 36, 105, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6809, 'diy', 'modPic', '图片/FLASH', 'news', 'querytech', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 46, 26, 23, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20091209/1260348247.gif', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 7, 0, 'hidden', 'bottom', 'block'),
(5122, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_main', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 36, 105, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6390, 'news', 'modNewsNavPathTech', '技术位置提示条', 'news', 'querytech', 'tpl_navpathtech.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 650, 30, 17, 235, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(9280, 'news', 'modNewsSearchForm', '文章搜索表单', 'news', 'detailsrv', 'tpl_news_search_dolphin.htm', '-1', 'A789', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 184, 144, 169, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '文章搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(9274, 'advs', 'modLogo', '网站标志', 'news', 'detailsrv', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 308, 64, 21, 17, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(9279, 'search', 'modSearchForm', '全站搜索表单', 'news', 'detailsrv', 'tpl_searchform_dolphin.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 221, 32, 47, 741, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '全站搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(10564, 'effect', 'modNowDate', '当前日期时间', 'news', 'querytech', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6389, 'news', 'modNewsQuery', '文章翻页检索', 'news', 'querytech', 'tpl_newsquery.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 676, 169, 71, 221, 13, 0, 20, 'id', 'desc', 0, 30, '_self', 0, -1, -1, -1, 'fill', '文章检索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(5511, 'diy', 'modHeadTraFlashCyrano', '自定义透明FLASH', 'news', 'membernews', 'tpl_headtraflash_cyrano.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 300, 141, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100107/1262833583.swf', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5515, 'diy', 'modHeadTraFlashCyrano', '自定义透明FLASH', 'product', 'memberproduct', 'tpl_headtraflash_cyrano.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 300, 141, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100107/1262833583.swf', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5523, 'diy', 'modHeadTraFlashCyrano', '自定义透明FLASH', 'photo', 'memberphoto', 'tpl_headtraflash_cyrano.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 300, 141, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100107/1262833583.swf', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5539, 'diy', 'modHeadTraFlashCyrano', '自定义透明FLASH', 'page', 'html_main', 'tpl_headtraflash_cyrano.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 300, 141, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100107/1262833583.swf', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6810, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'querytech', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 397, 52, 43, 415, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(9277, 'diy', 'modHeadTraFlashCyrano', '自定义透明FLASH', 'news', 'detailsrv', 'tpl_headtraflash_cyrano.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 300, 141, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100107/1262833583.swf', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(9276, 'menu', 'modMainMenu', '一级导航菜单', 'news', 'detailsrv', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 36, 105, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(10569, 'effect', 'modNowDate', '当前日期时间', 'member', 'productfabu', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6374, 'diy', 'modText', '多行文字', 'news', 'querytech', 'tpl_text.htm', '-1', 'A786', '#dddddd', 1, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 203, 226, 230, 4, 7, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '多行文字', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '地 址：北京市莫干山路2168号\r\n电 话：010-98765432\r\n联系人：杨军(经理)\r\n手 机：15887654321\r\n网址：www.aaaa.com\r\n邮 箱：bos@mail.com\r\n邮 编：300009', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(10568, 'effect', 'modNowDate', '当前日期时间', 'member', 'productgl', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(10567, 'effect', 'modNowDate', '当前日期时间', 'product', 'memberproduct', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6808, 'menu', 'modMainMenu', '一级导航菜单', 'news', 'querytech', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 36, 105, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6806, 'diy', 'modPic', '图片/FLASH', 'news', 'querytech', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 279, 113, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20091209/1260346089.gif', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 2, 0, 'hidden', 'top', 'block'),
(6805, 'diy', 'modPic', '图片/FLASH', 'news', 'querytech', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 300, 27, 0, 600, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20091209/1260345289.gif', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'top', 'block'),
(6804, 'diy', 'modHeadTraFlashCyrano', '自定义透明FLASH', 'news', 'querytech', 'tpl_headtraflash_cyrano.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 300, 141, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100107/1262833583.swf', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(8087, 'diy', 'modMailLogin', '企业邮箱登录接口', 'page', 'html_main', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(10562, 'effect', 'modNowDate', '当前日期时间', 'news', 'membernews', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(9281, 'news', 'modNewsContentSrv', '服务支持正文', 'news', 'detailsrv', 'tpl_newscontent_srv.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 707, 441, 63, 229, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '文章正文', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(9273, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'detailsrv', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 545, 39, 14, 34, 6, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(9270, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'detailsrv', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 397, 52, 43, 415, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6813, 'advs', 'modLogo', '网站标志', 'news', 'querytech', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 308, 64, 21, 17, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(8084, 'diy', 'modMailLogin', '企业邮箱登录接口', 'member', 'photocat', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(8082, 'diy', 'modMailLogin', '企业邮箱登录接口', 'member', 'photofabu', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(8083, 'diy', 'modMailLogin', '企业邮箱登录接口', 'member', 'photomodify', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(8081, 'diy', 'modMailLogin', '企业邮箱登录接口', 'member', 'photogl', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(8080, 'diy', 'modMailLogin', '企业邮箱登录接口', 'photo', 'memberphoto', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16908, 'photo', 'modPhotoClass', '图片分类（列表）', 'photo', 'detail', 'tpl_photoclass_dolphin.htm', '-1', 'A785', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 163, 15, 55, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(8076, 'diy', 'modMailLogin', '企业邮箱登录接口', 'member', 'productcat', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(8075, 'diy', 'modMailLogin', '企业邮箱登录接口', 'member', 'productmodify', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(8074, 'diy', 'modMailLogin', '企业邮箱登录接口', 'member', 'productfabu', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(8073, 'diy', 'modMailLogin', '企业邮箱登录接口', 'member', 'productgl', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(8072, 'diy', 'modMailLogin', '企业邮箱登录接口', 'product', 'memberproduct', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(8069, 'diy', 'modMailLogin', '企业邮箱登录接口', 'news', 'querytech', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(8067, 'diy', 'modMailLogin', '企业邮箱登录接口', 'news', 'membernews', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(10806, 'advs', 'modLogo', '网站标志', 'index', 'index', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(10807, 'diy', 'modButtomInfo', '底部信息编辑区', 'index', 'index', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(8060, 'diy', 'modMailLogin', '企业邮箱登录接口', 'member', 'newscat', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(8057, 'diy', 'modMailLogin', '企业邮箱登录接口', 'member', 'newsmodify', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(8055, 'diy', 'modMailLogin', '企业邮箱登录接口', 'member', 'newsfabu', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(8056, 'diy', 'modMailLogin', '企业邮箱登录接口', 'member', 'newsgl', 'tpl_mail_login.htm', '-1', 'A778', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 189, 183, 22, 22, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '企业邮箱登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '企业邮局后缀', '表单用户名名称', '表单密码名称', '表单邮局后缀名称', '-1', '-1', '-1', '-1', 'http://企业邮局登录提交地址/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(10556, 'effect', 'modNowDate', '当前日期时间', 'member', 'newscat', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(16890, 'photo', 'modPhotoClass', '图片分类（列表）', 'photo', 'query', 'tpl_photoclass_dolphin.htm', '-1', 'A785', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 200, 15, 55, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16889, 'photo', 'modPhotoQuery', '图片检索搜索', 'photo', 'query', 'tpl_photo_query.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 612, 364, 82, 326, 8, 0, 20, 'id', 'desc', 0, 30, '_self', 0, -1, 150, 110, 'auto', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(9283, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'news', 'detailsrv', 'tpl_page_menu_dolphin.htm', '-1', 'A792', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 184, 300, 20, 0, 11, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '内容标题菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '14', '', 1, 0, 'visible', 'content', 'block'),
(9275, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'detailsrv', 'tpl_navpath.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 739, 37, 19, 211, 8, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(10552, 'effect', 'modNowDate', '当前日期时间', 'member', 'newsfabu', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(10553, 'effect', 'modNowDate', '当前日期时间', 'member', 'newsgl', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(10554, 'effect', 'modNowDate', '当前日期时间', 'member', 'newsmodify', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(16940, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'main', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16939, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'news', 'main', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16936, 'menu', 'modMainMenu', '一级导航菜单', 'news', 'main', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16937, 'advs', 'modLogo', '网站标志', 'news', 'main', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16938, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(9155, 'page', 'modPageTitleMenu', '网页标题(菜单)', '', '', 'tpl_page_menu_dolphin.htm', '-1', 'A784', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 184, 281, 20, 0, 8, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '内容标题菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(9154, 'search', 'modSearchForm', '全站搜索表单', '', '', 'tpl_searchform_dolphin.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 221, 32, 47, 741, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '全站搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(9152, 'diy', 'modHeadTraFlashCyrano', '自定义透明FLASH', '', '', 'tpl_headtraflash_cyrano.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 300, 141, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100107/1262833583.swf', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(9151, 'menu', 'modMainMenu', '一级导航菜单', '', '', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 36, 105, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(9149, 'diy', 'modPic', '图片/FLASH', '', '', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 120, 6, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20091230/1262135985.gif', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 21, 0, 'hidden', 'bottom', 'block'),
(9148, 'advs', 'modLogo', '网站标志', '', '', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 308, 64, 21, 17, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(9147, 'diy', 'modButtomInfo', '底部信息编辑区', '', '', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 397, 52, 43, 415, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(9146, 'diy', 'modPic', '图片/FLASH', '', '', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 184, 74, 311, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20091230/1262154654.gif', '{#RP#}page/contact/contact.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 22, 0, 'hidden', 'content', 'block'),
(9145, 'menu', 'modBottomMenu', '底部菜单（一级）', '', '', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 545, 39, 14, 34, 6, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16921, 'news', 'modNewsClass', '文章一级分类', 'news', 'query', 'tpl_newsclass_dolphin.htm', '-1', 'A784', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 200, 15, 55, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16926, 'menu', 'modMainMenu', '一级导航菜单', 'news', 'detail', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16927, 'advs', 'modLogo', '网站标志', 'news', 'detail', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16928, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16929, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'news', 'detail', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16930, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'detail', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16762, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'join_condition', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 239, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '28', '', 1, 0, 'visible', 'content', 'block'),
(16761, 'page', 'modPageContent', '网页内容详情', 'page', 'join_condition', 'tpl_page_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 370, 82, 326, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16757, 'advs', 'modLogo', '网站标志', 'page', 'join_condition', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16758, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'join_condition', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16759, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'join_condition', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16760, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'join_condition', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(10994, 'menu', 'modMainMenu', '一级导航菜单', 'index', 'index', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16867, 'job', 'modJobForm', '应聘申请表单', 'job', 'detail', 'tpl_job_form.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'block', '#f5f5f5', '', '', '-1', 597, 867, 523, 326, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '应聘申请', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block');
INSERT INTO `dev_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(16865, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'job', 'detail', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(10575, 'effect', 'modNowDate', '当前日期时间', 'photo', 'memberphoto', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(10576, 'effect', 'modNowDate', '当前日期时间', 'member', 'photogl', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(10577, 'effect', 'modNowDate', '当前日期时间', 'member', 'photofabu', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(10578, 'effect', 'modNowDate', '当前日期时间', 'member', 'photomodify', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(10579, 'effect', 'modNowDate', '当前日期时间', 'member', 'photocat', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(10581, 'effect', 'modNowDate', '当前日期时间', 'page', 'html_main', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(16237, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_company', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 268, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(10591, 'effect', 'modNowDate', '当前日期时间', 'news', 'detailsrv', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 21, 93, 19, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前日期时间', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(16817, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'service_contact', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 268, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '30', '', 1, 0, 'visible', 'content', 'block'),
(16978, 'menu', 'modBottomMenu', '底部菜单（一级）', 'feedback', 'main', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16980, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'feedback', 'main', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 254, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(16696, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_culture', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16735, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_culture', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16698, 'diy', 'modPic', '图片/FLASH', 'page', 'html_culture', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16689, 'diy', 'modPic', '图片/FLASH', 'page', 'html_honor', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16950, 'product', 'modProductClass', '产品分类（列表）', 'product', 'query', 'tpl_productclass_dolphin.htm', '-1', 'A780', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 233, 15, 55, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16753, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'join_notice', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 239, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '28', '', 1, 0, 'visible', 'content', 'block'),
(16752, 'page', 'modPageContent', '网页内容详情', 'page', 'join_notice', 'tpl_page_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 370, 82, 326, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16816, 'page', 'modPageContent', '网页内容详情', 'page', 'service_contact', 'tpl_page_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 302, 82, 326, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16827, 'feedback', 'modFeedBackSmallForm', '全站留言表单', 'page', 'service_feedback', 'tpl_feedback_smallform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 500, 82, 326, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(16790, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'join_display', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16907, 'photo', 'modPhotoNavPath', '当前位置提示条', 'photo', 'detail', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16906, 'menu', 'modBottomMenu', '底部菜单（一级）', 'photo', 'detail', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16935, 'diy', 'modPic', '图片/FLASH', 'news', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16934, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'main', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16961, 'product', 'modProductClass', '产品分类（列表）', 'product', 'main', 'tpl_productclass_dolphin.htm', '-1', 'A780', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 241, 15, 55, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16960, 'product', 'modProductQuery', '产品检索搜索', 'product', 'main', 'tpl_product_query_dolphin.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 630, 974, 82, 316, 8, 0, 20, 'id', 'desc', 0, 30, '_self', 0, 30, 180, 135, 'auto', '产品检索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16959, 'menu', 'modBottomMenu', '底部菜单（一级）', 'product', 'main', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16920, 'news', 'modNewsQuery', '文章翻页检索', 'news', 'query', 'tpl_newsquery.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 600, 450, 82, 320, 8, 0, 10, 'id', 'desc', 0, 30, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16916, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'query', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16919, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'query', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16911, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'news', 'query', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16912, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'query', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16913, 'advs', 'modLogo', '网站标志', 'news', 'query', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16914, 'menu', 'modMainMenu', '一级导航菜单', 'news', 'query', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16726, 'diy', 'modPic', '图片/FLASH', 'page', 'html', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16888, 'photo', 'modPhotoNavPath', '当前位置提示条', 'photo', 'query', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16885, 'menu', 'modBottomMenu', '底部菜单（一级）', 'photo', 'query', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16733, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'html_culture', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16687, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_honor', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16731, 'advs', 'modLogo', '网站标志', 'page', 'html_honor', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16732, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_honor', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16730, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'html_honor', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16708, 'diy', 'modPic', '图片/FLASH', 'page', 'html_ethic', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16706, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_ethic', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16737, 'advs', 'modLogo', '网站标志', 'page', 'html_ethic', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16738, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_ethic', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16736, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'html_ethic', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16771, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'join_method', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 239, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '28', '', 1, 0, 'visible', 'content', 'block'),
(16770, 'page', 'modPageContent', '网页内容详情', 'page', 'join_method', 'tpl_page_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 678, 82, 326, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16766, 'advs', 'modLogo', '网站标志', 'page', 'join_method', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16767, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'join_method', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16768, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'join_method', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16769, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'join_method', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16717, 'diy', 'modPic', '图片/FLASH', 'page', 'html_sale', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16715, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_sale', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16740, 'advs', 'modLogo', '网站标志', 'page', 'html_sale', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16741, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_sale', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16739, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'html_sale', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16724, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16743, 'advs', 'modLogo', '网站标志', 'page', 'html', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16744, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16951, 'product', 'modProductQuery', '产品检索搜索', 'product', 'query', 'tpl_product_query_dolphin.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 631, 802, 82, 316, 8, 0, 12, 'id', 'desc', 0, 30, '_self', 0, 30, 180, 135, 'auto', '产品检索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16947, 'menu', 'modBottomMenu', '底部菜单（一级）', 'product', 'query', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16952, 'product', 'modProductNavPath', '当前位置提示条', 'product', 'query', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16945, 'menu', 'modMainMenu', '一级导航菜单', 'product', 'query', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16944, 'advs', 'modLogo', '网站标志', 'product', 'query', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16943, 'diy', 'modButtomInfo', '底部信息编辑区', 'product', 'query', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16942, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'product', 'query', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16925, 'diy', 'modPic', '图片/FLASH', 'news', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16958, 'product', 'modProductNavPath', '当前位置提示条', 'product', 'main', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16957, 'menu', 'modMainMenu', '一级导航菜单', 'product', 'main', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16751, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'join_notice', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16750, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'join_notice', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16749, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'join_notice', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16748, 'advs', 'modLogo', '网站标志', 'page', 'join_notice', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16971, 'product', 'modProductContent', '产品详情', 'product', 'detail', 'tpl_product_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 606, 374, 82, 316, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '产品详情', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16970, 'product', 'modProductClass', '产品分类（列表）', 'product', 'detail', 'tpl_productclass_dolphin.htm', '-1', 'A780', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 241, 15, 55, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16968, 'menu', 'modBottomMenu', '底部菜单（一级）', 'product', 'detail', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16967, 'product', 'modProductNavPath', '当前位置提示条', 'product', 'detail', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16964, 'advs', 'modLogo', '网站标志', 'product', 'detail', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16965, 'diy', 'modButtomInfo', '底部信息编辑区', 'product', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16966, 'menu', 'modMainMenu', '一级导航菜单', 'product', 'detail', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16845, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'join', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 268, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '28', '', 1, 0, 'visible', 'content', 'block'),
(16842, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'join', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16843, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'join', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16844, 'page', 'modPageContent', '网页内容详情', 'page', 'join', 'tpl_page_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 370, 82, 326, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16864, 'diy', 'modPic', '图片/FLASH', 'job', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16815, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'service_contact', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16814, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'service_contact', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16813, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'service_contact', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16826, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'service_feedback', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 268, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '30', '', 1, 0, 'visible', 'content', 'block'),
(16742, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'html', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16673, 'diy', 'modEdit', 'HTML编辑区', 'index', 'index', 'tpl_edit.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', 'http://', 282, 188, 170, 359, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="PADDING-LEFT: 70px; PADDING-RIGHT: 25px; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; COLOR: #4b4b4b; PADDING-TOP: 18px"><span style="LINE-HEIGHT: 24px; COLOR: #2e2c2d; FONT-WEIGHT: bold">厨房电器系列<br /></span><span style="LINE-HEIGHT: 23px">本公司专业生产整体橱柜系列，包括整体厨房、衣柜、储物柜，集成吊顶，厨房电器，厨房设备，整体卫浴系列，诚招各地代理...</span><br /><a href="[ROOTPATH]product/class/?116.html"><span style="TEXT-ALIGN: left; LINE-HEIGHT: 40px; PADDING-LEFT: 0px; COLOR: #675c56">点这里查看详情 &gt;&gt;</span></a></div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16991, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 284, 356, 0, 358, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20130105/1357389877.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'content', 'block'),
(16899, 'photo', 'modPhotoClass', '图片分类（列表）', 'photo', 'main', 'tpl_photoclass_dolphin.htm', '-1', 'A785', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 200, 15, 55, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16898, 'photo', 'modPhotoNavPath', '当前位置提示条', 'photo', 'main', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16897, 'menu', 'modBottomMenu', '底部菜单（一级）', 'photo', 'main', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16734, 'advs', 'modLogo', '网站标志', 'page', 'html_culture', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16905, 'menu', 'modMainMenu', '一级导航菜单', 'photo', 'detail', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16904, 'advs', 'modLogo', '网站标志', 'photo', 'detail', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16896, 'menu', 'modMainMenu', '一级导航菜单', 'photo', 'main', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16721, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16910, 'diy', 'modPic', '图片/FLASH', 'news', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16955, 'advs', 'modLogo', '网站标志', 'product', 'main', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16956, 'diy', 'modButtomInfo', '底部信息编辑区', 'product', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(12740, 'news', 'modNewsClassKnow', '家具知识一级分类', 'news', 'queryknow', 'tpl_newsclass_know.htm', '-1', 'A782', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 114, 13, 13, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 99, -1, -1, -1, 'fill', '家具知识分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block');
INSERT INTO `dev_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(12741, 'diy', 'modPic', '图片/FLASH', 'news', 'queryknow', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 93, 11, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20100125/1264381342.gif', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 3, 0, 'hidden', 'top', 'block'),
(12742, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'queryknow', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 545, 39, 14, 34, 6, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(12743, 'news', 'modNewsSearchForm', '文章搜索表单', 'news', 'queryknow', 'tpl_news_search_dolphin.htm', '-1', 'A784', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 193, 127, 137, 13, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '文章搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(12744, 'search', 'modSearchForm', '全站搜索表单', 'news', 'queryknow', 'tpl_searchform_simple.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 301, 33, 52, 630, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '全站搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(12745, 'diy', 'modPic', '图片/FLASH', 'news', 'queryknow', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 257, 42, 26, 152, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20100112/1263264566.gif', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 2, 0, 'hidden', 'bottom', 'block'),
(12746, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'queryknow', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 730, 45, 0, 220, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(12747, 'diy', 'modHeadTraFlashCyrano', '自定义透明FLASH', 'news', 'queryknow', 'tpl_headtraflash_cyrano.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 300, 140, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100107/1262833583.swf', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(12748, 'menu', 'modMainMenu', '一级导航菜单', 'news', 'queryknow', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 36, 104, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(12749, 'diy', 'modPic', '图片/FLASH', 'news', 'queryknow', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 88, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20100111/1263176662.gif', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(12750, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'queryknow', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 397, 52, 43, 415, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(12751, 'advs', 'modLogo', '网站标志', 'news', 'queryknow', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 293, 55, 41, 30, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(12897, 'news', 'modNewsQueryKnow', '家具知识翻页检索', 'news', 'queryknow', 'tpl_newsquery_know.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 673, 500, 67, 251, 90, 0, 20, 'id', 'desc', 0, 30, '_self', 0, -1, -1, -1, 'fill', '家具知识检索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(12753, 'news', 'modNewsClassKnow', '家具知识一级分类', 'news', 'detailknow', 'tpl_newsclass_know.htm', '-1', 'A782', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 114, 13, 13, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 99, -1, -1, -1, 'fill', '家具知识分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(12754, 'diy', 'modPic', '图片/FLASH', 'news', 'detailknow', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 93, 11, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20100125/1264381342.gif', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 3, 0, 'hidden', 'top', 'block'),
(12755, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'detailknow', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 545, 39, 14, 34, 6, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(12756, 'news', 'modNewsSearchForm', '文章搜索表单', 'news', 'detailknow', 'tpl_news_search_dolphin.htm', '-1', 'A784', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 193, 127, 137, 13, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '文章搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(12757, 'search', 'modSearchForm', '全站搜索表单', 'news', 'detailknow', 'tpl_searchform_simple.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 301, 33, 52, 630, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '全站搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(12758, 'diy', 'modPic', '图片/FLASH', 'news', 'detailknow', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 257, 42, 26, 152, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20100112/1263264566.gif', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 2, 0, 'hidden', 'bottom', 'block'),
(12759, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'detailknow', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 730, 45, 0, 220, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(12760, 'diy', 'modHeadTraFlashCyrano', '自定义透明FLASH', 'news', 'detailknow', 'tpl_headtraflash_cyrano.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 300, 140, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100107/1262833583.swf', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(12761, 'menu', 'modMainMenu', '一级导航菜单', 'news', 'detailknow', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 36, 104, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(12762, 'diy', 'modPic', '图片/FLASH', 'news', 'detailknow', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 88, 0, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20100111/1263176662.gif', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(12763, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'detailknow', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 397, 52, 43, 415, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(12764, 'advs', 'modLogo', '网站标志', 'news', 'detailknow', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 293, 55, 41, 30, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(12766, 'news', 'modNewsContentKnow', '家具知识正文', 'news', 'detailknow', 'tpl_newscontent_know.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 673, 300, 67, 251, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '文章正文', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16781, 'feedback', 'modFeedBackSmallForm', '全站留言表单', 'page', 'join_application', 'tpl_feedback_smallform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 557, 82, 326, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '18', '', 1, 0, 'visible', 'content', 'block'),
(16780, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'join_application', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 268, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '28', '', 1, 0, 'visible', 'content', 'block'),
(16778, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'join_application', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16777, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'join_application', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16789, 'photo', 'modPhotoGlobalQuery', '全站翻页图片列表', 'page', 'join_display', 'tpl_photo_query.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 609, 364, 82, 326, 9, 0, 10, 'id', 'desc', 0, 12, '_self', 9, -1, 150, 110, 'auto', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'visible', 'content', 'block'),
(16788, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'join_display', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 268, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '28', '', 1, 0, 'visible', 'content', 'block'),
(16670, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'index', 'index', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 4, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16787, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'join_display', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16786, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'join_display', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16785, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'join_display', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16784, 'advs', 'modLogo', '网站标志', 'page', 'join_display', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16783, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'join_display', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16872, 'menu', 'modMainMenu', '一级导航菜单', 'advs', 'link', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16878, 'advs', 'modLinkNavPath', '当前位置提示条', 'advs', 'link', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16874, 'menu', 'modBottomMenu', '底部菜单（一级）', 'advs', 'link', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16877, 'advs', 'modLinkPic', '图片友情链接', 'advs', 'link', 'tpl_linkpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '{#RP#}advs/link/', 597, 41, 82, 326, 8, 0, 6, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '友情链接', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(16876, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'advs', 'link', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 268, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(16863, 'advs', 'modLogo', '网站标志', 'job', 'detail', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16862, 'diy', 'modButtomInfo', '底部信息编辑区', 'job', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16866, 'job', 'modJobContent', '职位信息详情', 'job', 'detail', 'tpl_jobcontent.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 431, 82, 326, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16860, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'job', 'detail', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 268, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(16861, 'menu', 'modMainMenu', '一级导航菜单', 'job', 'detail', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16858, 'menu', 'modBottomMenu', '底部菜单（一级）', 'job', 'detail', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16856, 'job', 'modJobNavPath', '当前位置提示条', 'job', 'main', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16852, 'menu', 'modBottomMenu', '底部菜单（一级）', 'job', 'main', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16855, 'job', 'modJobQuery', '职位翻页检索', 'job', 'main', 'tpl_jobquery.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 341, 82, 326, 8, 0, 10, 'id', 'desc', 0, 30, '_self', 0, 100, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16854, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'job', 'main', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 268, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(16812, 'advs', 'modLogo', '网站标志', 'page', 'service_contact', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16823, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'service_feedback', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16824, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'service_feedback', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16909, 'photo', 'modPhotoContent', '图片详情', 'photo', 'detail', 'tpl_photo_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 304, 82, 326, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16903, 'diy', 'modButtomInfo', '底部信息编辑区', 'photo', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16871, 'advs', 'modLogo', '网站标志', 'advs', 'link', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16900, 'diy', 'modPic', '图片/FLASH', 'photo', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16901, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'photo', 'detail', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16895, 'advs', 'modLogo', '网站标志', 'photo', 'main', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16894, 'diy', 'modButtomInfo', '底部信息编辑区', 'photo', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16893, 'photo', 'modPhotoQuery', '图片检索搜索', 'photo', 'main', 'tpl_photo_query.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 612, 364, 82, 326, 8, 0, 20, 'id', 'desc', 0, 30, '_self', 0, -1, 150, 110, 'auto', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16883, 'menu', 'modMainMenu', '一级导航菜单', 'photo', 'query', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16882, 'advs', 'modLogo', '网站标志', 'photo', 'query', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(14095, 'diy', 'modEdit', 'HTML编辑区', 'index', 'index', 'tpl_edit.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', 'http://', 282, 163, 168, 41, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '\r\n<div style="PADDING-LEFT: 70px; PADDING-RIGHT: 25px; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; COLOR: #4b4b4b; PADDING-TOP: 18px"><span style="LINE-HEIGHT: 24px; COLOR: #2e2c2d; FONT-WEIGHT: bold">整体橱柜系列<br /></span><span style="LINE-HEIGHT: 23px">本公司专业生产整体橱柜系列，包括整体厨房、衣柜、储物柜，集成吊顶，厨房电器，厨房设备，整体卫浴系列，诚招各地代理...</span><br /><a href="[ROOTPATH]product/class/?115.html"><span style="TEXT-ALIGN: left; LINE-HEIGHT: 40px; PADDING-LEFT: 0px; COLOR: #675c56">点这里查看详情 &gt;&gt;</span></a></div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16221, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16239, 'page', 'modPageContent', '网页内容详情', 'page', 'html_company', 'tpl_page_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 392, 82, 326, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16776, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'join_application', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16684, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_honor', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16681, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_honor', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 268, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(16699, 'photo', 'modPhotoGlobalQuery', '全站翻页图片列表', 'page', 'html_honor', 'tpl_photo_query.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 609, 364, 82, 326, 9, 0, 10, 'id', 'desc', 0, 12, '_self', 8, -1, 150, 110, 'auto', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'visible', 'content', 'block'),
(16683, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_honor', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16881, 'diy', 'modButtomInfo', '底部信息编辑区', 'photo', 'query', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16880, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'photo', 'query', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16879, 'diy', 'modPic', '图片/FLASH', 'photo', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16892, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'photo', 'main', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16931, 'news', 'modNewsContent', '文章正文', 'news', 'detail', 'tpl_newscontent.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 600, 505, 82, 320, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16924, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'detail', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16933, 'news', 'modNewsQuery', '文章翻页检索', 'news', 'main', 'tpl_newsquery.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 600, 450, 82, 320, 8, 0, 10, 'id', 'desc', 0, 30, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16932, 'news', 'modNewsClass', '文章一级分类', 'news', 'main', 'tpl_newsclass_dolphin.htm', '-1', 'A784', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 200, 15, 55, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16941, 'diy', 'modPic', '图片/FLASH', 'product', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16963, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'product', 'detail', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16962, 'diy', 'modPic', '图片/FLASH', 'product', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16954, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'product', 'main', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16953, 'diy', 'modPic', '图片/FLASH', 'product', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16745, 'diy', 'modPic', '图片/FLASH', 'page', 'join_notice', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16746, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'join_notice', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16747, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'join_notice', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16754, 'diy', 'modPic', '图片/FLASH', 'page', 'join_condition', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16755, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'join_condition', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16756, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'join_condition', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16763, 'diy', 'modPic', '图片/FLASH', 'page', 'join_method', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16764, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'join_method', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16765, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'join_method', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16775, 'advs', 'modLogo', '网站标志', 'page', 'join_application', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16773, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'join_application', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16774, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'join_application', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16782, 'diy', 'modPic', '图片/FLASH', 'page', 'join_display', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16809, 'diy', 'modPic', '图片/FLASH', 'page', 'service_contact', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16810, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'service_contact', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16811, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'service_contact', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16821, 'advs', 'modLogo', '网站标志', 'page', 'service_feedback', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16822, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'service_feedback', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16989, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'search', 'search', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 254, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(16987, 'menu', 'modBottomMenu', '底部菜单（一级）', 'search', 'search', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block');
INSERT INTO `dev_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(16985, 'menu', 'modMainMenu', '一级导航菜单', 'search', 'search', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16718, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 254, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(16719, 'page', 'modPageContent', '网页内容详情', 'page', 'html', 'tpl_page_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 392, 82, 326, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16720, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16693, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_culture', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16690, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_culture', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 254, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(16691, 'page', 'modPageContent', '网页内容详情', 'page', 'html_culture', 'tpl_page_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 360, 82, 326, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16692, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_culture', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16703, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_ethic', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16700, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_ethic', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 254, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(16701, 'page', 'modPageContent', '网页内容详情', 'page', 'html_ethic', 'tpl_page_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 360, 82, 326, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16702, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_ethic', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16712, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_sale', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16709, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_sale', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 254, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(16710, 'page', 'modPageContent', '网页内容详情', 'page', 'html_sale', 'tpl_page_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 538, 82, 326, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16711, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_sale', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16841, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'join', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16837, 'diy', 'modPic', '图片/FLASH', 'page', 'join', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16838, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'join', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16839, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'join', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16840, 'advs', 'modLogo', '网站标志', 'page', 'join', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16857, 'job', 'modJobNavPath', '当前位置提示条', 'job', 'detail', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16850, 'menu', 'modMainMenu', '一级导航菜单', 'job', 'main', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16848, 'diy', 'modButtomInfo', '底部信息编辑区', 'job', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16849, 'advs', 'modLogo', '网站标志', 'job', 'main', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16846, 'diy', 'modPic', '图片/FLASH', 'job', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16847, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'job', 'main', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16799, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'service_service', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 268, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '30', '', 1, 0, 'visible', 'content', 'block'),
(16798, 'page', 'modPageContent', '网页内容详情', 'page', 'service_service', 'tpl_page_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 150, 82, 326, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16797, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'service_service', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16796, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'service_service', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16795, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'service_service', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16794, 'advs', 'modLogo', '网站标志', 'page', 'service_service', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16791, 'diy', 'modPic', '图片/FLASH', 'page', 'service_service', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16792, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'service_service', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16793, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'service_service', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16800, 'diy', 'modPic', '图片/FLASH', 'page', 'service_policy', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16801, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'service_policy', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16802, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'service_policy', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16803, 'advs', 'modLogo', '网站标志', 'page', 'service_policy', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16804, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'service_policy', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16805, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'service_policy', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16806, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'service_policy', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16807, 'page', 'modPageContent', '网页内容详情', 'page', 'service_policy', 'tpl_page_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 150, 82, 326, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16808, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'service_policy', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 268, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '30', '', 1, 0, 'visible', 'content', 'block'),
(16836, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'service', 'tpl_page_menu_dolphin.htm', '-1', 'A785', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 268, 15, 55, 7, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '30', '', 1, 0, 'visible', 'content', 'block'),
(16835, 'page', 'modPageContent', '网页内容详情', 'page', 'service', 'tpl_page_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 597, 260, 82, 326, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16834, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'service', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16833, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'service', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16832, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'service', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16831, 'advs', 'modLogo', '网站标志', 'page', 'service', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16828, 'diy', 'modPic', '图片/FLASH', 'page', 'service', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16829, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'service', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16830, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'service', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16819, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'service_feedback', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16820, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'service_feedback', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16869, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'advs', 'link', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16870, 'diy', 'modButtomInfo', '底部信息编辑区', 'advs', 'link', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16984, 'advs', 'modLogo', '网站标志', 'search', 'search', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16975, 'advs', 'modLogo', '网站标志', 'feedback', 'main', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16976, 'menu', 'modMainMenu', '一级导航菜单', 'feedback', 'main', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16891, 'diy', 'modPic', '图片/FLASH', 'photo', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16238, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_company', 'tpl_navpath.htm', '-1', 'A788', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 609, 40, 22, 316, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16680, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_company', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 4, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(16728, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_company', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16729, 'advs', 'modLogo', '网站标志', 'page', 'html_company', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16677, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_company', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16727, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'page', 'html_company', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16675, 'diy', 'modPic', '图片/FLASH', 'page', 'html_company', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16868, 'diy', 'modPic', '图片/FLASH', 'advs', 'link', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16982, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'search', 'search', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16983, 'diy', 'modButtomInfo', '底部信息编辑区', 'search', 'search', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16981, 'diy', 'modPic', '图片/FLASH', 'search', 'search', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16922, 'news', 'modNewsClass', '文章一级分类', 'news', 'detail', 'tpl_newsclass_dolphin.htm', '-1', 'A784', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 198, 15, 55, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(16974, 'diy', 'modButtomInfo', '底部信息编辑区', 'feedback', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司 <a href="http://www.ymjd.cn" target=_blank>源码基地</a> 提供</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(16772, 'diy', 'modPic', '图片/FLASH', 'page', 'join_application', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16818, 'diy', 'modPic', '图片/FLASH', 'page', 'service_feedback', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16973, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'feedback', 'main', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(16972, 'diy', 'modPic', '图片/FLASH', 'feedback', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(16674, 'diy', 'modEdit', 'HTML编辑区', 'index', 'index', 'tpl_edit.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', 'http://', 283, 180, 169, 678, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="PADDING-LEFT: 70px; PADDING-RIGHT: 25px; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; COLOR: #4b4b4b; PADDING-TOP: 18px"><span style="LINE-HEIGHT: 24px; COLOR: #2e2c2d; FONT-WEIGHT: bold">卫浴系列<br /></span><span style="LINE-HEIGHT: 23px">本公司专业生产整体橱柜系列，包括整体厨房、衣柜、储物柜，集成吊顶，厨房电器，厨房设备，整体卫浴系列，诚招各地代理...</span><br /><a href="[ROOTPATH]product/class/?74.html"><span style="TEXT-ALIGN: left; LINE-HEIGHT: 40px; PADDING-LEFT: 0px; COLOR: #675c56">点这里查看详情 &gt;&gt;</span></a></div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(16992, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 284, 356, 0, 677, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20130105/1357389964.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 7, 0, 'hidden', 'content', 'block'),
(16990, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 284, 356, 0, 40, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20130105/1357389748.jpg', '#', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 5, 0, 'hidden', 'content', 'block');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_plusdefault`
--

CREATE TABLE IF NOT EXISTS `dev_base_plusdefault` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) DEFAULT '0',
  `plusname` char(100) NOT NULL DEFAULT '',
  `plustype` varchar(50) DEFAULT '0',
  `pluslocat` varchar(50) DEFAULT '0',
  `tempname` varchar(100) NOT NULL DEFAULT '0',
  `tempcolor` varchar(2) NOT NULL DEFAULT '-1',
  `showborder` char(20) NOT NULL DEFAULT '1000',
  `bordercolor` varchar(7) NOT NULL DEFAULT '#4682b4',
  `borderwidth` int(2) NOT NULL DEFAULT '1',
  `borderstyle` varchar(10) NOT NULL DEFAULT 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL DEFAULT 'none',
  `barbg` varchar(10) NOT NULL DEFAULT '#4682b4',
  `barcolor` varchar(10) NOT NULL DEFAULT '#fff',
  `backgroundcolor` varchar(7) NOT NULL DEFAULT '#fff',
  `morelink` varchar(100) NOT NULL DEFAULT 'http://',
  `width` int(5) NOT NULL DEFAULT '100',
  `height` int(5) NOT NULL DEFAULT '100',
  `top` int(5) NOT NULL DEFAULT '0',
  `left` int(5) NOT NULL DEFAULT '0',
  `zindex` int(2) NOT NULL DEFAULT '99',
  `padding` int(11) NOT NULL DEFAULT '0',
  `shownums` int(10) NOT NULL DEFAULT '-1',
  `ord` varchar(100) NOT NULL DEFAULT '-1',
  `sc` varchar(10) NOT NULL DEFAULT '-1',
  `showtj` int(5) NOT NULL DEFAULT '-1',
  `cutword` int(20) NOT NULL DEFAULT '-1',
  `target` varchar(30) NOT NULL DEFAULT '-1',
  `catid` int(10) NOT NULL DEFAULT '-1',
  `cutbody` int(5) NOT NULL DEFAULT '-1',
  `picw` int(3) NOT NULL DEFAULT '-1',
  `pich` int(3) NOT NULL DEFAULT '-1',
  `fittype` varchar(10) NOT NULL DEFAULT '-1',
  `title` varchar(100) NOT NULL DEFAULT '',
  `body` text,
  `pic` varchar(255) NOT NULL DEFAULT '-1',
  `piclink` char(255) NOT NULL DEFAULT '-1',
  `attach` varchar(255) NOT NULL DEFAULT '-1',
  `movi` varchar(255) NOT NULL DEFAULT '-1',
  `sourceurl` varchar(20) NOT NULL DEFAULT '-1',
  `word` varchar(255) NOT NULL DEFAULT '-1',
  `word1` varchar(255) NOT NULL DEFAULT '-1',
  `word2` varchar(255) NOT NULL DEFAULT '-1',
  `word3` char(255) NOT NULL DEFAULT '-1',
  `word4` char(255) NOT NULL DEFAULT '-1',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL DEFAULT '-1',
  `link1` char(255) NOT NULL DEFAULT '-1',
  `link2` char(255) NOT NULL DEFAULT '-1',
  `link3` char(255) NOT NULL DEFAULT '-1',
  `link4` char(255) NOT NULL DEFAULT '-1',
  `tags` varchar(30) NOT NULL DEFAULT '-1',
  `groupid` varchar(20) NOT NULL DEFAULT '-1',
  `projid` varchar(20) NOT NULL DEFAULT '-1',
  `moveable` int(1) NOT NULL DEFAULT '1',
  `classtbl` varchar(30) NOT NULL DEFAULT '',
  `grouptbl` varchar(50) NOT NULL,
  `projtbl` varchar(50) NOT NULL,
  `setglobal` int(5) NOT NULL DEFAULT '-1',
  `overflow` varchar(20) NOT NULL DEFAULT 'hidden',
  `bodyzone` varchar(10) NOT NULL DEFAULT 'content',
  `display` varchar(10) NOT NULL DEFAULT 'block',
  `ifmul` int(1) NOT NULL DEFAULT '1',
  `ifrefresh` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=428 ;

--
-- 转存表中的数据 `dev_base_plusdefault`
--

INSERT INTO `dev_base_plusdefault` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `moveable`, `classtbl`, `grouptbl`, `projtbl`, `setglobal`, `overflow`, `bodyzone`, `display`, `ifmul`, `ifrefresh`) VALUES
(17, 'advs', 'modLogo', '网站标志', 'all', 'all', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 150, 60, 20, 20, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '网站标志', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_logo', '', 1, 'hidden', 'top', 'block', 0, 0),
(25, 'advs', 'modLinkPic', '图片友情链接', 'all', 'all', 'tpl_linkpic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 650, 100, 0, 0, 90, 10, 6, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '友情链接', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_linkgroup', '', -1, 'hidden', 'content', 'block', 1, 0),
(26, 'advs', 'modLinkText', '文字友情链接', 'all', 'all', 'tpl_link.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 650, 100, 0, 0, 90, 10, 12, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '友情链接', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_linkgroup', '', -1, 'hidden', 'content', 'block', 1, 0),
(31, 'advs', 'modAdvsLb', '图片轮播广告', 'all', 'all', 'tpl_advslb.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 320, 280, 200, 200, 90, 0, 5, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '轮播广告', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_lbgroup', '', -1, 'hidden', 'content', 'block', 0, 1),
(32, 'advs', 'modAdvsPic', '页内图片广告', 'all', 'all', 'tpl_advspic.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 565, 95, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_pic', '', -1, 'hidden', 'content', 'block', 1, 0),
(34, 'advs', 'modAdvsText', '文字广告（静态）', 'all', 'all', 'tpl_advstext.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 30, 200, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_text', '', -1, 'hidden', 'content', 'block', 1, 0),
(35, 'advs', 'modAdvsMovi', 'FLASH视频广告', 'all', 'all', 'tpl_movi.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 300, 200, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '视频播放', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_movi', '', -1, 'hidden', 'content', 'block', 1, 0),
(48, 'advs', 'modAdvsFloat', '图片广告（飘动）', 'all', 'all', 'tpl_advs_float.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 100, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_pic', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(49, 'advs', 'modAdvsDuilian', '对联广告', 'all', 'all', 'tpl_advs_duilian.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 220, 130, 6, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_duilian', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(50, 'advs', 'modAdvsZimu', '文字广告（字幕）', 'all', 'all', 'tpl_advszimu.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 30, 200, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_text', '', -1, 'hidden', 'content', 'block', 1, 0),
(51, 'advs', 'modAdvsFixed', '图片广告（悬浮）', 'all', 'all', 'tpl_advs_fixed.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 100, 100, 350, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '-1', 1, '', '_advs_pic', '', -1, 'hidden', 'bodyex', 'block', 0, 0),
(61, 'advs', 'modLinkNavPath', '当前位置提示条', 'advs', 'link', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(89, 'advs', 'modAdvsCode', '广告代码', 'all', 'all', 'tpl_advscode.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 250, 250, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '请在此插入广告代码', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 1),
(18, 'comment', 'modCommentSearchForm', '点评搜索表单', 'comment', 'all', 'tpl_comment_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '点评搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(21, 'comment', 'modCommentList', '最新点评（列表）', 'all', 'all', 'tpl_commentlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php', 300, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '最新点评', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(22, 'comment', 'modCommentQuery', '点评检索', 'comment', 'query', 'tpl_comment_query.htm', '-1', '1000', '#def', 1, 'solid', '', '', 'none', '#def', '#fff', '#fff', '-1', 750, 300, 35, 0, 90, 0, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '点评检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(23, 'comment', 'modCommentClass', '点评分类', 'all', 'all', 'tpl_comment_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 200, 200, 90, 12, -1, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '点评分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(24, 'comment', 'modCommentContent', '点评详情', 'comment', 'detail', 'tpl_comment_content.htm', '-1', '1000', '#def', 0, 'solid', '', '', 'none', '#def', '#fff', '#fff', '-1', 750, 500, 35, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '点评详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(56, 'comment', 'modCommentNavPath', '当前位置提示条', 'comment', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(151, 'comment', 'modMemberCommentList', '会员最新点评', 'member', 'homepage', 'tpl_membercommentlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?mid={#mid#}', 380, 170, 0, 0, 90, 12, 5, '-1', '-1', 0, 20, '_self', -1, -1, -1, -1, '-1', '我的点评', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(164, 'comment', 'modCommentHot30', '本月点评点击榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=cl', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月点击榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(165, 'comment', 'modCommentHot7', '本周点评点击榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=cl', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本周点击榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(166, 'comment', 'modCommentRq30', '本月点评人气榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=backcount', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(167, 'comment', 'modCommentRq7', '本周点评人气榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=backcount', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本周人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(9, 'diy', 'modEdit', 'HTML编辑区', 'all', 'all', 'tpl_edit.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自定内容', '请输入内容', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(27, 'diy', 'modButtomInfo', '底部信息编辑区', 'all', 'all', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 900, 120, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '脚注信息', '请输入内容', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', 1, 'hidden', 'bottom', 'block', 0, 0),
(47, 'diy', 'modText', '多行文字', 'all', 'all', 'tpl_text.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '多行文字', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '请输入自定义文字', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(53, 'diy', 'modPic', '图片/FLASH', 'all', 'all', 'tpl_pic.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 200, 0, 0, 90, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片', '-1', '', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(74, 'diy', 'modWords', '单行文字', 'all', 'all', 'tpl_words.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 50, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '单行文字', '-1', '-1', '-1', '-1', '-1', '-1', '请输入文字', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(75, 'diy', 'modPicWordText', '图片+标题+介绍', 'all', 'all', 'tpl_picwordtext.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 250, 90, 30, 300, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, 100, '-1', '自定图文', '-1', '', 'http://', '-1', '-1', '-1', '请输入标题文字', '-1', '-1', '-1', '-1', '请输入介绍文字', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(76, 'diy', 'modPicWord', '图片+标题', 'all', 'all', 'tpl_picword.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 200, 250, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自定图文', '-1', '', 'http://', '-1', '-1', '-1', '请输入标题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(184, 'news', 'modNewsPicMemo', '文章图片+标题+摘要', 'all', 'all', 'tpl_newspicmemo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 300, 320, 0, 0, 99, 5, 3, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 12, '_self', 0, 35, 80, 80, 'fill', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(86, 'diy', 'modPlusBorder', '空白边框', 'all', 'all', 'tpl_plusborder.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 300, 0, 0, 1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '空白边框', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(87, 'diy', 'modColorZone', '空白色块', 'all', 'all', 'tpl_colorzone.htm', '-1', '1000', '#e10000', 1, 'solid', '', '', 'none', '', '', '#e10000', '-1', 200, 200, 30, 30, 1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(63, 'effect', 'modJIanFan', '动态简繁转换', 'all', 'all', 'tpl_jianfan.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '', '-1', 150, 50, 30, 700, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '简繁转换', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(64, 'effect', 'modNowDate', '当前日期时间', 'all', 'all', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 30, 10, 600, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前日期时间', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(65, 'effect', 'modMouseClock', '鼠标时钟特效', 'all', 'all', 'tpl_mouseclock.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 150, 150, 300, 10, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '特效', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(6, 'index', 'modIndexNavPath', '当前位置提示条', 'index', 'index', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(30, 'member', 'modLoginForm', '会员登录表单', 'all', 'all', 'tpl_loginform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 0, 90, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(37, 'member', 'modMemberReg', '会员注册', 'member', 'reg', 'tpl_reg.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 750, 390, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员注册', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(43, 'member', 'modMemberLogin', '会员登录表单(大)', 'member', 'login', 'tpl_member_login.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 650, 300, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(45, 'member', 'modResetPass', '重设密码向导', 'member', 'lostpass', 'tpl_resetpass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 500, 250, 0, 0, 90, 30, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '重设密码', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(57, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(103, 'member', 'modMemberInfo', '会员登录信息', 'member', 'main', 'tpl_memberinfo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 300, 250, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录信息', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(104, 'member', 'modMemberNotice', '会员公告(列表)', 'member', 'main', 'tpl_member_notice.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 200, 0, 0, 99, 12, 5, '-1', '-1', -1, 25, '_self', -1, -1, -1, -1, '-1', '会员公告', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(106, 'member', 'modMemberAccount', '登录账号设置表单', 'member', 'account', 'tpl_member_account.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 200, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '登录帐号设置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(107, 'member', 'modMemberPerson', '头像签名设置表单', 'member', 'person', 'tpl_member_person.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 390, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '头像签名设置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(108, 'member', 'modMemberDetail', '个人资料修改表单', 'member', 'detail', 'tpl_member_detail.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 500, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '个人资料修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(109, 'member', 'modMemberContact', '联系信息设置表单', 'member', 'contact', 'tpl_member_contact.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 390, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '联系信息设置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(110, 'member', 'modMemberNoticeContent', '会员公告详情', 'member', 'notice', 'tpl_member_notice_content.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员公告', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(139, 'member', 'modMemberFav', '我的收藏夹', 'member', 'fav', 'tpl_member_fav.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的收藏夹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(140, 'member', 'modMemberFriends', '我的好友', 'member', 'friends', 'tpl_member_friends.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的好友', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(141, 'member', 'modMemberComment', '我的点评', 'member', 'comment', 'tpl_member_comment.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的点评', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(142, 'member', 'modMemberMsn', '我的站内短信', 'member', 'msn', 'tpl_member_msn.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的站内短信', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(147, 'member', 'modMemberCentInfo', '会员积分信息', 'member', 'main', 'tpl_centinfo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 300, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员积分', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(148, 'member', 'modMemberCentLog', '会员积分查询', 'member', 'membercent', 'tpl_member_centlog.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的积分', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(153, 'member', 'modMemberIntro', '会员简介', 'member', 'homepage', 'tpl_member_intro.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 500, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员简介', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(154, 'member', 'modMemberHomeInfo', '会员信息', 'member', 'homepage', 'tpl_member_homeinfo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 500, 210, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员信息', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(14, 'menu', 'modChannelMenu', '二级导航菜单', 'all', 'all', 'tpl_channelmenu.htm', 'A', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 65, 120, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(16, 'menu', 'modBottomMenu', '底部菜单（一级）', 'all', 'all', 'tpl_bottommenu.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 28, 0, 0, 90, 0, 10, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '脚注栏目', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'bottom', 'block', 0, 0),
(67, 'menu', 'modDropDownMenu', '二级下拉菜单', 'all', 'all', 'tpl_dropdownmenu.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 28, 100, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(66, 'menu', 'modTopMenu', '顶部菜单(一级)', 'all', 'all', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 350, 30, 5, 500, 90, 0, 10, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '顶部菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(68, 'menu', 'modMainMenu', '一级导航菜单', 'all', 'all', 'tpl_mainmenu.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 30, 100, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(115, 'menu', 'modTreeMenu', '树形导航菜单', 'all', 'all', 'tpl_treemenu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'visible', 'content', 'block', 0, 1),
(116, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'all', 'tpl_qqmenu.htm', 'A', '1000', '#def', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员中心', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 1),
(1, 'news', 'modNewsQuery', '文章翻页检索', 'news', 'all', 'tpl_newsquery.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 600, 500, 30, 200, 90, 10, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '文章检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(2, 'news', 'modNewsClass', '文章一级分类', 'all', 'all', 'tpl_newsclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(3, 'news', 'modNewsTreeClass', '文章分类（树形）', 'all', 'all', 'tpl_classtree.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 200, 200, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 1),
(4, 'news', 'modNewsProjList', '相关文章(同专题)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(5, 'news', 'modNewsAuthorList', '相关文章(同发布人)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(7, 'news', 'modNewsClassFc', '文章逐级分类', 'news', 'query', 'tpl_newsclass.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 200, 0, 0, 90, 12, 99, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(8, 'news', 'modNewsList', '文章列表', 'all', 'all', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/', 200, 200, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 12, '_self', 0, 50, -1, -1, '-1', '最新文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(12, 'news', 'modNewsContent', '文章正文', 'news', 'detail', 'tpl_newscontent.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 630, 300, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章正文', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(13, 'news', 'modNewsSearchForm', '文章搜索表单', 'news', 'all', 'tpl_news_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 0, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(20, 'news', 'modNewsComment', '文章点评', 'news', 'detail', 'tpl_news_comment.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '', '', '#fff', 'http://', 630, 300, 300, 0, 90, 1, 5, '-1', '-1', -1, 20, '_self', -1, 120, -1, -1, '-1', '文章评论', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(55, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(72, 'news', 'modNewsProject', '文章专题名称列表', 'all', 'all', 'tpl_newsproj.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新专题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(82, 'news', 'modNewsPic', '文章图片+标题', 'all', 'all', 'tpl_newspic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 99, 5, 4, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 6, '_self', 0, -1, 160, 120, 'fill', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(88, 'news', 'modNewsHot', '文章人气榜', 'all', 'all', 'tpl_newshot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '文章人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(112, 'news', 'modNewsFabu', '文章发布表单', 'member', 'newsfabu', 'tpl_news_fabu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章发布', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(113, 'news', 'modNewsGl', '文章管理', 'member', 'newsgl', 'tpl_news_gl.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(114, 'news', 'modNewsModify', '文章修改表单', 'member', 'newsmodify', 'tpl_news_modify.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(136, 'news', 'modNewsMyCat', '文章分类管理', 'member', 'newscat', 'tpl_news_mycat.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章分类管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(149, 'news', 'modMemberNewsList', '会员最新文章', 'member', 'homepage', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/membernews.php?mid={#mid#}', 380, 170, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 20, '_self', -1, -1, -1, -1, '-1', '我的文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(155, 'news', 'modMemberNewsClass', '会员文章分类', 'news', 'membernews', 'tpl_membernews_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(156, 'news', 'modMemberNewsQuery', '会员文章检索', 'news', 'membernews', 'tpl_newsquery.htm', '-1', 'A010', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 300, 30, 220, 90, 10, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '会员文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(157, 'news', 'modMemberNewsSearchForm', '会员文章搜索', 'news', 'membernews', 'tpl_membernews_searchform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 175, 0, 0, 99, 15, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(58, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(62, 'page', 'modPageContent', '网页内容详情', 'page', 'all', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 350, 30, 220, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '内容标题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(70, 'page', 'modPageTitleList', '网页标题(列表)', 'all', 'all', 'tpl_pagelist.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 10, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '内容标题列表', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_page_group', '', -1, 'hidden', 'content', 'block', 0, 0),
(71, 'page', 'modPageContentFy', '网页内容翻页', 'page', 'all', 'tpl_page_fy.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 50, 30, 220, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '翻页', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(73, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'all', 'all', 'tpl_page_titlemenu.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 0, 10, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '内容标题菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_page_group', '', -1, 'hidden', 'content', 'block', 0, 0),
(29, 'search', 'modSearch', '全站搜索结果', 'search', 'search', 'tpl_search.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 600, 30, 0, 90, 0, -1, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '全站搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(46, 'search', 'modSearchForm', '全站搜索表单', 'all', 'all', 'tpl_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 30, 0, 0, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '全站搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(59, 'search', 'modSearchNavPath', '当前位置提示条', 'search', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(28, 'tools', 'modShowCount', '访问统计', 'all', 'all', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 150, 30, 100, 300, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '访问统计', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', 1, 'hidden', 'bottom', 'block', 0, 0),
(54, 'tools', 'modVote', '投票调查', 'all', 'all', 'tpl_vote.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 250, 200, 200, 90, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '投票调查', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_tools_pollindex', '', -1, 'hidden', 'content', 'block', 0, 0),
(169, 'news', 'modNewsHot30', '本月文章人气榜', 'all', 'all', 'tpl_newshot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(172, 'news', 'modNewsSameTagList', '相关文章(同标签)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(176, 'diy', 'modDiyMovi', 'FLASH视频', 'all', 'all', 'tpl_diymovi.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 300, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '视频', '-1', '-1', '-1', '-1', '请输入FLASH视频来源网址', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(175, 'advs', 'modLinkOpt', '下拉式友情链接', 'all', 'all', 'tpl_linkopt.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 200, 50, 0, 0, 90, 10, 12, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '友情链接', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_linkgroup', '', -1, 'hidden', 'content', 'block', 1, 0),
(204, 'member', 'modMemberRank3', '会员悬赏榜(积分三)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员悬赏榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(205, 'member', 'modMemberRank4', '会员金币榜(积分四)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员金币榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(206, 'member', 'modMemberRank5', '消费积分榜(积分五)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '消费积分榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(207, 'member', 'modMemberTags', '会员推荐(标签)', 'all', 'all', 'tpl_membertags.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 2, '-1', '-1', -1, -1, '_self', -1, -1, 70, 70, '-1', '会员推荐', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0);
INSERT INTO `dev_base_plusdefault` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `moveable`, `classtbl`, `grouptbl`, `projtbl`, `setglobal`, `overflow`, `bodyzone`, `display`, `ifmul`, `ifrefresh`) VALUES
(203, 'member', 'modMemberRank2', '会员人气榜(积分二)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(202, 'member', 'modMemberRank1', '会员经验榜(积分一)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员经验榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(182, 'diy', 'modWordTT', '标题+链接组', 'all', 'all', 'tpl_wordtt.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 70, 0, 0, 99, 10, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '今日头条', '-1', '-1', '-1', '-1', '-1', '-1', '请输入头条标题文字', '自定义链接文字一', '自定义链接文字二', '自定义链接文字三', '自定义链接文字四', '-1', '-1', '-1', 'http://', 'http://', 'http://', 'http://', 'http://', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(183, 'diy', 'modWordText', '标题+介绍', 'all', 'all', 'tpl_wordtext.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 100, 0, 0, 99, 10, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '插件标题', '-1', '-1', '-1', '-1', '-1', '-1', '请输入标题文字', '-1', '-1', '-1', '-1', '请输入介绍文字', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(187, 'news', 'modNewsPicRollx3', '三图轮播特效', 'all', 'all', 'tpl_newspicrollx3.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#dddddd', '#fff', '#fff', '-1', 700, 270, 0, 200, 99, 0, -1, '-1', '-1', 0, 12, '_self', 0, 25, -1, -1, '-1', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 0, 1),
(189, 'diy', 'modPicWords', '图片+标题组', 'all', 'all', 'tpl_picwordx5.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 120, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, 100, '-1', '自定图文', '-1', '', 'http://', '-1', '-1', '-1', '请输入标题', '请输入标题', '请输入标题', '请输入标题', '请输入标题', '-1', '-1', '-1', 'http://', 'http://', 'http://', 'http://', 'http://', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(190, 'effect', 'modButtonSource', '按钮素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 80, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '按钮素材', '-1', '-1', '-1', '-1', '-1', 'button/01.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(191, 'effect', 'modIconSource', '图标素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 50, 50, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图标素材', '-1', '-1', '-1', '-1', '-1', 'icon/01.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(193, 'effect', 'modSmallIcon', '小图标素材', 'all', 'all', 'tpl_smallicon.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 50, 50, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图标素材', '-1', '-1', '-1', '-1', '-1', 'smallicon/1.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(198, 'effect', 'modBgSource', '背景图片素材', 'all', 'all', 'tpl_bgsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 100, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '背景素材', '-1', '-1', '-1', '-1', '-1', 'bg/1.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(195, 'effect', 'modSourceCoolLine', '分割线装饰素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 100, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '分割线素材', '-1', '-1', '-1', '-1', '-1', 'coolline/1.png', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(196, 'effect', 'modCartonSource', '其他图片素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '卡通图片', '-1', '-1', '-1', '-1', '-1', 'carton/1.png', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(200, 'diy', 'modGroupLable', '标签切换边框', 'all', 'all', 'tpl_plusborder.htm', '-1', 'A201', '', 0, 'solid', '', '', 'none', '', '#fff', '#fff', 'http://', 300, 300, 0, 0, 0, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自动标签', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(210, 'diy', 'modBgSound', '网页背景音乐(mid)', 'all', 'all', 'tpl_bgsound.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 50, 350, 0, -1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '背景音乐', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(211, 'news', 'modNewsSameClass', '文章同级分类', 'news', 'query', 'tpl_newsclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(214, 'diy', 'modHeadPic', '头部自定义效果图', 'all', 'all', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片', '-1', '', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(219, 'diy', 'modDiyTemp', '自定义模版', 'all', 'all', 'tpl_diy.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 300, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自定模版', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(220, 'news', 'modNewsTwoClass', '文章二级分类', 'all', 'all', 'tpl_newstwoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(222, 'product', 'modProductQuery', '产品检索搜索', 'product', 'all', 'tpl_product_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 500, 30, 200, 90, 5, 20, '-1', '-1', -1, 30, '_self', -1, 30, 120, 120, 'fill', '产品检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'visible', 'content', 'block', 0, 1),
(223, 'product', 'modProductContent', '产品详情', 'product', 'detail', 'tpl_product_content.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 300, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(224, 'product', 'modProductClass', '产品分类（列表）', 'all', 'all', 'tpl_productclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '产品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(225, 'product', 'modProductList', '自选产品列表', 'all', 'all', 'tpl_productlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}product/class/', 300, 350, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 12, '_self', 0, 30, 80, 80, 'fill', '最新产品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_product_cat', '', '_product_proj', -1, 'hidden', 'content', 'block', 1, 0),
(226, 'product', 'modProductSearchForm', '产品搜索表单', 'all', 'all', 'tpl_product_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(227, 'product', 'modProductNavPath', '当前位置提示条', 'product', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(228, 'product', 'modProductProject', '产品专题（列表）', 'all', 'all', 'tpl_productproj.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新专题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(229, 'product', 'modProductProjList', '相关产品(同专题)', 'product', 'detail', 'tpl_productpic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '相关产品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(230, 'product', 'modProductClassFc', '产品逐级分类', 'product', 'query', 'tpl_productclass.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, 99, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '产品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(231, 'product', 'modProductComment', '产品点评', 'product', 'detail', 'tpl_product_comment.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '', '', '#fff', 'http://', 650, 350, 350, 0, 90, 1, 5, '-1', '-1', -1, 20, '_self', -1, 120, -1, -1, '-1', '产品评论', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(232, 'product', 'modProductFabu', '产品发布表单', 'member', 'productfabu', 'tpl_product_fabu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品发布', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(233, 'product', 'modProductGl', '产品管理', 'member', 'productgl', 'tpl_product_gl.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(234, 'product', 'modProductModify', '产品修改表单', 'member', 'productmodify', 'tpl_product_modify.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(235, 'product', 'modProductMyCat', '产品分类管理', 'member', 'productcat', 'tpl_product_mycat.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品分类管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(236, 'product', 'modMemberProductPic', '会员最新产品', 'member', 'homepage', 'tpl_productpic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}product/memberproduct.php?mid={#mid#}', 500, 200, 0, 0, 90, 10, 10, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 7, '_self', -1, -1, 120, 120, 'fill', '我的产品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(237, 'product', 'modMemberProductClass', '会员产品分类', 'product', 'memberproduct', 'tpl_memberproduct_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(238, 'product', 'modMemberProductQuery', '会员产品检索', 'product', 'memberproduct', 'tpl_product_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 350, 0, 220, 99, 0, 20, '-1', '-1', -1, -1, '-1', -1, -1, 120, 120, 'fill', '产品检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 1),
(239, 'product', 'modMemberProductSearchForm', '会员产品搜索', 'product', 'memberproduct', 'tpl_memberproduct_searchform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 175, 0, 0, 99, 15, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '产品搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(240, 'product', 'modProductAuthorList', '相关产品(同发布人)', 'product', 'detail', 'tpl_productpic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '相关产品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(241, 'product', 'modProductSameTagList', '相关产品(同标签)', 'product', 'detail', 'tpl_productpic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '相关产品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(242, 'product', 'modProductRollx3', '产品三图轮播特效', 'all', 'all', 'tpl_productrollx3.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#dddddd', '#fff', '#fff', '-1', 700, 270, 0, 200, 99, 0, -1, '-1', '-1', 0, 12, '_self', 0, 25, -1, -1, '-1', '产品图片特效', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_product_cat', '', '_product_proj', -1, 'hidden', 'content', 'block', 0, 1),
(243, 'product', 'modProductSameClass', '产品同级分类', 'product', 'query', 'tpl_productclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '产品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(244, 'product', 'modProductCarousel', '产品图片旋转特效', 'all', 'all', 'tpl_productcarousel_cyrano.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#dddddd', '#fff', '#fff', '-1', 600, 225, 0, 200, 99, 0, -1, '-1', '-1', 0, -1, '_self', 0, -1, 180, 180, '-1', '产品图片特效', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_product_cat', '', '_product_proj', -1, 'hidden', 'content', 'block', 0, 1),
(245, 'product', 'modProductTwoClass', '产品二级分类', 'all', 'all', 'tpl_producttwoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '产品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_product_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(246, 'menu', 'modVMenu', '竖式导航菜单', 'all', 'all', 'tpl_vmenu.htm', 'A', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 300, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'content', 'block', 0, 0),
(247, 'menu', 'modMVMenu', '手风琴式二级菜单', 'all', 'all', 'tpl_mvmenu.htm', 'A', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 180, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', -1, 'visible', 'content', 'block', 0, 1),
(255, 'news', 'modNewsPicLb', '文章图片轮播', 'all', 'all', 'tpl_newspic_lb.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 280, 0, 0, 99, 1, 5, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 15, '-1', 0, -1, -1, -1, '-1', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 1),
(256, 'photo', 'modPhotoQuery', '图片检索搜索', 'photo', 'all', 'tpl_photo_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 500, 30, 200, 90, 5, 20, '-1', '-1', -1, 30, '_self', -1, -1, 120, 120, 'fill', '图片检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'visible', 'content', 'block', 0, 1),
(257, 'photo', 'modPhotoContent', '图片详情', 'photo', 'detail', 'tpl_photo_content.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 300, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(258, 'photo', 'modPhotoClass', '图片分类（列表）', 'all', 'all', 'tpl_photoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '图片分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(259, 'photo', 'modPhotoPic', '图片+名称', 'all', 'all', 'tpl_photopic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/', 620, 200, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 12, '_self', 0, -1, 100, 100, 'fill', '最新图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 1, 0),
(260, 'photo', 'modPhotoSearchForm', '图片搜索表单', 'photo', 'all', 'tpl_photo_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(261, 'photo', 'modPhotoNavPath', '当前位置提示条', 'photo', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(262, 'photo', 'modPhotoProject', '图片专题（列表）', 'all', 'all', 'tpl_photoproj.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新专题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(263, 'photo', 'modPhotoProjList', '相关图片(同专题)', 'photo', 'detail', 'tpl_photopic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '相关图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(264, 'photo', 'modPhotoClassFc', '图片逐级分类', 'photo', 'query', 'tpl_photoclass.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, 99, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '图片分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(265, 'photo', 'modPhotoHot', '图片人气榜', 'all', 'all', 'tpl_photohot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '图片人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 1, 0),
(266, 'photo', 'modPhotoComment', '图片点评', 'photo', 'detail', 'tpl_photo_comment.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '', '', '#fff', 'http://', 650, 350, 350, 0, 90, 1, 5, '-1', '-1', -1, 20, '_self', -1, 120, -1, -1, '-1', '图片评论', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(267, 'photo', 'modPhotoFabu', '图片发布表单', 'member', 'photofabu', 'tpl_photo_fabu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片发布', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(268, 'photo', 'modPhotoGl', '图片管理', 'member', 'photogl', 'tpl_photo_gl.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(269, 'photo', 'modPhotoModify', '图片修改表单', 'member', 'photomodify', 'tpl_photo_modify.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(270, 'photo', 'modPhotoMyCat', '图片分类管理', 'member', 'photocat', 'tpl_photo_mycat.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片分类管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(271, 'photo', 'modMemberPhotoPic', '会员最新图片', 'member', 'homepage', 'tpl_photopic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/memberphoto.php?mid={#mid#}', 500, 200, 0, 0, 90, 10, 10, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 7, '_self', -1, -1, 120, 120, 'fill', '我的图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(272, 'photo', 'modMemberPhotoClass', '会员图片分类', 'photo', 'memberphoto', 'tpl_memberphoto_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(273, 'photo', 'modMemberPhotoQuery', '会员图片检索', 'photo', 'memberphoto', 'tpl_photo_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 350, 0, 220, 99, 0, 20, '-1', '-1', -1, -1, '-1', -1, -1, 120, 120, 'fill', '图片检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 1),
(274, 'photo', 'modMemberPhotoSearchForm', '会员图片搜索', 'photo', 'memberphoto', 'tpl_memberphoto_searchform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 175, 0, 0, 99, 15, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(275, 'photo', 'modPhotoHot30', '本月图片人气榜', 'all', 'all', 'tpl_photohot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 1, 0),
(276, 'photo', 'modPhotoAuthorList', '相关图片(同发布人)', 'photo', 'detail', 'tpl_photopic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '相关图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(277, 'photo', 'modPhotoSameTagList', '相关图片(同标签)', 'photo', 'detail', 'tpl_photopic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '相关图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(278, 'photo', 'modPhotoPicMemo', '图片+名称+介绍', 'all', 'all', 'tpl_photopicmemo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/', 300, 350, 0, 0, 90, 10, 3, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 12, '_self', 0, 30, 80, 80, 'fill', '最新图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 1, 0),
(279, 'photo', 'modPhotoRollx3', '三图轮播特效', 'all', 'all', 'tpl_photorollx3.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#dddddd', '#fff', '#fff', '-1', 700, 270, 0, 200, 99, 0, -1, '-1', '-1', 0, 12, '_self', 0, 25, -1, -1, '-1', '图片特效', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 0, 1),
(280, 'photo', 'modPhotoSameClass', '图片同级分类', 'photo', 'query', 'tpl_photoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '图片分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(281, 'photo', 'modPhotoCarousel', '图片旋转显示特效', 'all', 'all', 'tpl_photocarousel_cyrano.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#dddddd', '#fff', '#fff', '-1', 140, 225, 0, 200, 99, 0, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '图片特效', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 0, 1),
(282, 'photo', 'modPhotoTwoClass', '图片二级分类', 'all', 'all', 'tpl_phototwoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '图片分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(325, 'job', 'modJobSearchForm', '职位搜索表单', 'job', 'all', 'tpl_job_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 0, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '职位搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(324, 'job', 'modJobContent', '职位信息详情', 'job', 'detail', 'tpl_jobcontent.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 630, 300, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '职位信息', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(323, 'job', 'modJobList', '最新职位列表', 'all', 'all', 'tpl_joblist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}job/', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新职位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(322, 'job', 'modJobQuery', '职位翻页检索', 'all', 'all', 'tpl_jobquery.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '#ffffff', '-1', 650, 350, 0, 0, 90, 15, 10, '-1', '-1', -1, 30, '_self', -1, 100, -1, -1, '-1', '职位查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(314, 'page', 'modPagePicList', '标题+摘要+主题图', 'all', 'all', 'tpl_page_piclist.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 300, 0, 0, 90, 0, 10, '-1', '-1', -1, 15, '_self', -1, 50, 120, 90, 'fill', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_page_group', '', -1, 'hidden', 'content', 'block', 0, 0),
(315, 'news', 'modNewsGlobalQuery', '全站翻页文章列表', 'all', 'all', 'tpl_newsquery.htm', '-1', 'A001', '', 1, 'solid', '', '', 'block', '', '', '#fff', '-1', 650, 350, 0, 0, 90, 15, 10, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 20, '_self', 0, 50, -1, -1, '-1', '最新文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'visible', 'content', 'block', 0, 0),
(317, 'product', 'modProductGlobalQuery', '全站翻页产品列表', 'all', 'all', 'tpl_product_query.htm', '-1', 'A001', '', 1, 'solid', '', '', 'block', '', '', '#fff', '-1', 650, 350, 0, 0, 90, 15, 10, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 12, '_self', 0, -1, 180, 160, 'fill', '最新产品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_product_cat', '', '_product_proj', -1, 'visible', 'content', 'block', 0, 0),
(318, 'photo', 'modPhotoGlobalQuery', '全站翻页图片列表', 'all', 'all', 'tpl_photo_query.htm', '-1', 'A001', '', 1, 'solid', '', '', 'block', '', '', '#fff', '-1', 650, 350, 0, 0, 90, 15, 10, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 12, '_self', 0, -1, 180, 160, 'fill', '最新图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'visible', 'content', 'block', 0, 0),
(326, 'job', 'modJobNavPath', '当前位置提示条', 'job', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(327, 'job', 'modJobForm', '应聘申请表单', 'job', 'detail', 'tpl_job_form.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#f5f5f5', '#505050', '#fff', '-1', 650, 500, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '应聘申请', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(328, 'tools', 'modToolsPhotoPollQuery', '图片投票翻页检索', 'all', 'all', 'tpl_tools_photopoll_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 500, 30, 200, 90, 5, 20, 'id|uptime|votes', '-1', -1, 30, '-1', 0, -1, 80, 80, 'fill', '图片投票检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_tools_photopollindex', '', '', -1, 'visible', 'content', 'block', 0, 1),
(329, 'tools', 'modToolsQqCs', 'QQ客服', 'all', 'all', 'tpl_tools_qqcs.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 120, 300, 100, 20, 90, 0, -1, '-1', '-1', 0, -1, '-1', -1, -1, -1, -1, '-1', 'QQ客服', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(330, 'tools', 'modToolsWyCs', '51客服', 'all', 'all', 'tpl_tools_wycs.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 120, 100, 0, 90, 0, -1, '-1', '-1', 0, -1, '-1', -1, -1, -1, -1, '-1', '51客服', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(331, 'tools', 'modToolsStatistics', '统计代码插件', 'all', 'all', 'tpl_tools_statistics.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 30, 30, 50, 400, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '统计代码', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'bottom', 'block', 0, 0),
(332, 'tools', 'modToolsYdCs', '移动短信留言', 'all', 'all', 'tpl_tools_ydcs.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 400, 350, 100, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '移动短信留言板', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(333, 'member', 'modMemberPayList', '会员付款记录', 'member', 'paylist', 'tpl_member_paylist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '付款记录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(334, 'member', 'modMemberBuyList', '会员消费记录', 'member', 'buylist', 'tpl_member_buylist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '消费记录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(335, 'diy', 'modDiyHeadTraFlash', '头部自定义透明FLASH', 'all', 'all', 'tpl_diyheadtraflash.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(336, 'diy', 'modHeadTraFlashCyrano', '自定义透明FLASH', 'all', 'all', 'tpl_headtraflash_cyrano.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(373, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'all', 'all', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 200, 0, 0, 90, 0, 5, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_lbgroup', '', 1, 'hidden', 'top', 'block', 0, 1),
(402, 'feedback', 'modFeedBackNavPath', '当前位置提示条', 'all', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(403, 'feedback', 'modFeedBackForm', '留言反馈表单', 'feedback', 'all', 'tpl_feedback_form.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 650, 500, 50, 220, 90, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '留言反馈', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_feedback_group', '', -1, 'visible', 'content', 'block', 0, 0),
(404, 'feedback', 'modFeedBackSmallForm', '全站留言表单', 'all', 'all', 'tpl_feedback_smallform.htm', '-1', 'A001', '', 1, 'solid', '', '', 'none', '', '', '', '-1', 650, 500, 0, 0, 90, 10, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '给我留言', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_feedback_group', '', 1, 'hidden', 'content', 'block', 0, 0),
(427, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'all', 'all', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 1002, 371, 0, 0, 90, 0, 5, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_lbgroup', '', 1, 'hidden', 'top', 'block', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_plusplan`
--

CREATE TABLE IF NOT EXISTS `dev_base_plusplan` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `planid` int(6) NOT NULL DEFAULT '0',
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) DEFAULT '0',
  `plusname` varchar(50) NOT NULL,
  `plustype` varchar(50) DEFAULT '0',
  `pluslocat` varchar(50) DEFAULT '0',
  `tempname` varchar(100) NOT NULL DEFAULT '0',
  `tempcolor` varchar(2) NOT NULL,
  `showborder` char(20) NOT NULL DEFAULT '0',
  `bordercolor` varchar(7) NOT NULL DEFAULT '#dddddd',
  `borderwidth` int(2) NOT NULL DEFAULT '1',
  `borderstyle` varchar(10) NOT NULL DEFAULT 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL DEFAULT 'none',
  `barbg` varchar(10) NOT NULL DEFAULT '#cccccc',
  `barcolor` varchar(10) NOT NULL DEFAULT '#ffffff',
  `backgroundcolor` varchar(7) NOT NULL DEFAULT '#ffffff',
  `morelink` varchar(100) NOT NULL DEFAULT 'http://',
  `width` int(5) NOT NULL DEFAULT '100',
  `height` int(5) NOT NULL DEFAULT '100',
  `top` int(5) NOT NULL DEFAULT '0',
  `left` int(5) NOT NULL DEFAULT '0',
  `zindex` int(2) NOT NULL DEFAULT '99',
  `padding` int(11) NOT NULL DEFAULT '0',
  `shownums` int(10) NOT NULL DEFAULT '0',
  `ord` varchar(100) NOT NULL DEFAULT 'id',
  `sc` varchar(10) NOT NULL DEFAULT 'desc',
  `showtj` int(5) NOT NULL DEFAULT '0',
  `cutword` int(20) DEFAULT '0',
  `target` varchar(30) DEFAULT '0',
  `catid` int(100) NOT NULL DEFAULT '0',
  `cutbody` int(5) NOT NULL DEFAULT '0',
  `picw` int(3) NOT NULL DEFAULT '100',
  `pich` int(3) NOT NULL DEFAULT '100',
  `fittype` char(10) NOT NULL DEFAULT 'fill',
  `title` varchar(100) NOT NULL,
  `body` text,
  `pic` varchar(255) NOT NULL,
  `piclink` char(255) NOT NULL DEFAULT '-1',
  `attach` varchar(255) NOT NULL,
  `movi` varchar(255) NOT NULL,
  `sourceurl` varchar(30) NOT NULL,
  `word` char(255) NOT NULL,
  `word1` char(255) NOT NULL,
  `word2` char(255) NOT NULL,
  `word3` char(255) NOT NULL DEFAULT '',
  `word4` char(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `link1` char(255) NOT NULL DEFAULT '',
  `link2` char(255) NOT NULL DEFAULT '',
  `link3` char(255) NOT NULL,
  `link4` char(255) NOT NULL,
  `tags` char(30) NOT NULL,
  `groupid` varchar(20) NOT NULL DEFAULT '',
  `projid` varchar(20) NOT NULL DEFAULT '',
  `modno` int(3) NOT NULL DEFAULT '0',
  `setglobal` int(5) NOT NULL DEFAULT '0',
  `overflow` varchar(20) NOT NULL DEFAULT 'hidden',
  `bodyzone` varchar(10) NOT NULL DEFAULT 'content',
  `display` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4495 ;

--
-- 转存表中的数据 `dev_base_plusplan`
--

INSERT INTO `dev_base_plusplan` (`id`, `planid`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4483, 372, 'menu', 'modBottomMenu', '底部菜单（一级）', 'index', 'index', 'tpl_bottommenu_1.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 44, 82, 0, 7, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4484, 372, 'advs', 'modLogo', '网站标志', 'index', 'index', 'tpl_logo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 253, 66, 55, 47, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4485, 372, 'diy', 'modButtomInfo', '底部信息编辑区', 'index', 'index', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 59, 124, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #96918c">版权所有 Copyright(C)2009-2012 杭州某某整体橱柜公司</div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4486, 372, 'menu', 'modMainMenu', '一级导航菜单', 'index', 'index', 'tpl_mainmenu_dolphin.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 666, 48, 73, 293, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4487, 372, 'diy', 'modEdit', 'HTML编辑区', 'index', 'index', 'tpl_edit.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', 'http://', 282, 188, 170, 359, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="PADDING-LEFT: 70px; PADDING-RIGHT: 25px; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; COLOR: #4b4b4b; PADDING-TOP: 18px"><span style="LINE-HEIGHT: 24px; COLOR: #2e2c2d; FONT-WEIGHT: bold">厨房电器系列<br /></span><span style="LINE-HEIGHT: 23px">本公司专业生产整体橱柜系列，包括整体厨房、衣柜、储物柜，集成吊顶，厨房电器，厨房设备，整体卫浴系列，诚招各地代理...</span><br /><a href="[ROOTPATH]product/class/?116.html"><span style="TEXT-ALIGN: left; LINE-HEIGHT: 40px; PADDING-LEFT: 0px; COLOR: #675c56">点这里查看详情 &gt;&gt;</span></a></div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4488, 372, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 284, 356, 0, 358, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20130105/1357389877.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'content', 'block'),
(4489, 372, 'advs', 'modAdvsTarrow', '双箭头图片轮播', 'index', 'index', 'tpl_advstarrow.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 381, 146, 0, 4, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4490, 372, 'diy', 'modEdit', 'HTML编辑区', 'index', 'index', 'tpl_edit.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', 'http://', 282, 163, 168, 41, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '\r\n<div style="PADDING-LEFT: 70px; PADDING-RIGHT: 25px; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; COLOR: #4b4b4b; PADDING-TOP: 18px"><span style="LINE-HEIGHT: 24px; COLOR: #2e2c2d; FONT-WEIGHT: bold">整体橱柜系列<br /></span><span style="LINE-HEIGHT: 23px">本公司专业生产整体橱柜系列，包括整体厨房、衣柜、储物柜，集成吊顶，厨房电器，厨房设备，整体卫浴系列，诚招各地代理...</span><br /><a href="[ROOTPATH]product/class/?115.html"><span style="TEXT-ALIGN: left; LINE-HEIGHT: 40px; PADDING-LEFT: 0px; COLOR: #675c56">点这里查看详情 &gt;&gt;</span></a></div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4491, 372, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 1002, 194, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20121210/1355130609.png', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 4, 0, 'hidden', 'bottom', 'block'),
(4492, 372, 'diy', 'modEdit', 'HTML编辑区', 'index', 'index', 'tpl_edit.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', 'http://', 283, 180, 169, 678, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '<div style="PADDING-LEFT: 70px; PADDING-RIGHT: 25px; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; COLOR: #4b4b4b; PADDING-TOP: 18px"><span style="LINE-HEIGHT: 24px; COLOR: #2e2c2d; FONT-WEIGHT: bold">卫浴系列<br /></span><span style="LINE-HEIGHT: 23px">本公司专业生产整体橱柜系列，包括整体厨房、衣柜、储物柜，集成吊顶，厨房电器，厨房设备，整体卫浴系列，诚招各地代理...</span><br /><a href="[ROOTPATH]product/class/?74.html"><span style="TEXT-ALIGN: left; LINE-HEIGHT: 40px; PADDING-LEFT: 0px; COLOR: #675c56">点这里查看详情 &gt;&gt;</span></a></div>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4493, 372, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 284, 356, 0, 677, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20130105/1357389964.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 7, 0, 'hidden', 'content', 'block'),
(4494, 372, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 284, 356, 0, 40, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20130105/1357389748.jpg', '#', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 5, 0, 'hidden', 'content', 'block');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_plusplanid`
--

CREATE TABLE IF NOT EXISTS `dev_base_plusplanid` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `planname` varchar(50) NOT NULL DEFAULT '',
  `plustype` varchar(50) NOT NULL DEFAULT '',
  `pluslocat` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=373 ;

--
-- 转存表中的数据 `dev_base_plusplanid`
--

INSERT INTO `dev_base_plusplanid` (`id`, `planname`, `plustype`, `pluslocat`) VALUES
(372, 'ymjd.cn', 'index', 'index');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_plustemp`
--

CREATE TABLE IF NOT EXISTS `dev_base_plustemp` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `pluslable` char(30) NOT NULL DEFAULT '',
  `cname` char(30) NOT NULL,
  `tempname` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=428 ;

--
-- 转存表中的数据 `dev_base_plustemp`
--

INSERT INTO `dev_base_plustemp` (`id`, `pluslable`, `cname`, `tempname`) VALUES
(201, 'modLoginForm', '横式会员登录表单，请选用专用边框(如500号边框)', 'tpl_loginform_h.htm'),
(67, 'modMemberNewsList', '标题+时间', 'tpl_newslist_time.htm'),
(68, 'modMemberNewsList', '标题+摘要', 'tpl_newslist_memo.htm'),
(87, 'modMemberNewsQuery', '文章翻页检索,标题+摘要', 'tpl_newsquery_memo.htm'),
(88, 'modMemberNewsQuery', '文章翻页检索,标题+时间,带表头', 'tpl_newsquery_cap.htm'),
(89, 'modNewsAuthorList', '标题+时间', 'tpl_newslist_time.htm'),
(90, 'modNewsAuthorList', '类别+标题', 'tpl_newslist_cat.htm'),
(91, 'modNewsAuthorList', '标题+摘要', 'tpl_newslist_memo.htm'),
(92, 'modNewsAuthorList', '标题+作者', 'tpl_newslist_author.htm'),
(103, 'modNewsContent', '仿新闻门户正文风格', 'tpl_newscontent_portal.htm'),
(16, 'modNewsHot', '标题+图标风格2', 'tpl_newshot2.htm'),
(58, 'modNewsHot', '标题+时间', 'tpl_newshot_time.htm'),
(59, 'modNewsHot', '标题+作者', 'tpl_newshot_author.htm'),
(60, 'modNewsHot', '标题+图标风格3', 'tpl_newshot3.htm'),
(61, 'modNewsHot', '标题+图标风格4', 'tpl_newshot4.htm'),
(102, 'modNewsHot', '标题+点击数', 'tpl_newshot_cl.htm'),
(62, 'modNewsHot30', '标题+图标风格2', 'tpl_newshot2.htm'),
(63, 'modNewsHot30', '标题+时间', 'tpl_newshot_time.htm'),
(64, 'modNewsHot30', '标题+作者', 'tpl_newshot_author.htm'),
(65, 'modNewsHot30', '标题+图标风格3', 'tpl_newshot3.htm'),
(66, 'modNewsHot30', '标题+图标风格4', 'tpl_newshot4.htm'),
(101, 'modNewsHot30', '标题+点击数', 'tpl_newshot_cl.htm'),
(2, 'modNewsList', '标题+时间', 'tpl_newslist_time.htm'),
(3, 'modNewsList', '类别+标题', 'tpl_newslist_cat.htm'),
(57, 'modNewsList', '标题+参数列1,2,3', 'tpl_newslist_prop3.htm'),
(56, 'modNewsList', '标题+参数列1,2', 'tpl_newslist_prop2.htm'),
(55, 'modNewsList', '标题+参数列1', 'tpl_newslist_prop1.htm'),
(42, 'modNewsList', '标题+摘要', 'tpl_newslist_memo.htm'),
(41, 'modNewsList', '标题+作者', 'tpl_newslist_author.htm'),
(198, 'modNewsPicMemo', '图片+标题+两个参数列', 'tpl_newspicprop_2.htm'),
(84, 'modNewsPicMemo', '图片+标题+三个参数列', 'tpl_newspicprop.htm'),
(93, 'modNewsProjList', '标题+时间', 'tpl_newslist_time.htm'),
(94, 'modNewsProjList', '类别+标题', 'tpl_newslist_cat.htm'),
(95, 'modNewsProjList', '标题+摘要', 'tpl_newslist_memo.htm'),
(96, 'modNewsProjList', '标题+作者', 'tpl_newslist_author.htm'),
(10, 'modNewsQuery', '文章翻页检索,标题+摘要', 'tpl_newsquery_memo.htm'),
(86, 'modNewsQuery', '文章翻页检索,标题+时间,带表头', 'tpl_newsquery_cap.htm'),
(97, 'modNewsSameTagList', '标题+时间', 'tpl_newslist_time.htm'),
(98, 'modNewsSameTagList', '类别+标题', 'tpl_newslist_cat.htm'),
(99, 'modNewsSameTagList', '标题+摘要', 'tpl_newslist_memo.htm'),
(100, 'modNewsSameTagList', '标题+作者', 'tpl_newslist_author.htm'),
(277, 'modText', '白色文字', 'tpl_text_2.htm'),
(48, 'modPicWords', '图片+四行标题', 'tpl_picwordx4.htm'),
(46, 'modPicWords', '图片+两行标题', 'tpl_picwordx2.htm'),
(49, 'modPicWords', '图片+三行标题', 'tpl_picwordx3.htm'),
(18, 'modText', '从右到左竖写', 'tpl_text_1.htm'),
(45, 'modWordTT', '标题+4组链接', 'tpl_wordttx4.htm'),
(44, 'modWordTT', '标题+3组链接', 'tpl_wordttx3.htm'),
(43, 'modWordTT', '标题+2组链接', 'tpl_wordttx2.htm'),
(202, 'modNewsSearchForm', '竖式搜索表单', 'tpl_news_searchform_h.htm'),
(205, 'modCommentSearchForm', '竖式搜索表单', 'tpl_comment_searchform_h.htm'),
(206, 'modSearchForm', '竖式搜索表单', 'tpl_searchform_h.htm'),
(207, 'modButtomInfo', '灰色渐变背景', 'tpl_bottominfo_1.htm'),
(208, 'modMemberTags', '头像+三组积分+推荐标签3', 'tpl_membertags_1.htm'),
(209, 'modMemberTags', '头像+推荐标签3', 'tpl_membertags_2.htm'),
(210, 'modMemberRank1', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(211, 'modMemberRank2', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(212, 'modMemberRank3', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(213, 'modMemberRank4', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(214, 'modMemberRank5', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(215, 'modHeadTraFlash', '移动竖条', 'tpl_flash2.htm'),
(216, 'modHeadTraFlash', '光球光芒时隐时现', 'tpl_flash3.htm'),
(217, 'modHeadTraFlash', '米字星光', 'tpl_flash4.htm'),
(221, 'modBgSound', '显示播放器', 'tpl_bgsound_show.htm'),
(222, 'modFormGroup', '列表式', 'tpl_formgroup_list.htm'),
(223, 'modNewsList', '标题+时间(微软雅黑,14px)', 'tpl_newslist_time_big.htm'),
(245, 'modProductSearchForm', '竖式搜索表单', 'tpl_product_searchform_h.htm'),
(246, 'modProductTwoClass', '产品二级分类紧凑型风格', 'tpl_producttwoclass_1.htm'),
(247, 'modProductList', '产品名称+图片+简介(每行两个产品)', 'tpl_productlist_1.htm'),
(248, 'modProductList', '产品名称+图片+参数列(每行两个产品)', 'tpl_productlist_2.htm'),
(249, 'modProductList', '产品名称+图片+简介+参数列(每行两个产品)', 'tpl_productlist_3.htm'),
(250, 'modProductList', '产品名称+图片+简介(每行三个产品)', 'tpl_productlist_4.htm'),
(251, 'modProductList', '产品名称+图片+参数列(每行三个产品)', 'tpl_productlist_5.htm'),
(252, 'modProductList', '产品名称+图片+参数列(文字在图下方，每行产品数自动)', 'tpl_productlist_6.htm'),
(253, 'modProductQuery', '产品名称+图片+简介(每行两个产品)', 'tpl_product_query_1.htm'),
(254, 'modProductQuery', '产品名称+图片+参数列(每行两个产品)', 'tpl_product_query_2.htm'),
(255, 'modProductQuery', '产品名称+图片+简介+参数列(每行两个产品)', 'tpl_product_query_3.htm'),
(256, 'modProductQuery', '产品名称+图片+简介(每行三个产品)', 'tpl_product_query_4.htm'),
(257, 'modProductQuery', '产品名称+图片+参数列(每行三个产品)', 'tpl_product_query_5.htm'),
(258, 'modProductQuery', '产品名称+图片+参数列(文字在图下方，每行产品数自动)', 'tpl_product_query_6.htm'),
(259, 'modProductContent', '会员互动型产品详情风格', 'tpl_product_content_1.htm'),
(266, 'modBottomMenu', '底部菜单之纯文字菜单模板', 'tpl_bottommenu_1.htm'),
(267, 'modNewsList', '双列文章标题模板', 'tpl_newslist_mul.htm'),
(426, 'modPhotoClass', '自定义模板', 'tpl_photoclass_dolphin.htm'),
(271, 'modCommentContent', '留言问答风格', 'tpl_comment_content_pw.htm'),
(273, 'modNewsList', '标题 时间（反白）', 'tpl_newslist_time_white.htm'),
(275, 'modWordText', '标题和介绍白色文字模板', 'tpl_wordtext_1_cr.htm'),
(279, 'modPicWordText', '图片标题文字环绕', 'tpl_picwordtext_2.htm'),
(305, 'modProductClass', '产品分类菜单', 'tpl_productclass_menu.htm'),
(301, 'modPagePicList', '图片 标题 摘要,每行两个', 'tpl_page_piclist_2.htm'),
(380, 'modNewsClass', '新闻分类', 'tpl_newsclass_dolphin.htm'),
(306, 'modNewsClass', '分类菜单', 'tpl_newsclass_menu.htm'),
(391, 'modProductSearchForm', '产品搜索', 'tpl_product_search_dolphin.htm'),
(392, 'modProductQuery', '产品名称 图片 (文字在图下方)', 'tpl_product_query_dolphin.htm'),
(415, 'modProductGlobalQuery', '图片 标题(图片居上)', 'tpl_product_query_dolphin.htm'),
(390, 'modProductClass', '内页产品分类', 'tpl_productclass_dolphin.htm'),
(379, 'modNewsSearchForm', '新闻搜索', 'tpl_news_search_dolphin.htm'),
(387, 'modMainMenu', '主题菜单', 'tpl_mainmenu_dolphin.htm'),
(389, 'modPageTitleMenu', '网页分类', 'tpl_page_menu_dolphin.htm'),
(417, 'modNewsList', '自定义模版', 'tpl_newslist_1.htm'),
(396, 'modJobList', '职位名称无人数', 'tpl_joblist_1.htm'),
(397, 'modDropDownMenu', '黑色下拉菜单', 'tpl_dropdownmenu_dolphin.htm'),
(400, 'modProductSearchForm', '简单搜索', 'tpl_product_search_simple.htm'),
(402, 'modChannelMenu', '二级跟随菜单', 'tpl_channelmenu_6.htm'),
(411, 'modDiyTemp', '产品列表', 'tpl_diy_pw1.htm'),
(410, 'modFeedBackSmallForm', '小型留言表单(适合放在左右侧)', 'tpl_feedback_smallform1.htm'),
(421, 'modSearchForm', '自定义模版', 'tpl_searchform_simple.htm'),
(423, 'modProductContent', '自定义模版', 'tpl_product_content_2.htm'),
(424, 'modNewsClassFc', '自定义模版', 'tpl_newsclass_dolphin.htm'),
(427, 'modProductList', '自定义模板', 'tpl_productlist_roll.htm');

-- --------------------------------------------------------

--
-- 表的结构 `dev_base_version`
--

CREATE TABLE IF NOT EXISTS `dev_base_version` (
  `version` varchar(30) NOT NULL DEFAULT '',
  `release` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dev_base_version`
--

INSERT INTO `dev_base_version` (`version`, `release`) VALUES
('1.0.0', 20090215),
('1.1.0', 20090320),
('1.1.1', 20090326),
('1.1.2', 20090327),
('1.1.3', 20090328),
('1.1.4', 20090401),
('1.1.5', 20090402),
('1.1.6', 20090412),
('1.1.7', 20090418),
('1.1.8', 20090419),
('1.1.9', 20090420),
('1.1.10', 20090421),
('1.2.0', 20090428),
('1.2.1', 20090504),
('1.2.2', 20090508),
('1.2.3', 20090514),
('1.2.4', 20090612),
('1.2.5', 20090615),
('1.2.6', 20090624),
('1.2.8', 20090801),
('1.2.9', 20090802),
('1.2.10', 20090803),
('1.2.11', 20090804),
('1.2.12', 20090820),
('1.3.0', 20090828),
('1.3.2', 20090830),
('1.3.3', 20090831),
('1.3.4', 20090901),
('1.3.5', 20090902),
('1.3.15', 20090912),
('1.3.9', 20090906),
('1.3.12', 20090909),
('1.3.11', 20090908),
('1.3.17', 20091010),
('1.3.18', 20091112),
('1.3.19', 20100623),
('1.4.0', 20100830),
('1.4.1', 20100920),
('1.4.3', 20100925),
('1.5.0', 20111209),
('2.0.0', 20120407),
('2.0.1', 20120408),
('2.0.2', 20120409),
('2.0.3', 20120410),
('2.0.4', 20120411),
('2.0.5', 20120412),
('2.0.7', 20121012),
('2.0.8', 20121013),
('2.0.9', 20121014),
('2.0.10', 20121015),
('2.0.11', 20121016),
('2.0.12', 20121017),
('2.0.13', 20121018),
('2.0.14', 20121019),
('2.0.15', 20121030),
('2.0.16', 20121106),
('2.0.17', 20121107),
('2.0.18', 20121108),
('2.0.19', 20121109),
('2.0.20', 20121110),
('2.0.21', 20121209),
('2.0.22', 20121210),
('2.0.23', 20121211),
('2.0.24', 20121213),
('2.0.25', 20121220),
('2.0.26', 20121221);

-- --------------------------------------------------------

--
-- 表的结构 `dev_comment`
--

CREATE TABLE IF NOT EXISTS `dev_comment` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `pid` int(20) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `rid` int(20) NOT NULL DEFAULT '0',
  `contype` varchar(30) NOT NULL DEFAULT 'comment',
  `pname` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `body` text,
  `pj1` int(1) NOT NULL DEFAULT '3',
  `pj2` int(1) NOT NULL DEFAULT '3',
  `pj3` int(1) NOT NULL DEFAULT '3',
  `dtime` int(11) NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `iffb` int(1) NOT NULL DEFAULT '0',
  `tuijian` int(1) NOT NULL DEFAULT '0',
  `cl` int(10) NOT NULL DEFAULT '0',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `lastmemberid` int(12) NOT NULL DEFAULT '0',
  `backcount` int(12) NOT NULL DEFAULT '0',
  `picsrc` varchar(255) NOT NULL DEFAULT '',
  `xuhao` int(5) NOT NULL DEFAULT '0',
  `memberid` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=516 ;

--
-- 转存表中的数据 `dev_comment`
--

INSERT INTO `dev_comment` (`id`, `pid`, `catid`, `rid`, `contype`, `pname`, `title`, `body`, `pj1`, `pj2`, `pj3`, `dtime`, `uptime`, `ip`, `iffb`, `tuijian`, `cl`, `lastname`, `lastmemberid`, `backcount`, `picsrc`, `xuhao`, `memberid`) VALUES
(515, 0, 109, 0, 'comment', '测试会员', 'test', 'test', 3, 3, 3, 1238898529, 1238898529, '127.0.0.1', 1, 0, 6, '测试会员', 150, 0, '', 1, 150),
(514, 0, 109, 0, 'comment', '游客', '产品咨询', 'sss', 3, 3, 3, 1238224685, 1238224685, '127.0.0.1', 1, 0, 16, '游客', -1, 0, '', 1, -1);

-- --------------------------------------------------------

--
-- 表的结构 `dev_comment_cat`
--

CREATE TABLE IF NOT EXISTS `dev_comment_cat` (
  `catid` int(12) NOT NULL AUTO_INCREMENT,
  `pid` int(6) NOT NULL DEFAULT '0',
  `cat` varchar(50) NOT NULL DEFAULT '',
  `catpath` varchar(255) NOT NULL,
  `coltype` varchar(30) NOT NULL DEFAULT '',
  `xuhao` int(4) NOT NULL DEFAULT '0',
  `moveable` int(1) NOT NULL DEFAULT '0',
  `ifbbs` int(1) NOT NULL DEFAULT '1',
  `ifshow` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=731 ;

--
-- 转存表中的数据 `dev_comment_cat`
--

INSERT INTO `dev_comment_cat` (`catid`, `pid`, `cat`, `catpath`, `coltype`, `xuhao`, `moveable`, `ifbbs`, `ifshow`) VALUES
(1, 0, '文章评论', '0001:', 'news', 0, 0, 0, 0),
(109, 0, '产品咨询', '0109:', 'comment', 1, 1, 1, 1),
(4, 0, '产品点评', '0004:', 'product', 0, 0, 0, 0),
(110, 0, '知识问答', '0110:', 'comment', 2, 1, 1, 1),
(111, 0, '用户茶座', '0111:', 'comment', 7, 1, 1, 1),
(2, 0, '图片点评', '0002:', 'photo', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_comment_config`
--

CREATE TABLE IF NOT EXISTS `dev_comment_config` (
  `xuhao` int(3) NOT NULL DEFAULT '0',
  `vname` varchar(50) NOT NULL DEFAULT '',
  `settype` varchar(30) NOT NULL DEFAULT 'input',
  `colwidth` varchar(3) NOT NULL DEFAULT '30',
  `variable` varchar(32) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dev_comment_config`
--

INSERT INTO `dev_comment_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(5, '匿名点评是否审核', 'YN', '30', 'noMembercheck', '0', '匿名发表、回复点评时是否审核'),
(7, '点评图片上传尺寸限制(Byte)', 'input', '30', 'EditPicLimit', '204800', '发表点评时，编辑器内上传图片大小的限制'),
(6, '未登录时是否允许上传图片', 'YN', '30', 'NoMemberUpPic', '0', '未登录会员时,是否允许在编辑器内上传图片(备注:会员登录后发表点评是否可以上传图片，在会员权限中设置)'),
(1, '模块频道名称', 'input', '30', 'ChannelName', '网友留言', '本模块对应的频道名称，如“网友点评”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(8, '点评关键词过滤', 'textarea', '30', 'KeywordDeny', '法轮功,麻醉,兴奋剂,妈的,操你,日你', '点评禁止的词语，多个以逗号分割');

-- --------------------------------------------------------

--
-- 表的结构 `dev_feedback`
--

CREATE TABLE IF NOT EXISTS `dev_feedback` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `groupid` int(5) NOT NULL DEFAULT '0',
  `field_caption` varchar(200) NOT NULL DEFAULT '',
  `field_type` int(1) NOT NULL DEFAULT '0',
  `field_size` int(5) NOT NULL DEFAULT '0',
  `field_name` varchar(200) NOT NULL DEFAULT '',
  `field_value` varchar(255) NOT NULL DEFAULT '',
  `field_null` int(1) NOT NULL DEFAULT '0',
  `value_repeat` int(1) NOT NULL DEFAULT '0',
  `field_intro` varchar(255) NOT NULL DEFAULT '',
  `use_field` int(1) NOT NULL DEFAULT '0',
  `moveable` int(1) NOT NULL DEFAULT '0',
  `xuhao` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1565 ;

--
-- 转存表中的数据 `dev_feedback`
--

INSERT INTO `dev_feedback` (`id`, `groupid`, `field_caption`, `field_type`, `field_size`, `field_name`, `field_value`, `field_null`, `value_repeat`, `field_intro`, `use_field`, `moveable`, `xuhao`) VALUES
(1, 0, '留言标题', 1, 399, 'title', '', 1, 1, '', 1, 1, 1),
(2, 0, '留言内容', 2, 399, 'content', '', 0, 1, '', 1, 0, 2),
(3, 0, '您的姓名', 1, 399, 'name', '', 0, 1, '', 0, 0, 3),
(5, 0, '联系电话', 1, 399, 'tel', '', 0, 1, '', 0, 0, 5),
(6, 0, '联系地址', 1, 399, 'address', '', 0, 1, '', 0, 0, 6),
(7, 0, '电子邮件', 1, 399, 'email', '', 0, 1, '', 0, 0, 7),
(8, 0, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8),
(9, 0, 'QQ号码', 1, 399, 'qq', '', 0, 1, '', 0, 0, 9),
(10, 0, '公司名称', 1, 399, 'company', '', 0, 1, '', 0, 0, 10),
(11, 0, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11),
(4, 0, '性　　别', 5, 399, 'sex', '男;女', 0, 1, '', 0, 0, 4),
(12, 0, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12),
(13, 0, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13),
(14, 0, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14),
(15, 0, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15),
(16, 0, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 0, 0, 16),
(19, 0, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17),
(18, 0, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(17, 0, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(20, 0, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(21, 0, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(22, 0, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(23, 0, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23),
(1145, 1, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(1146, 1, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(1147, 1, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(1148, 1, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(1149, 1, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(1150, 1, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23),
(1143, 1, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 0, 0, 16),
(1144, 1, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17),
(1142, 1, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15),
(1141, 1, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14),
(1140, 1, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13),
(1139, 1, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12),
(1138, 1, '性别称谓', 5, 399, 'sex', '先生;女士', 0, 1, '', 0, 0, 9),
(1136, 1, '客户名称', 1, 399, 'company', '', 1, 1, '', 1, 0, 3),
(1137, 1, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11),
(1135, 1, 'QQ/MSN', 1, 399, 'qq', '', 0, 1, '', 1, 0, 9),
(1134, 1, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8),
(1133, 1, '电子邮件', 1, 399, 'email', '', 0, 1, '', 0, 0, 7),
(1132, 1, '联系地址', 1, 399, 'address', '', 0, 1, '', 0, 0, 6),
(1131, 1, '联系电话', 1, 399, 'tel', '', 1, 1, '', 1, 0, 5),
(1130, 1, '联 系 人', 1, 399, 'name', '', 0, 1, '', 1, 0, 4),
(1129, 1, '留言内容', 2, 399, 'content', '', 1, 1, '', 1, 0, 2),
(1128, 1, '留言主题', 1, 399, 'title', '', 1, 1, '', 1, 1, 1),
(1542, 18, '您的姓名', 1, 399, 'title', '', 1, 1, '', 1, 1, 1),
(1543, 18, '身份证号码', 1, 399, 'content', '', 1, 1, '', 1, 0, 2),
(1544, 18, '您的性别', 1, 399, 'name', '', 0, 1, '', 0, 0, 3),
(1545, 18, '联系电话', 1, 399, 'tel', '', 1, 1, '', 1, 0, 5),
(1546, 18, '联系地址', 1, 399, 'address', '', 1, 1, '', 1, 0, 6),
(1547, 18, '电子邮件', 1, 399, 'email', '', 1, 1, '', 1, 0, 7),
(1548, 18, '省份地区', 1, 399, 'url', '', 1, 1, '', 1, 0, 8),
(1549, 18, '曾经营品牌', 1, 399, 'qq', '', 1, 1, '', 1, 0, 9),
(1550, 18, '营业面积', 1, 399, 'company', '', 1, 1, '', 1, 0, 10),
(1551, 18, '月销售量', 1, 399, 'company_address', '', 1, 1, '', 1, 0, 11),
(1552, 18, '性　　别', 5, 399, 'sex', '男;女', 0, 1, '', 0, 0, 4),
(1553, 18, '备    注', 2, 399, 'zip', '', 0, 1, '', 1, 0, 12),
(1554, 18, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13),
(1555, 18, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14),
(1556, 18, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15),
(1557, 18, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 0, 0, 16),
(1558, 18, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17),
(1559, 18, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(1560, 18, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(1561, 18, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(1562, 18, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(1563, 18, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(1564, 18, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23);

-- --------------------------------------------------------

--
-- 表的结构 `dev_feedback_group`
--

CREATE TABLE IF NOT EXISTS `dev_feedback_group` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL DEFAULT '',
  `xuhao` int(5) NOT NULL DEFAULT '0',
  `moveable` int(1) NOT NULL DEFAULT '1',
  `ifano` int(11) NOT NULL DEFAULT '0',
  `allowmembertype` varchar(255) NOT NULL,
  `allowfeedback` char(255) NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `dev_feedback_group`
--

INSERT INTO `dev_feedback_group` (`id`, `groupname`, `xuhao`, `moveable`, `ifano`, `allowmembertype`, `allowfeedback`, `intro`) VALUES
(1, '信息反馈', 1, 0, 1, '|26|', '|3|', '信息反馈'),
(18, '加盟申请', 4, 1, 0, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_feedback_info`
--

CREATE TABLE IF NOT EXISTS `dev_feedback_info` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `groupid` int(5) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `sex` varchar(10) NOT NULL DEFAULT '',
  `tel` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `company_address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(6) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `products_id` varchar(100) NOT NULL DEFAULT '',
  `products_name` varchar(200) NOT NULL DEFAULT '',
  `products_num` varchar(9) NOT NULL DEFAULT '',
  `custom1` text NOT NULL,
  `custom2` text NOT NULL,
  `custom3` text NOT NULL,
  `custom4` text NOT NULL,
  `custom5` text NOT NULL,
  `custom6` text NOT NULL,
  `custom7` text NOT NULL,
  `ip` varchar(20) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `memberid` int(12) NOT NULL DEFAULT '0',
  `stat` int(2) NOT NULL DEFAULT '0',
  `adminid` int(5) NOT NULL DEFAULT '0',
  `coadminid` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=170 ;

--
-- 转存表中的数据 `dev_feedback_info`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_job`
--

CREATE TABLE IF NOT EXISTS `dev_job` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `jobname` varchar(255) NOT NULL DEFAULT '',
  `jobtype` varchar(20) NOT NULL DEFAULT '',
  `experience` varchar(100) NOT NULL DEFAULT '',
  `education` varchar(50) NOT NULL DEFAULT '',
  `langneed` varchar(50) NOT NULL DEFAULT '',
  `langlevel` varchar(50) NOT NULL DEFAULT '',
  `pnums` int(5) NOT NULL DEFAULT '0',
  `jobaddr` varchar(200) NOT NULL DEFAULT '',
  `jobintro` text,
  `jobrequest` text NOT NULL,
  `jobstat` int(1) NOT NULL DEFAULT '0',
  `contact` varchar(50) NOT NULL DEFAULT '',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(200) NOT NULL DEFAULT '',
  `dtime` int(11) DEFAULT '0',
  `uptime` int(11) DEFAULT '0',
  `endtime` int(11) DEFAULT '0',
  `xuhao` int(5) DEFAULT '0',
  `cl` int(20) NOT NULL DEFAULT '0',
  `tj` int(1) NOT NULL DEFAULT '0',
  `iffb` int(1) DEFAULT '0',
  `contype` varchar(20) NOT NULL DEFAULT 'job',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `dev_job`
--

INSERT INTO `dev_job` (`id`, `jobname`, `jobtype`, `experience`, `education`, `langneed`, `langlevel`, `pnums`, `jobaddr`, `jobintro`, `jobrequest`, `jobstat`, `contact`, `tel`, `email`, `dtime`, `uptime`, `endtime`, `xuhao`, `cl`, `tj`, `iffb`, `contype`) VALUES
(1, '华东区销售经理', '全职', '3年以上', '本科', '', '', 1, '上海', '本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务', '具有良好的销售和团队管理理念\r\n三年以上销售工作经验，一年以上销售经理经验\r\n工作责任心强，能承受较大的工作压力', 1, '华海', '021-87654321', 'huahai@mycompany.com', 1242621303, 1242621303, 0, 0, 0, 0, 1, 'job'),
(2, '华东区销售经理', '全职', '3年以上', '本科', '', '', 1, '上海', '本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务', '具有良好的销售和团队管理理念\r\n三年以上销售工作经验，一年以上销售经理经验\r\n工作责任心强，能承受较大的工作压力', 1, '华海', '021-87654321', 'huahai@mycompany.com', 1242621306, 1242621306, 0, 0, 4, 0, 1, 'job'),
(3, '华东区销售经理', '全职', '3年以上', '本科', '', '', 1, '上海', '本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务', '具有良好的销售和团队管理理念\r\n三年以上销售工作经验，一年以上销售经理经验\r\n工作责任心强，能承受较大的工作压力', 1, '华海', '021-87654321', 'huahai@mycompany.com', 1242621308, 1242621308, 0, 0, 55, 0, 1, 'job'),
(4, '华东区销售经理', '全职', '3年以上', '本科', '', '', 1, '上海', '本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务', '具有良好的销售和团队管理理念三年以上销售工作经验，一年以上销售经理经验工作责任心强，能承受较大的工作压力', 1, '华海', '021-87654321', 'huahai@mycompany.com', 1260151088, 1260151088, 0, 0, 5, 0, 1, 'job'),
(5, '研发项目经理', '全职', '3年以上', '本科', '', '', 1, '上海', '本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务 ', '具有良好的销售和团队管理理念三年以上销售工作经验，一年以上销售经理经验工作责任心强，能承受较大的工作压力', 1, '华海', '021-87654321', 'huahai@mycompany.com', 1260151113, 1263285481, 0, 0, 163, 0, 1, 'job'),
(7, '模具设计总监', '全职', '3年以上', '本科', '', '', 1, '上海', '本公司即将设立上海办事处，招聘华东区销售经理一名，负责拓展华东地区业务 ', '具有良好的销售和团队管理理念三年以上销售工作经验，一年以上销售经理经验工作责任心强，能承受较大的工作压力', 1, '华海', '021-87654321', 'huahai@mycompany.com', 1260151165, 1263285465, 0, 0, 80, 0, 1, 'job');

-- --------------------------------------------------------

--
-- 表的结构 `dev_job_form`
--

CREATE TABLE IF NOT EXISTS `dev_job_form` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `field_caption` varchar(200) NOT NULL DEFAULT '',
  `field_type` int(1) NOT NULL DEFAULT '0',
  `field_size` int(5) NOT NULL DEFAULT '0',
  `field_name` varchar(200) NOT NULL DEFAULT '',
  `field_value` varchar(255) NOT NULL DEFAULT '',
  `field_null` int(1) NOT NULL DEFAULT '0',
  `value_repeat` int(1) NOT NULL DEFAULT '0',
  `field_intro` varchar(255) NOT NULL DEFAULT '',
  `use_field` int(1) NOT NULL DEFAULT '0',
  `moveable` int(1) NOT NULL DEFAULT '0',
  `xuhao` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `dev_job_form`
--

INSERT INTO `dev_job_form` (`id`, `field_caption`, `field_type`, `field_size`, `field_name`, `field_value`, `field_null`, `value_repeat`, `field_intro`, `use_field`, `moveable`, `xuhao`) VALUES
(1, '姓　　名', 1, 200, 'title', '', 1, 1, '', 1, 1, 1),
(2, '教育经历', 2, 399, 'content', '', 1, 1, '', 1, 0, 14),
(3, '出生日期', 1, 200, 'name', '', 1, 1, '', 1, 0, 3),
(4, '性　　别', 5, 50, 'sex', '男;女', 1, 1, '', 1, 0, 2),
(5, '联系电话', 1, 200, 'tel', '', 1, 1, '', 1, 0, 9),
(6, '通信地址', 1, 300, 'address', '', 1, 1, '', 1, 0, 11),
(7, '电子邮箱', 1, 300, 'email', '', 1, 1, '', 1, 0, 12),
(8, '博客/主页', 1, 399, 'url', '', 0, 1, '', 0, 0, 18),
(9, 'QQ/MSN', 1, 399, 'qq', '', 0, 1, '', 0, 0, 19),
(10, '毕业院校', 1, 300, 'company', '', 1, 1, '', 1, 0, 5),
(11, '最高学历', 1, 200, 'company_address', '', 1, 1, '', 1, 0, 6),
(12, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 19),
(13, '手机号码', 1, 200, 'fax', '', 0, 1, '', 1, 0, 10),
(14, '毕业专业', 1, 200, 'products_id', '', 1, 1, '', 1, 0, 7),
(15, '毕业时间', 1, 200, 'products_name', '', 1, 1, '', 1, 0, 8),
(16, '专业特长', 1, 399, 'products_num', '', 1, 1, '', 1, 0, 13),
(19, '婚姻状况', 5, 200, 'custom1', '未婚;已婚', 1, 1, '', 1, 0, 4),
(18, '工作经历', 2, 399, 'custom2', '', 1, 1, '', 1, 0, 15),
(17, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(20, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(21, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(22, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(23, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23);

-- --------------------------------------------------------

--
-- 表的结构 `dev_job_telent`
--

CREATE TABLE IF NOT EXISTS `dev_job_telent` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `jobid` int(6) NOT NULL DEFAULT '0',
  `jobname` char(200) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `sex` varchar(10) NOT NULL DEFAULT '',
  `tel` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `company_address` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(6) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `products_id` varchar(100) NOT NULL DEFAULT '',
  `products_name` varchar(200) NOT NULL DEFAULT '',
  `products_num` varchar(9) NOT NULL DEFAULT '',
  `custom1` text NOT NULL,
  `custom2` text NOT NULL,
  `custom3` text NOT NULL,
  `custom4` text NOT NULL,
  `custom5` text NOT NULL,
  `custom6` text NOT NULL,
  `custom7` text NOT NULL,
  `fileurl` varchar(200) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `stat` int(2) NOT NULL DEFAULT '0',
  `fav` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dev_job_telent`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_member`
--

CREATE TABLE IF NOT EXISTS `dev_member` (
  `memberid` int(12) NOT NULL AUTO_INCREMENT,
  `membertypeid` int(3) NOT NULL DEFAULT '0',
  `membergroupid` int(3) NOT NULL DEFAULT '0',
  `user` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(100) NOT NULL,
  `sex` varchar(20) NOT NULL DEFAULT '',
  `birthday` int(8) NOT NULL DEFAULT '0',
  `zoneid` int(10) NOT NULL DEFAULT '0',
  `catid` int(10) NOT NULL DEFAULT '0',
  `addr` varchar(255) NOT NULL DEFAULT '',
  `tel` varchar(255) NOT NULL DEFAULT '',
  `mov` varchar(255) NOT NULL DEFAULT '',
  `postcode` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT 'http://',
  `passtype` varchar(255) NOT NULL DEFAULT '',
  `passcode` varchar(255) NOT NULL DEFAULT '',
  `qq` varchar(100) NOT NULL DEFAULT '',
  `msn` varchar(100) NOT NULL DEFAULT '',
  `maillist` int(1) NOT NULL DEFAULT '0',
  `bz` text,
  `pname` varchar(30) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `memberface` varchar(100) NOT NULL,
  `nowface` varchar(50) NOT NULL,
  `checked` int(1) NOT NULL DEFAULT '0',
  `rz` int(1) NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL,
  `regtime` int(11) NOT NULL DEFAULT '0',
  `exptime` int(11) NOT NULL DEFAULT '0',
  `account` decimal(12,2) NOT NULL DEFAULT '0.00',
  `paytotal` decimal(12,2) NOT NULL DEFAULT '0.00',
  `buytotal` decimal(12,2) NOT NULL DEFAULT '0.00',
  `cent1` int(10) NOT NULL DEFAULT '0',
  `cent2` int(10) NOT NULL DEFAULT '0',
  `cent3` int(10) NOT NULL DEFAULT '0',
  `cent4` int(10) NOT NULL DEFAULT '0',
  `cent5` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(26) NOT NULL DEFAULT '',
  `logincount` int(20) NOT NULL DEFAULT '0',
  `logintime` int(11) NOT NULL DEFAULT '0',
  `loginip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`memberid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

--
-- 转存表中的数据 `dev_member`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_member_buylist`
--

CREATE TABLE IF NOT EXISTS `dev_member_buylist` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `buyfrom` varchar(50) NOT NULL DEFAULT '',
  `memberid` int(12) NOT NULL DEFAULT '0',
  `orderid` int(12) NOT NULL DEFAULT '0',
  `payid` int(12) NOT NULL DEFAULT '0',
  `paytype` varchar(50) NOT NULL DEFAULT '0',
  `payhb` varchar(30) NOT NULL DEFAULT '',
  `payhl` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `paytotal` decimal(12,2) NOT NULL DEFAULT '0.00',
  `daytime` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `OrderNo` varchar(30) NOT NULL DEFAULT '',
  `logname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_member_buylist`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_member_cat`
--

CREATE TABLE IF NOT EXISTS `dev_member_cat` (
  `catid` int(12) NOT NULL AUTO_INCREMENT,
  `pid` int(12) NOT NULL DEFAULT '0',
  `cat` char(100) NOT NULL DEFAULT '',
  `xuhao` int(4) NOT NULL DEFAULT '0',
  `catpath` char(255) NOT NULL DEFAULT '',
  `nums` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_member_cat`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_member_centlog`
--

CREATE TABLE IF NOT EXISTS `dev_member_centlog` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `memberid` int(12) NOT NULL DEFAULT '0',
  `event` int(5) NOT NULL DEFAULT '0',
  `dtime` int(11) NOT NULL DEFAULT '0',
  `cent1` int(10) NOT NULL DEFAULT '0',
  `cent2` int(10) NOT NULL DEFAULT '0',
  `cent3` int(10) NOT NULL DEFAULT '0',
  `cent4` int(10) NOT NULL DEFAULT '0',
  `cent5` int(10) NOT NULL DEFAULT '0',
  `memo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `dev_member_centlog`
--

INSERT INTO `dev_member_centlog` (`id`, `memberid`, `event`, `dtime`, `cent1`, `cent2`, `cent3`, `cent4`, `cent5`, `memo`) VALUES
(1, 153, 111, 1237648810, 10, 0, 0, 0, 0, ''),
(2, 153, 131, 1237648965, 5, 0, 0, 0, 0, ''),
(3, 153, 181, 1237650958, 10, 0, 0, 0, 0, ''),
(4, 150, 114, 1237711955, 1, 0, 0, 0, 0, ''),
(5, 150, 114, 1237781183, 1, 0, 0, 0, 0, ''),
(6, 150, 114, 1238228910, 1, 0, 0, 0, 0, ''),
(7, 150, 121, 1238230484, 10, 0, 0, 0, 0, ''),
(8, 150, 114, 1238260989, 1, 0, 0, 0, 0, ''),
(9, 154, 111, 1238290627, 10, 0, 0, 0, 0, ''),
(10, 150, 114, 1238424185, 1, 0, 0, 0, 0, ''),
(11, 150, 114, 1238426835, 1, 0, 0, 0, 0, ''),
(12, 150, 114, 1238427138, 1, 0, 0, 0, 0, ''),
(13, 150, 114, 1238896776, 1, 0, 0, 0, 0, ''),
(14, 150, 114, 1238897444, 1, 0, 0, 0, 0, ''),
(15, 150, 131, 1238898529, 5, 0, 0, 0, 0, ''),
(16, 150, 114, 1241752690, 1, 0, 0, 0, 0, ''),
(17, 150, 114, 1241932574, 1, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_centrule`
--

CREATE TABLE IF NOT EXISTS `dev_member_centrule` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `coltype` varchar(30) NOT NULL,
  `name` char(100) NOT NULL DEFAULT '',
  `event` int(5) NOT NULL DEFAULT '0',
  `cent1` int(10) NOT NULL DEFAULT '0',
  `cent2` int(10) NOT NULL DEFAULT '0',
  `cent3` int(10) NOT NULL DEFAULT '0',
  `cent4` int(10) NOT NULL DEFAULT '0',
  `cent5` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- 转存表中的数据 `dev_member_centrule`
--

INSERT INTO `dev_member_centrule` (`id`, `coltype`, `name`, `event`, `cent1`, `cent2`, `cent3`, `cent4`, `cent5`) VALUES
(1, 'member', '新会员注册', 111, 10, 0, 0, 0, 0),
(6, 'member', '加好友', 112, 1, 0, 0, 0, 0),
(7, 'member', '发站内短信', 113, 1, 0, 0, 0, 0),
(21, 'member', '会员登录', 114, 1, 0, 0, 0, 0),
(2, 'news', '发布文章', 121, 10, 0, 0, 0, 0),
(9, 'news', '文章被支持', 122, 0, 1, 0, 0, 0),
(10, 'news', '文章被反对', 123, 0, -1, 0, 0, 0),
(22, 'news', '文章被版主推荐', 124, 20, 0, 0, 0, 0),
(23, 'news', '文章被版主删除并扣分', 125, -20, 0, 0, 0, 0),
(5, 'comment', '发表点评', 131, 5, 0, 0, 0, 0),
(8, 'comment', '回复点评', 132, 1, 0, 0, 0, 0),
(28, 'comment', '点评被版主推荐', 134, 20, 0, 0, 0, 0),
(29, 'comment', '点评被版主删除并扣分', 135, -20, 0, 0, 0, 0),
(30, 'product', '发布产品', 181, 10, 0, 0, 0, 0),
(31, 'product', '产品被支持', 182, 0, 1, 0, 0, 0),
(32, 'product', '产品被反对', 183, 0, -1, 0, 0, 0),
(33, 'product', '产品被版主推荐', 184, 20, 0, 0, 0, 0),
(34, 'product', '产品被版主删除并扣分', 185, -20, 0, 0, 0, 0),
(35, 'photo', '发布图片', 151, 10, 0, 0, 0, 0),
(36, 'photo', '图片被支持', 152, 0, 1, 0, 0, 0),
(37, 'photo', '图片被反对', 153, 0, -1, 0, 0, 0),
(38, 'photo', '图片被版主推荐', 154, 20, 0, 0, 0, 0),
(39, 'photo', '图片被版主删除并扣分', 155, -20, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_centset`
--

CREATE TABLE IF NOT EXISTS `dev_member_centset` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `centname1` char(50) NOT NULL,
  `centname2` char(50) NOT NULL,
  `centname3` char(50) NOT NULL,
  `centname4` char(50) NOT NULL,
  `centname5` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dev_member_centset`
--

INSERT INTO `dev_member_centset` (`id`, `centname1`, `centname2`, `centname3`, `centname4`, `centname5`) VALUES
(1, '经验', '人气', '悬赏', '金币', '消费');

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_config`
--

CREATE TABLE IF NOT EXISTS `dev_member_config` (
  `xuhao` int(3) NOT NULL DEFAULT '0',
  `vname` varchar(50) NOT NULL DEFAULT '',
  `settype` varchar(30) NOT NULL DEFAULT 'input',
  `colwidth` varchar(3) NOT NULL DEFAULT '30',
  `variable` varchar(32) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dev_member_config`
--

INSERT INTO `dev_member_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '模块频道名称', 'input', '30', 'ChannelName', '会员中心', '本模块对应的频道名称；用于显示在当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(3, '会员网名昵称是否允许重复', 'YN', '1', 'DblPname', '1', '会员注册和修改资料时校验网名昵称是否允许重复'),
(4, 'UCenter 会员接口是否启用', 'YN', '1', 'UC_OPEN', '0', 'UCenter会员接口包括会员注册、会员登录接口；启用本接口前请先上传UCenter会员接口程序'),
(5, 'UCenter 应用 ID', 'input', '30', 'UC_APPID', '2', '该值为PHPWEB在 UCenter 的应用 ID，请填写你在UCenter将PHPWEB添加应用后实际获得的应用ID'),
(6, 'UCenter 通信密钥', 'input', '30', 'UC_KEY', 'PWUC2009', '通信密钥用于在 UCenter 和 PHPWEB 之间传输信息的加密，可包含任何字母及数字，请在 UCenter 与 PHPWEB 设置完全相同的通讯密钥，以确保两套系统能够正常通信'),
(7, 'UCenter 访问地址', 'input', '30', 'UC_API', 'http://discuz.phpweb.net/uc_server', '您的 UCenter 访问地址，不正确的设置可能导致网站功能异常，请小心修改。格式: http://www.sitename.com/uc_server (最后不要加''/'')'),
(7, 'UCenter IP 地址', 'input', '30', 'UC_IP', '', '如果您的服务器无法通过域名访问 UCenter，可以输入 UCenter 服务器的 IP 地址'),
(8, 'UCenter 数据库服务器', 'input', '30', 'UC_DBHOST', 'localhost', '可以是本地也可以是远程数据库服务器，如果 MySQL 端口不是默认的 3306，请填写如下形式：127.0.0.1:6033'),
(9, 'UCenter 数据库用户名', 'input', '30', 'UC_DBUSER', 'root', ''),
(10, 'UCenter 数据库密码', 'input', '30', 'UC_DBPW', '123456', ''),
(12, 'UCenter 数据库名', 'input', '30', 'UC_DBNAME', 'dbdiscuz', ''),
(13, 'UCenter 数据表前缀', 'input', '30', 'UC_DBTABLEPRE', 'cdb_uc_', '请填入您的UCenter数据表前缀，注意格式正确；如果是直接安装UCENTER，表前缀是一个“_”，如果是和discuz!一起安装的，则是带两个“_”的完整前缀'),
(14, 'UCenter 数据库编码', 'input', '30', 'UC_DBCHARSET', 'utf8', 'UCenter的数据库编码'),
(15, 'UCenter 的字符集', 'input', '30', 'UC_CHARSET', 'utf-8', ''),
(17, 'UCenter 用户自动激活时对应的会员类型', 'MTYPE', '30', 'UC_MEMBERTYPEID', '26', '用户登录时，在UCenter通过验证的用户（来自其他应用的用户），如果本系统没有该会员，自动增加会员时对应的会员类型');

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_defaultrights`
--

CREATE TABLE IF NOT EXISTS `dev_member_defaultrights` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `membertypeid` int(12) NOT NULL DEFAULT '0',
  `secureid` int(12) NOT NULL DEFAULT '0',
  `securetype` char(100) NOT NULL DEFAULT '',
  `secureset` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=506 ;

--
-- 转存表中的数据 `dev_member_defaultrights`
--

INSERT INTO `dev_member_defaultrights` (`id`, `membertypeid`, `secureid`, `securetype`, `secureset`) VALUES
(505, 26, 133, 'func', '0'),
(504, 26, 132, 'func', '0'),
(502, 26, 127, 'func', '0'),
(503, 26, 131, 'func', '0'),
(501, 26, 126, 'class', ':1:2:'),
(500, 26, 123, 'func', '0'),
(499, 26, 122, 'func', '0'),
(498, 26, 121, 'func', '0'),
(497, 26, 114, 'func', '0'),
(493, 26, 101, 'con', '1'),
(494, 26, 111, 'func', '0'),
(495, 26, 112, 'func', '0'),
(496, 26, 113, 'func', '0');

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_fav`
--

CREATE TABLE IF NOT EXISTS `dev_member_fav` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `memberid` int(12) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `dev_member_fav`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_member_friends`
--

CREATE TABLE IF NOT EXISTS `dev_member_friends` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `memberid` int(12) NOT NULL DEFAULT '0',
  `fid` int(12) NOT NULL DEFAULT '0',
  `fgroup` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_member_friends`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_member_group`
--

CREATE TABLE IF NOT EXISTS `dev_member_group` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `membergroup` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dev_member_group`
--

INSERT INTO `dev_member_group` (`id`, `membergroup`) VALUES
(1, '个人'),
(2, '企业');

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_msn`
--

CREATE TABLE IF NOT EXISTS `dev_member_msn` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `tomemberid` int(12) NOT NULL DEFAULT '0',
  `frommemberid` int(12) NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  `dtime` int(11) NOT NULL DEFAULT '0',
  `iflook` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dev_member_msn`
--

INSERT INTO `dev_member_msn` (`id`, `tomemberid`, `frommemberid`, `body`, `dtime`, `iflook`) VALUES
(2, 154, 0, 'sssssss,您好!\r\n\r\n感谢您在本站注册!\r\n\r\n会员名: sssssss\r\n密码: sssss\r\n\r\n网址:http://', 1238290626, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_notice`
--

CREATE TABLE IF NOT EXISTS `dev_member_notice` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `membertypeid` int(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `dtime` int(11) DEFAULT NULL,
  `xuhao` int(5) DEFAULT NULL,
  `cl` int(20) DEFAULT NULL,
  `ifnew` int(1) DEFAULT NULL,
  `ifred` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `dev_member_notice`
--

INSERT INTO `dev_member_notice` (`id`, `membertypeid`, `title`, `body`, `dtime`, `xuhao`, `cl`, `ifnew`, `ifred`) VALUES
(1, 0, '这是测试的一条会员公告', '这是测试的一条会员公告', 1220596305, 0, 2, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_nums`
--

CREATE TABLE IF NOT EXISTS `dev_member_nums` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `memberid` int(50) DEFAULT NULL,
  `secureid` int(50) DEFAULT NULL,
  `nums` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_member_nums`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_member_pay`
--

CREATE TABLE IF NOT EXISTS `dev_member_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(20) NOT NULL DEFAULT '0',
  `payid` int(11) NOT NULL DEFAULT '0',
  `payhb` varchar(30) NOT NULL DEFAULT '',
  `payhl` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `oof` decimal(12,2) NOT NULL DEFAULT '0.00',
  `method` varchar(200) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `fpnum` varchar(100) NOT NULL DEFAULT '',
  `memo` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `logname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_member_pay`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_member_paycenter`
--

CREATE TABLE IF NOT EXISTS `dev_member_paycenter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pcenter` varchar(100) NOT NULL DEFAULT '',
  `pcentertype` int(2) NOT NULL DEFAULT '0',
  `pcenteruser` varchar(100) NOT NULL DEFAULT '',
  `pcenterkey` text,
  `key1` text,
  `key2` text,
  `hbtype` varchar(255) NOT NULL DEFAULT '',
  `postfile` varchar(100) NOT NULL DEFAULT '',
  `recfile` varchar(100) NOT NULL DEFAULT '',
  `ifuse` int(1) NOT NULL DEFAULT '0',
  `ifback` int(1) NOT NULL DEFAULT '0',
  `intro` text,
  `xuhao` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_member_paycenter`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_member_regstep`
--

CREATE TABLE IF NOT EXISTS `dev_member_regstep` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `membertypeid` int(5) NOT NULL DEFAULT '0',
  `regstep` varchar(30) NOT NULL,
  `stepname` varchar(50) NOT NULL,
  `xuhao` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- 转存表中的数据 `dev_member_regstep`
--

INSERT INTO `dev_member_regstep` (`id`, `membertypeid`, `regstep`, `stepname`, `xuhao`) VALUES
(1, 0, 'person', '头像签名设置', 1),
(2, 0, 'detail', '会员资料设置', 2),
(3, 0, 'contact', '填写联系信息', 3),
(66, 26, 'contact', '填写联系信息', 3),
(65, 26, 'detail', '会员资料设置', 2),
(64, 26, 'person', '头像签名设置', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_rights`
--

CREATE TABLE IF NOT EXISTS `dev_member_rights` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `memberid` int(12) NOT NULL DEFAULT '0',
  `secureid` int(12) NOT NULL DEFAULT '0',
  `securetype` char(100) NOT NULL,
  `secureset` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4653 ;

--
-- 转存表中的数据 `dev_member_rights`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_member_secure`
--

CREATE TABLE IF NOT EXISTS `dev_member_secure` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `coltype` varchar(30) NOT NULL,
  `securename` char(100) NOT NULL DEFAULT '',
  `securetype` char(30) NOT NULL DEFAULT '',
  `xuhao` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=190 ;

--
-- 转存表中的数据 `dev_member_secure`
--

INSERT INTO `dev_member_secure` (`id`, `coltype`, `securename`, `securetype`, `xuhao`) VALUES
(101, 'base', '内容阅读权限级别', 'con', 1),
(111, 'member', '会员登录帐号设置', 'func', 2),
(112, 'member', '会员头像签名设置', 'func', 3),
(113, 'member', '会员个人资料修改', 'func', 4),
(114, 'member', '会员联系信息修改', 'func', 5),
(121, 'news', '文章发布权限', 'func', 6),
(122, 'news', '文章修改权限', 'func', 7),
(123, 'news', '文章发布/修改免审核权限', 'func', 8),
(124, 'news', '文章图片上传权限', 'func', 5),
(125, 'news', '文章附件上传权限', 'func', 8),
(126, 'news', '文章公共分类投稿授权', 'class', 12),
(127, 'news', '文章自定义分类权限', 'func', 9),
(129, 'news', '文章版主权限(推荐/删除)', 'banzhu', 9),
(131, 'comment', '点评发表权限', 'func', 10),
(132, 'comment', '点评回复权限', 'func', 11),
(133, 'comment', '点评免审核权限', 'func', 12),
(134, 'comment', '点评图片上传权限', 'func', 4),
(139, 'comment', '点评版主权限(推荐/删除)', 'banzhu', 9),
(181, 'product', '会员产品发布权限', 'func', 6),
(182, 'product', '会员产品修改权限', 'func', 7),
(183, 'product', '会员产品发布/修改免审核权限', 'func', 8),
(184, 'product', '会员产品介绍编辑器图片上传权限', 'func', 9),
(186, 'product', '会员产品公共分类发布授权', 'class', 11),
(187, 'product', '会员产品自定义分类权限', 'func', 9),
(189, 'product', '产品版主管理权限(推荐/删除)', 'banzhu', 9),
(151, 'photo', '图片发布权限', 'func', 6),
(152, 'photo', '图片修改权限', 'func', 7),
(153, 'photo', '图片发布/修改免审核权限', 'func', 8),
(156, 'photo', '图片公共分类投稿授权', 'class', 11),
(157, 'photo', '图片自定义分类权限', 'func', 9),
(159, 'photo', '图片版主权限(推荐/删除)', 'banzhu', 9);

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_type`
--

CREATE TABLE IF NOT EXISTS `dev_member_type` (
  `membertypeid` int(6) NOT NULL AUTO_INCREMENT,
  `membertype` varchar(100) DEFAULT NULL,
  `membergroupid` int(3) NOT NULL DEFAULT '0',
  `ifcanreg` int(1) DEFAULT NULL,
  `ifchecked` int(1) DEFAULT NULL,
  `regxy` text,
  `regmail` text,
  `expday` int(8) DEFAULT NULL,
  `startcent` int(20) DEFAULT NULL,
  `endcent` int(20) DEFAULT NULL,
  `menugroupid` int(5) NOT NULL DEFAULT '4',
  PRIMARY KEY (`membertypeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `dev_member_type`
--

INSERT INTO `dev_member_type` (`membertypeid`, `membertype`, `membergroupid`, `ifcanreg`, `ifchecked`, `regxy`, `regmail`, `expday`, `startcent`, `endcent`, `menugroupid`) VALUES
(26, '免费用户', 1, 1, 1, '会员注册协议\r\n\r\n1.\r\n2.\r\n3.\r\n4.\r\n5.\r\n', '{#user#},您好!\r\n\r\n感谢您在本站注册!\r\n\r\n会员名: {#user#}\r\n密码: {#password#}\r\n\r\n网址:http://', 0, 0, 0, 4);

-- --------------------------------------------------------

--
-- 表的结构 `dev_member_zone`
--

CREATE TABLE IF NOT EXISTS `dev_member_zone` (
  `catid` int(12) NOT NULL AUTO_INCREMENT,
  `pid` int(12) DEFAULT NULL,
  `cat` char(50) DEFAULT NULL,
  `xuhao` int(4) DEFAULT NULL,
  `catpath` char(255) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `dev_member_zone`
--

INSERT INTO `dev_member_zone` (`catid`, `pid`, `cat`, `xuhao`, `catpath`) VALUES
(1, 0, '北京', 1, '0001:'),
(2, 0, '上海', 2, '0002:'),
(3, 0, '天津', 3, '0003:'),
(4, 0, '重庆', 4, '0004:'),
(5, 0, '浙江', 5, '0005:'),
(6, 0, '江苏', 6, '0006:'),
(7, 0, '广东', 7, '0007:'),
(8, 5, '杭州', 1, '0005:0008:'),
(9, 5, '嘉兴', 2, '0005:0009:'),
(10, 6, '南京', 1, '0006:0010:'),
(11, 6, '苏州', 2, '0006:0011:'),
(12, 7, '广州', 1, '0007:0012:'),
(13, 7, '深圳', 2, '0007:0013:'),
(21, 5, '宁波', 3, '0005:0021:'),
(26, 5, '舟山', 8, '0005:0026:'),
(25, 5, '金华', 7, '0005:0025:'),
(23, 5, '温州', 5, '0005:0023:'),
(22, 5, '湖州', 4, '0005:0022:'),
(24, 5, '台州', 6, '0005:0024:');

-- --------------------------------------------------------

--
-- 表的结构 `dev_menu`
--

CREATE TABLE IF NOT EXISTS `dev_menu` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `groupid` int(6) NOT NULL DEFAULT '1',
  `pid` int(6) NOT NULL DEFAULT '0',
  `menu` varchar(50) NOT NULL DEFAULT '',
  `linktype` int(1) NOT NULL DEFAULT '1',
  `coltype` varchar(30) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '',
  `ifshow` int(1) NOT NULL DEFAULT '0',
  `xuhao` int(4) NOT NULL DEFAULT '0',
  `target` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=367 ;

--
-- 转存表中的数据 `dev_menu`
--

INSERT INTO `dev_menu` (`id`, `groupid`, `pid`, `menu`, `linktype`, `coltype`, `folder`, `url`, `ifshow`, `xuhao`, `target`) VALUES
(364, 3, 0, '人才招聘', 0, 'job', 'page/job/job.php', 'http://', 1, 7, '_self'),
(80, 1, 0, '公司简介', 1, '', 'page/html/company.php', 'http://', 1, 2, '_self'),
(83, 1, 0, '网站首页', 0, 'index', '', 'http://', 1, 1, '_self'),
(152, 3, 0, '关于我们', 1, '', 'page/html/company.php', 'http://', 1, 1, '_self'),
(153, 3, 0, '联系方式', 1, '', 'page/service/contact.php', 'http://', 1, 2, '_self'),
(320, 1, 0, '经典案例', 1, '', 'product/class/?124.html', 'http://', 1, 6, '_self'),
(303, 3, 0, '加盟申请', 1, '', 'page/join/application.php', 'http://', 1, 5, '_self'),
(305, 1, 0, '产品系列', 1, '', 'product/class', 'http://', 1, 4, '_self'),
(317, 3, 0, '友情链接', 1, '', 'advs/link/', 'http://', 1, 13, '_self'),
(360, 3, 0, '门店展示', 1, '', 'page/join/display.php', 'http://', 1, 6, '_self'),
(319, 1, 0, '品牌加盟', 1, '', 'page/join/notice.php', 'http://', 1, 7, '_self'),
(359, 3, 0, '给我留言', 1, '', 'page/service/feedback.php', 'http://', 1, 3, '_self'),
(362, 1, 0, '客户服务', 1, '', 'page/service/service.php', 'http://', 1, 8, '_self'),
(366, 1, 0, '新闻动态', 1, '', 'news/class/', 'http://', 1, 3, '_self');

-- --------------------------------------------------------

--
-- 表的结构 `dev_menu_group`
--

CREATE TABLE IF NOT EXISTS `dev_menu_group` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL DEFAULT '',
  `xuhao` int(5) NOT NULL DEFAULT '0',
  `moveable` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- 转存表中的数据 `dev_menu_group`
--

INSERT INTO `dev_menu_group` (`id`, `groupname`, `xuhao`, `moveable`) VALUES
(1, '频道导航菜单', 1, 0),
(2, '顶部导航菜单', 2, 0),
(3, '底部导航菜单', 3, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_news_cat`
--

CREATE TABLE IF NOT EXISTS `dev_news_cat` (
  `catid` int(12) NOT NULL AUTO_INCREMENT,
  `pid` int(12) NOT NULL DEFAULT '0',
  `cat` char(100) NOT NULL DEFAULT '',
  `xuhao` int(12) NOT NULL DEFAULT '0',
  `catpath` char(255) NOT NULL DEFAULT '',
  `nums` int(20) NOT NULL DEFAULT '0',
  `tj` int(1) NOT NULL DEFAULT '0',
  `ifchannel` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- 转存表中的数据 `dev_news_cat`
--

INSERT INTO `dev_news_cat` (`catid`, `pid`, `cat`, `xuhao`, `catpath`, `nums`, `tj`, `ifchannel`) VALUES
(86, 0, '最新动态', 2, '0086:', 0, 0, 0),
(99, 0, '业界资讯', 5, '0099:', 0, 0, 0),
(100, 99, '家具知识', 1, '0099:0100:', 0, 0, 0),
(101, 99, '养护指导', 2, '0099:0101:', 0, 0, 0),
(102, 86, '公司新闻', 1, '0086:0102:', 0, 0, 0),
(103, 86, '行业动态', 2, '0086:0103:', 0, 0, 0),
(104, 86, '促销活动', 3, '0086:0104:', 0, 0, 0),
(105, 0, '橱柜知识', 6, '0105:', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_news_con`
--

CREATE TABLE IF NOT EXISTS `dev_news_con` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `catid` int(12) NOT NULL DEFAULT '0',
  `catpath` varchar(255) NOT NULL DEFAULT '',
  `pcatid` int(12) NOT NULL DEFAULT '0',
  `contype` varchar(20) NOT NULL DEFAULT 'news',
  `title` varchar(255) NOT NULL DEFAULT '',
  `body` mediumtext,
  `dtime` int(11) DEFAULT '0',
  `xuhao` int(5) DEFAULT '0',
  `cl` int(20) DEFAULT NULL,
  `tj` int(1) DEFAULT NULL,
  `iffb` int(1) DEFAULT '0',
  `ifbold` int(1) DEFAULT '0',
  `ifred` varchar(20) DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `src` varchar(150) NOT NULL DEFAULT '',
  `uptime` int(11) DEFAULT '0',
  `author` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `memberid` varchar(100) DEFAULT NULL,
  `proj` varchar(255) NOT NULL DEFAULT '',
  `secure` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL DEFAULT '',
  `prop2` char(255) NOT NULL DEFAULT '',
  `prop3` char(255) NOT NULL DEFAULT '',
  `prop4` char(255) NOT NULL DEFAULT '',
  `prop5` char(255) NOT NULL DEFAULT '',
  `prop6` char(255) NOT NULL DEFAULT '',
  `prop7` char(255) NOT NULL DEFAULT '',
  `prop8` char(255) NOT NULL DEFAULT '',
  `prop9` char(255) NOT NULL DEFAULT '',
  `prop10` char(255) NOT NULL DEFAULT '',
  `prop11` char(255) NOT NULL DEFAULT '',
  `prop12` char(255) NOT NULL DEFAULT '',
  `prop13` char(255) NOT NULL DEFAULT '',
  `prop14` char(255) NOT NULL DEFAULT '',
  `prop15` char(255) NOT NULL DEFAULT '',
  `prop16` char(255) NOT NULL DEFAULT '',
  `prop17` char(255) NOT NULL DEFAULT '',
  `prop18` char(255) NOT NULL DEFAULT '',
  `prop19` char(255) NOT NULL DEFAULT '',
  `prop20` char(255) NOT NULL DEFAULT '',
  `fileurl` varchar(100) NOT NULL,
  `tourl` varchar(255) NOT NULL,
  `downcount` int(10) NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL,
  `zhichi` int(5) NOT NULL DEFAULT '0',
  `fandui` int(5) NOT NULL DEFAULT '0',
  `tplog` text NOT NULL,
  `downcentid` int(1) NOT NULL DEFAULT '1',
  `downcent` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=382 ;

--
-- 转存表中的数据 `dev_news_con`
--

INSERT INTO `dev_news_con` (`id`, `catid`, `catpath`, `pcatid`, `contype`, `title`, `body`, `dtime`, `xuhao`, `cl`, `tj`, `iffb`, `ifbold`, `ifred`, `type`, `src`, `uptime`, `author`, `source`, `memberid`, `proj`, `secure`, `memo`, `prop1`, `prop2`, `prop3`, `prop4`, `prop5`, `prop6`, `prop7`, `prop8`, `prop9`, `prop10`, `prop11`, `prop12`, `prop13`, `prop14`, `prop15`, `prop16`, `prop17`, `prop18`, `prop19`, `prop20`, `fileurl`, `tourl`, `downcount`, `tags`, `zhichi`, `fandui`, `tplog`, `downcentid`, `downcent`) VALUES
(320, 102, '0086:0102:', 0, 'news', '全面实施ISO9000国际质量管理和质量保证体系', '<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p></p>', 1260424743, 0, 32, 0, 1, 0, '0', 'gif', '', 1264389747, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(321, 102, '0086:0102:', 0, 'news', '全面实施国际质量管理和质量保证体系司全面国际质量管理和质量保证体系', '<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>', 1260424795, 0, 1, 0, 1, 0, '0', 'gif', '', 1264389720, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(335, 102, '0086:0102:', 0, 'news', '国际质量管理和质量保证体系国际质量管理和质量保证体系', '<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>', 1260865312, 0, 17, 0, 1, 0, '0', 'gif', '', 1264389754, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(358, 103, '0086:0103:', 0, 'news', '升级五金配置 赠送石英石台面', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 升级五金配置 赠送石英石台面升级五金配置 赠送石英石台面升级五金配置 赠送石英石台面升级五金配置 赠送石英石台面升级五金配置 赠送石英石台面升级五金配置 赠送石英石台面', 1262763747, 0, 22, 0, 1, 0, '0', 'gif', '', 1292825008, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(336, 102, '0086:0102:', 0, 'news', '公司全面实施国际质量管理和质量保证体系司全面国际质量管', '<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>', 1260865318, 0, 14, 0, 1, 0, '0', 'gif', '', 1264389711, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(337, 103, '0086:0103:', 0, 'news', ' 将于上海与世界博览会同时期召开上海家具展将于上海与世界博览会同时期召开', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第八届中国上海国际家具展览会将于2010年6月2日至4日在上海新国际博览中心召开。本届展会以“家具还原生活的本色”为主题，科学合理的全面传播新的市场理念，为家具行业提供一个更专业、更广泛的宣传与交流平台。 　　上海作为长三角经济圈的龙头，房地产市场活跃、消费成熟，是商家打造品牌、拓展业务、提升档次的理想舞台，在这块庞大的市场中蕴藏着无限商机。上海作为我国的经济中心、金融中心、外贸中心、航运中心，自然成为吸引全球关注的焦点，加之上海辐射的周边城市，高收入人群云集、消费能量巨大，无疑对中国家具同仁们有着惊人的吸引力，可谓提升产品附加值、提升企业品牌竞争力最有价值的市场。本届展会恰逢上海世博会期间，国内外人潮涌动、客商云集，必定会掀起一股新的商业巨浪。', 1260865325, 0, 11, 0, 1, 0, '0', 'gif', '', 1264394560, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(338, 102, '0086:0102:', 0, 'news', '管理和质量保证体系国际质量管理和质量保证体系国际质量', '<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>', 1260865339, 0, 19, 0, 1, 0, '0', 'gif', '', 1264389764, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(339, 102, '0086:0102:', 0, 'news', '发现最美的情调舞台', '发现最美的情调舞台发现最美的情调舞台发现最美的情调舞台发现最美的情调舞台发现最美的情调舞台发现最美的情调舞台发现最美的情调舞台发现最美的情调舞台发现最美的情调舞台 ymjd.cn', 1260865356, 0, 18, 0, 1, 0, '0', 'gif', '', 1358499938, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(346, 102, '0086:0102:', 0, 'news', '国际质量管理和质量保证体系国际质量体系', '<div class=con id=con>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p>\r\n<p>公司全面实施ISO9000、2000国际质量管理和质量保证体系</p></div>', 1262064629, 0, 46, 0, 1, 0, '0', 'gif', '', 1264389741, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(366, 102, '0086:0102:', 0, 'news', '橱柜品牌进军家居定制行业', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 橱柜品牌进军家居定制行业', 1262764291, 0, 26, 0, 1, 0, '0', 'gif', '', 1292824960, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(376, 100, '0099:0100:', 0, 'news', '购买板式家具以及推拉门者必读购买板式家具以及推拉门者必读', '1、衣柜：根据需要量身定做 2、入墙衣柜： 在卧室里组合衣柜是那种把一面墙给 封闭起来做成的衣柜，衣柜的大小可依自家墙体的长短而定。 3、步入式衣帽间：一般是一个封闭的空间，只有一堆衣柜和一个可以换衣服或是挑衣服的地方；如果卧室的面积足够大，就可以设计成一个封闭的小屋来摆放衣物，这就形成了步入式衣帽间。步入式衣帽间是女人最钟爱的，因为她们对房间内的储物空间有着非常大的需求，合理设计有限空间是非常重要的。衣帽间的内部形式根据现有的空间格局，可分为：正方形多采用Ｕ形排布；深长形的平行排布较好；宽长形，适合Ｌ形排布。 （1） 柜体式：传统样式储量最大。“柜体式”是最传统的更衣间形式，也最能容纳衣物。所有服饰都能在其中找到自己合适的“家”。“柜体式”更衣间最适合衣物数量较多的家庭使用，它能把所有家庭成员的衣物分门别类地储纳起来。 （2） 结构式：轻盈简约取放便捷。“结构式”的更衣间取消了柜体的侧板，代之以现代感极强的金属立柱。它的款式更加现代美观，更符合年轻人的审美观念，取放衣物也比较便捷。不过这种更衣间的储物量要稍小一些，其承重量不如“柜体式”更衣间，因此这种更衣间比较适合衣物数量适中，种类比较少的两人世界或三口之家。 ', 1264387894, 0, 8, 0, 1, 0, '0', 'gif', '', 1264392000, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(377, 101, '0099:0101:', 0, 'news', '如何保养木制家具如何保养木制家具如何保养木制家具', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 俗语说：“秋高气爽”,秋天的干燥气候是众人都有体会,人们在精心呵护自己皮肤的同时，也要注意保养身边的家具。秋天空气湿度相对小，室内比较干燥，其实保养起来相对容易。对此，有关专家支出6招保养方法。 　　 -要避免阳光直射。尽管秋日的阳光没有夏季猛烈,但长时间的日晒加上本来就干燥的气候，木质过于干燥，容易出现裂缝和局部褪色。 　　-要防止灰尘。一般用红木、柚木、橡木、胡桃木等制作的比较高档的原木家具都有精美的雕花装饰，如不能定期清洁除灰，细小缝隙中容易积灰影响美观，同时灰尘更是让木制家具迅速“变老”的杀手。 　　-要保持滋润。木制家具的滋润不能靠水分来提供，也就是说不能光用湿漉漉的抹布简单地擦拭，而是应该选用专业的家具护理精油，它蕴含容易被木质纤维吸收的天然香橙油，可锁住木质中的水分，防止木质干裂变形，同时滋养木质，由里到外令木质家具重放光彩，延长家具的使用寿命。 　　-避免硬物划伤。打扫卫生时勿使清洁工具触及家具。平时也要注意，不要让坚硬的金属制品或其他利器碰撞家具，以保护其表面不出现硬伤痕迹以及挂丝等现象。 　　-不宜放在十分潮湿的地方，以免木材遇湿膨胀，时间长了容易腐烂，抽屉也拉不开。 ', 1264391960, 0, 4, 0, 1, 0, '0', 'gif', '', 1264393097, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(378, 100, '0099:0100:', 0, 'news', '春季家具选购的十大原则春季家具选购的十大原则', '1.选购家具前，先要量一下居室内的空间尺寸(长、宽、高)，然后设计好居室的总体布局和所需的家具品种、功能、款式、色调、数量，这样选购时就目标明确，省时省力。\r\n\r\n2.新婚家具不但要式样新颖，还要考虑到将来小宝宝出世后的生活。比如，装在矮柜上的玻璃门很可能成为小孩的攻击目标，所以最好选择木门。\r\n\r\n\r\n3.“摩登”家具式样容易过时，相反，传统家具的文化感染力历久不衰，且具有保值性。\r\n\r\n4.淡颜色的家具适用小房间或者采光条件较差的朝北房间等，照明较好的房间可选择深颜色的家具，可显出古朴、典雅的气氛。\r\n\r\n5.年老者不要赶“时髦”购买高大的组合柜，虽然高柜节约了空间，但爬高取物颇不方便。\r\n\r\n6.家具在舍室的占地面积以45%为宜，还要留一部分地方放置家用电器及衣帽架等生活用具。\r\n\r\n7.家具的平、立面尺度要和房间面积、高度相吻合，以免所购家具放不进，或破坏了已构思好的平面布局。\r\n\r\n8.除了整套家具外，还要配置餐桌、餐椅、沙发茶几等家具。所以，事先要了解配置单件家具的颜色、式样和规格，免得日后难以配套。', 1264392068, 0, 2, 0, 1, 0, '0', 'gif', '', 1264392068, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(379, 100, '0099:0100:', 0, 'news', '家具选购的十大原则春季家具选购的十大原则', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.选购家具前，先要量一下居室内的空间尺寸(长、宽、高)，然后设计好居室的总体布局和所需的家具品种、功能、款式、色调、数量，这样选购时就目标明确，省时省力。 2.新婚家具不但要式样新颖，还要考虑到将来小宝宝出世后的生活。比如，装在矮柜上的玻璃门很可能成为小孩的攻击目标，所以最好选择木门。 3.“摩登”家具式样容易过时，相反，传统家具的文化感染力历久不衰，且具有保值性。 4.淡颜色的家具适用小房间或者采光条件较差的朝北房间等，照明较好的房间可选择深颜色的家具，可显出古朴、典雅的气氛。 5.年老者不要赶“时髦”购买高大的组合柜，虽然高柜节约了空间，但爬高取物颇不方便。 6.家具在舍室的占地面积以45%为宜，还要留一部分地方放置家用电器及衣帽架等生活用具。 7.家具的平、立面尺度要和房间面积、高度相吻合，以免所购家具放不进，或破坏了已构思好的平面布局。 8.除了整套家具外，还要配置餐桌、餐椅、沙发茶几等家具。所以，事先要了解配置单件家具的颜色、式样和规格，免得日后难以配套。 ', 1264392851, 0, 0, 0, 1, 0, '0', 'gif', '', 1264392866, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(380, 100, '0099:0100:', 0, 'news', '季家具选购的十大原则春季家具选购的十大原则', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.选购家具前，先要量一下居室内的空间尺寸(长、宽、高)，然后设计好居室的总体布局和所需的家具品种、功能、款式、色调、数量，这样选购时就目标明确，省时省力。 2.新婚家具不但要式样新颖，还要考虑到将来小宝宝出世后的生活。比如，装在矮柜上的玻璃门很可能成为小孩的攻击目标，所以最好选择木门。 3.“摩登”家具式样容易过时，相反，传统家具的文化感染力历久不衰，且具有保值性。 4.淡颜色的家具适用小房间或者采光条件较差的朝北房间等，照明较好的房间可选择深颜色的家具，可显出古朴、典雅的气氛。 5.年老者不要赶“时髦”购买高大的组合柜，虽然高柜节约了空间，但爬高取物颇不方便。 6.家具在舍室的占地面积以45%为宜，还要留一部分地方放置家用电器及衣帽架等生活用具。 7.家具的平、立面尺度要和房间面积、高度相吻合，以免所购家具放不进，或破坏了已构思好的平面布局。 8.除了整套家具外，还要配置餐桌、餐椅、沙发茶几等家具。所以，事先要了解配置单件家具的颜色、式样和规格，免得日后难以配套。', 1264392905, 0, 4, 0, 1, 0, '0', 'gif', '', 1264392905, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(381, 101, '0099:0101:', 0, 'news', '何保养木制家具如何保养木制家具如何保养木制家具', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 俗语说：“秋高气爽”,秋天的干燥气候是众人都有体会,人们在精心呵护自己皮肤的同时，也要注意保养身边的家具。秋天空气湿度相对小，室内比较干燥，其实保养起来相对容易。对此，有关专家支出6招保养方法。 　　 -要避免阳光直射。尽管秋日的阳光没有夏季猛烈,但长时间的日晒加上本来就干燥的气候，木质过于干燥，容易出现裂缝和局部褪色。 　　-要防止灰尘。一般用红木、柚木、橡木、胡桃木等制作的比较高档的原木家具都有精美的雕花装饰，如不能定期清洁除灰，细小缝隙中容易积灰影响美观，同时灰尘更是让木制家具迅速“变老”的杀手。 　　-要保持滋润。木制家具的滋润不能靠水分来提供，也就是说不能光用湿漉漉的抹布简单地擦拭，而是应该选用专业的家具护理精油，它蕴含容易被木质纤维吸收的天然香橙油，可锁住木质中的水分，防止木质干裂变形，同时滋养木质，由里到外令木质家具重放光彩，延长家具的使用寿命。 　　-避免硬物划伤。打扫卫生时勿使清洁工具触及家具。平时也要注意，不要让坚硬的金属制品或其他利器碰撞家具，以保护其表面不出现硬伤痕迹以及挂丝等现象。 　　-不宜放在十分潮湿的地方，以免木材遇湿膨胀，时间长了容易腐烂，抽屉也拉不开。', 1264393134, 0, 22, 0, 1, 0, '0', 'gif', '', 1264393134, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_news_config`
--

CREATE TABLE IF NOT EXISTS `dev_news_config` (
  `xuhao` int(3) NOT NULL DEFAULT '0',
  `vname` varchar(50) NOT NULL DEFAULT '',
  `settype` varchar(30) NOT NULL DEFAULT 'input',
  `colwidth` varchar(3) NOT NULL DEFAULT '30',
  `variable` varchar(32) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dev_news_config`
--

INSERT INTO `dev_news_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(5, '文章主题图片上传尺寸限制(Byte)', 'input', '30', 'PicSizeLimit', '256000', '会员发布文章上传主题图片时,单个图片尺寸的限制'),
(6, '文章编辑器图片上传限制(Byte)', 'input', '30', 'EditPicLimit', '512000', '会员发布文章时,在编辑器内上传图片,单个图片的尺寸限制'),
(1, '模块频道名称', 'input', '30', 'ChannelName', '新闻中心', '本模块对应的频道名称，如“新闻中心”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(7, '附件上传大小限制', 'input', '30', 'FileSizeLimit', '1024000', '会员发布文章上传附件时,允许上传附件的文件大小;但最高设置不能超过2M '),
(8, '会员发布文章关键词过滤', 'textarea', '30', 'KeywordDeny', '', '会员发布文章时禁止的词语，多个以逗号分割');

-- --------------------------------------------------------

--
-- 表的结构 `dev_news_downlog`
--

CREATE TABLE IF NOT EXISTS `dev_news_downlog` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `newsid` int(12) NOT NULL DEFAULT '0',
  `memberid` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_news_downlog`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_news_pages`
--

CREATE TABLE IF NOT EXISTS `dev_news_pages` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `newsid` int(12) NOT NULL DEFAULT '0',
  `body` mediumtext,
  `xuhao` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- 转存表中的数据 `dev_news_pages`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_news_pcat`
--

CREATE TABLE IF NOT EXISTS `dev_news_pcat` (
  `catid` int(12) NOT NULL AUTO_INCREMENT,
  `memberid` int(12) NOT NULL DEFAULT '0',
  `pid` int(12) NOT NULL DEFAULT '0',
  `cat` char(100) NOT NULL DEFAULT '',
  `xuhao` int(12) NOT NULL DEFAULT '0',
  `catpath` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dev_news_pcat`
--

INSERT INTO `dev_news_pcat` (`catid`, `memberid`, `pid`, `cat`, `xuhao`, `catpath`) VALUES
(2, 150, 0, '新增分类', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_news_proj`
--

CREATE TABLE IF NOT EXISTS `dev_news_proj` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `project` varchar(100) DEFAULT NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- 转存表中的数据 `dev_news_proj`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_news_prop`
--

CREATE TABLE IF NOT EXISTS `dev_news_prop` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `catid` int(20) NOT NULL DEFAULT '0',
  `propname` char(30) DEFAULT NULL,
  `xuhao` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_news_prop`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_page`
--

CREATE TABLE IF NOT EXISTS `dev_page` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `groupid` int(6) NOT NULL DEFAULT '1',
  `title` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `xuhao` int(4) NOT NULL DEFAULT '0',
  `src` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `memo` text NOT NULL,
  `pagefolder` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=97 ;

--
-- 转存表中的数据 `dev_page`
--

INSERT INTO `dev_page` (`id`, `groupid`, `title`, `body`, `xuhao`, `src`, `url`, `memo`, `pagefolder`) VALUES
(1, 1, '公司简介', '<img style="MARGIN: 0px 20px 5px 0px; FLOAT: left" border=0 alt="" src="[ROOTPATH]page/pics/20101011/201010111286759113765.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;杭州某某厨具有限公司是一家专业生产厨柜的知名企业，也是中国成立早的专业整体厨柜生产企业之一。一直秉承爱厨房的企业宗旨，目前，已成为厨柜行业的领导品牌之一。创立伊始，就致力于打造现代化、艺术化、环保化厨房生活，坚持将欧洲先进的厨房文化带入中国。公司每年多次派设计师前往欧洲学习，并引进法软件进行厨柜设计。近13年的设计实践经验，形成了一个中心，三个基本点的独特设计理念：即以环保为中心，以实用、时尚、科技为基本点。十分珍视自己的品牌，在同行中率先承诺厨柜免费六年六次保养，六年保修，终身维修，为消费者提供一站式服务，真正解决了消费者的后顾之忧。<br />　　此外，作为厨柜行业的品牌，公司在工业园建立了规模庞大的国际标准化生产基地，占地总面积达70000平方米。并在同行中最早通过ISO9001&gt;2000质量认证体系、ISO14001国际环境管理认证及OHYSMS18001：2001健康安全认证体系。 独特的设计理念，严谨的管理营销模式，运营特许加盟战略，步入快速发展之路。公司先后在浙江、江苏、安徽、江西、山东、吉林、黑龙江等三十多个省市开设了百余家加盟店，营销网络覆盖全国各主要中心城市，产品远销美国、加拿大、澳大利亚等国家。承载无数荣誉与梦想，正以迅猛的速度发展成为厨柜行业的旗舰品牌。 ', 1, '', '', '', 'company'),
(87, 28, '加盟须知', '1.具有合法资格的法人或自然人。<br />2.具有管理协调能力，有家具品牌经营经验。<br />3.具有强烈的事业心，并有追求成功的欲望。<br />4.具有一定的经济实力及长远的投资眼光。<br />5.能正确看待和承担风险意识。 <br />6.应在其指定销售区域进行销售，不得跨地区经营。<br />7.各加盟商须向我公司提出书面申请，如实填写各项内容。<br /><br />1.具有合法资格的法人或自然人。<br />2.具有管理协调能力，有家具品牌经营经验。<br />3.具有强烈的事业心，并有追求成功的欲望。<br />4.具有一定的经济实力及长远的投资眼光。<br />5.能正确看待和承担风险意识。 <br />6.应在其指定销售区域进行销售，不得跨地区经营。<br />7.各加盟商须向我公司提出书面申请，如实填写各项内容。 ', 1, '', '', '', 'notice'),
(11, 1, '公司荣誉', '', 2, '', '', '', 'honor'),
(64, 30, '联系方式', '<span style="LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; FONT-SIZE: 12px">地 址：杭州市莫干山路2168号<br />电 话：0571-98765432<br />联系人：杨军(经理)<br />手 机：15887654321<br />网址：www.aaaa.com<br />邮 箱：bos@mail.com<br />地 址：杭州市莫干山路2168号<br />电 话：0571-98765432<br />联系人：杨军(经理)<br />手 机：15887654321<br />网址：www.aaaa.com<br />邮 箱：bos@mail.com<br />邮 编：300009</span> ', 3, '', '', '', 'contact'),
(65, 30, '给我留言', '', 4, '', '', '', 'feedback'),
(66, 1, '公司文化', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。企业精神：自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。企业精神：自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。', 3, '', '', '', 'culture'),
(67, 1, '经营理念', '<p><span style="LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; FONT-SIZE: 12px"><font>企业宗旨：</font><br />用户至上，信誉取胜，质量优良，服务优质。</span></p>\r\n<p><span style="LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; FONT-SIZE: 12px"><font>经营理念：</font><br />A.质量——形象的基础；科技——腾飞的关键；管理——永恒的主题；创新——发展的源泉。<br />B. 靠员工管理企业，靠科技提高素质，靠质量赢得市场，靠创新促进发展。</span></p>\r\n<p><span style="LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; FONT-SIZE: 12px"><font>团队意识：</font><br />我靠企业生存，企业靠我发展；我为企业尽力，企业为我谋利。</span></p>\r\n<p><span style="LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; FONT-SIZE: 12px"><font>职业道德：</font><br />A.用户是衣食父母，服务是基本职责。<br />B.用户至上，服务第一。</span></p>\r\n<p><span style="LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; FONT-SIZE: 12px"><font>企业形象：<br /></font>依法经营，管理科学，从业文明，作风过硬，服务优质，质量优良，技术精湛，勇于创新。</span></p>\r\n<p><span style="LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; FONT-SIZE: 12px"><font>经营战略：<br /></font>A.人才战略，品牌战略，创新战略，市场开发战略。<br />B.实施人才、品牌、创新和市场开发战略，巩固、提高水平，发展、壮大品牌。</span><span style="LINE-HEIGHT: 170%; FONT-FAMILY: Verdana,Arial,Helvetica,sans-serif; FONT-SIZE: 12px"></p></span>', 4, '', '', '', 'ethic'),
(88, 28, '加盟条件', '1.具有合法资格的法人或自然人。<br />2.具有管理协调能力，有家具品牌经营经验。<br />3.具有强烈的事业心，并有追求成功的欲望。<br />4.具有一定的经济实力及长远的投资眼光。<br />5.能正确看待和承担风险意识。 <br />6.应在其指定销售区域进行销售，不得跨地区经营。<br />7.各加盟商须向我公司提出书面申请，如实填写各项内容。<br /><br />1.具有合法资格的法人或自然人。<br />2.具有管理协调能力，有家具品牌经营经验。<br />3.具有强烈的事业心，并有追求成功的欲望。<br />4.具有一定的经济实力及长远的投资眼光。<br />5.能正确看待和承担风险意识。 <br />6.应在其指定销售区域进行销售，不得跨地区经营。<br />7.各加盟商须向我公司提出书面申请，如实填写各项内容。 ', 2, '', '', '', 'condition'),
(89, 28, '加盟程序', '特许经营加盟审批程序<br />\r\n1、项目咨询和推广阶段： <br />\r\n             （1）索取加盟资料<br />\r\n             （2）进行项目咨询<br />\r\n2、初审阶段：         <br />\r\n（1）根据网络布局计划初审 <br />\r\n（2）填写加盟申请书、计划<br />\r\n（3）准备相关证件、资金 <br />\r\n（4）评估加盟申请表内容 <br />\r\n（5）评估加盟者经营设想<br />\r\n（6）确定合适的受许方 <br />\r\n3、项目意向洽谈阶段： <br />\r\n（1） 考察总部<br />\r\n（2）双方进一步进行考察 <br />\r\n（3）相互进行意向确认 <br />\r\n4、签定合同阶段： <br />\r\n（1） 准备相关的证件、资金和场所<br />\r\n（2）签署特许加盟合同书 <br />\r\n（3）开业前的准备阶段：提交开业计划表 <br />\r\n（4）房屋租赁、营建和准备<br />\r\n（5）开业审批（公司注册）<br />\r\n（6）人员的招募和培训 <br />\r\n5、合作阶段： <br />\r\n（1） 开业<br />\r\n（2） 运营和督导 <br />\r\n6、终止阶段：<br />\r\n（1） 合作到期 <br />\r\n（2） 违约终止 <br />\r\n（3） 不可抗力终止', 3, '', '', '', 'method'),
(90, 28, '加盟申请', '', 4, '', '', '', 'application'),
(91, 28, '门店展示', '', 5, '', '', '', 'display'),
(78, 1, '营销网络', '<img border=0 alt="" src="[ROOTPATH]page/pics/20100114/201001141263438756343.jpg" /> ', 7, '', '', '', 'sale'),
(94, 30, '服务理念', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户至上，信誉取胜，质量优良，服务优质。质量——形象的基础；科技——腾飞的关键；管理——永恒的主题；创新——发展的源泉。 B靠员工管理企业，靠科技提高素质，靠质量赢得市场，靠创新促进发展。我靠企业生存，企业靠我发展；我为企业尽力，企业为我谋利。用户是衣食父母，服务是基本职责。用户至上，服务第一。依法经营，管理科学，从业文明，作风过硬，服务优质，质量优良，技术精湛，勇于创新。人才战略，品牌战略，创新战略，市场开发战略。实施人才、品牌、创新和市场开发战略，巩固、提高水平，发展、壮大品牌。用户至上，信誉取胜，质量优良，服务优质。质量——形象的基础；科技——腾飞的关键；管理——永恒的主题；创新——发展的源泉。 B靠员工管理企业，靠科技提高素质，靠质量赢得市场，靠创新促进发展。我靠企业生存，企业靠我发展；我为企业尽力，企业为我谋利。用户是衣食父母，服务是基本职责。用户至上，服务第一。依法经营，管理科学，从业文明，作风过硬，服务优质，质量优良，技术精湛，勇于创新。人才战略，品牌战略，创新战略，市场开发战略。实施人才、品牌、创新和市场开发战略，巩固、提高水平，发展、壮大品牌。 ', 1, '', '', '', 'service'),
(95, 30, '服务宗旨', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 信誉取胜，质量优良，服务优质。质量——形象的基础；科技——腾飞的关键；管理——永恒的主题；创新——发展的源泉。 B靠员工管理企业，靠科技提高素质，靠质量赢得市场，靠创新促进发展。我靠企业生存，企业靠我发展；我为企业尽力，企业为我谋利。用户是衣食父母，服务是基本职责。用户至上，服务第一。依法经营，管理科学，从业文明，作风过硬，服务优质，质量优良，技术精湛，勇于创新。人才战略，品牌战略，创新战略，市场开发战略。实施人才、品牌、创新和市场开发战略，巩固、提高水平，发展、壮大品牌。 ', 2, '', '', '', 'policy');

-- --------------------------------------------------------

--
-- 表的结构 `dev_page_group`
--

CREATE TABLE IF NOT EXISTS `dev_page_group` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL DEFAULT '',
  `xuhao` int(5) NOT NULL DEFAULT '0',
  `moveable` int(1) NOT NULL DEFAULT '1',
  `folder` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `dev_page_group`
--

INSERT INTO `dev_page_group` (`id`, `groupname`, `xuhao`, `moveable`, `folder`) VALUES
(1, '公司简介', 1, 0, 'html'),
(28, '品牌加盟', 1, 1, 'join'),
(30, '客户服务', 1, 1, 'service');

-- --------------------------------------------------------

--
-- 表的结构 `dev_photo_cat`
--

CREATE TABLE IF NOT EXISTS `dev_photo_cat` (
  `catid` int(12) NOT NULL AUTO_INCREMENT,
  `pid` int(12) DEFAULT NULL,
  `cat` char(100) DEFAULT NULL,
  `xuhao` int(12) DEFAULT NULL,
  `catpath` char(255) DEFAULT NULL,
  `nums` int(20) DEFAULT NULL,
  `tj` int(1) NOT NULL DEFAULT '0',
  `ifchannel` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `dev_photo_cat`
--

INSERT INTO `dev_photo_cat` (`catid`, `pid`, `cat`, `xuhao`, `catpath`, `nums`, `tj`, `ifchannel`) VALUES
(8, 0, '公司荣誉', 5, '0008:', 0, 0, 0),
(9, 0, '门店展示', 6, '0009:', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_photo_con`
--

CREATE TABLE IF NOT EXISTS `dev_photo_con` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `catid` int(12) NOT NULL DEFAULT '0',
  `catpath` varchar(255) NOT NULL DEFAULT '',
  `pcatid` int(12) NOT NULL DEFAULT '0',
  `contype` varchar(20) NOT NULL DEFAULT 'photo',
  `title` varchar(255) NOT NULL DEFAULT '',
  `body` text,
  `dtime` int(11) DEFAULT '0',
  `xuhao` int(5) DEFAULT '0',
  `cl` int(20) DEFAULT NULL,
  `tj` int(1) DEFAULT NULL,
  `iffb` int(1) DEFAULT '0',
  `ifbold` int(1) DEFAULT '0',
  `ifred` varchar(20) DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `src` varchar(150) NOT NULL DEFAULT '',
  `uptime` int(11) DEFAULT '0',
  `author` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `memberid` varchar(100) DEFAULT NULL,
  `proj` varchar(255) NOT NULL DEFAULT '',
  `secure` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL DEFAULT '',
  `prop2` char(255) NOT NULL DEFAULT '',
  `prop3` char(255) NOT NULL DEFAULT '',
  `prop4` char(255) NOT NULL DEFAULT '',
  `prop5` char(255) NOT NULL DEFAULT '',
  `prop6` char(255) NOT NULL DEFAULT '',
  `prop7` char(255) NOT NULL DEFAULT '',
  `prop8` char(255) NOT NULL DEFAULT '',
  `prop9` char(255) NOT NULL DEFAULT '',
  `prop10` char(255) NOT NULL DEFAULT '',
  `prop11` char(255) NOT NULL DEFAULT '',
  `prop12` char(255) NOT NULL DEFAULT '',
  `prop13` char(255) NOT NULL DEFAULT '',
  `prop14` char(255) NOT NULL DEFAULT '',
  `prop15` char(255) NOT NULL DEFAULT '',
  `prop16` char(255) NOT NULL DEFAULT '',
  `prop17` char(255) NOT NULL DEFAULT '',
  `prop18` char(255) NOT NULL DEFAULT '',
  `prop19` char(255) NOT NULL DEFAULT '',
  `prop20` char(255) NOT NULL DEFAULT '',
  `tags` varchar(255) NOT NULL,
  `zhichi` int(5) NOT NULL DEFAULT '0',
  `fandui` int(5) NOT NULL DEFAULT '0',
  `tplog` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- 转存表中的数据 `dev_photo_con`
--

INSERT INTO `dev_photo_con` (`id`, `catid`, `catpath`, `pcatid`, `contype`, `title`, `body`, `dtime`, `xuhao`, `cl`, `tj`, `iffb`, `ifbold`, `ifred`, `type`, `src`, `uptime`, `author`, `source`, `memberid`, `proj`, `secure`, `memo`, `prop1`, `prop2`, `prop3`, `prop4`, `prop5`, `prop6`, `prop7`, `prop8`, `prop9`, `prop10`, `prop11`, `prop12`, `prop13`, `prop14`, `prop15`, `prop16`, `prop17`, `prop18`, `prop19`, `prop20`, `tags`, `zhichi`, `fandui`, `tplog`) VALUES
(45, 9, '0009:', 0, 'photo', '门店展示', '', 1263283585, 0, 40, 0, 1, 0, '0', 'gif', 'photo/pics/20100720/1279602963.jpg', 1325140433, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(46, 9, '0009:', 0, 'photo', '门店展示', '', 1263283598, 0, 47, 0, 1, 0, '0', 'gif', 'photo/pics/20100720/1279602950.jpg', 1279602950, '管理员', '', '0', '', 0, '门店展示', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(32, 8, '0008:', 0, 'photo', '认证证书', '', 1262855311, 0, 2, 0, 1, 0, '0', 'gif', 'photo/pics/20100107/1262855311.gif', 1263438414, '管理员', '', '0', '', 0, '荣誉证书', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(33, 8, '0008:', 0, 'photo', '认证证书', '', 1262855322, 0, 1, 0, 1, 0, '0', 'gif', 'photo/pics/20100107/1262855322.gif', 1263438406, '管理员', '', '0', '', 0, '荣誉证书', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(37, 9, '0009:', 0, 'photo', '门店展示', '', 1263188753, 0, 0, 0, 1, 0, '0', 'gif', 'photo/pics/20100720/1279602974.jpg', 1279602974, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(38, 9, '0009:', 0, 'photo', '门店展示', '', 1263188773, 0, 2, 0, 1, 0, '0', 'gif', 'photo/pics/20100720/1279602984.jpg', 1325140427, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(39, 9, '0009:', 0, 'photo', '门店展示', '', 1263188786, 0, 2, 0, 1, 0, '0', 'gif', 'photo/pics/20100720/1279603004.jpg', 1279603004, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(40, 9, '0009:', 0, 'photo', '门店展示', '', 1263188797, 0, 18, 0, 1, 0, '0', 'gif', 'photo/pics/20100720/1279603013.jpg', 1279603013, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(41, 8, '0008:', 0, 'photo', '龙头企业', '', 1263189185, 0, 0, 0, 1, 0, '0', 'gif', 'photo/pics/20100111/1263189185.gif', 1263189185, '管理员', '', '0', '', 0, '龙头企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(42, 8, '0008:', 0, 'photo', '龙头企业', '', 1263189198, 0, 0, 0, 1, 0, '0', 'gif', 'photo/pics/20100111/1263189198.gif', 1263189198, '管理员', '', '0', '', 0, '龙头企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(43, 8, '0008:', 0, 'photo', '配套资格证', '', 1263189228, 0, 5, 0, 1, 0, '0', 'gif', 'photo/pics/20100111/1263189228.gif', 1263189228, '管理员', '', '0', '', 0, '配套资格证', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(44, 8, '0008:', 0, 'photo', '配套资格证', '', 1263189240, 0, 42, 0, 1, 0, '0', 'gif', 'photo/pics/20100111/1263189240.gif', 1263189240, '管理员', '', '0', '', 0, '配套资格证', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_photo_config`
--

CREATE TABLE IF NOT EXISTS `dev_photo_config` (
  `xuhao` int(3) NOT NULL DEFAULT '0',
  `vname` varchar(50) NOT NULL DEFAULT '',
  `settype` varchar(30) NOT NULL DEFAULT 'input',
  `colwidth` varchar(3) NOT NULL DEFAULT '30',
  `variable` varchar(32) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dev_photo_config`
--

INSERT INTO `dev_photo_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '模块频道名称', 'input', '30', 'ChannelName', '企业图库', '本模块对应的频道名称，如“图片展示”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(5, '会员上传图片尺寸限制(Byte)', 'input', '30', 'PicSizeLimit', '256000', '会员上传图片时,单个图片尺寸的限制');

-- --------------------------------------------------------

--
-- 表的结构 `dev_photo_pages`
--

CREATE TABLE IF NOT EXISTS `dev_photo_pages` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `photoid` int(12) NOT NULL DEFAULT '0',
  `src` varchar(150) NOT NULL DEFAULT '',
  `xuhao` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_photo_pages`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_photo_pcat`
--

CREATE TABLE IF NOT EXISTS `dev_photo_pcat` (
  `catid` int(12) NOT NULL AUTO_INCREMENT,
  `memberid` int(12) NOT NULL DEFAULT '0',
  `pid` int(12) NOT NULL DEFAULT '0',
  `cat` char(100) NOT NULL DEFAULT '',
  `xuhao` int(12) NOT NULL DEFAULT '0',
  `catpath` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_photo_pcat`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_photo_proj`
--

CREATE TABLE IF NOT EXISTS `dev_photo_proj` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `project` varchar(100) DEFAULT NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_photo_proj`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_photo_prop`
--

CREATE TABLE IF NOT EXISTS `dev_photo_prop` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `catid` int(20) NOT NULL DEFAULT '0',
  `propname` char(30) DEFAULT NULL,
  `xuhao` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_photo_prop`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_product_cat`
--

CREATE TABLE IF NOT EXISTS `dev_product_cat` (
  `catid` int(12) NOT NULL AUTO_INCREMENT,
  `pid` int(12) DEFAULT NULL,
  `cat` char(100) DEFAULT NULL,
  `xuhao` int(12) DEFAULT NULL,
  `catpath` char(255) DEFAULT NULL,
  `nums` int(20) DEFAULT NULL,
  `tj` int(1) NOT NULL DEFAULT '0',
  `ifchannel` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=125 ;

--
-- 转存表中的数据 `dev_product_cat`
--

INSERT INTO `dev_product_cat` (`catid`, `pid`, `cat`, `xuhao`, `catpath`, `nums`, `tj`, `ifchannel`) VALUES
(74, 0, '卫浴系列', 3, '0074:', 0, 0, 0),
(115, 0, '整体橱柜系列', 1, '0115:', 0, 0, 0),
(116, 0, '厨房电器系列', 2, '0116:', 0, 0, 0),
(124, 0, '经典案例展示', 6, '0124:', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_product_con`
--

CREATE TABLE IF NOT EXISTS `dev_product_con` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `catid` int(12) NOT NULL DEFAULT '0',
  `catpath` varchar(255) NOT NULL DEFAULT '',
  `pcatid` int(12) NOT NULL DEFAULT '0',
  `contype` varchar(20) NOT NULL DEFAULT 'product',
  `title` varchar(255) NOT NULL DEFAULT '',
  `body` mediumtext,
  `dtime` int(11) DEFAULT '0',
  `xuhao` int(5) DEFAULT '0',
  `cl` int(20) DEFAULT NULL,
  `tj` int(1) DEFAULT NULL,
  `iffb` int(1) DEFAULT '0',
  `ifbold` int(1) DEFAULT '0',
  `ifred` varchar(20) DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `src` varchar(150) NOT NULL DEFAULT '',
  `uptime` int(11) DEFAULT '0',
  `author` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `memberid` varchar(100) DEFAULT NULL,
  `proj` varchar(255) NOT NULL DEFAULT '',
  `secure` int(11) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL DEFAULT '',
  `prop2` char(255) NOT NULL DEFAULT '',
  `prop3` char(255) NOT NULL DEFAULT '',
  `prop4` char(255) NOT NULL DEFAULT '',
  `prop5` char(255) NOT NULL DEFAULT '',
  `prop6` char(255) NOT NULL DEFAULT '',
  `prop7` char(255) NOT NULL DEFAULT '',
  `prop8` char(255) NOT NULL DEFAULT '',
  `prop9` char(255) NOT NULL DEFAULT '',
  `prop10` char(255) NOT NULL DEFAULT '',
  `prop11` char(255) NOT NULL DEFAULT '',
  `prop12` char(255) NOT NULL DEFAULT '',
  `prop13` char(255) NOT NULL DEFAULT '',
  `prop14` char(255) NOT NULL DEFAULT '',
  `prop15` char(255) NOT NULL DEFAULT '',
  `prop16` char(255) NOT NULL DEFAULT '',
  `prop17` char(255) NOT NULL DEFAULT '',
  `prop18` char(255) NOT NULL DEFAULT '',
  `prop19` char(255) NOT NULL DEFAULT '',
  `prop20` char(255) NOT NULL DEFAULT '',
  `tags` varchar(255) NOT NULL,
  `zhichi` int(5) NOT NULL DEFAULT '0',
  `fandui` int(5) NOT NULL DEFAULT '0',
  `tplog` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=95 ;

--
-- 转存表中的数据 `dev_product_con`
--

INSERT INTO `dev_product_con` (`id`, `catid`, `catpath`, `pcatid`, `contype`, `title`, `body`, `dtime`, `xuhao`, `cl`, `tj`, `iffb`, `ifbold`, `ifred`, `type`, `src`, `uptime`, `author`, `source`, `memberid`, `proj`, `secure`, `memo`, `prop1`, `prop2`, `prop3`, `prop4`, `prop5`, `prop6`, `prop7`, `prop8`, `prop9`, `prop10`, `prop11`, `prop12`, `prop13`, `prop14`, `prop15`, `prop16`, `prop17`, `prop18`, `prop19`, `prop20`, `tags`, `zhichi`, `fandui`, `tplog`) VALUES
(74, 115, '0115:', 0, 'product', '心意鸟巢', '流畅的线条，极简的造型，是美观与实用的完美结合流畅的线条，极简的造型，是美观与实用的完美结合流畅的线条，极简的造型，是美观与实用的完美结合流畅的线条，极简的造型，是美观与实用的完美结合流畅的线条，极简的造型，是美观与实用的完美结合流畅的线条，极简的造型，是美观与实用的完美结合 ', 1262239051, 0, 39, 0, 1, 0, '0', 'gif', 'product/pics/20100114/1263441922.jpg', 1279603262, '管理员', '', '0', '', 0, '流畅的线条，极简的造型，是美观与实用的完美结合', 'JC-K280', '进口亚麻、橡木', '26000元', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(82, 115, '0115:', 0, 'product', '整体橱柜', '流畅的线条，极简的造型，是美观与实用的完美结合流畅的线条，极简的造型，是美观与实用的完美结合流畅的线条，极简的造型，是美观与实用的完美结合流畅的线条，极简的造型，是美观与实用的完美结合流畅的线条，极简的造型，是美观与实用的完美结合流畅的线条，极简的造型，是美观与实用的完美结合流畅的线条，极简的造型，是美观与实用的完美结合 ', 1263441984, 0, 10, 0, 1, 0, '0', 'gif', 'product/pics/20100114/1263441984.jpg', 1355210176, '管理员', '', '0', '', 0, '流畅的线条，极简的造型，是美观与实用的完美结合', 'JC-K280', '进口亚麻、橡木', '26000元', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(84, 115, '0115:', 0, 'product', '整体橱柜', '', 1279603643, 0, 1, 0, 1, 0, '0', 'gif', 'product/pics/20100720/1279603643.jpg', 1355210144, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(85, 115, '0115:', 0, 'product', '梦想之光', '如梦境般张开巨大的光翼飞越那片没有硝烟的战场如耀眼的晨星透过云层的霞光抵达爱与激情的地方', 1279603682, 0, 40, 0, 1, 0, '0', 'gif', 'product/pics/20100720/1279603682.jpg', 1292823156, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(86, 116, '0116:', 0, 'product', '客厅沙发', '', 1279603703, 0, 0, 0, 1, 0, '0', 'gif', 'product/pics/20100720/1279603703.jpg', 1279603703, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(87, 116, '0116:', 0, 'product', '客厅系列', '', 1279603716, 0, 1, 0, 1, 0, '0', 'gif', 'product/pics/20100720/1279603716.jpg', 1279603716, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(88, 115, '0115:', 0, 'product', '客厅系列', 'ymjd.cn', 1279603730, 0, 9, 0, 1, 0, '0', 'gif', 'product/pics/20100720/1279603730.jpg', 1358499947, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(89, 116, '0116:', 0, 'product', '客厅系列', '', 1279603753, 0, 20, 0, 1, 0, '0', 'gif', 'product/pics/20100720/1279603753.jpg', 1279603753, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(90, 124, '0124:', 0, 'product', '客户案例', '客户案例', 1325037552, 0, 2, 0, 1, 0, '0', 'gif', 'product/pics/20111228/1325037552.jpg', 1325037552, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(91, 124, '0124:', 0, 'product', '案例展示', '案例展示', 1325037574, 0, 0, 0, 1, 0, '0', 'gif', 'product/pics/20111228/1325037574.jpg', 1325037574, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(92, 124, '0124:', 0, 'product', '客户案例', '客户案例', 1325037618, 0, 6, 0, 1, 0, '0', 'gif', 'product/pics/20111228/1325037618.jpg', 1325037618, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(93, 124, '0124:', 0, 'product', '客户案例', '客户案例', 1325037627, 0, 26, 0, 1, 0, '0', 'gif', 'product/pics/20111228/1325037627.jpg', 1325037627, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(94, 124, '0124:', 0, 'product', '案例展示', '案例展示', 1325037644, 0, 12, 0, 1, 0, '0', 'gif', 'product/pics/20111228/1325037644.jpg', 1325037644, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `dev_product_config`
--

CREATE TABLE IF NOT EXISTS `dev_product_config` (
  `xuhao` int(3) NOT NULL DEFAULT '0',
  `vname` varchar(50) NOT NULL DEFAULT '',
  `settype` varchar(30) NOT NULL DEFAULT 'input',
  `colwidth` varchar(3) NOT NULL DEFAULT '30',
  `variable` varchar(32) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dev_product_config`
--

INSERT INTO `dev_product_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '模块频道名称', 'input', '30', 'ChannelName', '产品展示', '本模块对应的频道名称，如“产品展示”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(5, '会员上传产品图片尺寸限制(Byte)', 'input', '30', 'PicSizeLimit', '256000', '会员上传产品图片时,单个图片尺寸的限制'),
(6, '产品介绍编辑器图片上传限制(Byte)', 'input', '30', 'EditPicLimit', '512000', '会员发布产品时,在编辑器内上传图片,单个图片的尺寸限制');

-- --------------------------------------------------------

--
-- 表的结构 `dev_product_pages`
--

CREATE TABLE IF NOT EXISTS `dev_product_pages` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `productid` int(12) NOT NULL DEFAULT '0',
  `src` varchar(150) NOT NULL DEFAULT '',
  `xuhao` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `dev_product_pages`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_product_pcat`
--

CREATE TABLE IF NOT EXISTS `dev_product_pcat` (
  `catid` int(12) NOT NULL AUTO_INCREMENT,
  `memberid` int(12) NOT NULL DEFAULT '0',
  `pid` int(12) NOT NULL DEFAULT '0',
  `cat` char(100) NOT NULL DEFAULT '',
  `xuhao` int(12) NOT NULL DEFAULT '0',
  `catpath` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dev_product_pcat`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_product_proj`
--

CREATE TABLE IF NOT EXISTS `dev_product_proj` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `project` varchar(100) DEFAULT NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_product_proj`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_product_prop`
--

CREATE TABLE IF NOT EXISTS `dev_product_prop` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `catid` int(20) NOT NULL DEFAULT '0',
  `propname` char(30) DEFAULT NULL,
  `xuhao` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=296 ;

--
-- 转存表中的数据 `dev_product_prop`
--

INSERT INTO `dev_product_prop` (`id`, `catid`, `propname`, `xuhao`) VALUES
(274, 93, '价格', 2),
(273, 93, '型号', 1),
(292, 115, '编号', 1),
(293, 115, '材质', 2),
(294, 115, '价格', 3);

-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_code`
--

CREATE TABLE IF NOT EXISTS `dev_tools_code` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cat` varchar(100) NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `groupname` varchar(100) NOT NULL,
  `qq` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `memo` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `xuhao` int(11) NOT NULL DEFAULT '0',
  `iffb` int(1) NOT NULL DEFAULT '1',
  `tj` int(1) NOT NULL DEFAULT '0',
  `dtime` int(11) NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `author` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_tools_code`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_photopolldata`
--

CREATE TABLE IF NOT EXISTS `dev_tools_photopolldata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `body` text,
  `iffb` int(1) NOT NULL DEFAULT '0',
  `tj` int(1) DEFAULT NULL,
  `secure` int(11) NOT NULL DEFAULT '0',
  `dtime` int(11) NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `author` varchar(100) DEFAULT NULL,
  `type` varchar(30) NOT NULL,
  `src` varchar(150) NOT NULL,
  `color` varchar(20) NOT NULL DEFAULT '',
  `votes` int(14) NOT NULL DEFAULT '0',
  `votesinfo1` text NOT NULL,
  `votesinfo2` text NOT NULL,
  `votesinfo3` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_tools_photopolldata`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_photopollindex`
--

CREATE TABLE IF NOT EXISTS `dev_tools_photopollindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(12) NOT NULL,
  `catpath` char(255) DEFAULT NULL,
  `cat` varchar(100) NOT NULL,
  `groupname` varchar(100) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `status` smallint(2) NOT NULL DEFAULT '0',
  `exp_time` int(11) NOT NULL DEFAULT '0',
  `expire` smallint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dev_tools_photopollindex`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_pollconfig`
--

CREATE TABLE IF NOT EXISTS `dev_tools_pollconfig` (
  `config_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `img_height` int(5) NOT NULL DEFAULT '0',
  `img_length` int(5) NOT NULL DEFAULT '0',
  `vodinfo` varchar(225) NOT NULL DEFAULT '0',
  `def_options` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dev_tools_pollconfig`
--

INSERT INTO `dev_tools_pollconfig` (`config_id`, `img_height`, `img_length`, `vodinfo`, `def_options`) VALUES
(1, 20, 10, '对不起,您已经投过票了', 10);

-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_polldata`
--

CREATE TABLE IF NOT EXISTS `dev_tools_polldata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `option_id` int(11) NOT NULL DEFAULT '0',
  `option_text` varchar(200) NOT NULL DEFAULT '',
  `color` varchar(20) NOT NULL DEFAULT '',
  `votes` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `dev_tools_polldata`
--

INSERT INTO `dev_tools_polldata` (`id`, `poll_id`, `option_id`, `option_text`, `color`, `votes`) VALUES
(17, 8, 5, '喜欢', 'aqua', 0),
(16, 8, 4, '一般', 'aqua', 0),
(13, 8, 1, '很好', 'aqua', 1),
(14, 8, 2, '不好', 'aqua', 0),
(15, 8, 3, '很差', 'aqua', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_pollindex`
--

CREATE TABLE IF NOT EXISTS `dev_tools_pollindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(100) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `status` smallint(2) NOT NULL DEFAULT '0',
  `exp_time` int(11) NOT NULL DEFAULT '0',
  `expire` smallint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `dev_tools_pollindex`
--

INSERT INTO `dev_tools_pollindex` (`id`, `groupname`, `timestamp`, `status`, `exp_time`, `expire`) VALUES
(8, '这个软件你感觉怎么样？', 1223209351, 1, 1225801351, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_statbase`
--

CREATE TABLE IF NOT EXISTS `dev_tools_statbase` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `ShowCountType` int(1) DEFAULT NULL,
  `ShowCountSize` int(1) DEFAULT NULL,
  `ShowCount` int(1) DEFAULT NULL,
  `ShowCountStat` int(1) DEFAULT NULL,
  `starttime` int(11) DEFAULT NULL,
  `CountIpExp` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dev_tools_statbase`
--

INSERT INTO `dev_tools_statbase` (`id`, `ShowCountType`, `ShowCountSize`, `ShowCount`, `ShowCountStat`, `starttime`, `CountIpExp`) VALUES
(1, 2, 8, 2, 0, 1234728185, 5);

-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_statcome`
--

CREATE TABLE IF NOT EXISTS `dev_tools_statcome` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `count` int(5) NOT NULL DEFAULT '0',
  `begingtime` int(11) NOT NULL DEFAULT '0',
  `lasttime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `dev_tools_statcome`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_statcount`
--

CREATE TABLE IF NOT EXISTS `dev_tools_statcount` (
  `id` int(21) NOT NULL AUTO_INCREMENT,
  `ip` varchar(17) NOT NULL DEFAULT '',
  `os` varchar(40) NOT NULL DEFAULT '',
  `browse` varchar(30) NOT NULL DEFAULT '',
  `urlform` varchar(255) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `nowpage` varchar(255) DEFAULT NULL,
  `member` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16307 ;

--
-- 转存表中的数据 `dev_tools_statcount`
--


-- --------------------------------------------------------

--
-- 表的结构 `dev_tools_statdate`
--

CREATE TABLE IF NOT EXISTS `dev_tools_statdate` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `1th_day` int(5) NOT NULL DEFAULT '0',
  `2th_day` int(5) NOT NULL DEFAULT '0',
  `3th_day` int(5) NOT NULL DEFAULT '0',
  `4th_day` int(5) NOT NULL DEFAULT '0',
  `5th_day` int(5) NOT NULL DEFAULT '0',
  `6th_day` int(5) NOT NULL DEFAULT '0',
  `7th_day` int(5) NOT NULL DEFAULT '0',
  `8th_day` int(5) NOT NULL DEFAULT '0',
  `9th_day` int(5) NOT NULL DEFAULT '0',
  `10th_day` int(5) NOT NULL DEFAULT '0',
  `11th_day` int(5) NOT NULL DEFAULT '0',
  `12th_day` int(5) NOT NULL DEFAULT '0',
  `13th_day` int(5) NOT NULL DEFAULT '0',
  `14th_day` int(5) NOT NULL DEFAULT '0',
  `15th_day` int(5) NOT NULL DEFAULT '0',
  `16th_day` int(5) NOT NULL DEFAULT '0',
  `17th_day` int(5) NOT NULL DEFAULT '0',
  `18th_day` int(5) NOT NULL DEFAULT '0',
  `19th_day` int(5) NOT NULL DEFAULT '0',
  `20th_day` int(5) NOT NULL DEFAULT '0',
  `21th_day` int(5) NOT NULL DEFAULT '0',
  `22th_day` int(5) NOT NULL DEFAULT '0',
  `23th_day` int(5) NOT NULL DEFAULT '0',
  `24th_day` int(5) NOT NULL DEFAULT '0',
  `25th_day` int(5) NOT NULL DEFAULT '0',
  `26th_day` int(5) NOT NULL DEFAULT '0',
  `27th_day` int(5) NOT NULL DEFAULT '0',
  `28th_day` int(5) NOT NULL DEFAULT '0',
  `29th_day` int(5) NOT NULL DEFAULT '0',
  `30th_day` int(5) NOT NULL DEFAULT '0',
  `31th_day` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `dev_tools_statdate`
--

INSERT INTO `dev_tools_statdate` (`id`, `1th_day`, `2th_day`, `3th_day`, `4th_day`, `5th_day`, `6th_day`, `7th_day`, `8th_day`, `9th_day`, `10th_day`, `11th_day`, `12th_day`, `13th_day`, `14th_day`, `15th_day`, `16th_day`, `17th_day`, `18th_day`, `19th_day`, `20th_day`, `21th_day`, `22th_day`, `23th_day`, `24th_day`, `25th_day`, `26th_day`, `27th_day`, `28th_day`, `29th_day`, `30th_day`, `31th_day`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
