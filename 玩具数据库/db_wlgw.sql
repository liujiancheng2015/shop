/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50090
Source Host           : localhost:3306
Source Database       : db_wlgw

Target Server Type    : MYSQL
Target Server Version : 50090
File Encoding         : 65001

Date: 2015-05-26 22:26:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL auto_increment,
  `userName` varchar(50) default NULL,
  `userPw` varchar(50) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `t_catelog`
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `catelog_id` int(11) NOT NULL auto_increment,
  `catelog_name` varchar(50) default NULL,
  `catelog_miaoshu` text,
  `catelog_del` varchar(50) default NULL,
  PRIMARY KEY  (`catelog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES ('9', '拼图玩具', '拼图玩具', 'no');
INSERT INTO `t_catelog` VALUES ('10', '其他', '其他', 'yes');
INSERT INTO `t_catelog` VALUES ('11', '科学实验玩具', '科学实验玩具', 'no');
INSERT INTO `t_catelog` VALUES ('12', '其他', '<p>其他</p>', 'yes');
INSERT INTO `t_catelog` VALUES ('13', '智力开发玩具', '智力开发玩具', 'no');
INSERT INTO `t_catelog` VALUES ('14', '操作类玩具', '操作类玩具', 'no');

-- ----------------------------
-- Table structure for `t_gonggao`
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `gonggao_id` int(11) NOT NULL auto_increment,
  `gonggao_title` varchar(50) default NULL,
  `gonggao_content` text,
  `gonggao_data` varchar(50) default NULL,
  `gonggao_fabuzhe` varchar(255) default NULL,
  `gonggao_del` varchar(50) default NULL,
  `gonggao_one1` varchar(50) default NULL,
  `gonggao_one2` varchar(50) default NULL,
  `gonggao_one3` varchar(50) default NULL,
  `gonggao_one4` varchar(50) default NULL,
  `gonggao_one5` datetime default NULL,
  `gonggao_one6` datetime default NULL,
  `gonggao_one7` int(11) default NULL,
  `gonggao_one8` int(11) default NULL,
  PRIMARY KEY  (`gonggao_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
INSERT INTO `t_gonggao` VALUES ('1', '新品来了', '新品来了', '2015-03-6 18:34:55', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_gonggao` VALUES ('2', 'asd', '请输入内容sadsda', '2015-03-18 9:28:26', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `goods_id` int(11) NOT NULL auto_increment,
  `goods_name` varchar(50) default NULL,
  `goods_miaoshu` text,
  `goods_pic` varchar(50) default NULL,
  `goods_yanse` varchar(50) default NULL,
  `goods_shichangjia` int(11) default NULL,
  `goods_tejia` int(11) default NULL,
  `goods_isnottejia` varchar(50) default NULL,
  `goods_isnottuijian` varchar(50) default NULL,
  `goods_catelog_id` int(11) default NULL,
  `goods_kucun` int(11) default NULL,
  `goods_Del` varchar(50) default NULL,
  PRIMARY KEY  (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1', '拼插梅花积木', '拼插梅花积木2-3岁儿童益智力雪花玩具幼儿园4-5岁男女童宝宝玩具 ', '/upload/1394096685175.jpg', null, '50', '0', 'yes', null, '9', '19', 'no');
INSERT INTO `t_goods` VALUES ('2', '穿线积木 ', '木制绕珠串珠穿线积木 儿童早教宝婴幼儿益智力玩具1-3-5岁正品 \r\n\r\n几千名好妈妈的共同选择！工厂直营，零利润▲底价热卖▲，把最大的实惠让给各位亲们\r\n', '/upload/1394096758028.jpg', null, '68', '50', 'yes', null, '11', '99', 'no');
INSERT INTO `t_goods` VALUES ('7', '变形玩具', '变形金刚本身就是一件艺术品，这一特性本身对于培养儿童审美情感、审美能力有着强大的功效！此外，强烈的艺术感染力是玩具发挥其它教育功能有利条件。蒙巴迪变形金刚玩具7款一套是一套性价比比较高的入门级变形金刚玩具，非常适合儿童玩。 \r\n', '/upload/1431692992841.jpg', null, '500', '480', 'yes', null, '9', '1000', 'no');
INSERT INTO `t_goods` VALUES ('3', '遥控赛车', '儿童1:24遥控赛车模型 儿童1:24遥控赛车模型 儿童1:24遥控赛车模型 儿童1:24遥控赛车模型 ', '/upload/1394096841982.jpg', null, '500', '480', 'no', null, '9', '30', 'no');
INSERT INTO `t_goods` VALUES ('8', '儿童电子琴', '多功能：带琴键教学灯光，柔和彩虹灯光，卡拉OK功能，录音/播放功能，红外感应功能，带4张光盘播放功能（爵士、摇滚、古典、搞笑），集演示、教学、魔法、演奏为一体；8组背景音乐功能，6个红外感应音效，6个打击乐，6个特殊音效，10个乐器风格键。 \r\n', '/upload/1431693176673.jpg', null, '100', '80', 'yes', null, '13', '10', 'no');
INSERT INTO `t_goods` VALUES ('4', '仿真玩具', '超市收银机，情景玩具，形象逼真，专为提升婴幼儿的动手能力设计，促进宝宝智力增长。造型可爱，颜色艳丽，做工精细，可发出声音，一款宝宝爱不释手的玩具！ \r\n', '/upload/1394096941266.jpg', null, '651', '600', 'no', null, '9', '885', 'no');
INSERT INTO `t_goods` VALUES ('5', '木制天平', '蒙台梭利蒙氏教具 早教益智 木制天平 儿童称重平衡认知启蒙玩具 ', '/upload/1394097014927.jpg', null, '991', '801', 'yes', null, '11', '555', 'no');
INSERT INTO `t_goods` VALUES ('6', '多米诺骨牌', '儿童多米诺骨牌积木玩具 100片木制圆角单双面儿童早教益智玩具 ', '/upload/1394097078553.jpg', null, '99', '40', 'yes', null, '14', '120', 'no');

-- ----------------------------
-- Table structure for `t_liuyan`
-- ----------------------------
DROP TABLE IF EXISTS `t_liuyan`;
CREATE TABLE `t_liuyan` (
  `liuyan_id` int(11) NOT NULL auto_increment,
  `liuyan_title` varchar(50) default NULL,
  `liuyan_content` text,
  `liuyan_date` varchar(50) default NULL,
  `liuyan_user` varchar(50) default NULL,
  PRIMARY KEY  (`liuyan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_liuyan
-- ----------------------------
INSERT INTO `t_liuyan` VALUES ('1', '11111', '请输入内容11111111111', '2015-5-16 1:18:51', 'ztest');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL auto_increment,
  `order_bianhao` varchar(50) default NULL,
  `order_date` varchar(50) default NULL,
  `order_zhuangtai` varchar(50) default NULL,
  `order_songhuodizhi` varchar(50) default NULL,
  `order_fukuangfangshi` varchar(50) default NULL,
  `order_jine` int(11) default NULL,
  `order_user_id` int(11) default NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('2', '20140318092718', '2015-03-18 09:27:18', 'yes', '北京', '货到付款', '105', '2');
INSERT INTO `t_order` VALUES ('3', '20150526100906', '2015-05-26 10:09:06', 'yes', '北京店', '货到付款', '610', '1');

-- ----------------------------
-- Table structure for `t_orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `t_orderitem`;
CREATE TABLE `t_orderitem` (
  `orderItem_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) default NULL,
  `goods_id` int(11) default NULL,
  `goods_quantity` int(11) default NULL,
  PRIMARY KEY  (`orderItem_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orderitem
-- ----------------------------
INSERT INTO `t_orderitem` VALUES ('1', '1', '3', '1');
INSERT INTO `t_orderitem` VALUES ('2', '2', '4', '1');
INSERT INTO `t_orderitem` VALUES ('3', '2', '6', '1');
INSERT INTO `t_orderitem` VALUES ('4', '3', '1', '1');
INSERT INTO `t_orderitem` VALUES ('5', '3', '4', '2');
INSERT INTO `t_orderitem` VALUES ('6', '3', '2', '1');
INSERT INTO `t_orderitem` VALUES ('7', '3', '3', '1');
INSERT INTO `t_orderitem` VALUES ('8', '3', '6', '2');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_name` varchar(50) default NULL,
  `user_pw` varchar(50) default NULL,
  `user_type` int(11) default NULL,
  `user_realname` varchar(50) default NULL,
  `user_address` varchar(50) default NULL,
  `user_sex` varchar(50) default NULL,
  `user_tel` varchar(50) default NULL,
  `user_email` varchar(50) default NULL,
  `user_qq` varchar(50) default NULL,
  `user_man` varchar(50) default NULL,
  `user_age` varchar(50) default NULL,
  `user_birthday` varchar(50) default NULL,
  `user_xueli` varchar(50) default NULL,
  `user_del` varchar(50) default NULL,
  `user_one1` varchar(50) default NULL,
  `user_one2` varchar(50) default NULL,
  `user_one3` varchar(50) default NULL,
  `user_one4` varchar(50) default NULL,
  `user_one5` varchar(50) default NULL,
  `user_one6` int(11) default NULL,
  `user_one7` int(11) default NULL,
  `user_one8` int(11) default NULL,
  `user_one9` datetime default NULL,
  `user_one10` datetime default NULL,
  `user_one11` bigint(20) default NULL,
  `user_one12` bigint(20) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'ztest', '123456', '0', '张光磊1', '北京', '男', '123123321', '58850198@qq.com', '458820', null, null, null, null, 'no', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('2', 'zhgl322', '123456', '0', '张三', '北京', '男', '18300726818', '5555@qq.com', '588550198', null, null, null, null, 'no', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('3', 'ztest', '123456', '0', '张光磊', '北京', '男', '187445100', '58850198@qq.com', '58850198', null, null, null, null, 'no', null, null, null, null, null, null, null, null, null, null, null, null);
