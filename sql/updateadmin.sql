-- MySQL dump 10.11
--
-- Host: 127.0.0.1    Database: jfinal_admin
-- ------------------------------------------------------
-- Server version	5.0.96-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL auto_increment,
  `class_id` int(11) default NULL COMMENT '类别id',
  `article_title` varchar(200) default NULL COMMENT '文章标题',
  `article_conten` text COMMENT '文章内容',
  `article_pic` text COMMENT '文章缩略图',
  `is_UP` int(11) default NULL COMMENT '是否置顶',
  `cat_count` mediumtext COMMENT '文章查看次数',
  `createTime` date default NULL COMMENT '创建时间',
  `updateTime` date default NULL COMMENT '更新时间',
  `createUser` int(11) default NULL COMMENT '创建人',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='文章';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,1,'测试文章','哈哈哈',NULL,0,'2','2017-06-16',NULL,1),(2,1,'测试文章啊啊啊阿萨 的阿斯顿 该服务器热人任务人','<p>而温柔哥我和特还不如他以后呢乳液让他一人头好基友热一天我让他温热太热五个人<img src=\"/upload/00000001201706161953538604.gif\" title=\"00000001201706161953538604.gif\" alt=\"environment_icon.gif\"/></p>',NULL,0,'3','2017-06-16',NULL,1),(4,2,'阿斯顿高峰期我过去无人敢抢我','<p>撒个屋企人提前问题4蛐蛐儿无若群无若</p>',NULL,1,'2','2017-06-16',NULL,1);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_class`
--

DROP TABLE IF EXISTS `article_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_class` (
  `id` int(11) NOT NULL auto_increment,
  `class_name` varchar(32) default NULL COMMENT '类别名称',
  `createTime` date default NULL COMMENT '创建时间',
  `updateTime` date default NULL COMMENT '更新时间',
  `createUser` int(11) default NULL COMMENT '创建人',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='文章类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_class`
--

