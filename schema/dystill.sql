CREATE TABLE `filters` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `field` varchar(50) NOT NULL,
  `value` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`filter_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB;

CREATE TABLE `filters_actions` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) DEFAULT NULL,
  `action` varchar(10) NOT NULL,
  `argument` varchar(255) NOT NULL,
  PRIMARY KEY (`action_id`),
  KEY `filter_id` (`filter_id`)
) ENGINE=InnoDB;