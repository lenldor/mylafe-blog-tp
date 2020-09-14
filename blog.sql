CREATE TABLE IF NOT EXISTS `lt_album` (
  `al_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `al_name` varchar(64) NOT NULL COMMENT '相册名',
  `al_img` varchar(128) NOT NULL DEFAULT './Upload/Album/defauly.png' COMMENT '封面',
  `al_remark` varchar(256) NOT NULL COMMENT '描述',
  `al_time` int(10) NOT NULL COMMENT '添加时间',
  `al_hit` int(11) NOT NULL COMMENT '点击量',
  `al_view` int(11) NOT NULL COMMENT '显示，0不显示，1显示',
  `al_ip` varchar(16) NOT NULL COMMENT 'ip',
  `al_root` varchar(64) NOT NULL,
  `al_from` varchar(64) NOT NULL,
  PRIMARY KEY (`al_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='相册表';

CREATE TABLE IF NOT EXISTS `lt_album_c` (
  `alc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `alc_pid` int(11) NOT NULL COMMENT '相册ID',
  `alc_name` varchar(128) NOT NULL COMMENT '评论姓名',
  `alc_email` varchar(128) NOT NULL COMMENT '邮箱',
  `alc_url` varchar(128) NOT NULL COMMENT '域名',
  `alc_content` text NOT NULL COMMENT '内容',
  `alc_ip` varchar(16) NOT NULL COMMENT 'IP',
  `alc_time` int(10) NOT NULL COMMENT '时间',
  `alc_from` varchar(16) NOT NULL COMMENT '来自',
  `alc_img` varchar(128) NOT NULL DEFAULT './Head/default.png' COMMENT '头像',
  `alc_rname` varchar(128) NOT NULL COMMENT '回复人',
  `alc_rcontent` text NOT NULL COMMENT '回复文本',
  `alc_rtime` int(10) NOT NULL COMMENT '时间',
  PRIMARY KEY (`alc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='相册评论表';

CREATE TABLE IF NOT EXISTS `lt_article` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `a_img` varchar(128) NOT NULL COMMENT '缩略图',
  `a_title` varchar(128) NOT NULL COMMENT '标题',
  `a_remark` varchar(256) NOT NULL COMMENT '描述',
  `a_keyword` varchar(64) NOT NULL COMMENT '关键词',
  `pid` int(11) NOT NULL COMMENT '栏目',
  `a_time` int(10) NOT NULL COMMENT '时间',
  `a_content` text NOT NULL COMMENT '内容',
  `a_view` int(11) NOT NULL COMMENT '显示，0为不显示，1为显示，2为推荐',
  `a_hit` int(11) NOT NULL COMMENT '点击量',
  `a_original` int(11) NOT NULL COMMENT '原创，0为不是，1为是',
  `a_from` varchar(128) NOT NULL COMMENT '来自',
  `a_author` varchar(32) NOT NULL COMMENT '作者',
  `a_ip` varchar(16) NOT NULL COMMENT 'IP',
  `a_num` int(11) NOT NULL COMMENT '文章评论数量',
  PRIMARY KEY (`a_id`),
  KEY `a_title` (`a_title`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COMMENT='文章表';

CREATE TABLE IF NOT EXISTS `lt_article_c` (
  `ac_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ac_pid` int(11) NOT NULL COMMENT '文章ID',
  `ac_name` varchar(128) NOT NULL COMMENT '昵称',
  `ac_email` varchar(128) NOT NULL COMMENT '邮箱',
  `ac_url` varchar(128) NOT NULL COMMENT '域名',
  `ac_content` text NOT NULL COMMENT '内容',
  `ac_img` varchar(128) NOT NULL COMMENT '头像',
  `ac_ip` varchar(16) NOT NULL COMMENT 'IP',
  `ac_from` varchar(64) NOT NULL COMMENT '来自',
  `ac_time` int(10) NOT NULL COMMENT '时间',
  `ac_rname` varchar(64) NOT NULL COMMENT '回复人',
  `ac_rtime` int(10) NOT NULL COMMENT '时间',
  `ac_rcontent` text NOT NULL COMMENT '回复文本',
  PRIMARY KEY (`ac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COMMENT='文章评论表';

CREATE TABLE IF NOT EXISTS `lt_gust` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `g_name` varchar(128) NOT NULL COMMENT '昵称',
  `g_email` varchar(128) NOT NULL COMMENT '邮箱',
  `g_img` varchar(128) NOT NULL COMMENT '头像',
  `g_url` varchar(128) NOT NULL COMMENT '域名',
  `g_content` text NOT NULL COMMENT '文本',
  `g_time` int(10) NOT NULL COMMENT '时间',
  `g_from` varchar(64) NOT NULL COMMENT '来自',
  `g_ip` varchar(16) NOT NULL COMMENT 'IP',
  `g_rname` varchar(64) NOT NULL COMMENT '回复人',
  `g_rtime` int(10) NOT NULL COMMENT '回复时间',
  `g_rcontent` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COMMENT='留言表';

CREATE TABLE IF NOT EXISTS `lt_link` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `l_name` varchar(128) NOT NULL COMMENT '申请人',
  `l_email` varchar(128) NOT NULL COMMENT '邮箱',
  `l_url` varchar(128) NOT NULL COMMENT '域名',
  `l_content` text NOT NULL COMMENT '描述',
  `l_ip` varchar(16) NOT NULL COMMENT 'IP',
  `l_from` varchar(64) NOT NULL DEFAULT 'Win 7' COMMENT '来自',
  `l_time` int(10) NOT NULL COMMENT '时间',
  `l_sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序1为第一',
  `l_view` int(11) NOT NULL COMMENT '显示0不显示1为内页2位首页',
  `l_rname` varchar(64) NOT NULL COMMENT '回复人',
  `l_rtime` int(10) NOT NULL COMMENT '时间',
  `l_rcontent` text NOT NULL COMMENT '文本',
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

CREATE TABLE IF NOT EXISTS `lt_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lname` varchar(64) NOT NULL COMMENT '用户名',
  `ltime` int(10) NOT NULL COMMENT '时间',
  `lip` varchar(16) NOT NULL COMMENT 'IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='登陆日志表';

CREATE TABLE IF NOT EXISTS `lt_picture` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `p_pid` int(11) NOT NULL COMMENT '相册ID',
  `p_img` varchar(128) NOT NULL COMMENT '路径',
  `p_thumb` varchar(128) NOT NULL COMMENT '缩略图',
  `p_remark` varchar(256) NOT NULL COMMENT '描述',
  `p_time` int(10) NOT NULL COMMENT '时间',
  `p_view` int(11) NOT NULL COMMENT '显示0为不显示1位显示',
  `p_root` varchar(64) NOT NULL COMMENT '添加人',
  `p_ip` varchar(16) NOT NULL COMMENT 'ip',
  `p_from` varchar(64) NOT NULL COMMENT '来自',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='图片表';

CREATE TABLE IF NOT EXISTS `lt_ppt` (
  `pp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pp_img` varchar(128) NOT NULL DEFAULT '/Public/Img/ppt/p1.jpg' COMMENT '图片路径',
  `pp_url` varchar(128) NOT NULL COMMENT '图片指向路径',
  `pp_note` varchar(256) NOT NULL COMMENT '图片描述',
  `pp_time` int(11) NOT NULL COMMENT '添加时间',
  `pp_from` varchar(64) NOT NULL COMMENT '来自',
  `pp_ip` varchar(16) NOT NULL COMMENT '添加Ip',
  `pp_root` varchar(32) NOT NULL COMMENT '操作人',
  `pp_view` int(11) NOT NULL COMMENT '0为不显示1为显示',
  PRIMARY KEY (`pp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='幻灯表';

CREATE TABLE IF NOT EXISTS `lt_qq` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `q_name` varchar(128) NOT NULL COMMENT '昵称',
  `q_img` varchar(128) NOT NULL COMMENT '头像',
  `q_num` int(11) NOT NULL COMMENT '登陆次数',
  `q_ip` varchar(16) NOT NULL COMMENT 'IP',
  `q_time` int(10) NOT NULL COMMENT '时间',
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='QQ访客表';

CREATE TABLE IF NOT EXISTS `lt_say` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `s_content` text NOT NULL COMMENT '文本',
  `s_from` varchar(64) NOT NULL COMMENT '来自',
  `s_ip` varchar(16) NOT NULL COMMENT 'IP',
  `s_time` int(10) NOT NULL COMMENT '时间',
  `s_view` int(11) NOT NULL COMMENT '显示0位不显示1为显示',
  `s_hit` int(11) NOT NULL COMMENT '点击量',
  `s_author` varchar(64) NOT NULL COMMENT '作者',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='说说表';

CREATE TABLE IF NOT EXISTS `lt_say_c` (
  `sc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sc_pid` int(11) NOT NULL COMMENT '说说id',
  `sc_name` varchar(128) NOT NULL COMMENT '昵称',
  `sc_email` varchar(128) NOT NULL COMMENT '邮箱',
  `sc_url` varchar(128) NOT NULL COMMENT '域名',
  `sc_content` text NOT NULL COMMENT '文本',
  `sc_ip` varchar(16) NOT NULL COMMENT 'IP',
  `sc_img` varchar(128) NOT NULL COMMENT '头像',
  `sc_from` varchar(64) NOT NULL COMMENT '来自',
  `sc_time` int(10) NOT NULL COMMENT '时间',
  `sc_rname` varchar(64) NOT NULL COMMENT '回复人',
  `sc_rtime` int(10) NOT NULL COMMENT '时间',
  `sc_rcontent` text NOT NULL COMMENT '文本',
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='说说评论';

CREATE TABLE IF NOT EXISTS `lt_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(128) NOT NULL COMMENT '标题',
  `title2` varchar(128) NOT NULL COMMENT '次级标题',
  `keyword` varchar(128) NOT NULL COMMENT '关键词',
  `remark` varchar(256) NOT NULL COMMENT '描述',
  `author` varchar(64) NOT NULL COMMENT '作者',
  `createtime` date NOT NULL COMMENT '创建时间',
  `icp` varchar(32) NOT NULL COMMENT '备案',
  `copy` varchar(128) NOT NULL COMMENT '版权',
  `footer` text NOT NULL COMMENT '统计',
  `hit` int(11) NOT NULL COMMENT '访问',
  `admin_img` varchar(128) NOT NULL COMMENT '管理员头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统基本表';

CREATE TABLE IF NOT EXISTS `lt_tag` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `t_name` varchar(128) NOT NULL COMMENT '栏目名称',
  `t_time` int(10) NOT NULL COMMENT '时间',
  `t_sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `t_view` int(11) NOT NULL COMMENT '显示0不显示1显示',
  `t_remark` varchar(256) NOT NULL COMMENT '描述',
  `t_ip` varchar(16) NOT NULL COMMENT 'IP',
  `t_from` varchar(64) NOT NULL COMMENT '来自',
  `t_root` varchar(64) NOT NULL COMMENT '操作人',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='栏目表';

CREATE TABLE IF NOT EXISTS `lt_user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `u_name` varchar(64) NOT NULL COMMENT '用户名',
  `u_password` varchar(32) NOT NULL COMMENT '密码',
  `u_class` int(11) NOT NULL COMMENT '权限组1为最高2为编辑3为游客',
  `u_remark` varchar(256) NOT NULL COMMENT '用户描述',
  `u_email` varchar(128) NOT NULL COMMENT '邮箱',
  `u_time` datetime NOT NULL COMMENT '时间',
  `u_ip` varchar(16) NOT NULL COMMENT 'IP',
  `u_root` varchar(64) NOT NULL DEFAULT 'root' COMMENT '操作人',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

CREATE TABLE IF NOT EXISTS `lt_version` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `v_version` varchar(16) NOT NULL COMMENT '版本号',
  `v_remark` text NOT NULL COMMENT '描述',
  `v_time` int(10) NOT NULL COMMENT '时间',
  `v_view` int(11) NOT NULL COMMENT '0为不显示,1为显示',
  `v_ip` varchar(16) NOT NULL COMMENT 'IP',
  `v_author` varchar(64) NOT NULL COMMENT '作者',
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='版本表';