LOCK TABLES `article_class` WRITE;
/*!40000 ALTER TABLE `article_class` DISABLE KEYS */;
INSERT INTO `article_class` VALUES (1,'新闻动态','2017-06-16',NULL,1),(2,'专业介绍','2017-06-16',NULL,1);
/*!40000 ALTER TABLE `article_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_department`
--

DROP TABLE IF EXISTS `sys_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_department` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) default '0' COMMENT '上级机构',
  `name` varchar(32) NOT NULL COMMENT '部门/11111',
  `code` varchar(128) default NULL COMMENT '机构编码',
  `sort` int(11) default '0' COMMENT '序号',
  `linkman` varchar(64) default NULL COMMENT '联系人',
  `linkman_no` varchar(32) default NULL COMMENT '联系人电话',
  `remark` varchar(128) default NULL COMMENT '机构描述',
  `update_time` varchar(64) default NULL COMMENT '更新时间',
  `update_id` int(11) default '0' COMMENT '更新者',
  `create_time` varchar(64) default NULL COMMENT '创建时间',
  `create_id` int(11) default '0' COMMENT '创建者',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='部门';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_department`
--

LOCK TABLES `sys_department` WRITE;
/*!40000 ALTER TABLE `sys_department` DISABLE KEYS */;
INSERT INTO `sys_department` VALUES (1,0,'系统承建单位',NULL,99,'system','15888888888',NULL,'2016-06-06 06:06:06',1,'2016-06-06 06:06:06',1),(2,0,'注册用户',NULL,97,'无人','15888888888',NULL,'2015-04-28 22:39:34',1,'2015-04-28 22:39:34',1),(3,0,'第三方用户',NULL,90,'无人','15888888888',NULL,'2015-06-01 12:39:41',1,'2015-06-01 12:39:41',1),(4,0,'FLY的狐狸','ABC000',100,NULL,NULL,NULL,'2016-07-31 18:12:30',1,'2016-07-31 18:12:30',1),(5,4,'开发部','ABC001',101,NULL,NULL,NULL,'2016-07-31 18:15:29',1,'2016-07-31 18:15:29',1),(6,4,'财务部','ABC003',103,NULL,NULL,NULL,'2016-07-31 18:16:06',1,'2016-07-31 18:16:06',1),(7,4,'人事部','ABC004',104,NULL,NULL,NULL,'2016-07-31 18:16:30',1,'2016-07-31 18:16:30',1),(8,5,'测试部','ABC0011',101,NULL,NULL,NULL,'2016-07-31 18:16:52',1,'2016-07-31 18:16:52',1),(9,3,'RTE','24152',23,'WR ','12412412','12 R','2017-06-15 12:41:11',1,'2017-06-15 12:41:11',1);
/*!40000 ALTER TABLE `sys_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict` (
  `dict_id` int(11) NOT NULL auto_increment COMMENT '主键',
  `dict_name` varchar(256) NOT NULL COMMENT '名称',
  `dict_type` varchar(64) NOT NULL COMMENT '类型',
  `dict_remark` varchar(256) default NULL COMMENT '备注',
  PRIMARY KEY  (`dict_id`),
  UNIQUE KEY `UK_SYS_DICT_TYPE` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='数据字典主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict`
--

LOCK TABLES `sys_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
INSERT INTO `sys_dict` VALUES (1,'日志配置','systemLog',NULL),(2,'目录类型','articleType',NULL),(11,'目录类型','folderType',NULL),(100,'系统参数','systemParam',NULL),(101,'友情链接类型','friendlyLinkType',NULL),(102,'栏目类型','materialType',NULL);
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_detail`
--

DROP TABLE IF EXISTS `sys_dict_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict_detail` (
  `detail_id` int(11) NOT NULL auto_increment COMMENT '主键',
  `dict_type` varchar(64) NOT NULL COMMENT '数据字典类型',
  `detail_name` varchar(256) default NULL COMMENT '名称',
  `detail_code` varchar(32) default NULL COMMENT '代码',
  `detail_sort` varchar(32) default NULL COMMENT '排序号',
  `detail_type` varchar(32) default NULL COMMENT '类型',
  `detail_state` varchar(32) default NULL COMMENT '状态',
  `detail_content` varchar(256) default NULL COMMENT '内容',
  `detail_remark` varchar(256) default NULL COMMENT '备注',
  `create_time` varchar(64) default NULL COMMENT '创建时间',
  `create_id` int(11) default '0' COMMENT '创建者',
  PRIMARY KEY  (`detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='数据字典';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_detail`
--

LOCK TABLES `sys_dict_detail` WRITE;
/*!40000 ALTER TABLE `sys_dict_detail` DISABLE KEYS */;
INSERT INTO `sys_dict_detail` VALUES (1,'folderType','目录','1','1',NULL,NULL,NULL,NULL,'2015-01-30',1),(2,'folderType','a标签','2','2',NULL,NULL,NULL,NULL,'2015-01-30',1),(3,'folderType','a标签target','3','3',NULL,NULL,NULL,NULL,'2015-01-30',1),(4,'folderType','html标签','4','4',NULL,NULL,NULL,NULL,'2015-01-30',1),(11,'articleType','正常','1','1',NULL,NULL,NULL,NULL,'2015-01-30',1),(12,'articleType','预览','2','2',NULL,NULL,NULL,NULL,'2015-01-30',1),(13,'articleType','程序','3','3',NULL,NULL,NULL,NULL,'2015-01-30',1),(21,'friendlyLinkType','友情链接',NULL,'1',NULL,NULL,NULL,NULL,'2015-05-06 15:18:59',1),(22,'friendlyLinkType','关于我们',NULL,'2',NULL,NULL,NULL,NULL,'2015-05-06 15:19:20',1),(51,'systemLog','sys_dict','数据字典主表','1',NULL,NULL,NULL,NULL,'2015-01-30',1),(52,'systemLog','sys_dict_detail','数据字典','2',NULL,NULL,NULL,NULL,'2015-01-30',1),(53,'systemLog','sys_menu','菜单管理','3',NULL,NULL,NULL,NULL,'2015-01-30',1),(54,'systemLog','sys_department','组织机构','4',NULL,NULL,NULL,NULL,'2015-01-30',1),(55,'systemLog','sys_user','用户管理','5',NULL,NULL,NULL,NULL,'2015-01-30',1),(56,'systemLog','sys_user_role','用户角色授权','6',NULL,NULL,NULL,NULL,'2015-01-30',1),(57,'systemLog','sys_role','角色管理','7',NULL,NULL,NULL,NULL,'2015-01-30',1),(58,'systemLog','sys_role_folder','角色目录授权','8',NULL,NULL,NULL,NULL,'2015-01-30',1),(59,'systemLog','sys_role_menu','角色菜单授权','9',NULL,NULL,NULL,NULL,'2015-01-30',1),(60,'systemLog','tb_folder','目录管理','10',NULL,NULL,NULL,NULL,'2015-01-30',1),(61,'systemLog','tb_article','文章管理','11',NULL,NULL,NULL,NULL,'2015-01-30',1),(62,'systemLog','tb_articlelike','喜欢的文章管理','12',NULL,NULL,NULL,NULL,'2015-01-30',1),(63,'systemLog','tb_comment','评论管理','13',NULL,NULL,NULL,NULL,'2015-01-30',1),(64,'systemLog','tb_tags','标签管理','14',NULL,NULL,NULL,NULL,'2015-01-30',1),(65,'systemLog','tb_contact','联系人','15',NULL,NULL,NULL,NULL,'2015-01-30',1),(66,'systemLog','tb_error','错误管理','16',NULL,NULL,NULL,NULL,'2015-01-30',1),(67,'systemLog','tb_friendlylink','友情链接','17',NULL,NULL,NULL,NULL,'2015-01-30',1),(68,'systemLog','tb_pageview','访问量统计','18',NULL,NULL,NULL,NULL,'2015-01-30',1),(101,'systemParam','门头沟信息网','1','1',NULL,NULL,NULL,NULL,'2015-01-30',1),(102,'materialType','文章','1','1',NULL,NULL,NULL,NULL,'2016-03-31 22:35:05',1),(103,'materialType','图片','2','2',NULL,NULL,NULL,NULL,'2016-03-31 22:35:17',1),(104,'materialType','视频','3','3',NULL,NULL,NULL,NULL,'2016-03-31 22:35:28',1),(105,'materialType','其他','9','9',NULL,NULL,NULL,NULL,'2016-03-31 22:35:39',1),(106,'materialType','栏目','6','6',NULL,NULL,NULL,NULL,'2016-03-31 23:46:27',1),(107,'systemLog','tb_site','站点管理','19',NULL,NULL,NULL,NULL,'2016-04-14 00:02:45',1);
/*!40000 ALTER TABLE `sys_dict_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL auto_increment,
  `log_type` int(11) NOT NULL COMMENT '类型',
  `oper_object` varchar(64) default NULL COMMENT '操作对象',
  `oper_table` varchar(64) NOT NULL COMMENT '操作表',
  `oper_id` int(11) default '0' COMMENT '操作主键',
  `oper_type` varchar(64) default NULL COMMENT '操作类型',
  `oper_remark` varchar(100) default NULL COMMENT '操作备注',
  `create_time` varchar(64) NOT NULL COMMENT '创建时间',
  `create_id` int(11) default '0' COMMENT '创建者',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,1,'访问量统计','tb_pageview',111,'添加','','2017-05-08 14:23:28',0),(2,2,'用户管理','sys_user',1,'登入','','2017-05-08 14:26:43',1),(3,1,NULL,'tb_pageview',112,'添加','','2017-05-08 15:47:39',0),(4,1,NULL,'tb_pageview',113,'添加','','2017-05-08 15:49:18',0),(5,1,NULL,'tb_pageview',114,'添加','','2017-05-08 16:00:51',0),(6,1,NULL,'tb_pageview',115,'添加','','2017-05-08 16:23:17',0),(7,1,NULL,'tb_pageview',116,'添加','','2017-05-08 16:52:22',0),(8,2,NULL,'sys_user',1,'登入','','2017-05-08 17:24:33',1),(9,2,NULL,'sys_user',1,'登入','','2017-05-08 17:54:16',1),(10,2,NULL,'sys_user',1,'登入','','2017-05-08 17:55:14',1),(11,1,NULL,'sys_menu',21,'更新','','2017-05-08 18:08:31',1),(12,2,NULL,'sys_user',1,'登出','','2017-05-08 18:08:41',1),(13,2,NULL,'sys_user',1,'登入','','2017-05-08 18:08:55',1),(14,1,NULL,'sys_menu',18,'删除','','2017-05-08 18:11:35',1),(15,1,NULL,'sys_menu',8,'删除','','2017-05-08 18:11:43',1),(16,1,NULL,'sys_menu',16,'删除','','2017-05-08 18:11:52',1),(17,1,NULL,'sys_menu',17,'删除','','2017-05-08 18:11:56',1),(18,1,NULL,'sys_menu',9,'删除','','2017-05-08 18:12:00',1),(19,1,NULL,'sys_menu',29,'删除','','2017-05-08 18:12:05',1),(20,1,NULL,'sys_menu',25,'删除','','2017-05-08 18:12:09',1),(21,1,NULL,'sys_menu',22,'删除','','2017-05-08 18:12:13',1),(22,1,NULL,'sys_menu',24,'删除','','2017-05-08 18:12:17',1),(23,1,NULL,'sys_menu',23,'删除','','2017-05-08 18:12:21',1),(24,1,NULL,'sys_menu',26,'删除','','2017-05-08 18:12:25',1),(25,1,NULL,'sys_menu',27,'删除','','2017-05-08 18:12:28',1),(26,1,NULL,'sys_menu',19,'删除','','2017-05-08 18:12:32',1),(27,1,NULL,'sys_menu',12,'删除','','2017-05-08 18:12:35',1),(28,1,NULL,'sys_menu',15,'删除','','2017-05-08 18:12:38',1),(29,1,NULL,'sys_menu',20,'删除','','2017-05-08 18:12:42',1),(30,1,NULL,'sys_menu',30,'删除','','2017-05-08 18:12:54',1),(31,1,NULL,'sys_menu',13,'删除','','2017-05-08 18:12:58',1),(32,1,NULL,'sys_menu',10,'删除','','2017-05-08 18:13:01',1),(33,1,NULL,'sys_menu',11,'删除','','2017-05-08 18:13:04',1),(34,1,NULL,'sys_menu',7,'删除','','2017-05-08 18:13:08',1),(35,1,NULL,'sys_menu',28,'删除','','2017-05-08 18:13:16',1),(36,1,NULL,'sys_menu',28,'删除','','2017-05-08 18:13:25',1),(37,2,NULL,'sys_user',1,'登出','','2017-05-08 18:13:30',1),(38,2,NULL,'sys_user',1,'登入','','2017-05-08 18:13:46',1),(39,2,NULL,'sys_user',1,'登出','','2017-05-08 18:32:46',1),(40,2,NULL,'sys_user',1,'登入','','2017-05-08 18:33:30',1),(41,1,NULL,'sys_menu',31,'删除','','2017-05-08 18:39:38',1),(42,2,NULL,'sys_user',1,'登出','','2017-05-08 18:39:52',1),(43,2,NULL,'sys_user',1,'登入','','2017-05-08 18:40:03',1),(44,2,NULL,'sys_user',1,'登入','','2017-05-09 09:28:39',1),(45,2,NULL,'sys_user',1,'登入','','2017-05-09 11:26:06',1),(46,2,NULL,'sys_user',1,'登入','','2017-06-15 12:03:46',1),(47,1,NULL,'sys_department',9,'添加','','2017-06-15 12:41:11',1),(48,1,NULL,'sys_menu',22,'添加','','2017-06-15 15:20:49',1),(49,1,NULL,'sys_role_menu',1,'添加','','2017-06-15 15:21:06',1),(50,1,NULL,'sys_role_menu',2,'添加','','2017-06-15 15:21:06',1),(51,1,NULL,'sys_role_menu',3,'添加','','2017-06-15 15:21:06',1),(52,1,NULL,'sys_role_menu',4,'添加','','2017-06-15 15:21:06',1),(53,1,NULL,'sys_role_menu',5,'添加','','2017-06-15 15:21:06',1),(54,1,NULL,'sys_role_menu',6,'添加','','2017-06-15 15:21:06',1),(55,1,NULL,'sys_role_menu',7,'添加','','2017-06-15 15:21:07',1),(56,1,NULL,'sys_role_menu',8,'添加','','2017-06-15 15:21:07',1),(57,1,NULL,'sys_role_menu',9,'添加','','2017-06-15 15:21:07',1),(58,2,NULL,'sys_user',1,'登出','','2017-06-15 15:21:14',1),(59,2,NULL,'sys_user',1,'登入','','2017-06-15 15:21:25',1),(60,2,NULL,'sys_user',1,'登出','','2017-06-15 15:23:57',1),(61,2,NULL,'sys_user',1,'登入','','2017-06-15 15:24:05',1),(62,1,NULL,'sys_menu',23,'添加','','2017-06-16 09:18:04',1),(63,2,NULL,'sys_user',1,'登出','','2017-06-16 09:18:10',1),(64,2,NULL,'sys_user',1,'登入','','2017-06-16 09:18:21',1),(65,1,NULL,'article_class',2,'添加','','2017-06-16 09:52:41',1),(66,1,NULL,'article_class',1,'更新','','2017-06-16 09:54:08',1),(67,1,NULL,'article_class',1,'更新','','2017-06-16 09:54:13',1),(68,1,NULL,'article_class',2,'删除','','2017-06-16 10:19:19',0),(69,1,NULL,'sys_menu',23,'更新','','2017-06-16 10:47:32',1),(70,2,NULL,'sys_user',1,'登出','','2017-06-16 10:47:38',1),(71,2,NULL,'sys_user',1,'登入','','2017-06-16 10:47:49',1),(72,1,NULL,'sys_menu',23,'更新','','2017-06-16 13:18:13',1),(73,1,NULL,'sys_menu',23,'更新','','2017-06-16 13:18:50',1),(74,1,NULL,'sys_menu',24,'添加','','2017-06-16 13:20:08',1),(75,1,NULL,'sys_menu',25,'添加','','2017-06-16 13:20:53',1),(76,2,NULL,'sys_user',1,'登出','','2017-06-16 13:21:00',1),(77,2,NULL,'sys_user',1,'登入','','2017-06-16 13:21:10',1),(78,2,NULL,'sys_user',1,'登入','','2017-06-16 16:28:09',1),(79,1,NULL,'article',2,'添加','','2017-06-16 19:54:05',1),(80,1,NULL,'article',3,'添加','','2017-06-16 20:40:07',1),(81,1,NULL,'sys_menu',22,'删除','','2017-06-16 20:44:34',1),(82,2,NULL,'sys_user',1,'登出','','2017-06-16 20:44:37',1),(83,2,NULL,'sys_user',1,'登入','','2017-06-16 20:44:46',1),(84,1,NULL,'sys_menu',25,'更新','','2017-06-16 20:45:43',1),(85,2,NULL,'sys_user',1,'登出','','2017-06-16 20:45:46',1),(86,2,NULL,'sys_user',1,'登入','','2017-06-16 20:45:54',1),(87,1,NULL,'sys_menu',23,'更新','','2017-06-16 20:46:23',1),(88,1,NULL,'sys_menu',25,'更新','','2017-06-16 20:46:32',1),(89,1,NULL,'sys_menu',24,'更新','','2017-06-16 20:46:41',1),(90,2,NULL,'sys_user',1,'登出','','2017-06-16 20:46:44',1),(91,2,NULL,'sys_user',1,'登入','','2017-06-16 20:46:52',1),(92,1,NULL,'article',3,'更新','','2017-06-16 20:47:08',1),(93,1,NULL,'article',3,'更新','','2017-06-16 20:47:14',1),(94,1,NULL,'article',3,'删除','','2017-06-16 20:56:07',1),(95,1,NULL,'article',3,'删除','','2017-06-16 20:59:50',1),(96,1,NULL,'article',3,'删除','','2017-06-16 21:00:26',1),(97,1,NULL,'sys_menu',24,'更新','','2017-06-16 21:02:14',1),(98,2,NULL,'sys_user',1,'登出','','2017-06-16 21:02:18',1),(99,2,NULL,'sys_user',1,'登入','','2017-06-16 21:02:25',1),(100,1,NULL,'article_class',2,'添加','','2017-06-16 21:02:35',1),(101,1,NULL,'article',4,'添加','','2017-06-16 21:02:58',1);
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `parentid` int(11) NOT NULL default '0' COMMENT '父id',
  `name` varchar(200) NOT NULL default '' COMMENT '名称/11111',
  `urlkey` varchar(256) default NULL COMMENT '菜单key',
  `url` varchar(256) default NULL COMMENT '链接地址',
  `status` int(11) default '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `type` int(11) default '1' COMMENT '类型//select/1,根目录,2,a标签,3,a标签_blank,4,外部url',
  `sort` int(11) default '1' COMMENT '排序',
  `level` int(11) default '1' COMMENT '级别',
  `create_time` varchar(64) default NULL COMMENT '创建时间',
  `create_id` int(11) default '0' COMMENT '创建者',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,0,'系统管理','system_root',NULL,1,1,90,1,'2015-04-27 17:28:06',1),(2,1,'组织机构','department','system/department',1,1,91,2,'2015-04-27 17:28:25',1),(3,1,'用户管理','user','system/user',1,1,92,2,'2015-04-27 17:28:46',1),(4,1,'角色管理','role','system/role',1,1,94,2,'2015-04-27 17:29:13',1),(5,1,'菜单管理','menu','system/menu',1,1,96,2,'2015-04-27 17:29:43',1),(6,1,'数据字典','dict','system/dict',1,1,97,2,'2015-04-27 17:30:05',1),(14,1,'日志管理','log','system/log/list',1,1,98,2,'2016-01-03 18:09:18',1),(21,0,'首页','home','home',1,1,2,1,'2015-04-27 17:28:06',1),(23,0,'文章管理','article',NULL,1,1,100,1,'2017-06-16 09:18:04',1),(24,23,'文章分类','articleClass','article/articleClass',1,1,102,2,'2017-06-16 13:20:08',1),(25,23,'文章管理','Article','/Article',1,1,101,2,'2017-06-16 13:20:53',1);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `name` varchar(200) NOT NULL default '' COMMENT '名称/11111/',
  `status` int(11) default '1' COMMENT '状态//radio/2,隐藏,1,显示',
  `sort` int(11) default '1' COMMENT '排序',
  `remark` text COMMENT '说明//textarea',
  `create_time` varchar(64) default NULL COMMENT '创建时间',
  `create_id` int(11) default '0' COMMENT '创建者',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'测试角色',1,1,NULL,'2016-03-31 23:41:59',1);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `roleid` int(11) NOT NULL COMMENT '角色id',
  `menuid` int(11) NOT NULL COMMENT '菜单id',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (1,1,21),(2,1,22),(3,1,1),(4,1,2),(5,1,3),(6,1,4),(7,1,5),(8,1,6),(9,1,14);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `userid` int(11) NOT NULL auto_increment COMMENT '主键',
  `username` varchar(32) NOT NULL COMMENT '用户名/11111',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `realname` varchar(32) default NULL COMMENT '真实姓名',
  `departid` int(11) default '0' COMMENT '部门/11111/dict',
  `usertype` int(11) default '2' COMMENT '类型//select/1,管理员,2,普通用户,3,前台用户,4,第三方用户,5,API用户',
  `state` int(11) default '10' COMMENT '状态',
  `thirdid` varchar(200) default NULL COMMENT '第三方ID',
  `endtime` varchar(32) default NULL COMMENT '结束时间',
  `email` varchar(64) default NULL COMMENT 'email',
  `tel` varchar(32) default NULL COMMENT '手机号',
  `address` varchar(32) default NULL COMMENT '地址',
  `title_url` varchar(200) default NULL COMMENT '头像地址',
  `remark` varchar(1000) default NULL COMMENT '说明',
  `theme` varchar(64) default 'default' COMMENT '主题',
  `back_site_id` int(11) default '0' COMMENT '后台选择站点ID',
  `create_site_id` int(11) default '1' COMMENT '创建站点ID',
  `create_time` varchar(64) default NULL COMMENT '创建时间',
  `create_id` int(11) default '0' COMMENT '创建者',
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','EY3JNDE7nu8=','系统管理员',1,1,10,NULL,NULL,'zcool321@sina.com','123',NULL,NULL,'时间是最好的老师，但遗憾的是——最后他把所有的学生都弄死了','flat',5,1,'2016-06-06 06:06:06',1),(2,'testapi','EY3JNDE7nu8=','api测试',1,5,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default',0,1,'2017-03-19 20:41:25',1),(3,'test2','EY3JNDE7nu8=','测试',2,2,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'flat',0,1,'2017-05-08 18:10:16',1);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `userid` int(11) NOT NULL COMMENT '用户id',
  `roleid` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-16 21:12:49
