-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add user',2,'add_user'),(5,'Can change user',2,'change_user'),(6,'Can delete user',2,'delete_user'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add permission',4,'add_permission'),(11,'Can change permission',4,'change_permission'),(12,'Can delete permission',4,'delete_permission'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add page',7,'add_page'),(20,'Can change page',7,'change_page'),(21,'Can delete page',7,'delete_page'),(22,'Can add category',8,'add_category'),(23,'Can change category',8,'change_category'),(24,'Can delete category',8,'delete_category'),(31,'Can add registration profile',11,'add_registrationprofile'),(32,'Can change registration profile',11,'change_registrationprofile'),(33,'Can delete registration profile',11,'delete_registrationprofile'),(37,'Can add new user',13,'add_newuser'),(38,'Can change new user',13,'change_newuser'),(39,'Can delete new user',13,'delete_newuser'),(40,'Can add comment',14,'add_comment'),(41,'Can change comment',14,'change_comment'),(42,'Can delete comment',14,'delete_comment'),(43,'Can add 主题',15,'add_theme'),(44,'Can change 主题',15,'change_theme'),(45,'Can delete 主题',15,'delete_theme');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$2AUNhK66PeiS$mAIBJomA1yoIePt0Fp6Tw/D02fEKsN8+hsNRJOmORLE=','2017-10-22 16:54:50.138318',1,'haha','','','1226184067@qq.com',1,1,'2017-03-18 09:33:32.208683');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_category`
--

DROP TABLE IF EXISTS `blogs_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_category`
--

LOCK TABLES `blogs_category` WRITE;
/*!40000 ALTER TABLE `blogs_category` DISABLE KEYS */;
INSERT INTO `blogs_category` VALUES (2,'Django'),(3,'JavaScript'),(4,'Python'),(1,'生活');
/*!40000 ALTER TABLE `blogs_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_comment`
--

DROP TABLE IF EXISTS `blogs_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `page_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id` (`page_id`),
  KEY `blogs_comment_user_id_e0b0b977_fk_blogs_newuser_id` (`user_id`),
  CONSTRAINT `blogs_comment_page_id_45c0be20_fk_blogs_page_id` FOREIGN KEY (`page_id`) REFERENCES `blogs_page` (`id`),
  CONSTRAINT `blogs_comment_user_id_e0b0b977_fk_blogs_newuser_id` FOREIGN KEY (`user_id`) REFERENCES `blogs_newuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_comment`
--

