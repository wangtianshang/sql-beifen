/*
 Navicat Premium Data Transfer

 Source Server         : wang
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : study

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 11/05/2019 17:53:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (1, '编辑部门');
INSERT INTO `auth_group` VALUES (3, '教师操作');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES (1, 1, 37);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 38);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 72);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 75);
INSERT INTO `auth_group_permissions` VALUES (5, 1, 28);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 29);
INSERT INTO `auth_group_permissions` VALUES (11, 3, 31);

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 166 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (20, 'Can change 用户信息', 7, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (19, 'Can add 用户信息', 7, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (21, 'Can delete 用户信息', 7, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (22, 'Can add 邮箱验证码', 8, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (23, 'Can change 邮箱验证码', 8, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (24, 'Can delete 邮箱验证码', 8, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (25, 'Can add 轮播图', 9, 'add_banner');
INSERT INTO `auth_permission` VALUES (26, 'Can change 轮播图', 9, 'change_banner');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 轮播图', 9, 'delete_banner');
INSERT INTO `auth_permission` VALUES (28, 'Can add 课程', 10, 'add_course');
INSERT INTO `auth_permission` VALUES (29, 'Can change 课程', 10, 'change_course');
INSERT INTO `auth_permission` VALUES (30, 'Can delete 课程', 10, 'delete_course');
INSERT INTO `auth_permission` VALUES (31, 'Can add 章节', 11, 'add_lesson');
INSERT INTO `auth_permission` VALUES (32, 'Can change 章节', 11, 'change_lesson');
INSERT INTO `auth_permission` VALUES (33, 'Can delete 章节', 11, 'delete_lesson');
INSERT INTO `auth_permission` VALUES (34, 'Can add 视频', 12, 'add_video');
INSERT INTO `auth_permission` VALUES (35, 'Can change 视频', 12, 'change_video');
INSERT INTO `auth_permission` VALUES (36, 'Can delete 视频', 12, 'delete_video');
INSERT INTO `auth_permission` VALUES (37, 'Can add 课程资源', 13, 'add_courseresource');
INSERT INTO `auth_permission` VALUES (38, 'Can change 课程资源', 13, 'change_courseresource');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 课程资源', 13, 'delete_courseresource');
INSERT INTO `auth_permission` VALUES (40, 'Can add 城市', 14, 'add_citydict');
INSERT INTO `auth_permission` VALUES (41, 'Can change 城市', 14, 'change_citydict');
INSERT INTO `auth_permission` VALUES (42, 'Can delete 城市', 14, 'delete_citydict');
INSERT INTO `auth_permission` VALUES (43, 'Can add 课程机构', 15, 'add_courseorg');
INSERT INTO `auth_permission` VALUES (44, 'Can change 课程机构', 15, 'change_courseorg');
INSERT INTO `auth_permission` VALUES (45, 'Can delete 课程机构', 15, 'delete_courseorg');
INSERT INTO `auth_permission` VALUES (46, 'Can add 教师', 16, 'add_teacher');
INSERT INTO `auth_permission` VALUES (47, 'Can change 教师', 16, 'change_teacher');
INSERT INTO `auth_permission` VALUES (48, 'Can delete 教师', 16, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (49, 'Can add 用户咨询', 17, 'add_userask');
INSERT INTO `auth_permission` VALUES (50, 'Can change 用户咨询', 17, 'change_userask');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 用户咨询', 17, 'delete_userask');
INSERT INTO `auth_permission` VALUES (52, 'Can add 课程评论', 18, 'add_coursecomments');
INSERT INTO `auth_permission` VALUES (53, 'Can change 课程评论', 18, 'change_coursecomments');
INSERT INTO `auth_permission` VALUES (54, 'Can delete 课程评论', 18, 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES (55, 'Can add 用户收藏', 19, 'add_userfavorite');
INSERT INTO `auth_permission` VALUES (56, 'Can change 用户收藏', 19, 'change_userfavorite');
INSERT INTO `auth_permission` VALUES (57, 'Can delete 用户收藏', 19, 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES (58, 'Can add 用户消息', 20, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (59, 'Can change 用户消息', 20, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (60, 'Can delete 用户消息', 20, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (61, 'Can add 用户课程', 21, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (62, 'Can change 用户课程', 21, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 用户课程', 21, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (64, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (65, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (66, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (67, 'Can view 用户信息', 7, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (68, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (69, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (70, 'Can view 邮箱验证码', 8, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (71, 'Can view 轮播图', 9, 'view_banner');
INSERT INTO `auth_permission` VALUES (72, 'Can view 课程', 10, 'view_course');
INSERT INTO `auth_permission` VALUES (73, 'Can view 章节', 11, 'view_lesson');
INSERT INTO `auth_permission` VALUES (74, 'Can view 视频', 12, 'view_video');
INSERT INTO `auth_permission` VALUES (75, 'Can view 课程资源', 13, 'view_courseresource');
INSERT INTO `auth_permission` VALUES (76, 'Can view 城市', 14, 'view_citydict');
INSERT INTO `auth_permission` VALUES (77, 'Can view 课程机构', 15, 'view_courseorg');
INSERT INTO `auth_permission` VALUES (78, 'Can view 教师', 16, 'view_teacher');
INSERT INTO `auth_permission` VALUES (79, 'Can view 用户咨询', 17, 'view_userask');
INSERT INTO `auth_permission` VALUES (80, 'Can view 课程评论', 18, 'view_coursecomments');
INSERT INTO `auth_permission` VALUES (81, 'Can view 用户收藏', 19, 'view_userfavorite');
INSERT INTO `auth_permission` VALUES (82, 'Can view 用户消息', 20, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (83, 'Can view 用户课程', 21, 'view_usercourse');
INSERT INTO `auth_permission` VALUES (84, 'Can add Bookmark', 22, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (85, 'Can change Bookmark', 22, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (86, 'Can delete Bookmark', 22, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (87, 'Can add User Setting', 23, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (88, 'Can change User Setting', 23, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (89, 'Can delete User Setting', 23, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (90, 'Can add User Widget', 24, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (91, 'Can change User Widget', 24, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (92, 'Can delete User Widget', 24, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (93, 'Can view Bookmark', 22, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (94, 'Can view User Setting', 23, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (95, 'Can view User Widget', 24, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (124, 'Can view log entry', 35, 'view_log');
INSERT INTO `auth_permission` VALUES (123, 'Can delete log entry', 35, 'delete_log');
INSERT INTO `auth_permission` VALUES (122, 'Can change log entry', 35, 'change_log');
INSERT INTO `auth_permission` VALUES (105, 'Can add captcha store', 28, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (106, 'Can change captcha store', 28, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (107, 'Can delete captcha store', 28, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (108, 'Can view captcha store', 28, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (113, 'Can add 轮播课程', 10, 'add_bannercourse');
INSERT INTO `auth_permission` VALUES (112, 'Can view 轮播课程', 32, 'view_bannercourse');
INSERT INTO `auth_permission` VALUES (114, 'Can change 轮播课程', 10, 'change_bannercourse');
INSERT INTO `auth_permission` VALUES (115, 'Can delete 轮播课程', 10, 'delete_bannercourse');
INSERT INTO `auth_permission` VALUES (121, 'Can add log entry', 35, 'add_log');
INSERT INTO `auth_permission` VALUES (125, 'Can add 话题', 36, 'add_topic');
INSERT INTO `auth_permission` VALUES (126, 'Can change 话题', 36, 'change_topic');
INSERT INTO `auth_permission` VALUES (127, 'Can delete 话题', 36, 'delete_topic');
INSERT INTO `auth_permission` VALUES (128, 'Can add 节点', 37, 'add_node');
INSERT INTO `auth_permission` VALUES (129, 'Can change 节点', 37, 'change_node');
INSERT INTO `auth_permission` VALUES (130, 'Can delete 节点', 37, 'delete_node');
INSERT INTO `auth_permission` VALUES (131, 'Can view 话题', 36, 'view_topic');
INSERT INTO `auth_permission` VALUES (132, 'Can view 节点', 37, 'view_node');
INSERT INTO `auth_permission` VALUES (133, 'Can add 话题评论', 38, 'add_pinglun');
INSERT INTO `auth_permission` VALUES (134, 'Can change 话题评论', 38, 'change_pinglun');
INSERT INTO `auth_permission` VALUES (135, 'Can delete 话题评论', 38, 'delete_pinglun');
INSERT INTO `auth_permission` VALUES (136, 'Can view 话题评论', 38, 'view_pinglun');
INSERT INTO `auth_permission` VALUES (137, 'Can add 话题评论', 39, 'add_pingluntable');
INSERT INTO `auth_permission` VALUES (138, 'Can change 话题评论', 39, 'change_pingluntable');
INSERT INTO `auth_permission` VALUES (139, 'Can delete 话题评论', 39, 'delete_pingluntable');
INSERT INTO `auth_permission` VALUES (140, 'Can view pingluntable', 39, 'view_pingluntable');
INSERT INTO `auth_permission` VALUES (141, 'Can add hui fu', 40, 'add_huifu');
INSERT INTO `auth_permission` VALUES (142, 'Can change hui fu', 40, 'change_huifu');
INSERT INTO `auth_permission` VALUES (143, 'Can delete hui fu', 40, 'delete_huifu');
INSERT INTO `auth_permission` VALUES (144, 'Can view 评论回复', 40, 'view_huifu');
INSERT INTO `auth_permission` VALUES (145, 'Can add 回复的回复', 41, 'add_huifuhuifu');
INSERT INTO `auth_permission` VALUES (146, 'Can change 回复的回复', 41, 'change_huifuhuifu');
INSERT INTO `auth_permission` VALUES (147, 'Can delete 回复的回复', 41, 'delete_huifuhuifu');
INSERT INTO `auth_permission` VALUES (148, '教师权限', 16, '11111');
INSERT INTO `auth_permission` VALUES (149, 'Can view 回复的回复', 41, 'view_huifuhuifu');
INSERT INTO `auth_permission` VALUES (150, 'Can add 选择题', 42, 'add_coursexuanzetest');
INSERT INTO `auth_permission` VALUES (151, 'Can change 选择题', 42, 'change_coursexuanzetest');
INSERT INTO `auth_permission` VALUES (152, 'Can delete 选择题', 42, 'delete_coursexuanzetest');
INSERT INTO `auth_permission` VALUES (153, 'Can view 选择题', 42, 'view_coursexuanzetest');
INSERT INTO `auth_permission` VALUES (154, 'Can add 判断题', 43, 'add_coursepanduantest');
INSERT INTO `auth_permission` VALUES (155, 'Can change 判断题', 43, 'change_coursepanduantest');
INSERT INTO `auth_permission` VALUES (156, 'Can delete 判断题', 43, 'delete_coursepanduantest');
INSERT INTO `auth_permission` VALUES (157, 'Can add 填空题', 44, 'add_coursetiankongtest');
INSERT INTO `auth_permission` VALUES (158, 'Can change 填空题', 44, 'change_coursetiankongtest');
INSERT INTO `auth_permission` VALUES (159, 'Can delete 填空题', 44, 'delete_coursetiankongtest');
INSERT INTO `auth_permission` VALUES (160, 'Can view 判断题', 43, 'view_coursepanduantest');
INSERT INTO `auth_permission` VALUES (161, 'Can view 填空题', 44, 'view_coursetiankongtest');
INSERT INTO `auth_permission` VALUES (162, 'Can add 测试题分数', 45, 'add_testsorce');
INSERT INTO `auth_permission` VALUES (163, 'Can change 测试题分数', 45, 'change_testsorce');
INSERT INTO `auth_permission` VALUES (164, 'Can delete 测试题分数', 45, 'delete_testsorce');
INSERT INTO `auth_permission` VALUES (165, 'Can view 测试题分数', 45, 'view_testsorce');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_e8701ad4`(`user_id`) USING BTREE,
  INDEX `auth_user_groups_0e939a4f`(`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permissions_e8701ad4`(`user_id`) USING BTREE,
  INDEX `auth_user_user_permissions_8373b171`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 319 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for community_huifu
-- ----------------------------
DROP TABLE IF EXISTS `community_huifu`;
CREATE TABLE `community_huifu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cengji` int(11) NOT NULL,
  `pinglun_text` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mubiao_user` int(11) NOT NULL,
  `huifu_user` int(11) NOT NULL,
  `huifu_pinglun_id` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `huifu_user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mubiao_user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `community_huifu_huifu_pinglun_id_27ea2fb6_fk_community`(`huifu_pinglun_id`) USING BTREE,
  CONSTRAINT `community_huifu_huifu_pinglun_id_27ea2fb6_fk_community` FOREIGN KEY (`huifu_pinglun_id`) REFERENCES `community_pinglun` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of community_huifu
-- ----------------------------
INSERT INTO `community_huifu` VALUES (4, 2, '我猜你是', 8, 13, 7, '2019-04-07 20:48:16', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (5, 2, '我就是', 8, 13, 7, '2019-04-07 20:49:33', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (6, 2, '号码', 8, 13, 7, '2019-04-07 20:49:42', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (7, 2, '那你男男女女的顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶我看看快快快快快快快快快快快快快快快快快快快快快快快快快快快快快快看看弟弟顶顶顶顶顶', 8, 13, 9, '2019-04-07 21:41:01', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (8, 2, '你是', 8, 13, 9, '2019-04-07 22:52:56', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (9, 2, '你试试额', 8, 8, 15, '2019-04-07 23:02:48', 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 'nihao');
INSERT INTO `community_huifu` VALUES (10, 2, '1111111111', 8, 8, 15, '2019-04-07 23:07:02', 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 'nihao');
INSERT INTO `community_huifu` VALUES (11, 2, '11135156315', 8, 8, 15, '2019-04-07 23:09:48', 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 'nihao');
INSERT INTO `community_huifu` VALUES (12, 2, '我才', 8, 8, 15, '2019-04-07 23:37:57', 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 'nihao');
INSERT INTO `community_huifu` VALUES (13, 2, '111111111111111111111111', 8, 13, 7, '2019-04-08 19:46:44', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (14, 2, '1', 13, 8, 23, '2019-04-10 00:27:58', 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 'nihao');
INSERT INTO `community_huifu` VALUES (15, 2, '哈哈哈哈哈哈哈哈哈哈', 13, 8, 23, '2019-04-10 00:39:41', 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 'nihao');
INSERT INTO `community_huifu` VALUES (16, 2, '333', 13, 13, 24, '2019-04-10 00:42:07', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (17, 2, '222', 13, 13, 24, '2019-04-10 00:43:11', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (18, 2, '535232', 13, 13, 24, '2019-04-10 00:45:31', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (19, 2, '555', 13, 13, 24, '2019-04-10 00:47:01', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (20, 2, '333333333333', 13, 13, 24, '2019-04-10 00:47:54', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (21, 2, '362', 13, 8, 23, '2019-04-10 00:49:36', 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 'nihao');
INSERT INTO `community_huifu` VALUES (22, 2, '655', 8, 13, 17, '2019-04-10 00:54:57', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (23, 2, '56233', 8, 8, 20, '2019-04-10 00:56:26', 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 'nihao');
INSERT INTO `community_huifu` VALUES (24, 2, '52', 8, 8, 25, '2019-04-10 00:56:45', 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 'nihao');
INSERT INTO `community_huifu` VALUES (25, 2, '1111111', 8, 8, 25, '2019-04-10 15:21:47', 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 'nihao');
INSERT INTO `community_huifu` VALUES (26, 2, '1111', 8, 8, 20, '2019-04-10 15:29:22', 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 'nihao');
INSERT INTO `community_huifu` VALUES (27, 2, '22222222222', 13, 8, 20, '2019-04-10 15:35:27', 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 'nihao');
INSERT INTO `community_huifu` VALUES (28, 2, '2222', 13, 8, 26, '2019-04-10 15:40:26', 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 'nihao');
INSERT INTO `community_huifu` VALUES (29, 2, '33333', 13, 8, 27, '2019-04-10 15:40:32', 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 'nihao');
INSERT INTO `community_huifu` VALUES (30, 2, '你是', 8, 13, 22, '2019-04-13 14:40:13', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (31, 2, '222', 8, 28, 7, '2019-05-07 22:09:53', '15617165229@163.com', 'image/default.png', 'wang');
INSERT INTO `community_huifu` VALUES (32, 2, 'qqqqq', 8, 28, 7, '2019-05-07 22:11:10', '15617165229@163.com', 'image/default.png', 'wang');
INSERT INTO `community_huifu` VALUES (33, 2, '你的评论很有趣', 8, 13, 38, '2019-05-10 14:17:26', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (34, 2, '你这个评论也很好', 8, 13, 39, '2019-05-10 14:17:38', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (37, 2, '你也好', 8, 13, 43, '2019-05-10 22:56:30', 'nihao', 'image/2019/04/other.jpg', 'wang');
INSERT INTO `community_huifu` VALUES (38, 2, '嗯嗯', 8, 13, 44, '2019-05-10 22:56:37', 'nihao', 'image/2019/04/other.jpg', 'wang');

-- ----------------------------
-- Table structure for community_huifuhuifu
-- ----------------------------
DROP TABLE IF EXISTS `community_huifuhuifu`;
CREATE TABLE `community_huifuhuifu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cengji` int(11) NOT NULL,
  `text` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mubiao_user` int(11) NOT NULL,
  `mubiao_user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `huifu_user` int(11) NOT NULL,
  `huifu_user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  `image` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `huifu_huifu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `community_huifuhuifu_huifu_huifu_id_d653dfe3_fk_community`(`huifu_huifu_id`) USING BTREE,
  CONSTRAINT `community_huifuhuifu_huifu_huifu_id_d653dfe3_fk_community` FOREIGN KEY (`huifu_huifu_id`) REFERENCES `community_huifu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of community_huifuhuifu
-- ----------------------------
INSERT INTO `community_huifuhuifu` VALUES (1, 3, '1', 8, 'nihao', 8, 'wang', '2019-04-08 00:27:56', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 4);
INSERT INTO `community_huifuhuifu` VALUES (2, 3, '我是你大爷', 8, 'nihao', 8, 'wang', '2019-04-08 00:28:18', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 4);
INSERT INTO `community_huifuhuifu` VALUES (3, 3, '你是谁', 8, 'nihao', 8, 'wang', '2019-04-08 00:34:53', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 5);
INSERT INTO `community_huifuhuifu` VALUES (4, 3, '22222', 8, 'nihao', 8, 'wang', '2019-04-08 00:41:51', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 4);
INSERT INTO `community_huifuhuifu` VALUES (5, 3, '密码', 8, 'nihao', 8, 'wang', '2019-04-08 00:50:02', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 4);
INSERT INTO `community_huifuhuifu` VALUES (6, 3, 'nixinbuxin', 8, 'wang', 13, 'nihao', '2019-04-08 00:50:56', 'image/2019/04/other.jpg', 4);
INSERT INTO `community_huifuhuifu` VALUES (7, 3, '33333333333333', 8, 'wang', 13, 'nihao', '2019-04-08 19:47:22', 'image/2019/04/other.jpg', 4);
INSERT INTO `community_huifuhuifu` VALUES (8, 3, '111', 8, 'nihao', 8, 'wang', '2019-04-10 00:21:47', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 4);
INSERT INTO `community_huifuhuifu` VALUES (9, 3, '222222', 8, 'nihao', 8, 'wang', '2019-04-10 00:22:04', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 4);
INSERT INTO `community_huifuhuifu` VALUES (10, 3, '1', 8, 'wang', 13, 'nihao', '2019-04-10 00:23:20', 'image/2019/04/other.jpg', 4);
INSERT INTO `community_huifuhuifu` VALUES (11, 3, '错错错', 8, 'nihao', 8, 'wang', '2019-04-10 00:24:31', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 4);
INSERT INTO `community_huifuhuifu` VALUES (12, 3, '你呢', 13, 'wang', 13, 'nihao', '2019-04-10 00:28:44', 'image/2019/04/other.jpg', 14);
INSERT INTO `community_huifuhuifu` VALUES (13, 3, '1', 13, 'nihao', 8, 'wang', '2019-04-10 00:30:00', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 14);
INSERT INTO `community_huifuhuifu` VALUES (14, 3, '11111', 13, 'wang', 13, 'nihao', '2019-04-10 00:32:05', 'image/2019/04/other.jpg', 14);
INSERT INTO `community_huifuhuifu` VALUES (15, 3, '33333', 13, 'wang', 13, 'nihao', '2019-04-10 00:33:29', 'image/2019/04/other.jpg', 14);
INSERT INTO `community_huifuhuifu` VALUES (16, 3, '22222', 13, 'wang', 13, 'nihao', '2019-04-10 00:34:53', 'image/2019/04/other.jpg', 14);
INSERT INTO `community_huifuhuifu` VALUES (17, 3, 'mmmm', 13, 'wang', 13, 'nihao', '2019-04-10 00:37:52', 'image/2019/04/other.jpg', 14);
INSERT INTO `community_huifuhuifu` VALUES (18, 3, '快快快', 13, 'wang', 13, 'nihao', '2019-04-10 00:38:06', 'image/2019/04/other.jpg', 14);
INSERT INTO `community_huifuhuifu` VALUES (19, 3, 'qq', 13, 'wang', 13, 'nihao', '2019-04-10 00:38:53', 'image/2019/04/other.jpg', 14);
INSERT INTO `community_huifuhuifu` VALUES (20, 3, 'jjj', 13, 'nihao', 8, 'wang', '2019-04-10 00:40:41', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 14);
INSERT INTO `community_huifuhuifu` VALUES (21, 3, '66666666', 13, 'nihao', 8, 'wang', '2019-04-10 00:41:09', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 14);
INSERT INTO `community_huifuhuifu` VALUES (22, 3, '222', 13, 'wang', 13, 'nihao', '2019-04-10 00:42:47', 'image/2019/04/other.jpg', 14);
INSERT INTO `community_huifuhuifu` VALUES (23, 3, '66', 13, 'nihao', 8, 'wang', '2019-04-10 00:50:15', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 14);
INSERT INTO `community_huifuhuifu` VALUES (24, 3, '2\n2', 13, 'nihao', 8, 'wang', '2019-04-10 00:53:16', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 17);
INSERT INTO `community_huifuhuifu` VALUES (25, 3, '\n33', 8, 'nihao', 8, 'wang', '2019-04-10 00:56:16', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 22);
INSERT INTO `community_huifuhuifu` VALUES (26, 3, '11', 8, 'nihao', 8, 'wang', '2019-04-10 15:25:00', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 22);
INSERT INTO `community_huifuhuifu` VALUES (27, 3, '3333333333', 8, 'nihao', 8, 'wang', '2019-04-10 15:35:40', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 22);
INSERT INTO `community_huifuhuifu` VALUES (28, 3, '333333', 13, 'wang', 13, 'nihao', '2019-04-10 15:40:59', 'image/2019/04/other.jpg', 28);
INSERT INTO `community_huifuhuifu` VALUES (29, 3, '33333333', 13, 'wang', 13, 'nihao', '2019-04-10 15:41:14', 'image/2019/04/other.jpg', 29);
INSERT INTO `community_huifuhuifu` VALUES (30, 3, '555555555', 8, 'wang', 13, 'nihao', '2019-04-10 15:44:46', 'image/2019/04/other.jpg', 29);
INSERT INTO `community_huifuhuifu` VALUES (31, 3, '22222222222222222', 8, 'nihao', 8, 'wang', '2019-04-10 15:45:15', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 29);
INSERT INTO `community_huifuhuifu` VALUES (32, 3, '555555555556666666666666', 13, 'nihao', 8, 'wang', '2019-04-10 15:46:27', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 29);
INSERT INTO `community_huifuhuifu` VALUES (33, 3, '222', 13, 'nihao', 8, 'wang', '2019-04-13 14:40:38', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 30);
INSERT INTO `community_huifuhuifu` VALUES (34, 3, '走起', 8, 'wang', 13, 'nihao', '2019-04-13 14:41:02', 'image/2019/04/other.jpg', 30);
INSERT INTO `community_huifuhuifu` VALUES (35, 3, '我是', 8, 'wang', 13, 'nihao', '2019-04-26 10:32:49', 'image/2019/04/other.jpg', 30);
INSERT INTO `community_huifuhuifu` VALUES (36, 3, 'wwwwwww', 13, 'nihao', 28, '15617165229@163.com', '2019-05-07 22:10:01', 'image/default.png', 4);
INSERT INTO `community_huifuhuifu` VALUES (37, 3, 'qqqq', 13, 'nihao', 28, '15617165229@163.com', '2019-05-07 22:10:10', 'image/default.png', 4);
INSERT INTO `community_huifuhuifu` VALUES (38, 3, 'qqqqqqqq', 13, 'nihao', 28, '15617165229@163.com', '2019-05-07 22:11:15', 'image/default.png', 4);
INSERT INTO `community_huifuhuifu` VALUES (39, 3, 'eeeeeeeee', 8, 'wang', 28, '15617165229@163.com', '2019-05-07 22:11:21', 'image/default.png', 4);
INSERT INTO `community_huifuhuifu` VALUES (40, 3, '你也很哈皮', 13, 'nihao', 8, 'wang', '2019-05-10 14:18:02', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 33);
INSERT INTO `community_huifuhuifu` VALUES (41, 3, '你也不错', 13, 'nihao', 8, 'wang', '2019-05-10 14:18:12', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png', 34);
INSERT INTO `community_huifuhuifu` VALUES (42, 3, '大家好', 13, 'nihao', 8, 'wang', '2019-05-10 22:57:00', 'image/2019/05/QQ截图20190312204019_zv3qHD8.png', 37);
INSERT INTO `community_huifuhuifu` VALUES (43, 3, '恁', 13, 'nihao', 8, 'wang', '2019-05-10 22:57:13', 'image/2019/05/QQ截图20190312204019_zv3qHD8.png', 38);

-- ----------------------------
-- Table structure for community_node
-- ----------------------------
DROP TABLE IF EXISTS `community_node`;
CREATE TABLE `community_node`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of community_node
-- ----------------------------
INSERT INTO `community_node` VALUES (1, 'django', '2019-04-02 19:07:00');
INSERT INTO `community_node` VALUES (2, 'python', '2019-04-03 14:27:00');
INSERT INTO `community_node` VALUES (3, 'java', '2019-04-03 14:28:00');
INSERT INTO `community_node` VALUES (4, '其他', '2019-04-04 21:08:00');

-- ----------------------------
-- Table structure for community_pinglun
-- ----------------------------
DROP TABLE IF EXISTS `community_pinglun`;
CREATE TABLE `community_pinglun`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cengji` int(11) NOT NULL,
  `mubiao_user` int(11) NOT NULL,
  `pinglun_text` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pinglun_user` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `pinglun_topic_id` int(11) NULL DEFAULT NULL,
  `mubiao_user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `community_pingluntab_pinglun_topic_id_87535726_fk_community`(`pinglun_topic_id`) USING BTREE,
  CONSTRAINT `community_pingluntab_pinglun_topic_id_87535726_fk_community` FOREIGN KEY (`pinglun_topic_id`) REFERENCES `community_topic` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of community_pinglun
-- ----------------------------
INSERT INTO `community_pinglun` VALUES (7, 1, 8, '你是谁', 8, '2019-04-06 00:55:54', 1, 'wang', 'image/2019/04/QQ截图20190312204019_kXAhUDb.png');
INSERT INTO `community_pinglun` VALUES (8, 1, 8, '你好', 8, '2019-04-06 00:57:56', 2, 'wang', 'image/2019/04/QQ截图20190312204019_kXAhUDb.png');
INSERT INTO `community_pinglun` VALUES (9, 1, 8, '我试试', 8, '2019-04-06 11:49:29', 1, 'wang', 'image/2019/04/QQ截图20190312204019_kXAhUDb.png');
INSERT INTO `community_pinglun` VALUES (10, 1, 8, '你还', 8, '2019-04-06 20:58:09', 1, 'wang', 'image/2019/04/QQ截图20190312204019_kXAhUDb.png');
INSERT INTO `community_pinglun` VALUES (11, 1, 8, '你好', 8, '2019-04-06 20:58:26', 1, 'wang', 'image/2019/04/QQ截图20190312204019_kXAhUDb.png');
INSERT INTO `community_pinglun` VALUES (12, 1, 8, '你好吗', 8, '2019-04-06 21:00:03', 1, 'wang', 'image/2019/04/QQ截图20190312204019_kXAhUDb.png');
INSERT INTO `community_pinglun` VALUES (13, 1, 8, '你好', 8, '2019-04-06 23:10:11', 20, 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png');
INSERT INTO `community_pinglun` VALUES (14, 1, 8, '你是', 8, '2019-04-07 18:47:23', 1, 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png');
INSERT INTO `community_pinglun` VALUES (15, 1, 8, '你是谁啊你', 13, '2019-04-07 18:59:55', 1, 'nihao', 'image/default.png');
INSERT INTO `community_pinglun` VALUES (16, 1, 8, '你', 13, '2019-04-07 20:10:31', 1, 'nihao', 'image/default.png');
INSERT INTO `community_pinglun` VALUES (17, 1, 8, '你是', 8, '2019-04-07 23:42:02', 2, 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png');
INSERT INTO `community_pinglun` VALUES (18, 1, 8, '你猜', 13, '2019-04-08 17:18:36', 1, 'nihao', 'image/2019/04/other.jpg');
INSERT INTO `community_pinglun` VALUES (19, 1, 8, '111111111111111111111111111111111', 13, '2019-04-08 19:46:39', 1, 'nihao', 'image/2019/04/other.jpg');
INSERT INTO `community_pinglun` VALUES (20, 1, 8, '你好', 13, '2019-04-10 00:14:06', 2, 'nihao', 'image/2019/04/other.jpg');
INSERT INTO `community_pinglun` VALUES (21, 1, 8, '你好啊', 8, '2019-04-10 00:16:10', 1, 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png');
INSERT INTO `community_pinglun` VALUES (22, 1, 0, '1', 8, '2019-04-10 00:26:19', 3, 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png');
INSERT INTO `community_pinglun` VALUES (23, 1, 13, '1', 13, '2019-04-10 00:27:30', 22, 'nihao', 'image/2019/04/other.jpg');
INSERT INTO `community_pinglun` VALUES (24, 1, 13, '333333333333', 8, '2019-04-10 00:40:18', 22, 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png');
INSERT INTO `community_pinglun` VALUES (25, 1, 8, '3232', 13, '2019-04-10 00:54:48', 2, 'nihao', 'image/2019/04/other.jpg');
INSERT INTO `community_pinglun` VALUES (26, 1, 0, '22222', 13, '2019-04-10 15:39:41', 4, 'nihao', 'image/2019/04/other.jpg');
INSERT INTO `community_pinglun` VALUES (27, 1, 0, '3333333333', 13, '2019-04-10 15:39:46', 4, 'nihao', 'image/2019/04/other.jpg');
INSERT INTO `community_pinglun` VALUES (28, 1, 0, '你好', 13, '2019-04-26 10:32:24', 3, 'nihao', 'image/2019/04/other.jpg');
INSERT INTO `community_pinglun` VALUES (29, 1, 8, '就很舒服简单快速', 13, '2019-04-27 10:20:42', 1, 'nihao', 'image/2019/04/other.jpg');
INSERT INTO `community_pinglun` VALUES (30, 1, 8, '1', 28, '2019-05-07 18:59:43', 1, '15617165229@163.com', 'image/default.png');
INSERT INTO `community_pinglun` VALUES (31, 1, 8, '1111', 28, '2019-05-07 19:00:50', 1, '15617165229@163.com', 'image/default.png');
INSERT INTO `community_pinglun` VALUES (32, 1, 8, '2222222', 28, '2019-05-07 19:05:47', 1, '15617165229@163.com', 'image/default.png');
INSERT INTO `community_pinglun` VALUES (33, 1, 8, '3333333333', 28, '2019-05-07 19:07:05', 1, '15617165229@163.com', 'image/default.png');
INSERT INTO `community_pinglun` VALUES (34, 1, 8, '呃呃呃呃呃呃呃呃呃鹅鹅鹅鹅鹅鹅饿', 28, '2019-05-07 19:20:09', 1, '15617165229@163.com', 'image/default.png');
INSERT INTO `community_pinglun` VALUES (35, 1, 8, '哒哒哒哒哒哒多多多多多多', 28, '2019-05-07 19:28:28', 1, '15617165229@163.com', 'image/default.png');
INSERT INTO `community_pinglun` VALUES (36, 1, 8, '3333333333', 28, '2019-05-07 22:07:48', 1, '15617165229@163.com', 'image/default.png');
INSERT INTO `community_pinglun` VALUES (37, 1, 8, 'ffffffffffffffffffffffff', 28, '2019-05-07 22:09:33', 1, '15617165229@163.com', 'image/default.png');
INSERT INTO `community_pinglun` VALUES (38, 1, 0, '你好', 8, '2019-05-10 14:12:55', 6, 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png');
INSERT INTO `community_pinglun` VALUES (39, 1, 0, '你是', 8, '2019-05-10 14:13:00', 6, 'wang', 'image/2019/04/QQ截图20190312204019_yXhNDbJ.png');
INSERT INTO `community_pinglun` VALUES (42, 1, 8, '那就', 8, '2019-05-10 22:49:44', 1, 'wang', 'image/2019/05/java3.jpg');
INSERT INTO `community_pinglun` VALUES (43, 1, 8, '你好', 8, '2019-05-10 22:55:48', 33, 'wang', 'image/2019/05/QQ截图20190312204019_zv3qHD8.png');
INSERT INTO `community_pinglun` VALUES (44, 1, 8, '学习不错', 8, '2019-05-10 22:55:59', 33, 'wang', 'image/2019/05/QQ截图20190312204019_zv3qHD8.png');

-- ----------------------------
-- Table structure for community_topic
-- ----------------------------
DROP TABLE IF EXISTS `community_topic`;
CREATE TABLE `community_topic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_num` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `topic_node_id` int(11) NULL DEFAULT NULL,
  `floor` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `topic_uid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `community_topic_topic_node_id_153b949e_fk_community_node_id`(`topic_node_id`) USING BTREE,
  CONSTRAINT `community_topic_topic_node_id_153b949e_fk_community_node_id` FOREIGN KEY (`topic_node_id`) REFERENCES `community_node` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of community_topic
-- ----------------------------
INSERT INTO `community_topic` VALUES (1, 'django自学', '学习django这么些年学习django这么些年学习django这么些年学习django这么些年学习django这么些年学习django这么些年学习django这么些年学习django这么些年学习dj', 503, 29, '2019-04-03 14:50:00', 1, 0, 'topic/2019/04/django.jpg', 8);
INSERT INTO `community_topic` VALUES (2, 'django中的admin使用', 'admin是django中自带的后台管理系统admin是django中自带的后台管理系统admin是django中自带的后台管理系统admin是django中自带的后台管理系统admin是djangoadmin是django中自带的后台管理系统admin是django中自带的后台管理系统admin是django中自带的后台管理系统admin是django中自带的后台管理系统admin是djangoadmin是django中自带的后台管理系统admin是django中自带的后台管理系统admin是django中自带的后台管理系统admin是django中自带的后台管理系统admin是djangoadmin是django中自带的后台管理系统admin是django中自带的后台管理系统admin是django中自带的后台管理系统admin是django中自带的后台管理系统admin是django', 51, 3, '2019-04-03 14:50:00', 1, 0, 'topic/2019/04/django2.jpg', 8);
INSERT INTO `community_topic` VALUES (3, '自学成才', '这是一篇 Python 入门指南，针对那些没有任何编程经验，从零开始学习 Python 的同学。不管你学习的出发点是兴趣驱动、拓展思维，还是工作需要、想要转行，都可以此文作为一个参考。', 12, 2, '2019-04-03 17:20:00', 2, 0, 'topic/2019/04/python_ngQzs0v.jpg', 0);
INSERT INTO `community_topic` VALUES (4, '那些年刷过的java', 'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程 [1]  。', 15, 2, '2019-04-03 17:21:00', 3, 0, 'topic/2019/04/Java2.jpg', 0);
INSERT INTO `community_topic` VALUES (5, '装饰器', '装饰器本质上是一个Python函数，它可以让其他函数在不需要做任何代码变动的前提下增加额外功能，装饰器的返回值也是一个函数对象。它经常用于有切面需求的场景，比如：插入日志、性能测试、事务处理、缓存、权限校验等场景。装饰器是解决这类问题的绝佳设计，有了装饰器，我们就可以抽离出大量与函数功能本身无关的雷同代码并继续重用。', 1, 0, '2019-04-03 17:22:00', 2, 0, 'topic/2019/04/java3.jpg', 0);
INSERT INTO `community_topic` VALUES (6, '匿名函数', '当我们在传入函数时，有些时候，不需要显式地定义函数，直接传入匿名函数更方便。当我们在传入函数时，有些时候，不需要显式地定义函数，直接传入匿名函数更方便。当我们在传入函数时，有些时候，不需要显式地定义函数，直接传入匿名函数更方便。', 10, 2, '2019-04-03 17:23:00', 2, 0, 'topic/2019/04/python2.jpg', 0);
INSERT INTO `community_topic` VALUES (7, 'jdbc之对面的女孩看过来', 'JDBC（Java Data Base Connectivity,java数据库连接）是一种用于执行SQL语句的Java API，可以为多种关系数据库提供统一访问，它由一组用Java语言编写的类和接口组成。JDBC提供了一种基准，据此可以构建更高级的工具和接口，使数据库开发人员能够编写数据库应用程序。', 0, 0, '2019-04-03 17:24:00', 3, 0, 'topic/2019/04/java.jpg', 0);
INSERT INTO `community_topic` VALUES (8, 'python你好', '我最喜欢python，从17年开始自学，后来自己做项目，写爬虫，不亦乐乎', 0, 0, '2019-04-03 20:48:00', 2, 0, 'topic/2019/04/python.jpg', 0);
INSERT INTO `community_topic` VALUES (9, '好好学习', '· 学海真的无涯吗？到底什么样的“知识”值得我们花精力去学？\r\n知识无穷无尽，但掌控这个世界运行的底层规律是有限的。你需要的是从海量知识中辨别出其中的“王炸”，一通百通！\r\n学海非无涯，知识有主次。\r\n· 为什么学习“学习的方法”，比学习本身更重要？ [1] \r\n世界这么大，而我们的智慧有限。只有掌握了更有效的学习方法，才能在极为有限的时间里，把自己的认知水平比别人多往前推进一厘米。', 0, 0, '2019-04-04 21:01:00', 3, 0, 'topic/2019/04/python2_z5jAnrq.jpg', 0);
INSERT INTO `community_topic` VALUES (10, '学不完的python', '学不完的python学不完的python学不完的python学不完的python学不完的python学不完的python学不完的python学不完的python学不完的python学不完的python学不完的python学不完的python学不完的python学不完的python', 0, 0, '2019-04-04 22:40:00', 2, 0, 'topic/2019/04/python_gFj67OP.jpg', 0);
INSERT INTO `community_topic` VALUES (11, 'django自学', '不卡查看django自学django自学django自学django自学django自学django自学django自学django自学django自学django自学django自学django自学', 0, 0, '2019-04-04 23:50:00', 1, 0, 'topic/2019/04/django2_DxvsZf3.jpg', 0);
INSERT INTO `community_topic` VALUES (12, '生成器', '生成器是一次生成一个值的特殊类型函数。可以将其视为可恢复函数。调用该函数将返回一个可用于生成连续 x 值的生成【Generator】，简单的说就是在函数的执行过程中，yield语句会把你需要的值返回给调用生成器的地方，然后退出函数，下一次调用生成器函数的时候又从上次中断的地方开始执行，而生成器内的所有变量参数都会被保存下来供下一次使用。', 0, 0, '2019-04-05 12:38:00', 1, 0, 'topic/2019/04/django_qZ69w9G.jpg', 0);
INSERT INTO `community_topic` VALUES (13, 'hhhh', '哈哈哈哈哈哈哈哈哈哈或或或或', 0, 0, '2019-04-06 12:25:00', 1, 0, 'topic/2019/04/django_untWa1R.jpg', 0);
INSERT INTO `community_topic` VALUES (14, 'django你好', '学习django学习django学习django学习django学习django学习django学习django学习django学习django学习django学习django学习django学习django学习django学习django学习django', 1, 0, '2019-04-06 21:31:54', 1, 0, 'django2.jpg', 8);
INSERT INTO `community_topic` VALUES (15, '你好', '你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你你', 0, 0, '2019-04-06 21:49:37', 1, 0, '', 8);
INSERT INTO `community_topic` VALUES (16, '1', '1111111111111111', 1, 0, '2019-04-06 21:53:00', 1, 0, 'topic/2019/04/django2_9dMKpAE.jpg', 8);
INSERT INTO `community_topic` VALUES (17, '王', '你是王得天下', 0, 0, '2019-04-06 22:09:00', 1, 0, 'topic/2019/04/django_3d3vPnx.jpg', 8);
INSERT INTO `community_topic` VALUES (18, '33333', '33333333333333333', 0, 0, '2019-04-06 22:12:27', 1, 0, 'topic/2019/04/java3_jnMnTKX.jpg', 8);
INSERT INTO `community_topic` VALUES (19, '22222222222222', '222222222222222222222222222222222222222222', 0, 0, '2019-04-06 22:38:41', 1, 0, 'topic/2019/04/python_YuHeOyp.jpg', 8);
INSERT INTO `community_topic` VALUES (20, '我的字体', '草拟回复你定草拟回复你定草拟回复你定草拟回复你定草拟回复你定草拟回复你定草拟回复你定草拟回复你定草拟回复你定草拟回复你定草拟回复你定草拟回复你定草拟回复你定草拟回复你定草拟回复你定', 4, 1, '2019-04-06 23:04:49', 4, 0, 'topic/2019/04/other.jpg', 8);
INSERT INTO `community_topic` VALUES (21, '题外话', '就是这么来的', 0, 0, '2019-04-06 23:07:51', 4, 0, 'topic/2019/04/other.jpg', 8);
INSERT INTO `community_topic` VALUES (22, '尼斯是黑', '你是谁最牛逼的额', 45, 2, '2019-04-10 00:27:18', 1, 0, 'topic/2019/04/other_idulEg4.jpg', 13);
INSERT INTO `community_topic` VALUES (26, '河南', '111111111111111111111111111111', 0, 0, '2019-04-14 17:17:25', 4, 0, 'topic/2019/04/other.jpg', 13);
INSERT INTO `community_topic` VALUES (27, '2222', '分数高认定表', 0, 0, '2019-04-14 17:17:58', 1, 0, 'topic/2019/04/QQ截图20190312204019.png', 13);
INSERT INTO `community_topic` VALUES (28, '511', '232323325', 0, 0, '2019-04-14 17:19:49', 4, 0, 'topic/2019/04/other.jpg', 13);
INSERT INTO `community_topic` VALUES (29, '都是', '我', 0, 0, '2019-04-28 12:00:37', 4, 0, 'topic/2019/04/other.jpg', 13);
INSERT INTO `community_topic` VALUES (33, '自学python', 'python是世界上最好的语言', 11, 2, '2019-05-10 22:55:38', 2, 0, 'topic/2019/05/java3.jpg', 8);

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `degree` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `course_org_id` int(11) NULL DEFAULT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_id` int(11) NULL DEFAULT NULL,
  `teacher_tell` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `youneed_know` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_course_11456c5a`(`course_org_id`) USING BTREE,
  INDEX `courses_course_d9614d40`(`teacher_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES (1, 'django入门', 'django入门', '<p><br/> </p><h1 label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\" class=\"ue_t\">[此处键入文章标题]</h1><p><img src=\"http://img.baidu.com/hi/youa/y_0034.gif\" style=\"width:300px;height:200px;float:left;\" width=\"300\" vspace=\"0\" hspace=\"0\" height=\"200\" border=\"0\"/>图文混排方法</p><p>1. 图片居左，文字围绕图片排版</p><p>方法：在文字前面插入图片，设置居左对齐，然后即可在右边输入多行文本</p><p><br/> </p><p>2. 图片居右，文字围绕图片排版</p><p>方法：在文字前面插入图片，设置居右对齐，然后即可在左边输入多行文本</p><p><br/> </p><p>3. 图片居中环绕排版</p><p>方法：亲，这个真心没有办法。。。</p><p><br/> </p><p><br/> </p><p><img src=\"http://img.baidu.com/hi/youa/y_0040.gif\" style=\"width:300px;height:300px;float:right;\" width=\"300\" vspace=\"0\" hspace=\"0\" height=\"300\" border=\"0\"/> </p><p>还有没有什么其他的环绕方式呢？这里是居右环绕</p><p><br/> </p><p>欢迎大家多多尝试，为UEditor提供更多高质量模板！</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p><br/> </p><p><br/> </p>', 'cj', 0, 5, 0, 'courses/2019/04/django_WujrSYe.jpg', 13, '2016-10-25 23:40:00', 1, '后端开发', 'django开发', 2, 'django开发', 'django开发', 0);
INSERT INTO `courses_course` VALUES (2, 'java入门', 'java入门', '<p>&nbsp; &nbsp; java入门java入门java入门java入门java入门\r\n\r\njava入门java入门\r\njava入门</p>', 'zj', 20, 0, 0, 'courses/2019/04/u3174861642698230749fm26gp0_hWlE2bc.jpg', 1, '2019-04-17 16:04:00', 2, '后端开发', '1', 2, '1', '1', 0);
INSERT INTO `courses_course` VALUES (3, 'python入门', 'python入门', '<p>&nbsp; &nbsp; python入门python入门python入门python入门python入门</p>', 'zj', 0, 0, 0, 'courses/2019/04/python_sFXyAsx.jpg', 1, '2016-11-05 16:07:00', 4, '后端开发', '1', 5, '1', '1', 0);
INSERT INTO `courses_course` VALUES (4, 'java入门2', 'java入门2', '<p>&nbsp; &nbsp; java入门2java入门2java入门2\r\njava入门2\r\njava入门2\r\njava入门2\r\njava入门2</p>', 'gj', 0, 0, 0, 'courses/2019/04/u30627107874289566700fm26gp0_67c3vU8.jpg', 2, '2016-11-05 16:08:00', 5, '后端开发', '全国知名', 4, '囧架架', '好好学习', 0);
INSERT INTO `courses_course` VALUES (5, 'java入门3', 'java入门3', '<p>&nbsp; &nbsp; java入门3\r\njava入门3\r\njava入门3\r\njava入门3\r\njava入门3</p>', 'cj', 0, 1, 0, 'courses/2019/04/u11339775383489932839fm26gp0_7O3qFIt.jpg', 1, '2016-11-05 16:08:00', 6, '后端开发', '1', 3, '1', '1', 0);
INSERT INTO `courses_course` VALUES (6, 'python入门2', 'python入门2  python入门2', '<p>&nbsp; &nbsp; python入门2\r\npython入门2\r\npython入门2\r\npython入门2\r\npython入门2\r\npython入门2&nbsp; &nbsp; python入门2 python入门2 python入门2 python入门2 python入门2 python入门2&nbsp; &nbsp; python入门2 python入门2 python入门2 python入门2 python入门2 python入门2&nbsp; &nbsp; python入门2 python入门2 python入门2 python入门2 python入门2 python入门2&nbsp; &nbsp; python入门2 python入门2 python入门2 python入门2 python入门2 python入门2&nbsp; &nbsp; python入门2 python入门2 python入门2 python入门2 python入门2 python入门2&nbsp; &nbsp; python入门2 python入门2 python入门2 python入门2 python入门2 python入门2</p>', 'zj', 0, 6, 0, 'courses/2019/04/u3822832871362040399fm11gp0_VFHmKhg.jpg', 20, '2019-04-17 16:08:00', 10, '后端开发', '1', 1, '1', '1', 0);
INSERT INTO `courses_course` VALUES (7, 'django与vuejs实战项目', 'python入门2', '<p>&nbsp; &nbsp; python入门2\r\npython入门2\r\npython入门2\r\npython入门2\r\npython入门2</p>', 'zj', 0, 8, 0, 'courses/2019/04/vue2_5JwEPVg.jpg', 26, '2016-11-05 16:09:00', 2, '后端开发', '前端开发', 3, 'go语言', '前端开发', 1);
INSERT INTO `courses_course` VALUES (8, 'django实战项目', 'django实战项目', '<p>&nbsp; &nbsp; django实战项目\r\ndjango实战项目\r\ndjango实战项目\r\ndjango实战项目\r\ndjango实战项目\r\ndjango实战项目</p>', 'zj', 0, 0, 0, 'courses/2019/04/u3822832871362040399fm11gp0.jpg', 2, '2016-11-05 16:09:00', 1, '后端开发', 'python', 5, '1', '1', 0);
INSERT INTO `courses_course` VALUES (9, 'go语言入门', 'django实战项目', 'django实战项目\r\ndjango实战项目\r\ndjango实战项目\r\ndjango实战项目', 'zj', 0, 2, 0, 'courses/2019/04/go_t0zVJps.jpg', 21, '2016-11-05 16:10:00', 2, '后端开发', 'go语言', 1, 'go语言', 'go语言', 1);
INSERT INTO `courses_course` VALUES (10, 'django与vuejs实战项目2', 'django与vuejs实战项目', '<p>&nbsp; &nbsp; django与vuejs实战项目</p><p><img src=\"/media/courses/ueditor/aobama_20161113225044_773.png\" title=\"\" alt=\"aobama.png\"/> </p><table><tbody><tr class=\"firstRow\"><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">课程</td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">课时<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">难度<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">时长<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">学习人数<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">点击数<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">点击数</td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">点击数</td></tr><tr><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">django开发<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">20<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">中级<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">30<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">100000<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">100000<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">100000<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">100000<br/> </td></tr><tr><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td></tr><tr><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td></tr><tr><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td></tr><tr><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td></tr></tbody></table><p><br/> </p><p><img src=\"http://img.baidu.com/hi/jx2/j_0025.gif\"/> </p><p><br/> </p><h1 class=\"ue_t\" label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\"><span style=\"color:#c0504d;\">[键入文档标题]</span></h1><p style=\"text-align:center;\"><strong class=\"ue_t\">[键入文档副标题]</strong></p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 1]</span></h3><p class=\"ue_t\" style=\"text-indent:2em;\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\" style=\"text-indent:2em;\"><img src=\"http://127.0.0.1:8000/media/courses/ueditor/57aa86a0000145c512000460_20161210234050_865.jpg\" title=\"\" alt=\"57aa86a0000145c512000460.jpg\"/> </p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 2]</span></h3><p><img src=\"http://api.map.baidu.com/staticimage?center=116.410899,39.863624&zoom=11&width=530&height=340&markers=116.404,39.915\" width=\"530\" height=\"340\"/> </p><p class=\"ue_t\" style=\"text-indent:2em;\">在“开始”选项卡上，通过从快速样式库中为所选文本选择一种外观，您可以方便地更改文档中所选文本的格式。 您还可以使用“开始”选项卡上的其他控件来直接设置文本格式。大多数控件都允许您选择是使用当前主题外观，还是使用某种直接指定的格式。</p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 3]</span></h3><p>2016-12-10</p><p class=\"ue_t\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p><br/> </p>', 'gj', 0, 90, 2, 'courses/2019/04/vue.jpg', 146, '2016-11-05 16:10:00', 2, '后端开发', 'python', 1, 'django的进阶开发', 'python基础你需要有', 0);
INSERT INTO `courses_course` VALUES (11, '前端开发', '前端开发', '前端开发', 'cj', 0, 1, 0, 'courses/2016/11/default_middile_1.png', 6, '2016-11-09 00:01:00', 1, '后端开发', '前端开发', 2, '前端开发', '前端开发', 0);
INSERT INTO `courses_course` VALUES (12, 'scrapy教程', 'scrapy教程scrapy教程scrapy教程scrapy教程scrapy教程scrapy教程', '<h1 class=\"ue_t\" label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\"><span style=\"color:#c0504d;\">[键入文档标题]</span></h1><p style=\"text-align:center;\"><strong class=\"ue_t\">[键入文档副标题]</strong></p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 1]</span></h3><p class=\"ue_t\" style=\"text-indent:2em;\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\" style=\"text-indent:2em;\"><img src=\"/media/courses/ueditor/57aa86a0000145c512000460_20161210234050_865.jpg\" title=\"\" alt=\"57aa86a0000145c512000460.jpg\"/> </p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 2]</span></h3><p><img src=\"http://api.map.baidu.com/staticimage?center=116.410899,39.863624&zoom=11&width=530&height=340&markers=116.404,39.915\" width=\"530\" height=\"340\"/> </p><p class=\"ue_t\" style=\"text-indent:2em;\">在“开始”选项卡上，通过从快速样式库中为所选文本选择一种外观，您可以方便地更改文档中所选文本的格式。 您还可以使用“开始”选项卡上的其他控件来直接设置文本格式。大多数控件都允许您选择是使用当前主题外观，还是使用某种直接指定的格式。</p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 3]</span></h3><p>2016-12-10</p><p class=\"ue_t\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\"><br/> </p><p><br/> </p>', 'zj', 55, 1, 1, 'courses/2019/04/Java2_hckYsRI.jpg', 7, '2016-12-10 23:39:00', 2, '后端开发', '开发', 3, '开发', '开发', 0);
INSERT INTO `courses_course` VALUES (13, 'xadmin进阶开发', 'xadmin进阶开发xadmin进阶开发xadmin进阶开发xadmin进阶开发', '<h1 class=\"ue_t\" label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\"><span style=\"color:#c0504d;\">[键入文档标题]</span></h1><p style=\"text-align:center;\"><strong class=\"ue_t\">[键入文档副标题]</strong></p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 1]</span></h3><p class=\"ue_t\" style=\"text-indent:2em;\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\" style=\"text-indent:2em;\"><img src=\"http://127.0.0.1:8000/media/courses/ueditor/57aa86a0000145c512000460_20161210234050_865.jpg\" title=\"\" alt=\"57aa86a0000145c512000460.jpg\"/> </p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 2]</span></h3><p><img src=\"http://api.map.baidu.com/staticimage?center=116.410899,39.863624&zoom=11&width=530&height=340&markers=116.404,39.915\" width=\"530\" height=\"340\"/> </p><p class=\"ue_t\" style=\"text-indent:2em;\">在“开始”选项卡上，通过从快速样式库中为所选文本选择一种外观，您可以方便地更改文档中所选文本的格式。 您还可以使用“开始”选项卡上的其他控件来直接设置文本格式。大多数控件都允许您选择是使用当前主题外观，还是使用某种直接指定的格式。</p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 3]</span></h3><p>2016-12-10</p><p class=\"ue_t\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\"><br/> </p><p><br/></p>', 'zj', 30, 26, 2, 'courses/2016/12/mysql.jpg', 24, '2016-12-10 23:43:00', 1, '后端开发', 'django开发', 1, 'django开发', 'django开发', 0);
INSERT INTO `courses_course` VALUES (22, '1', '1', '1', 'cj', 0, 1, 0, 'courses/2019/04/bjdx_TmPBN3E.jpg', 1, '2019-04-26 11:36:51', 1, '后端开发', '', 1, '', '', 0);
INSERT INTO `courses_course` VALUES (23, '11111', '1111', '1', 'cj', 0, 0, 0, 'courses/2019/04/imooc.png', 0, '2019-04-26 11:37:04', 1, '后端开发', '', 1, '', '', 0);
INSERT INTO `courses_course` VALUES (25, '1', '1', '1', 'cj', 0, 0, 0, 'courses/2019/04/imooc_1.png', 0, '2019-04-26 20:28:05', 1, '后端开发', '', 1, '', '', 0);
INSERT INTO `courses_course` VALUES (26, '11111', '3333333333', '34333', 'cj', 0, 4, 0, 'courses/2019/04/imooc_1_Fi3xd4l.png', 1, '2019-04-26 20:29:10', 1, '后端开发', '', 1, '', '', 0);
INSERT INTO `courses_course` VALUES (27, '2222222222', '222222222222', '222222222222222', 'cj', 0, 0, 0, 'courses/2019/04/python出错需要安装的包地址.png', 3, '2019-04-26 20:52:17', 1, '后端开发', '', 1, '', '', 0);

-- ----------------------------
-- Table structure for courses_coursepanduantest
-- ----------------------------
DROP TABLE IF EXISTS `courses_coursepanduantest`;
CREATE TABLE `courses_coursepanduantest`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `answer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_coursepanduantest
-- ----------------------------
INSERT INTO `courses_coursepanduantest` VALUES (1, 10, '（1）python是解释性语言', 'T');
INSERT INTO `courses_coursepanduantest` VALUES (2, 10, '（2）python是动态语言', 'T');

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `download` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_courseresource_ea134da7`(`course_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
INSERT INTO `courses_courseresource` VALUES (1, '前端页面', 'course/resource/2016/11/media.zip', '2016-11-05 22:13:00', 10);
INSERT INTO `courses_courseresource` VALUES (2, '前端页面', 'course/resource/2016/11/curl_wget.rar', '2016-11-09 00:01:00', 11);
INSERT INTO `courses_courseresource` VALUES (3, '课程资源', 'course/resource/2019/04/QQ截图20190321201123.png', '2019-04-02 16:31:00', 13);
INSERT INTO `courses_courseresource` VALUES (4, '资料', 'course/resource/2019/04/u30627107874289566700fm26gp0.jpg', '2019-04-18 20:52:00', 13);
INSERT INTO `courses_courseresource` VALUES (5, '资源', 'course/resource/2019/04/python.jpg', '2019-04-18 21:40:00', 10);
INSERT INTO `courses_courseresource` VALUES (9, '111', 'course/resource/2019/04/04开题报告1.doc', '2019-04-26 21:27:24', 27);
INSERT INTO `courses_courseresource` VALUES (11, '1', 'course/resource/2019/04/13撰写规范_J6x0iqm.doc', '2019-04-26 21:39:34', 6);

-- ----------------------------
-- Table structure for courses_coursetiankongtest
-- ----------------------------
DROP TABLE IF EXISTS `courses_coursetiankongtest`;
CREATE TABLE `courses_coursetiankongtest`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `answer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_coursetiankongtest
-- ----------------------------
INSERT INTO `courses_coursetiankongtest` VALUES (1, 10, '（1）：在主板芯片中主要有（）芯片和（）芯片', '北桥，南桥');
INSERT INTO `courses_coursetiankongtest` VALUES (2, 10, '（2）：在python中主要有（）、（）、（）、（）、（）、（）六种数据类型', '字符型，数值型，布尔型，列表，集合，字典');

-- ----------------------------
-- Table structure for courses_coursexuanzetest
-- ----------------------------
DROP TABLE IF EXISTS `courses_coursexuanzetest`;
CREATE TABLE `courses_coursexuanzetest`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bb` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `answer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_coursexuanzetest
-- ----------------------------
INSERT INTO `courses_coursexuanzetest` VALUES (1, 10, '（1）下面哪个语言是解释性语言', 'java', 'python', 'c#', 'go', 'B');
INSERT INTO `courses_coursexuanzetest` VALUES (2, 10, '（2）python中的变量不需要预先定义', '1', '2', '3', '4', 'C');

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_lesson_ea134da7`(`course_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES (1, '第一章 django基础知识', '2016-10-25 23:44:00', 1, 20);
INSERT INTO `courses_lesson` VALUES (2, '第一章 基础知识', '2016-11-05 21:50:00', 10, 0);
INSERT INTO `courses_lesson` VALUES (3, '第二章 进阶开发', '2016-11-05 21:50:00', 10, 0);
INSERT INTO `courses_lesson` VALUES (4, '第一章', '2016-11-09 00:01:00', 11, 10);
INSERT INTO `courses_lesson` VALUES (5, '第二章 django url配置', '2016-12-10 23:32:00', 1, 30);
INSERT INTO `courses_lesson` VALUES (6, '第三章 django model配置和编码', '2016-12-10 23:32:00', 1, 50);
INSERT INTO `courses_lesson` VALUES (7, '第三章 需求分析和数据库设计', '2016-12-11 00:00:00', 10, 200);
INSERT INTO `courses_lesson` VALUES (8, '第四章 django基础知识回顾', '2016-12-11 00:00:00', 10, 30);
INSERT INTO `courses_lesson` VALUES (9, '第五章 通过xadmin搭建后台管理系统', '2016-12-11 00:01:00', 10, 60);
INSERT INTO `courses_lesson` VALUES (10, '第一章：安装xadmin', '2019-04-02 16:28:00', 13, 20);
INSERT INTO `courses_lesson` VALUES (11, '最新章', '2019-04-11 20:29:00', 7, 0);
INSERT INTO `courses_lesson` VALUES (14, '2222', '2019-04-26 13:24:31', 10, 2);
INSERT INTO `courses_lesson` VALUES (15, '2222', '2019-04-26 13:28:30', 10, 2);
INSERT INTO `courses_lesson` VALUES (16, '2222', '2019-04-26 13:29:01', 10, 2);
INSERT INTO `courses_lesson` VALUES (17, '2222', '2019-04-26 13:29:28', 10, 2);
INSERT INTO `courses_lesson` VALUES (18, '33333', '2019-04-26 13:29:58', 10, 3);
INSERT INTO `courses_lesson` VALUES (19, '33333', '2019-04-26 13:34:55', 10, 3);
INSERT INTO `courses_lesson` VALUES (20, '1', '2019-04-26 13:35:46', 10, 1);
INSERT INTO `courses_lesson` VALUES (25, '1', '2019-04-26 19:54:01', 6, 1);

-- ----------------------------
-- Table structure for courses_testsorce
-- ----------------------------
DROP TABLE IF EXISTS `courses_testsorce`;
CREATE TABLE `courses_testsorce`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `sorce` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of courses_testsorce
-- ----------------------------
INSERT INTO `courses_testsorce` VALUES (1, 10, 13, '20');
INSERT INTO `courses_testsorce` VALUES (4, 10, 8, '40');

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_video_55174b7b`(`lesson_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES (1, '1.1 hello world', '2016-11-05 21:59:00', 2, 'http://ppsp14dq8.bkt.clouddn.com/15-1%2014%20%E8%AF%BE%E7%A8%8B%E6%80%BB%E7%BB%93.mp4', 0);
INSERT INTO `courses_video` VALUES (2, '1.2 基本概念', '2016-11-05 22:02:00', 2, 'http://pqjr3j0lx.bkt.clouddn.com/a.mp4', 0);
INSERT INTO `courses_video` VALUES (3, '2.1 test', '2016-11-05 22:02:00', 3, 'http://www.imooc.com/video/1430', 0);
INSERT INTO `courses_video` VALUES (4, '2.2 test2', '2016-11-05 22:02:00', 3, 'http://www.imooc.com/video/1430', 0);
INSERT INTO `courses_video` VALUES (5, 'django settings.py 配置', '2016-12-10 23:35:00', 2, 'http://imooc.com/', 0);
INSERT INTO `courses_video` VALUES (6, '3.1 django app设计', '2016-12-11 00:01:00', 7, 'http://imooc.com/', 0);
INSERT INTO `courses_video` VALUES (7, '3.2 django model设计', '2016-12-11 00:02:00', 7, 'http://imooc.com/', 0);
INSERT INTO `courses_video` VALUES (8, '3.3 django users models设计', '2016-12-11 00:02:00', 7, 'http://imooc.com/', 0);
INSERT INTO `courses_video` VALUES (9, '3.4 django course models设计', '2016-12-11 00:02:00', 7, 'http://imooc.com/', 0);
INSERT INTO `courses_video` VALUES (10, '3.5 organization models设计', '2016-12-11 00:02:00', 7, 'http://imooc.com/', 0);
INSERT INTO `courses_video` VALUES (11, '4.1 django settings配置', '2016-12-11 00:03:00', 8, 'http://imooc.com/', 0);
INSERT INTO `courses_video` VALUES (12, '4.2 models设计', '2016-12-11 00:04:00', 8, 'http://imooc.com/', 20);
INSERT INTO `courses_video` VALUES (13, '5.1 django admin讲解', '2016-12-11 00:05:00', 9, 'http://imooc.com/', 10);
INSERT INTO `courses_video` VALUES (14, '5.2 xadmin的安装和注册', '2016-12-11 00:05:00', 9, 'http://imooc.com/', 0);
INSERT INTO `courses_video` VALUES (15, '安装xadmin', '2019-04-02 16:29:00', 10, 'http://ppsp14dq8.bkt.clouddn.com/15-1%2014%20%E8%AF%BE%E7%A8%8B%E6%80%BB%E7%BB%93.mp4', 20);
INSERT INTO `courses_video` VALUES (16, '学习总结', '2019-04-11 20:29:00', 11, 'http://ppsp14dq8.bkt.clouddn.com/15-1%2014%20%E8%AF%BE%E7%A8%8B%E6%80%BB%E7%BB%93.mp4', 0);
INSERT INTO `courses_video` VALUES (22, '2222', '2019-04-26 21:46:45', 25, 'http://pqjr3j0lx.bkt.clouddn.com/a.mp4', 2);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2016-10-24 23:41:17', '3', 'bobby1', 1, '已添加。', 7, 2);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (7, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (8, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (9, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (10, 'courses', 'course');
INSERT INTO `django_content_type` VALUES (11, 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES (12, 'courses', 'video');
INSERT INTO `django_content_type` VALUES (13, 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES (14, 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES (15, 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES (16, 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES (17, 'operation', 'userask');
INSERT INTO `django_content_type` VALUES (18, 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES (19, 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES (20, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (21, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (24, 'xadmin', 'userwidget');
INSERT INTO `django_content_type` VALUES (35, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (28, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (32, 'courses', 'bannercourse');
INSERT INTO `django_content_type` VALUES (36, 'community', 'topic');
INSERT INTO `django_content_type` VALUES (37, 'community', 'node');
INSERT INTO `django_content_type` VALUES (38, 'community', 'pinglun');
INSERT INTO `django_content_type` VALUES (39, 'community', 'pingluntable');
INSERT INTO `django_content_type` VALUES (40, 'community', 'huifu');
INSERT INTO `django_content_type` VALUES (41, 'community', 'huifuhuifu');
INSERT INTO `django_content_type` VALUES (42, 'courses', 'coursexuanzetest');
INSERT INTO `django_content_type` VALUES (43, 'courses', 'coursepanduantest');
INSERT INTO `django_content_type` VALUES (44, 'courses', 'coursetiankongtest');
INSERT INTO `django_content_type` VALUES (45, 'courses', 'testsorce');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 98 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2016-10-18 15:47:48');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2016-10-18 15:47:51');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2016-10-18 15:47:51');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (12, 'sessions', '0001_initial', '2016-10-18 15:47:53');
INSERT INTO `django_migrations` VALUES (13, 'users', '0001_initial', '2016-10-18 16:36:59');
INSERT INTO `django_migrations` VALUES (14, 'courses', '0001_initial', '2016-10-20 15:01:04');
INSERT INTO `django_migrations` VALUES (15, 'operation', '0001_initial', '2016-10-20 15:01:05');
INSERT INTO `django_migrations` VALUES (16, 'organization', '0001_initial', '2016-10-20 15:01:05');
INSERT INTO `django_migrations` VALUES (17, 'users', '0002_banner_emailverifyrecord', '2016-10-20 15:01:05');
INSERT INTO `django_migrations` VALUES (18, 'users', '0003_auto_20161024_2337', '2016-10-24 23:37:30');
INSERT INTO `django_migrations` VALUES (20, 'users', '0004_auto_20161025_2122', '2016-10-25 21:22:31');
INSERT INTO `django_migrations` VALUES (66, 'xadmin', '0001_initial', '2016-12-11 22:14:16');
INSERT INTO `django_migrations` VALUES (67, 'xadmin', '0002_log', '2016-12-11 22:20:34');
INSERT INTO `django_migrations` VALUES (68, 'xadmin', '0003_auto_20160715_0100', '2016-12-11 22:20:34');
INSERT INTO `django_migrations` VALUES (34, 'captcha', '0001_initial', '2016-10-30 19:28:47');
INSERT INTO `django_migrations` VALUES (35, 'courses', '0002_auto_20161030_1928', '2016-10-30 19:28:47');
INSERT INTO `django_migrations` VALUES (36, 'organization', '0002_auto_20161102_2224', '2016-11-02 22:24:13');
INSERT INTO `django_migrations` VALUES (37, 'organization', '0003_auto_20161103_0056', '2016-11-03 00:56:15');
INSERT INTO `django_migrations` VALUES (38, 'courses', '0003_course_course_org', '2016-11-03 23:47:26');
INSERT INTO `django_migrations` VALUES (39, 'organization', '0004_auto_20161104_0022', '2016-11-04 00:22:45');
INSERT INTO `django_migrations` VALUES (40, 'organization', '0005_auto_20161104_0024', '2016-11-04 00:24:28');
INSERT INTO `django_migrations` VALUES (41, 'courses', '0004_course_category', '2016-11-05 17:32:04');
INSERT INTO `django_migrations` VALUES (42, 'courses', '0005_course_tag', '2016-11-05 18:01:24');
INSERT INTO `django_migrations` VALUES (44, 'courses', '0006_video_url', '2016-11-05 21:58:18');
INSERT INTO `django_migrations` VALUES (45, 'courses', '0007_lesson_learn_times', '2016-11-05 22:10:32');
INSERT INTO `django_migrations` VALUES (46, 'courses', '0008_video_learn_times', '2016-11-05 22:12:35');
INSERT INTO `django_migrations` VALUES (47, 'courses', '0009_course_teacher', '2016-11-05 22:21:01');
INSERT INTO `django_migrations` VALUES (48, 'courses', '0010_auto_20161105_2226', '2016-11-05 22:26:40');
INSERT INTO `django_migrations` VALUES (49, 'organization', '0006_teacher_age', '2016-11-06 00:14:12');
INSERT INTO `django_migrations` VALUES (50, 'users', '0005_auto_20161106_2007', '2016-11-06 20:07:07');
INSERT INTO `django_migrations` VALUES (51, 'courses', '0011_course_is_banner', '2016-11-07 22:52:51');
INSERT INTO `django_migrations` VALUES (52, 'organization', '0007_courseorg_tag', '2016-11-07 23:18:16');
INSERT INTO `django_migrations` VALUES (53, 'courses', '0012_auto_20161113_1724', '2016-11-13 17:25:05');
INSERT INTO `django_migrations` VALUES (54, 'courses', '0013_remove_course_detail2', '2016-11-13 21:03:02');
INSERT INTO `django_migrations` VALUES (55, 'courses', '0014_auto_20161113_2218', '2016-11-13 22:18:55');
INSERT INTO `django_migrations` VALUES (56, 'organization', '0008_auto_20161210_2353', '2016-12-10 23:53:24');
INSERT INTO `django_migrations` VALUES (69, 'auth', '0008_alter_user_username_max_length', '2019-04-01 19:45:51');
INSERT INTO `django_migrations` VALUES (70, 'organization', '0009_auto_20190401_1026', '2019-04-01 19:45:51');
INSERT INTO `django_migrations` VALUES (71, 'organization', '0010_auto_20190401_1029', '2019-04-01 19:45:51');
INSERT INTO `django_migrations` VALUES (72, 'organization', '0011_auto_20190401_1031', '2019-04-01 19:45:51');
INSERT INTO `django_migrations` VALUES (73, 'users', '0006_auto_20190401_0021', '2019-04-01 19:45:51');
INSERT INTO `django_migrations` VALUES (74, 'community', '0001_initial', '2019-04-02 18:59:59');
INSERT INTO `django_migrations` VALUES (75, 'community', '0002_auto_20190402_1930', '2019-04-02 19:30:34');
INSERT INTO `django_migrations` VALUES (76, 'community', '0003_topic_floor', '2019-04-03 14:57:45');
INSERT INTO `django_migrations` VALUES (77, 'community', '0004_auto_20190403_1557', '2019-04-03 15:58:24');
INSERT INTO `django_migrations` VALUES (78, 'community', '0005_topic_image', '2019-04-04 20:43:35');
INSERT INTO `django_migrations` VALUES (79, 'community', '0006_topic_topic_uid', '2019-04-04 22:59:21');
INSERT INTO `django_migrations` VALUES (80, 'community', '0007_pinglun', '2019-04-05 20:50:20');
INSERT INTO `django_migrations` VALUES (81, 'community', '0008_pinglun_add_time', '2019-04-05 22:25:47');
INSERT INTO `django_migrations` VALUES (82, 'community', '0009_auto_20190405_2311', '2019-04-05 23:17:47');
INSERT INTO `django_migrations` VALUES (83, 'community', '0010_auto_20190405_2315', '2019-04-05 23:17:47');
INSERT INTO `django_migrations` VALUES (84, 'community', '0011_auto_20190405_2317', '2019-04-05 23:17:47');
INSERT INTO `django_migrations` VALUES (85, 'community', '0007_pingluntable', '2019-04-05 23:54:45');
INSERT INTO `django_migrations` VALUES (86, 'community', '0008_auto_20190405_2355', '2019-04-05 23:55:28');
INSERT INTO `django_migrations` VALUES (87, 'community', '0009_pinglun_mubiao_user_name', '2019-04-06 00:11:19');
INSERT INTO `django_migrations` VALUES (88, 'community', '0010_pinglun_image', '2019-04-06 00:32:28');
INSERT INTO `django_migrations` VALUES (89, 'community', '0011_huifu', '2019-04-07 16:50:20');
INSERT INTO `django_migrations` VALUES (90, 'community', '0012_auto_20190407_1922', '2019-04-07 19:22:29');
INSERT INTO `django_migrations` VALUES (91, 'community', '0013_auto_20190407_1954', '2019-04-07 19:55:06');
INSERT INTO `django_migrations` VALUES (92, 'community', '0014_huifuhuifu', '2019-04-07 23:47:36');
INSERT INTO `django_migrations` VALUES (93, 'organization', '0012_auto_20190417_1609', '2019-04-17 16:09:30');
INSERT INTO `django_migrations` VALUES (94, 'courses', '0015_coursexuanzetest', '2019-05-03 11:36:30');
INSERT INTO `django_migrations` VALUES (95, 'courses', '0016_coursepanduantest_coursetiankongtest', '2019-05-04 20:58:11');
INSERT INTO `django_migrations` VALUES (96, 'courses', '0017_testsorce', '2019-05-04 21:00:14');
INSERT INTO `django_migrations` VALUES (97, 'operation', '0002_usermessage_url', '2019-05-07 19:31:45');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_de54fa62`(`expire_date`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('2jam9b4q6flchzg7g3z43j9akxu7iio3', 'ODFkYTY2NzI2Y2EyYmNmZTQ2MzliZTg0NjZhNTQ0ZDVhMDg3NjI2Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJjb3Vyc2VvcmciXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjRlZThlMGU2NWRmNmFkOGRkMTlkYjA2Y2RhNTNlNmQ3MDliYWYxNDIiLCJfYXV0aF91c2VyX2lkIjoiMiJ9', '2016-11-23 01:11:13');
INSERT INTO `django_session` VALUES ('qhgbcuuydbcvobjanwirbbqmf73rme81', 'ODgzYTNjYTVkOTIyY2ZiOGE4NTA1YWE2OGM3NjA5MzRiNDBhMTE4MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiI0ZWU4ZTBlNjVkZjZhZDhkZDE5ZGIwNmNkYTUzZTZkNzA5YmFmMTQyIiwiX2F1dGhfdXNlcl9pZCI6IjIifQ==', '2016-11-28 00:07:33');
INSERT INTO `django_session` VALUES ('7vmowjzj0k4dpe0js1lh9dp0euq0tdx9', 'MjQ1ZGVjYmU4MDcxNmQ1MGFhNWE3YTE1Zjk3ODE5YTNlNWU1YWQxMjp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZXJlc291cmNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiJiN2ZjZjEyZTViOTNiMjg5MWUzOTA4MTZkYTZkZTYxOWUyZDEwMGYzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCJ9', '2016-11-22 22:55:43');
INSERT INTO `django_session` VALUES ('nmjg2imxv7aps2830bubyduhh08g92dk', 'ODgzYTNjYTVkOTIyY2ZiOGE4NTA1YWE2OGM3NjA5MzRiNDBhMTE4MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiI0ZWU4ZTBlNjVkZjZhZDhkZDE5ZGIwNmNkYTUzZTZkNzA5YmFmMTQyIiwiX2F1dGhfdXNlcl9pZCI6IjIifQ==', '2016-11-27 18:58:54');
INSERT INTO `django_session` VALUES ('9n51clhwi9wza9xsrxzxeggvk6rd73mp', 'OTQwNzViYzQ0MmMyYjQxNWFkYTFiMDMyZjhiYjU5MTUyOWNlZjE4MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiIzYjNmYzA1ZTAxNWQ2NDIzNjc5NzY4ZmNjYzQ4OTM3NDU4YjA5ODA1IiwiX2F1dGhfdXNlcl9pZCI6IjIifQ==', '2016-12-25 22:53:41');
INSERT INTO `django_session` VALUES ('r88zwg0ox2e86k5rbz3i8h189g2tljia', 'ZjIxOGI1MDRkMTA4ZTFlNGYxNzdkNzJjODY4YmNmODJkYmY0NTczMDp7IkxJU1RfUVVFUlkiOltbInhhZG1pbiIsImxvZyJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiNjRiZDAwMTk3ZmFiYjc0MzZmNjNiNDQ5YjEyOGI1ZGNmY2U1ODI1NSIsIl9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCJ9', '2016-12-25 22:08:53');
INSERT INTO `django_session` VALUES ('0ryg51y8or314o6rle6t2kinyzqp4w8m', 'NDFkNzY3NTMyY2FiZTI4NDg0NDkwOTBiZTJjMDViN2ZjM2ExODUyMTp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImY3NTE1YzJiMjZhYTFjZGFkNmRlM2E3MTMxODNmM2QwMTVkZTMyYWMiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdfQ==', '2019-04-15 10:38:30');
INSERT INTO `django_session` VALUES ('qavb4fqj5iul50zt1asr0tcmg06xnh6p', 'ZDJhYWZiZDIwMmJkZjUxNDAxNjI2Njk5YTQ0OWY2ZDQxZjA0MTI5Zjp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTMzYWM2OTFjNDI3NDU5ZDBmNDIxNjFiMjVmM2IyNGI5NWUyMWI3IiwidWlkIjoxM30=', '2019-05-24 22:57:28');
INSERT INTO `django_session` VALUES ('fq33tc82jdig8v9xcf4lsxstlx96az3p', 'Yjk5ZmU3ZTA2MTdiY2Q5MDA1NzAyYWFiOWJlNjdhMmQ2NGQxNjRkYzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImY3NTE1YzJiMjZhYTFjZGFkNmRlM2E3MTMxODNmM2QwMTVkZTMyYWMiLCJ1aWQiOjgsIkxJU1RfUVVFUlkiOltbImNvbW11bml0eSIsInRvcGljIl0sIiJdfQ==', '2019-04-20 22:20:51');

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_coursecomments_ea134da7`(`course_id`) USING BTREE,
  INDEX `operation_coursecomments_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES (1, '给问问', '2016-11-05 23:09:57', 10, 2);
INSERT INTO `operation_coursecomments` VALUES (2, '讲的很不错', '2016-11-05 23:13:13', 10, 2);
INSERT INTO `operation_coursecomments` VALUES (3, 'good ', '2016-11-05 23:18:16', 10, 2);
INSERT INTO `operation_coursecomments` VALUES (4, '再来一次', '2016-11-05 23:18:31', 10, 2);
INSERT INTO `operation_coursecomments` VALUES (5, '好', '2016-12-08 22:06:57', 5, 2);
INSERT INTO `operation_coursecomments` VALUES (6, '好', '2016-12-08 22:07:06', 5, 2);
INSERT INTO `operation_coursecomments` VALUES (7, '好', '2016-12-08 22:07:14', 5, 2);
INSERT INTO `operation_coursecomments` VALUES (8, '牛逼\n', '2019-04-02 16:27:41', 13, 8);
INSERT INTO `operation_coursecomments` VALUES (9, '你好', '2019-04-03 19:09:47', 10, 8);
INSERT INTO `operation_coursecomments` VALUES (10, '你好', '2019-04-03 19:09:53', 10, 8);
INSERT INTO `operation_coursecomments` VALUES (11, '你好', '2019-04-03 19:10:01', 10, 8);
INSERT INTO `operation_coursecomments` VALUES (12, '你好', '2019-04-03 19:10:46', 10, 8);
INSERT INTO `operation_coursecomments` VALUES (13, 'hai', '2019-04-04 18:44:56', 13, 8);
INSERT INTO `operation_coursecomments` VALUES (14, '你好\n', '2019-04-05 20:45:27', 13, 8);
INSERT INTO `operation_coursecomments` VALUES (15, '我', '2019-04-05 20:46:20', 13, 8);
INSERT INTO `operation_coursecomments` VALUES (16, '你\n', '2019-04-05 20:47:31', 13, 8);
INSERT INTO `operation_coursecomments` VALUES (17, '你', '2019-04-05 20:48:30', 13, 8);
INSERT INTO `operation_coursecomments` VALUES (18, '我', '2019-04-05 20:48:41', 13, 8);
INSERT INTO `operation_coursecomments` VALUES (19, 'h', '2019-04-05 23:19:09', 7, 8);
INSERT INTO `operation_coursecomments` VALUES (20, '这节课讲的很真不错', '2019-05-10 00:47:41', 10, 32);
INSERT INTO `operation_coursecomments` VALUES (21, '讲得不错', '2019-05-10 14:08:50', 10, 8);
INSERT INTO `operation_coursecomments` VALUES (22, '很好', '2019-05-10 14:11:26', 10, 8);
INSERT INTO `operation_coursecomments` VALUES (23, '不错的视频', '2019-05-10 22:31:53', 10, 8);
INSERT INTO `operation_coursecomments` VALUES (24, '这节课不错', '2019-05-10 22:54:02', 10, 8);

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES (3, 'bobby', '13548', 'django', '2016-11-03 23:17:38');
INSERT INTO `operation_userask` VALUES (4, 'bobby', '18786592568', 'django', '2016-11-03 23:29:26');
INSERT INTO `operation_userask` VALUES (5, '王天赏', '15617165229', 'django入门', '2019-04-01 23:03:17');
INSERT INTO `operation_userask` VALUES (6, '你好', '15617165228', '你你你', '2019-04-02 17:52:36');

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_usercourse_ea134da7`(`course_id`) USING BTREE,
  INDEX `operation_usercourse_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES (1, '2016-11-05 17:40:00', 10, 2);
INSERT INTO `operation_usercourse` VALUES (2, '2016-11-05 23:43:12', 7, 2);
INSERT INTO `operation_usercourse` VALUES (3, '2016-11-05 23:46:03', 4, 2);
INSERT INTO `operation_usercourse` VALUES (4, '2016-11-05 23:47:04', 1, 2);
INSERT INTO `operation_usercourse` VALUES (5, '2016-12-08 22:06:35', 5, 2);
INSERT INTO `operation_usercourse` VALUES (6, '2016-12-08 22:09:54', 9, 2);
INSERT INTO `operation_usercourse` VALUES (7, '2016-12-10 23:57:08', 13, 2);
INSERT INTO `operation_usercourse` VALUES (8, '2019-04-01 10:38:58', 7, 8);
INSERT INTO `operation_usercourse` VALUES (9, '2019-04-01 10:39:15', 10, 8);
INSERT INTO `operation_usercourse` VALUES (10, '2019-04-01 23:10:35', 1, 8);
INSERT INTO `operation_usercourse` VALUES (13, '2019-04-02 15:38:50', 11, 8);
INSERT INTO `operation_usercourse` VALUES (14, '2019-04-02 16:27:32', 13, 8);
INSERT INTO `operation_usercourse` VALUES (15, '2019-04-08 17:56:28', 7, 13);
INSERT INTO `operation_usercourse` VALUES (16, '2019-04-08 22:10:59', 12, 13);
INSERT INTO `operation_usercourse` VALUES (17, '2019-04-10 21:17:27', 10, 13);
INSERT INTO `operation_usercourse` VALUES (18, '2019-04-10 21:57:51', 13, 13);
INSERT INTO `operation_usercourse` VALUES (19, '2019-04-18 20:24:50', 6, 13);
INSERT INTO `operation_usercourse` VALUES (20, '2019-05-02 22:54:30', 22, 13);
INSERT INTO `operation_usercourse` VALUES (21, '2019-05-04 21:26:11', 26, 13);

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_userfavorite_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES (28, 1, 3, '2016-11-09 22:58:37', 2);
INSERT INTO `operation_userfavorite` VALUES (29, 1, 2, '2016-11-09 23:04:14', 2);
INSERT INTO `operation_userfavorite` VALUES (32, 12, 1, '2016-12-10 23:46:28', 2);
INSERT INTO `operation_userfavorite` VALUES (31, 13, 1, '2016-12-10 23:46:21', 2);
INSERT INTO `operation_userfavorite` VALUES (33, 2, 2, '2016-12-10 23:46:29', 2);
INSERT INTO `operation_userfavorite` VALUES (34, 2, 3, '2016-12-10 23:46:37', 2);
INSERT INTO `operation_userfavorite` VALUES (40, 1, 2, '2019-04-24 00:14:27', 13);
INSERT INTO `operation_userfavorite` VALUES (36, 13, 1, '2019-04-08 22:35:02', 13);
INSERT INTO `operation_userfavorite` VALUES (43, 10, 1, '2019-05-10 13:23:41', 13);
INSERT INTO `operation_userfavorite` VALUES (45, 10, 1, '2019-05-10 14:08:02', 8);

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime NOT NULL,
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
INSERT INTO `operation_usermessage` VALUES (1, 2, '欢迎注册', 1, '2016-11-06 23:49:00', '');
INSERT INTO `operation_usermessage` VALUES (2, 9, '欢迎注册慕学在线网', 1, '2019-04-01 23:15:29', '');
INSERT INTO `operation_usermessage` VALUES (3, 10, '欢迎注册慕学在线网', 1, '2019-04-02 17:08:59', '');
INSERT INTO `operation_usermessage` VALUES (4, 11, '欢迎注册慕学在线网', 0, '2019-04-06 11:38:04', '');
INSERT INTO `operation_usermessage` VALUES (5, 12, '欢迎注册慕学在线网', 0, '2019-04-06 11:42:58', '');
INSERT INTO `operation_usermessage` VALUES (6, 8, '有人评论了你', 1, '2019-04-10 00:14:06', '');
INSERT INTO `operation_usermessage` VALUES (7, 8, '有人评论了你', 1, '2019-04-10 00:16:10', '');
INSERT INTO `operation_usermessage` VALUES (8, 8, '有人回复了你的回复', 1, '2019-04-10 00:21:47', '');
INSERT INTO `operation_usermessage` VALUES (9, 8, '有人回复了你的回复', 1, '2019-04-10 00:22:04', '');
INSERT INTO `operation_usermessage` VALUES (10, 8, '有人回复了你的回复', 1, '2019-04-10 00:23:20', '');
INSERT INTO `operation_usermessage` VALUES (11, 8, '有人回复了你的回复', 1, '2019-04-10 00:24:31', '');
INSERT INTO `operation_usermessage` VALUES (12, 0, '有人评论了你', 0, '2019-04-10 00:26:19', '');
INSERT INTO `operation_usermessage` VALUES (13, 13, '有人评论了你', 1, '2019-04-10 00:27:30', '');
INSERT INTO `operation_usermessage` VALUES (14, 13, '有人回复了你的评论', 1, '2019-04-10 00:27:58', '');
INSERT INTO `operation_usermessage` VALUES (15, 13, '有人回复了你的回复', 1, '2019-04-10 00:28:44', '');
INSERT INTO `operation_usermessage` VALUES (16, 13, '有人回复了你的回复', 1, '2019-04-10 00:30:00', '');
INSERT INTO `operation_usermessage` VALUES (17, 13, '有人回复了你的回复', 1, '2019-04-10 00:32:05', '');
INSERT INTO `operation_usermessage` VALUES (18, 13, '有人回复了你的回复', 1, '2019-04-10 00:33:29', '');
INSERT INTO `operation_usermessage` VALUES (19, 13, '有人回复了你的回复', 1, '2019-04-10 00:34:53', '');
INSERT INTO `operation_usermessage` VALUES (20, 13, '有人回复了你的回复', 1, '2019-04-10 00:37:52', '');
INSERT INTO `operation_usermessage` VALUES (21, 13, '有人回复了你的回复', 1, '2019-04-10 00:38:06', '');
INSERT INTO `operation_usermessage` VALUES (22, 13, '有人回复了你的回复', 1, '2019-04-10 00:38:53', '');
INSERT INTO `operation_usermessage` VALUES (23, 13, '有人回复了你的评论', 1, '2019-04-10 00:39:42', '');
INSERT INTO `operation_usermessage` VALUES (24, 13, '有人评论了你', 1, '2019-04-10 00:40:18', '');
INSERT INTO `operation_usermessage` VALUES (25, 13, '有人回复了你的回复', 1, '2019-04-10 00:40:41', '');
INSERT INTO `operation_usermessage` VALUES (26, 13, '有人回复了你的回复', 1, '2019-04-10 00:41:09', '');
INSERT INTO `operation_usermessage` VALUES (27, 13, '有人回复了你的评论', 1, '2019-04-10 00:42:07', '');
INSERT INTO `operation_usermessage` VALUES (28, 13, '有人回复了你的回复', 1, '2019-04-10 00:42:47', '');
INSERT INTO `operation_usermessage` VALUES (29, 13, '有人回复了你的评论', 1, '2019-04-10 00:43:11', '');
INSERT INTO `operation_usermessage` VALUES (30, 13, '有人回复了你的评论', 1, '2019-04-10 00:45:31', '');
INSERT INTO `operation_usermessage` VALUES (31, 13, '有人回复了你的评论', 1, '2019-04-10 00:47:01', '');
INSERT INTO `operation_usermessage` VALUES (32, 13, '有人回复了你的评论', 1, '2019-04-10 00:47:54', '');
INSERT INTO `operation_usermessage` VALUES (33, 13, '有人回复了你的评论', 1, '2019-04-10 00:49:36', '');
INSERT INTO `operation_usermessage` VALUES (34, 13, '有人回复了你的回复', 1, '2019-04-10 00:50:15', '');
INSERT INTO `operation_usermessage` VALUES (35, 13, '有人回复了你的回复', 1, '2019-04-10 00:53:17', '');
INSERT INTO `operation_usermessage` VALUES (36, 8, '有人评论了你', 1, '2019-04-10 00:54:48', '');
INSERT INTO `operation_usermessage` VALUES (37, 8, '有人回复了你的评论', 1, '2019-04-10 00:54:57', '');
INSERT INTO `operation_usermessage` VALUES (38, 8, '有人回复了你的回复', 1, '2019-04-10 00:56:16', '');
INSERT INTO `operation_usermessage` VALUES (39, 8, '有人回复了你的评论', 1, '2019-04-10 00:56:26', '');
INSERT INTO `operation_usermessage` VALUES (40, 8, '有人回复了你的评论', 1, '2019-04-10 00:56:45', '');
INSERT INTO `operation_usermessage` VALUES (41, 8, '有人回复了你的评论', 1, '2019-04-10 15:21:47', '');
INSERT INTO `operation_usermessage` VALUES (42, 8, '有人回复了你的回复', 1, '2019-04-10 15:25:00', '');
INSERT INTO `operation_usermessage` VALUES (43, 8, '有人回复了你的评论', 1, '2019-04-10 15:29:22', '');
INSERT INTO `operation_usermessage` VALUES (44, 13, '有人回复了你的评论', 1, '2019-04-10 15:35:27', '');
INSERT INTO `operation_usermessage` VALUES (45, 8, '有人回复了你的回复', 1, '2019-04-10 15:35:40', '');
INSERT INTO `operation_usermessage` VALUES (46, 0, '有人评论了你', 0, '2019-04-10 15:39:41', '');
INSERT INTO `operation_usermessage` VALUES (47, 0, '有人评论了你', 0, '2019-04-10 15:39:46', '');
INSERT INTO `operation_usermessage` VALUES (48, 13, '有人回复了你的评论', 1, '2019-04-10 15:40:26', '');
INSERT INTO `operation_usermessage` VALUES (49, 13, '有人回复了你的评论', 1, '2019-04-10 15:40:32', '');
INSERT INTO `operation_usermessage` VALUES (50, 13, '有人回复了你的回复', 1, '2019-04-10 15:40:59', '');
INSERT INTO `operation_usermessage` VALUES (51, 13, '有人回复了你的回复', 1, '2019-04-10 15:41:14', '');
INSERT INTO `operation_usermessage` VALUES (52, 8, '有人回复了你的回复', 1, '2019-04-10 15:44:46', '');
INSERT INTO `operation_usermessage` VALUES (53, 8, '有人回复了你的回复', 1, '2019-04-10 15:45:15', '');
INSERT INTO `operation_usermessage` VALUES (54, 13, '有人回复了你的回复', 1, '2019-04-10 15:46:27', '');
INSERT INTO `operation_usermessage` VALUES (55, 14, '欢迎注册慕学在线网', 0, '2019-04-11 22:46:09', '');
INSERT INTO `operation_usermessage` VALUES (56, 15, '欢迎注册慕学在线网', 1, '2019-04-11 22:48:09', '');
INSERT INTO `operation_usermessage` VALUES (57, 17, '欢迎注册慕学在线网', 0, '2019-04-13 00:22:30', '');
INSERT INTO `operation_usermessage` VALUES (58, 8, '有人回复了你的评论', 1, '2019-04-13 14:40:13', '');
INSERT INTO `operation_usermessage` VALUES (59, 13, '有人回复了你的回复', 1, '2019-04-13 14:40:38', '');
INSERT INTO `operation_usermessage` VALUES (60, 8, '有人回复了你的回复', 1, '2019-04-13 14:41:02', '');
INSERT INTO `operation_usermessage` VALUES (61, 18, '欢迎注册慕学在线网', 0, '2019-04-13 20:28:46', '');
INSERT INTO `operation_usermessage` VALUES (62, 0, '有人评论了你', 0, '2019-04-26 10:32:24', '');
INSERT INTO `operation_usermessage` VALUES (63, 8, '有人回复了你的回复', 1, '2019-04-26 10:32:50', '');
INSERT INTO `operation_usermessage` VALUES (64, 8, '有人评论了你', 1, '2019-04-27 10:20:42', '');
INSERT INTO `operation_usermessage` VALUES (65, 19, '欢迎注册在线学习网', 0, '2019-05-04 22:31:14', '');
INSERT INTO `operation_usermessage` VALUES (66, 20, '欢迎注册在线学习网', 0, '2019-05-04 22:34:38', '');
INSERT INTO `operation_usermessage` VALUES (67, 21, '欢迎注册在线学习网', 0, '2019-05-06 15:17:52', '');
INSERT INTO `operation_usermessage` VALUES (68, 22, '欢迎注册在线学习网', 0, '2019-05-06 15:22:34', '');
INSERT INTO `operation_usermessage` VALUES (69, 23, '欢迎注册在线学习网', 0, '2019-05-06 15:23:48', '');
INSERT INTO `operation_usermessage` VALUES (70, 24, '欢迎注册在线学习网', 0, '2019-05-06 15:27:22', '');
INSERT INTO `operation_usermessage` VALUES (71, 25, '欢迎注册在线学习网', 0, '2019-05-06 15:29:30', '');
INSERT INTO `operation_usermessage` VALUES (72, 26, '欢迎注册在线学习网', 0, '2019-05-06 15:32:42', '');
INSERT INTO `operation_usermessage` VALUES (73, 27, '欢迎注册在线学习网', 0, '2019-05-06 15:35:33', '');
INSERT INTO `operation_usermessage` VALUES (74, 28, '欢迎注册在线学习网', 1, '2019-05-06 15:41:58', '');
INSERT INTO `operation_usermessage` VALUES (75, 8, '有人评论了你', 1, '2019-05-07 18:59:44', '');
INSERT INTO `operation_usermessage` VALUES (76, 8, '有人评论了你', 1, '2019-05-07 19:00:50', '');
INSERT INTO `operation_usermessage` VALUES (77, 8, '有人评论了你', 1, '2019-05-07 19:05:47', '');
INSERT INTO `operation_usermessage` VALUES (78, 8, '有人评论了你', 1, '2019-05-07 19:07:05', '');
INSERT INTO `operation_usermessage` VALUES (79, 8, '有人评论了你', 1, '2019-05-07 19:20:09', '');
INSERT INTO `operation_usermessage` VALUES (80, 8, '有人评论了你', 1, '2019-05-07 19:28:28', '');
INSERT INTO `operation_usermessage` VALUES (81, 8, '有人评论了你', 1, '2019-05-07 22:07:49', '');
INSERT INTO `operation_usermessage` VALUES (82, 8, '有人评论了你', 1, '2019-05-07 22:09:33', 'http://127.0.0.1:8000/topic/detail/1/');
INSERT INTO `operation_usermessage` VALUES (83, 8, '有人回复了你的评论', 1, '2019-05-07 22:09:53', '');
INSERT INTO `operation_usermessage` VALUES (84, 13, '有人回复了你的回复', 1, '2019-05-07 22:10:01', '');
INSERT INTO `operation_usermessage` VALUES (85, 13, '有人回复了你的回复', 1, '2019-05-07 22:10:10', '');
INSERT INTO `operation_usermessage` VALUES (86, 8, '有人回复了你的评论', 1, '2019-05-07 22:11:10', 'http://127.0.0.1:8000/topic/detail/1/');
INSERT INTO `operation_usermessage` VALUES (87, 13, '有人回复了你的回复', 1, '2019-05-07 22:11:15', 'http://127.0.0.1:8000/topic/detail/1/');
INSERT INTO `operation_usermessage` VALUES (88, 8, '有人回复了你的回复', 1, '2019-05-07 22:11:21', 'http://127.0.0.1:8000/topic/detail/1/');
INSERT INTO `operation_usermessage` VALUES (89, 29, '欢迎注册在线学习网', 0, '2019-05-10 00:23:52', '');
INSERT INTO `operation_usermessage` VALUES (90, 30, '欢迎注册在线学习网', 0, '2019-05-10 00:32:02', '');
INSERT INTO `operation_usermessage` VALUES (91, 31, '欢迎注册在线学习网', 0, '2019-05-10 00:36:34', '');
INSERT INTO `operation_usermessage` VALUES (92, 32, '欢迎注册在线学习网', 1, '2019-05-10 00:41:12', '');
INSERT INTO `operation_usermessage` VALUES (93, 0, '有人评论了你', 0, '2019-05-10 14:12:55', 'http://127.0.0.1:8000/topic/detail/6/');
INSERT INTO `operation_usermessage` VALUES (94, 0, '有人评论了你', 0, '2019-05-10 14:13:00', 'http://127.0.0.1:8000/topic/detail/6/');
INSERT INTO `operation_usermessage` VALUES (95, 8, '有人回复了你的评论', 1, '2019-05-10 14:17:26', 'http://127.0.0.1:8000/topic/detail/6/');
INSERT INTO `operation_usermessage` VALUES (96, 8, '有人回复了你的评论', 1, '2019-05-10 14:17:38', 'http://127.0.0.1:8000/topic/detail/6/');
INSERT INTO `operation_usermessage` VALUES (97, 13, '有人回复了你的回复', 1, '2019-05-10 14:18:02', 'http://127.0.0.1:8000/topic/detail/6/');
INSERT INTO `operation_usermessage` VALUES (98, 13, '有人回复了你的回复', 1, '2019-05-10 14:18:12', 'http://127.0.0.1:8000/topic/detail/6/');
INSERT INTO `operation_usermessage` VALUES (99, 8, '有人评论了你', 1, '2019-05-10 22:33:58', 'http://127.0.0.1:8000/topic/detail/31/');
INSERT INTO `operation_usermessage` VALUES (100, 8, '有人回复了你的评论', 1, '2019-05-10 22:34:32', 'http://127.0.0.1:8000/topic/detail/31/');
INSERT INTO `operation_usermessage` VALUES (101, 8, '有人评论了你', 1, '2019-05-10 22:34:44', 'http://127.0.0.1:8000/topic/detail/31/');
INSERT INTO `operation_usermessage` VALUES (102, 13, '有人回复了你的评论', 1, '2019-05-10 22:35:21', 'http://127.0.0.1:8000/topic/detail/31/');
INSERT INTO `operation_usermessage` VALUES (103, 8, '有人评论了你', 1, '2019-05-10 22:49:44', 'http://127.0.0.1:8000/topic/detail/1/');
INSERT INTO `operation_usermessage` VALUES (104, 8, '有人评论了你', 1, '2019-05-10 22:55:48', 'http://127.0.0.1:8000/topic/detail/33/');
INSERT INTO `operation_usermessage` VALUES (105, 8, '有人评论了你', 1, '2019-05-10 22:55:59', 'http://127.0.0.1:8000/topic/detail/33/');
INSERT INTO `operation_usermessage` VALUES (106, 8, '有人回复了你的评论', 1, '2019-05-10 22:56:30', 'http://127.0.0.1:8000/topic/detail/33/');
INSERT INTO `operation_usermessage` VALUES (107, 8, '有人回复了你的评论', 1, '2019-05-10 22:56:37', 'http://127.0.0.1:8000/topic/detail/33/');
INSERT INTO `operation_usermessage` VALUES (108, 13, '有人回复了你的回复', 1, '2019-05-10 22:57:00', 'http://127.0.0.1:8000/topic/detail/33/');
INSERT INTO `operation_usermessage` VALUES (109, 13, '有人回复了你的回复', 1, '2019-05-10 22:57:13', 'http://127.0.0.1:8000/topic/detail/33/');

-- ----------------------------
-- Table structure for organization_atest
-- ----------------------------
DROP TABLE IF EXISTS `organization_atest`;
CREATE TABLE `organization_atest`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES (1, '北京市', '北京市', '2016-11-02 21:17:00');
INSERT INTO `organization_citydict` VALUES (2, '上海市', '上海市', '2016-11-02 21:18:00');
INSERT INTO `organization_citydict` VALUES (3, '广州市', '广州市', '2016-11-02 21:18:00');
INSERT INTO `organization_citydict` VALUES (4, '深圳市', '深圳市', '2016-11-02 21:18:00');
INSERT INTO `organization_citydict` VALUES (5, '天津市', '天津市', '2016-11-02 21:20:00');
INSERT INTO `organization_citydict` VALUES (6, '周口', '很美', '2019-04-12 18:33:00');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_courseorg_c7141997`(`city_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES (1, '慕课网', '<p>&nbsp; &nbsp;</p><h1 class=\"ue_t\" label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\"><span style=\"color:#c0504d;\">[键入文档标题]</span></h1><p style=\"text-align:center;\"><strong class=\"ue_t\">[键入文档副标题]</strong></p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 1]</span></h3><p class=\"ue_t\" style=\"text-indent:2em;\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\" style=\"text-indent:2em;\"><img src=\"/media/courses/ueditor/57aa86a0000145c512000460_20161210234050_865.jpg\" title=\"\" alt=\"57aa86a0000145c512000460.jpg\"/> </p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 2]</span></h3><p><img src=\"http://api.map.baidu.com/staticimage?center=116.410899,39.863624&zoom=11&width=530&height=340&markers=116.404,39.915\" width=\"530\" height=\"340\"/> </p><p class=\"ue_t\" style=\"text-indent:2em;\">在“开始”选项卡上，通过从快速样式库中为所选文本选择一种外观，您可以方便地更改文档中所选文本的格式。 您还可以使用“开始”选项卡上的其他控件来直接设置文本格式。大多数控件都允许您选择是使用当前主题外观，还是使用某种直接指定的格式。</p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 3]</span></h3><p>2016-12-10</p><p class=\"ue_t\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\"><br/> </p><p><br/> </p><p><br/> </p>', 98, 2, 'org/2019/04/imooc_Fq4HghN.png', '北京市', '2016-11-02 21:28:00', 1, 'pxjg', 4, 46, '全国知名');
INSERT INTO `organization_courseorg` VALUES (2, '北京大学', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]', 21, 1, 'org/2016/11/bjdx.jpg', '北京市', '2016-11-02 18:50:00', 3, 'gx', 5, 9, '全国知名');
INSERT INTO `organization_courseorg` VALUES (3, '清华大学', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]', 3, 0, 'org/2016/11/qhdx-logo.png', '北京市', '2016-11-02 18:53:00', 3, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (4, '南京大学', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n    慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]', 6, 0, 'org/2016/11/njdx.jpg', '南京市', '2016-11-02 18:53:00', 4, 'pxjg', 1, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (5, 'QX', '<p>&nbsp; &nbsp; 慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n &nbsp; &nbsp;慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]</p>', 3, 0, 'org/2019/04/u35831171202170409331fm26gp0_ViKkIgw.jpg', '深圳市', '2016-11-02 18:54:00', 5, 'gr', 1, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (6, '迷你', '<p>&nbsp; &nbsp; 慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n &nbsp; &nbsp;慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]</p>', 1, 0, 'org/2019/04/u2943570432939388060fm26gp0.jpg', '天津市', '2016-11-02 18:54:00', 6, 'pxjg', 1, 1, '全国知名');
INSERT INTO `organization_courseorg` VALUES (7, '绿枫叶', '<p>&nbsp; &nbsp; 慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n &nbsp; &nbsp;慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]</p>', 0, 0, 'org/2019/04/u33591041091017303237fm26gp0.jpg', '上海市', '2016-11-02 18:54:00', 3, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (8, 'YESLAB', '<p>&nbsp; &nbsp; 慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n &nbsp; &nbsp;慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]</p>', 0, 0, 'org/2019/04/u28665920241863580878fm26gp0.jpg', '深圳市', '2016-11-02 18:55:00', 5, 'gx', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (9, 'VIVA', '<p>&nbsp; &nbsp; 慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n &nbsp; &nbsp;慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]</p>', 0, 0, 'org/2019/04/u22696665414160876795fm26gp0.jpg', '北京市', '2016-11-02 18:55:00', 4, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (10, '极致', '<p>&nbsp; &nbsp; 慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。\r\n &nbsp; &nbsp;慕课网课程涵盖前端开发、PHP、Html5、Android、iOS、Swift等IT前沿技术语言，包括基础课程、实用案例、高级分享三大类型，适合不同阶段的学习人群。以纯干货、短视频的形式为平台特点，为在校学生、职场白领提供了一个迅速提升技能、共同分享进步的学习平台。[1] \r\n4月2日，国内首个IT技能学习类应用——慕课网3.1.0版本在应用宝首发。据了解，在此次上线的版本中，慕课网新增了课程历史记录、相关课程推荐等四大功能，为用户营造更加丰富的移动端IT学习体验。[2]</p>', 1, 0, 'org/2019/04/u10633483992239018304fm26gp0.jpg', '深圳市', '2016-11-02 18:56:00', 2, 'pxjg', 1, 1, '全国知名');
INSERT INTO `organization_courseorg` VALUES (11, 'YOUR', '<p>&nbsp; &nbsp; 慕学网慕学网\r\n慕学网慕学网慕学网\r\n慕学网慕学网慕学网\r\n\r\n慕学网慕学网慕学网\r\n\r\n慕学网</p>', 0, 0, 'org/2019/04/u2393637485343037442fm26gp0.jpg', '北京市', '2016-12-10 23:28:00', 4, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (12, 'python培训机构', '<p>&nbsp; &nbsp; python培训机构\r\npython培训机构\r\npython培训机构\r\npython培训机构\r\npython培训机构\r\npython培训机构\r\npython培训机构\r\npython培训机构\r\npython培训机构</p>', 0, 0, 'org/2019/04/python.jpg', '北京市', '2016-12-10 23:30:00', 2, 'gr', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (13, 'vuejs培训', '<p>&nbsp; &nbsp; vuejs培训vuejs培训vuejs培训vuejs培训\r\nvuejs培训vuejs培训vuejs培训vuejs培训\r\nvuejs培训vuejs培训vuejs培训vuejs培训\r\nvuejs培训vuejs培训vuejs培训vuejs培训</p>', 0, 0, 'org/2019/04/u1812372063537047119fm26gp0.jpg', '北京市', '2016-12-10 23:30:00', 2, 'gr', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (14, 'nodejs培训', '<p>&nbsp; &nbsp; nodejs培训nodejs培训nodejs培训nodejs培训nodejs培训\r\nnodejs培训nodejs培训nodejs培训nodejs培训nodejs培训</p>', 0, 0, 'org/2019/04/下载.jpg', '北京市', '2016-12-10 23:30:00', 2, 'gr', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (15, '腾讯课堂', '<p>&nbsp; &nbsp; 慕学在线慕学在线慕学在线慕学在线慕学在线\r\n慕学在线慕学在线慕学在线慕学在线慕学在线</p>', 0, 0, 'org/2019/04/下载_1.jpg', '北京市', '2016-12-10 23:31:00', 5, 'gx', 0, 10, '全国知名');

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `points` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_teacher_9cf869aa`(`org_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES (1, 'Peter', 5, 'xxx', 'xxx', 'xxx', 49, 1, '2016-11-03 23:43:00', 1, 'teacher/2019/04/u2894296377760208308fm26gp0.jpg', 18, '123456', 'peter');
INSERT INTO `organization_teacher` VALUES (2, '大教授', 5, 'xxx', 'xxx', 'xxx', 5, 1, '2016-11-03 23:44:00', 1, 'teacher/2019/04/b7fd5266d0160924c427f4d4d80735fae7cd34fa.jpg', 18, '123456', 'jiaoshou');
INSERT INTO `organization_teacher` VALUES (3, '王天赏', 2, '河南科技学院', '软件工程师', '牛逼', 14, 12, '2019-04-02 16:22:00', 2, 'teacher/2019/04/QQ截图20190312204019.png', 18, '123456', 'wangtianshang');
INSERT INTO `organization_teacher` VALUES (4, '王浩', 0, '河南科技学院', '软件工程师', '牛逼', 3, 0, '2019-04-08 17:01:00', 2, 'teacher/2019/04/java3.jpg', 23, '123456', 'wanghao');
INSERT INTO `organization_teacher` VALUES (5, '琼斯', 12, '河南科技学院', '软件工程师', '牛逼', 6, 0, '2019-04-17 12:08:00', 5, 'teacher/2019/04/python.jpg', 18, '123456', 'qiongsi');

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES (1, '第一个', 'banner/2016/11/57a801860001c34b12000460.jpg', 'http://www.imooc.com', 1, '2016-11-07 22:55:00');
INSERT INTO `users_banner` VALUES (2, '第二个', 'banner/2016/11/57aa86a0000145c512000460.jpg', 'http://www.projectsedu.com', 2, '2016-11-07 22:56:00');
INSERT INTO `users_banner` VALUES (3, '第三个', 'banner/2016/11/57a801860001c34b12000460_z4Vb8zl.jpg', 'http://www.projectsedu.com', 3, '2016-11-07 22:57:00');
INSERT INTO `users_banner` VALUES (4, '第四个', 'banner/2016/11/57aa86a0000145c512000460_nMwvoQD.jpg', 'http://www.projectsedu.com', 4, '2016-11-07 22:57:00');
INSERT INTO `users_banner` VALUES (5, '第五个', 'banner/2016/11/57aa86a0000145c512000460_GXIBATC.jpg', 'http://www.projectsedu.com', 5, '2016-11-07 22:58:00');

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES (6, 'admin', 'xxx@qq.com', 'register', '2016-10-25 23:13:00');
INSERT INTO `users_emailverifyrecord` VALUES (8, 'bobby', 'admin@admin.com', 'forget', '2016-10-25 23:26:00');
INSERT INTO `users_emailverifyrecord` VALUES (9, '3XMbn5Owwv6tc6mc', 'projectsedu@sina.com', 'register', '2016-10-30 22:52:56');
INSERT INTO `users_emailverifyrecord` VALUES (10, 'xul6s2tlQMW6o38E', 'projectsedu@sina.com', 'register', '2016-10-30 22:57:43');
INSERT INTO `users_emailverifyrecord` VALUES (11, 'ekB9xHRNDng9wlHq', 'projectsedu@sina.com', 'register', '2016-10-30 23:02:20');
INSERT INTO `users_emailverifyrecord` VALUES (12, 'RIGoVBtSxt3U01YP', 'projectsedu@sina.com', 'forget', '2016-11-01 22:04:08');
INSERT INTO `users_emailverifyrecord` VALUES (13, '73gYZCG4NID3hBIk', 'projectsedu@sina.com', 'forget', '2016-11-01 22:06:23');
INSERT INTO `users_emailverifyrecord` VALUES (14, 'KIjhoogFyi8xu4TB', 'projectsedu@sina.com', 'update_ema', '2016-11-06 19:46:49');
INSERT INTO `users_emailverifyrecord` VALUES (15, 'xrHe', 'projectsedu@sina.com', 'update_email', '2016-11-06 19:50:45');
INSERT INTO `users_emailverifyrecord` VALUES (16, 'jCeSMseZ58DeGPDx', 'projectsedu@sina.com', 'forget', '2016-11-08 22:39:08');
INSERT INTO `users_emailverifyrecord` VALUES (17, 'buIsI0Sf76hXWzso', '1241814506@qq.com', 'register', '2019-04-11 22:46:09');
INSERT INTO `users_emailverifyrecord` VALUES (18, 'vdTjOGiLNxD8hO99', '1241814506@qq.com', 'register', '2019-04-11 22:48:09');
INSERT INTO `users_emailverifyrecord` VALUES (19, 'rCJga9Q8Uu1FzjOn', '1241814506@qq.com', 'register', '2019-04-13 00:22:30');
INSERT INTO `users_emailverifyrecord` VALUES (20, '09x819GEHGXpR5D5', '1@222.com', 'register', '2019-04-13 20:28:46');
INSERT INTO `users_emailverifyrecord` VALUES (21, '4J4oWAcuNkzupGRX', '1241814506@qq.com', 'register', '2019-05-04 22:31:14');
INSERT INTO `users_emailverifyrecord` VALUES (22, 'P8sYsTgh2LDsK2qp', '1241814506@qq.com', 'register', '2019-05-04 22:34:38');
INSERT INTO `users_emailverifyrecord` VALUES (23, 'XMzTBjjL2uRyNhVe', '1241814506@qq.com', 'register', '2019-05-06 15:17:52');
INSERT INTO `users_emailverifyrecord` VALUES (24, 'EBCbF0dZ4VTpHz3F', '1241814506@qq.com', 'register', '2019-05-06 15:22:34');
INSERT INTO `users_emailverifyrecord` VALUES (25, 'UNpoMrCHFaHmpbRz', '52385351@qq.com', 'register', '2019-05-06 15:23:48');
INSERT INTO `users_emailverifyrecord` VALUES (26, 'rlZ1D3EzSjybpi7E', '1241814506@qq.com', 'register', '2019-05-06 15:27:22');
INSERT INTO `users_emailverifyrecord` VALUES (27, 'wms7z7pxBDu6YyB9', '1241814506@qq.com', 'register', '2019-05-06 15:29:30');
INSERT INTO `users_emailverifyrecord` VALUES (28, 'v9XEOn40Blne8qHQ', '1241814506@qq.com', 'register', '2019-05-06 15:32:42');
INSERT INTO `users_emailverifyrecord` VALUES (29, 'VwycLLS8UTqLFgtf', '1241814506@qq.com', 'register', '2019-05-06 15:35:33');
INSERT INTO `users_emailverifyrecord` VALUES (30, 'cGJWAaktAbDWj18q', '1241814506@qq.com', 'forget', '2019-05-06 15:39:26');
INSERT INTO `users_emailverifyrecord` VALUES (31, 'g7T9BzEkh7kjg565', '15617165229@163.com', 'register', '2019-05-06 15:41:58');
INSERT INTO `users_emailverifyrecord` VALUES (32, 'mAzBGLNRCGZtp9JX', '1@222.com', 'register', '2019-05-10 00:23:52');
INSERT INTO `users_emailverifyrecord` VALUES (33, 'zZwrb5GvSvW3YsAg', '1241814506@qq.com', 'register', '2019-05-10 00:32:02');
INSERT INTO `users_emailverifyrecord` VALUES (34, 'SjecpF2r9BTreNVM', '1241814506@qq.com', 'register', '2019-05-10 00:36:34');
INSERT INTO `users_emailverifyrecord` VALUES (35, 'LFTkwoFNYkfaiitb', '1241814506@qq.com', 'register', '2019-05-10 00:41:12');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birday` date NULL DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (3, 'admin123', '2016-10-30 23:40:00', 0, 'bobby1', '', '', '', 0, 1, '2016-10-24 23:40:00', 'bobby', '2016-10-05', 'female', '慕课网', '', 'image/default.png');
INSERT INTO `users_userprofile` VALUES (2, 'pbkdf2_sha256$24000$F1yNeo5gRaWI$6TxfkDeHwc0X25DLCBI8O5W7exiud1Zz9FW8xtrPHSE=', '2016-12-11 22:42:34', 1, 'bobby', '', '', 'projectsedu@sina.com', 1, 1, '2016-10-24 14:58:33', 'django', '2009-09-02', 'female', '我来自火星', '', 'image/2016/12/default_big_14.png');
INSERT INTO `users_userprofile` VALUES (8, 'pbkdf2_sha256$36000$VrfBgTlZFzdB$NpcNpe2jEfAkulMVa/jp0xaQu6s0lM/lS9mTevmqWVI=', '2019-05-10 22:56:50', 1, 'wang', '', '', '1@2.com', 1, 1, '2019-04-01 10:37:51', 'nishi', '2019-05-10', 'male', '河南周口', 'None', 'image/2019/05/QQ截图20190312204019_zv3qHD8.png');
INSERT INTO `users_userprofile` VALUES (13, 'pbkdf2_sha256$36000$E3aczIrn4hBO$4brJESjtlqcVHBI7qVZoTgLX/2i1Kyruiw7h70iuigc=', '2019-05-10 22:57:28', 1, 'nihao', '', '', '1@2.com', 1, 1, '2019-04-07 18:59:22', '年后', '2019-04-07', 'male', '很那', 'None', 'image/2019/04/other.jpg');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id`(`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------
INSERT INTO `users_userprofile_groups` VALUES (1, 6, 1);

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_permissions_userprofile_id_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------
INSERT INTO `users_userprofile_user_permissions` VALUES (5, 16, 31);

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_417f1b1c`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (1, '2019-04-01 22:01:20', '127.0.0.1', '15', '慕学在线', 'change', '修改 desc，image 和 students', 15, 8);
INSERT INTO `xadmin_log` VALUES (2, '2019-04-02 16:25:28', '127.0.0.1', '3', '王天赏', 'create', '已添加。', 16, 8);
INSERT INTO `xadmin_log` VALUES (3, '2019-04-02 16:29:10', '127.0.0.1', '10', '第一章：安装xadmin', 'create', '已添加。', 11, 8);
INSERT INTO `xadmin_log` VALUES (4, '2019-04-02 16:30:43', '127.0.0.1', '15', '安装xadmin', 'create', '已添加。', 12, 8);
INSERT INTO `xadmin_log` VALUES (5, '2019-04-02 16:31:39', '127.0.0.1', '3', 'CourseResource object', 'create', '已添加。', 13, 8);
INSERT INTO `xadmin_log` VALUES (6, '2019-04-02 19:07:42', '127.0.0.1', '1', 'django', 'create', '已添加。', 37, 8);
INSERT INTO `xadmin_log` VALUES (7, '2019-04-03 14:27:58', '127.0.0.1', '2', 'python', 'create', '已添加。', 37, 8);
INSERT INTO `xadmin_log` VALUES (8, '2019-04-03 14:28:03', '127.0.0.1', '3', 'java', 'create', '已添加。', 37, 8);
INSERT INTO `xadmin_log` VALUES (9, '2019-04-03 14:50:27', '127.0.0.1', '1', 'django自学', 'create', '已添加。', 36, 8);
INSERT INTO `xadmin_log` VALUES (10, '2019-04-03 14:51:45', '127.0.0.1', '2', 'django中的admin使用', 'create', '已添加。', 36, 8);
INSERT INTO `xadmin_log` VALUES (11, '2019-04-03 15:52:20', '127.0.0.1', '2', 'django中的admin使用', 'change', '修改 content', 36, 8);
INSERT INTO `xadmin_log` VALUES (12, '2019-04-03 15:52:30', '127.0.0.1', '1', 'django自学', 'change', '修改 content', 36, 8);
INSERT INTO `xadmin_log` VALUES (13, '2019-04-03 15:59:05', '127.0.0.1', '2', 'django中的admin使用', 'change', '修改 content', 36, 8);
INSERT INTO `xadmin_log` VALUES (14, '2019-04-03 16:03:49', '127.0.0.1', '2', 'django中的admin使用', 'change', '修改 click_num', 36, 8);
INSERT INTO `xadmin_log` VALUES (15, '2019-04-03 17:21:03', '127.0.0.1', '3', '自学成才', 'create', '已添加。', 36, 8);
INSERT INTO `xadmin_log` VALUES (16, '2019-04-03 17:22:21', '127.0.0.1', '4', '那些年刷过的java', 'create', '已添加。', 36, 8);
INSERT INTO `xadmin_log` VALUES (17, '2019-04-03 17:23:14', '127.0.0.1', '5', '装饰器', 'create', '已添加。', 36, 8);
INSERT INTO `xadmin_log` VALUES (18, '2019-04-03 17:23:53', '127.0.0.1', '6', '匿名函数', 'create', '已添加。', 36, 8);
INSERT INTO `xadmin_log` VALUES (19, '2019-04-03 17:25:47', '127.0.0.1', '7', 'jdbc之对面的女孩看过来', 'create', '已添加。', 36, 8);
INSERT INTO `xadmin_log` VALUES (20, '2019-04-03 20:49:27', '127.0.0.1', '8', 'python你好', 'create', '已添加。', 36, 8);
INSERT INTO `xadmin_log` VALUES (21, '2019-04-04 20:46:15', '127.0.0.1', '1', 'django自学', 'change', '修改 image', 36, 8);
INSERT INTO `xadmin_log` VALUES (22, '2019-04-04 21:00:05', '127.0.0.1', '8', 'python你好', 'change', '修改 image', 36, 8);
INSERT INTO `xadmin_log` VALUES (23, '2019-04-04 21:00:19', '127.0.0.1', '7', 'jdbc之对面的女孩看过来', 'change', '修改 image', 36, 8);
INSERT INTO `xadmin_log` VALUES (24, '2019-04-04 21:00:30', '127.0.0.1', '6', '匿名函数', 'change', '修改 image', 36, 8);
INSERT INTO `xadmin_log` VALUES (25, '2019-04-04 21:00:42', '127.0.0.1', '5', '装饰器', 'change', '修改 image', 36, 8);
INSERT INTO `xadmin_log` VALUES (26, '2019-04-04 21:00:53', '127.0.0.1', '4', '那些年刷过的java', 'change', '修改 image', 36, 8);
INSERT INTO `xadmin_log` VALUES (27, '2019-04-04 21:01:04', '127.0.0.1', '3', '自学成才', 'change', '修改 image', 36, 8);
INSERT INTO `xadmin_log` VALUES (28, '2019-04-04 21:02:11', '127.0.0.1', '9', '好好学习', 'create', '已添加。', 36, 8);
INSERT INTO `xadmin_log` VALUES (29, '2019-04-04 21:02:23', '127.0.0.1', '2', 'django中的admin使用', 'change', '修改 image', 36, 8);
INSERT INTO `xadmin_log` VALUES (30, '2019-04-04 21:08:16', '127.0.0.1', '4', '其他', 'create', '已添加。', 37, 8);
INSERT INTO `xadmin_log` VALUES (31, '2019-04-04 22:41:29', '127.0.0.1', '10', '学不完的python', 'create', '已添加。', 36, 8);
INSERT INTO `xadmin_log` VALUES (32, '2019-04-04 23:51:11', '127.0.0.1', '11', 'django自学', 'create', '已添加。', 36, 8);
INSERT INTO `xadmin_log` VALUES (33, '2019-04-05 12:39:40', '127.0.0.1', '12', '生成器', 'create', '已添加。', 36, 8);
INSERT INTO `xadmin_log` VALUES (34, '2019-04-06 12:26:18', '127.0.0.1', '13', 'hhhh', 'create', '已添加。', 36, 8);
INSERT INTO `xadmin_log` VALUES (35, '2019-04-06 22:20:39', '127.0.0.1', '17', '王', 'change', '修改 image', 36, 8);
INSERT INTO `xadmin_log` VALUES (36, '2019-04-06 22:20:51', '127.0.0.1', '16', '1', 'change', '修改 image', 36, 8);
INSERT INTO `xadmin_log` VALUES (37, '2019-04-08 17:02:51', '127.0.0.1', '4', '王浩', 'create', '已添加。', 16, 13);
INSERT INTO `xadmin_log` VALUES (38, '2019-04-10 16:29:16', '127.0.0.1', '9', 'go语言入门', 'change', '修改 image', 32, 13);
INSERT INTO `xadmin_log` VALUES (39, '2019-04-11 20:26:55', '127.0.0.1', '15', '安装xadmin', 'change', '修改 url', 12, 13);
INSERT INTO `xadmin_log` VALUES (40, '2019-04-11 20:29:36', '127.0.0.1', '11', '最新章', 'create', '已添加。', 11, 13);
INSERT INTO `xadmin_log` VALUES (41, '2019-04-11 20:30:02', '127.0.0.1', '16', '学习总结', 'create', '已添加。', 12, 13);
INSERT INTO `xadmin_log` VALUES (42, '2019-04-11 20:31:20', '127.0.0.1', '1', '1.1 hello world', 'change', '修改 url', 12, 13);
INSERT INTO `xadmin_log` VALUES (43, '2019-04-12 18:18:12', '127.0.0.1', '148', 'organization | 教师 | 教师权限', 'create', '已添加。', 2, 13);
INSERT INTO `xadmin_log` VALUES (44, '2019-04-12 18:19:33', '127.0.0.1', '2', '教师操作', 'create', '已添加。', 3, 13);
INSERT INTO `xadmin_log` VALUES (45, '2019-04-12 18:21:10', '127.0.0.1', '2', '教师操作', 'delete', '', 3, 13);
INSERT INTO `xadmin_log` VALUES (46, '2019-04-12 18:25:37', '127.0.0.1', '3', '教师操作', 'create', '已添加。', 3, 13);
INSERT INTO `xadmin_log` VALUES (47, '2019-04-12 18:25:59', '127.0.0.1', '16', 'nini', 'create', '已添加。', 7, 13);
INSERT INTO `xadmin_log` VALUES (48, '2019-04-12 18:31:02', '127.0.0.1', '16', 'nini', 'change', '修改 last_login，user_permissions，nick_name，address 和 image', 7, 13);
INSERT INTO `xadmin_log` VALUES (49, '2019-04-12 18:32:56', '127.0.0.1', '16', 'nini', 'change', '修改 is_superuser，is_staff 和 image', 7, 13);
INSERT INTO `xadmin_log` VALUES (50, '2019-04-12 18:33:37', '127.0.0.1', '6', '周口', 'create', '已添加。', 14, 16);
INSERT INTO `xadmin_log` VALUES (51, '2019-04-17 12:04:19', '127.0.0.1', '2', '大教授', 'change', '修改 name 和 image', 16, 13);
INSERT INTO `xadmin_log` VALUES (52, '2019-04-17 12:05:20', '127.0.0.1', '1', 'Peter', 'change', '修改 name 和 image', 16, 13);
INSERT INTO `xadmin_log` VALUES (53, '2019-04-17 12:07:46', '127.0.0.1', '5', '慕课网2', 'change', '修改 desc 和 image', 15, 13);
INSERT INTO `xadmin_log` VALUES (54, '2019-04-17 12:08:24', '127.0.0.1', '5', 'QX', 'change', '修改 name 和 image', 15, 13);
INSERT INTO `xadmin_log` VALUES (55, '2019-04-17 12:09:01', '127.0.0.1', '5', '琼斯', 'create', '已添加。', 16, 13);
INSERT INTO `xadmin_log` VALUES (56, '2019-04-17 12:12:16', '127.0.0.1', '6', '迷你', 'change', '修改 name，desc 和 image', 15, 13);
INSERT INTO `xadmin_log` VALUES (57, '2019-04-17 12:12:45', '127.0.0.1', '8', 'YESLAB', 'change', '修改 name，desc 和 image', 15, 13);
INSERT INTO `xadmin_log` VALUES (58, '2019-04-17 12:13:03', '127.0.0.1', '9', 'VIVA', 'change', '修改 name，desc 和 image', 15, 13);
INSERT INTO `xadmin_log` VALUES (59, '2019-04-17 12:13:24', '127.0.0.1', '10', '极致', 'change', '修改 name，desc 和 image', 15, 13);
INSERT INTO `xadmin_log` VALUES (60, '2019-04-17 12:13:51', '127.0.0.1', '11', 'YOUR', 'change', '修改 name，desc 和 image', 15, 13);
INSERT INTO `xadmin_log` VALUES (61, '2019-04-17 12:14:22', '127.0.0.1', '12', 'python培训机构', 'change', '修改 desc 和 image', 15, 13);
INSERT INTO `xadmin_log` VALUES (62, '2019-04-17 12:15:24', '127.0.0.1', '14', 'nodejs培训', 'change', '修改 desc 和 image', 15, 13);
INSERT INTO `xadmin_log` VALUES (63, '2019-04-17 12:16:10', '127.0.0.1', '13', 'vuejs培训', 'change', '修改 desc 和 image', 15, 13);
INSERT INTO `xadmin_log` VALUES (64, '2019-04-17 12:16:33', '127.0.0.1', '7', '绿枫叶', 'change', '修改 name，desc 和 image', 15, 13);
INSERT INTO `xadmin_log` VALUES (65, '2019-04-17 12:18:09', '127.0.0.1', '15', '腾讯课堂', 'change', '修改 name 和 image', 15, 13);
INSERT INTO `xadmin_log` VALUES (66, '2019-04-17 17:19:45', '127.0.0.1', '12', '1', 'create', '已添加。', 11, 13);
INSERT INTO `xadmin_log` VALUES (67, '2019-04-17 17:20:10', '127.0.0.1', NULL, '', 'delete', '批量删除 1 个 课程', NULL, 13);
INSERT INTO `xadmin_log` VALUES (68, '2019-04-17 20:03:37', '127.0.0.1', '7', 'django与vuejs实战项目', 'change', '修改 teacher 和 image', 32, 13);
INSERT INTO `xadmin_log` VALUES (69, '2019-04-17 20:03:51', '127.0.0.1', '9', 'go语言入门', 'change', '修改 teacher 和 image', 32, 13);
INSERT INTO `xadmin_log` VALUES (70, '2019-04-18 20:52:33', '127.0.0.1', '4', 'CourseResource object', 'create', '已添加。', 13, 13);
INSERT INTO `xadmin_log` VALUES (71, '2019-04-18 21:41:21', '127.0.0.1', '5', 'CourseResource object', 'create', '已添加。', 13, 13);
INSERT INTO `xadmin_log` VALUES (72, '2019-04-23 23:43:22', '127.0.0.1', NULL, '', 'delete', '批量删除 4 个 课程', NULL, 13);
INSERT INTO `xadmin_log` VALUES (73, '2019-04-26 10:30:26', '127.0.0.1', '1', '慕课网', 'change', '修改 desc，click_nums，image，students 和 course_nums', 15, 13);
INSERT INTO `xadmin_log` VALUES (74, '2019-04-26 11:11:51', '127.0.0.1', '2', '1.2 基本概念', 'change', '修改 url', 12, 13);
INSERT INTO `xadmin_log` VALUES (75, '2019-05-10 14:14:35', '127.0.0.1', '30', 'django学习', 'delete', '', 36, 8);
INSERT INTO `xadmin_log` VALUES (76, '2019-05-10 22:44:54', '127.0.0.1', NULL, '', 'delete', '批量删除 2 个 话题', NULL, 8);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 2);
INSERT INTO `xadmin_usersettings` VALUES (2, 'dashboard:home:pos', '', 8);
INSERT INTO `xadmin_usersettings` VALUES (3, 'site-theme', '/static/xadmin/css/themes/bootstrap-theme.css', 8);
INSERT INTO `xadmin_usersettings` VALUES (4, 'dashboard:home:pos', '', 13);
INSERT INTO `xadmin_usersettings` VALUES (5, 'dashboard:home:pos', '', 16);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
