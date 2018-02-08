CREATE DATABASE databaseapi;

USE databaseapi;

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` INT(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` VARCHAR(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` INT(15) unsigned NOT NULL,
  `email` VARCHAR(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `update_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(`id`),
  UNIQUE KEY `contacts_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8;

DESCRIBE contacts;