LOCK TABLES `blogs_comment` WRITE;
/*!40000 ALTER TABLE `blogs_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_newuser`
--

DROP TABLE IF EXISTS `blogs_newuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs_newuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `blogs_newuser_user_id_0ffec3e0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_newuser`
--

LOCK TABLES `blogs_newuser` WRITE;
/*!40000 ALTER TABLE `blogs_newuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs_newuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_page`
--

DROP TABLE IF EXISTS `blogs_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `views` int(11) NOT NULL,
  `context` longtext NOT NULL,
  `picture` varchar(100) NOT NULL,
  `time` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_page_category_id_c984c343_fk_blogs_category_id` (`category_id`),
  CONSTRAINT `blogs_page_category_id_c984c343_fk_blogs_category_id` FOREIGN KEY (`category_id`) REFERENCES `blogs_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_page`
--

LOCK TABLES `blogs_page` WRITE;
/*!40000 ALTER TABLE `blogs_page` DISABLE KEYS */;
INSERT INTO `blogs_page` VALUES (2,'一起走过的那些日子',23,'2015年1月13日，我们在一起了！！！！！！！！！！！！转眼间两年零两个多月了，时间过得真快！感谢傻逼逼的一直包容，虽然我不好，但是我希望可以把最好的自己给你。现在我知道了，看到别人好的，羡慕别人的，可终究是自己的最好，还是傻逼的你最好！！！感觉以后的路可能会很难，但是希望你一直在我身边，不离不弃！！！想和你说：傻逼垯，I  Love  You  Forever  !   !  ！','profile_images/u787855418285029354fm23gp0.jpg','2017-03-18 12:05:38.763834',1),(3,'Django admin使用kindeditor富文本编辑器',27,'<p>\r\n	<strong><span style=\"font-size:14px;\">最近没事干，准备改进下Blog的功能，以下就是Django是用kindeditor富文本编辑器的过程<br />\r\n</span></strong> \r\n</p>\r\n<p>\r\n	<strong><span style=\"font-size:14px;\">下载</span></strong><a href=\"http://kindeditor.net/down.php\" target=\"_blank\"><u><strong><span style=\"font-size:14px;\">kindeditor</span></strong></u></a> \r\n</p>\r\n<p>\r\n	解压到你的项目的静态文件目录，如blog\\static\\js\\editor\\kindeditor-4.1.1，在这目录下创建config.js\r\n</p>\r\n<pre class=\"prettyprint linenums lang-js\">//blog\\static\\js\\editor\\kindeditor-4.1.1\\config.js\r\nKindEditor.ready(function(K) {\r\n    window.editor = K.create(\'textarea[name=\"context\"]\',{\r\n        //name属性是对应文章\r\n    	uploadJson: \'/index/uploadImg/\',  //上传图片使用的view函数\r\n        // 指定大小\r\n        width:\'800px\',\r\n        height:\'200px\',\r\n\r\n    });\r\n}); </pre>\r\n<p>\r\n	<span style=\"font-size:14px;\"><strong>修改admin</strong></span> \r\n</p>\r\n<pre class=\"prettyprint linenums lang-py\">#admin.py\r\nclass PageAdmin(admin.ModelAdmin):\r\n	list_display =(\'title\',)\r\n\r\n	class Media:\r\n		js =(\r\n	    \'js/editor/kindeditor-4.1.1/kindeditor-min.js\',\r\n            \'js/editor/kindeditor-4.1.1/lang/zh_CN.js\',\r\n            \'js/editor/kindeditor-4.1.1/config.js\',\r\n        ) </pre>\r\n<p>\r\n	Media类是用来来关联对应的js，这样kingeitor就已经可以使用了\r\n</p>\r\n<p>\r\n	<img src=\"/static/images/img2017-04-05-114332.jpg\" alt=\"\" width=\"529\" height=\"118\" /> \r\n</p>\r\n<h2>\r\n	实现添加图片功能<br />\r\n</h2>\r\n<p>\r\n	<span style=\"font-size:14px;\"><strong>增加对应的url</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><strong></strong></span> \r\n</p>\r\n<pre class=\"prettyprint linenums lang-py\">#blog/blogs/urls.py\r\nrlpatterns = [\r\n    url(r\'^uploadImg/$\',views.uploadImg,name=\'uploadImg\'), #这里对应上面config.js的uploadJson\r\n]</pre>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong><span style=\"font-size:14px;\">增加view函数</span></strong> \r\n</p>\r\n<pre class=\"prettyprint linenums lang-py\">#blog/blogs/views.py\r\nimport os\r\nimport time\r\nimport json\r\ndef mkdir(path): 		 #路径初始化，如果没有存放地点就新建\r\n	path = path.strip()\r\n	path = path.rstrip(\"\\\\\")\r\n	if not os.path.exists(path):\r\n		os.makedirs(path)\r\n	return path\r\n\r\ndef save_file(path, file_name, data):	#把data保存path/file_name文件中\r\n	if data == None:\r\n		return\r\n	mkdir(path)\r\n	if(not path.endswith(\"/\")):\r\n		 path=path+\"/\"\r\n	file = open(path+file_name,\"wb\") \r\n	file.write(data)\r\n	file.flush()\r\n\r\n@csrf_exempt        #取消csrf验证\r\ndef uploadImg(request):\r\n	if request.method == \'POST\':\r\n		buf = request.FILES.get(\'imgFile\',None)                                    #获取的图片文件                                          \r\n		file_buff = buf.read()                                                 #获取图片内容\r\n		time_format=str(time.strftime(\"%Y-%m-%d-%H%M%S\",time.localtime()))     \r\n		file_name = \"img\"+time_format+\".jpg\"                                    #img2016-02-13-072459.jpg                                \r\n		save_file(\"static/images\", file_name,file_buff)                     #blog/static/images/img2016-02-13-072459.jpg                 \r\n		dict_tmp = {}                                                           #kindeditor定义了返回的方式是json，\r\n		dict_tmp[\'error\']=0                                                     #成功{ \"error\":0, \"url\": \"/static/image/filename\"}\r\n		dict_tmp[\'url\']=\"/static/images/\"+file_name\r\n		return HttpResponse(json.dumps(dict_tmp))</pre>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	这里就是实现图片的上传功能，然后就可以愉快的添加图片了，就这样了bye~~\r\n</p>','profile_images/timg_xIaBDzq.jpg','2017-04-05 03:28:15.770081',2),(4,'Django设置template的全局变量',12,'<p>\r\n	<strong>相信许多Web开发有那么一个需求，需要在所有的页面上面显示同样的后台数据。</strong> \r\n</p>\r\n<p>\r\n	<strong>在views里一次次读取这个数据然后输出出来，这样做并不简洁而且十分蛋疼，这个时候我们就需要把这些数据保存成全局变量的形式让他可以轻松渲染到每一个页面。</strong><span></span> \r\n</p>\r\n<pre class=\"prettyprint linenums lang-py\">#settings.py\r\nTEMPLATES = [\r\n    {\r\n        \'BACKEND\': \'django.template.backends.django.DjangoTemplates\',\r\n        \'DIRS\': [TEMPLATE_PATH,],\r\n        \'APP_DIRS\': True,\r\n        \'OPTIONS\': {\r\n            \'context_processors\': [\r\n                \'django.template.context_processors.debug\',\r\n                \'django.template.context_processors.request\',\r\n                \'django.contrib.auth.context_processors.auth\',\r\n                \'django.contrib.messages.context_processors.messages\',\r\n                \'global_variable.settings\',            //我们的全局变量加在这\r\n            ],\r\n        },\r\n    },\r\n]</pre>\r\n<span></span> \r\n<p>\r\n	在settings.py中<strong>TEMPLATES.OPTIONS.context_processors</strong>是用来配置全局变量的，在这里加上我们的全局变量global_variable\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<hr />\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	然后创建自己的全局变量global_variable.py，放在<strong>BASE_DIR</strong>这里，也就是blog/global_variable.py\r\n</p>\r\n<pre class=\"prettyprint linenums lang-js\">from blogs.models import Category\r\n\r\ndef settings(request):\r\n	context ={}\r\n	cat = Category.objects.all()\r\n	context[\'category\'] = cat\r\n	return context\r\n</pre>\r\n<p>\r\n	<span>这里配置好我们的全局变量，就可以直接在任意一个页面中使用了。使用直接用标签语句引用就可以了，如{% for cat in category %}。就这样bye了个bye~~</span> \r\n</p>','profile_images/timg_RNd7Jgk_0oP9W4b.jpg','2017-04-11 13:38:21.761305',2),(5,'Django-suit 优化下admin界面',26,'<p>\r\n	<strong>颓废了几天又回来瞎几把搞了，这次是目的是优化下admin的界面，自带的admin界面太尼玛抽了，该换下口味了。。。</strong> \r\n</p>\r\n<p>\r\n	<strong><img src=\"/static/images/img2017-04-21-122841.jpg\" alt=\"\" width=\"765\" height=\"247\" /><br />\r\n</strong> \r\n</p>\r\n<p>\r\n	安装Django-suit，直接用pip安装就好了\r\n</p>\r\n<pre class=\"prettyprint linenums lang-py\">pip install dajngo-suit</pre>\r\n<p>\r\n	然后配置settings.py\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint linenums lang-py\">#settings.py\r\nINSTALLED_APPS = [\r\n    \'suit\',               #这里是新加的\r\n    \'django.contrib.admin\',\r\n    \'django.contrib.auth\',\r\n    \'django.contrib.contenttypes\',\r\n    \'django.contrib.sessions\',\r\n    \'django.contrib.messages\',\r\n    \'django.contrib.staticfiles\',\r\n    \'blogs\',\r\n    \'registration\'，\r\n]</pre>\r\n‘suit‘必须放在‘django.contrib.admin\'的前面不然不会生效\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	然后配置suit页面\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint linenums lang-js\">ANGUAGE_CODE = \'zh-hans\'   #语言肯定中文啦\r\n\r\nTIME_ZONE = \'Asia/Shanghai\'    #只是时区\r\n\r\nUSE_I18N = True\r\n\r\nUSE_L10N = False        \r\n\r\nUSE_TZ = False\r\n\r\nDATETIME_FORMAT = \'Y-m-d H:i:s\'    #修改下显示时间的格式\r\n\r\nDATE_FORMAT = \'Y-m-d\'\r\n\r\nSUIT_CONFIG = {  # suit页面配置\r\n    \'ADMIN_NAME\': \'后台管理\',         #登录界面提示\r\n    \'LIST_PER_PAGE\': 20,\r\n    \'MENU\': ({\'label\': u\'文章管理\',\r\n              \'app\': \'blogs\', \r\n&nbsp;            \'models\': (\'blogs.Category\', \'blogs.Page\', \'blogs.Theme\')},  #每一个字典表示左侧菜单的一栏\r\n            \r\n             ),\r\n    }</pre>\r\n这里的‘app‘对应的是你上边的app，‘models’就是你想要在侧边栏显示菜单，就是这样\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/static/images/img2017-04-21-122825.jpg\" alt=\"\" width=\"265\" height=\"231\" /> \r\n</p>\r\n<p>\r\n	这样基本就完成了。。\r\n</p>\r\n<p>\r\n	还可以在admin.py添加一些新功能\r\n</p>\r\n<pre class=\"prettyprint linenums lang-py\">#admin.py\r\nclass PageAdmin(admin.ModelAdmin):\r\n	list_display =(\'title\',\'category\',\'views\',\'time\')\r\n	search_fields = (\'title\',\'views\',\'category__name\')   #搜素框\r\n	list_filter = (\'title\', \'category__name\')    #过滤框\r\n</pre>\r\n<p>\r\n	&nbsp;这里的search_fields中必须写字段，如果是ForeignKey,OneToOne,要<strong>表名__字段名</strong>，list_filter也是同理。效果如下：\r\n</p>\r\n<p>\r\n	<img src=\"/static/images/img2017-04-21-124209.jpg\" alt=\"\" />\r\n</p>\r\n<p>\r\n	如果项目已经部署，那么就要搜集下admin静态文件\r\n</p>\r\n<p>\r\n<pre class=\"prettyprint linenums lang-py\">python manage.py collectstatic</pre>\r\n然后就可以愉快的用上新界面了。\r\n</p>\r\n<p>\r\n	<strong>Django admin还有许多强大的功能暂时还没有学到，以后学到了再更新，bye~~~</strong>\r\n</p>','profile_images/22974421_1373009823261.jpg','2017-04-21 12:49:26.773929',2),(6,'多文件上传',20,'<p>\r\n	<strong>最近没是干又来更新久违的博客，这次更新个内容</strong> \r\n</p>\r\n<p>\r\n	<strong>关于多文件上传功能，看起来很高大上的样子<img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/44.gif\" alt=\"\" border=\"0\" /><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/44.gif\" alt=\"\" border=\"0\" /><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/44.gif\" alt=\"\" border=\"0\" /><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/44.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/44.gif\" alt=\"\" border=\"0\" /><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/44.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/44.gif\" alt=\"\" border=\"0\" /><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/44.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/44.gif\" alt=\"\" border=\"0\" /><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/44.gif\" alt=\"\" border=\"0\" /><br />\r\n</strong></strong> \r\n</p>\r\n<p>\r\n	<strong><strong>那现在开始吧</strong></strong> \r\n</p>\r\n<p>\r\n	<span></span><strong>首先我们先要有个上传按钮吧</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint linenums lang-html\">&lt;input id = \'upfile\' type=\"file\" name=\"myfiles\" multiple=\"\"&gt;     &lt;!--这是个上传按钮，multiple属性是多文件的意思--&gt;\r\n&lt;div id=\"FileArea\"&gt;&lt;/div&gt;           &lt;!--这个用来显示上传的文件名称--&gt;\r\n&lt;input type=\"button\" class=\"btn btn-primary\" id= \"uploadfile\" style=\"width:60px;height:27px;padding-top:3px;\"value=\"上传\"&gt;\r\n&lt;input type=\"text\"  id=\'dir\' name = \'dir\' style=\"display:none\" /&gt;       &lt;!--这个是用来返回文件上传后的路径--&gt;</pre>\r\n<strong></strong> \r\n<p>\r\n	<strong>有按钮和容器，那就开始上传的具体代码，使用了javascript代码</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint linenums lang-js\">var curFiles = [];\r\n    $(\"#upfile\").on(\"change\", function () {\r\n        var $this = $(this),    //获取上传的文件流，里面是不可操作的\r\n        files = this.files;\r\n        var obj = document.getElementById(\"upfile\");\r\n        var length = obj.files.length;\r\n        curFiles = [];\r\n        Array.prototype.push.apply(curFiles,files);  //把上传的文件流和空列表合并，就可以操作里面的数据\r\n        $(\"#FileArea\").empty();  //清空显示文件名的容器，下面是显示每个文件的<span></span> for (var i = 0; i &lt; length; i++) {\r\n            var temp = obj.files[i].name;\r\n            var button=document.createElement(\"p\");\r\n            button.id = \'del\';\r\n            button.innerHTML = temp;\r\n            button.className=\"btn btn-primary\"; \r\n            button.style=\"background-color:#D9534F;border-color:white\";\r\n            $(\"#FileArea\").append(button);\r\n        } \r\n        $(\"#upfile\").val(\"\")\r\n&nbsp;       //下面是对需要上传文件的操作，可以删除不要的文件\r\n       &nbsp;$(\"p\").on(\"click\",function(){\r\n            var name = $(this).text();\r\n            var r=confirm(\"是否移除\")\r\n            if(r==true){\r\n               $(this).remove();\r\n            }\r\n            else{\r\n                return false;\r\n            }\r\n            curFiles = curFiles.filter(function(file) {\r\n            return file.name !== name;})\r\n      });\r\n});\r\n   //下面开始上传的工作，主要用了AJAX\r\n  &nbsp;$(\"#uploadfile\").on(\"click\",function(){\r\n          if(curFiles==\"\"){\r\n            alert(\"没有文件可以上传哦\");\r\n          }\r\n          else{\r\n                  var fd = new FormData($(\'#form\')[0]);     //这里用到的FormData是获取HTML代码中的FORM里面的所有参数\r\n                  for (var i = 0, j = curFiles.length; i &lt; j; ++i) {\r\n                  fd.append(\'myFileTest[]\', curFiles[i]);   //循环把需要的上传的文件都添加到form里\r\n                  }\r\n                  $.ajax({\r\n                  url: \'{% url \"upload_files\" %}\',\r\n                  type: \'post\',\r\n                  data: fd,\r\n                  processData: false,\r\n                  contentType: false,\r\n                  success: function (returndata) { \r\n                  alert(\"上传成功！！\"); \r\n                  $(\"#dir\").val(returndata);\r\n        },  \r\n                  error: function (returndata) { ;\r\n                  alert(\"上传失败！！\"); \r\n          }\r\n                        });\r\n                        \r\n                    }\r\n        });\r\n</pre>\r\n<p>\r\n	<strong>代码有点长，自己慢慢看吧。。。。。</strong> \r\n</p>\r\n<p>\r\n	<strong>前端的代码基本就这样，那么剩下就后台的代码了</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint linenums lang-py\">import os\r\nimport zipfile\r\nimport random\r\nimport shutil\r\nfrom django.http import HttpResponse \r\n#多文件上传\r\ndef uploadfiles(files):\r\n    random_number = str(random.randint(0,10000))        #文件夹随机命名\r\n    file_path = \"static/file\" + time.strftime(\'/%Y/%m/%d/\') + random_number\r\n    zip_name = file_path+\'.zip\'\r\n\r\n    if not os.path.exists(zip_name):\r\n        os.makedirs(file_path)\r\n    else:\r\n        while True:            \r\n            file_path = \"static/file\" + time.strftime(\'/%Y/%m/%d/\') + random_number\r\n            zip_name = file_path+\'.zip\'\r\n            if not os.path.exists(zip_name):\r\n                os.makedirs(file_path)\r\n                break\r\n    for f in files: \r\n        handle_uploaded_file(f,file_path)\r\n    #打包\r\n    zip_name = file_path+\'.zip\'\r\n    f = zipfile.ZipFile(zip_name,\'w\',zipfile.ZIP_DEFLATED)\r\n    for dirpath, dirnames, filenames in os.walk(file_path):\r\n        for filename in filenames:\r\n            f.write(os.path.join(dirpath,filename),filename)\r\n    f.close() \r\n    return zip_name\r\n\r\n#文件写入\r\ndef handle_uploaded_file(f,file_path):\r\n    file_name = \"\"\r\n    file_path +=\'/\'\r\n    try:\r\n        file_name = file_path + f.name\r\n        f_obj = open(file_name, \'wb+\')\r\n        for chunk in f.chunks():\r\n            f_obj.write(chunk)\r\n        f_obj.close()\r\n    except Exception, e:\r\n        print e\r\n \r\ndef upload(request):\r\n    if request.is_ajax():\r\n        files = request.FILES.getlist(\'myFileTest[]\')    #这里只拿回上传的文件\r\n        try:\r\n            old_dir = request.POST.get(\'dir\')        #下面是删除旧的文件\r\n            if old_dir:\r\n                os.remove(old_dir)\r\n                shutil.rmtree(old_dir[:-4])     #这里的写法需要修正下囖，应该用os.path.splitext(old_dir)[0]来拿路径的名称\r\n        except Exception as e:\r\n            pass\r\n        zip_dir = uploadfiles(files)\r\n        return HttpResponse(zip_dir) \r\n</pre>\r\n<p>\r\n	<strong>import那里如果有遗漏就自己加吧，老年人记不了那么多。。。。</strong> \r\n</p>\r\n<p>\r\n	<strong>嗯～～这样基本就没问题了，多文件上传其实也蛮简单的，下次更新个在线预览WORD吧，bye了个bye～～～～ </strong> \r\n</p>','profile_images/67ef3d6d55fbb2fb77b7a89d4f4a20a44723dca6.jpg','2017-09-14 10:29:14.166375',2),(7,'在线预览WORD功能',8,'<p>\r\n	<strong>这次我们来完成预览WORD的操作吧<strong></strong><br />\r\n</strong> \r\n</p>\r\n<p>\r\n	<strong>这次针对的对象为linux系统的用户，至于WINDOWS系统嘛～～就算了<strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/28.gif\" alt=\"\" border=\"0\" /><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/28.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/28.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/28.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/28.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/28.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/28.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/28.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/28.gif\" alt=\"\" border=\"0\" /></strong></strong></strong> \r\n</p>\r\n<p>\r\n	<strong>讲下思路吧，在线预览word嘛～～我就是把word直接转为PDF，然后直接打开PDF,是不是很简单<strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/44.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/44.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/44.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/44.gif\" alt=\"\" border=\"0\" /></strong><br />\r\n</strong> \r\n</p>\r\n<p>\r\n	<strong>那么所用到插件吧，linux使用到unoconv的插件，在系统里还必须有</strong><strong>LibreOffice</strong> \r\n</p>\r\n<p>\r\n	<strong>而WINDOWS的话也有个python包，叫win32，是调用OFFICE的。具体做法网上一大片教程，你们自己加油吧，反正我试过能用就是了。</strong> \r\n</p>\r\n<p>\r\n	<strong><br />\r\n</strong> \r\n</p>\r\n<p>\r\n	<strong>那么我们现在开始吧～～～～～</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint linenums\">sudo apt-get install unoconv</pre>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>这是在ubuntu的安装方法，安装了就好～～</strong> \r\n</p>\r\n<p>\r\n	<strong>然后就是前端的显示文件的容器和js的代码咯</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint linenums lang-html\">{% for file_name in name_list%}    &lt;!--这里就循环输出文件的名称，并放在button中--&gt;\r\n &lt;input type=\"button\" value=\"{{file_name}}\" name =\"{{file_name}}\"&gt;\r\n{% endfor %}\r\n\r\n&lt;script type=\"text/javascript\"&gt;\r\n$(\':button\').bind(\"click\", function(){\r\n&nbsp;&nbsp;&nbsp; if ($(this).attr(\"name\")){&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //这里就是检测所有Button按钮中，有没name这属性，然后获取\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; var name = $(this).attr(\"name\");\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; var dataid = {{ shipdate.id }};\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $.get(\"{% url \'quotes_preview\' %}\",\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; name:name,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //这里传回两个参数，一个是文件的名称，一个是文件所属文章的ID\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dataid:dataid,\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; },\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; function(data){\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; window.open(\'/\'+data+\'\')&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //这里就直接打开传回来pdf的路径\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; });\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }\r\n});\r\n&lt;/script&gt;\r\n<p>\r\n	<br />\r\n\r\n</p>\r\n</pre>\r\n<p>\r\n	<strong>前端的东东就OVER了</strong> \r\n</p>\r\n<p>\r\n	<strong>那么就剩下后端的囖，先从压缩包中拿回里面的文件名称，使用一个函数来调用</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint linenums lang-py\">def get_zipfile_list(base_dir,file_dir):\r\n    name_list=[]\r\n    list_dir = base_dir.replace(\'\\\\\',\'/\')+\'/\'+file_dir\r\n    z=zipfile.ZipFile(list_dir,\'r\')\r\n    try:\r\n        for filename in z.namelist():\r\n            name_list.append(filename) \r\n    finally:\r\n        z.close()\r\n    return name_list</pre>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong><span></span>这里就返回一个名称的一个列表，然后在页面中返回这个列表就好了</strong> \r\n</p>\r\n<p>\r\n	<strong><span>接着是处理word转化为pdf的工作了～～～～</span></strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint linenums lang-py\">def quotes_preview(request):\r\n    dataid = request.GET.get(\'dataid\')\r\n    file_name = request.GET.get(\'name\')\r\n    shipdata = Quotes.objects.get(id = dataid)\r\n    #这里从文章拿回压缩包的路径，因为上篇文章我留了压缩包和文件夹，去掉压缩包的后缀名就是文件夹的路径\r\n    folder_path = shipdata.quotes_file.url[:-4]\r\n    base_dir =  os.path.abspath(\'.\')\r\n    file_path = base_dir + \'/\' +folder_path + \'/\' + file_name\r\n    return_path = folder_path + \'/\' + file_name\r\n    #上面的操作是因为Django拿回的路径是从static开始的，我们需要的是全路径\r\n    pdf_file = os.path.splitext(file_path)[0]+\'.pdf\'\r\n    try:\r\n        if os.path.exists(pdf_file):      #这里判别他是不是PDF文件\r\n            return_path = os.path.splitext(return_path)[0] + \'.pdf\'\r\n        elif os.path.splitext(file_path)[1] == \'.doc\' or os.path.splitext(file_path)[1] == \'.docx\':\r\n            os.system(\'unoconv -f pdf \'+file_path+\'\')    #最重要是这里，用os调用本地终端执行转化命令\r\n            if os.path.exists(pdf_file):\r\n                return_path = os.path.splitext(return_path)[0] + \'.pdf\'\r\n            else:\r\n                pass\r\n    except Exception as e:\r\n        pass\r\n    return HttpResponse(return_path)      #最后返回点击文件的全路径\r\n\r\n</pre>\r\n<p>\r\n	<strong>预览的功能就酱紫，其实这里很多语法可以优化一下，这个就交给你们啦，收工～～～～</strong> \r\n</p>','profile_images/138b5d7bd36d5fead562a486d99a36a8.jpg','2017-09-14 12:22:59.284032',2),(8,'JavaScript多文件上传改进',15,'<p>\r\n	<strong>改进了一下，多文件上传的功能～～</strong> \r\n</p>\r\n<p>\r\n	<strong>增加了清空按钮、可以多次添加文件<img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/28.gif\" alt=\"\" border=\"0\" /><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/28.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/28.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/28.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/28.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://119.29.98.109/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/28.gif\" alt=\"\" border=\"0\" /></strong><br />\r\n</strong> \r\n</p>\r\n<p>\r\n	<strong>HTML那里加多一个清空按钮<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint linenums lang-html\">&lt;input type=\"button\" class=\"btn btn-primary\" id= \"clean_all\" style=\"height:27px;padding-top:3px;\" disabled=\"disabled\" value=\"清空文件\"\r\n\r\n</pre>\r\n<p>\r\n	<strong>接着上javascript代码吧</strong> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<pre class=\"prettyprint linenums lang-js\">&lt;script&gt;\r\nvar curFiles = [];\r\n    $(\"#upfile\").on(\"change\", function () {\r\n        var $this = $(this),\r\n        files = this.files;     //获取文件\r\n        Array.prototype.push.apply(curFiles,files); \r\n        //把文件的列表和空列表进行合并，然后就可以操作文件了 \r\n        var length = curFiles.length;\r\n        $(\"#FileArea\").empty();\r\n        //显示所有文件\r\n        for (var i = 0; i &lt; length; i++) {\r\n            var temp = curFiles[i].name;\r\n            var button=document.createElement(\"p\");\r\n            button.id = \'del\';\r\n            button.innerHTML = temp;\r\n            button.className=\"btn btn-primary\"; \r\n            button.style=\"background-color:#D9534F;border-color:white\";\r\n            $(\"#FileArea\").append(button);\r\n        }\r\n        \r\n        //控制上传和清空按钮是否可以点击\r\n        $(\"#clean_all\").attr(\'disabled\',false); \r\n        $(\"#uploadfile\").attr(\'disabled\',false);\r\n\r\n        //清空按钮事件，清空curFiles列表内容和FileArea显示的内容\r\n        $(\"#clean_all\").on(\"click\",function(){\r\n          $(\"#FileArea\").empty();\r\n          curFiles = [];\r\n          $(\"#clean_all\").attr(\'disabled\',true);\r\n          $(\"#uploadfile\").attr(\'disabled\',true);\r\n        });\r\n\r\n        $(\"#upfile\").val(\"\")\r\n\r\n        //删除单个文件\r\n        $(\"p\").on(\"click\",function(){\r\n            var name = $(this).text();\r\n            var r=confirm(\"是否移除\")\r\n            if(r==true){\r\n               $(this).remove();\r\n            }\r\n            else{\r\n                return false;\r\n            }\r\n            curFiles = curFiles.filter(function(file) {\r\n            return file.name !== name;})    //删除对应名称文件\r\n\r\n            if(curFiles.length == 0){\r\n              $(\"#clean_all\").attr(\'disabled\',true);\r\n              $(\"#uploadfile\").attr(\'disabled\',true);\r\n            }\r\n      });\r\n});\r\n\r\n    //文件上传使用ajax处理\r\n    $(\"#uploadfile\").on(\"click\",function(){\r\n          if(curFiles==\"\"){\r\n            alert(\"没有文件可以上传哦\");\r\n          }\r\n          else{\r\n                  var fd = new FormData($(\'#form\')[0]);   //获取form的所有内容\r\n                  for (var i = 0, j = curFiles.length; i &lt; j; ++i) {\r\n                  fd.append(\'myFileTest[]\', curFiles[i]);  //循环把文件加入form中\r\n                  }\r\n                  $.ajax({\r\n                  url: \'{% url \"upload_files\" %}\',\r\n                  type: \'post\',\r\n                  data: fd,\r\n                  processData: false,\r\n                  contentType: false,\r\n                  success: function (returndata) { \r\n                  alert(\"上传成功！！\"); \r\n                  $(\"#dir\").val(returndata);    //把上传文件的打包后，传回压缩包的路径\r\n        },  \r\n                  error: function (returndata) { \r\n                  alert(\"上传失败！！\\n请检查上传的文件类型是否正确及总大小不能大于5M\"); \r\n          }\r\n                        });\r\n                        \r\n                    }\r\n        });\r\n&lt;/script&gt; </pre>\r\n<p>\r\n<strong>就这样基本完善了一下下，毕竟最近比较闲～～～～</strong> \r\n</p>','profile_images/333.jpg','2017-09-22 14:50:41.000389',3),(9,'virtualenvwrapper创建独立环境',3,'<p>\r\n	<strong>virtualenv</strong><strong>用于创建Python的独立环境.</strong> \r\n</p>\r\n<p>\r\n	<strong>virtualenvwrapper是用来管理virtualenv的扩展包，用着很方便。</strong> \r\n</p>\r\n<pre class=\"prettyprint linenums lang-bsh\">#安装virtualenv\r\nsudo pip install virtualenv\r\n\r\n#安装virtualenvwrapper\r\nsudo pip install virtualenvwrapper\r\n</pre>\r\n<p>\r\n	<strong>然后配置相关环境</strong> \r\n</p>\r\n<p>\r\n	<strong>打开配置环境环境的文件</strong> \r\n</p>\r\n<pre class=\"prettyprint linenums\">vim .bashrc</pre>\r\n<p>\r\n	<strong>在末尾添加相关的引用</strong> \r\n</p>\r\n<pre class=\"prettyprint linenums\">export WORKON_HOME=$HOME/.virtualenvs\r\nexport PROJECT_HOME=$HOME/workspace\r\nsource /usr/local/bin/virtualenvwrapper.sh <strong></strong> </pre>\r\n<p>\r\n	<strong>重新运用配置文件</strong> \r\n</p>\r\n<pre class=\"prettyprint linenums\">source ~/.bash_profile\r\n</pre>\r\n<p>\r\n	<strong>然后就OK了。</strong> \r\n</p>\r\n<p>\r\n	<strong> 运用了这个virtualenvwrapper这个扩展包，管理起来就方面多了<img src=\"http://www.ctadas.cn/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/42.gif\" alt=\"\" border=\"0\" /><strong><img src=\"http://www.ctadas.cn/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/42.gif\" alt=\"\" border=\"0\" /></strong><strong><img src=\"http://www.ctadas.cn/static/js/editor/kindeditor-4.1.1/plugins/emoticons/images/42.gif\" alt=\"\" border=\"0\" /></strong></strong> \r\n</p>\r\n<p>\r\n	<strong>相关命令如下：</strong> \r\n</p>\r\n<p>\r\n	<strong> \r\n	<table style=\"width:100%;\" border=\"1\" bordercolor=\"#000000\" cellpadding=\"2\" cellspacing=\"0\">\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<p>\r\n						&nbsp;mkvirtualenv env\r\n					</p>\r\n				</td>\r\n				<td>\r\n					创建环境<br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<p>\r\n						&nbsp;rmvirtualenv env\r\n					</p>\r\n				</td>\r\n				<td>\r\n					删除对应环境<br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<p>\r\n						workon （env）\r\n					</p>\r\n				</td>\r\n				<td>\r\n					查看已存在的环境（进入相应环境）<br />\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<p>\r\n						deactivate\r\n					</p>\r\n				</td>\r\n				<td>\r\n					退出相应环境<br />\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n<br />\r\n<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	<strong><br />\r\n</strong><br />\r\n<strong><strong></strong></strong> \r\n</p>','profile_images/a8f9439a2c00318d17fe6890adc7855c.jpeg','2017-10-27 22:13:31.281050',4);
/*!40000 ALTER TABLE `blogs_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_theme`
--

DROP TABLE IF EXISTS `blogs_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `about` longtext NOT NULL,
  `picture` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_theme`
--

LOCK TABLES `blogs_theme` WRITE;
/*!40000 ALTER TABLE `blogs_theme` DISABLE KEYS */;
INSERT INTO `blogs_theme` VALUES (1,'Ctadas Blog','On the dream of dead fish ..........','profile_images/5.jpg');
/*!40000 ALTER TABLE `blogs_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-03-18 09:34:04.688873','1','生活',1,'[{\"added\": {}}]',8,1),(2,'2017-03-18 09:34:45.758030','1','测试1',1,'[{\"added\": {}}]',7,1),(3,'2017-03-18 12:05:38.765525','2','一起走过的那些日子',1,'[{\"added\": {}}]',7,1),(4,'2017-03-18 12:06:53.014594','2','一起走过的那些日子',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1),(5,'2017-03-18 12:33:16.819349','1','主题二',1,'[{\"added\": {}}]',NULL,1),(6,'2017-04-04 15:49:17.455879','1','Ctadas',2,'[{\"changed\": {\"fields\": [\"title\", \"about\", \"picture\"]}}]',NULL,1),(7,'2017-04-04 15:49:33.047207','1','Ctadas Blog',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',NULL,1),(8,'2017-04-04 15:50:23.877594','1','测试1',3,'',7,1),(9,'2017-04-04 15:56:23.311786','1','Ctadas Blog',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',NULL,1),(10,'2017-04-05 00:54:55.590798','2','Django',1,'[{\"added\": {}}]',8,1),(11,'2017-04-05 03:28:15.771450','3','Django admin使用kindeditor富文本编辑器',1,'[{\"added\": {}}]',7,1),(12,'2017-04-05 03:39:28.878077','3','Django admin使用kindeditor富文本编辑器',2,'[{\"changed\": {\"fields\": [\"views\", \"context\", \"picture\"]}}]',7,1),(13,'2017-04-05 03:53:59.696514','3','Django admin使用kindeditor富文本编辑器',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1),(14,'2017-04-05 04:12:06.600690','3','Django admin使用kindeditor富文本编辑器',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1),(15,'2017-04-05 10:43:16.707417','3','Django admin使用kindeditor富文本编辑器',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1),(16,'2017-04-06 09:44:38.778485','2','一起走过的那些日子',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1),(17,'2017-04-06 09:46:46.622184','2','一起走过的那些日子',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',7,1),(18,'2017-04-06 12:21:46.692871','1','Ctadas Blog',2,'[{\"changed\": {\"fields\": [\"about\"]}}]',NULL,1),(19,'2017-04-06 13:04:23.418816','1','Ctadas Blog',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',NULL,1),(20,'2017-04-06 13:11:41.745475','1','Ctadas Blog',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',NULL,1),(21,'2017-04-06 13:13:02.057154','1','Ctadas Blog',2,'[{\"changed\": {\"fields\": [\"about\"]}}]',NULL,1),(22,'2017-04-11 13:38:21.854882','4','Django 设置template的全局变量',1,'[{\"added\": {}}]',7,1),(23,'2017-04-11 13:43:05.436658','4','Django设置template的全局变量',2,'[{\"changed\": {\"fields\": [\"title\", \"context\"]}}]',7,1),(24,'2017-04-11 13:44:24.756346','4','Django设置template的全局变量',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1),(25,'2017-04-11 13:48:10.435862','1','Ctadas Blog',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',NULL,1),(26,'2017-04-11 13:50:20.629499','1','Ctadas Blog',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',NULL,1),(27,'2017-04-11 13:55:20.993983','1','Ctadas Blog',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',NULL,1),(28,'2017-04-11 14:02:31.564587','1','Ctadas Blog',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',NULL,1),(29,'2017-04-11 14:03:21.355620','1','Ctadas Blog',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',NULL,1),(30,'2017-04-11 14:11:12.050863','1','Ctadas Blog',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',NULL,1),(31,'2017-04-21 12:10:22.986426','1','Ctadas Blog',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',15,1),(32,'2017-04-21 12:49:26.775593','5','Django-suit 优化下admin界面',1,'[{\"added\": {}}]',7,1),(33,'2017-09-14 10:29:14.337036','6','啊',1,'[{\"added\": {}}]',7,1),(34,'2017-09-14 10:52:03.735591','6','啊',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1),(35,'2017-09-14 10:52:20.918287','6','多文件上传',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',7,1),(36,'2017-09-14 10:53:00.738133','6','多文件上传',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1),(37,'2017-09-14 10:53:47.738338','6','多文件上传',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1),(38,'2017-09-14 10:54:24.074183','6','多文件上传',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1),(39,'2017-09-14 10:55:09.814658','6','多文件上传',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1),(40,'2017-09-14 11:01:05.827854','6','多文件上传',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1),(41,'2017-09-14 11:02:36.750049','6','多文件上传',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1),(42,'2017-09-14 11:40:27.589783','6','多文件上传',2,'[{\"changed\": {\"fields\": [\"picture\"]}}]',7,1),(43,'2017-09-14 12:22:59.524597','7','在线预览WORD功能',1,'[{\"added\": {}}]',7,1),(44,'2017-09-14 12:23:53.603460','7','在线预览WORD功能',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1),(45,'2017-09-22 14:41:49.660074','3','JavaScript',1,'[{\"added\": {}}]',8,1),(46,'2017-09-22 14:50:41.001721','8','JavaScript多文件上传改进',1,'[{\"added\": {}}]',7,1),(47,'2017-09-22 15:51:28.501255','8','JavaScript多文件上传改进',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1),(48,'2017-10-27 21:52:19.266546','4','Python',1,'[{\"added\": {}}]',8,1),(49,'2017-10-27 22:13:31.282411','9','virtualenvwrapper创建独立环境',1,'[{\"added\": {}}]',7,1),(50,'2017-10-27 22:16:19.213512','9','virtualenvwrapper创建独立环境',2,'[{\"changed\": {\"fields\": [\"context\", \"picture\"]}}]',7,1),(51,'2017-10-27 22:17:15.391935','9','virtualenvwrapper创建独立环境',2,'[{\"changed\": {\"fields\": [\"context\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(4,'auth','permission'),(2,'auth','user'),(8,'blogs','category'),(14,'blogs','comment'),(13,'blogs','newuser'),(7,'blogs','page'),(15,'blogs','theme'),(5,'contenttypes','contenttype'),(11,'registration','registrationprofile'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-03-18 09:32:54.661750'),(2,'auth','0001_initial','2017-03-18 09:32:59.489796'),(3,'admin','0001_initial','2017-03-18 09:33:00.488264'),(4,'admin','0002_logentry_remove_auto_add','2017-03-18 09:33:00.550351'),(5,'contenttypes','0002_remove_content_type_name','2017-03-18 09:33:01.223816'),(6,'auth','0002_alter_permission_name_max_length','2017-03-18 09:33:01.658948'),(7,'auth','0003_alter_user_email_max_length','2017-03-18 09:33:02.238843'),(8,'auth','0004_alter_user_username_opts','2017-03-18 09:33:02.281444'),(9,'auth','0005_alter_user_last_login_null','2017-03-18 09:33:02.627746'),(10,'auth','0006_require_contenttypes_0002','2017-03-18 09:33:02.655191'),(11,'auth','0007_alter_validators_add_error_messages','2017-03-18 09:33:02.702397'),(12,'auth','0008_alter_user_username_max_length','2017-03-18 09:33:03.062504'),(13,'blogs','0001_initial','2017-03-18 09:33:03.561052'),(14,'blogs','0002_auto_20170302_0928','2017-03-18 09:33:05.054133'),(15,'registration','0001_initial','2017-03-18 09:33:05.527746'),(16,'registration','0002_registrationprofile_activated','2017-03-18 09:33:05.852490'),(17,'registration','0003_migrate_activatedstatus','2017-03-18 09:33:05.878254'),(18,'sessions','0001_initial','2017-03-18 09:33:06.169104'),(19,'blogs','0003_theme','2017-03-18 12:32:20.032968'),(20,'blogs','0004_auto_20170408_1255','2017-04-08 04:56:02.437612'),(21,'blogs','0005_auto_20170408_1359','2017-04-08 05:59:53.227828'),(22,'blogs','0002_auto_20170421_1019','2017-04-21 10:24:36.993414');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3voc4qxk5x7svqftr1ttu0fy79tlvdua','OThmMTI1OTQ4MDIwN2JjYTY4ZmU2OWExN2MwOWE0OWZhNzM3NDA3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZkYzZjMWQ0NGYxNjBhYjNhZGJmOTIwM2MyOWMwNDEwZThlNDJmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-01 11:41:55.455680'),('4mjlhf5tec8blfy86eh29dzlya0uuyb7','YTM4ZGJlYzgzMWY5NWQ5MzkzYzY2MzBkNGM1NWZiNDZkOGY5YmRiNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZkYzZjMWQ0NGYxNjBhYjNhZGJmOTIwM2MyOWMwNDEwZThlNDJmNGMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-04-18 15:46:23.379139'),('5rbwzb4i5yf1zkpbnm1jjc3c8a60k41i','YmY4Mzk4NDM5YTE5MzdlNjBlNTlkYzk2ZDZjZWZhNTY0MjI0ZTZiYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI2ZGM2YzFkNDRmMTYwYWIzYWRiZjkyMDNjMjljMDQxMGU4ZTQyZjRjIn0=','2017-05-02 02:53:18.790003'),('anpmjtbucuv62drgodj9dz5h8npa3pnt','N2FmZDYyOWQ5ODUyMTQzZmMyM2M4OTQzODE1ZDBlNjAzNzg3NTQyNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmRjNmMxZDQ0ZjE2MGFiM2FkYmY5MjAzYzI5YzA0MTBlOGU0MmY0YyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-02 10:16:00.430024'),('fxbmy91zd3ksteaw9m9eb3zkuxhq31xd','N2FmZDYyOWQ5ODUyMTQzZmMyM2M4OTQzODE1ZDBlNjAzNzg3NTQyNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmRjNmMxZDQ0ZjE2MGFiM2FkYmY5MjAzYzI5YzA0MTBlOGU0MmY0YyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-09-26 16:58:17.780776'),('g1q7pe522n01jdj78ovdqvmpq9cldobh','N2FmZDYyOWQ5ODUyMTQzZmMyM2M4OTQzODE1ZDBlNjAzNzg3NTQyNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmRjNmMxZDQ0ZjE2MGFiM2FkYmY5MjAzYzI5YzA0MTBlOGU0MmY0YyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-03 09:29:05.106920'),('l6ehkltmxo6xve77v23aet1oeyxwb2rv','N2FmZDYyOWQ5ODUyMTQzZmMyM2M4OTQzODE1ZDBlNjAzNzg3NTQyNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmRjNmMxZDQ0ZjE2MGFiM2FkYmY5MjAzYzI5YzA0MTBlOGU0MmY0YyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-04-13 09:40:36.859244'),('npbwmwby6epqopq433m5fbwdyopptag5','ZjUxYTUwODA2ZTM3OWY3YTM2MDE0Y2EyNjg4YjhkNDZjZjQ5N2RhOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZGM2YzFkNDRmMTYwYWIzYWRiZjkyMDNjMjljMDQxMGU4ZTQyZjRjIn0=','2017-05-31 20:44:45.296962'),('r7hbehk57544kaoom3nvjamxdx1u1pcm','ZjUxYTUwODA2ZTM3OWY3YTM2MDE0Y2EyNjg4YjhkNDZjZjQ5N2RhOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZGM2YzFkNDRmMTYwYWIzYWRiZjkyMDNjMjljMDQxMGU4ZTQyZjRjIn0=','2017-05-05 12:10:05.282532'),('rditr7yc1y12icxtuqo0k2rwae4ncb1l','ZjUxYTUwODA2ZTM3OWY3YTM2MDE0Y2EyNjg4YjhkNDZjZjQ5N2RhOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZGM2YzFkNDRmMTYwYWIzYWRiZjkyMDNjMjljMDQxMGU4ZTQyZjRjIn0=','2017-11-05 16:54:50.337451');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_registrationprofile`
--

DROP TABLE IF EXISTS `registration_registrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_registrationprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activation_key` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activated` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `registration_registrationprofil_user_id_5fcbf725_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_registrationprofile`
--

LOCK TABLES `registration_registrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_registrationprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_registrationprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-09 21:56:34
