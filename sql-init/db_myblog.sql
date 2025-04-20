
CREATE DATABASE IF NOT EXISTS `db_myblog` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_myblog;
CREATE TABLE `user` (
                        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
                        `passwd` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                        `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
                        `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                        `access` tinyint(1) NOT NULL DEFAULT '0',
                        `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                        `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
                        `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                        `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `file` (
                        `id` int(11) NOT NULL AUTO_INCREMENT,
                        `filename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                        `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
                        `uuid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                        `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                        `isdelete` tinyint(1) NOT NULL DEFAULT '0',
                        `writer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
                        `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;