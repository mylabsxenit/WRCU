
CREATE TABLE `pc` (
  `idx` bigint(11) NOT NULL AUTO_INCREMENT,
  `pc_ipaddr` varchar(15) NOT NULL DEFAULT '',
  `pc_hwaddr` varchar(17) NOT NULL DEFAULT '',
  `pc_name` varchar(10) NOT NULL DEFAULT '',
  `pc_rom` varchar(20) NOT NULL DEFAULT '',
  `pc_info` varchar(50) NOT NULL DEFAULT '',
  `pc_alias` varchar(20) NOT NULL DEFAULT '',
  `xenit_nick` varchar(20) NOT NULL DEFAULT '',
  `xenit_nick_old` varchar(20) NOT NULL DEFAULT '',
  `xenit_main` char(1) NOT NULL DEFAULT 'n',
  `xenit_update` char(1) NOT NULL DEFAULT 'n',
  `xenit_mod` char(1) NOT NULL DEFAULT 'n',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `xenit_trans` char(1) NOT NULL DEFAULT 'n',
  `inter` char(1) NOT NULL DEFAULT 'Y',
  `locks` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`idx`),
  KEY `idx_pc_ipaddr` (`pc_ipaddr`),
  KEY `idx_pc_hwaddr` (`pc_hwaddr`),
  KEY `idx_pc_name` (`pc_name`),
  KEY `idx_pc_rom` (`pc_rom`),
  KEY `idx_pc_alias` (`pc_alias`),
  KEY `idx_xenit_nick` (`xenit_nick`),
  KEY `idx_xenit_nick_old` (`xenit_nick_old`),
  KEY `idx_xenit_main` (`xenit_main`),
  KEY `idx_xenit_update` (`xenit_update`),
  KEY `idx_xenit_mod` (`xenit_mod`),
  KEY `idx_reg_date` (`reg_date`),
  KEY `idx_xenit_trans` (`xenit_trans`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sys_member` (
  `idx` bigint(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(15) NOT NULL DEFAULT '',
  `userpasswd` varchar(100) NOT NULL DEFAULT '',
  `nickname` varchar(15) NOT NULL DEFAULT '',
  `userlevel` bigint(11) NOT NULL DEFAULT '1',
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idx`),
  KEY `idx_userid` (`userid`),
  KEY `idx_userpasswd` (`userpasswd`),
  KEY `idx_nickname` (`nickname`),
  KEY `idx_userlevel` (`userlevel`),
  KEY `idx_reg_date` (`reg_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sys_member` VALUES (1,'admin','YWRtaW4=','admin',0,NOW());
