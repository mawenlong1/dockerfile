-- 创建数据库
create database `docker_order` default character set utf8 collate utf8_general_ci;

use docker;

-- 类目
create table `product` (
    `id` int not null auto_increment,
    `name` varchar(64) not null,
    `type` int not null x,
    `create_time` timestamp not null default current_timestamp comment '创建时间',
    `update_time` timestamp not null default current_timestamp on update current_timestamp comment '修改时间',
    primary key (`id`)
)default charset utf8 collate utf8_unicode_ci;
INSERT INTO `product` (`id`, `name`, `type`, `create_time`, `update_time`)
VALUES
	(1,'热榜',11,'2017-03-28 16:40:22','2017-11-26 23:39:36'),
	(2,'好吃的',22,'2017-03-14 17:38:46','2017-11-26 23:39:40');
