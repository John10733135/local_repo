DROP  TABLE  IF  EXISTS  `#__groupbuy_act`;
DROP  TABLE  IF  EXISTS  `#__groupbuymember`;

CREATE TABLE `#__groupbuy_act` (
  `act_id` varchar(20) NOT NULL PRIMARY KEY COMMENT '活動編號',
  `act_name` varchar(10) NOT NULL COMMENT '活動名稱',
  `act_intro` text NOT NULL COMMENT '活動簡介',
  `act_content` text NOT NULL COMMENT '活動內容',
  `act_time` datetime NOT NULL COMMENT '活動時間',
  `act_loc` varchar(25) NOT NULL COMMENT '活動地點',
  `act_upper` int(4) NOT NULL COMMENT '人數上限',
  `act_lower` int(4) NOT NULL COMMENT '人數下限',
  `act_price` int(6) NOT NULL COMMENT '活動價格',
  `farm_id` int(8) NOT NULL COMMENT '農場編號'
) 
  ENGINE = InnoDB
	DEFAULT CHARSET = utf8mb4
	DEFAULT COLLATE = utf8mb4_unicode_ci;

INSERT INTO `#__groupbuy_act` (`act_id`, `act_name`, `act_intro`, `act_content`, `act_time` ,`act_loc`, `act_lower`, `act_upper`, `act_price`, `farm_id`)
VALUES(
  'A農場0001', 
  '農場體驗「窯烤披薩活動」開跑啦!', 
  '<p>報到，分成四組人員。</p>\r\n<p>從撿拾木材、劈材、起火、揉麵糰。</p>\r\n<p> </p>\r\n<p> </p>', 
  '<p><strong><span style=\"color: #ff6600;\">一日體驗行程</span></strong></p>\r\n<p>10:00~11:00<br />報到，分成四組人員。<br />從撿拾木材、劈材、起火、揉麵糰。</p>\r\n<p>11:00~12:00等待麵糰發酵時間，</p>\r\n<p>帶大家去園區導覽，</p>\r\n<p><strong><span style=\"color: #800080;\">挑揀澳州茶樹細枝。放入鍋爐準備蒸餾粹取。</span></strong><br /><strong><span style=\"color: #800080;\">每人可帶回1瓶價值250元的30ml茶樹純露。</span></strong></p>', 
  '0000-00-00 00:00:00',
  '423台中市東勢區東坑路795巷2號', 
  10,
  30,
  350, 
  1);

CREATE TABLE `#__groupbuymember` (
  `mid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `phone` int(10) NOT NULL,
  `pemail` varchar(254) NOT NULL,
  `memo` mediumtext NOT NULL,
  `people` int(2) NOT NULL,
  `cost` int(11) NOT NULL,
  `confirm` varchar(11) NOT NULL DEFAULT '否'
)

	ENGINE = InnoDB
	AUTO_INCREMENT = 0
	DEFAULT CHARSET = utf8mb4
	DEFAULT COLLATE = utf8mb4_unicode_ci;

INSERT INTO `#__groupbuymember` (`mid`, `id`, `pname`, `phone`, `pemail`, `memo`, `people`, `cost`, `confirm`) VALUES
(1, 1, '李怡志', 963784512, 'fundk66@gmail.com', '  ', 2, 700, '否'),
(2, 1, '彭敔皓', 928456882, 'bob5588@gmail.com', '  ', 2, 700, '否'),
(3, 2, 'YI EN YAO', 963813420, 'en@gmail.com', '  ', 1, 350, '否');
