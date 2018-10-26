SET NAMES UTF8;
DROP DATABASE IF EXISTS ncf;
CREATE DATABASE ncf CHARSET=UTF8;
USE ncf;


/**导航栏**/
CREATE TABLE nav(
	`nid` INT PRIMARY KEY AUTO_INCREMENT,
	`names` VARCHAR(16),      #导航名称
    `href` VARCHAR(64)        #链接地址
);
/**banner**/
CREATE TABLE banner(
	`bid` INT PRIMARY KEY AUTO_INCREMENT,
	`url` VARCHAR(64)        #背景图片地址
);
/*-- 项目案例--*/
CREATE TABLE portfolio(
	`portid` INT PRIMARY KEY AUTO_INCREMENT,
    `port_title` VARCHAR(16),  #项目案例标题
    `subtitle` VARCHAR(16),  #项目案例副标题
    `more` VARCHAR(16),  #更多
    `num` VARCHAR(6),  #序号
    `film_title` VARCHAR(16), #电影标题
    `src` VARCHAR(64), #图片地址
    `href` VARCHAR(64), #链接地址
    `des_subtitle` VARCHAR(32), #描述页面副标题
    `director` VARCHAR(16), #导演
    `general_producer` VARCHAR(16), #监制
    `publisher` VARCHAR(16), #编剧
    `actor` VARCHAR(16), #主演
    `show_time`  BIGINT, #上映时间
    `platform` VARCHAR(16), #首发平台
    `other_platform` VARCHAR(16), #其他平台
    `intro_title` VARCHAR(16), #剧情简介
    `into_art` VARCHAR(64), #介绍
    `film_src_one` VARCHAR(64), #平台图片路径
    `intro_other_platform` VARCHAR(64), #跳转到其它平台
    `film_src_two` VARCHAR(64), #平台图片路径
    `film_src_whree` VARCHAR(64), #平台图片路径
    `film_src_four` VARCHAR(64), #平台图片路径
    `film_src_five` VARCHAR(64) #平台图片路径
);
/*-- 公司介绍--*/
CREATE TABLE `nice_intro`(
	`nc_id` INT PRIMARY KEY AUTO_INCREMENT,
	`bg_src` VARCHAR(64),#图片路径
	`title` VARCHAR(16),#标题
	`des` VARCHAR(32),#介绍
	`more` VARCHAR(10),#更多
	`des_title` VARCHAR(10),#详情页标题
	`sub_one` VARCHAR(10),#详情页副标题一
	`sub_two` VARCHAR(10),#详情页副标题二
	`sub_three` VARCHAR(10),#详情副页标题三
	`sub_four` VARCHAR(10),#详情页副标题四
	`one_src` VARCHAR(64),#详情页第一张图片
	`two_src` VARCHAR(64),#详情页第二章图片
	`three_src` VARCHAR(64),#详情页第三张图片
	`four_src` VARCHAR(64),#详情页第四章图片
	`five_src` VARCHAR(64),#详情页第五张图片
	`six_src` VARCHAR(64),#详情页第六章图片
	`seven_src` VARCHAR(64),#详情页第七张图片
	`eight_src` VARCHAR(64),#详情页第八章图片
    `des_one` VARCHAR(64),#详情页描述一
    `des_two` VARCHAR(64),#详情页描述二
    `des_three` VARCHAR(64),#详情页描述三
    `des_four` VARCHAR(64),#详情页描述四
    `des_five` VARCHAR(64),#详情页描述五
    `des_six` VARCHAR(64),#详情页描述六
    `des_seven` VARCHAR(64),#详情页描述七
    `des_eight` VARCHAR(64),#详情页描述八
    `ip_title_one` VARCHAR(16),
    `ip_title_two` VARCHAR(16),
    `ip_title_three` VARCHAR(16),
    `ip_title_four` VARCHAR(16)
);
/*-- nicepartner--*/
CREATE TABLE nicepartner(
	`npt_id` INT PRIMARY KEY AUTO_INCREMENT,
	`nav_name_ds` VARCHAR(16),#大神
	`nav_name_dy` VARCHAR(16),#导演
	`src` VARCHAR(64),#人物图片路径
	`href` VARCHAR(64),#链接地址
	`name` VARCHAR(16),#人物姓名
	`intro` VARCHAR(32),#介绍
	`more` VARCHAR(10),#more
	`des_title_one` VARCHAR(16),#详情页的小标题
	`des_title_two` VARCHAR(16),#详情页的小标题
	`des_title_three` VARCHAR(16),#详情页的小标题
	`des_intro` VARCHAR(32),#详情页的介绍
	`des_works` VARCHAR(32),#详情页的介绍
	`des_famous` VARCHAR(32)#详情页的介绍
);
/*-- newscenter--*/
CREATE TABLE newscenter(
	`news_id` INT PRIMARY KEY AUTO_INCREMENT,
	`title` VARCHAR(16),#标题
	`subtitle` VARCHAR(16),#副标题
	`more` VARCHAR(10),#more
	`tim` VARCHAR(10),#时间
	`intro` VARCHAR(32),#介绍
	`main_title` VARCHAR(32),#详情页介绍标题
    `timer` VARCHAR(16),#时间
    `dec_src_one` VARCHAR(32),#详情介绍图片
    `dec_src_two` VARCHAR(32),#详情介绍图片
    `dec_src_three` VARCHAR(32),#详情介绍图片
    `dec_src_four` VARCHAR(32),#详情介绍图片
    `dec_src_five` VARCHAR(32),#详情介绍图片
    `dec_src_six` VARCHAR(32),#详情介绍图片
    `des_subtitle_one` VARCHAR(16),#详情页的小标题
    `des_subtitle_two` VARCHAR(16),#详情页的小标题
    `des_subtitle_three` VARCHAR(16),#详情页的小标题
    `des_subtitle_four` VARCHAR(16),#详情页的小标题
    `des_subtitle_five` VARCHAR(16),#详情页的小标题
    `des_subtitle_six` VARCHAR(16),#详情页的小标题
    `des_subtitle_seven` VARCHAR(16),#详情页的小标题
    `des_subtitle_eight` VARCHAR(16),#详情页的小标题
    `des_subtitle_nine` VARCHAR(16),#详情页的小标题
    `des_art_one` VARCHAR(32),#详情页的文字
    `des_art_two` VARCHAR(32),#详情页的文字
    `des_art_three` VARCHAR(32),#详情页的文字
    `des_art_four` VARCHAR(32),#详情页的文字
    `des_art_five` VARCHAR(32),#详情页的文字
    `des_art_six` VARCHAR(32),#详情页的文字
    `des_art_seven` VARCHAR(32),#详情页的文字
    `des_art_eight` VARCHAR(32),#详情页的文字
    `des_art_nine` VARCHAR(32),#详情页的文字
    `des_art_ten` VARCHAR(32),#详情页的文字
    `des_art_eleven` VARCHAR(32),#详情页的文字
    `des_art_twelve` VARCHAR(32),#详情页的文字
    `des_art_thirteen` VARCHAR(32),#详情页的文字
    `des_art_fourteen` VARCHAR(32),#详情页的文字
    `des_art_fifteen` VARCHAR(32),#详情页的文字
    `des_art_sixteen` VARCHAR(32)#详情页的文字
);
/*-- 业务布局--*/
CREATE TABLE `business_layout`(
    `bus_id` INT PRIMARY KEY AUTO_INCREMENT,
    `mian_title` VARCHAR(16),#主标题
    `title` VARCHAR(16),#标题
    `intro` VARCHAR(64),#介绍
    `subtitle` VARCHAR(16),#小标题
    `more` VARCHAR(10),#more
    `ceo_name_jia` VARCHAR(16),#ceo名字
    `ceo_name_lu` VARCHAR(16),#ceo名字
    `ceo_intro_jia` VARCHAR(16),#ceo介绍
    `ceo_intro_lu` VARCHAR(16),#ceo介绍
    `ceo_src_jia` VARCHAR(64),#ceo图片
    `ceo_src_lu` VARCHAR(64),#ceo图片
    `ceo_src_team` VARCHAR(64),#ceo图片
    `intro_jia` VARCHAR(16),#贾坤介绍
    `intro_lu` VARCHAR(16),#卢凡溪介绍
    `sub_intro_jia` VARCHAR(16),#详情页贾坤介绍
    `sub_intro_lu` VARCHAR(16),#详情页卢凡溪介绍
    `achieve_jia` VARCHAR(64),#贾坤成就
    `achieve_lu` VARCHAR(64),#卢凡溪成就
    `intro_achieve_jia_one` VARCHAR(64),#贾坤成就介绍
    `intro_achieve_jia_teo` VARCHAR(64),#贾坤成就介绍
    `intro_achieve_lu_one` VARCHAR(64),#卢凡溪成就介绍
    `intro_achieve_lu_two` VARCHAR(64),#卢凡溪成就介绍
    `intro_achieve_lu_three` VARCHAR(64),#卢凡溪成就介绍
    `intro_achieve_lu_four` VARCHAR(64),#卢凡溪成就介绍
    `intro_achieve_lu_five` VARCHAR(64)#卢凡溪成就介绍
);
/*-- 合作公司--*/
CREATE TABLE `join_company`(
    `join_id` INT PRIMARY KEY AUTO_INCREMENT,
    `src` VARCHAR(64),#图片路径
    `alt` VARCHAR(64) #提示文字信息
);
/*-- 合作伙伴--*/
CREATE TABLE `join_partner`(
    `part_id` INT PRIMARY KEY AUTO_INCREMENT,
    `src` VARCHAR(64)#图片路径
);
/*-- footer--*/
CREATE TABLE footer(
    `foot_id` INT PRIMARY KEY AUTO_INCREMENT,
    `logo_src` VARCHAR(64),#logo图片路径
    `wx_name` VARCHAR(10),#微信
    `web_name` VARCHAR(10),#微博
    `wx_src` VARCHAR(64),#微信图片路径
    `web_src` VARCHAR(64),#微博图片路径
    `addr` VARCHAR(32),#地址
    `tel` VARCHAR(32),#电话
    `email` VARCHAR(32),#邮箱
    `wx_small` VARCHAR(32),#微信小图
    `web_small` VARCHAR(32),#微博小图
    `qq_small` VARCHAR(23)#qq小图
);
INSERT INTO nav VALUES
(),
(),