-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cloud_nacos_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cloud_nacos_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cloud_nacos_db`;

--
-- Table structure for table `config_info`
--

DROP TABLE IF EXISTS `config_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  `c_desc` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `c_use` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `effect` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `c_schema` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfo_datagrouptenant` (`data_id`,`group_id`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info`
--

LOCK TABLES `config_info` WRITE;
/*!40000 ALTER TABLE `config_info` DISABLE KEYS */;
INSERT INTO `config_info` VALUES (1,'learn-train-service','DEFAULT_GROUP','spring:\n    sleuth:\n        web:\n            client:\n                enabled: true\n        sampler:\n            probability: 1.0\n    zipkin:\n        base-url: http://172.168.0.211:7000/\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n        health:\n            show-details: always\n','37cefc6508d1349226e5f6a1a476a0ee','2020-08-13 17:04:14','2020-08-15 08:57:54',NULL,'172.168.0.1','','0a051418-bbb0-4fc1-9536-51961f639ac4','','','','yaml',''),(14,'cloud-grant-auth','DEFAULT_GROUP','spring:\n    sleuth:\n        web:\n            client:\n                enabled: true\n        sampler:\n            probability: 1.0\n    zipkin:\n        base-url: http://172.168.0.211:7000/\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/code-auth-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','2b2a34139f98eab3bc5bb14709686a41','2020-08-14 10:07:12','2020-08-15 08:57:38',NULL,'172.168.0.1','','0a051418-bbb0-4fc1-9536-51961f639ac4','','','','yaml',''),(15,'cloud-gateway','DEFAULT_GROUP','spring:\n    sleuth:\n        web:\n            client:\n                enabled: true\n        sampler:\n            probability: 1.0\n    zipkin:\n        base-url: http://172.168.0.211:7000/\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: cloud-grant-auth\n                uri: lb://cloud-grant-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-train-service\n                uri: lb://learn-train-service\n                order: 8001\n                predicates:\n                - Path=/api/train/**\n                filters:\n                - StripPrefix=2\n            -   id: code-cloud-auth\n                uri: lb://code-cloud-auth\n                order: 8002\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-baselib-service\n                uri: lb://learn-baselib-service\n                order: 8003\n                predicates:\n                - Path=/api/baselib/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','95bab38250f84ba186ac422144f8a3fb','2020-08-14 10:07:37','2020-08-15 08:57:25',NULL,'172.168.0.1','','0a051418-bbb0-4fc1-9536-51961f639ac4','','','','yaml',''),(17,'learn-baselib-service','DEFAULT_GROUP','spring:\n    zipkin:\n        base-url: http://172.168.0.211:7000/\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-baselib-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: ０\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS','2e3bb8951efb8cb6dffd160a8d2d7702','2020-08-14 11:00:17','2020-08-15 08:55:55',NULL,'172.168.0.1','','0a051418-bbb0-4fc1-9536-51961f639ac4','','','','yaml',''),(20,'learn-resouces-service','DEFAULT_GROUP','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-resouces-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS','292551b0d6b1f4a4e4f2d0051dc2ff2f','2020-08-14 12:46:52','2020-08-14 19:58:30',NULL,'172.168.0.1','','0a051418-bbb0-4fc1-9536-51961f639ac4','','','','yaml',''),(22,'cloud-notify-service','DEFAULT_GROUP','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','307b484f77c4e48427ffaeb9d6effbf6','2020-08-14 13:13:16','2020-08-15 04:16:11',NULL,'172.168.0.1','','0a051418-bbb0-4fc1-9536-51961f639ac4','','','','yaml',''),(23,'cloud-schedule-service','DEFAULT_GROUP','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','833d9494230e4dd13afd6ad849929d13','2020-08-14 13:14:11','2020-08-14 16:30:46',NULL,'172.168.0.1','','0a051418-bbb0-4fc1-9536-51961f639ac4','','','','yaml',''),(42,'cloud-service-admin','DEFAULT_GROUP','spring:\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    mail:\n        host: smtp.163.com\n    boot:\n        admin:\n            notify:\n                mail:\n                    to: xueyj163@163.com\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','4e9ec129d97244761d5a4a8269dd2de4','2020-08-14 19:10:21','2020-08-15 04:16:37',NULL,'172.168.0.1','','0a051418-bbb0-4fc1-9536-51961f639ac4','','','','yaml','');
/*!40000 ALTER TABLE `config_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_info_aggr`
--

DROP TABLE IF EXISTS `config_info_aggr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_info_aggr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `datum_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'datum_id',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT '内容',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfoaggr_datagrouptenantdatum` (`data_id`,`group_id`,`tenant_id`,`datum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='增加租户字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info_aggr`
--

LOCK TABLES `config_info_aggr` WRITE;
/*!40000 ALTER TABLE `config_info_aggr` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_info_aggr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_info_beta`
--

DROP TABLE IF EXISTS `config_info_beta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_info_beta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `beta_ips` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT 'betaIps',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfobeta_datagrouptenant` (`data_id`,`group_id`,`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info_beta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info_beta`
--

LOCK TABLES `config_info_beta` WRITE;
/*!40000 ALTER TABLE `config_info_beta` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_info_beta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_info_tag`
--

DROP TABLE IF EXISTS `config_info_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_info_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `tag_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_id',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfotag_datagrouptenanttag` (`data_id`,`group_id`,`tenant_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info_tag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info_tag`
--

LOCK TABLES `config_info_tag` WRITE;
/*!40000 ALTER TABLE `config_info_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_info_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_tags_relation`
--

DROP TABLE IF EXISTS `config_tags_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_tags_relation` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `tag_name` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_name',
  `tag_type` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'tag_type',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `nid` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `uk_configtagrelation_configidtag` (`id`,`tag_name`,`tag_type`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_tag_relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_tags_relation`
--

LOCK TABLES `config_tags_relation` WRITE;
/*!40000 ALTER TABLE `config_tags_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_tags_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_capacity`
--

DROP TABLE IF EXISTS `group_capacity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_capacity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Group ID，空字符表示整个集群',
  `quota` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配额，0表示使用默认值',
  `usage` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用量',
  `max_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '聚合子配置最大个数，，0表示使用默认值',
  `max_aggr_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='集群、各Group容量信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_capacity`
--

LOCK TABLES `group_capacity` WRITE;
/*!40000 ALTER TABLE `group_capacity` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_capacity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `his_config_info`
--

DROP TABLE IF EXISTS `his_config_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `his_config_info` (
  `id` bigint(64) unsigned NOT NULL,
  `nid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL,
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL,
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `src_user` text COLLATE utf8_bin,
  `src_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `op_type` char(10) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`nid`),
  KEY `idx_gmt_create` (`gmt_create`),
  KEY `idx_gmt_modified` (`gmt_modified`),
  KEY `idx_did` (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='多租户改造';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `his_config_info`
--

LOCK TABLES `his_config_info` WRITE;
/*!40000 ALTER TABLE `his_config_info` DISABLE KEYS */;
INSERT INTO `his_config_info` VALUES (0,1,'learn-train-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','875e6f3a7f9d32e750e13837a860cfd7','2020-08-14 01:04:14','2020-08-13 17:04:14',NULL,'172.168.0.1','I','0a051418-bbb0-4fc1-9536-51961f639ac4'),(0,2,'code-cloud-gateway','DEFAULT_GROUP','','spring:\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: donkey-cloud-auth\n                uri: lb://donkey-cloud-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: donkey-cloud-admin\n                uri: lb://donkey-cloud-admin\n                order: 8001\n                predicates:\n                - Path=/api/admin/**\n                filters:\n                - StripPrefix=2\n            -   id: donkey-cloud-acl\n                uri: lb://donkey-cloud-acl\n                order: 8002\n                predicates:\n                - Path=/api/acl/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                port: 8765\n                dashboard: ci.dokycloud.cn:9000\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\ngate:\n    ignore:\n        startWith: /auth/jwt\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        token-header: x-client-token\n        id: donkey-cloud-gateway\n        secret: 123456\n','d21fda1f207b842ac3d3f68c63f60877','2020-08-14 01:04:14','2020-08-13 17:04:14',NULL,'172.168.0.1','I','0a051418-bbb0-4fc1-9536-51961f639ac4'),(0,3,'code-cloud-auth','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/code-auth-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','c3992f00e84a0b0c811d68e8acd66183','2020-08-14 01:04:15','2020-08-13 17:04:14',NULL,'172.168.0.1','I','0a051418-bbb0-4fc1-9536-51961f639ac4'),(2,4,'code-cloud-gateway','DEFAULT_GROUP','','spring:\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: donkey-cloud-auth\n                uri: lb://donkey-cloud-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: donkey-cloud-admin\n                uri: lb://donkey-cloud-admin\n                order: 8001\n                predicates:\n                - Path=/api/admin/**\n                filters:\n                - StripPrefix=2\n            -   id: donkey-cloud-acl\n                uri: lb://donkey-cloud-acl\n                order: 8002\n                predicates:\n                - Path=/api/acl/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                port: 8765\n                dashboard: ci.dokycloud.cn:9000\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\ngate:\n    ignore:\n        startWith: /auth/jwt\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        token-header: x-client-token\n        id: donkey-cloud-gateway\n        secret: 123456\n','d21fda1f207b842ac3d3f68c63f60877','2020-08-14 01:48:49','2020-08-13 17:48:48',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(3,5,'code-cloud-auth','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/code-auth-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','c3992f00e84a0b0c811d68e8acd66183','2020-08-14 15:12:11','2020-08-14 07:12:09',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(3,6,'code-cloud-auth','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/code-auth-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','c3992f00e84a0b0c811d68e8acd66183','2020-08-14 15:12:53','2020-08-14 07:12:53',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(2,7,'code-cloud-gateway','DEFAULT_GROUP','','spring:\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: donkey-cloud-auth\n                uri: lb://donkey-cloud-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: donkey-cloud-admin\n                uri: lb://donkey-cloud-admin\n                order: 8001\n                predicates:\n                - Path=/api/admin/**\n                filters:\n                - StripPrefix=2\n            -   id: donkey-cloud-acl\n                uri: lb://donkey-cloud-acl\n                order: 8002\n                predicates:\n                - Path=/api/acl/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                port: 8765\n                dashboard: ci.dokycloud.cn:9000\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\ngate:\n    ignore:\n        startWith: /auth/jwt\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        token-header: x-client-token\n        id: donkey-cloud-gateway\n        secret: 123456\n','d21fda1f207b842ac3d3f68c63f60877','2020-08-14 15:14:30','2020-08-14 07:14:30',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(1,8,'learn-train-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','875e6f3a7f9d32e750e13837a860cfd7','2020-08-14 15:15:01','2020-08-14 07:15:01',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(1,9,'learn-train-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','875e6f3a7f9d32e750e13837a860cfd7','2020-08-14 15:15:16','2020-08-14 07:15:16',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(3,10,'code-cloud-auth','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/code-auth-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n    inetutils:\n        preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','bd5395ccee8b3c4d1d2f798c8d1c0bd4','2020-08-14 15:18:07','2020-08-14 07:18:07',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(2,11,'code-cloud-gateway','DEFAULT_GROUP','','spring:\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: donkey-cloud-auth\n                uri: lb://donkey-cloud-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: donkey-cloud-admin\n                uri: lb://donkey-cloud-admin\n                order: 8001\n                predicates:\n                - Path=/api/admin/**\n                filters:\n                - StripPrefix=2\n            -   id: donkey-cloud-acl\n                uri: lb://donkey-cloud-acl\n                order: 8002\n                predicates:\n                - Path=/api/acl/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                port: 8765\n                dashboard: ci.dokycloud.cn:9000\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\ngate:\n    ignore:\n        startWith: /auth/jwt\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        token-header: x-client-token\n        id: donkey-cloud-gateway\n        secret: 123456\n','d6ad9e94eb8df274e3fde98d0c18ceab','2020-08-14 15:51:44','2020-08-14 07:51:44',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(2,12,'code-cloud-gateway','DEFAULT_GROUP','','spring:\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: donkey-cloud-auth\n                uri: lb://donkey-cloud-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: donkey-cloud-admin\n                uri: lb://donkey-cloud-admin\n                order: 8001\n                predicates:\n                - Path=/api/admin/**\n                filters:\n                - StripPrefix=2\n            -   id: donkey-cloud-acl\n                uri: lb://donkey-cloud-acl\n                order: 8002\n                predicates:\n                - Path=/api/acl/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                port: 8765\n                dashboard: ci.dokycloud.cn:9000\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','10edd7842c91b9a7531644ebe46dd9c9','2020-08-14 16:55:36','2020-08-14 08:55:36',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(2,13,'code-cloud-gateway','DEFAULT_GROUP','','spring:\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: donkey-cloud-auth\n                uri: lb://donkey-cloud-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-train-service\n                uri: lb://learn-train-service\n                order: 8001\n                predicates:\n                - Path=/api/train/**\n                filters:\n                - StripPrefix=2\n            -   id: donkey-cloud-acl\n                uri: lb://donkey-cloud-acl\n                order: 8002\n                predicates:\n                - Path=/api/acl/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                port: 8765\n                dashboard: ci.dokycloud.cn:9000\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','fb7dde6f6e259ad9023da48ba92f40ee','2020-08-14 17:48:51','2020-08-14 09:30:41',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(0,14,'cloud-grant-auth','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/code-auth-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','a3d89c73060d169f7d34ee3449011e0f','2020-08-14 18:23:25','2020-08-14 10:07:12',NULL,'172.168.0.1','I','0a051418-bbb0-4fc1-9536-51961f639ac4'),(0,15,'cloud-gateway','DEFAULT_GROUP','','spring:\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: donkey-cloud-auth\n                uri: lb://donkey-cloud-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-train-service\n                uri: lb://learn-train-service\n                order: 8001\n                predicates:\n                - Path=/api/train/**\n                filters:\n                - StripPrefix=2\n            -   id: code-cloud-auth\n                uri: lb://code-cloud-auth\n                order: 8002\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                port: 8765\n                dashboard: ci.dokycloud.cn:9000\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','a9edd064d0cff082dc0e97e918d05145','2020-08-14 18:23:47','2020-08-14 10:07:37',NULL,'172.168.0.1','I','0a051418-bbb0-4fc1-9536-51961f639ac4'),(2,16,'code-cloud-gateway','DEFAULT_GROUP','','spring:\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: donkey-cloud-auth\n                uri: lb://donkey-cloud-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-train-service\n                uri: lb://learn-train-service\n                order: 8001\n                predicates:\n                - Path=/api/train/**\n                filters:\n                - StripPrefix=2\n            -   id: code-cloud-auth\n                uri: lb://code-cloud-auth\n                order: 8002\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                port: 8765\n                dashboard: ci.dokycloud.cn:9000\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','a9edd064d0cff082dc0e97e918d05145','2020-08-14 18:39:29','2020-08-14 10:39:28',NULL,'172.168.0.1','D','0a051418-bbb0-4fc1-9536-51961f639ac4'),(3,17,'code-cloud-auth','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/code-auth-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','a3d89c73060d169f7d34ee3449011e0f','2020-08-14 18:39:29','2020-08-14 10:39:28',NULL,'172.168.0.1','D','0a051418-bbb0-4fc1-9536-51961f639ac4'),(15,18,'cloud-gateway','DEFAULT_GROUP','','spring:\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: donkey-cloud-auth\n                uri: lb://donkey-cloud-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-train-service\n                uri: lb://learn-train-service\n                order: 8001\n                predicates:\n                - Path=/api/train/**\n                filters:\n                - StripPrefix=2\n            -   id: code-cloud-auth\n                uri: lb://code-cloud-auth\n                order: 8002\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                port: 8765\n                dashboard: ci.dokycloud.cn:9000\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','a9edd064d0cff082dc0e97e918d05145','2020-08-14 18:40:17','2020-08-14 10:40:16',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(0,19,'learn-baselib-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','16bf30cd2db95b9dee8d76a239ce0359','2020-08-14 19:00:17','2020-08-14 11:00:17',NULL,'172.168.0.1','I','0a051418-bbb0-4fc1-9536-51961f639ac4'),(17,20,'learn-baselib-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','16bf30cd2db95b9dee8d76a239ce0359','2020-08-14 19:00:44','2020-08-14 11:00:44',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(15,21,'cloud-gateway','DEFAULT_GROUP','','spring:\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: cloud-grant-auth\n                uri: lb://cloud-grant-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-train-service\n                uri: lb://learn-train-service\n                order: 8001\n                predicates:\n                - Path=/api/train/**\n                filters:\n                - StripPrefix=2\n            -   id: code-cloud-auth\n                uri: lb://code-cloud-auth\n                order: 8002\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                port: 8765\n                dashboard: ci.dokycloud.cn:9000\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','ef96969809ea6a0ed21cbb507eec7a4b','2020-08-14 19:04:12','2020-08-14 11:04:12',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(0,22,'learn-resouces-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','16bf30cd2db95b9dee8d76a239ce0359','2020-08-14 20:46:52','2020-08-14 12:46:52',NULL,'172.168.0.1','I','0a051418-bbb0-4fc1-9536-51961f639ac4'),(20,23,'learn-resouces-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','16bf30cd2db95b9dee8d76a239ce0359','2020-08-14 20:47:34','2020-08-14 12:47:30',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(0,24,'cloud-notify-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','16bf30cd2db95b9dee8d76a239ce0359','2020-08-14 21:13:16','2020-08-14 13:13:16',NULL,'172.168.0.1','I','0a051418-bbb0-4fc1-9536-51961f639ac4'),(0,25,'cloud-schedule-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','16bf30cd2db95b9dee8d76a239ce0359','2020-08-14 21:14:11','2020-08-14 13:14:11',NULL,'172.168.0.1','I','0a051418-bbb0-4fc1-9536-51961f639ac4'),(1,26,'learn-train-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','16bf30cd2db95b9dee8d76a239ce0359','2020-08-15 00:10:04','2020-08-14 16:10:02',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(14,27,'cloud-grant-auth','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/code-auth-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','a3d89c73060d169f7d34ee3449011e0f','2020-08-15 00:11:00','2020-08-14 16:11:00',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(23,28,'cloud-schedule-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','16bf30cd2db95b9dee8d76a239ce0359','2020-08-15 00:14:55','2020-08-14 16:14:55',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(22,29,'cloud-notify-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','16bf30cd2db95b9dee8d76a239ce0359','2020-08-15 00:16:04','2020-08-14 16:16:03',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(20,30,'learn-resouces-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-resouces-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','43478185dc83662203c7cd0c2186ad34','2020-08-15 00:16:48','2020-08-14 16:16:48',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(17,31,'learn-baselib-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-baselib-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:8080\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','8a0676b9b81c729eeca2ecd0a1438cf9','2020-08-15 00:17:06','2020-08-14 16:17:06',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(15,32,'cloud-gateway','DEFAULT_GROUP','','spring:\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: cloud-grant-auth\n                uri: lb://cloud-grant-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-train-service\n                uri: lb://learn-train-service\n                order: 8001\n                predicates:\n                - Path=/api/train/**\n                filters:\n                - StripPrefix=2\n            -   id: code-cloud-auth\n                uri: lb://code-cloud-auth\n                order: 8002\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-baselib-service\n                uri: lb://learn-baselib-service\n                order: 8003\n                predicates:\n                - Path=/api/baselib/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                port: 8765\n                dashboard: ci.dokycloud.cn:9000\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','4a8294c117ea4d99984e7b790d77bdc5','2020-08-15 00:17:33','2020-08-14 16:17:33',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(14,33,'cloud-grant-auth','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/code-auth-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','9d25468e1a0bf6b921410ceea7d23417','2020-08-15 00:28:57','2020-08-14 16:28:57',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(1,34,'learn-train-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','e74fbe2c09f06fbd6000456a66020507','2020-08-15 00:29:11','2020-08-14 16:29:11',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(15,35,'cloud-gateway','DEFAULT_GROUP','','spring:\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: cloud-grant-auth\n                uri: lb://cloud-grant-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-train-service\n                uri: lb://learn-train-service\n                order: 8001\n                predicates:\n                - Path=/api/train/**\n                filters:\n                - StripPrefix=2\n            -   id: code-cloud-auth\n                uri: lb://code-cloud-auth\n                order: 8002\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-baselib-service\n                uri: lb://learn-baselib-service\n                order: 8003\n                predicates:\n                - Path=/api/baselib/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                port: 9200\n                dashboard: ci.dokycloud.cn:9000\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','4329d0866dc8d232ee25b3b0f2f1a53b','2020-08-15 00:29:35','2020-08-14 16:29:35',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(17,36,'learn-baselib-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-baselib-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','31358e3fb0b797dc12be3e1b92bc94a5','2020-08-15 00:29:55','2020-08-14 16:29:55',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(20,37,'learn-resouces-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-resouces-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','30327b2cb139eed6b0be4ff39ae91d41','2020-08-15 00:30:10','2020-08-14 16:30:10',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(22,38,'cloud-notify-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','e74fbe2c09f06fbd6000456a66020507','2020-08-15 00:30:30','2020-08-14 16:30:30',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(23,39,'cloud-schedule-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','e74fbe2c09f06fbd6000456a66020507','2020-08-15 00:30:46','2020-08-14 16:30:46',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(15,40,'cloud-gateway','DEFAULT_GROUP','','spring:\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: cloud-grant-auth\n                uri: lb://cloud-grant-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-train-service\n                uri: lb://learn-train-service\n                order: 8001\n                predicates:\n                - Path=/api/train/**\n                filters:\n                - StripPrefix=2\n            -   id: code-cloud-auth\n                uri: lb://code-cloud-auth\n                order: 8002\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-baselib-service\n                uri: lb://learn-baselib-service\n                order: 8003\n                predicates:\n                - Path=/api/baselib/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                port: 9200\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','62150bef20e589330d2bb3a1e696a813','2020-08-15 00:58:30','2020-08-14 16:58:29',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(1,41,'learn-train-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','833d9494230e4dd13afd6ad849929d13','2020-08-15 01:11:23','2020-08-14 17:11:23',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(15,42,'cloud-gateway','DEFAULT_GROUP','','spring:\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: cloud-grant-auth\n                uri: lb://cloud-grant-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-train-service\n                uri: lb://learn-train-service\n                order: 8001\n                predicates:\n                - Path=/api/train/**\n                filters:\n                - StripPrefix=2\n            -   id: code-cloud-auth\n                uri: lb://code-cloud-auth\n                order: 8002\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-baselib-service\n                uri: lb://learn-baselib-service\n                order: 8003\n                predicates:\n                - Path=/api/baselib/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                port: 8719\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','379f74b5f0402df3c5fbc4363e84622e','2020-08-15 01:11:49','2020-08-14 17:11:49',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(1,43,'learn-train-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','833d9494230e4dd13afd6ad849929d13','2020-08-15 01:59:09','2020-08-14 17:59:08',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(0,44,'cloud-service-admin','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','833d9494230e4dd13afd6ad849929d13','2020-08-15 09:55:47','2020-08-14 19:10:21',NULL,'172.168.0.1','I','0a051418-bbb0-4fc1-9536-51961f639ac4'),(42,45,'cloud-service-admin','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','833d9494230e4dd13afd6ad849929d13','2020-08-15 09:56:16','2020-08-14 19:10:53',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(42,46,'cloud-service-admin','DEFAULT_GROUP','','spring:\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000','2ebcd8096f4811552336616dcbd5c6d7','2020-08-15 10:00:26','2020-08-14 19:15:23',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(42,47,'cloud-service-admin','DEFAULT_GROUP','','spring:\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000','e453fbffc401c12d7663eedb156589ef','2020-08-15 10:06:23','2020-08-14 19:21:50',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(42,48,'cloud-service-admin','DEFAULT_GROUP','','spring:\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:9200\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000','009e627a4fc8f1f7a33310e6cc814a61','2020-08-15 10:13:43','2020-08-14 19:29:47',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(1,49,'learn-train-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\n','7631b72b9d9ffb780e521ea1ec64ffb1','2020-08-15 10:34:49','2020-08-14 19:52:38',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(1,50,'learn-train-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: *\n        health:\n            show-details: always\n','bb26e50fbe415fb8073c0ce9d6a4ad8e','2020-08-15 10:35:17','2020-08-14 19:53:09',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(20,51,'learn-resouces-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-resouces-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','435be983e6d80dcaacb0f720e1407ef7','2020-08-15 10:40:13','2020-08-14 19:58:30',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(17,52,'learn-baselib-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-baselib-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','94acbc86adf11a43565df8e3db0f7762','2020-08-15 12:15:32','2020-08-15 04:15:32',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(22,53,'cloud-notify-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','833d9494230e4dd13afd6ad849929d13','2020-08-15 12:16:11','2020-08-15 04:16:11',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(42,54,'cloud-service-admin','DEFAULT_GROUP','','spring:\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    mail:\n        host: smtp.163.com\n    boot:\n        admin:\n            notify:\n                mail:\n                    to: xueyj163@163.com\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:9200\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\n\n','43e03e39c45aa84371b7708c92145176','2020-08-15 12:16:37','2020-08-15 04:16:37',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(14,55,'cloud-grant-auth','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/code-auth-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n    metrics:\n        export:\n            influx:\n                enabled: true\n                db: coursemetrics\n                uri: http://localhost:8086\n                user-name: admin\n                password: admin\n                connect-timeout: 1s\n                read-timeout: 10s\n                auto-create-db: true\n                step: 1m\n                num-threads: 2\n                consistency: one\n                compressed: true\n                batch-size: 10000\nauth:\n    serviceId: donkey-cloud-auth\n    user:\n        token-header: Authorization\n    client:\n        id: donkey-cloud-wechat\n        secret: 123456\n        token-header: x-client-token\n','14da6c7e72259e0e0f80a86e902ef6c5','2020-08-15 12:57:29','2020-08-15 04:57:29',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(14,56,'cloud-grant-auth','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/code-auth-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','fe02053bcec49b0f542bcaed2af51821','2020-08-15 12:57:40','2020-08-15 04:57:41',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(17,57,'learn-baselib-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-baselib-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS','94c8183eab64bc4845ca6ede4bd0c0d7','2020-08-15 16:15:05','2020-08-15 08:15:05',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(15,58,'cloud-gateway','DEFAULT_GROUP','','spring:\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: cloud-grant-auth\n                uri: lb://cloud-grant-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-train-service\n                uri: lb://learn-train-service\n                order: 8001\n                predicates:\n                - Path=/api/train/**\n                filters:\n                - StripPrefix=2\n            -   id: code-cloud-auth\n                uri: lb://code-cloud-auth\n                order: 8002\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-baselib-service\n                uri: lb://learn-baselib-service\n                order: 8003\n                predicates:\n                - Path=/api/baselib/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','7f569fd84fee4335553ae8555fe2f5fa','2020-08-15 16:55:33','2020-08-15 08:55:33',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(17,59,'learn-baselib-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-baselib-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: ０\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS','9d283bb460ad0aaa93d916c4d7728616','2020-08-15 16:55:54','2020-08-15 08:55:55',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(15,60,'cloud-gateway','DEFAULT_GROUP','','spring:\n    zipkin:\n        base-url: http://172.168.0.211:7000/\n    cloud:\n        gateway:\n            discovery:\n                locator:\n                    lowerCaseServiceId: true\n                    enabled: true\n            routes:\n            # =====================================\n            -   id: cloud-grant-auth\n                uri: lb://cloud-grant-auth\n                order: 8000\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-train-service\n                uri: lb://learn-train-service\n                order: 8001\n                predicates:\n                - Path=/api/train/**\n                filters:\n                - StripPrefix=2\n            -   id: code-cloud-auth\n                uri: lb://code-cloud-auth\n                order: 8002\n                predicates:\n                - Path=/api/auth/**\n                filters:\n                - StripPrefix=2\n            -   id: learn-baselib-service\n                uri: lb://learn-baselib-service\n                order: 8003\n                predicates:\n                - Path=/api/baselib/**\n                filters:\n                - StripPrefix=2\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','1bceeb81888f62e7d2fe2c17784dc518','2020-08-15 16:57:25','2020-08-15 08:57:25',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(14,61,'cloud-grant-auth','DEFAULT_GROUP','','spring:\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/code-auth-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    security:\n        enabled: false\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n    endpoint:\n        health:\n            show-details: ALWAYS\n','00b5b236eb098fdbd8c659382881d7c0','2020-08-15 16:57:38','2020-08-15 08:57:38',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4'),(1,62,'learn-train-service','DEFAULT_GROUP','','spring:\n    devtools:\n        restart:\n            enabled: true\n        livereload:\n            enabled: false\n    datasource:\n        driverClassName: com.mysql.cj.jdbc.Driver\n        type: com.zaxxer.hikari.HikariDataSource\n        url: jdbc:mysql://coms.dokycloud.cn:3306/learn-train-db?characterEncoding=utf8&useSSL=false&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC\n        username: learn\n        password: ENC(q+5OTpXRumEVvtSHVPVt8w==)\n        initialSize: 1\n        maxActive: 3\n        maxIdle: 2\n        hikari:\n            data-source-properties:\n                cachePrepStmts: true\n                prepStmtCacheSize: 250\n                prepStmtCacheSqlLimit: 2048\n                useServerPrepStmts: true\n    cloud:\n        nacos:\n            discovery:\n                server-addr: ci.dokycloud.cn:8848\n        sentinel:\n            transport:\n                dashboard: ci.dokycloud.cn:9000\n            eager: true\n        inetutils:\n            preferred-networks: 172.168.0\n    redis:\n        database: 2\n        host: coms.dokycloud.cn\n        password: 88776655\n        lettuce:\n            pool:\n                max-active: 4\n                max-wait: -1ms\n                max-idle: 2\n                min-idle: 0\nmanagement:\n    endpoints:\n        web:\n            exposure:\n                include: \'*\'\n        health:\n            show-details: always\n','5a3f56f5cb7419158e785611a5497fa6','2020-08-15 16:57:54','2020-08-15 08:57:54',NULL,'172.168.0.1','U','0a051418-bbb0-4fc1-9536-51961f639ac4');
/*!40000 ALTER TABLE `his_config_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `role` varchar(50) NOT NULL,
  `resource` varchar(255) NOT NULL,
  `action` varchar(8) NOT NULL,
  UNIQUE KEY `uk_role_permission` (`role`,`resource`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `username` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  UNIQUE KEY `idx_user_role` (`username`,`role`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('nacos','ROLE_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_capacity`
--

DROP TABLE IF EXISTS `tenant_capacity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_capacity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tenant_id` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Tenant ID',
  `quota` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配额，0表示使用默认值',
  `usage` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用量',
  `max_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '聚合子配置最大个数',
  `max_aggr_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='租户容量信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_capacity`
--

LOCK TABLES `tenant_capacity` WRITE;
/*!40000 ALTER TABLE `tenant_capacity` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_capacity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_info`
--

DROP TABLE IF EXISTS `tenant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `kp` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'kp',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `tenant_name` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_name',
  `tenant_desc` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'tenant_desc',
  `create_source` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'create_source',
  `gmt_create` bigint(20) NOT NULL COMMENT '创建时间',
  `gmt_modified` bigint(20) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenant_info_kptenantid` (`kp`,`tenant_id`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='tenant_info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_info`
--

LOCK TABLES `tenant_info` WRITE;
/*!40000 ALTER TABLE `tenant_info` DISABLE KEYS */;
INSERT INTO `tenant_info` VALUES (1,'1','0a051418-bbb0-4fc1-9536-51961f639ac4','Dev','开发环境','nacos',1597338168314,1597338168314),(2,'1','80ad73b9-65d1-4e82-827d-f6ef0bdcfe3b','Test','测试环境','nacos',1597338193546,1597338193546),(3,'1','d8f1d3fd-4200-4532-bb52-5a5ceb590dc8','UAT','UAT','nacos',1597338214785,1597338214785),(4,'1','be8d701c-dacf-4318-8d49-341bea90f1d0','Prod','生产环境','nacos',1597338239270,1597338239270);
/*!40000 ALTER TABLE `tenant_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('nacos','$2a$10$EuWPZHzz32dJN7jexM34MOeYirDdFAZm2kuWj7VEOJhhZkDrxfvUu',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `code-auth-db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `code-auth-db` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `code-auth-db`;

--
-- Current Database: `codo_admin`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `codo_admin` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `codo_admin`;

--
-- Table structure for table `mg_app_settings`
--

DROP TABLE IF EXISTS `mg_app_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mg_app_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mg_app_settings`
--

LOCK TABLES `mg_app_settings` WRITE;
/*!40000 ALTER TABLE `mg_app_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mg_app_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mg_components`
--

DROP TABLE IF EXISTS `mg_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mg_components` (
  `comp_id` int(11) NOT NULL AUTO_INCREMENT,
  `component_name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mg_components`
--

LOCK TABLES `mg_components` WRITE;
/*!40000 ALTER TABLE `mg_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `mg_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mg_functions`
--

DROP TABLE IF EXISTS `mg_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mg_functions` (
  `func_id` int(11) NOT NULL AUTO_INCREMENT,
  `func_name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_code` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utime` datetime DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`func_id`),
  KEY `ix_mg_functions_method_type` (`method_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mg_functions`
--

LOCK TABLES `mg_functions` WRITE;
/*!40000 ALTER TABLE `mg_functions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mg_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mg_menus`
--

DROP TABLE IF EXISTS `mg_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mg_menus` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mg_menus`
--

LOCK TABLES `mg_menus` WRITE;
/*!40000 ALTER TABLE `mg_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `mg_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mg_resource_group`
--

DROP TABLE IF EXISTS `mg_resource_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mg_resource_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expand` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `resource_id` (`resource_id`),
  KEY `ix_mg_resource_group_state` (`state`),
  KEY `ix_mg_resource_group_expand` (`expand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mg_resource_group`
--

LOCK TABLES `mg_resource_group` WRITE;
/*!40000 ALTER TABLE `mg_resource_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `mg_resource_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mg_role_functions`
--

DROP TABLE IF EXISTS `mg_role_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mg_role_functions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `func_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_mg_role_functions_role_id` (`role_id`),
  KEY `ix_mg_role_functions_func_id` (`func_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mg_role_functions`
--

LOCK TABLES `mg_role_functions` WRITE;
/*!40000 ALTER TABLE `mg_role_functions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mg_role_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mg_role_menus`
--

DROP TABLE IF EXISTS `mg_role_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mg_role_menus` (
  `role_menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`role_menu_id`),
  KEY `ix_mg_role_menus_role_id` (`role_id`),
  KEY `ix_mg_role_menus_menu_id` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mg_role_menus`
--

LOCK TABLES `mg_role_menus` WRITE;
/*!40000 ALTER TABLE `mg_role_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `mg_role_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mg_roles`
--

DROP TABLE IF EXISTS `mg_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mg_roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `ix_mg_roles_role_name` (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mg_roles`
--

LOCK TABLES `mg_roles` WRITE;
/*!40000 ALTER TABLE `mg_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `mg_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mg_roles_components`
--

DROP TABLE IF EXISTS `mg_roles_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mg_roles_components` (
  `role_comp_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comp_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`role_comp_id`),
  KEY `ix_mg_roles_components_role_id` (`role_id`),
  KEY `ix_mg_roles_components_comp_id` (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mg_roles_components`
--

LOCK TABLES `mg_roles_components` WRITE;
/*!40000 ALTER TABLE `mg_roles_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `mg_roles_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mg_user_resource`
--

DROP TABLE IF EXISTS `mg_user_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mg_user_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_mg_user_resource_user_id` (`user_id`),
  KEY `ix_mg_user_resource_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mg_user_resource`
--

LOCK TABLES `mg_user_resource` WRITE;
/*!40000 ALTER TABLE `mg_user_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `mg_user_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mg_user_roles`
--

DROP TABLE IF EXISTS `mg_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mg_user_roles` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utime` datetime DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `ix_mg_user_roles_role_id` (`role_id`),
  KEY `ix_mg_user_roles_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mg_user_roles`
--

LOCK TABLES `mg_user_roles` WRITE;
/*!40000 ALTER TABLE `mg_user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `mg_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mg_users`
--

DROP TABLE IF EXISTS `mg_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mg_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wechat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_key` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `superuser` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `ix_mg_users_nickname` (`nickname`),
  KEY `ix_mg_users_superuser` (`superuser`),
  KEY `ix_mg_users_department` (`department`),
  KEY `ix_mg_users_tel` (`tel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mg_users`
--

LOCK TABLES `mg_users` WRITE;
/*!40000 ALTER TABLE `mg_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mg_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_record`
--

DROP TABLE IF EXISTS `operation_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_operation_record_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_record`
--

LOCK TABLES `operation_record` WRITE;
/*!40000 ALTER TABLE `operation_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `operation_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `codo_cmdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `codo_cmdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `codo_cmdb`;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_user` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_key` text COLLATE utf8mb4_unicode_ci,
  `remarks` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_user` (`admin_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_configs`
--

DROP TABLE IF EXISTS `asset_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `huawei_instance_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `huawei_cloud` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_admin_user` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_configs`
--

LOCK TABLES `asset_configs` WRITE;
/*!40000 ALTER TABLE `asset_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_db`
--

DROP TABLE IF EXISTS `asset_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_db` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idc` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_instance_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `db_public_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_port` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `db_user` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `db_pwd` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_disk` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_region` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_env` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_type` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_version` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_mark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proxy_host` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_db`
--

LOCK TABLES `asset_db` WRITE;
/*!40000 ALTER TABLE `asset_db` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_db_tag`
--

DROP TABLE IF EXISTS `asset_db_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_db_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_db_tag`
--

LOCK TABLES `asset_db_tag` WRITE;
/*!40000 ALTER TABLE `asset_db_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_db_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_error_log`
--

DROP TABLE IF EXISTS `asset_error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_error_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `error_log` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_error_log`
--

LOCK TABLES `asset_error_log` WRITE;
/*!40000 ALTER TABLE `asset_error_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_idc`
--

DROP TABLE IF EXISTS `asset_idc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_idc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `network` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bandwidth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_range` text COLLATE utf8mb4_unicode_ci,
  `remarks` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_idc`
--

LOCK TABLES `asset_idc` WRITE;
/*!40000 ALTER TABLE `asset_idc` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_idc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_operational_audit`
--

DROP TABLE IF EXISTS `asset_operational_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_operational_audit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_object` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_data` json DEFAULT NULL,
  `modify_data` json DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_operational_audit`
--

LOCK TABLES `asset_operational_audit` WRITE;
/*!40000 ALTER TABLE `asset_operational_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_operational_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_server`
--

DROP TABLE IF EXISTS `asset_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) NOT NULL,
  `idc` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_user` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_asset_server_ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_server`
--

LOCK TABLES `asset_server` WRITE;
/*!40000 ALTER TABLE `asset_server` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_server_detail`
--

DROP TABLE IF EXISTS `asset_server_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_server_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sn` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpu` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpu_cores` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memory` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os_type` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os_kernel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instance_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instance_type` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instance_state` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_server_detail`
--

LOCK TABLES `asset_server_detail` WRITE;
/*!40000 ALTER TABLE `asset_server_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_server_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_server_tag`
--

DROP TABLE IF EXISTS `asset_server_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_server_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_server_tag`
--

LOCK TABLES `asset_server_tag` WRITE;
/*!40000 ALTER TABLE `asset_server_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_server_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_tag`
--

DROP TABLE IF EXISTS `asset_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proxy_host` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_tag`
--

LOCK TABLES `asset_tag` WRITE;
/*!40000 ALTER TABLE `asset_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_tag_rule`
--

DROP TABLE IF EXISTS `asset_tag_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_tag_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idc_rule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostname_rule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_tag_rule`
--

LOCK TABLES `asset_tag_rule` WRITE;
/*!40000 ALTER TABLE `asset_tag_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_tag_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_events`
--

DROP TABLE IF EXISTS `aws_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instance_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_desc` text COLLATE utf8mb4_unicode_ci,
  `event_start_time` datetime DEFAULT NULL,
  `record_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_events`
--

LOCK TABLES `aws_events` WRITE;
/*!40000 ALTER TABLE `aws_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ssh_configs`
--

DROP TABLE IF EXISTS `ssh_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ssh_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_rsa` text COLLATE utf8mb4_unicode_ci,
  `id_rsa_pub` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ssh_configs`
--

LOCK TABLES `ssh_configs` WRITE;
/*!40000 ALTER TABLE `ssh_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ssh_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_users`
--

DROP TABLE IF EXISTS `system_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `id_rsa` text COLLATE utf8mb4_unicode_ci,
  `id_rsa_pub` text COLLATE utf8mb4_unicode_ci,
  `sudo_list` text COLLATE utf8mb4_unicode_ci,
  `bash_shell` text COLLATE utf8mb4_unicode_ci,
  `platform_users` text COLLATE utf8mb4_unicode_ci,
  `remarks` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_users`
--

LOCK TABLES `system_users` WRITE;
/*!40000 ALTER TABLE `system_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `codo_cron`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `codo_cron` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `codo_cron`;

--
-- Table structure for table `apscheduler_jobs`
--

DROP TABLE IF EXISTS `apscheduler_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apscheduler_jobs` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_run_time` double DEFAULT NULL,
  `job_state` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_apscheduler_jobs_next_run_time` (`next_run_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apscheduler_jobs`
--

LOCK TABLES `apscheduler_jobs` WRITE;
/*!40000 ALTER TABLE `apscheduler_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `apscheduler_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_log`
--

DROP TABLE IF EXISTS `cron_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_cmd` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_log` text COLLATE utf8mb4_unicode_ci,
  `exec_time` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_log`
--

LOCK TABLES `cron_log` WRITE;
/*!40000 ALTER TABLE `cron_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `codo_dns`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `codo_dns` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `codo_dns`;

--
-- Table structure for table `cloud_domain_account`
--

DROP TABLE IF EXISTS `cloud_domain_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cloud_domain_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias_name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cloud_name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cloud_code` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_key` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_cloud_domain_account_alias_name` (`alias_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloud_domain_account`
--

LOCK TABLES `cloud_domain_account` WRITE;
/*!40000 ALTER TABLE `cloud_domain_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `cloud_domain_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloud_domain_name`
--

DROP TABLE IF EXISTS `cloud_domain_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cloud_domain_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cloud_name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `record_count` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain_state` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_mark` tinyint(1) DEFAULT NULL,
  `record_end_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_cloud_domain_name_domain_name` (`domain_name`),
  UNIQUE KEY `ix_cloud_domain_name_domain_id` (`domain_id`),
  KEY `ix_cloud_domain_name_record_count` (`record_count`),
  KEY `ix_cloud_domain_name_star_mark` (`star_mark`),
  KEY `ix_cloud_domain_name_account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloud_domain_name`
--

LOCK TABLES `cloud_domain_name` WRITE;
/*!40000 ALTER TABLE `cloud_domain_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `cloud_domain_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloud_domain_opt_log`
--

DROP TABLE IF EXISTS `cloud_domain_opt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cloud_domain_opt_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record` text COLLATE utf8mb4_unicode_ci,
  `状态` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_cloud_domain_opt_log_domain_name` (`domain_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloud_domain_opt_log`
--

LOCK TABLES `cloud_domain_opt_log` WRITE;
/*!40000 ALTER TABLE `cloud_domain_opt_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cloud_domain_opt_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloud_domain_records`
--

DROP TABLE IF EXISTS `cloud_domain_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cloud_domain_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain_rr` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain_value` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain_ttl` int(11) DEFAULT NULL,
  `domain_mx` int(11) DEFAULT NULL,
  `line` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_cloud_domain_records_record_id` (`record_id`),
  KEY `ix_cloud_domain_records_domain_rr` (`domain_rr`),
  KEY `ix_cloud_domain_records_domain_name` (`domain_name`),
  KEY `ix_cloud_domain_records_account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloud_domain_records`
--

LOCK TABLES `cloud_domain_records` WRITE;
/*!40000 ALTER TABLE `cloud_domain_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `cloud_domain_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloud_domain_sync_log`
--

DROP TABLE IF EXISTS `cloud_domain_sync_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cloud_domain_sync_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `present` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `别名` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record` text COLLATE utf8mb4_unicode_ci,
  `状态` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloud_domain_sync_log`
--

LOCK TABLES `cloud_domain_sync_log` WRITE;
/*!40000 ALTER TABLE `cloud_domain_sync_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cloud_domain_sync_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_domain_conf`
--

DROP TABLE IF EXISTS `dns_domain_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dns_domain_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conf_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conf_value` text COLLATE utf8mb4_unicode_ci,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dns_domain_conf`
--

LOCK TABLES `dns_domain_conf` WRITE;
/*!40000 ALTER TABLE `dns_domain_conf` DISABLE KEYS */;
INSERT INTO `dns_domain_conf` VALUES (1,'conf_init','\noptions {\n    //listen-on port 53 { 127.0.0.1; };\n    //listen-on-v6 port 53 { ::1; };\n    directory     \"/var/named\";\n    dump-file     \"/var/named/data/cache_dump.db\";\n        statistics-file \"/var/named/data/named_stats.txt\";\n        memstatistics-file \"/var/named/data/named_mem_stats.txt\";\n    //allow-query     { localhost; };\n    recursion yes;\n\n    dnssec-enable no;\n    dnssec-validation no;\n    dnssec-lookaside auto;\n\n    allow-query-cache { any; };\n    allow-query { any; };\n\n    /* Path to ISC DLV key */\n    //bindkeys-file \"/etc/named.iscdlv.key\";\n\n    //managed-keys-directory \"/var/named/dynamic\";\n};\n//----------------------------------------\n//-------------- smart DNS ---------------\n//----------------------------------------\n//------------------ NW -------------------\ninclude \"/etc/named.neiwang.conf\";\nview \"View_NW\" {\n    match-clients { NW; };\n\n    //example_neiwang\n    /* zone \"example.com\" IN {\n        type master;\n        file \"example.com-neiwang.zone\";\n        allow-update { none; };\n    }; */\n};\n//----------------- CU -------------------\ninclude \"/etc/named.liantong.conf\";\nview \"View_CU\" {\n    match-clients { CU; };\n    //example_liantong\n    /* zone \"example.com\" IN {\n        type master;\n        file \"example.com-liantong.zone\";\n        allow-update { none; };\n    }; */\n};\n//----------------- CT -------------------\ninclude \"/etc/named.dianxin.conf\";\nview \"View_CT\" {\n    match-clients { CT; };\n\n    //example_dianxin\n    /* zone \"example.com\" IN {\n        type master;\n        file \"example.com-dianxin.zone\";\n        allow-update { none; };\n    }; */\n};\n//---------------- CERNET ----------------\ninclude \"/etc/named.jiaoyu.conf\";\nview \"View_CERNET\" {\n    match-clients { CERNET; };\n\n    //example_jiaoyu\n    /* zone \"example.com\" IN {\n        type master;\n        file \"example.com-jiaoyu.zone\";\n        allow-update { none; };\n    }; */\n};\n//---------------- ANY ----------------\nview \"View_ANY\" {\n    match-clients { any; };\n\n    //example_any\n    /* zone \"example.com\" IN {\n        type master;\n        file \"example.com.zone\";\n        allow-update { none; };\n    }; */\n};\n','2020-08-12 15:24:38'),(2,'region_init','{\"\\u9ed8\\u8ba4\": \"any\", \"\\u5185\\u7f51\": \"neiwang\", \"\\u7535\\u4fe1\": \"dianxin\", \"\\u8054\\u901a\": \"liantong\", \"\\u6559\\u80b2\": \"jiaoyu\"}','2020-08-12 15:24:38');
/*!40000 ALTER TABLE `dns_domain_conf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_domain_log`
--

DROP TABLE IF EXISTS `dns_domain_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dns_domain_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log_data` text COLLATE utf8mb4_unicode_ci,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dns_domain_log`
--

LOCK TABLES `dns_domain_log` WRITE;
/*!40000 ALTER TABLE `dns_domain_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `dns_domain_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_domain_name`
--

DROP TABLE IF EXISTS `dns_domain_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dns_domain_name` (
  `domain_id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain_code` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain_state` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`domain_id`),
  UNIQUE KEY `domain_name` (`domain_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dns_domain_name`
--

LOCK TABLES `dns_domain_name` WRITE;
/*!40000 ALTER TABLE `dns_domain_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `dns_domain_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dns_domain_zone`
--

DROP TABLE IF EXISTS `dns_domain_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dns_domain_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ttl` int(11) DEFAULT NULL,
  `data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mx` int(11) DEFAULT NULL,
  `state` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dns_domain_zone`
--

LOCK TABLES `dns_domain_zone` WRITE;
/*!40000 ALTER TABLE `dns_domain_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `dns_domain_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain_check_ssl`
--

DROP TABLE IF EXISTS `domain_check_ssl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domain_check_ssl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `record` text COLLATE utf8mb4_unicode_ci,
  `port` text COLLATE utf8mb4_unicode_ci,
  `是否启用` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `最后修改人` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_domain_check_ssl_domain_name` (`domain_name`),
  KEY `ix_domain_check_ssl_是否启用` (`是否启用`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_check_ssl`
--

LOCK TABLES `domain_check_ssl` WRITE;
/*!40000 ALTER TABLE `domain_check_ssl` DISABLE KEYS */;
/*!40000 ALTER TABLE `domain_check_ssl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `codo_kerrigan`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `codo_kerrigan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `codo_kerrigan`;

--
-- Current Database: `codo_task`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `codo_task` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `codo_task`;

--
-- Table structure for table `asset_db`
--

DROP TABLE IF EXISTS `asset_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_db` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_host` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `db_port` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `db_user` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `db_pwd` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `db_env` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proxy_host` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_mark` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_detail` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `all_dbs` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_db`
--

LOCK TABLES `asset_db` WRITE;
/*!40000 ALTER TABLE `asset_db` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_db_tag`
--

DROP TABLE IF EXISTS `asset_db_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_db_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_db_tag`
--

LOCK TABLES `asset_db_tag` WRITE;
/*!40000 ALTER TABLE `asset_db_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_db_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_proxy_info`
--

DROP TABLE IF EXISTS `asset_proxy_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_proxy_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proxy_host` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inception` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salt` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `proxy_host` (`proxy_host`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_proxy_info`
--

LOCK TABLES `asset_proxy_info` WRITE;
/*!40000 ALTER TABLE `asset_proxy_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_proxy_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_server`
--

DROP TABLE IF EXISTS `asset_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idc` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_server`
--

LOCK TABLES `asset_server` WRITE;
/*!40000 ALTER TABLE `asset_server` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_server_tag`
--

DROP TABLE IF EXISTS `asset_server_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_server_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_server_tag`
--

LOCK TABLES `asset_server_tag` WRITE;
/*!40000 ALTER TABLE `asset_server_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_server_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_tag`
--

DROP TABLE IF EXISTS `asset_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proxy_host` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_tag`
--

LOCK TABLES `asset_tag` WRITE;
/*!40000 ALTER TABLE `asset_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_jobs`
--

DROP TABLE IF EXISTS `common_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hosts_name` text COLLATE utf8mb4_unicode_ci,
  `args_items` text COLLATE utf8mb4_unicode_ci,
  `creator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_common_jobs_task_name` (`task_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_jobs`
--

LOCK TABLES `common_jobs` WRITE;
/*!40000 ALTER TABLE `common_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler_args_list`
--

DROP TABLE IF EXISTS `scheduler_args_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduler_args_list` (
  `args_id` int(11) NOT NULL AUTO_INCREMENT,
  `args_name` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `args_self` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`args_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_args_list`
--

LOCK TABLES `scheduler_args_list` WRITE;
/*!40000 ALTER TABLE `scheduler_args_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduler_args_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler_cmd_list`
--

DROP TABLE IF EXISTS `scheduler_cmd_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduler_cmd_list` (
  `command_id` int(11) NOT NULL AUTO_INCREMENT,
  `command_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `command` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `args` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `force_host` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`command_id`),
  UNIQUE KEY `command_name` (`command_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_cmd_list`
--

LOCK TABLES `scheduler_cmd_list` WRITE;
/*!40000 ALTER TABLE `scheduler_cmd_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduler_cmd_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler_execute_user`
--

DROP TABLE IF EXISTS `scheduler_execute_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduler_execute_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias_user` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exec_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssh_port` int(11) DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_key` text COLLATE utf8mb4_unicode_ci,
  `remarks` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias_user` (`alias_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_execute_user`
--

LOCK TABLES `scheduler_execute_user` WRITE;
/*!40000 ALTER TABLE `scheduler_execute_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduler_execute_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler_task_info`
--

DROP TABLE IF EXISTS `scheduler_task_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduler_task_info` (
  `sched_id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_group` int(11) DEFAULT NULL,
  `task_level` int(11) DEFAULT NULL,
  `task_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_cmd` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_args` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trigger` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exec_user` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `force_host` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exec_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sched_id`),
  KEY `ix_scheduler_task_info_list_id` (`list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_task_info`
--

LOCK TABLES `scheduler_task_info` WRITE;
/*!40000 ALTER TABLE `scheduler_task_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduler_task_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler_task_list`
--

DROP TABLE IF EXISTS `scheduler_task_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduler_task_list` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hosts` text COLLATE utf8mb4_unicode_ci,
  `args` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `associated_user` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `executor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_id` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_task_list`
--

LOCK TABLES `scheduler_task_list` WRITE;
/*!40000 ALTER TABLE `scheduler_task_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduler_task_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler_task_log`
--

DROP TABLE IF EXISTS `scheduler_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduler_task_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_key` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_level` int(11) DEFAULT NULL,
  `log_info` text COLLATE utf8mb4_unicode_ci,
  `exec_time` bigint(20) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `ix_scheduler_task_log_log_key` (`log_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_task_log`
--

LOCK TABLES `scheduler_task_log` WRITE;
/*!40000 ALTER TABLE `scheduler_task_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduler_task_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler_temp_details`
--

DROP TABLE IF EXISTS `scheduler_temp_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduler_temp_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temp_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `command_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `command` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `args` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trigger` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exec_user` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `force_host` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_temp_details`
--

LOCK TABLES `scheduler_temp_details` WRITE;
/*!40000 ALTER TABLE `scheduler_temp_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduler_temp_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler_temp_list`
--

DROP TABLE IF EXISTS `scheduler_temp_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduler_temp_list` (
  `temp_id` int(11) NOT NULL AUTO_INCREMENT,
  `temp_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`temp_id`),
  UNIQUE KEY `temp_name` (`temp_name`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_temp_list`
--

LOCK TABLES `scheduler_temp_list` WRITE;
/*!40000 ALTER TABLE `scheduler_temp_list` DISABLE KEYS */;
INSERT INTO `scheduler_temp_list` VALUES (200,'内置命令起始','system','2020-08-12 15:23:44','2020-08-12 15:23:44'),(201,'示例模板0','system','2020-08-12 15:23:44','2020-08-12 15:23:44'),(202,'示例模板1','system','2020-08-12 15:23:44','2020-08-12 15:23:44'),(203,'示例模板2','system','2020-08-12 15:23:44','2020-08-12 15:23:44'),(204,'示例模板3','system','2020-08-12 15:23:45','2020-08-12 15:23:45'),(205,'示例模板4','system','2020-08-12 15:23:45','2020-08-12 15:23:45'),(206,'示例模板5','system','2020-08-12 15:23:45','2020-08-12 15:23:45'),(207,'AWS自动部署示例1','system','2020-08-12 15:23:45','2020-08-12 15:23:45'),(208,'OSS发布示例1','system','2020-08-12 15:23:45','2020-08-12 15:23:45'),(209,'S3发布示例1','system','2020-08-12 15:23:45','2020-08-12 15:23:45'),(210,'简单发布示例1','system','2020-08-12 15:23:45','2020-08-12 15:23:45'),(211,'k8s发布示例1','system','2020-08-12 15:23:45','2020-08-12 15:23:45'),(330,'数据库审核','system','2020-08-12 15:23:45','2020-08-12 15:23:45'),(331,'数据库优化','system','2020-08-12 15:23:45','2020-08-12 15:23:45'),(332,'代码检查','system','2020-08-12 15:23:45','2020-08-12 15:23:45'),(500,'内置命令终止','system','2020-08-12 15:23:45','2020-08-12 15:23:45');
/*!40000 ALTER TABLE `scheduler_temp_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler_temp_user`
--

DROP TABLE IF EXISTS `scheduler_temp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduler_temp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temp_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler_temp_user`
--

LOCK TABLES `scheduler_temp_user` WRITE;
/*!40000 ALTER TABLE `scheduler_temp_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduler_temp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_code_repository`
--

DROP TABLE IF EXISTS `task_code_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_code_repository` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repository` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_info` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_name` (`app_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_code_repository`
--

LOCK TABLES `task_code_repository` WRITE;
/*!40000 ALTER TABLE `task_code_repository` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_code_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_docker_registry`
--

DROP TABLE IF EXISTS `task_docker_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_docker_registry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registry_url` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_name` (`project_name`),
  UNIQUE KEY `registry_url` (`registry_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_docker_registry`
--

LOCK TABLES `task_docker_registry` WRITE;
/*!40000 ALTER TABLE `task_docker_registry` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_docker_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_git_conf`
--

DROP TABLE IF EXISTS `task_git_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_git_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `git_url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_version` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deploy_key` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `git_url` (`git_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_git_conf`
--

LOCK TABLES `task_git_conf` WRITE;
/*!40000 ALTER TABLE `task_git_conf` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_git_conf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_git_group`
--

DROP TABLE IF EXISTS `task_git_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_git_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `git_url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `group_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_list` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_git_group`
--

LOCK TABLES `task_git_group` WRITE;
/*!40000 ALTER TABLE `task_git_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_git_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_git_hooks_log`
--

DROP TABLE IF EXISTS `task_git_hooks_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_git_hooks_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `git_url` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relative_path` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hook_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logs_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_git_hooks_log`
--

LOCK TABLES `task_git_hooks_log` WRITE;
/*!40000 ALTER TABLE `task_git_hooks_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_git_hooks_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_git_repo`
--

DROP TABLE IF EXISTS `task_git_repo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_git_repo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `git_url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `group_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `project_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relative_path` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssh_url_to_repo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_url_to_repo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `git_hooks` text COLLATE utf8mb4_unicode_ci,
  `user_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ssh_url_to_repo` (`ssh_url_to_repo`),
  UNIQUE KEY `http_url_to_repo` (`http_url_to_repo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_git_repo`
--

LOCK TABLES `task_git_repo` WRITE;
/*!40000 ALTER TABLE `task_git_repo` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_git_repo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_git_users`
--

DROP TABLE IF EXISTS `task_git_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_git_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `git_url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_user_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_git_users`
--

LOCK TABLES `task_git_users` WRITE;
/*!40000 ALTER TABLE `task_git_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_git_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_monitor`
--

DROP TABLE IF EXISTS `task_monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_monitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) DEFAULT NULL,
  `call_level` int(11) DEFAULT NULL,
  `call_info` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_status` int(11) DEFAULT NULL,
  `call_users` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_monitor`
--

LOCK TABLES `task_monitor` WRITE;
/*!40000 ALTER TABLE `task_monitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_monitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_publish_config`
--

DROP TABLE IF EXISTS `task_publish_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_publish_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publish_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repository` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_host` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclude_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_type1` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_path` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_file` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_hosts` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_hosts_api` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag_name` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bucket_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bucket_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bucket_path` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SecretID` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SecretKey` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docker_registry` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k8s_api` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k8s_host` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namespace` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_to` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publish_name` (`publish_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_publish_config`
--

LOCK TABLES `task_publish_config` WRITE;
/*!40000 ALTER TABLE `task_publish_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_publish_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_publish_list`
--

DROP TABLE IF EXISTS `task_publish_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_publish_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pm` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `developers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tester` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dba` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `run_env` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `step_info` text COLLATE utf8mb4_unicode_ci,
  `task_info` text COLLATE utf8mb4_unicode_ci,
  `repo_info` text COLLATE utf8mb4_unicode_ci,
  `real_publish` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_publish_list`
--

LOCK TABLES `task_publish_list` WRITE;
/*!40000 ALTER TABLE `task_publish_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_publish_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_publish_log`
--

DROP TABLE IF EXISTS `task_publish_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_publish_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `log_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_task_publish_log_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_publish_log`
--

LOCK TABLES `task_publish_log` WRITE;
/*!40000 ALTER TABLE `task_publish_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_publish_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `codo_tools`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `codo_tools` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `codo_tools`;

--
-- Table structure for table `itsm_event_record`
--

DROP TABLE IF EXISTS `itsm_event_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itsm_event_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_level` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_processing` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_start_time` datetime NOT NULL,
  `event_end_time` datetime NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itsm_event_record`
--

LOCK TABLES `itsm_event_record` WRITE;
/*!40000 ALTER TABLE `itsm_event_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `itsm_event_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itsm_fault_info`
--

DROP TABLE IF EXISTS `itsm_fault_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itsm_fault_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fault_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fault_level` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fault_state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fault_penson` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processing_penson` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fault_report` longtext COLLATE utf8mb4_unicode_ci,
  `fault_start_time` datetime NOT NULL,
  `fault_end_time` datetime NOT NULL,
  `fault_issue` longtext COLLATE utf8mb4_unicode_ci,
  `fault_summary` longtext COLLATE utf8mb4_unicode_ci,
  `create_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itsm_fault_info`
--

LOCK TABLES `itsm_fault_info` WRITE;
/*!40000 ALTER TABLE `itsm_fault_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `itsm_fault_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itsm_paid_mg`
--

DROP TABLE IF EXISTS `itsm_paid_mg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itsm_paid_mg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paid_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_start_time` datetime NOT NULL,
  `paid_end_time` datetime NOT NULL,
  `reminder_day` int(11) NOT NULL,
  `nicknames` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itsm_paid_mg`
--

LOCK TABLES `itsm_paid_mg` WRITE;
/*!40000 ALTER TABLE `itsm_paid_mg` DISABLE KEYS */;
/*!40000 ALTER TABLE `itsm_paid_mg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itsm_project_mg`
--

DROP TABLE IF EXISTS `itsm_project_mg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itsm_project_mg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_requester` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_processing` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_start_time` datetime NOT NULL,
  `project_end_time` datetime NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itsm_project_mg`
--

LOCK TABLES `itsm_project_mg` WRITE;
/*!40000 ALTER TABLE `itsm_project_mg` DISABLE KEYS */;
/*!40000 ALTER TABLE `itsm_project_mg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prometheus_alert`
--

DROP TABLE IF EXISTS `prometheus_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prometheus_alert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nicknames` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alert_level` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_file` text COLLATE utf8mb4_unicode_ci,
  `create_at` datetime DEFAULT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prometheus_alert`
--

LOCK TABLES `prometheus_alert` WRITE;
/*!40000 ALTER TABLE `prometheus_alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `prometheus_alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remind_manager`
--

DROP TABLE IF EXISTS `remind_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remind_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remind_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remind_type` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remind_method` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remind_day` int(11) DEFAULT NULL,
  `remind_time` datetime DEFAULT NULL,
  `remind_content` text COLLATE utf8mb4_unicode_ci,
  `webhook_addr` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remind_email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `nickname` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remind_manager`
--

LOCK TABLES `remind_manager` WRITE;
/*!40000 ALTER TABLE `remind_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `remind_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zabbix_config`
--

DROP TABLE IF EXISTS `zabbix_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zabbix_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zabbix_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zabbix_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zabbix_username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zabbix_password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zabbix_config`
--

LOCK TABLES `zabbix_config` WRITE;
/*!40000 ALTER TABLE `zabbix_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `zabbix_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zabbix_hook_logs`
--

DROP TABLE IF EXISTS `zabbix_hook_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zabbix_hook_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zabbix_url` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logs_info` longtext COLLATE utf8mb4_unicode_ci,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zabbix_hook_logs`
--

LOCK TABLES `zabbix_hook_logs` WRITE;
/*!40000 ALTER TABLE `zabbix_hook_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `zabbix_hook_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zabbix_hosts`
--

DROP TABLE IF EXISTS `zabbix_hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zabbix_hosts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zabbix_url` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host_id` int(11) DEFAULT NULL,
  `host_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zabbix_hooks` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zabbix_hosts`
--

LOCK TABLES `zabbix_hosts` WRITE;
/*!40000 ALTER TABLE `zabbix_hosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `zabbix_hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zabbix_submit_task`
--

DROP TABLE IF EXISTS `zabbix_submit_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zabbix_submit_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_url` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_key` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zabbix_submit_task`
--

LOCK TABLES `zabbix_submit_task` WRITE;
/*!40000 ALTER TABLE `zabbix_submit_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `zabbix_submit_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `learn-baselib-db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `learn-baselib-db` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `learn-baselib-db`;

--
-- Current Database: `learn-resouces-db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `learn-resouces-db` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `learn-resouces-db`;

--
-- Current Database: `learn-train-db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `learn-train-db` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `learn-train-db`;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columns_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('localhost','performance_schema','mysql.session','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N'),('localhost','sys','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y'),('%','codo_admin','codo','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N','N','Y','Y','N','N','N','N','N'),('%','codo_cmdb','codo','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y','N','N','N','N','N'),('%','codo_dns','codo','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y','N','N','N','N','Y'),('%','codo_kerrigan','codo','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y','N','N','N','N','Y'),('%','codo_task','codo','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y','N','N','N','N','Y'),('%','codo_tools','codo','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y','N','N','N','N','Y'),('%','codo_cron','codo','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y','N','N','N','N','Y'),('%','learn-train-db','learn','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y','N','N','N','N','Y'),('%','code-auth-db','learn','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y','N','N','N','N','Y'),('%','cloud_nacos_db','learn','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y','N','N','N','N','Y'),('%','learn-baselib-db','learn','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y','N','N','N','N','Y'),('%','learn-resouces-db','learn','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y','N','N','N','N','Y');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_cost`
--

DROP TABLE IF EXISTS `engine_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `engine_cost` (
  `engine_name` varchar(64) NOT NULL,
  `device_type` int(11) NOT NULL,
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`cost_name`,`engine_name`,`device_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_cost`
--

LOCK TABLES `engine_cost` WRITE;
/*!40000 ALTER TABLE `engine_cost` DISABLE KEYS */;
INSERT INTO `engine_cost` VALUES ('default',0,'io_block_read_cost',NULL,'2020-08-08 07:15:06',NULL),('default',0,'memory_block_read_cost',NULL,'2020-08-08 07:15:06',NULL);
/*!40000 ALTER TABLE `engine_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `body` longblob NOT NULL,
  `definer` char(93) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `execute_at` datetime DEFAULT NULL,
  `interval_value` int(11) DEFAULT NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_executed` datetime DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL DEFAULT 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL DEFAULT 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `originator` int(10) unsigned NOT NULL,
  `time_zone` char(64) CHARACTER SET latin1 NOT NULL DEFAULT 'SYSTEM',
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gtid_executed`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `gtid_executed` (
  `source_uuid` char(36) NOT NULL COMMENT 'uuid of the source where the transaction was originally executed.',
  `interval_start` bigint(20) NOT NULL COMMENT 'First number of interval.',
  `interval_end` bigint(20) NOT NULL COMMENT 'Last number of interval.',
  PRIMARY KEY (`source_uuid`,`interval_start`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (0,'Contents',0,''),(1,'Help Metadata',0,''),(2,'Data Types',0,''),(3,'Administration',0,''),(4,'Procedures',0,''),(5,'Language Structure',0,''),(6,'Geographic Features',0,''),(7,'MBR',6,''),(8,'WKT',6,''),(9,'Functions',0,''),(10,'Comparison Operators',9,''),(11,'Logical Operators',9,''),(12,'Control Flow Functions',9,''),(13,'Numeric Functions',9,''),(14,'Date and Time Functions',9,''),(15,'String Functions',9,''),(16,'Bit Functions',9,''),(17,'Encryption Functions',9,''),(18,'Locking Functions',9,''),(19,'Information Functions',9,''),(20,'Spatial Functions',9,''),(21,'WKT Functions',20,''),(22,'WKB Functions',20,''),(23,'Geometry Constructors',20,''),(24,'Geometry Property Functions',20,''),(25,'Point Property Functions',20,''),(26,'LineString Property Functions',20,''),(27,'Polygon Property Functions',20,''),(28,'GeometryCollection Property Functions',20,''),(29,'Geometry Relation Functions',20,''),(30,'MBR Functions',20,''),(31,'GROUP BY Functions and Modifiers',9,''),(32,'Miscellaneous Functions',9,''),(33,'Data Definition',0,''),(34,'Data Manipulation',0,''),(35,'Transactions',0,''),(36,'Compound Statements',0,''),(37,'Account Management',0,''),(38,'Table Maintenance',0,''),(39,'User-Defined Functions',0,''),(40,'Plugins',0,''),(41,'Utility',0,''),(42,'Storage Engines',0,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (105,'%'),(254,'&'),(469,'(JSON'),(83,'*'),(81,'+'),(82,'-'),(470,'->'),(472,'->>'),(84,'/'),(72,':='),(56,'<'),(256,'<<'),(55,'<='),(53,'<=>'),(54,'<>'),(52,'='),(58,'>'),(57,'>='),(257,'>>'),(87,'ABS'),(831,'ACCOUNT'),(88,'ACOS'),(633,'ACTION'),(46,'ADD'),(117,'ADDDATE'),(118,'ADDTIME'),(260,'AES_DECRYPT'),(261,'AES_ENCRYPT'),(569,'AFTER'),(240,'AGAINST'),(863,'AGGREGATE'),(570,'ALGORITHM'),(698,'ALL'),(47,'ALTER'),(6,'ANALYSE'),(571,'ANALYZE'),(59,'AND'),(531,'ANY_VALUE'),(634,'ARCHIVE'),(400,'AREA'),(699,'AS'),(364,'ASBINARY'),(513,'ASC'),(182,'ASCII'),(89,'ASIN'),(366,'ASTEXT'),(365,'ASWKB'),(367,'ASWKT'),(498,'ASYMMETRIC_DECRYPT'),(499,'ASYMMETRIC_DERIVE'),(500,'ASYMMETRIC_ENCRYPT'),(501,'ASYMMETRIC_SIGN'),(502,'ASYMMETRIC_VERIFY'),(623,'AT'),(90,'ATAN'),(91,'ATAN2'),(722,'AUTOCOMMIT'),(658,'AUTOEXTEND_SIZE'),(572,'AUTO_INCREMENT'),(507,'AVG'),(573,'AVG_ROW_LENGTH'),(750,'BEFORE'),(723,'BEGIN'),(282,'BENCHMARK'),(60,'BETWEEN'),(183,'BIN'),(245,'BINARY'),(886,'BINLOG'),(509,'BIT_AND'),(259,'BIT_COUNT'),(184,'BIT_LENGTH'),(510,'BIT_OR'),(511,'BIT_XOR'),(14,'BOOL'),(15,'BOOLEAN'),(227,'BOTH'),(627,'BTREE'),(415,'BUFFER'),(514,'BY'),(39,'BYTE'),(8,'CACHE'),(666,'CALL'),(635,'CASCADE'),(73,'CASE'),(246,'CAST'),(812,'CATALOG_NAME'),(92,'CEIL'),(93,'CEILING'),(401,'CENTROID'),(724,'CHAIN'),(574,'CHANGE'),(755,'CHANNEL'),(40,'CHAR'),(36,'CHARACTER'),(186,'CHARACTER_LENGTH'),(283,'CHARSET'),(185,'CHAR_LENGTH'),(575,'CHECK'),(576,'CHECKSUM'),(832,'CIPHER'),(813,'CLASS_ORIGIN'),(844,'CLIENT'),(672,'CLOSE'),(62,'COALESCE'),(889,'CODE'),(284,'COERCIBILITY'),(546,'COLLATE'),(285,'COLLATION'),(577,'COLUMN'),(578,'COLUMNS'),(814,'COLUMN_NAME'),(552,'COMMENT'),(725,'COMMIT'),(739,'COMMITTED'),(636,'COMPACT'),(553,'COMPLETION'),(262,'COMPRESS'),(637,'COMPRESSED'),(579,'COMPRESSION'),(187,'CONCAT'),(188,'CONCAT_WS'),(685,'CONCURRENT'),(808,'CONDITION'),(580,'CONNECTION'),(286,'CONNECTION_ID'),(726,'CONSISTENT'),(581,'CONSTRAINT'),(815,'CONSTRAINT_CATALOG'),(816,'CONSTRAINT_NAME'),(817,'CONSTRAINT_SCHEMA'),(446,'CONTAINS'),(809,'CONTINUE'),(94,'CONV'),(247,'CONVERT'),(119,'CONVERT_TZ'),(416,'CONVEXHULL'),(95,'COS'),(96,'COT'),(512,'COUNT'),(97,'CRC32'),(48,'CREATE'),(503,'CREATE_ASYMMETRIC_PRIV_KEY'),(504,'CREATE_ASYMMETRIC_PUB_KEY'),(505,'CREATE_DH_PARAMETERS'),(506,'CREATE_DIGEST'),(717,'CROSS'),(424,'CROSSES'),(638,'CSV'),(120,'CURDATE'),(121,'CURRENT_DATE'),(122,'CURRENT_TIME'),(123,'CURRENT_TIMESTAMP'),(287,'CURRENT_USER'),(806,'CURSOR'),(818,'CURSOR_NAME'),(124,'CURTIME'),(547,'DATA'),(288,'DATABASE'),(872,'DATABASES'),(618,'DATAFILE'),(33,'DATE'),(125,'DATEDIFF'),(248,'DATETIME'),(126,'DATE_ADD'),(141,'DATE_FORMAT'),(127,'DATE_SUB'),(128,'DAY'),(142,'DAYNAME'),(143,'DAYOFMONTH'),(144,'DAYOFWEEK'),(145,'DAYOFYEAR'),(129,'DAY_HOUR'),(130,'DAY_MINUTE'),(131,'DAY_SECOND'),(797,'DEALLOCATE'),(25,'DEC'),(28,'DECIMAL'),(798,'DECLARE'),(263,'DECODE'),(2,'DEFAULT'),(788,'DEFAULT_AUTH'),(554,'DEFINER'),(98,'DEGREES'),(679,'DELAYED'),(582,'DELAY_KEY_WRITE'),(639,'DELETE'),(515,'DESC'),(904,'DESCRIBE'),(264,'DES_DECRYPT'),(265,'DES_ENCRYPT'),(894,'DES_KEY_FILE'),(819,'DIAGNOSTICS'),(372,'DIMENSION'),(548,'DIRECTORY'),(555,'DISABLE'),(583,'DISCARD'),(447,'DISJOINT'),(425,'DISTANCE'),(508,'DISTINCT'),(700,'DISTINCTROW'),(85,'DIV'),(556,'DO'),(584,'DROP'),(716,'DUAL'),(701,'DUMPFILE'),(680,'DUPLICATE'),(640,'DYNAMIC'),(74,'ELSE'),(799,'ELSEIF'),(189,'ELT'),(557,'ENABLE'),(686,'ENCLOSED'),(266,'ENCODE'),(267,'ENCRYPT'),(585,'ENCRYPTION'),(75,'END'),(388,'ENDPOINT'),(624,'ENDS'),(586,'ENGINE'),(873,'ENGINES'),(373,'ENVELOPE'),(448,'EQUALS'),(895,'ERROR'),(874,'ERRORS'),(236,'ESCAPE'),(687,'ESCAPED'),(558,'EVENT'),(887,'EVENTS'),(625,'EVERY'),(587,'EXCHANGE'),(796,'EXECUTE'),(622,'EXISTS'),(810,'EXIT'),(99,'EXP'),(241,'EXPANSION'),(833,'EXPIRE'),(905,'EXPLAIN'),(896,'EXPORT'),(190,'EXPORT_SET'),(861,'EXTENDED'),(659,'EXTENT_SIZE'),(402,'EXTERIORRING'),(146,'EXTRACT'),(471,'EXTRACTION)'),(251,'EXTRACTVALUE'),(12,'FALSE'),(859,'FAST'),(641,'FEDERATED'),(807,'FETCH'),(191,'FIELD'),(688,'FIELDS'),(845,'FILE'),(660,'FILE_BLOCK_SIZE'),(779,'FILTER'),(192,'FIND_IN_SET'),(588,'FIRST'),(26,'FIXED'),(29,'FLOAT4'),(30,'FLOAT8'),(100,'FLOOR'),(9,'FLUSH'),(702,'FOR'),(718,'FORCE'),(589,'FOREIGN'),(193,'FORMAT'),(289,'FOUND_ROWS'),(228,'FROM'),(194,'FROM_BASE64'),(147,'FROM_DAYS'),(148,'FROM_UNIXTIME'),(642,'FULL'),(590,'FULLTEXT'),(166,'FUNCTION'),(897,'GENERAL'),(297,'GEOMCOLLFROMTEXT'),(327,'GEOMCOLLFROMWKB'),(357,'GEOMETRYCOLLECTION'),(298,'GEOMETRYCOLLECTIONFROMTEXT'),(328,'GEOMETRYCOLLECTIONFROMWKB'),(299,'GEOMETRYFROMTEXT'),(329,'GEOMETRYFROMWKB'),(411,'GEOMETRYN'),(374,'GEOMETRYTYPE'),(300,'GEOMFROMTEXT'),(330,'GEOMFROMWKB'),(820,'GET'),(149,'GET_FORMAT'),(277,'GET_LOCK'),(389,'GLENGTH'),(740,'GLOBAL'),(846,'GRANT'),(875,'GRANTS'),(63,'GREATEST'),(565,'GROUP'),(516,'GROUP_CONCAT'),(494,'GTID_SUBSET'),(495,'GTID_SUBTRACT'),(673,'HANDLER'),(703,'HAVING'),(643,'HEAP'),(5,'HELP'),(0,'HELP_DATE'),(1,'HELP_VERSION'),(195,'HEX'),(681,'HIGH_PRIORITY'),(628,'HOST'),(876,'HOSTS'),(132,'HOUR'),(133,'HOUR_MINUTE'),(134,'HOUR_SECOND'),(696,'IDENTIFIED'),(78,'IF'),(79,'IFNULL'),(682,'IGNORE'),(756,'IGNORE_SERVER_IDS'),(591,'IMPORT'),(64,'IN'),(49,'INDEX'),(877,'INDEXES'),(534,'INET6_ATON'),(535,'INET6_NTOA'),(532,'INET_ATON'),(533,'INET_NTOA'),(689,'INFILE'),(619,'INITIAL_SIZE'),(473,'INLINE'),(719,'INNER'),(644,'INNODB'),(196,'INSERT'),(592,'INSERT_METHOD'),(867,'INSTALL'),(564,'INSTANCE'),(197,'INSTR'),(16,'INT1'),(19,'INT2'),(20,'INT3'),(22,'INT4'),(24,'INT8'),(23,'INTEGER'),(403,'INTERIORRINGN'),(449,'INTERSECTS'),(65,'INTERVAL'),(683,'INTO'),(789,'IO_THREAD'),(66,'IS'),(390,'ISCLOSED'),(375,'ISEMPTY'),(68,'ISNULL'),(741,'ISOLATION'),(376,'ISSIMPLE'),(834,'ISSUER'),(278,'IS_FREE_LOCK'),(536,'IS_IPV4'),(537,'IS_IPV4_COMPAT'),(538,'IS_IPV4_MAPPED'),(539,'IS_IPV6'),(279,'IS_USED_LOCK'),(800,'ITERATE'),(704,'JOIN'),(249,'JSON'),(477,'JSON_APPEND'),(463,'JSON_ARRAY'),(519,'JSON_ARRAYAGG'),(478,'JSON_ARRAY_APPEND'),(479,'JSON_ARRAY_INSERT'),(466,'JSON_CONTAINS'),(467,'JSON_CONTAINS_PATH'),(488,'JSON_DEPTH'),(468,'JSON_EXTRACT'),(480,'JSON_INSERT'),(475,'JSON_KEYS'),(489,'JSON_LENGTH'),(481,'JSON_MERGE'),(482,'JSON_MERGE_PATCH'),(483,'JSON_MERGE_PRESERVE'),(464,'JSON_OBJECT'),(520,'JSON_OBJECTAGG'),(492,'JSON_PRETTY'),(465,'JSON_QUOTE'),(484,'JSON_REMOVE'),(485,'JSON_REPLACE'),(476,'JSON_SEARCH'),(486,'JSON_SET'),(493,'JSON_STORAGE_SIZE'),(490,'JSON_TYPE'),(487,'JSON_UNQUOTE'),(491,'JSON_VALID'),(50,'KEY'),(593,'KEYS'),(594,'KEY_BLOCK_SIZE'),(902,'KILL'),(674,'LAST'),(150,'LAST_DAY'),(290,'LAST_INSERT_ID'),(198,'LCASE'),(229,'LEADING'),(69,'LEAST'),(801,'LEAVE'),(903,'LEAVES'),(199,'LEFT'),(200,'LENGTH'),(742,'LEVEL'),(220,'LIKE'),(667,'LIMIT'),(301,'LINEFROMTEXT'),(331,'LINEFROMWKB'),(690,'LINES'),(358,'LINESTRING'),(302,'LINESTRINGFROMTEXT'),(332,'LINESTRINGFROMWKB'),(101,'LN'),(691,'LOAD'),(201,'LOAD_FILE'),(692,'LOCAL'),(151,'LOCALTIME'),(152,'LOCALTIMESTAMP'),(202,'LOCATE'),(595,'LOCK'),(102,'LOG'),(104,'LOG10'),(103,'LOG2'),(566,'LOGFILE'),(751,'LOGS'),(44,'LONG'),(45,'LONGBINARY'),(802,'LOOP'),(203,'LOWER'),(668,'LOW_PRIORITY'),(204,'LPAD'),(205,'LTRIM'),(153,'MAKEDATE'),(154,'MAKETIME'),(206,'MAKE_SET'),(752,'MASTER'),(757,'MASTER_AUTO_POSITION'),(758,'MASTER_BIND'),(759,'MASTER_CONNECT_RETRY'),(760,'MASTER_HEARTBEAT_PERIOD'),(761,'MASTER_HOST'),(762,'MASTER_LOG_FILE'),(763,'MASTER_LOG_POS'),(764,'MASTER_PASSWORD'),(765,'MASTER_PORT'),(540,'MASTER_POS_WAIT'),(766,'MASTER_RETRY_COUNT'),(767,'MASTER_SSL'),(768,'MASTER_SSL_CA'),(769,'MASTER_SSL_CERT'),(770,'MASTER_SSL_CIPHER'),(771,'MASTER_SSL_CRL'),(772,'MASTER_SSL_CRLPATH'),(773,'MASTER_SSL_KEY'),(774,'MASTER_SSL_VERIFY_SERVER_CERT'),(775,'MASTER_TLS_VERSION'),(776,'MASTER_USER'),(242,'MATCH'),(521,'MAX'),(835,'MAX_CONNECTIONS_PER_HOUR'),(836,'MAX_QUERIES_PER_HOUR'),(596,'MAX_ROWS'),(661,'MAX_SIZE'),(837,'MAX_UPDATES_PER_HOUR'),(838,'MAX_USER_CONNECTIONS'),(436,'MBRCONTAINS'),(437,'MBRCOVEREDBY'),(438,'MBRCOVERS'),(439,'MBRDISJOINT'),(440,'MBREQUAL'),(441,'MBREQUALS'),(442,'MBRINTERSECTS'),(443,'MBROVERLAPS'),(444,'MBRTOUCHES'),(445,'MBRWITHIN'),(268,'MD5'),(860,'MEDIUM'),(705,'MEMORY'),(645,'MERGE'),(821,'MESSAGE_TEXT'),(155,'MICROSECOND'),(207,'MID'),(21,'MIDDLEINT'),(522,'MIN'),(135,'MINUTE'),(136,'MINUTE_SECOND'),(597,'MIN_ROWS'),(303,'MLINEFROMTEXT'),(333,'MLINEFROMWKB'),(86,'MOD'),(243,'MODE'),(598,'MODIFY'),(137,'MONTH'),(156,'MONTHNAME'),(305,'MPOINTFROMTEXT'),(335,'MPOINTFROMWKB'),(307,'MPOLYFROMTEXT'),(337,'MPOLYFROMWKB'),(646,'MRG_MYISAM'),(359,'MULTILINESTRING'),(304,'MULTILINESTRINGFROMTEXT'),(334,'MULTILINESTRINGFROMWKB'),(360,'MULTIPOINT'),(306,'MULTIPOINTFROMTEXT'),(336,'MULTIPOINTFROMWKB'),(361,'MULTIPOLYGON'),(308,'MULTIPOLYGONFROMTEXT'),(338,'MULTIPOLYGONFROMWKB'),(878,'MUTEX'),(647,'MYISAM'),(822,'MYSQL_ERRNO'),(549,'NAME'),(871,'NAMES'),(541,'NAME_CONST'),(37,'NATIONAL'),(720,'NATURAL'),(38,'NCHAR'),(648,'NDB'),(649,'NDBCLUSTER'),(839,'NEVER'),(675,'NEXT'),(650,'NO'),(662,'NODEGROUP'),(847,'NONE'),(61,'NOT'),(157,'NOW'),(858,'NO_WRITE_TO_BINLOG'),(67,'NULL'),(80,'NULLIF'),(823,'NUMBER'),(27,'NUMERIC'),(412,'NUMGEOMETRIES'),(404,'NUMINTERIORRINGS'),(391,'NUMPOINTS'),(41,'NVARCHAR'),(208,'OCT'),(209,'OCTET_LENGTH'),(706,'OFFSET'),(559,'ON'),(727,'ONLY'),(676,'OPEN'),(599,'OPTIMIZE'),(898,'OPTIMIZER_COSTS'),(848,'OPTION'),(693,'OPTIONALLY'),(567,'OPTIONS'),(70,'OR'),(210,'ORD'),(517,'ORDER'),(721,'OUTER'),(707,'OUTFILE'),(450,'OVERLAPS'),(629,'OWNER'),(600,'PACK_KEYS'),(601,'PARSER'),(651,'PARTIAL'),(602,'PARTITION'),(603,'PARTITIONING'),(906,'PARTITIONS'),(269,'PASSWORD'),(474,'PATH)'),(158,'PERIOD_ADD'),(159,'PERIOD_DIFF'),(106,'PI'),(868,'PLUGIN'),(890,'PLUGINS'),(790,'PLUGIN_DIR'),(362,'POINT'),(309,'POINTFROMTEXT'),(339,'POINTFROMWKB'),(392,'POINTN'),(310,'POLYFROMTEXT'),(340,'POLYFROMWKB'),(363,'POLYGON'),(311,'POLYGONFROMTEXT'),(341,'POLYGONFROMWKB'),(630,'PORT'),(211,'POSITION'),(107,'POW'),(108,'POWER'),(31,'PRECISION'),(747,'PREPARE'),(560,'PRESERVE'),(677,'PREV'),(604,'PRIMARY'),(849,'PRIVILEGES'),(7,'PROCEDURE'),(850,'PROCESS'),(879,'PROCESSLIST'),(891,'PROFILE'),(892,'PROFILES'),(856,'PROXY'),(753,'PURGE'),(160,'QUARTER'),(10,'QUERY'),(669,'QUICK'),(212,'QUOTE'),(109,'RADIANS'),(110,'RAND'),(270,'RANDOM_BYTES'),(678,'READ'),(32,'REAL'),(605,'REBUILD'),(748,'RECOVER'),(652,'REDUNDANT'),(653,'REFERENCES'),(238,'REGEXP'),(899,'RELAY'),(893,'RELAYLOG'),(777,'RELAY_LOG_FILE'),(778,'RELAY_LOG_POS'),(728,'RELEASE'),(280,'RELEASE_ALL_LOCKS'),(281,'RELEASE_LOCK'),(851,'RELOAD'),(606,'REMOVE'),(561,'RENAME'),(607,'REORGANIZE'),(608,'REPAIR'),(213,'REPEAT'),(743,'REPEATABLE'),(214,'REPLACE'),(780,'REPLICATE_DO_DB'),(781,'REPLICATE_DO_TABLE'),(782,'REPLICATE_IGNORE_DB'),(783,'REPLICATE_IGNORE_TABLE'),(784,'REPLICATE_REWRITE_DB'),(785,'REPLICATE_WILD_DO_TABLE'),(786,'REPLICATE_WILD_IGNORE_TABLE'),(787,'REPLICATION'),(840,'REQUIRE'),(11,'RESET'),(828,'RESIGNAL'),(656,'RESTRICT'),(804,'RETURN'),(824,'RETURNED_SQLSTATE'),(864,'RETURNS'),(215,'REVERSE'),(857,'REVOKE'),(216,'RIGHT'),(239,'RLIKE'),(729,'ROLLBACK'),(111,'ROUND'),(697,'ROWS'),(291,'ROW_COUNT'),(609,'ROW_FORMAT'),(217,'RPAD'),(218,'RTRIM'),(735,'SAVEPOINT'),(562,'SCHEDULE'),(292,'SCHEMA'),(880,'SCHEMAS'),(825,'SCHEMA_NAME'),(138,'SECOND'),(852,'SECURITY'),(161,'SEC_TO_TIME'),(684,'SELECT'),(518,'SEPARATOR'),(3,'SERIAL'),(744,'SERIALIZABLE'),(568,'SERVER'),(745,'SESSION'),(293,'SESSION_USER'),(550,'SET'),(271,'SHA'),(272,'SHA1'),(273,'SHA2'),(708,'SHARE'),(881,'SHOW'),(853,'SHUTDOWN'),(112,'SIGN'),(830,'SIGNAL'),(250,'SIGNED'),(113,'SIN'),(563,'SLAVE'),(542,'SLEEP'),(900,'SLOW'),(730,'SNAPSHOT'),(631,'SOCKET'),(865,'SONAME'),(219,'SOUNDEX'),(221,'SOUNDS'),(222,'SPACE'),(610,'SPATIAL'),(829,'SQLSTATE'),(791,'SQL_AFTER_GTIDS'),(792,'SQL_AFTER_MTS_GAPS'),(793,'SQL_BEFORE_GTIDS'),(709,'SQL_BIG_RESULT'),(710,'SQL_BUFFER_RESULT'),(711,'SQL_CACHE'),(712,'SQL_CALC_FOUND_ROWS'),(754,'SQL_LOG_BIN'),(713,'SQL_NO_CACHE'),(714,'SQL_SMALL_RESULT'),(794,'SQL_THREAD'),(114,'SQRT'),(377,'SRID'),(841,'SSL'),(731,'START'),(694,'STARTING'),(399,'STARTPOINT'),(626,'STARTS'),(611,'STATS_AUTO_RECALC'),(612,'STATS_PERSISTENT'),(613,'STATS_SAMPLE_PAGES'),(882,'STATUS'),(523,'STD'),(524,'STDDEV'),(525,'STDDEV_POP'),(526,'STDDEV_SAMP'),(795,'STOP'),(888,'STORAGE'),(654,'STORED'),(715,'STRAIGHT_JOIN'),(237,'STRCMP'),(866,'STRING'),(162,'STR_TO_DATE'),(405,'ST_AREA'),(368,'ST_ASBINARY'),(456,'ST_ASGEOJSON'),(370,'ST_ASTEXT'),(369,'ST_ASWKB'),(371,'ST_ASWKT'),(417,'ST_BUFFER'),(418,'ST_BUFFER_STRATEGY'),(406,'ST_CENTROID'),(426,'ST_CONTAINS'),(419,'ST_CONVEXHULL'),(427,'ST_CROSSES'),(420,'ST_DIFFERENCE'),(378,'ST_DIMENSION'),(428,'ST_DISJOINT'),(429,'ST_DISTANCE'),(458,'ST_DISTANCE_SPHERE'),(393,'ST_ENDPOINT'),(379,'ST_ENVELOPE'),(430,'ST_EQUALS'),(407,'ST_EXTERIORRING'),(452,'ST_GEOHASH'),(312,'ST_GEOMCOLLFROMTEXT'),(342,'ST_GEOMCOLLFROMWKB'),(313,'ST_GEOMETRYCOLLECTIONFROMTEXT'),(343,'ST_GEOMETRYCOLLECTIONFROMWKB'),(314,'ST_GEOMETRYFROMTEXT'),(344,'ST_GEOMETRYFROMWKB'),(413,'ST_GEOMETRYN'),(380,'ST_GEOMETRYTYPE'),(457,'ST_GEOMFROMGEOJSON'),(315,'ST_GEOMFROMTEXT'),(345,'ST_GEOMFROMWKB'),(408,'ST_INTERIORRINGN'),(421,'ST_INTERSECTION'),(431,'ST_INTERSECTS'),(394,'ST_ISCLOSED'),(381,'ST_ISEMPTY'),(382,'ST_ISSIMPLE'),(459,'ST_ISVALID'),(453,'ST_LATFROMGEOHASH'),(395,'ST_LENGTH'),(316,'ST_LINEFROMTEXT'),(346,'ST_LINEFROMWKB'),(317,'ST_LINESTRINGFROMTEXT'),(347,'ST_LINESTRINGFROMWKB'),(454,'ST_LONGFROMGEOHASH'),(460,'ST_MAKEENVELOPE'),(318,'ST_MLINEFROMTEXT'),(348,'ST_MLINEFROMWKB'),(320,'ST_MPOINTFROMTEXT'),(350,'ST_MPOINTFROMWKB'),(322,'ST_MPOLYFROMTEXT'),(352,'ST_MPOLYFROMWKB'),(319,'ST_MULTILINESTRINGFROMTEXT'),(349,'ST_MULTILINESTRINGFROMWKB'),(321,'ST_MULTIPOINTFROMTEXT'),(351,'ST_MULTIPOINTFROMWKB'),(323,'ST_MULTIPOLYGONFROMTEXT'),(353,'ST_MULTIPOLYGONFROMWKB'),(414,'ST_NUMGEOMETRIES'),(409,'ST_NUMINTERIORRING'),(410,'ST_NUMINTERIORRINGS'),(396,'ST_NUMPOINTS'),(432,'ST_OVERLAPS'),(455,'ST_POINTFROMGEOHASH'),(324,'ST_POINTFROMTEXT'),(354,'ST_POINTFROMWKB'),(397,'ST_POINTN'),(325,'ST_POLYFROMTEXT'),(355,'ST_POLYFROMWKB'),(326,'ST_POLYGONFROMTEXT'),(356,'ST_POLYGONFROMWKB'),(461,'ST_SIMPLIFY'),(383,'ST_SRID'),(398,'ST_STARTPOINT'),(422,'ST_SYMDIFFERENCE'),(433,'ST_TOUCHES'),(423,'ST_UNION'),(462,'ST_VALIDATE'),(434,'ST_WITHIN'),(384,'ST_X'),(385,'ST_Y'),(826,'SUBCLASS_ORIGIN'),(163,'SUBDATE'),(842,'SUBJECT'),(223,'SUBSTR'),(224,'SUBSTRING'),(225,'SUBSTRING_INDEX'),(164,'SUBTIME'),(527,'SUM'),(854,'SUPER'),(165,'SYSDATE'),(294,'SYSTEM_USER'),(51,'TABLE'),(737,'TABLES'),(614,'TABLESPACE'),(827,'TABLE_NAME'),(115,'TAN'),(665,'TEMPORARY'),(695,'TERMINATED'),(76,'THEN'),(35,'TIME'),(167,'TIMEDIFF'),(34,'TIMESTAMP'),(168,'TIMESTAMPADD'),(169,'TIMESTAMPDIFF'),(170,'TIME_FORMAT'),(171,'TIME_TO_SEC'),(736,'TO'),(435,'TOUCHES'),(226,'TO_BASE64'),(172,'TO_DAYS'),(173,'TO_SECONDS'),(907,'TRADITIONAL'),(230,'TRAILING'),(732,'TRANSACTION'),(664,'TRIGGER'),(883,'TRIGGERS'),(231,'TRIM'),(13,'TRUE'),(116,'TRUNCATE'),(615,'TYPE'),(232,'UCASE'),(746,'UNCOMMITTED'),(274,'UNCOMPRESS'),(275,'UNCOMPRESSED_LENGTH'),(811,'UNDO'),(233,'UNHEX'),(869,'UNINSTALL'),(616,'UNION'),(617,'UNIQUE'),(174,'UNIX_TIMESTAMP'),(738,'UNLOCK'),(17,'UNSIGNED'),(803,'UNTIL'),(657,'UPDATE'),(252,'UPDATEXML'),(551,'UPGRADE'),(234,'UPPER'),(855,'USAGE'),(663,'USE'),(295,'USER'),(901,'USER_RESOURCES'),(862,'USE_FRM'),(670,'USING'),(175,'UTC_DATE'),(176,'UTC_TIME'),(177,'UTC_TIMESTAMP'),(543,'UUID'),(544,'UUID_SHORT'),(276,'VALIDATE_PASSWORD_STRENGTH'),(4,'VALUE'),(545,'VALUES'),(42,'VARCHARACTER'),(870,'VARIABLE'),(884,'VARIABLES'),(530,'VARIANCE'),(43,'VARYING'),(528,'VAR_POP'),(529,'VAR_SAMP'),(296,'VERSION'),(621,'VIEW'),(655,'VIRTUAL'),(620,'WAIT'),(496,'WAIT_FOR_EXECUTED_GTID_SET'),(497,'WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS'),(885,'WARNINGS'),(178,'WEEK'),(179,'WEEKDAY'),(180,'WEEKOFYEAR'),(235,'WEIGHT_STRING'),(77,'WHEN'),(671,'WHERE'),(805,'WHILE'),(244,'WITH'),(451,'WITHIN'),(733,'WORK'),(632,'WRAPPER'),(734,'WRITE'),(386,'X'),(843,'X509'),(749,'XA'),(71,'XOR'),(387,'Y'),(139,'YEAR'),(181,'YEARWEEK'),(140,'YEAR_MONTH'),(18,'ZEROFILL'),(255,'^'),(253,'|'),(258,'~');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (0,0),(1,1),(2,2),(471,2),(486,2),(487,2),(494,2),(497,2),(498,2),(505,2),(506,2),(527,2),(532,2),(563,2),(581,2),(582,2),(2,3),(505,3),(2,4),(527,4),(532,4),(579,4),(580,4),(3,5),(656,5),(4,6),(4,7),(492,7),(502,7),(503,7),(514,7),(515,7),(533,7),(601,7),(613,7),(632,7),(633,7),(5,8),(647,8),(648,8),(650,8),(651,8),(5,9),(648,9),(5,10),(229,10),(648,10),(649,10),(651,10),(5,11),(550,11),(554,11),(651,11),(6,12),(7,12),(6,13),(7,13),(9,14),(10,14),(9,15),(229,15),(9,16),(9,17),(13,17),(15,17),(16,17),(18,17),(19,17),(232,17),(9,18),(13,18),(15,18),(16,18),(18,18),(19,18),(11,19),(12,20),(12,21),(13,22),(13,23),(232,23),(593,23),(15,24),(16,25),(16,26),(505,26),(16,27),(17,28),(232,28),(593,28),(18,29),(19,30),(19,31),(19,32),(593,32),(21,33),(122,33),(124,33),(232,33),(23,34),(158,34),(24,35),(156,35),(232,35),(26,36),(28,36),(486,36),(487,36),(494,36),(497,36),(498,36),(505,36),(530,36),(531,36),(533,36),(598,36),(599,36),(601,36),(605,36),(26,37),(28,37),(26,38),(27,39),(27,40),(177,40),(232,40),(28,41),(28,42),(28,43),(37,44),(37,45),(46,46),(494,46),(495,46),(507,46),(46,47),(486,47),(487,47),(488,47),(489,47),(490,47),(491,47),(492,47),(493,47),(494,47),(495,47),(496,47),(581,47),(584,47),(46,48),(497,48),(498,48),(499,48),(500,48),(501,48),(502,48),(503,48),(504,48),(505,48),(507,48),(508,48),(509,48),(582,48),(593,48),(601,48),(609,48),(610,48),(611,48),(612,48),(613,48),(614,48),(616,48),(46,49),(494,49),(500,49),(505,49),(513,49),(535,49),(601,49),(627,49),(647,49),(650,49),(46,50),(494,50),(505,50),(506,50),(527,50),(46,51),(494,51),(505,51),(517,51),(521,51),(522,51),(588,51),(589,51),(590,51),(591,51),(592,51),(601,51),(614,51),(641,51),(47,52),(72,52),(48,53),(49,54),(50,55),(51,56),(52,57),(53,58),(54,59),(68,59),(54,60),(55,60),(55,61),(59,61),(62,61),(64,61),(67,61),(225,61),(227,61),(497,61),(498,61),(499,61),(582,61),(56,62),(494,62),(57,63),(58,64),(59,64),(229,64),(533,64),(604,64),(607,64),(608,64),(627,64),(637,64),(60,65),(124,65),(499,65),(581,65),(582,65),(61,66),(62,66),(63,66),(64,66),(63,67),(64,67),(506,67),(65,68),(66,69),(69,70),(70,71),(71,72),(73,73),(564,73),(73,74),(564,74),(73,75),(547,75),(561,75),(564,75),(565,75),(568,75),(569,75),(571,75),(73,76),(564,76),(565,76),(73,77),(564,77),(74,78),(497,78),(498,78),(499,78),(510,78),(511,78),(512,78),(516,78),(517,78),(520,78),(565,78),(581,78),(582,78),(583,78),(75,79),(76,80),(77,81),(78,82),(79,82),(80,83),(81,84),(82,85),(83,86),(102,86),(84,87),(85,88),(86,89),(87,90),(88,91),(89,92),(90,93),(91,94),(92,95),(93,96),(94,97),(95,98),(96,99),(97,100),(98,101),(99,102),(100,103),(101,104),(102,105),(103,106),(104,107),(105,108),(106,109),(107,110),(108,111),(109,112),(110,113),(111,114),(112,115),(113,116),(494,116),(522,116),(114,117),(115,118),(116,119),(117,120),(118,121),(119,122),(120,123),(121,124),(123,125),(124,126),(124,127),(126,127),(124,128),(127,128),(124,129),(124,130),(124,131),(124,132),(136,132),(124,133),(124,134),(124,135),(143,135),(124,136),(124,137),(144,137),(124,138),(150,138),(124,139),(172,139),(124,140),(125,141),(128,142),(129,143),(130,144),(131,145),(132,146),(133,147),(134,148),(135,149),(137,150),(138,151),(139,152),(140,153),(141,154),(142,155),(145,156),(146,157),(147,158),(148,159),(149,160),(151,161),(152,162),(153,163),(154,164),(155,165),(156,166),(158,166),(207,166),(489,166),(502,166),(503,166),(514,166),(515,166),(593,166),(594,166),(601,166),(612,166),(624,166),(625,166),(157,167),(159,168),(160,169),(161,170),(162,171),(163,172),(164,173),(165,174),(166,175),(167,176),(168,177),(169,178),(170,179),(171,180),(173,181),(174,182),(175,183),(176,184),(178,185),(179,186),(180,187),(181,188),(182,189),(183,190),(184,191),(185,192),(186,193),(653,193),(654,193),(655,193),(187,194),(188,195),(189,196),(527,196),(528,196),(529,196),(190,197),(191,198),(192,199),(535,199),(193,200),(194,201),(195,202),(196,203),(197,204),(198,205),(199,206),(200,207),(201,208),(202,209),(203,210),(204,211),(205,212),(206,213),(569,213),(207,214),(530,214),(531,214),(532,214),(208,215),(209,216),(535,216),(210,217),(211,218),(212,219),(213,220),(225,220),(601,220),(607,220),(608,220),(213,221),(214,222),(215,223),(216,224),(217,225),(218,226),(219,227),(219,228),(524,228),(533,228),(601,228),(604,228),(607,228),(608,228),(627,228),(637,228),(219,229),(219,230),(219,231),(220,232),(221,233),(222,234),(223,235),(224,236),(226,237),(227,238),(228,239),(229,240),(229,241),(229,242),(229,243),(533,243),(229,244),(494,244),(500,244),(505,244),(581,244),(582,244),(584,244),(648,244),(230,245),(232,245),(548,245),(549,245),(602,245),(603,245),(648,245),(231,246),(231,247),(232,247),(232,248),(232,249),(653,249),(654,249),(655,249),(232,250),(233,251),(234,252),(235,253),(236,254),(237,255),(238,256),(239,257),(240,258),(241,259),(242,260),(243,261),(244,262),(245,263),(246,264),(247,265),(248,266),(249,267),(250,268),(251,269),(494,269),(504,269),(555,269),(581,269),(582,269),(584,269),(587,269),(252,270),(253,271),(253,272),(254,273),(255,274),(256,275),(257,276),(258,277),(259,278),(260,279),(261,280),(262,281),(263,282),(264,283),(598,283),(599,283),(265,284),(266,285),(601,285),(606,285),(267,286),(268,287),(488,287),(499,287),(269,288),(486,288),(487,288),(497,288),(498,288),(504,288),(510,288),(511,288),(601,288),(609,288),(610,288),(270,289),(271,290),(272,291),(578,291),(273,292),(486,292),(487,292),(497,292),(498,292),(510,292),(511,292),(601,292),(609,292),(610,292),(274,293),(275,294),(276,295),(504,295),(555,295),(581,295),(582,295),(583,295),(585,295),(616,295),(277,296),(278,297),(278,298),(279,299),(279,300),(280,301),(280,302),(281,303),(281,304),(282,305),(282,306),(283,307),(283,308),(284,309),(285,310),(285,311),(286,312),(286,313),(287,314),(287,315),(288,316),(288,317),(289,318),(289,319),(290,320),(290,321),(291,322),(291,323),(292,324),(293,325),(293,326),(294,327),(294,328),(295,329),(295,330),(296,331),(296,332),(297,333),(297,334),(298,335),(298,336),(299,337),(299,338),(300,339),(301,340),(301,341),(302,342),(302,343),(303,344),(303,345),(304,346),(304,347),(305,348),(305,349),(306,350),(306,351),(307,352),(307,353),(308,354),(309,355),(309,356),(310,357),(311,358),(312,359),(313,360),(314,361),(315,362),(316,363),(317,364),(317,365),(318,366),(318,367),(319,368),(319,369),(320,370),(320,371),(321,372),(322,373),(323,374),(324,375),(325,376),(326,377),(327,378),(328,379),(329,380),(330,381),(331,382),(332,383),(333,384),(334,385),(335,386),(336,387),(337,388),(338,389),(339,390),(340,391),(341,392),(342,393),(343,394),(344,395),(345,396),(346,397),(347,398),(348,399),(349,400),(350,401),(351,402),(352,403),(353,404),(354,405),(355,406),(356,407),(357,408),(358,409),(358,410),(359,411),(360,412),(361,413),(362,414),(363,415),(364,416),(365,417),(366,418),(367,419),(368,420),(369,421),(370,422),(371,423),(372,424),(373,425),(374,426),(375,427),(376,428),(377,429),(378,430),(379,431),(380,432),(381,433),(382,434),(383,435),(384,436),(385,437),(386,438),(387,439),(388,440),(389,441),(390,442),(391,443),(392,444),(393,445),(394,446),(395,447),(396,448),(397,449),(398,450),(399,451),(400,452),(401,453),(402,454),(403,455),(404,456),(405,457),(406,458),(407,459),(408,460),(409,461),(410,462),(411,463),(412,464),(413,465),(414,466),(415,467),(416,468),(417,469),(418,469),(417,470),(417,471),(418,472),(418,473),(418,474),(419,475),(420,476),(421,477),(422,478),(423,479),(424,480),(425,481),(426,482),(427,483),(428,484),(429,485),(430,486),(431,487),(432,488),(433,489),(434,490),(435,491),(436,492),(437,493),(438,494),(439,495),(440,496),(441,497),(442,498),(443,499),(444,500),(445,501),(446,502),(447,503),(448,504),(449,505),(450,506),(451,507),(451,508),(456,508),(457,508),(460,508),(461,508),(466,508),(533,508),(536,508),(452,509),(453,510),(454,511),(455,512),(456,512),(622,512),(645,512),(457,513),(533,513),(457,514),(494,514),(505,514),(524,514),(530,514),(531,514),(533,514),(537,514),(581,514),(582,514),(584,514),(457,515),(533,515),(653,515),(654,515),(655,515),(457,516),(457,517),(494,517),(524,517),(533,517),(537,517),(457,518),(458,519),(459,520),(460,521),(461,522),(462,523),(463,524),(464,525),(465,526),(466,527),(467,528),(468,529),(469,530),(470,531),(472,532),(473,533),(474,534),(475,535),(476,536),(477,537),(478,538),(479,539),(480,540),(481,541),(482,542),(483,543),(484,544),(485,545),(527,545),(532,545),(486,546),(487,546),(494,546),(497,546),(498,546),(505,546),(486,547),(487,547),(494,547),(504,547),(505,547),(530,547),(486,548),(487,548),(494,548),(505,548),(486,549),(487,549),(486,550),(487,550),(494,550),(497,550),(498,550),(505,550),(506,550),(527,550),(530,550),(531,550),(532,550),(533,550),(537,550),(538,550),(539,550),(540,550),(541,550),(551,550),(579,550),(580,550),(587,550),(597,550),(598,550),(599,550),(600,550),(601,550),(605,550),(486,551),(487,551),(494,551),(589,551),(488,552),(494,552),(499,552),(500,552),(505,552),(507,552),(488,553),(499,553),(488,554),(499,554),(488,555),(494,555),(499,555),(488,556),(499,556),(525,556),(571,556),(488,557),(494,557),(499,557),(488,558),(499,558),(512,558),(611,558),(488,559),(499,559),(506,559),(535,559),(488,560),(499,560),(488,561),(494,561),(521,561),(585,561),(488,562),(499,562),(488,563),(499,563),(554,563),(555,563),(556,563),(638,563),(639,563),(651,563),(490,564),(491,565),(501,565),(507,565),(533,565),(491,566),(501,566),(507,566),(493,567),(504,567),(493,568),(504,568),(516,568),(494,569),(494,570),(494,571),(588,571),(494,572),(494,573),(505,573),(494,574),(552,574),(553,574),(494,575),(505,575),(589,575),(494,576),(505,576),(590,576),(494,577),(494,578),(505,578),(530,578),(601,578),(607,578),(608,578),(494,579),(494,580),(505,580),(649,580),(653,580),(654,580),(655,580),(494,581),(505,581),(494,582),(505,582),(494,583),(494,584),(495,584),(510,584),(511,584),(512,584),(513,584),(514,584),(515,584),(516,584),(517,584),(518,584),(519,584),(520,584),(559,584),(560,584),(583,584),(594,584),(494,585),(494,586),(495,586),(505,586),(507,586),(518,586),(601,586),(620,586),(648,586),(494,587),(494,588),(505,588),(526,588),(494,589),(504,589),(505,589),(506,589),(494,590),(500,590),(505,590),(494,591),(530,591),(494,592),(505,592),(494,593),(601,593),(627,593),(494,594),(505,594),(494,595),(533,595),(545,595),(581,595),(582,595),(648,595),(494,596),(505,596),(494,597),(505,597),(494,598),(494,599),(591,599),(494,600),(505,600),(494,601),(500,601),(505,601),(494,602),(505,602),(524,602),(527,602),(530,602),(532,602),(533,602),(535,602),(647,602),(650,602),(494,603),(494,604),(494,605),(494,606),(494,607),(494,608),(592,608),(494,609),(505,609),(494,610),(500,610),(494,611),(505,611),(494,612),(505,612),(494,613),(505,613),(494,614),(495,614),(507,614),(518,614),(494,615),(494,616),(536,616),(494,617),(495,618),(507,618),(495,619),(507,619),(495,620),(507,620),(496,621),(509,621),(520,621),(497,622),(498,622),(499,622),(510,622),(511,622),(512,622),(516,622),(517,622),(520,622),(581,622),(582,622),(583,622),(499,623),(499,624),(499,625),(499,626),(500,627),(504,628),(504,629),(504,630),(504,631),(504,632),(505,633),(506,633),(505,634),(505,635),(506,635),(517,635),(520,635),(505,636),(505,637),(505,638),(530,638),(505,639),(506,639),(524,639),(505,640),(505,641),(505,642),(601,642),(607,642),(608,642),(634,642),(642,642),(505,643),(505,644),(601,644),(505,645),(505,646),(505,647),(505,648),(505,649),(505,650),(506,650),(505,651),(505,652),(505,653),(506,653),(584,653),(505,654),(505,655),(506,656),(517,656),(520,656),(506,657),(527,657),(533,657),(537,657),(507,658),(507,659),(507,660),(507,661),(507,662),(507,663),(535,663),(657,663),(508,664),(519,664),(601,664),(517,665),(523,666),(524,667),(526,667),(533,667),(537,667),(604,667),(637,667),(524,668),(527,668),(530,668),(531,668),(532,668),(537,668),(545,668),(524,669),(589,669),(592,669),(524,670),(535,670),(558,670),(524,671),(526,671),(537,671),(607,671),(608,671),(627,671),(526,672),(572,672),(526,673),(577,673),(526,674),(526,675),(526,676),(575,676),(601,676),(629,676),(526,677),(526,678),(538,678),(539,678),(540,678),(541,678),(545,678),(546,678),(547,678),(648,678),(527,679),(529,679),(532,679),(527,680),(527,681),(533,681),(527,682),(530,682),(531,682),(533,682),(535,682),(537,682),(650,682),(527,683),(532,683),(533,683),(650,683),(527,684),(528,684),(532,684),(533,684),(653,684),(654,684),(655,684),(530,685),(531,685),(530,686),(530,687),(530,688),(601,688),(607,688),(608,688),(530,689),(531,689),(530,690),(531,690),(530,691),(650,691),(530,692),(531,692),(545,692),(588,692),(591,692),(592,692),(648,692),(530,693),(530,694),(530,695),(531,696),(581,696),(582,696),(584,696),(531,697),(533,698),(536,698),(554,698),(584,698),(586,698),(647,698),(650,698),(533,699),(535,699),(545,699),(581,699),(582,699),(533,700),(533,701),(533,702),(552,702),(554,702),(555,702),(556,702),(573,702),(576,702),(577,702),(587,702),(601,702),(637,702),(639,702),(648,702),(653,702),(654,702),(655,702),(533,703),(533,704),(535,704),(533,705),(533,706),(533,707),(533,708),(533,709),(533,710),(533,711),(533,712),(533,713),(533,714),(533,715),(535,715),(534,716),(535,717),(535,718),(535,719),(535,720),(535,721),(538,722),(539,722),(540,722),(541,722),(538,723),(539,723),(540,723),(541,723),(547,723),(561,723),(538,724),(539,724),(540,724),(541,724),(538,725),(539,725),(540,725),(541,725),(547,725),(538,726),(539,726),(540,726),(541,726),(547,726),(538,727),(539,727),(540,727),(541,727),(546,727),(547,727),(538,728),(539,728),(540,728),(541,728),(542,728),(543,728),(544,728),(547,728),(538,729),(539,729),(540,729),(541,729),(542,729),(543,729),(544,729),(547,729),(538,730),(539,730),(540,730),(541,730),(547,730),(538,731),(539,731),(540,731),(541,731),(547,731),(555,731),(538,732),(539,732),(540,732),(541,732),(546,732),(538,733),(539,733),(540,733),(541,733),(538,734),(539,734),(540,734),(541,734),(545,734),(546,734),(547,734),(542,735),(543,735),(544,735),(542,736),(543,736),(544,736),(548,736),(549,736),(552,736),(545,737),(601,737),(629,737),(642,737),(648,737),(545,738),(581,738),(582,738),(546,739),(546,740),(597,740),(640,740),(644,740),(546,741),(546,742),(546,743),(546,744),(546,745),(597,745),(640,745),(644,745),(546,746),(547,747),(557,747),(559,747),(560,747),(547,748),(547,749),(548,750),(549,750),(548,751),(549,751),(601,751),(602,751),(603,751),(648,751),(548,752),(549,752),(550,752),(552,752),(602,752),(603,752),(628,752),(651,752),(548,753),(549,753),(551,754),(552,755),(554,755),(555,755),(556,755),(637,755),(639,755),(648,755),(552,756),(552,757),(552,758),(552,759),(552,760),(552,761),(552,762),(552,763),(552,764),(552,765),(552,766),(552,767),(552,768),(552,769),(552,770),(552,771),(552,772),(552,773),(552,774),(552,775),(552,776),(552,777),(552,778),(553,779),(553,780),(553,781),(553,782),(553,783),(553,784),(553,785),(553,786),(553,787),(584,787),(555,788),(555,789),(556,789),(555,790),(555,791),(555,792),(555,793),(555,794),(556,794),(556,795),(558,796),(584,796),(559,797),(560,797),(563,798),(573,798),(576,798),(577,798),(565,799),(566,800),(567,801),(568,802),(569,803),(570,804),(571,805),(573,806),(574,807),(576,808),(577,809),(577,810),(577,811),(578,812),(579,812),(580,812),(578,813),(579,813),(580,813),(578,814),(579,814),(580,814),(578,815),(579,815),(580,815),(578,816),(579,816),(580,816),(578,817),(579,817),(580,817),(578,818),(579,818),(580,818),(578,819),(578,820),(578,821),(579,821),(580,821),(578,822),(579,822),(580,822),(578,823),(578,824),(578,825),(579,825),(580,825),(578,826),(579,826),(580,826),(578,827),(579,827),(580,827),(579,828),(579,829),(580,829),(580,830),(581,831),(582,831),(581,832),(582,832),(584,832),(581,833),(582,833),(581,834),(582,834),(584,834),(581,835),(582,835),(584,835),(581,836),(582,836),(584,836),(581,837),(582,837),(584,837),(581,838),(582,838),(584,838),(581,839),(582,839),(581,840),(582,840),(584,840),(581,841),(582,841),(584,841),(581,842),(582,842),(584,842),(581,843),(582,843),(584,843),(584,844),(584,845),(584,846),(586,846),(584,847),(584,848),(586,848),(584,849),(586,849),(631,849),(648,849),(584,850),(584,851),(584,852),(584,853),(652,853),(584,854),(584,855),(586,856),(586,857),(588,858),(591,858),(592,858),(648,858),(589,859),(589,860),(592,861),(653,861),(654,861),(655,861),(592,862),(593,863),(593,864),(593,865),(593,866),(595,867),(595,868),(596,868),(601,868),(596,869),(597,870),(600,871),(601,872),(618,872),(619,872),(601,873),(621,873),(601,874),(622,874),(601,875),(626,875),(601,876),(638,876),(648,876),(601,877),(601,878),(620,878),(601,879),(634,879),(601,880),(618,880),(619,880),(601,881),(602,881),(603,881),(604,881),(605,881),(606,881),(607,881),(608,881),(609,881),(610,881),(611,881),(612,881),(613,881),(614,881),(616,881),(618,881),(619,881),(620,881),(621,881),(622,881),(623,881),(624,881),(625,881),(626,881),(627,881),(628,881),(629,881),(630,881),(631,881),(632,881),(633,881),(634,881),(635,881),(636,881),(637,881),(638,881),(639,881),(640,881),(641,881),(642,881),(643,881),(644,881),(645,881),(601,882),(620,882),(625,882),(628,882),(633,882),(639,882),(640,882),(641,882),(648,882),(601,883),(643,883),(601,884),(644,884),(601,885),(645,885),(604,886),(646,886),(604,887),(623,887),(637,887),(621,888),(624,889),(632,889),(630,890),(635,891),(636,892),(637,893),(648,894),(648,895),(648,896),(648,897),(648,898),(648,899),(648,900),(648,901),(649,902),(650,903),(653,904),(654,904),(655,904),(653,905),(654,905),(655,905),(653,906),(654,906),(655,906),(653,907),(654,907),(655,907);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `innodb_index_stats`
--

DROP TABLE IF EXISTS `innodb_index_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innodb_index_stats` (
  `database_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(199) COLLATE utf8_bin NOT NULL,
  `index_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stat_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `stat_value` bigint(20) unsigned NOT NULL,
  `sample_size` bigint(20) unsigned DEFAULT NULL,
  `stat_description` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`,`index_name`,`stat_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `innodb_index_stats`
--

LOCK TABLES `innodb_index_stats` WRITE;
/*!40000 ALTER TABLE `innodb_index_stats` DISABLE KEYS */;
INSERT INTO `innodb_index_stats` VALUES ('cloud_nacos_db','config_info','PRIMARY','2020-08-14 13:14:11','n_diff_pfx01',7,1,'id'),('cloud_nacos_db','config_info','PRIMARY','2020-08-14 13:14:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','config_info','PRIMARY','2020-08-14 13:14:11','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','config_info','uk_configinfo_datagrouptenant','2020-08-14 13:14:11','n_diff_pfx01',7,1,'data_id'),('cloud_nacos_db','config_info','uk_configinfo_datagrouptenant','2020-08-14 13:14:11','n_diff_pfx02',7,1,'data_id,group_id'),('cloud_nacos_db','config_info','uk_configinfo_datagrouptenant','2020-08-14 13:14:11','n_diff_pfx03',7,1,'data_id,group_id,tenant_id'),('cloud_nacos_db','config_info','uk_configinfo_datagrouptenant','2020-08-14 13:14:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','config_info','uk_configinfo_datagrouptenant','2020-08-14 13:14:11','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','config_info_aggr','PRIMARY','2020-08-13 16:53:20','n_diff_pfx01',0,1,'id'),('cloud_nacos_db','config_info_aggr','PRIMARY','2020-08-13 16:53:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','config_info_aggr','PRIMARY','2020-08-13 16:53:20','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','config_info_aggr','uk_configinfoaggr_datagrouptenantdatum','2020-08-13 16:53:20','n_diff_pfx01',0,1,'data_id'),('cloud_nacos_db','config_info_aggr','uk_configinfoaggr_datagrouptenantdatum','2020-08-13 16:53:20','n_diff_pfx02',0,1,'data_id,group_id'),('cloud_nacos_db','config_info_aggr','uk_configinfoaggr_datagrouptenantdatum','2020-08-13 16:53:20','n_diff_pfx03',0,1,'data_id,group_id,tenant_id'),('cloud_nacos_db','config_info_aggr','uk_configinfoaggr_datagrouptenantdatum','2020-08-13 16:53:20','n_diff_pfx04',0,1,'data_id,group_id,tenant_id,datum_id'),('cloud_nacos_db','config_info_aggr','uk_configinfoaggr_datagrouptenantdatum','2020-08-13 16:53:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','config_info_aggr','uk_configinfoaggr_datagrouptenantdatum','2020-08-13 16:53:20','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','config_info_beta','PRIMARY','2020-08-13 16:53:20','n_diff_pfx01',0,1,'id'),('cloud_nacos_db','config_info_beta','PRIMARY','2020-08-13 16:53:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','config_info_beta','PRIMARY','2020-08-13 16:53:20','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','config_info_beta','uk_configinfobeta_datagrouptenant','2020-08-13 16:53:20','n_diff_pfx01',0,1,'data_id'),('cloud_nacos_db','config_info_beta','uk_configinfobeta_datagrouptenant','2020-08-13 16:53:20','n_diff_pfx02',0,1,'data_id,group_id'),('cloud_nacos_db','config_info_beta','uk_configinfobeta_datagrouptenant','2020-08-13 16:53:20','n_diff_pfx03',0,1,'data_id,group_id,tenant_id'),('cloud_nacos_db','config_info_beta','uk_configinfobeta_datagrouptenant','2020-08-13 16:53:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','config_info_beta','uk_configinfobeta_datagrouptenant','2020-08-13 16:53:20','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','config_info_tag','PRIMARY','2020-08-13 16:53:20','n_diff_pfx01',0,1,'id'),('cloud_nacos_db','config_info_tag','PRIMARY','2020-08-13 16:53:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','config_info_tag','PRIMARY','2020-08-13 16:53:20','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','config_info_tag','uk_configinfotag_datagrouptenanttag','2020-08-13 16:53:20','n_diff_pfx01',0,1,'data_id'),('cloud_nacos_db','config_info_tag','uk_configinfotag_datagrouptenanttag','2020-08-13 16:53:20','n_diff_pfx02',0,1,'data_id,group_id'),('cloud_nacos_db','config_info_tag','uk_configinfotag_datagrouptenanttag','2020-08-13 16:53:20','n_diff_pfx03',0,1,'data_id,group_id,tenant_id'),('cloud_nacos_db','config_info_tag','uk_configinfotag_datagrouptenanttag','2020-08-13 16:53:20','n_diff_pfx04',0,1,'data_id,group_id,tenant_id,tag_id'),('cloud_nacos_db','config_info_tag','uk_configinfotag_datagrouptenanttag','2020-08-13 16:53:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','config_info_tag','uk_configinfotag_datagrouptenanttag','2020-08-13 16:53:20','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','config_tags_relation','PRIMARY','2020-08-13 16:53:20','n_diff_pfx01',0,1,'nid'),('cloud_nacos_db','config_tags_relation','PRIMARY','2020-08-13 16:53:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','config_tags_relation','PRIMARY','2020-08-13 16:53:20','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','config_tags_relation','idx_tenant_id','2020-08-13 16:53:20','n_diff_pfx01',0,1,'tenant_id'),('cloud_nacos_db','config_tags_relation','idx_tenant_id','2020-08-13 16:53:20','n_diff_pfx02',0,1,'tenant_id,nid'),('cloud_nacos_db','config_tags_relation','idx_tenant_id','2020-08-13 16:53:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','config_tags_relation','idx_tenant_id','2020-08-13 16:53:20','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','config_tags_relation','uk_configtagrelation_configidtag','2020-08-13 16:53:20','n_diff_pfx01',0,1,'id'),('cloud_nacos_db','config_tags_relation','uk_configtagrelation_configidtag','2020-08-13 16:53:20','n_diff_pfx02',0,1,'id,tag_name'),('cloud_nacos_db','config_tags_relation','uk_configtagrelation_configidtag','2020-08-13 16:53:20','n_diff_pfx03',0,1,'id,tag_name,tag_type'),('cloud_nacos_db','config_tags_relation','uk_configtagrelation_configidtag','2020-08-13 16:53:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','config_tags_relation','uk_configtagrelation_configidtag','2020-08-13 16:53:20','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','group_capacity','PRIMARY','2020-08-13 16:53:20','n_diff_pfx01',0,1,'id'),('cloud_nacos_db','group_capacity','PRIMARY','2020-08-13 16:53:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','group_capacity','PRIMARY','2020-08-13 16:53:20','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','group_capacity','uk_group_id','2020-08-13 16:53:20','n_diff_pfx01',0,1,'group_id'),('cloud_nacos_db','group_capacity','uk_group_id','2020-08-13 16:53:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','group_capacity','uk_group_id','2020-08-13 16:53:20','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','his_config_info','PRIMARY','2020-08-15 04:15:32','n_diff_pfx01',52,8,'nid'),('cloud_nacos_db','his_config_info','PRIMARY','2020-08-15 04:15:32','n_leaf_pages',8,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','his_config_info','PRIMARY','2020-08-15 04:15:32','size',9,NULL,'Number of pages in the index'),('cloud_nacos_db','his_config_info','idx_did','2020-08-15 04:15:32','n_diff_pfx01',10,1,'data_id'),('cloud_nacos_db','his_config_info','idx_did','2020-08-15 04:15:32','n_diff_pfx02',52,1,'data_id,nid'),('cloud_nacos_db','his_config_info','idx_did','2020-08-15 04:15:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','his_config_info','idx_did','2020-08-15 04:15:32','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','his_config_info','idx_gmt_create','2020-08-15 04:15:32','n_diff_pfx01',50,1,'gmt_create'),('cloud_nacos_db','his_config_info','idx_gmt_create','2020-08-15 04:15:32','n_diff_pfx02',52,1,'gmt_create,nid'),('cloud_nacos_db','his_config_info','idx_gmt_create','2020-08-15 04:15:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','his_config_info','idx_gmt_create','2020-08-15 04:15:32','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','his_config_info','idx_gmt_modified','2020-08-15 04:15:32','n_diff_pfx01',49,1,'gmt_modified'),('cloud_nacos_db','his_config_info','idx_gmt_modified','2020-08-15 04:15:32','n_diff_pfx02',52,1,'gmt_modified,nid'),('cloud_nacos_db','his_config_info','idx_gmt_modified','2020-08-15 04:15:32','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','his_config_info','idx_gmt_modified','2020-08-15 04:15:32','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','permissions','uk_role_permission','2020-08-13 16:53:21','n_diff_pfx01',0,1,'role'),('cloud_nacos_db','permissions','uk_role_permission','2020-08-13 16:53:21','n_diff_pfx02',0,1,'role,resource'),('cloud_nacos_db','permissions','uk_role_permission','2020-08-13 16:53:21','n_diff_pfx03',0,1,'role,resource,action'),('cloud_nacos_db','permissions','uk_role_permission','2020-08-13 16:53:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','permissions','uk_role_permission','2020-08-13 16:53:21','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','roles','idx_user_role','2020-08-13 16:53:21','n_diff_pfx01',0,1,'username'),('cloud_nacos_db','roles','idx_user_role','2020-08-13 16:53:21','n_diff_pfx02',0,1,'username,role'),('cloud_nacos_db','roles','idx_user_role','2020-08-13 16:53:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','roles','idx_user_role','2020-08-13 16:53:21','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','tenant_capacity','PRIMARY','2020-08-13 16:53:20','n_diff_pfx01',0,1,'id'),('cloud_nacos_db','tenant_capacity','PRIMARY','2020-08-13 16:53:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','tenant_capacity','PRIMARY','2020-08-13 16:53:20','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','tenant_capacity','uk_tenant_id','2020-08-13 16:53:20','n_diff_pfx01',0,1,'tenant_id'),('cloud_nacos_db','tenant_capacity','uk_tenant_id','2020-08-13 16:53:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','tenant_capacity','uk_tenant_id','2020-08-13 16:53:20','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','tenant_info','PRIMARY','2020-08-13 17:03:59','n_diff_pfx01',4,1,'id'),('cloud_nacos_db','tenant_info','PRIMARY','2020-08-13 17:03:59','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','tenant_info','PRIMARY','2020-08-13 17:03:59','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','tenant_info','idx_tenant_id','2020-08-13 17:03:59','n_diff_pfx01',4,1,'tenant_id'),('cloud_nacos_db','tenant_info','idx_tenant_id','2020-08-13 17:03:59','n_diff_pfx02',4,1,'tenant_id,id'),('cloud_nacos_db','tenant_info','idx_tenant_id','2020-08-13 17:03:59','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','tenant_info','idx_tenant_id','2020-08-13 17:03:59','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','tenant_info','uk_tenant_info_kptenantid','2020-08-13 17:03:59','n_diff_pfx01',1,1,'kp'),('cloud_nacos_db','tenant_info','uk_tenant_info_kptenantid','2020-08-13 17:03:59','n_diff_pfx02',4,1,'kp,tenant_id'),('cloud_nacos_db','tenant_info','uk_tenant_info_kptenantid','2020-08-13 17:03:59','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','tenant_info','uk_tenant_info_kptenantid','2020-08-13 17:03:59','size',1,NULL,'Number of pages in the index'),('cloud_nacos_db','users','PRIMARY','2020-08-13 16:53:20','n_diff_pfx01',0,1,'username'),('cloud_nacos_db','users','PRIMARY','2020-08-13 16:53:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('cloud_nacos_db','users','PRIMARY','2020-08-13 16:53:20','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_app_settings','PRIMARY','2020-08-10 13:38:13','n_diff_pfx01',0,1,'id'),('codo_admin','mg_app_settings','PRIMARY','2020-08-10 13:38:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_app_settings','PRIMARY','2020-08-10 13:38:13','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_app_settings','name','2020-08-10 13:38:13','n_diff_pfx01',0,1,'name'),('codo_admin','mg_app_settings','name','2020-08-10 13:38:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_app_settings','name','2020-08-10 13:38:13','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_components','PRIMARY','2020-08-10 13:38:14','n_diff_pfx01',0,1,'comp_id'),('codo_admin','mg_components','PRIMARY','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_components','PRIMARY','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_functions','PRIMARY','2020-08-10 13:38:15','n_diff_pfx01',0,1,'func_id'),('codo_admin','mg_functions','PRIMARY','2020-08-10 13:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_functions','PRIMARY','2020-08-10 13:38:15','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_functions','ix_mg_functions_method_type','2020-08-10 13:38:15','n_diff_pfx01',0,1,'method_type'),('codo_admin','mg_functions','ix_mg_functions_method_type','2020-08-10 13:38:15','n_diff_pfx02',0,1,'method_type,func_id'),('codo_admin','mg_functions','ix_mg_functions_method_type','2020-08-10 13:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_functions','ix_mg_functions_method_type','2020-08-10 13:38:15','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_menus','PRIMARY','2020-08-10 13:38:15','n_diff_pfx01',0,1,'menu_id'),('codo_admin','mg_menus','PRIMARY','2020-08-10 13:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_menus','PRIMARY','2020-08-10 13:38:15','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_resource_group','PRIMARY','2020-08-10 13:38:15','n_diff_pfx01',0,1,'id'),('codo_admin','mg_resource_group','PRIMARY','2020-08-10 13:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_resource_group','PRIMARY','2020-08-10 13:38:15','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_resource_group','code','2020-08-10 13:38:15','n_diff_pfx01',0,1,'code'),('codo_admin','mg_resource_group','code','2020-08-10 13:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_resource_group','code','2020-08-10 13:38:15','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_resource_group','ix_mg_resource_group_expand','2020-08-10 13:38:16','n_diff_pfx01',0,1,'expand'),('codo_admin','mg_resource_group','ix_mg_resource_group_expand','2020-08-10 13:38:16','n_diff_pfx02',0,1,'expand,id'),('codo_admin','mg_resource_group','ix_mg_resource_group_expand','2020-08-10 13:38:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_resource_group','ix_mg_resource_group_expand','2020-08-10 13:38:16','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_resource_group','ix_mg_resource_group_state','2020-08-10 13:38:16','n_diff_pfx01',0,1,'state'),('codo_admin','mg_resource_group','ix_mg_resource_group_state','2020-08-10 13:38:16','n_diff_pfx02',0,1,'state,id'),('codo_admin','mg_resource_group','ix_mg_resource_group_state','2020-08-10 13:38:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_resource_group','ix_mg_resource_group_state','2020-08-10 13:38:16','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_resource_group','name','2020-08-10 13:38:15','n_diff_pfx01',0,1,'name'),('codo_admin','mg_resource_group','name','2020-08-10 13:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_resource_group','name','2020-08-10 13:38:15','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_resource_group','resource_id','2020-08-10 13:38:15','n_diff_pfx01',0,1,'resource_id'),('codo_admin','mg_resource_group','resource_id','2020-08-10 13:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_resource_group','resource_id','2020-08-10 13:38:15','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_role_functions','PRIMARY','2020-08-10 13:38:15','n_diff_pfx01',0,1,'id'),('codo_admin','mg_role_functions','PRIMARY','2020-08-10 13:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_role_functions','PRIMARY','2020-08-10 13:38:15','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_role_functions','ix_mg_role_functions_func_id','2020-08-10 13:38:15','n_diff_pfx01',0,1,'func_id'),('codo_admin','mg_role_functions','ix_mg_role_functions_func_id','2020-08-10 13:38:15','n_diff_pfx02',0,1,'func_id,id'),('codo_admin','mg_role_functions','ix_mg_role_functions_func_id','2020-08-10 13:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_role_functions','ix_mg_role_functions_func_id','2020-08-10 13:38:15','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_role_functions','ix_mg_role_functions_role_id','2020-08-10 13:38:15','n_diff_pfx01',0,1,'role_id'),('codo_admin','mg_role_functions','ix_mg_role_functions_role_id','2020-08-10 13:38:15','n_diff_pfx02',0,1,'role_id,id'),('codo_admin','mg_role_functions','ix_mg_role_functions_role_id','2020-08-10 13:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_role_functions','ix_mg_role_functions_role_id','2020-08-10 13:38:15','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_role_menus','PRIMARY','2020-08-10 13:38:15','n_diff_pfx01',0,1,'role_menu_id'),('codo_admin','mg_role_menus','PRIMARY','2020-08-10 13:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_role_menus','PRIMARY','2020-08-10 13:38:15','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_role_menus','ix_mg_role_menus_menu_id','2020-08-10 13:38:15','n_diff_pfx01',0,1,'menu_id'),('codo_admin','mg_role_menus','ix_mg_role_menus_menu_id','2020-08-10 13:38:15','n_diff_pfx02',0,1,'menu_id,role_menu_id'),('codo_admin','mg_role_menus','ix_mg_role_menus_menu_id','2020-08-10 13:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_role_menus','ix_mg_role_menus_menu_id','2020-08-10 13:38:15','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_role_menus','ix_mg_role_menus_role_id','2020-08-10 13:38:15','n_diff_pfx01',0,1,'role_id'),('codo_admin','mg_role_menus','ix_mg_role_menus_role_id','2020-08-10 13:38:15','n_diff_pfx02',0,1,'role_id,role_menu_id'),('codo_admin','mg_role_menus','ix_mg_role_menus_role_id','2020-08-10 13:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_role_menus','ix_mg_role_menus_role_id','2020-08-10 13:38:15','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_roles','PRIMARY','2020-08-10 13:38:14','n_diff_pfx01',0,1,'role_id'),('codo_admin','mg_roles','PRIMARY','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_roles','PRIMARY','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_roles','ix_mg_roles_role_name','2020-08-10 13:38:14','n_diff_pfx01',0,1,'role_name'),('codo_admin','mg_roles','ix_mg_roles_role_name','2020-08-10 13:38:14','n_diff_pfx02',0,1,'role_name,role_id'),('codo_admin','mg_roles','ix_mg_roles_role_name','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_roles','ix_mg_roles_role_name','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_roles_components','PRIMARY','2020-08-10 13:38:14','n_diff_pfx01',0,1,'role_comp_id'),('codo_admin','mg_roles_components','PRIMARY','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_roles_components','PRIMARY','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_roles_components','ix_mg_roles_components_comp_id','2020-08-10 13:38:15','n_diff_pfx01',0,1,'comp_id'),('codo_admin','mg_roles_components','ix_mg_roles_components_comp_id','2020-08-10 13:38:15','n_diff_pfx02',0,1,'comp_id,role_comp_id'),('codo_admin','mg_roles_components','ix_mg_roles_components_comp_id','2020-08-10 13:38:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_roles_components','ix_mg_roles_components_comp_id','2020-08-10 13:38:15','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_roles_components','ix_mg_roles_components_role_id','2020-08-10 13:38:14','n_diff_pfx01',0,1,'role_id'),('codo_admin','mg_roles_components','ix_mg_roles_components_role_id','2020-08-10 13:38:14','n_diff_pfx02',0,1,'role_id,role_comp_id'),('codo_admin','mg_roles_components','ix_mg_roles_components_role_id','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_roles_components','ix_mg_roles_components_role_id','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_user_resource','PRIMARY','2020-08-10 13:38:16','n_diff_pfx01',0,1,'id'),('codo_admin','mg_user_resource','PRIMARY','2020-08-10 13:38:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_user_resource','PRIMARY','2020-08-10 13:38:16','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_user_resource','ix_mg_user_resource_group_id','2020-08-10 13:38:16','n_diff_pfx01',0,1,'group_id'),('codo_admin','mg_user_resource','ix_mg_user_resource_group_id','2020-08-10 13:38:16','n_diff_pfx02',0,1,'group_id,id'),('codo_admin','mg_user_resource','ix_mg_user_resource_group_id','2020-08-10 13:38:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_user_resource','ix_mg_user_resource_group_id','2020-08-10 13:38:16','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_user_resource','ix_mg_user_resource_user_id','2020-08-10 13:38:16','n_diff_pfx01',0,1,'user_id'),('codo_admin','mg_user_resource','ix_mg_user_resource_user_id','2020-08-10 13:38:16','n_diff_pfx02',0,1,'user_id,id'),('codo_admin','mg_user_resource','ix_mg_user_resource_user_id','2020-08-10 13:38:16','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_user_resource','ix_mg_user_resource_user_id','2020-08-10 13:38:16','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_user_roles','PRIMARY','2020-08-10 13:38:14','n_diff_pfx01',0,1,'user_role_id'),('codo_admin','mg_user_roles','PRIMARY','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_user_roles','PRIMARY','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_user_roles','ix_mg_user_roles_role_id','2020-08-10 13:38:14','n_diff_pfx01',0,1,'role_id'),('codo_admin','mg_user_roles','ix_mg_user_roles_role_id','2020-08-10 13:38:14','n_diff_pfx02',0,1,'role_id,user_role_id'),('codo_admin','mg_user_roles','ix_mg_user_roles_role_id','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_user_roles','ix_mg_user_roles_role_id','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_user_roles','ix_mg_user_roles_user_id','2020-08-10 13:38:14','n_diff_pfx01',0,1,'user_id'),('codo_admin','mg_user_roles','ix_mg_user_roles_user_id','2020-08-10 13:38:14','n_diff_pfx02',0,1,'user_id,user_role_id'),('codo_admin','mg_user_roles','ix_mg_user_roles_user_id','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_user_roles','ix_mg_user_roles_user_id','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_users','PRIMARY','2020-08-10 13:38:14','n_diff_pfx01',0,1,'user_id'),('codo_admin','mg_users','PRIMARY','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_users','PRIMARY','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_users','email','2020-08-10 13:38:14','n_diff_pfx01',0,1,'email'),('codo_admin','mg_users','email','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_users','email','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_users','ix_mg_users_department','2020-08-10 13:38:14','n_diff_pfx01',0,1,'department'),('codo_admin','mg_users','ix_mg_users_department','2020-08-10 13:38:14','n_diff_pfx02',0,1,'department,user_id'),('codo_admin','mg_users','ix_mg_users_department','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_users','ix_mg_users_department','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_users','ix_mg_users_nickname','2020-08-10 13:38:14','n_diff_pfx01',0,1,'nickname'),('codo_admin','mg_users','ix_mg_users_nickname','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_users','ix_mg_users_nickname','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_users','ix_mg_users_superuser','2020-08-10 13:38:14','n_diff_pfx01',0,1,'superuser'),('codo_admin','mg_users','ix_mg_users_superuser','2020-08-10 13:38:14','n_diff_pfx02',0,1,'superuser,user_id'),('codo_admin','mg_users','ix_mg_users_superuser','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_users','ix_mg_users_superuser','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_users','ix_mg_users_tel','2020-08-10 13:38:14','n_diff_pfx01',0,1,'tel'),('codo_admin','mg_users','ix_mg_users_tel','2020-08-10 13:38:14','n_diff_pfx02',0,1,'tel,user_id'),('codo_admin','mg_users','ix_mg_users_tel','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_users','ix_mg_users_tel','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_admin','mg_users','username','2020-08-10 13:38:14','n_diff_pfx01',0,1,'username'),('codo_admin','mg_users','username','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','mg_users','username','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_admin','operation_record','PRIMARY','2020-08-10 13:38:13','n_diff_pfx01',0,1,'id'),('codo_admin','operation_record','PRIMARY','2020-08-10 13:38:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','operation_record','PRIMARY','2020-08-10 13:38:13','size',1,NULL,'Number of pages in the index'),('codo_admin','operation_record','ix_operation_record_username','2020-08-10 13:38:14','n_diff_pfx01',0,1,'username'),('codo_admin','operation_record','ix_operation_record_username','2020-08-10 13:38:14','n_diff_pfx02',0,1,'username,id'),('codo_admin','operation_record','ix_operation_record_username','2020-08-10 13:38:14','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_admin','operation_record','ix_operation_record_username','2020-08-10 13:38:14','size',1,NULL,'Number of pages in the index'),('codo_cmdb','admin_users','PRIMARY','2020-08-11 13:12:13','n_diff_pfx01',0,1,'id'),('codo_cmdb','admin_users','PRIMARY','2020-08-11 13:12:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','admin_users','PRIMARY','2020-08-11 13:12:13','size',1,NULL,'Number of pages in the index'),('codo_cmdb','admin_users','admin_user','2020-08-11 13:12:13','n_diff_pfx01',0,1,'admin_user'),('codo_cmdb','admin_users','admin_user','2020-08-11 13:12:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','admin_users','admin_user','2020-08-11 13:12:13','size',1,NULL,'Number of pages in the index'),('codo_cmdb','asset_configs','PRIMARY','2020-08-11 13:12:13','n_diff_pfx01',0,1,'id'),('codo_cmdb','asset_configs','PRIMARY','2020-08-11 13:12:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','asset_configs','PRIMARY','2020-08-11 13:12:13','size',1,NULL,'Number of pages in the index'),('codo_cmdb','asset_configs','name','2020-08-11 13:12:13','n_diff_pfx01',0,1,'name'),('codo_cmdb','asset_configs','name','2020-08-11 13:12:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','asset_configs','name','2020-08-11 13:12:13','size',1,NULL,'Number of pages in the index'),('codo_cmdb','asset_db','PRIMARY','2020-08-11 13:12:13','n_diff_pfx01',0,1,'id'),('codo_cmdb','asset_db','PRIMARY','2020-08-11 13:12:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','asset_db','PRIMARY','2020-08-11 13:12:13','size',1,NULL,'Number of pages in the index'),('codo_cmdb','asset_db_tag','PRIMARY','2020-08-11 13:12:13','n_diff_pfx01',0,1,'id'),('codo_cmdb','asset_db_tag','PRIMARY','2020-08-11 13:12:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','asset_db_tag','PRIMARY','2020-08-11 13:12:13','size',1,NULL,'Number of pages in the index'),('codo_cmdb','asset_error_log','PRIMARY','2020-08-11 13:12:13','n_diff_pfx01',0,1,'id'),('codo_cmdb','asset_error_log','PRIMARY','2020-08-11 13:12:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','asset_error_log','PRIMARY','2020-08-11 13:12:13','size',1,NULL,'Number of pages in the index'),('codo_cmdb','asset_idc','PRIMARY','2020-08-11 13:12:13','n_diff_pfx01',0,1,'id'),('codo_cmdb','asset_idc','PRIMARY','2020-08-11 13:12:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','asset_idc','PRIMARY','2020-08-11 13:12:13','size',1,NULL,'Number of pages in the index'),('codo_cmdb','asset_idc','name','2020-08-11 13:12:13','n_diff_pfx01',0,1,'name'),('codo_cmdb','asset_idc','name','2020-08-11 13:12:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','asset_idc','name','2020-08-11 13:12:13','size',1,NULL,'Number of pages in the index'),('codo_cmdb','asset_operational_audit','PRIMARY','2020-08-11 13:12:13','n_diff_pfx01',0,1,'id'),('codo_cmdb','asset_operational_audit','PRIMARY','2020-08-11 13:12:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','asset_operational_audit','PRIMARY','2020-08-11 13:12:13','size',1,NULL,'Number of pages in the index'),('codo_cmdb','asset_server','PRIMARY','2020-08-11 13:12:12','n_diff_pfx01',0,1,'id'),('codo_cmdb','asset_server','PRIMARY','2020-08-11 13:12:12','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','asset_server','PRIMARY','2020-08-11 13:12:12','size',1,NULL,'Number of pages in the index'),('codo_cmdb','asset_server','ix_asset_server_ip','2020-08-11 13:12:12','n_diff_pfx01',0,1,'ip'),('codo_cmdb','asset_server','ix_asset_server_ip','2020-08-11 13:12:12','n_diff_pfx02',0,1,'ip,id'),('codo_cmdb','asset_server','ix_asset_server_ip','2020-08-11 13:12:12','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','asset_server','ix_asset_server_ip','2020-08-11 13:12:12','size',1,NULL,'Number of pages in the index'),('codo_cmdb','asset_server_detail','PRIMARY','2020-08-11 13:12:12','n_diff_pfx01',0,1,'id'),('codo_cmdb','asset_server_detail','PRIMARY','2020-08-11 13:12:12','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','asset_server_detail','PRIMARY','2020-08-11 13:12:12','size',1,NULL,'Number of pages in the index'),('codo_cmdb','asset_server_tag','PRIMARY','2020-08-11 13:12:11','n_diff_pfx01',0,1,'id'),('codo_cmdb','asset_server_tag','PRIMARY','2020-08-11 13:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','asset_server_tag','PRIMARY','2020-08-11 13:12:11','size',1,NULL,'Number of pages in the index'),('codo_cmdb','asset_tag','PRIMARY','2020-08-11 13:12:11','n_diff_pfx01',0,1,'id'),('codo_cmdb','asset_tag','PRIMARY','2020-08-11 13:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','asset_tag','PRIMARY','2020-08-11 13:12:11','size',1,NULL,'Number of pages in the index'),('codo_cmdb','asset_tag','tag_name','2020-08-11 13:12:11','n_diff_pfx01',0,1,'tag_name'),('codo_cmdb','asset_tag','tag_name','2020-08-11 13:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','asset_tag','tag_name','2020-08-11 13:12:11','size',1,NULL,'Number of pages in the index'),('codo_cmdb','asset_tag_rule','PRIMARY','2020-08-11 13:12:11','n_diff_pfx01',0,1,'id'),('codo_cmdb','asset_tag_rule','PRIMARY','2020-08-11 13:12:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','asset_tag_rule','PRIMARY','2020-08-11 13:12:11','size',1,NULL,'Number of pages in the index'),('codo_cmdb','aws_events','PRIMARY','2020-08-11 13:12:13','n_diff_pfx01',0,1,'id'),('codo_cmdb','aws_events','PRIMARY','2020-08-11 13:12:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','aws_events','PRIMARY','2020-08-11 13:12:13','size',1,NULL,'Number of pages in the index'),('codo_cmdb','ssh_configs','PRIMARY','2020-08-11 13:12:13','n_diff_pfx01',0,1,'id'),('codo_cmdb','ssh_configs','PRIMARY','2020-08-11 13:12:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','ssh_configs','PRIMARY','2020-08-11 13:12:13','size',1,NULL,'Number of pages in the index'),('codo_cmdb','ssh_configs','name','2020-08-11 13:12:13','n_diff_pfx01',0,1,'name'),('codo_cmdb','ssh_configs','name','2020-08-11 13:12:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','ssh_configs','name','2020-08-11 13:12:13','size',1,NULL,'Number of pages in the index'),('codo_cmdb','system_users','PRIMARY','2020-08-11 13:12:13','n_diff_pfx01',0,1,'id'),('codo_cmdb','system_users','PRIMARY','2020-08-11 13:12:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','system_users','PRIMARY','2020-08-11 13:12:13','size',1,NULL,'Number of pages in the index'),('codo_cmdb','system_users','name','2020-08-11 13:12:13','n_diff_pfx01',0,1,'name'),('codo_cmdb','system_users','name','2020-08-11 13:12:13','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cmdb','system_users','name','2020-08-11 13:12:13','size',1,NULL,'Number of pages in the index'),('codo_cron','apscheduler_jobs','PRIMARY','2020-08-11 16:53:15','n_diff_pfx01',0,1,'id'),('codo_cron','apscheduler_jobs','PRIMARY','2020-08-11 16:53:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cron','apscheduler_jobs','PRIMARY','2020-08-11 16:53:15','size',1,NULL,'Number of pages in the index'),('codo_cron','apscheduler_jobs','ix_apscheduler_jobs_next_run_time','2020-08-11 16:53:15','n_diff_pfx01',0,1,'next_run_time'),('codo_cron','apscheduler_jobs','ix_apscheduler_jobs_next_run_time','2020-08-11 16:53:15','n_diff_pfx02',0,1,'next_run_time,id'),('codo_cron','apscheduler_jobs','ix_apscheduler_jobs_next_run_time','2020-08-11 16:53:15','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cron','apscheduler_jobs','ix_apscheduler_jobs_next_run_time','2020-08-11 16:53:15','size',1,NULL,'Number of pages in the index'),('codo_cron','cron_log','PRIMARY','2020-08-11 13:46:44','n_diff_pfx01',0,1,'log_id'),('codo_cron','cron_log','PRIMARY','2020-08-11 13:46:44','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_cron','cron_log','PRIMARY','2020-08-11 13:46:44','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_account','PRIMARY','2020-08-11 13:22:34','n_diff_pfx01',0,1,'id'),('codo_dns','cloud_domain_account','PRIMARY','2020-08-11 13:22:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_account','PRIMARY','2020-08-11 13:22:34','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_account','ix_cloud_domain_account_alias_name','2020-08-11 13:22:34','n_diff_pfx01',0,1,'alias_name'),('codo_dns','cloud_domain_account','ix_cloud_domain_account_alias_name','2020-08-11 13:22:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_account','ix_cloud_domain_account_alias_name','2020-08-11 13:22:34','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_name','PRIMARY','2020-08-11 13:22:34','n_diff_pfx01',0,1,'id'),('codo_dns','cloud_domain_name','PRIMARY','2020-08-11 13:22:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_name','PRIMARY','2020-08-11 13:22:34','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_account','2020-08-11 13:22:35','n_diff_pfx01',0,1,'account'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_account','2020-08-11 13:22:35','n_diff_pfx02',0,1,'account,id'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_account','2020-08-11 13:22:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_account','2020-08-11 13:22:35','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_domain_id','2020-08-11 13:22:34','n_diff_pfx01',0,1,'domain_id'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_domain_id','2020-08-11 13:22:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_domain_id','2020-08-11 13:22:34','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_domain_name','2020-08-11 13:22:34','n_diff_pfx01',0,1,'domain_name'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_domain_name','2020-08-11 13:22:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_domain_name','2020-08-11 13:22:34','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_record_count','2020-08-11 13:22:34','n_diff_pfx01',0,1,'record_count'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_record_count','2020-08-11 13:22:34','n_diff_pfx02',0,1,'record_count,id'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_record_count','2020-08-11 13:22:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_record_count','2020-08-11 13:22:34','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_star_mark','2020-08-11 13:22:34','n_diff_pfx01',0,1,'star_mark'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_star_mark','2020-08-11 13:22:34','n_diff_pfx02',0,1,'star_mark,id'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_star_mark','2020-08-11 13:22:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_name','ix_cloud_domain_name_star_mark','2020-08-11 13:22:34','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_opt_log','PRIMARY','2020-08-11 13:22:35','n_diff_pfx01',0,1,'id'),('codo_dns','cloud_domain_opt_log','PRIMARY','2020-08-11 13:22:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_opt_log','PRIMARY','2020-08-11 13:22:35','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_opt_log','ix_cloud_domain_opt_log_domain_name','2020-08-11 13:22:35','n_diff_pfx01',0,1,'domain_name'),('codo_dns','cloud_domain_opt_log','ix_cloud_domain_opt_log_domain_name','2020-08-11 13:22:35','n_diff_pfx02',0,1,'domain_name,id'),('codo_dns','cloud_domain_opt_log','ix_cloud_domain_opt_log_domain_name','2020-08-11 13:22:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_opt_log','ix_cloud_domain_opt_log_domain_name','2020-08-11 13:22:35','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_records','PRIMARY','2020-08-11 13:22:35','n_diff_pfx01',0,1,'id'),('codo_dns','cloud_domain_records','PRIMARY','2020-08-11 13:22:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_records','PRIMARY','2020-08-11 13:22:35','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_records','ix_cloud_domain_records_account','2020-08-11 13:22:35','n_diff_pfx01',0,1,'account'),('codo_dns','cloud_domain_records','ix_cloud_domain_records_account','2020-08-11 13:22:35','n_diff_pfx02',0,1,'account,id'),('codo_dns','cloud_domain_records','ix_cloud_domain_records_account','2020-08-11 13:22:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_records','ix_cloud_domain_records_account','2020-08-11 13:22:35','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_records','ix_cloud_domain_records_domain_name','2020-08-11 13:22:35','n_diff_pfx01',0,1,'domain_name'),('codo_dns','cloud_domain_records','ix_cloud_domain_records_domain_name','2020-08-11 13:22:35','n_diff_pfx02',0,1,'domain_name,id'),('codo_dns','cloud_domain_records','ix_cloud_domain_records_domain_name','2020-08-11 13:22:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_records','ix_cloud_domain_records_domain_name','2020-08-11 13:22:35','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_records','ix_cloud_domain_records_domain_rr','2020-08-11 13:22:35','n_diff_pfx01',0,1,'domain_rr'),('codo_dns','cloud_domain_records','ix_cloud_domain_records_domain_rr','2020-08-11 13:22:35','n_diff_pfx02',0,1,'domain_rr,id'),('codo_dns','cloud_domain_records','ix_cloud_domain_records_domain_rr','2020-08-11 13:22:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_records','ix_cloud_domain_records_domain_rr','2020-08-11 13:22:35','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_records','ix_cloud_domain_records_record_id','2020-08-11 13:22:35','n_diff_pfx01',0,1,'record_id'),('codo_dns','cloud_domain_records','ix_cloud_domain_records_record_id','2020-08-11 13:22:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_records','ix_cloud_domain_records_record_id','2020-08-11 13:22:35','size',1,NULL,'Number of pages in the index'),('codo_dns','cloud_domain_sync_log','PRIMARY','2020-08-11 13:22:35','n_diff_pfx01',0,1,'id'),('codo_dns','cloud_domain_sync_log','PRIMARY','2020-08-11 13:22:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','cloud_domain_sync_log','PRIMARY','2020-08-11 13:22:35','size',1,NULL,'Number of pages in the index'),('codo_dns','dns_domain_conf','PRIMARY','2020-08-12 07:24:38','n_diff_pfx01',2,1,'id'),('codo_dns','dns_domain_conf','PRIMARY','2020-08-12 07:24:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','dns_domain_conf','PRIMARY','2020-08-12 07:24:38','size',1,NULL,'Number of pages in the index'),('codo_dns','dns_domain_log','PRIMARY','2020-08-11 13:22:34','n_diff_pfx01',0,1,'id'),('codo_dns','dns_domain_log','PRIMARY','2020-08-11 13:22:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','dns_domain_log','PRIMARY','2020-08-11 13:22:34','size',1,NULL,'Number of pages in the index'),('codo_dns','dns_domain_name','PRIMARY','2020-08-11 13:22:34','n_diff_pfx01',0,1,'domain_id'),('codo_dns','dns_domain_name','PRIMARY','2020-08-11 13:22:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','dns_domain_name','PRIMARY','2020-08-11 13:22:34','size',1,NULL,'Number of pages in the index'),('codo_dns','dns_domain_name','domain_name','2020-08-11 13:22:34','n_diff_pfx01',0,1,'domain_name'),('codo_dns','dns_domain_name','domain_name','2020-08-11 13:22:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','dns_domain_name','domain_name','2020-08-11 13:22:34','size',1,NULL,'Number of pages in the index'),('codo_dns','dns_domain_zone','PRIMARY','2020-08-11 13:22:34','n_diff_pfx01',0,1,'zone_id'),('codo_dns','dns_domain_zone','PRIMARY','2020-08-11 13:22:34','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','dns_domain_zone','PRIMARY','2020-08-11 13:22:34','size',1,NULL,'Number of pages in the index'),('codo_dns','domain_check_ssl','PRIMARY','2020-08-11 13:22:35','n_diff_pfx01',0,1,'id'),('codo_dns','domain_check_ssl','PRIMARY','2020-08-11 13:22:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','domain_check_ssl','PRIMARY','2020-08-11 13:22:35','size',1,NULL,'Number of pages in the index'),('codo_dns','domain_check_ssl','ix_domain_check_ssl_domain_name','2020-08-11 13:22:35','n_diff_pfx01',0,1,'domain_name'),('codo_dns','domain_check_ssl','ix_domain_check_ssl_domain_name','2020-08-11 13:22:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','domain_check_ssl','ix_domain_check_ssl_domain_name','2020-08-11 13:22:35','size',1,NULL,'Number of pages in the index'),('codo_dns','domain_check_ssl','ix_domain_check_ssl_是否启用','2020-08-11 13:22:35','n_diff_pfx01',0,1,'是否启用'),('codo_dns','domain_check_ssl','ix_domain_check_ssl_是否启用','2020-08-11 13:22:35','n_diff_pfx02',0,1,'是否启用,id'),('codo_dns','domain_check_ssl','ix_domain_check_ssl_是否启用','2020-08-11 13:22:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_dns','domain_check_ssl','ix_domain_check_ssl_是否启用','2020-08-11 13:22:35','size',1,NULL,'Number of pages in the index'),('codo_task','asset_db','PRIMARY','2020-08-11 13:39:24','n_diff_pfx01',0,1,'id'),('codo_task','asset_db','PRIMARY','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','asset_db','PRIMARY','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','asset_db_tag','PRIMARY','2020-08-11 13:39:24','n_diff_pfx01',0,1,'id'),('codo_task','asset_db_tag','PRIMARY','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','asset_db_tag','PRIMARY','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','asset_proxy_info','PRIMARY','2020-08-11 13:39:24','n_diff_pfx01',0,1,'id'),('codo_task','asset_proxy_info','PRIMARY','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','asset_proxy_info','PRIMARY','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','asset_proxy_info','proxy_host','2020-08-11 13:39:24','n_diff_pfx01',0,1,'proxy_host'),('codo_task','asset_proxy_info','proxy_host','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','asset_proxy_info','proxy_host','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','asset_server','PRIMARY','2020-08-11 13:39:24','n_diff_pfx01',0,1,'id'),('codo_task','asset_server','PRIMARY','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','asset_server','PRIMARY','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','asset_server','hostname','2020-08-11 13:39:24','n_diff_pfx01',0,1,'hostname'),('codo_task','asset_server','hostname','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','asset_server','hostname','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','asset_server_tag','PRIMARY','2020-08-11 13:39:24','n_diff_pfx01',0,1,'id'),('codo_task','asset_server_tag','PRIMARY','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','asset_server_tag','PRIMARY','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','asset_tag','PRIMARY','2020-08-11 13:39:24','n_diff_pfx01',0,1,'id'),('codo_task','asset_tag','PRIMARY','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','asset_tag','PRIMARY','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','asset_tag','tag_name','2020-08-11 13:39:24','n_diff_pfx01',0,1,'tag_name'),('codo_task','asset_tag','tag_name','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','asset_tag','tag_name','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','common_jobs','PRIMARY','2020-08-11 13:39:24','n_diff_pfx01',0,1,'id'),('codo_task','common_jobs','PRIMARY','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','common_jobs','PRIMARY','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','common_jobs','ix_common_jobs_task_name','2020-08-11 13:39:25','n_diff_pfx01',0,1,'task_name'),('codo_task','common_jobs','ix_common_jobs_task_name','2020-08-11 13:39:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','common_jobs','ix_common_jobs_task_name','2020-08-11 13:39:25','size',1,NULL,'Number of pages in the index'),('codo_task','scheduler_args_list','PRIMARY','2020-08-11 13:39:23','n_diff_pfx01',0,1,'args_id'),('codo_task','scheduler_args_list','PRIMARY','2020-08-11 13:39:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','scheduler_args_list','PRIMARY','2020-08-11 13:39:23','size',1,NULL,'Number of pages in the index'),('codo_task','scheduler_cmd_list','PRIMARY','2020-08-11 13:39:22','n_diff_pfx01',0,1,'command_id'),('codo_task','scheduler_cmd_list','PRIMARY','2020-08-11 13:39:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','scheduler_cmd_list','PRIMARY','2020-08-11 13:39:22','size',1,NULL,'Number of pages in the index'),('codo_task','scheduler_cmd_list','command_name','2020-08-11 13:39:22','n_diff_pfx01',0,1,'command_name'),('codo_task','scheduler_cmd_list','command_name','2020-08-11 13:39:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','scheduler_cmd_list','command_name','2020-08-11 13:39:22','size',1,NULL,'Number of pages in the index'),('codo_task','scheduler_execute_user','PRIMARY','2020-08-11 13:39:23','n_diff_pfx01',0,1,'id'),('codo_task','scheduler_execute_user','PRIMARY','2020-08-11 13:39:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','scheduler_execute_user','PRIMARY','2020-08-11 13:39:23','size',1,NULL,'Number of pages in the index'),('codo_task','scheduler_execute_user','alias_user','2020-08-11 13:39:23','n_diff_pfx01',0,1,'alias_user'),('codo_task','scheduler_execute_user','alias_user','2020-08-11 13:39:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','scheduler_execute_user','alias_user','2020-08-11 13:39:23','size',1,NULL,'Number of pages in the index'),('codo_task','scheduler_task_info','PRIMARY','2020-08-11 13:39:22','n_diff_pfx01',0,1,'sched_id'),('codo_task','scheduler_task_info','PRIMARY','2020-08-11 13:39:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','scheduler_task_info','PRIMARY','2020-08-11 13:39:22','size',1,NULL,'Number of pages in the index'),('codo_task','scheduler_task_info','ix_scheduler_task_info_list_id','2020-08-11 13:39:22','n_diff_pfx01',0,1,'list_id'),('codo_task','scheduler_task_info','ix_scheduler_task_info_list_id','2020-08-11 13:39:22','n_diff_pfx02',0,1,'list_id,sched_id'),('codo_task','scheduler_task_info','ix_scheduler_task_info_list_id','2020-08-11 13:39:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','scheduler_task_info','ix_scheduler_task_info_list_id','2020-08-11 13:39:22','size',1,NULL,'Number of pages in the index'),('codo_task','scheduler_task_list','PRIMARY','2020-08-11 13:39:22','n_diff_pfx01',0,1,'list_id'),('codo_task','scheduler_task_list','PRIMARY','2020-08-11 13:39:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','scheduler_task_list','PRIMARY','2020-08-11 13:39:22','size',1,NULL,'Number of pages in the index'),('codo_task','scheduler_task_log','PRIMARY','2020-08-11 13:39:22','n_diff_pfx01',0,1,'log_id'),('codo_task','scheduler_task_log','PRIMARY','2020-08-11 13:39:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','scheduler_task_log','PRIMARY','2020-08-11 13:39:22','size',1,NULL,'Number of pages in the index'),('codo_task','scheduler_task_log','ix_scheduler_task_log_log_key','2020-08-11 13:39:22','n_diff_pfx01',0,1,'log_key'),('codo_task','scheduler_task_log','ix_scheduler_task_log_log_key','2020-08-11 13:39:22','n_diff_pfx02',0,1,'log_key,log_id'),('codo_task','scheduler_task_log','ix_scheduler_task_log_log_key','2020-08-11 13:39:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','scheduler_task_log','ix_scheduler_task_log_log_key','2020-08-11 13:39:22','size',1,NULL,'Number of pages in the index'),('codo_task','scheduler_temp_details','PRIMARY','2020-08-11 13:39:23','n_diff_pfx01',0,1,'id'),('codo_task','scheduler_temp_details','PRIMARY','2020-08-11 13:39:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','scheduler_temp_details','PRIMARY','2020-08-11 13:39:23','size',1,NULL,'Number of pages in the index'),('codo_task','scheduler_temp_list','PRIMARY','2020-08-12 07:23:54','n_diff_pfx01',16,1,'temp_id'),('codo_task','scheduler_temp_list','PRIMARY','2020-08-12 07:23:54','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','scheduler_temp_list','PRIMARY','2020-08-12 07:23:54','size',1,NULL,'Number of pages in the index'),('codo_task','scheduler_temp_list','temp_name','2020-08-12 07:23:54','n_diff_pfx01',16,1,'temp_name'),('codo_task','scheduler_temp_list','temp_name','2020-08-12 07:23:54','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','scheduler_temp_list','temp_name','2020-08-12 07:23:54','size',1,NULL,'Number of pages in the index'),('codo_task','scheduler_temp_user','PRIMARY','2020-08-11 13:39:23','n_diff_pfx01',0,1,'id'),('codo_task','scheduler_temp_user','PRIMARY','2020-08-11 13:39:23','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','scheduler_temp_user','PRIMARY','2020-08-11 13:39:23','size',1,NULL,'Number of pages in the index'),('codo_task','task_code_repository','PRIMARY','2020-08-11 13:39:24','n_diff_pfx01',0,1,'id'),('codo_task','task_code_repository','PRIMARY','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_code_repository','PRIMARY','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','task_code_repository','app_name','2020-08-11 13:39:24','n_diff_pfx01',0,1,'app_name'),('codo_task','task_code_repository','app_name','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_code_repository','app_name','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','task_docker_registry','PRIMARY','2020-08-11 13:39:24','n_diff_pfx01',0,1,'id'),('codo_task','task_docker_registry','PRIMARY','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_docker_registry','PRIMARY','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','task_docker_registry','project_name','2020-08-11 13:39:24','n_diff_pfx01',0,1,'project_name'),('codo_task','task_docker_registry','project_name','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_docker_registry','project_name','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','task_docker_registry','registry_url','2020-08-11 13:39:24','n_diff_pfx01',0,1,'registry_url'),('codo_task','task_docker_registry','registry_url','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_docker_registry','registry_url','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','task_git_conf','PRIMARY','2020-08-11 13:39:25','n_diff_pfx01',0,1,'id'),('codo_task','task_git_conf','PRIMARY','2020-08-11 13:39:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_git_conf','PRIMARY','2020-08-11 13:39:25','size',1,NULL,'Number of pages in the index'),('codo_task','task_git_conf','git_url','2020-08-11 13:39:25','n_diff_pfx01',0,1,'git_url'),('codo_task','task_git_conf','git_url','2020-08-11 13:39:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_git_conf','git_url','2020-08-11 13:39:25','size',1,NULL,'Number of pages in the index'),('codo_task','task_git_group','PRIMARY','2020-08-11 13:39:25','n_diff_pfx01',0,1,'id'),('codo_task','task_git_group','PRIMARY','2020-08-11 13:39:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_git_group','PRIMARY','2020-08-11 13:39:25','size',1,NULL,'Number of pages in the index'),('codo_task','task_git_hooks_log','PRIMARY','2020-08-11 13:39:25','n_diff_pfx01',0,1,'id'),('codo_task','task_git_hooks_log','PRIMARY','2020-08-11 13:39:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_git_hooks_log','PRIMARY','2020-08-11 13:39:25','size',1,NULL,'Number of pages in the index'),('codo_task','task_git_repo','PRIMARY','2020-08-11 13:39:25','n_diff_pfx01',0,1,'id'),('codo_task','task_git_repo','PRIMARY','2020-08-11 13:39:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_git_repo','PRIMARY','2020-08-11 13:39:25','size',1,NULL,'Number of pages in the index'),('codo_task','task_git_repo','http_url_to_repo','2020-08-11 13:39:25','n_diff_pfx01',0,1,'http_url_to_repo'),('codo_task','task_git_repo','http_url_to_repo','2020-08-11 13:39:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_git_repo','http_url_to_repo','2020-08-11 13:39:25','size',1,NULL,'Number of pages in the index'),('codo_task','task_git_repo','ssh_url_to_repo','2020-08-11 13:39:25','n_diff_pfx01',0,1,'ssh_url_to_repo'),('codo_task','task_git_repo','ssh_url_to_repo','2020-08-11 13:39:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_git_repo','ssh_url_to_repo','2020-08-11 13:39:25','size',1,NULL,'Number of pages in the index'),('codo_task','task_git_users','PRIMARY','2020-08-11 13:39:25','n_diff_pfx01',0,1,'id'),('codo_task','task_git_users','PRIMARY','2020-08-11 13:39:25','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_git_users','PRIMARY','2020-08-11 13:39:25','size',1,NULL,'Number of pages in the index'),('codo_task','task_monitor','PRIMARY','2020-08-11 13:39:22','n_diff_pfx01',0,1,'id'),('codo_task','task_monitor','PRIMARY','2020-08-11 13:39:22','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_monitor','PRIMARY','2020-08-11 13:39:22','size',1,NULL,'Number of pages in the index'),('codo_task','task_publish_config','PRIMARY','2020-08-11 13:39:24','n_diff_pfx01',0,1,'id'),('codo_task','task_publish_config','PRIMARY','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_publish_config','PRIMARY','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','task_publish_config','publish_name','2020-08-11 13:39:24','n_diff_pfx01',0,1,'publish_name'),('codo_task','task_publish_config','publish_name','2020-08-11 13:39:24','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_publish_config','publish_name','2020-08-11 13:39:24','size',1,NULL,'Number of pages in the index'),('codo_task','task_publish_list','PRIMARY','2020-08-11 13:39:26','n_diff_pfx01',0,1,'id'),('codo_task','task_publish_list','PRIMARY','2020-08-11 13:39:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_publish_list','PRIMARY','2020-08-11 13:39:26','size',1,NULL,'Number of pages in the index'),('codo_task','task_publish_log','PRIMARY','2020-08-11 13:39:26','n_diff_pfx01',0,1,'id'),('codo_task','task_publish_log','PRIMARY','2020-08-11 13:39:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_publish_log','PRIMARY','2020-08-11 13:39:26','size',1,NULL,'Number of pages in the index'),('codo_task','task_publish_log','ix_task_publish_log_project_id','2020-08-11 13:39:26','n_diff_pfx01',0,1,'project_id'),('codo_task','task_publish_log','ix_task_publish_log_project_id','2020-08-11 13:39:26','n_diff_pfx02',0,1,'project_id,id'),('codo_task','task_publish_log','ix_task_publish_log_project_id','2020-08-11 13:39:26','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_task','task_publish_log','ix_task_publish_log_project_id','2020-08-11 13:39:26','size',1,NULL,'Number of pages in the index'),('codo_tools','itsm_event_record','PRIMARY','2020-08-11 15:13:30','n_diff_pfx01',0,1,'id'),('codo_tools','itsm_event_record','PRIMARY','2020-08-11 15:13:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_tools','itsm_event_record','PRIMARY','2020-08-11 15:13:30','size',1,NULL,'Number of pages in the index'),('codo_tools','itsm_fault_info','PRIMARY','2020-08-11 15:13:29','n_diff_pfx01',0,1,'id'),('codo_tools','itsm_fault_info','PRIMARY','2020-08-11 15:13:29','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_tools','itsm_fault_info','PRIMARY','2020-08-11 15:13:29','size',1,NULL,'Number of pages in the index'),('codo_tools','itsm_paid_mg','PRIMARY','2020-08-11 15:13:30','n_diff_pfx01',0,1,'id'),('codo_tools','itsm_paid_mg','PRIMARY','2020-08-11 15:13:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_tools','itsm_paid_mg','PRIMARY','2020-08-11 15:13:30','size',1,NULL,'Number of pages in the index'),('codo_tools','itsm_project_mg','PRIMARY','2020-08-11 15:13:29','n_diff_pfx01',0,1,'id'),('codo_tools','itsm_project_mg','PRIMARY','2020-08-11 15:13:29','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_tools','itsm_project_mg','PRIMARY','2020-08-11 15:13:29','size',1,NULL,'Number of pages in the index'),('codo_tools','prometheus_alert','PRIMARY','2020-08-11 15:13:29','n_diff_pfx01',0,1,'id'),('codo_tools','prometheus_alert','PRIMARY','2020-08-11 15:13:29','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_tools','prometheus_alert','PRIMARY','2020-08-11 15:13:29','size',1,NULL,'Number of pages in the index'),('codo_tools','prometheus_alert','keyword','2020-08-11 15:13:29','n_diff_pfx01',0,1,'keyword'),('codo_tools','prometheus_alert','keyword','2020-08-11 15:13:29','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_tools','prometheus_alert','keyword','2020-08-11 15:13:29','size',1,NULL,'Number of pages in the index'),('codo_tools','remind_manager','PRIMARY','2020-08-11 15:13:31','n_diff_pfx01',0,1,'id'),('codo_tools','remind_manager','PRIMARY','2020-08-11 15:13:31','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_tools','remind_manager','PRIMARY','2020-08-11 15:13:31','size',1,NULL,'Number of pages in the index'),('codo_tools','zabbix_config','PRIMARY','2020-08-11 15:13:30','n_diff_pfx01',0,1,'id'),('codo_tools','zabbix_config','PRIMARY','2020-08-11 15:13:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_tools','zabbix_config','PRIMARY','2020-08-11 15:13:30','size',1,NULL,'Number of pages in the index'),('codo_tools','zabbix_hook_logs','PRIMARY','2020-08-11 15:13:30','n_diff_pfx01',0,1,'id'),('codo_tools','zabbix_hook_logs','PRIMARY','2020-08-11 15:13:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_tools','zabbix_hook_logs','PRIMARY','2020-08-11 15:13:30','size',1,NULL,'Number of pages in the index'),('codo_tools','zabbix_hosts','PRIMARY','2020-08-11 15:13:30','n_diff_pfx01',0,1,'id'),('codo_tools','zabbix_hosts','PRIMARY','2020-08-11 15:13:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_tools','zabbix_hosts','PRIMARY','2020-08-11 15:13:30','size',1,NULL,'Number of pages in the index'),('codo_tools','zabbix_submit_task','PRIMARY','2020-08-11 15:13:30','n_diff_pfx01',0,1,'id'),('codo_tools','zabbix_submit_task','PRIMARY','2020-08-11 15:13:30','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('codo_tools','zabbix_submit_task','PRIMARY','2020-08-11 15:13:30','size',1,NULL,'Number of pages in the index'),('mysql','gtid_executed','PRIMARY','2020-08-08 07:15:06','n_diff_pfx01',0,1,'source_uuid'),('mysql','gtid_executed','PRIMARY','2020-08-08 07:15:06','n_diff_pfx02',0,1,'source_uuid,interval_start'),('mysql','gtid_executed','PRIMARY','2020-08-08 07:15:06','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','gtid_executed','PRIMARY','2020-08-08 07:15:06','size',1,NULL,'Number of pages in the index'),('sys','sys_config','PRIMARY','2020-08-08 07:15:07','n_diff_pfx01',6,1,'variable'),('sys','sys_config','PRIMARY','2020-08-08 07:15:07','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sys','sys_config','PRIMARY','2020-08-08 07:15:07','size',1,NULL,'Number of pages in the index');
/*!40000 ALTER TABLE `innodb_index_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `innodb_table_stats`
--

DROP TABLE IF EXISTS `innodb_table_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innodb_table_stats` (
  `database_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(199) COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `n_rows` bigint(20) unsigned NOT NULL,
  `clustered_index_size` bigint(20) unsigned NOT NULL,
  `sum_of_other_index_sizes` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `innodb_table_stats`
--

LOCK TABLES `innodb_table_stats` WRITE;
/*!40000 ALTER TABLE `innodb_table_stats` DISABLE KEYS */;
INSERT INTO `innodb_table_stats` VALUES ('cloud_nacos_db','config_info','2020-08-14 13:14:11',7,1,1),('cloud_nacos_db','config_info_aggr','2020-08-13 16:53:20',0,1,1),('cloud_nacos_db','config_info_beta','2020-08-13 16:53:20',0,1,1),('cloud_nacos_db','config_info_tag','2020-08-13 16:53:20',0,1,1),('cloud_nacos_db','config_tags_relation','2020-08-13 16:53:20',0,1,2),('cloud_nacos_db','group_capacity','2020-08-13 16:53:20',0,1,1),('cloud_nacos_db','his_config_info','2020-08-15 04:15:32',52,9,3),('cloud_nacos_db','permissions','2020-08-13 16:53:21',0,1,0),('cloud_nacos_db','roles','2020-08-13 16:53:21',0,1,0),('cloud_nacos_db','tenant_capacity','2020-08-13 16:53:20',0,1,1),('cloud_nacos_db','tenant_info','2020-08-13 17:03:59',4,1,2),('cloud_nacos_db','users','2020-08-13 16:53:20',0,1,0),('codo_admin','mg_app_settings','2020-08-10 13:38:13',0,1,1),('codo_admin','mg_components','2020-08-10 13:38:14',0,1,0),('codo_admin','mg_functions','2020-08-10 13:38:15',0,1,1),('codo_admin','mg_menus','2020-08-10 13:38:15',0,1,0),('codo_admin','mg_resource_group','2020-08-10 13:38:16',0,1,5),('codo_admin','mg_role_functions','2020-08-10 13:38:15',0,1,2),('codo_admin','mg_role_menus','2020-08-10 13:38:15',0,1,2),('codo_admin','mg_roles','2020-08-10 13:38:14',0,1,1),('codo_admin','mg_roles_components','2020-08-10 13:38:15',0,1,2),('codo_admin','mg_user_resource','2020-08-10 13:38:16',0,1,2),('codo_admin','mg_user_roles','2020-08-10 13:38:14',0,1,2),('codo_admin','mg_users','2020-08-10 13:38:14',0,1,6),('codo_admin','operation_record','2020-08-10 13:38:14',0,1,1),('codo_cmdb','admin_users','2020-08-11 13:12:13',0,1,1),('codo_cmdb','asset_configs','2020-08-11 13:12:13',0,1,1),('codo_cmdb','asset_db','2020-08-11 13:12:13',0,1,0),('codo_cmdb','asset_db_tag','2020-08-11 13:12:13',0,1,0),('codo_cmdb','asset_error_log','2020-08-11 13:12:13',0,1,0),('codo_cmdb','asset_idc','2020-08-11 13:12:13',0,1,1),('codo_cmdb','asset_operational_audit','2020-08-11 13:12:13',0,1,0),('codo_cmdb','asset_server','2020-08-11 13:12:12',0,1,1),('codo_cmdb','asset_server_detail','2020-08-11 13:12:12',0,1,0),('codo_cmdb','asset_server_tag','2020-08-11 13:12:11',0,1,0),('codo_cmdb','asset_tag','2020-08-11 13:12:11',0,1,1),('codo_cmdb','asset_tag_rule','2020-08-11 13:12:11',0,1,0),('codo_cmdb','aws_events','2020-08-11 13:12:13',0,1,0),('codo_cmdb','ssh_configs','2020-08-11 13:12:13',0,1,1),('codo_cmdb','system_users','2020-08-11 13:12:13',0,1,1),('codo_cron','apscheduler_jobs','2020-08-11 16:53:15',0,1,1),('codo_cron','cron_log','2020-08-11 13:46:44',0,1,0),('codo_dns','cloud_domain_account','2020-08-11 13:22:34',0,1,1),('codo_dns','cloud_domain_name','2020-08-11 13:22:35',0,1,5),('codo_dns','cloud_domain_opt_log','2020-08-11 13:22:35',0,1,1),('codo_dns','cloud_domain_records','2020-08-11 13:22:35',0,1,4),('codo_dns','cloud_domain_sync_log','2020-08-11 13:22:35',0,1,0),('codo_dns','dns_domain_conf','2020-08-12 07:24:38',2,1,0),('codo_dns','dns_domain_log','2020-08-11 13:22:34',0,1,0),('codo_dns','dns_domain_name','2020-08-11 13:22:34',0,1,1),('codo_dns','dns_domain_zone','2020-08-11 13:22:34',0,1,0),('codo_dns','domain_check_ssl','2020-08-11 13:22:35',0,1,2),('codo_task','asset_db','2020-08-11 13:39:24',0,1,0),('codo_task','asset_db_tag','2020-08-11 13:39:24',0,1,0),('codo_task','asset_proxy_info','2020-08-11 13:39:24',0,1,1),('codo_task','asset_server','2020-08-11 13:39:24',0,1,1),('codo_task','asset_server_tag','2020-08-11 13:39:24',0,1,0),('codo_task','asset_tag','2020-08-11 13:39:24',0,1,1),('codo_task','common_jobs','2020-08-11 13:39:25',0,1,1),('codo_task','scheduler_args_list','2020-08-11 13:39:23',0,1,0),('codo_task','scheduler_cmd_list','2020-08-11 13:39:22',0,1,1),('codo_task','scheduler_execute_user','2020-08-11 13:39:23',0,1,1),('codo_task','scheduler_task_info','2020-08-11 13:39:22',0,1,1),('codo_task','scheduler_task_list','2020-08-11 13:39:22',0,1,0),('codo_task','scheduler_task_log','2020-08-11 13:39:22',0,1,1),('codo_task','scheduler_temp_details','2020-08-11 13:39:23',0,1,0),('codo_task','scheduler_temp_list','2020-08-12 07:23:54',16,1,1),('codo_task','scheduler_temp_user','2020-08-11 13:39:23',0,1,0),('codo_task','task_code_repository','2020-08-11 13:39:24',0,1,1),('codo_task','task_docker_registry','2020-08-11 13:39:24',0,1,2),('codo_task','task_git_conf','2020-08-11 13:39:25',0,1,1),('codo_task','task_git_group','2020-08-11 13:39:25',0,1,0),('codo_task','task_git_hooks_log','2020-08-11 13:39:25',0,1,0),('codo_task','task_git_repo','2020-08-11 13:39:25',0,1,2),('codo_task','task_git_users','2020-08-11 13:39:25',0,1,0),('codo_task','task_monitor','2020-08-11 13:39:22',0,1,0),('codo_task','task_publish_config','2020-08-11 13:39:24',0,1,1),('codo_task','task_publish_list','2020-08-11 13:39:26',0,1,0),('codo_task','task_publish_log','2020-08-11 13:39:26',0,1,1),('codo_tools','itsm_event_record','2020-08-11 15:13:30',0,1,0),('codo_tools','itsm_fault_info','2020-08-11 15:13:29',0,1,0),('codo_tools','itsm_paid_mg','2020-08-11 15:13:30',0,1,0),('codo_tools','itsm_project_mg','2020-08-11 15:13:29',0,1,0),('codo_tools','prometheus_alert','2020-08-11 15:13:29',0,1,1),('codo_tools','remind_manager','2020-08-11 15:13:31',0,1,0),('codo_tools','zabbix_config','2020-08-11 15:13:30',0,1,0),('codo_tools','zabbix_hook_logs','2020-08-11 15:13:30',0,1,0),('codo_tools','zabbix_hosts','2020-08-11 15:13:30',0,1,0),('codo_tools','zabbix_submit_task','2020-08-11 15:13:30',0,1,0),('mysql','gtid_executed','2020-08-08 07:15:06',0,1,0),('sys','sys_config','2020-08-08 07:15:07',6,1,0);
/*!40000 ALTER TABLE `innodb_table_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ndb_binlog_index`
--

DROP TABLE IF EXISTS `ndb_binlog_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ndb_binlog_index` (
  `Position` bigint(20) unsigned NOT NULL,
  `File` varchar(255) NOT NULL,
  `epoch` bigint(20) unsigned NOT NULL,
  `inserts` int(10) unsigned NOT NULL,
  `updates` int(10) unsigned NOT NULL,
  `deletes` int(10) unsigned NOT NULL,
  `schemaops` int(10) unsigned NOT NULL,
  `orig_server_id` int(10) unsigned NOT NULL,
  `orig_epoch` bigint(20) unsigned NOT NULL,
  `gci` int(10) unsigned NOT NULL,
  `next_position` bigint(20) unsigned NOT NULL,
  `next_file` varchar(255) NOT NULL,
  PRIMARY KEY (`epoch`,`orig_server_id`,`orig_epoch`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ndb_binlog_index`
--

LOCK TABLES `ndb_binlog_index` WRITE;
/*!40000 ALTER TABLE `ndb_binlog_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `ndb_binlog_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
INSERT INTO `plugin` VALUES ('validate_password','validate_password.so');
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proc`
--

DROP TABLE IF EXISTS `proc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proc` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `type` enum('FUNCTION','PROCEDURE') NOT NULL,
  `specific_name` char(64) NOT NULL DEFAULT '',
  `language` enum('SQL') NOT NULL DEFAULT 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL DEFAULT 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL DEFAULT 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` longblob NOT NULL,
  `body` longblob NOT NULL,
  `definer` char(93) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stored Procedures';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proc`
--

LOCK TABLES `proc` WRITE;
/*!40000 ALTER TABLE `proc` DISABLE KEYS */;
/*!40000 ALTER TABLE `proc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procs_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8_bin NOT NULL,
  `Grantor` char(93) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_priv`
--

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proxies_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_user` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` char(93) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies_priv`
--

LOCK TABLES `proxies_priv` WRITE;
/*!40000 ALTER TABLE `proxies_priv` DISABLE KEYS */;
INSERT INTO `proxies_priv` VALUES ('localhost','root','','',1,'boot@connecting host','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `proxies_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_cost`
--

DROP TABLE IF EXISTS `server_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_cost` (
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`cost_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_cost`
--

LOCK TABLES `server_cost` WRITE;
/*!40000 ALTER TABLE `server_cost` DISABLE KEYS */;
INSERT INTO `server_cost` VALUES ('disk_temptable_create_cost',NULL,'2020-08-08 07:15:06',NULL),('disk_temptable_row_cost',NULL,'2020-08-08 07:15:06',NULL),('key_compare_cost',NULL,'2020-08-08 07:15:06',NULL),('memory_temptable_create_cost',NULL,'2020-08-08 07:15:06',NULL),('memory_temptable_row_cost',NULL,'2020-08-08 07:15:06',NULL),('row_evaluate_cost',NULL,'2020-08-08 07:15:06',NULL);
/*!40000 ALTER TABLE `server_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(64) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slave_master_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `slave_master_info` (
  `Number_of_lines` int(10) unsigned NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` char(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'The host name of the master.',
  `User_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The password used to connect to the master.',
  `Port` int(10) unsigned NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int(10) unsigned NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint(20) unsigned NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  `Channel_name` char(64) NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  `Tls_version` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Tls version',
  PRIMARY KEY (`Channel_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Master Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_relay_log_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `slave_relay_log_info` (
  `Number_of_lines` int(10) unsigned NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint(20) unsigned NOT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int(11) NOT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int(10) unsigned NOT NULL,
  `Id` int(10) unsigned NOT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  `Channel_name` char(64) NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Relay Log Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_worker_info`
--

DROP TABLE IF EXISTS `slave_worker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slave_worker_info` (
  `Id` int(10) unsigned NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Relay_log_pos` bigint(20) unsigned NOT NULL,
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Master_log_pos` bigint(20) unsigned NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint(20) unsigned NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint(20) unsigned NOT NULL,
  `Checkpoint_seqno` int(10) unsigned NOT NULL,
  `Checkpoint_group_size` int(10) unsigned NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  `Channel_name` char(64) NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`,`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Worker Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slave_worker_info`
--

LOCK TABLES `slave_worker_info` WRITE;
/*!40000 ALTER TABLE `slave_worker_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `slave_worker_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tables_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` char(93) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
INSERT INTO `tables_priv` VALUES ('localhost','mysql','mysql.session','user','boot@connecting host','0000-00-00 00:00:00','Select',''),('localhost','sys','mysql.sys','sys_config','root@localhost','2020-08-08 07:15:07','Select','');
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY (`Transition_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL DEFAULT '0',
  `Is_DST` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int(11) unsigned NOT NULL DEFAULT '0',
  `max_updates` int(11) unsigned NOT NULL DEFAULT '0',
  `max_connections` int(11) unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int(11) unsigned NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8_bin NOT NULL DEFAULT 'mysql_native_password',
  `authentication_string` text COLLATE utf8_bin,
  `password_expired` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint(5) unsigned DEFAULT NULL,
  `account_locked` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('%','root','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'mysql_native_password','*76215F4D0D1BD45D4AEC2456582A346B942BA01C','N','2020-08-08 07:18:33',NULL,'N'),('%','mysql.session','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*THISISNOTAVALIDPASSWORDTHATCANBEUSEDHERE','N','2020-08-08 07:15:07',NULL,'Y'),('%','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*THISISNOTAVALIDPASSWORDTHATCANBEUSEDHERE','N','2020-08-08 07:15:07',NULL,'Y'),('%','codo','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*831B60BEB1AF9E803FF69071DB1D2AFE2F7CB533','N','2020-08-10 03:32:12',NULL,'N'),('%','learn','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'mysql_native_password','*A719682A4B1A22EE9DBF37AEEC3AB80463B6E138','N','2020-08-13 11:42:07',NULL,'N');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumblob NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int(11) NOT NULL,
  `rows_examined` int(11) NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int(11) NOT NULL,
  `insert_id` int(11) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `sql_text` mediumblob NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-15 21:50:57