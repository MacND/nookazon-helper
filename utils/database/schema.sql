CREATE TABLE `data` (
  `discord_id` varchar(32) NOT NULL,
  `nookazon_profile_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`discord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

GRANT SELECT, UPDATE ON nookazon.data TO 'nook'@'%';