/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : goods

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2019-03-20 17:47:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for biz_agent
-- ----------------------------
DROP TABLE IF EXISTS `biz_agent`;
CREATE TABLE `biz_agent` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '代理商id',
  `agent_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '代理商名称',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `province_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '省id',
  `city_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市id',
  `area_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '区id',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址全称',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代理商表';

-- ----------------------------
-- Records of biz_agent
-- ----------------------------
INSERT INTO `biz_agent` VALUES ('57d91387462e11e99da72c56dcd4f98f', '前沿科技有限公司', '13684991203', '440000', '440300', '440305', '广东省深圳市南山区', '2019-03-14 15:54:04', null, '2019-03-14 15:54:04', null, '0');

-- ----------------------------
-- Table structure for biz_brand
-- ----------------------------
DROP TABLE IF EXISTS `biz_brand`;
CREATE TABLE `biz_brand` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌id',
  `brand_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '品牌名称',
  `brand_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '品牌图片',
  `brand_remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '品牌描述',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- ----------------------------
-- Records of biz_brand
-- ----------------------------
INSERT INTO `biz_brand` VALUES ('e07e7691463111e99da72c56dcd4f98f', '尼康', 'http://localhost:8082/gla/static/probimg/20190314/1552551561545.jpg', '', '2019-03-14 16:19:22', null, '2019-03-14 16:19:22', null, '0');
INSERT INTO `biz_brand` VALUES ('ea123e4e463111e99da72c56dcd4f98f', '宝丽来', 'http://localhost:8082/gla/static/probimg/20190314/1552551577620.jpg', '', '2019-03-14 16:19:38', null, '2019-03-14 16:19:38', null, '0');

-- ----------------------------
-- Table structure for biz_business
-- ----------------------------
DROP TABLE IF EXISTS `biz_business`;
CREATE TABLE `biz_business` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `business_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商家名称',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商家电话',
  `province_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '省id',
  `city_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市id',
  `area_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '区域id',
  `business_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商家地址',
  `link_people` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of biz_business
-- ----------------------------
INSERT INTO `biz_business` VALUES ('0507a2ea077649a04d59d37b43954cd1', 'aaa', '18245757142', null, null, null, null, 'ffff', '2019-03-20 17:34:08', 'admin', null, null, '0');
INSERT INTO `biz_business` VALUES ('081d4df3462b11e99da72c56dcd4f98f', '尼康眼镜', '12345678912', null, null, null, '重庆市渝北区', '张无忌', '2019-03-14 15:30:22', null, '2019-03-14 15:30:22', null, '0');
INSERT INTO `biz_business` VALUES ('3b794236462b11e99da72c56dcd4f98f', '宝丽来眼镜', '23456789123', null, null, null, '广州深圳市南山区', '金毛狮王', '2019-03-14 15:31:48', null, '2019-03-14 15:31:48', null, '0');
INSERT INTO `biz_business` VALUES ('8d731c28dca0f5b419f95784e1f84ff0', '时尚芭莎时尚周刊', '15236411715', null, null, null, null, '苏芒', '2019-03-20 16:47:24', 'admin', '2019-03-20 16:50:27', 'admin', '0');
INSERT INTO `biz_business` VALUES ('da5f76eb2229d785afefba2c30844836', '一汽大众汽车', '19236545218', null, null, null, null, '刘毅', '2019-03-20 16:49:34', 'admin', '2019-03-20 16:50:35', 'admin', '1');

-- ----------------------------
-- Table structure for biz_comment
-- ----------------------------
DROP TABLE IF EXISTS `biz_comment`;
CREATE TABLE `biz_comment` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评价id',
  `goods_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品id',
  `score` int(1) DEFAULT NULL COMMENT '分数',
  `order_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单id',
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户id',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '评论标题',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '评论内容',
  `audit_status` int(1) DEFAULT NULL COMMENT '审核状态 0未审核 1通过 2拒绝',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品评论表';

-- ----------------------------
-- Records of biz_comment
-- ----------------------------

-- ----------------------------
-- Table structure for biz_goods
-- ----------------------------
DROP TABLE IF EXISTS `biz_goods`;
CREATE TABLE `biz_goods` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品id',
  `goods_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `goods_subhead` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品副标题',
  `goods_brand_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品品牌id',
  `goods_sort_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品分类id',
  `goods_suggest` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品介绍',
  `goods_tag` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品标签',
  `goods_model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品模型地址',
  `goods_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品图片',
  `bind_business` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '绑定商家的id',
  `cost_price` decimal(10,2) DEFAULT NULL COMMENT '成本价',
  `sale_price` decimal(10,2) DEFAULT NULL COMMENT '销售价',
  `descript` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品描述',
  `status` int(1) DEFAULT NULL COMMENT '商品审核状态 1 审批中  2未通过  0 通过',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品标准化表';

-- ----------------------------
-- Records of biz_goods
-- ----------------------------
INSERT INTO `biz_goods` VALUES ('ea794c6b463411e99da72c56dcd4f98f', '宝丽来眼镜S1', 'S1', 'ea123e4e463111e99da72c56dcd4f98f', '2a242b62463111e99da72c56dcd4f98f', '', 'http://localhost:8082/gla/static/probimg/20190314/1552552866768.jpg', 'http://localhost:8082/gla/static/probimg/20190314/1552552866778.jpg', 'http://localhost:8082/gla/static/probimg/20190314/1552552866783.jpg', '3b794236462b11e99da72c56dcd4f98f', '500.00', '700.00', null, '1', '2019-03-14 16:41:07', null, '2019-03-14 16:41:07', null, '0');

-- ----------------------------
-- Table structure for biz_goods_attribute
-- ----------------------------
DROP TABLE IF EXISTS `biz_goods_attribute`;
CREATE TABLE `biz_goods_attribute` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品id',
  `weight` double DEFAULT NULL COMMENT '商品重量',
  `length` double DEFAULT NULL COMMENT '商品长度',
  `height` double DEFAULT NULL COMMENT '商品高度',
  `width` double DEFAULT NULL COMMENT '商品宽度',
  `color_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品颜色',
  `production_date` datetime DEFAULT NULL COMMENT '生产日期',
  `shelf_life` int(3) DEFAULT NULL COMMENT '商品有效期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性表';

-- ----------------------------
-- Records of biz_goods_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for biz_message
-- ----------------------------
DROP TABLE IF EXISTS `biz_message`;
CREATE TABLE `biz_message` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息表id',
  `msg_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '消息内容',
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接收用户id',
  `send_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发送人',
  `msg_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '消息类型',
  `msg_status` int(1) DEFAULT NULL COMMENT '消息状态  已读 未读',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户消息表';

-- ----------------------------
-- Records of biz_message
-- ----------------------------

-- ----------------------------
-- Table structure for biz_order
-- ----------------------------
DROP TABLE IF EXISTS `biz_order`;
CREATE TABLE `biz_order` (
  `order_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单ID',
  `order_sn` bigint(20) unsigned NOT NULL COMMENT '订单编号 yyyymmddnnnnnnnn',
  `user_id` int(10) unsigned NOT NULL COMMENT '下单人ID',
  `shipping_user` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人姓名',
  `province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市',
  `area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `payment_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '支付方式：1支付宝，2微信',
  `order_money` decimal(8,2) NOT NULL COMMENT '订单金额',
  `district_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '优惠金额',
  `shipping_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '运费金额',
  `payment_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '支付金额',
  `shipping_comp_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '快递公司名称',
  `shipping_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '快递单号',
  `shipping_time` datetime DEFAULT NULL COMMENT '发货时间',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `receive_time` datetime DEFAULT NULL COMMENT '收货时间',
  `order_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `invoice_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发票抬头',
  `create_on` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单主表';

-- ----------------------------
-- Records of biz_order
-- ----------------------------

-- ----------------------------
-- Table structure for biz_order_cart
-- ----------------------------
DROP TABLE IF EXISTS `biz_order_cart`;
CREATE TABLE `biz_order_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车ID',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户ID',
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `goods_amount` int(11) NOT NULL COMMENT '加入购物车商品数量',
  `price` decimal(8,2) NOT NULL COMMENT '商品价格',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of biz_order_cart
-- ----------------------------

-- ----------------------------
-- Table structure for biz_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `biz_order_detail`;
CREATE TABLE `biz_order_detail` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单详情表ID',
  `order_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单表ID',
  `goods_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单商品ID',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `goods_amount` int(11) NOT NULL DEFAULT '1' COMMENT '购买商品数量',
  `goods_price` decimal(8,2) NOT NULL COMMENT '购买商品单价',
  `goods_cost` decimal(8,2) NOT NULL COMMENT '成本价格',
  `weight` double DEFAULT NULL COMMENT '商品重量',
  `fee_money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '优惠金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单详情表';

-- ----------------------------
-- Records of biz_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for biz_sort
-- ----------------------------
DROP TABLE IF EXISTS `biz_sort`;
CREATE TABLE `biz_sort` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类表id',
  `sort_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分类名称',
  `parent_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分类父id',
  `level` int(1) NOT NULL DEFAULT '1' COMMENT '分类层级 1第一层 2第二层  3第三层',
  `sort` int(10) DEFAULT NULL COMMENT '排序',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- ----------------------------
-- Records of biz_sort
-- ----------------------------
INSERT INTO `biz_sort` VALUES ('24977038463111e99da72c56dcd4f98f', '穿戴', '0', '1', '1', '2019-03-14 16:14:06', null, '2019-03-14 16:14:06', null, '0');
INSERT INTO `biz_sort` VALUES ('2a242b62463111e99da72c56dcd4f98f', '眼镜', '24977038463111e99da72c56dcd4f98f', '2', '1', '2019-03-14 16:14:16', null, '2019-03-14 16:14:16', null, '0');

-- ----------------------------
-- Table structure for biz_stock
-- ----------------------------
DROP TABLE IF EXISTS `biz_stock`;
CREATE TABLE `biz_stock` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品id',
  `stock` int(10) DEFAULT '0' COMMENT '当前商品库存',
  `lock_stock` int(10) DEFAULT NULL COMMENT '当前锁住库存',
  `order_lock_stock` int(10) DEFAULT NULL COMMENT '订单占用库存',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存表';

-- ----------------------------
-- Records of biz_stock
-- ----------------------------
INSERT INTO `biz_stock` VALUES ('91301116463f11e99da72c56dcd4f98f', 'ea794c6b463411e99da72c56dcd4f98f', '100', null, null, '2019-03-14 17:57:21', null, '2019-03-14 17:57:21', null, '0');

-- ----------------------------
-- Table structure for biz_terminal
-- ----------------------------
DROP TABLE IF EXISTS `biz_terminal`;
CREATE TABLE `biz_terminal` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '终端id',
  `terminal_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '终端名称',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `province_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '省id',
  `city_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市id',
  `area_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '区id',
  `agent_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '代理商id',
  `lat` decimal(10,6) DEFAULT NULL COMMENT '经度',
  `lng` decimal(10,6) DEFAULT NULL COMMENT '纬度',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址全称',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  `is_binding` int(1) DEFAULT NULL COMMENT '绑定状态  0 绑定  1未绑定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端表';

-- ----------------------------
-- Records of biz_terminal
-- ----------------------------
INSERT INTO `biz_terminal` VALUES ('5bf5b553418c11e99485525400c68bfa', 'A01', '13684336523', '640000', '640500', '640521', '57d91387462e11e99da72c56dcd4f98f', '12.032636', '0.651178', '宁夏回族自治区中卫市中宁县', '2019-03-08 18:24:31', null, '2019-03-08 18:24:31', null, '0', '0');
INSERT INTO `biz_terminal` VALUES ('7c1fe092449d11e9b18f2c56dcd4f98f', 'B02', '13623652233', '540000', '542200', '542229', '57d91387462e11e99da72c56dcd4f98f', '13.046546', '0.263565', '西藏自治区山南地区加查县', '2019-03-12 16:04:15', null, '2019-03-12 16:04:15', null, '0', '0');
INSERT INTO `biz_terminal` VALUES ('e91646ae423f11e99485525400c68bfa', '555', '111333333', '530000', '533100', '533122', '1440a757425811e99485525400c68bfa', '11.000000', '11.000000', '云南省德宏傣族景颇族自治州梁河县', '2019-03-09 15:49:48', null, '2019-03-09 15:49:48', null, '0', '1');

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区id',
  `area_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '区名称',
  `area_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '区代码',
  `city_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市id',
  `order` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区表';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('110101', '东城区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110102', '西城区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110103', '崇文区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110104', '宣武区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110105', '朝阳区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110106', '丰台区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110107', '石景山区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110108', '海淀区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110109', '门头沟区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110111', '房山区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110112', '通州区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110113', '顺义区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110114', '昌平区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110115', '大兴区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110116', '怀柔区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110117', '平谷区', null, '110100', null);
INSERT INTO `sys_area` VALUES ('110228', '密云县', null, '110200', null);
INSERT INTO `sys_area` VALUES ('110229', '延庆县', null, '110200', null);
INSERT INTO `sys_area` VALUES ('120101', '和平区', null, '120100', null);
INSERT INTO `sys_area` VALUES ('120102', '河东区', null, '120100', null);
INSERT INTO `sys_area` VALUES ('120103', '河西区', null, '120100', null);
INSERT INTO `sys_area` VALUES ('120104', '南开区', null, '120100', null);
INSERT INTO `sys_area` VALUES ('120105', '河北区', null, '120100', null);
INSERT INTO `sys_area` VALUES ('120106', '红桥区', null, '120100', null);
INSERT INTO `sys_area` VALUES ('120107', '塘沽区', null, '120100', null);
INSERT INTO `sys_area` VALUES ('120108', '汉沽区', null, '120100', null);
INSERT INTO `sys_area` VALUES ('120109', '大港区', null, '120100', null);
INSERT INTO `sys_area` VALUES ('120110', '东丽区', null, '120100', null);
INSERT INTO `sys_area` VALUES ('120111', '西青区', null, '120100', null);
INSERT INTO `sys_area` VALUES ('120112', '津南区', null, '120100', null);
INSERT INTO `sys_area` VALUES ('120113', '北辰区', null, '120100', null);
INSERT INTO `sys_area` VALUES ('120114', '武清区', null, '120100', null);
INSERT INTO `sys_area` VALUES ('120115', '宝坻区', null, '120100', null);
INSERT INTO `sys_area` VALUES ('120221', '宁河县', null, '120200', null);
INSERT INTO `sys_area` VALUES ('120223', '静海县', null, '120200', null);
INSERT INTO `sys_area` VALUES ('120225', '蓟　县', null, '120200', null);
INSERT INTO `sys_area` VALUES ('130101', '市辖区', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130102', '长安区', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130103', '桥东区', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130104', '桥西区', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130105', '新华区', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130107', '井陉矿区', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130108', '裕华区', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130121', '井陉县', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130123', '正定县', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130124', '栾城县', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130125', '行唐县', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130126', '灵寿县', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130127', '高邑县', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130128', '深泽县', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130129', '赞皇县', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130130', '无极县', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130131', '平山县', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130132', '元氏县', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130133', '赵　县', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130181', '辛集市', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130182', '藁城市', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130183', '晋州市', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130184', '新乐市', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130185', '鹿泉市', null, '130100', null);
INSERT INTO `sys_area` VALUES ('130201', '市辖区', null, '130200', null);
INSERT INTO `sys_area` VALUES ('130202', '路南区', null, '130200', null);
INSERT INTO `sys_area` VALUES ('130203', '路北区', null, '130200', null);
INSERT INTO `sys_area` VALUES ('130204', '古冶区', null, '130200', null);
INSERT INTO `sys_area` VALUES ('130205', '开平区', null, '130200', null);
INSERT INTO `sys_area` VALUES ('130207', '丰南区', null, '130200', null);
INSERT INTO `sys_area` VALUES ('130208', '丰润区', null, '130200', null);
INSERT INTO `sys_area` VALUES ('130223', '滦　县', null, '130200', null);
INSERT INTO `sys_area` VALUES ('130224', '滦南县', null, '130200', null);
INSERT INTO `sys_area` VALUES ('130225', '乐亭县', null, '130200', null);
INSERT INTO `sys_area` VALUES ('130227', '迁西县', null, '130200', null);
INSERT INTO `sys_area` VALUES ('130229', '玉田县', null, '130200', null);
INSERT INTO `sys_area` VALUES ('130230', '唐海县', null, '130200', null);
INSERT INTO `sys_area` VALUES ('130281', '遵化市', null, '130200', null);
INSERT INTO `sys_area` VALUES ('130283', '迁安市', null, '130200', null);
INSERT INTO `sys_area` VALUES ('130301', '市辖区', null, '130300', null);
INSERT INTO `sys_area` VALUES ('130302', '海港区', null, '130300', null);
INSERT INTO `sys_area` VALUES ('130303', '山海关区', null, '130300', null);
INSERT INTO `sys_area` VALUES ('130304', '北戴河区', null, '130300', null);
INSERT INTO `sys_area` VALUES ('130321', '青龙满族自治县', null, '130300', null);
INSERT INTO `sys_area` VALUES ('130322', '昌黎县', null, '130300', null);
INSERT INTO `sys_area` VALUES ('130323', '抚宁县', null, '130300', null);
INSERT INTO `sys_area` VALUES ('130324', '卢龙县', null, '130300', null);
INSERT INTO `sys_area` VALUES ('130401', '市辖区', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130402', '邯山区', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130403', '丛台区', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130404', '复兴区', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130406', '峰峰矿区', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130421', '邯郸县', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130423', '临漳县', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130424', '成安县', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130425', '大名县', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130426', '涉　县', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130427', '磁　县', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130428', '肥乡县', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130429', '永年县', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130430', '邱　县', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130431', '鸡泽县', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130432', '广平县', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130433', '馆陶县', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130434', '魏　县', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130435', '曲周县', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130481', '武安市', null, '130400', null);
INSERT INTO `sys_area` VALUES ('130501', '市辖区', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130502', '桥东区', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130503', '桥西区', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130521', '邢台县', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130522', '临城县', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130523', '内丘县', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130524', '柏乡县', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130525', '隆尧县', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130526', '任　县', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130527', '南和县', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130528', '宁晋县', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130529', '巨鹿县', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130530', '新河县', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130531', '广宗县', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130532', '平乡县', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130533', '威　县', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130534', '清河县', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130535', '临西县', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130581', '南宫市', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130582', '沙河市', null, '130500', null);
INSERT INTO `sys_area` VALUES ('130601', '市辖区', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130602', '新市区', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130603', '北市区', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130604', '南市区', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130621', '满城县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130622', '清苑县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130623', '涞水县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130624', '阜平县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130625', '徐水县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130626', '定兴县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130627', '唐　县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130628', '高阳县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130629', '容城县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130630', '涞源县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130631', '望都县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130632', '安新县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130633', '易　县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130634', '曲阳县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130635', '蠡　县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130636', '顺平县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130637', '博野县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130638', '雄　县', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130681', '涿州市', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130682', '定州市', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130683', '安国市', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130684', '高碑店市', null, '130600', null);
INSERT INTO `sys_area` VALUES ('130701', '市辖区', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130702', '桥东区', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130703', '桥西区', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130705', '宣化区', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130706', '下花园区', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130721', '宣化县', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130722', '张北县', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130723', '康保县', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130724', '沽源县', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130725', '尚义县', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130726', '蔚　县', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130727', '阳原县', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130728', '怀安县', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130729', '万全县', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130730', '怀来县', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130731', '涿鹿县', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130732', '赤城县', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130733', '崇礼县', null, '130700', null);
INSERT INTO `sys_area` VALUES ('130801', '市辖区', null, '130800', null);
INSERT INTO `sys_area` VALUES ('130802', '双桥区', null, '130800', null);
INSERT INTO `sys_area` VALUES ('130803', '双滦区', null, '130800', null);
INSERT INTO `sys_area` VALUES ('130804', '鹰手营子矿区', null, '130800', null);
INSERT INTO `sys_area` VALUES ('130821', '承德县', null, '130800', null);
INSERT INTO `sys_area` VALUES ('130822', '兴隆县', null, '130800', null);
INSERT INTO `sys_area` VALUES ('130823', '平泉县', null, '130800', null);
INSERT INTO `sys_area` VALUES ('130824', '滦平县', null, '130800', null);
INSERT INTO `sys_area` VALUES ('130825', '隆化县', null, '130800', null);
INSERT INTO `sys_area` VALUES ('130826', '丰宁满族自治县', null, '130800', null);
INSERT INTO `sys_area` VALUES ('130827', '宽城满族自治县', null, '130800', null);
INSERT INTO `sys_area` VALUES ('130828', '围场满族蒙古族自治县', null, '130800', null);
INSERT INTO `sys_area` VALUES ('130901', '市辖区', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130902', '新华区', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130903', '运河区', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130921', '沧　县', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130922', '青　县', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130923', '东光县', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130924', '海兴县', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130925', '盐山县', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130926', '肃宁县', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130927', '南皮县', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130928', '吴桥县', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130929', '献　县', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130930', '孟村回族自治县', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130981', '泊头市', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130982', '任丘市', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130983', '黄骅市', null, '130900', null);
INSERT INTO `sys_area` VALUES ('130984', '河间市', null, '130900', null);
INSERT INTO `sys_area` VALUES ('131001', '市辖区', null, '131000', null);
INSERT INTO `sys_area` VALUES ('131002', '安次区', null, '131000', null);
INSERT INTO `sys_area` VALUES ('131003', '广阳区', null, '131000', null);
INSERT INTO `sys_area` VALUES ('131022', '固安县', null, '131000', null);
INSERT INTO `sys_area` VALUES ('131023', '永清县', null, '131000', null);
INSERT INTO `sys_area` VALUES ('131024', '香河县', null, '131000', null);
INSERT INTO `sys_area` VALUES ('131025', '大城县', null, '131000', null);
INSERT INTO `sys_area` VALUES ('131026', '文安县', null, '131000', null);
INSERT INTO `sys_area` VALUES ('131028', '大厂回族自治县', null, '131000', null);
INSERT INTO `sys_area` VALUES ('131081', '霸州市', null, '131000', null);
INSERT INTO `sys_area` VALUES ('131082', '三河市', null, '131000', null);
INSERT INTO `sys_area` VALUES ('131101', '市辖区', null, '131100', null);
INSERT INTO `sys_area` VALUES ('131102', '桃城区', null, '131100', null);
INSERT INTO `sys_area` VALUES ('131121', '枣强县', null, '131100', null);
INSERT INTO `sys_area` VALUES ('131122', '武邑县', null, '131100', null);
INSERT INTO `sys_area` VALUES ('131123', '武强县', null, '131100', null);
INSERT INTO `sys_area` VALUES ('131124', '饶阳县', null, '131100', null);
INSERT INTO `sys_area` VALUES ('131125', '安平县', null, '131100', null);
INSERT INTO `sys_area` VALUES ('131126', '故城县', null, '131100', null);
INSERT INTO `sys_area` VALUES ('131127', '景　县', null, '131100', null);
INSERT INTO `sys_area` VALUES ('131128', '阜城县', null, '131100', null);
INSERT INTO `sys_area` VALUES ('131181', '冀州市', null, '131100', null);
INSERT INTO `sys_area` VALUES ('131182', '深州市', null, '131100', null);
INSERT INTO `sys_area` VALUES ('140101', '市辖区', null, '140100', null);
INSERT INTO `sys_area` VALUES ('140105', '小店区', null, '140100', null);
INSERT INTO `sys_area` VALUES ('140106', '迎泽区', null, '140100', null);
INSERT INTO `sys_area` VALUES ('140107', '杏花岭区', null, '140100', null);
INSERT INTO `sys_area` VALUES ('140108', '尖草坪区', null, '140100', null);
INSERT INTO `sys_area` VALUES ('140109', '万柏林区', null, '140100', null);
INSERT INTO `sys_area` VALUES ('140110', '晋源区', null, '140100', null);
INSERT INTO `sys_area` VALUES ('140121', '清徐县', null, '140100', null);
INSERT INTO `sys_area` VALUES ('140122', '阳曲县', null, '140100', null);
INSERT INTO `sys_area` VALUES ('140123', '娄烦县', null, '140100', null);
INSERT INTO `sys_area` VALUES ('140181', '古交市', null, '140100', null);
INSERT INTO `sys_area` VALUES ('140201', '市辖区', null, '140200', null);
INSERT INTO `sys_area` VALUES ('140202', '城　区', null, '140200', null);
INSERT INTO `sys_area` VALUES ('140203', '矿　区', null, '140200', null);
INSERT INTO `sys_area` VALUES ('140211', '南郊区', null, '140200', null);
INSERT INTO `sys_area` VALUES ('140212', '新荣区', null, '140200', null);
INSERT INTO `sys_area` VALUES ('140221', '阳高县', null, '140200', null);
INSERT INTO `sys_area` VALUES ('140222', '天镇县', null, '140200', null);
INSERT INTO `sys_area` VALUES ('140223', '广灵县', null, '140200', null);
INSERT INTO `sys_area` VALUES ('140224', '灵丘县', null, '140200', null);
INSERT INTO `sys_area` VALUES ('140225', '浑源县', null, '140200', null);
INSERT INTO `sys_area` VALUES ('140226', '左云县', null, '140200', null);
INSERT INTO `sys_area` VALUES ('140227', '大同县', null, '140200', null);
INSERT INTO `sys_area` VALUES ('140301', '市辖区', null, '140300', null);
INSERT INTO `sys_area` VALUES ('140302', '城　区', null, '140300', null);
INSERT INTO `sys_area` VALUES ('140303', '矿　区', null, '140300', null);
INSERT INTO `sys_area` VALUES ('140311', '郊　区', null, '140300', null);
INSERT INTO `sys_area` VALUES ('140321', '平定县', null, '140300', null);
INSERT INTO `sys_area` VALUES ('140322', '盂　县', null, '140300', null);
INSERT INTO `sys_area` VALUES ('140401', '市辖区', null, '140400', null);
INSERT INTO `sys_area` VALUES ('140402', '城　区', null, '140400', null);
INSERT INTO `sys_area` VALUES ('140411', '郊　区', null, '140400', null);
INSERT INTO `sys_area` VALUES ('140421', '长治县', null, '140400', null);
INSERT INTO `sys_area` VALUES ('140423', '襄垣县', null, '140400', null);
INSERT INTO `sys_area` VALUES ('140424', '屯留县', null, '140400', null);
INSERT INTO `sys_area` VALUES ('140425', '平顺县', null, '140400', null);
INSERT INTO `sys_area` VALUES ('140426', '黎城县', null, '140400', null);
INSERT INTO `sys_area` VALUES ('140427', '壶关县', null, '140400', null);
INSERT INTO `sys_area` VALUES ('140428', '长子县', null, '140400', null);
INSERT INTO `sys_area` VALUES ('140429', '武乡县', null, '140400', null);
INSERT INTO `sys_area` VALUES ('140430', '沁　县', null, '140400', null);
INSERT INTO `sys_area` VALUES ('140431', '沁源县', null, '140400', null);
INSERT INTO `sys_area` VALUES ('140481', '潞城市', null, '140400', null);
INSERT INTO `sys_area` VALUES ('140501', '市辖区', null, '140500', null);
INSERT INTO `sys_area` VALUES ('140502', '城　区', null, '140500', null);
INSERT INTO `sys_area` VALUES ('140521', '沁水县', null, '140500', null);
INSERT INTO `sys_area` VALUES ('140522', '阳城县', null, '140500', null);
INSERT INTO `sys_area` VALUES ('140524', '陵川县', null, '140500', null);
INSERT INTO `sys_area` VALUES ('140525', '泽州县', null, '140500', null);
INSERT INTO `sys_area` VALUES ('140581', '高平市', null, '140500', null);
INSERT INTO `sys_area` VALUES ('140601', '市辖区', null, '140600', null);
INSERT INTO `sys_area` VALUES ('140602', '朔城区', null, '140600', null);
INSERT INTO `sys_area` VALUES ('140603', '平鲁区', null, '140600', null);
INSERT INTO `sys_area` VALUES ('140621', '山阴县', null, '140600', null);
INSERT INTO `sys_area` VALUES ('140622', '应　县', null, '140600', null);
INSERT INTO `sys_area` VALUES ('140623', '右玉县', null, '140600', null);
INSERT INTO `sys_area` VALUES ('140624', '怀仁县', null, '140600', null);
INSERT INTO `sys_area` VALUES ('140701', '市辖区', null, '140700', null);
INSERT INTO `sys_area` VALUES ('140702', '榆次区', null, '140700', null);
INSERT INTO `sys_area` VALUES ('140721', '榆社县', null, '140700', null);
INSERT INTO `sys_area` VALUES ('140722', '左权县', null, '140700', null);
INSERT INTO `sys_area` VALUES ('140723', '和顺县', null, '140700', null);
INSERT INTO `sys_area` VALUES ('140724', '昔阳县', null, '140700', null);
INSERT INTO `sys_area` VALUES ('140725', '寿阳县', null, '140700', null);
INSERT INTO `sys_area` VALUES ('140726', '太谷县', null, '140700', null);
INSERT INTO `sys_area` VALUES ('140727', '祁　县', null, '140700', null);
INSERT INTO `sys_area` VALUES ('140728', '平遥县', null, '140700', null);
INSERT INTO `sys_area` VALUES ('140729', '灵石县', null, '140700', null);
INSERT INTO `sys_area` VALUES ('140781', '介休市', null, '140700', null);
INSERT INTO `sys_area` VALUES ('140801', '市辖区', null, '140800', null);
INSERT INTO `sys_area` VALUES ('140802', '盐湖区', null, '140800', null);
INSERT INTO `sys_area` VALUES ('140821', '临猗县', null, '140800', null);
INSERT INTO `sys_area` VALUES ('140822', '万荣县', null, '140800', null);
INSERT INTO `sys_area` VALUES ('140823', '闻喜县', null, '140800', null);
INSERT INTO `sys_area` VALUES ('140824', '稷山县', null, '140800', null);
INSERT INTO `sys_area` VALUES ('140825', '新绛县', null, '140800', null);
INSERT INTO `sys_area` VALUES ('140826', '绛　县', null, '140800', null);
INSERT INTO `sys_area` VALUES ('140827', '垣曲县', null, '140800', null);
INSERT INTO `sys_area` VALUES ('140828', '夏　县', null, '140800', null);
INSERT INTO `sys_area` VALUES ('140829', '平陆县', null, '140800', null);
INSERT INTO `sys_area` VALUES ('140830', '芮城县', null, '140800', null);
INSERT INTO `sys_area` VALUES ('140881', '永济市', null, '140800', null);
INSERT INTO `sys_area` VALUES ('140882', '河津市', null, '140800', null);
INSERT INTO `sys_area` VALUES ('140901', '市辖区', null, '140900', null);
INSERT INTO `sys_area` VALUES ('140902', '忻府区', null, '140900', null);
INSERT INTO `sys_area` VALUES ('140921', '定襄县', null, '140900', null);
INSERT INTO `sys_area` VALUES ('140922', '五台县', null, '140900', null);
INSERT INTO `sys_area` VALUES ('140923', '代　县', null, '140900', null);
INSERT INTO `sys_area` VALUES ('140924', '繁峙县', null, '140900', null);
INSERT INTO `sys_area` VALUES ('140925', '宁武县', null, '140900', null);
INSERT INTO `sys_area` VALUES ('140926', '静乐县', null, '140900', null);
INSERT INTO `sys_area` VALUES ('140927', '神池县', null, '140900', null);
INSERT INTO `sys_area` VALUES ('140928', '五寨县', null, '140900', null);
INSERT INTO `sys_area` VALUES ('140929', '岢岚县', null, '140900', null);
INSERT INTO `sys_area` VALUES ('140930', '河曲县', null, '140900', null);
INSERT INTO `sys_area` VALUES ('140931', '保德县', null, '140900', null);
INSERT INTO `sys_area` VALUES ('140932', '偏关县', null, '140900', null);
INSERT INTO `sys_area` VALUES ('140981', '原平市', null, '140900', null);
INSERT INTO `sys_area` VALUES ('141001', '市辖区', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141002', '尧都区', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141021', '曲沃县', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141022', '翼城县', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141023', '襄汾县', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141024', '洪洞县', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141025', '古　县', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141026', '安泽县', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141027', '浮山县', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141028', '吉　县', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141029', '乡宁县', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141030', '大宁县', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141031', '隰　县', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141032', '永和县', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141033', '蒲　县', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141034', '汾西县', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141081', '侯马市', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141082', '霍州市', null, '141000', null);
INSERT INTO `sys_area` VALUES ('141101', '市辖区', null, '141100', null);
INSERT INTO `sys_area` VALUES ('141102', '离石区', null, '141100', null);
INSERT INTO `sys_area` VALUES ('141121', '文水县', null, '141100', null);
INSERT INTO `sys_area` VALUES ('141122', '交城县', null, '141100', null);
INSERT INTO `sys_area` VALUES ('141123', '兴　县', null, '141100', null);
INSERT INTO `sys_area` VALUES ('141124', '临　县', null, '141100', null);
INSERT INTO `sys_area` VALUES ('141125', '柳林县', null, '141100', null);
INSERT INTO `sys_area` VALUES ('141126', '石楼县', null, '141100', null);
INSERT INTO `sys_area` VALUES ('141127', '岚　县', null, '141100', null);
INSERT INTO `sys_area` VALUES ('141128', '方山县', null, '141100', null);
INSERT INTO `sys_area` VALUES ('141129', '中阳县', null, '141100', null);
INSERT INTO `sys_area` VALUES ('141130', '交口县', null, '141100', null);
INSERT INTO `sys_area` VALUES ('141181', '孝义市', null, '141100', null);
INSERT INTO `sys_area` VALUES ('141182', '汾阳市', null, '141100', null);
INSERT INTO `sys_area` VALUES ('150101', '市辖区', null, '150100', null);
INSERT INTO `sys_area` VALUES ('150102', '新城区', null, '150100', null);
INSERT INTO `sys_area` VALUES ('150103', '回民区', null, '150100', null);
INSERT INTO `sys_area` VALUES ('150104', '玉泉区', null, '150100', null);
INSERT INTO `sys_area` VALUES ('150105', '赛罕区', null, '150100', null);
INSERT INTO `sys_area` VALUES ('150121', '土默特左旗', null, '150100', null);
INSERT INTO `sys_area` VALUES ('150122', '托克托县', null, '150100', null);
INSERT INTO `sys_area` VALUES ('150123', '和林格尔县', null, '150100', null);
INSERT INTO `sys_area` VALUES ('150124', '清水河县', null, '150100', null);
INSERT INTO `sys_area` VALUES ('150125', '武川县', null, '150100', null);
INSERT INTO `sys_area` VALUES ('150201', '市辖区', null, '150200', null);
INSERT INTO `sys_area` VALUES ('150202', '东河区', null, '150200', null);
INSERT INTO `sys_area` VALUES ('150203', '昆都仑区', null, '150200', null);
INSERT INTO `sys_area` VALUES ('150204', '青山区', null, '150200', null);
INSERT INTO `sys_area` VALUES ('150205', '石拐区', null, '150200', null);
INSERT INTO `sys_area` VALUES ('150206', '白云矿区', null, '150200', null);
INSERT INTO `sys_area` VALUES ('150207', '九原区', null, '150200', null);
INSERT INTO `sys_area` VALUES ('150221', '土默特右旗', null, '150200', null);
INSERT INTO `sys_area` VALUES ('150222', '固阳县', null, '150200', null);
INSERT INTO `sys_area` VALUES ('150223', '达尔罕茂明安联合旗', null, '150200', null);
INSERT INTO `sys_area` VALUES ('150301', '市辖区', null, '150300', null);
INSERT INTO `sys_area` VALUES ('150302', '海勃湾区', null, '150300', null);
INSERT INTO `sys_area` VALUES ('150303', '海南区', null, '150300', null);
INSERT INTO `sys_area` VALUES ('150304', '乌达区', null, '150300', null);
INSERT INTO `sys_area` VALUES ('150401', '市辖区', null, '150400', null);
INSERT INTO `sys_area` VALUES ('150402', '红山区', null, '150400', null);
INSERT INTO `sys_area` VALUES ('150403', '元宝山区', null, '150400', null);
INSERT INTO `sys_area` VALUES ('150404', '松山区', null, '150400', null);
INSERT INTO `sys_area` VALUES ('150421', '阿鲁科尔沁旗', null, '150400', null);
INSERT INTO `sys_area` VALUES ('150422', '巴林左旗', null, '150400', null);
INSERT INTO `sys_area` VALUES ('150423', '巴林右旗', null, '150400', null);
INSERT INTO `sys_area` VALUES ('150424', '林西县', null, '150400', null);
INSERT INTO `sys_area` VALUES ('150425', '克什克腾旗', null, '150400', null);
INSERT INTO `sys_area` VALUES ('150426', '翁牛特旗', null, '150400', null);
INSERT INTO `sys_area` VALUES ('150428', '喀喇沁旗', null, '150400', null);
INSERT INTO `sys_area` VALUES ('150429', '宁城县', null, '150400', null);
INSERT INTO `sys_area` VALUES ('150430', '敖汉旗', null, '150400', null);
INSERT INTO `sys_area` VALUES ('150501', '市辖区', null, '150500', null);
INSERT INTO `sys_area` VALUES ('150502', '科尔沁区', null, '150500', null);
INSERT INTO `sys_area` VALUES ('150521', '科尔沁左翼中旗', null, '150500', null);
INSERT INTO `sys_area` VALUES ('150522', '科尔沁左翼后旗', null, '150500', null);
INSERT INTO `sys_area` VALUES ('150523', '开鲁县', null, '150500', null);
INSERT INTO `sys_area` VALUES ('150524', '库伦旗', null, '150500', null);
INSERT INTO `sys_area` VALUES ('150525', '奈曼旗', null, '150500', null);
INSERT INTO `sys_area` VALUES ('150526', '扎鲁特旗', null, '150500', null);
INSERT INTO `sys_area` VALUES ('150581', '霍林郭勒市', null, '150500', null);
INSERT INTO `sys_area` VALUES ('150602', '东胜区', null, '150600', null);
INSERT INTO `sys_area` VALUES ('150621', '达拉特旗', null, '150600', null);
INSERT INTO `sys_area` VALUES ('150622', '准格尔旗', null, '150600', null);
INSERT INTO `sys_area` VALUES ('150623', '鄂托克前旗', null, '150600', null);
INSERT INTO `sys_area` VALUES ('150624', '鄂托克旗', null, '150600', null);
INSERT INTO `sys_area` VALUES ('150625', '杭锦旗', null, '150600', null);
INSERT INTO `sys_area` VALUES ('150626', '乌审旗', null, '150600', null);
INSERT INTO `sys_area` VALUES ('150627', '伊金霍洛旗', null, '150600', null);
INSERT INTO `sys_area` VALUES ('150701', '市辖区', null, '150700', null);
INSERT INTO `sys_area` VALUES ('150702', '海拉尔区', null, '150700', null);
INSERT INTO `sys_area` VALUES ('150721', '阿荣旗', null, '150700', null);
INSERT INTO `sys_area` VALUES ('150722', '莫力达瓦达斡尔族自治旗', null, '150700', null);
INSERT INTO `sys_area` VALUES ('150723', '鄂伦春自治旗', null, '150700', null);
INSERT INTO `sys_area` VALUES ('150724', '鄂温克族自治旗', null, '150700', null);
INSERT INTO `sys_area` VALUES ('150725', '陈巴尔虎旗', null, '150700', null);
INSERT INTO `sys_area` VALUES ('150726', '新巴尔虎左旗', null, '150700', null);
INSERT INTO `sys_area` VALUES ('150727', '新巴尔虎右旗', null, '150700', null);
INSERT INTO `sys_area` VALUES ('150781', '满洲里市', null, '150700', null);
INSERT INTO `sys_area` VALUES ('150782', '牙克石市', null, '150700', null);
INSERT INTO `sys_area` VALUES ('150783', '扎兰屯市', null, '150700', null);
INSERT INTO `sys_area` VALUES ('150784', '额尔古纳市', null, '150700', null);
INSERT INTO `sys_area` VALUES ('150785', '根河市', null, '150700', null);
INSERT INTO `sys_area` VALUES ('150801', '市辖区', null, '150800', null);
INSERT INTO `sys_area` VALUES ('150802', '临河区', null, '150800', null);
INSERT INTO `sys_area` VALUES ('150821', '五原县', null, '150800', null);
INSERT INTO `sys_area` VALUES ('150822', '磴口县', null, '150800', null);
INSERT INTO `sys_area` VALUES ('150823', '乌拉特前旗', null, '150800', null);
INSERT INTO `sys_area` VALUES ('150824', '乌拉特中旗', null, '150800', null);
INSERT INTO `sys_area` VALUES ('150825', '乌拉特后旗', null, '150800', null);
INSERT INTO `sys_area` VALUES ('150826', '杭锦后旗', null, '150800', null);
INSERT INTO `sys_area` VALUES ('150901', '市辖区', null, '150900', null);
INSERT INTO `sys_area` VALUES ('150902', '集宁区', null, '150900', null);
INSERT INTO `sys_area` VALUES ('150921', '卓资县', null, '150900', null);
INSERT INTO `sys_area` VALUES ('150922', '化德县', null, '150900', null);
INSERT INTO `sys_area` VALUES ('150923', '商都县', null, '150900', null);
INSERT INTO `sys_area` VALUES ('150924', '兴和县', null, '150900', null);
INSERT INTO `sys_area` VALUES ('150925', '凉城县', null, '150900', null);
INSERT INTO `sys_area` VALUES ('150926', '察哈尔右翼前旗', null, '150900', null);
INSERT INTO `sys_area` VALUES ('150927', '察哈尔右翼中旗', null, '150900', null);
INSERT INTO `sys_area` VALUES ('150928', '察哈尔右翼后旗', null, '150900', null);
INSERT INTO `sys_area` VALUES ('150929', '四子王旗', null, '150900', null);
INSERT INTO `sys_area` VALUES ('150981', '丰镇市', null, '150900', null);
INSERT INTO `sys_area` VALUES ('152201', '乌兰浩特市', null, '152200', null);
INSERT INTO `sys_area` VALUES ('152202', '阿尔山市', null, '152200', null);
INSERT INTO `sys_area` VALUES ('152221', '科尔沁右翼前旗', null, '152200', null);
INSERT INTO `sys_area` VALUES ('152222', '科尔沁右翼中旗', null, '152200', null);
INSERT INTO `sys_area` VALUES ('152223', '扎赉特旗', null, '152200', null);
INSERT INTO `sys_area` VALUES ('152224', '突泉县', null, '152200', null);
INSERT INTO `sys_area` VALUES ('152501', '二连浩特市', null, '152500', null);
INSERT INTO `sys_area` VALUES ('152502', '锡林浩特市', null, '152500', null);
INSERT INTO `sys_area` VALUES ('152522', '阿巴嘎旗', null, '152500', null);
INSERT INTO `sys_area` VALUES ('152523', '苏尼特左旗', null, '152500', null);
INSERT INTO `sys_area` VALUES ('152524', '苏尼特右旗', null, '152500', null);
INSERT INTO `sys_area` VALUES ('152525', '东乌珠穆沁旗', null, '152500', null);
INSERT INTO `sys_area` VALUES ('152526', '西乌珠穆沁旗', null, '152500', null);
INSERT INTO `sys_area` VALUES ('152527', '太仆寺旗', null, '152500', null);
INSERT INTO `sys_area` VALUES ('152528', '镶黄旗', null, '152500', null);
INSERT INTO `sys_area` VALUES ('152529', '正镶白旗', null, '152500', null);
INSERT INTO `sys_area` VALUES ('152530', '正蓝旗', null, '152500', null);
INSERT INTO `sys_area` VALUES ('152531', '多伦县', null, '152500', null);
INSERT INTO `sys_area` VALUES ('152921', '阿拉善左旗', null, '152900', null);
INSERT INTO `sys_area` VALUES ('152922', '阿拉善右旗', null, '152900', null);
INSERT INTO `sys_area` VALUES ('152923', '额济纳旗', null, '152900', null);
INSERT INTO `sys_area` VALUES ('210101', '市辖区', null, '210100', null);
INSERT INTO `sys_area` VALUES ('210102', '和平区', null, '210100', null);
INSERT INTO `sys_area` VALUES ('210103', '沈河区', null, '210100', null);
INSERT INTO `sys_area` VALUES ('210104', '大东区', null, '210100', null);
INSERT INTO `sys_area` VALUES ('210105', '皇姑区', null, '210100', null);
INSERT INTO `sys_area` VALUES ('210106', '铁西区', null, '210100', null);
INSERT INTO `sys_area` VALUES ('210111', '苏家屯区', null, '210100', null);
INSERT INTO `sys_area` VALUES ('210112', '东陵区', null, '210100', null);
INSERT INTO `sys_area` VALUES ('210113', '新城子区', null, '210100', null);
INSERT INTO `sys_area` VALUES ('210114', '于洪区', null, '210100', null);
INSERT INTO `sys_area` VALUES ('210122', '辽中县', null, '210100', null);
INSERT INTO `sys_area` VALUES ('210123', '康平县', null, '210100', null);
INSERT INTO `sys_area` VALUES ('210124', '法库县', null, '210100', null);
INSERT INTO `sys_area` VALUES ('210181', '新民市', null, '210100', null);
INSERT INTO `sys_area` VALUES ('210201', '市辖区', null, '210200', null);
INSERT INTO `sys_area` VALUES ('210202', '中山区', null, '210200', null);
INSERT INTO `sys_area` VALUES ('210203', '西岗区', null, '210200', null);
INSERT INTO `sys_area` VALUES ('210204', '沙河口区', null, '210200', null);
INSERT INTO `sys_area` VALUES ('210211', '甘井子区', null, '210200', null);
INSERT INTO `sys_area` VALUES ('210212', '旅顺口区', null, '210200', null);
INSERT INTO `sys_area` VALUES ('210213', '金州区', null, '210200', null);
INSERT INTO `sys_area` VALUES ('210224', '长海县', null, '210200', null);
INSERT INTO `sys_area` VALUES ('210281', '瓦房店市', null, '210200', null);
INSERT INTO `sys_area` VALUES ('210282', '普兰店市', null, '210200', null);
INSERT INTO `sys_area` VALUES ('210283', '庄河市', null, '210200', null);
INSERT INTO `sys_area` VALUES ('210301', '市辖区', null, '210300', null);
INSERT INTO `sys_area` VALUES ('210302', '铁东区', null, '210300', null);
INSERT INTO `sys_area` VALUES ('210303', '铁西区', null, '210300', null);
INSERT INTO `sys_area` VALUES ('210304', '立山区', null, '210300', null);
INSERT INTO `sys_area` VALUES ('210311', '千山区', null, '210300', null);
INSERT INTO `sys_area` VALUES ('210321', '台安县', null, '210300', null);
INSERT INTO `sys_area` VALUES ('210323', '岫岩满族自治县', null, '210300', null);
INSERT INTO `sys_area` VALUES ('210381', '海城市', null, '210300', null);
INSERT INTO `sys_area` VALUES ('210401', '市辖区', null, '210400', null);
INSERT INTO `sys_area` VALUES ('210402', '新抚区', null, '210400', null);
INSERT INTO `sys_area` VALUES ('210403', '东洲区', null, '210400', null);
INSERT INTO `sys_area` VALUES ('210404', '望花区', null, '210400', null);
INSERT INTO `sys_area` VALUES ('210411', '顺城区', null, '210400', null);
INSERT INTO `sys_area` VALUES ('210421', '抚顺县', null, '210400', null);
INSERT INTO `sys_area` VALUES ('210422', '新宾满族自治县', null, '210400', null);
INSERT INTO `sys_area` VALUES ('210423', '清原满族自治县', null, '210400', null);
INSERT INTO `sys_area` VALUES ('210501', '市辖区', null, '210500', null);
INSERT INTO `sys_area` VALUES ('210502', '平山区', null, '210500', null);
INSERT INTO `sys_area` VALUES ('210503', '溪湖区', null, '210500', null);
INSERT INTO `sys_area` VALUES ('210504', '明山区', null, '210500', null);
INSERT INTO `sys_area` VALUES ('210505', '南芬区', null, '210500', null);
INSERT INTO `sys_area` VALUES ('210521', '本溪满族自治县', null, '210500', null);
INSERT INTO `sys_area` VALUES ('210522', '桓仁满族自治县', null, '210500', null);
INSERT INTO `sys_area` VALUES ('210601', '市辖区', null, '210600', null);
INSERT INTO `sys_area` VALUES ('210602', '元宝区', null, '210600', null);
INSERT INTO `sys_area` VALUES ('210603', '振兴区', null, '210600', null);
INSERT INTO `sys_area` VALUES ('210604', '振安区', null, '210600', null);
INSERT INTO `sys_area` VALUES ('210624', '宽甸满族自治县', null, '210600', null);
INSERT INTO `sys_area` VALUES ('210681', '东港市', null, '210600', null);
INSERT INTO `sys_area` VALUES ('210682', '凤城市', null, '210600', null);
INSERT INTO `sys_area` VALUES ('210701', '市辖区', null, '210700', null);
INSERT INTO `sys_area` VALUES ('210702', '古塔区', null, '210700', null);
INSERT INTO `sys_area` VALUES ('210703', '凌河区', null, '210700', null);
INSERT INTO `sys_area` VALUES ('210711', '太和区', null, '210700', null);
INSERT INTO `sys_area` VALUES ('210726', '黑山县', null, '210700', null);
INSERT INTO `sys_area` VALUES ('210727', '义　县', null, '210700', null);
INSERT INTO `sys_area` VALUES ('210781', '凌海市', null, '210700', null);
INSERT INTO `sys_area` VALUES ('210782', '北宁市', null, '210700', null);
INSERT INTO `sys_area` VALUES ('210801', '市辖区', null, '210800', null);
INSERT INTO `sys_area` VALUES ('210802', '站前区', null, '210800', null);
INSERT INTO `sys_area` VALUES ('210803', '西市区', null, '210800', null);
INSERT INTO `sys_area` VALUES ('210804', '鲅鱼圈区', null, '210800', null);
INSERT INTO `sys_area` VALUES ('210811', '老边区', null, '210800', null);
INSERT INTO `sys_area` VALUES ('210881', '盖州市', null, '210800', null);
INSERT INTO `sys_area` VALUES ('210882', '大石桥市', null, '210800', null);
INSERT INTO `sys_area` VALUES ('210901', '市辖区', null, '210900', null);
INSERT INTO `sys_area` VALUES ('210902', '海州区', null, '210900', null);
INSERT INTO `sys_area` VALUES ('210903', '新邱区', null, '210900', null);
INSERT INTO `sys_area` VALUES ('210904', '太平区', null, '210900', null);
INSERT INTO `sys_area` VALUES ('210905', '清河门区', null, '210900', null);
INSERT INTO `sys_area` VALUES ('210911', '细河区', null, '210900', null);
INSERT INTO `sys_area` VALUES ('210921', '阜新蒙古族自治县', null, '210900', null);
INSERT INTO `sys_area` VALUES ('210922', '彰武县', null, '210900', null);
INSERT INTO `sys_area` VALUES ('211001', '市辖区', null, '211000', null);
INSERT INTO `sys_area` VALUES ('211002', '白塔区', null, '211000', null);
INSERT INTO `sys_area` VALUES ('211003', '文圣区', null, '211000', null);
INSERT INTO `sys_area` VALUES ('211004', '宏伟区', null, '211000', null);
INSERT INTO `sys_area` VALUES ('211005', '弓长岭区', null, '211000', null);
INSERT INTO `sys_area` VALUES ('211011', '太子河区', null, '211000', null);
INSERT INTO `sys_area` VALUES ('211021', '辽阳县', null, '211000', null);
INSERT INTO `sys_area` VALUES ('211081', '灯塔市', null, '211000', null);
INSERT INTO `sys_area` VALUES ('211101', '市辖区', null, '211100', null);
INSERT INTO `sys_area` VALUES ('211102', '双台子区', null, '211100', null);
INSERT INTO `sys_area` VALUES ('211103', '兴隆台区', null, '211100', null);
INSERT INTO `sys_area` VALUES ('211121', '大洼县', null, '211100', null);
INSERT INTO `sys_area` VALUES ('211122', '盘山县', null, '211100', null);
INSERT INTO `sys_area` VALUES ('211201', '市辖区', null, '211200', null);
INSERT INTO `sys_area` VALUES ('211202', '银州区', null, '211200', null);
INSERT INTO `sys_area` VALUES ('211204', '清河区', null, '211200', null);
INSERT INTO `sys_area` VALUES ('211221', '铁岭县', null, '211200', null);
INSERT INTO `sys_area` VALUES ('211223', '西丰县', null, '211200', null);
INSERT INTO `sys_area` VALUES ('211224', '昌图县', null, '211200', null);
INSERT INTO `sys_area` VALUES ('211281', '调兵山市', null, '211200', null);
INSERT INTO `sys_area` VALUES ('211282', '开原市', null, '211200', null);
INSERT INTO `sys_area` VALUES ('211301', '市辖区', null, '211300', null);
INSERT INTO `sys_area` VALUES ('211302', '双塔区', null, '211300', null);
INSERT INTO `sys_area` VALUES ('211303', '龙城区', null, '211300', null);
INSERT INTO `sys_area` VALUES ('211321', '朝阳县', null, '211300', null);
INSERT INTO `sys_area` VALUES ('211322', '建平县', null, '211300', null);
INSERT INTO `sys_area` VALUES ('211324', '喀喇沁左翼蒙古族自治县', null, '211300', null);
INSERT INTO `sys_area` VALUES ('211381', '北票市', null, '211300', null);
INSERT INTO `sys_area` VALUES ('211382', '凌源市', null, '211300', null);
INSERT INTO `sys_area` VALUES ('211401', '市辖区', null, '211400', null);
INSERT INTO `sys_area` VALUES ('211402', '连山区', null, '211400', null);
INSERT INTO `sys_area` VALUES ('211403', '龙港区', null, '211400', null);
INSERT INTO `sys_area` VALUES ('211404', '南票区', null, '211400', null);
INSERT INTO `sys_area` VALUES ('211421', '绥中县', null, '211400', null);
INSERT INTO `sys_area` VALUES ('211422', '建昌县', null, '211400', null);
INSERT INTO `sys_area` VALUES ('211481', '兴城市', null, '211400', null);
INSERT INTO `sys_area` VALUES ('220101', '市辖区', null, '220100', null);
INSERT INTO `sys_area` VALUES ('220102', '南关区', null, '220100', null);
INSERT INTO `sys_area` VALUES ('220103', '宽城区', null, '220100', null);
INSERT INTO `sys_area` VALUES ('220104', '朝阳区', null, '220100', null);
INSERT INTO `sys_area` VALUES ('220105', '二道区', null, '220100', null);
INSERT INTO `sys_area` VALUES ('220106', '绿园区', null, '220100', null);
INSERT INTO `sys_area` VALUES ('220112', '双阳区', null, '220100', null);
INSERT INTO `sys_area` VALUES ('220122', '农安县', null, '220100', null);
INSERT INTO `sys_area` VALUES ('220181', '九台市', null, '220100', null);
INSERT INTO `sys_area` VALUES ('220182', '榆树市', null, '220100', null);
INSERT INTO `sys_area` VALUES ('220183', '德惠市', null, '220100', null);
INSERT INTO `sys_area` VALUES ('220201', '市辖区', null, '220200', null);
INSERT INTO `sys_area` VALUES ('220202', '昌邑区', null, '220200', null);
INSERT INTO `sys_area` VALUES ('220203', '龙潭区', null, '220200', null);
INSERT INTO `sys_area` VALUES ('220204', '船营区', null, '220200', null);
INSERT INTO `sys_area` VALUES ('220211', '丰满区', null, '220200', null);
INSERT INTO `sys_area` VALUES ('220221', '永吉县', null, '220200', null);
INSERT INTO `sys_area` VALUES ('220281', '蛟河市', null, '220200', null);
INSERT INTO `sys_area` VALUES ('220282', '桦甸市', null, '220200', null);
INSERT INTO `sys_area` VALUES ('220283', '舒兰市', null, '220200', null);
INSERT INTO `sys_area` VALUES ('220284', '磐石市', null, '220200', null);
INSERT INTO `sys_area` VALUES ('220301', '市辖区', null, '220300', null);
INSERT INTO `sys_area` VALUES ('220302', '铁西区', null, '220300', null);
INSERT INTO `sys_area` VALUES ('220303', '铁东区', null, '220300', null);
INSERT INTO `sys_area` VALUES ('220322', '梨树县', null, '220300', null);
INSERT INTO `sys_area` VALUES ('220323', '伊通满族自治县', null, '220300', null);
INSERT INTO `sys_area` VALUES ('220381', '公主岭市', null, '220300', null);
INSERT INTO `sys_area` VALUES ('220382', '双辽市', null, '220300', null);
INSERT INTO `sys_area` VALUES ('220401', '市辖区', null, '220400', null);
INSERT INTO `sys_area` VALUES ('220402', '龙山区', null, '220400', null);
INSERT INTO `sys_area` VALUES ('220403', '西安区', null, '220400', null);
INSERT INTO `sys_area` VALUES ('220421', '东丰县', null, '220400', null);
INSERT INTO `sys_area` VALUES ('220422', '东辽县', null, '220400', null);
INSERT INTO `sys_area` VALUES ('220501', '市辖区', null, '220500', null);
INSERT INTO `sys_area` VALUES ('220502', '东昌区', null, '220500', null);
INSERT INTO `sys_area` VALUES ('220503', '二道江区', null, '220500', null);
INSERT INTO `sys_area` VALUES ('220521', '通化县', null, '220500', null);
INSERT INTO `sys_area` VALUES ('220523', '辉南县', null, '220500', null);
INSERT INTO `sys_area` VALUES ('220524', '柳河县', null, '220500', null);
INSERT INTO `sys_area` VALUES ('220581', '梅河口市', null, '220500', null);
INSERT INTO `sys_area` VALUES ('220582', '集安市', null, '220500', null);
INSERT INTO `sys_area` VALUES ('220601', '市辖区', null, '220600', null);
INSERT INTO `sys_area` VALUES ('220602', '八道江区', null, '220600', null);
INSERT INTO `sys_area` VALUES ('220621', '抚松县', null, '220600', null);
INSERT INTO `sys_area` VALUES ('220622', '靖宇县', null, '220600', null);
INSERT INTO `sys_area` VALUES ('220623', '长白朝鲜族自治县', null, '220600', null);
INSERT INTO `sys_area` VALUES ('220625', '江源县', null, '220600', null);
INSERT INTO `sys_area` VALUES ('220681', '临江市', null, '220600', null);
INSERT INTO `sys_area` VALUES ('220701', '市辖区', null, '220700', null);
INSERT INTO `sys_area` VALUES ('220702', '宁江区', null, '220700', null);
INSERT INTO `sys_area` VALUES ('220721', '前郭尔罗斯蒙古族自治县', null, '220700', null);
INSERT INTO `sys_area` VALUES ('220722', '长岭县', null, '220700', null);
INSERT INTO `sys_area` VALUES ('220723', '乾安县', null, '220700', null);
INSERT INTO `sys_area` VALUES ('220724', '扶余县', null, '220700', null);
INSERT INTO `sys_area` VALUES ('220801', '市辖区', null, '220800', null);
INSERT INTO `sys_area` VALUES ('220802', '洮北区', null, '220800', null);
INSERT INTO `sys_area` VALUES ('220821', '镇赉县', null, '220800', null);
INSERT INTO `sys_area` VALUES ('220822', '通榆县', null, '220800', null);
INSERT INTO `sys_area` VALUES ('220881', '洮南市', null, '220800', null);
INSERT INTO `sys_area` VALUES ('220882', '大安市', null, '220800', null);
INSERT INTO `sys_area` VALUES ('222401', '延吉市', null, '222400', null);
INSERT INTO `sys_area` VALUES ('222402', '图们市', null, '222400', null);
INSERT INTO `sys_area` VALUES ('222403', '敦化市', null, '222400', null);
INSERT INTO `sys_area` VALUES ('222404', '珲春市', null, '222400', null);
INSERT INTO `sys_area` VALUES ('222405', '龙井市', null, '222400', null);
INSERT INTO `sys_area` VALUES ('222406', '和龙市', null, '222400', null);
INSERT INTO `sys_area` VALUES ('222424', '汪清县', null, '222400', null);
INSERT INTO `sys_area` VALUES ('222426', '安图县', null, '222400', null);
INSERT INTO `sys_area` VALUES ('230101', '市辖区', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230102', '道里区', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230103', '南岗区', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230104', '道外区', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230106', '香坊区', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230107', '动力区', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230108', '平房区', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230109', '松北区', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230111', '呼兰区', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230123', '依兰县', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230124', '方正县', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230125', '宾　县', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230126', '巴彦县', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230127', '木兰县', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230128', '通河县', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230129', '延寿县', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230181', '阿城市', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230182', '双城市', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230183', '尚志市', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230184', '五常市', null, '230100', null);
INSERT INTO `sys_area` VALUES ('230201', '市辖区', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230202', '龙沙区', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230203', '建华区', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230204', '铁锋区', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230205', '昂昂溪区', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230206', '富拉尔基区', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230207', '碾子山区', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230208', '梅里斯达斡尔族区', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230221', '龙江县', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230223', '依安县', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230224', '泰来县', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230225', '甘南县', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230227', '富裕县', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230229', '克山县', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230230', '克东县', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230231', '拜泉县', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230281', '讷河市', null, '230200', null);
INSERT INTO `sys_area` VALUES ('230301', '市辖区', null, '230300', null);
INSERT INTO `sys_area` VALUES ('230302', '鸡冠区', null, '230300', null);
INSERT INTO `sys_area` VALUES ('230303', '恒山区', null, '230300', null);
INSERT INTO `sys_area` VALUES ('230304', '滴道区', null, '230300', null);
INSERT INTO `sys_area` VALUES ('230305', '梨树区', null, '230300', null);
INSERT INTO `sys_area` VALUES ('230306', '城子河区', null, '230300', null);
INSERT INTO `sys_area` VALUES ('230307', '麻山区', null, '230300', null);
INSERT INTO `sys_area` VALUES ('230321', '鸡东县', null, '230300', null);
INSERT INTO `sys_area` VALUES ('230381', '虎林市', null, '230300', null);
INSERT INTO `sys_area` VALUES ('230382', '密山市', null, '230300', null);
INSERT INTO `sys_area` VALUES ('230401', '市辖区', null, '230400', null);
INSERT INTO `sys_area` VALUES ('230402', '向阳区', null, '230400', null);
INSERT INTO `sys_area` VALUES ('230403', '工农区', null, '230400', null);
INSERT INTO `sys_area` VALUES ('230404', '南山区', null, '230400', null);
INSERT INTO `sys_area` VALUES ('230405', '兴安区', null, '230400', null);
INSERT INTO `sys_area` VALUES ('230406', '东山区', null, '230400', null);
INSERT INTO `sys_area` VALUES ('230407', '兴山区', null, '230400', null);
INSERT INTO `sys_area` VALUES ('230421', '萝北县', null, '230400', null);
INSERT INTO `sys_area` VALUES ('230422', '绥滨县', null, '230400', null);
INSERT INTO `sys_area` VALUES ('230501', '市辖区', null, '230500', null);
INSERT INTO `sys_area` VALUES ('230502', '尖山区', null, '230500', null);
INSERT INTO `sys_area` VALUES ('230503', '岭东区', null, '230500', null);
INSERT INTO `sys_area` VALUES ('230505', '四方台区', null, '230500', null);
INSERT INTO `sys_area` VALUES ('230506', '宝山区', null, '230500', null);
INSERT INTO `sys_area` VALUES ('230521', '集贤县', null, '230500', null);
INSERT INTO `sys_area` VALUES ('230522', '友谊县', null, '230500', null);
INSERT INTO `sys_area` VALUES ('230523', '宝清县', null, '230500', null);
INSERT INTO `sys_area` VALUES ('230524', '饶河县', null, '230500', null);
INSERT INTO `sys_area` VALUES ('230601', '市辖区', null, '230600', null);
INSERT INTO `sys_area` VALUES ('230602', '萨尔图区', null, '230600', null);
INSERT INTO `sys_area` VALUES ('230603', '龙凤区', null, '230600', null);
INSERT INTO `sys_area` VALUES ('230604', '让胡路区', null, '230600', null);
INSERT INTO `sys_area` VALUES ('230605', '红岗区', null, '230600', null);
INSERT INTO `sys_area` VALUES ('230606', '大同区', null, '230600', null);
INSERT INTO `sys_area` VALUES ('230621', '肇州县', null, '230600', null);
INSERT INTO `sys_area` VALUES ('230622', '肇源县', null, '230600', null);
INSERT INTO `sys_area` VALUES ('230623', '林甸县', null, '230600', null);
INSERT INTO `sys_area` VALUES ('230624', '杜尔伯特蒙古族自治县', null, '230600', null);
INSERT INTO `sys_area` VALUES ('230701', '市辖区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230702', '伊春区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230703', '南岔区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230704', '友好区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230705', '西林区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230706', '翠峦区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230707', '新青区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230708', '美溪区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230709', '金山屯区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230710', '五营区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230711', '乌马河区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230712', '汤旺河区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230713', '带岭区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230714', '乌伊岭区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230715', '红星区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230716', '上甘岭区', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230722', '嘉荫县', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230781', '铁力市', null, '230700', null);
INSERT INTO `sys_area` VALUES ('230801', '市辖区', null, '230800', null);
INSERT INTO `sys_area` VALUES ('230802', '永红区', null, '230800', null);
INSERT INTO `sys_area` VALUES ('230803', '向阳区', null, '230800', null);
INSERT INTO `sys_area` VALUES ('230804', '前进区', null, '230800', null);
INSERT INTO `sys_area` VALUES ('230805', '东风区', null, '230800', null);
INSERT INTO `sys_area` VALUES ('230811', '郊　区', null, '230800', null);
INSERT INTO `sys_area` VALUES ('230822', '桦南县', null, '230800', null);
INSERT INTO `sys_area` VALUES ('230826', '桦川县', null, '230800', null);
INSERT INTO `sys_area` VALUES ('230828', '汤原县', null, '230800', null);
INSERT INTO `sys_area` VALUES ('230833', '抚远县', null, '230800', null);
INSERT INTO `sys_area` VALUES ('230881', '同江市', null, '230800', null);
INSERT INTO `sys_area` VALUES ('230882', '富锦市', null, '230800', null);
INSERT INTO `sys_area` VALUES ('230901', '市辖区', null, '230900', null);
INSERT INTO `sys_area` VALUES ('230902', '新兴区', null, '230900', null);
INSERT INTO `sys_area` VALUES ('230903', '桃山区', null, '230900', null);
INSERT INTO `sys_area` VALUES ('230904', '茄子河区', null, '230900', null);
INSERT INTO `sys_area` VALUES ('230921', '勃利县', null, '230900', null);
INSERT INTO `sys_area` VALUES ('231001', '市辖区', null, '231000', null);
INSERT INTO `sys_area` VALUES ('231002', '东安区', null, '231000', null);
INSERT INTO `sys_area` VALUES ('231003', '阳明区', null, '231000', null);
INSERT INTO `sys_area` VALUES ('231004', '爱民区', null, '231000', null);
INSERT INTO `sys_area` VALUES ('231005', '西安区', null, '231000', null);
INSERT INTO `sys_area` VALUES ('231024', '东宁县', null, '231000', null);
INSERT INTO `sys_area` VALUES ('231025', '林口县', null, '231000', null);
INSERT INTO `sys_area` VALUES ('231081', '绥芬河市', null, '231000', null);
INSERT INTO `sys_area` VALUES ('231083', '海林市', null, '231000', null);
INSERT INTO `sys_area` VALUES ('231084', '宁安市', null, '231000', null);
INSERT INTO `sys_area` VALUES ('231085', '穆棱市', null, '231000', null);
INSERT INTO `sys_area` VALUES ('231101', '市辖区', null, '231100', null);
INSERT INTO `sys_area` VALUES ('231102', '爱辉区', null, '231100', null);
INSERT INTO `sys_area` VALUES ('231121', '嫩江县', null, '231100', null);
INSERT INTO `sys_area` VALUES ('231123', '逊克县', null, '231100', null);
INSERT INTO `sys_area` VALUES ('231124', '孙吴县', null, '231100', null);
INSERT INTO `sys_area` VALUES ('231181', '北安市', null, '231100', null);
INSERT INTO `sys_area` VALUES ('231182', '五大连池市', null, '231100', null);
INSERT INTO `sys_area` VALUES ('231201', '市辖区', null, '231200', null);
INSERT INTO `sys_area` VALUES ('231202', '北林区', null, '231200', null);
INSERT INTO `sys_area` VALUES ('231221', '望奎县', null, '231200', null);
INSERT INTO `sys_area` VALUES ('231222', '兰西县', null, '231200', null);
INSERT INTO `sys_area` VALUES ('231223', '青冈县', null, '231200', null);
INSERT INTO `sys_area` VALUES ('231224', '庆安县', null, '231200', null);
INSERT INTO `sys_area` VALUES ('231225', '明水县', null, '231200', null);
INSERT INTO `sys_area` VALUES ('231226', '绥棱县', null, '231200', null);
INSERT INTO `sys_area` VALUES ('231281', '安达市', null, '231200', null);
INSERT INTO `sys_area` VALUES ('231282', '肇东市', null, '231200', null);
INSERT INTO `sys_area` VALUES ('231283', '海伦市', null, '231200', null);
INSERT INTO `sys_area` VALUES ('232721', '呼玛县', null, '232700', null);
INSERT INTO `sys_area` VALUES ('232722', '塔河县', null, '232700', null);
INSERT INTO `sys_area` VALUES ('232723', '漠河县', null, '232700', null);
INSERT INTO `sys_area` VALUES ('310101', '黄浦区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310103', '卢湾区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310104', '徐汇区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310105', '长宁区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310106', '静安区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310107', '普陀区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310108', '闸北区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310109', '虹口区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310110', '杨浦区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310112', '闵行区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310113', '宝山区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310114', '嘉定区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310115', '浦东新区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310116', '金山区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310117', '松江区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310118', '青浦区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310119', '南汇区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310120', '奉贤区', null, '310100', null);
INSERT INTO `sys_area` VALUES ('310230', '崇明县', null, '310200', null);
INSERT INTO `sys_area` VALUES ('320101', '市辖区', null, '320100', null);
INSERT INTO `sys_area` VALUES ('320102', '玄武区', null, '320100', null);
INSERT INTO `sys_area` VALUES ('320103', '白下区', null, '320100', null);
INSERT INTO `sys_area` VALUES ('320104', '秦淮区', null, '320100', null);
INSERT INTO `sys_area` VALUES ('320105', '建邺区', null, '320100', null);
INSERT INTO `sys_area` VALUES ('320106', '鼓楼区', null, '320100', null);
INSERT INTO `sys_area` VALUES ('320107', '下关区', null, '320100', null);
INSERT INTO `sys_area` VALUES ('320111', '浦口区', null, '320100', null);
INSERT INTO `sys_area` VALUES ('320113', '栖霞区', null, '320100', null);
INSERT INTO `sys_area` VALUES ('320114', '雨花台区', null, '320100', null);
INSERT INTO `sys_area` VALUES ('320115', '江宁区', null, '320100', null);
INSERT INTO `sys_area` VALUES ('320116', '六合区', null, '320100', null);
INSERT INTO `sys_area` VALUES ('320124', '溧水县', null, '320100', null);
INSERT INTO `sys_area` VALUES ('320125', '高淳县', null, '320100', null);
INSERT INTO `sys_area` VALUES ('320201', '市辖区', null, '320200', null);
INSERT INTO `sys_area` VALUES ('320202', '崇安区', null, '320200', null);
INSERT INTO `sys_area` VALUES ('320203', '南长区', null, '320200', null);
INSERT INTO `sys_area` VALUES ('320204', '北塘区', null, '320200', null);
INSERT INTO `sys_area` VALUES ('320205', '锡山区', null, '320200', null);
INSERT INTO `sys_area` VALUES ('320206', '惠山区', null, '320200', null);
INSERT INTO `sys_area` VALUES ('320211', '滨湖区', null, '320200', null);
INSERT INTO `sys_area` VALUES ('320281', '江阴市', null, '320200', null);
INSERT INTO `sys_area` VALUES ('320282', '宜兴市', null, '320200', null);
INSERT INTO `sys_area` VALUES ('320301', '市辖区', null, '320300', null);
INSERT INTO `sys_area` VALUES ('320302', '鼓楼区', null, '320300', null);
INSERT INTO `sys_area` VALUES ('320303', '云龙区', null, '320300', null);
INSERT INTO `sys_area` VALUES ('320304', '九里区', null, '320300', null);
INSERT INTO `sys_area` VALUES ('320305', '贾汪区', null, '320300', null);
INSERT INTO `sys_area` VALUES ('320311', '泉山区', null, '320300', null);
INSERT INTO `sys_area` VALUES ('320321', '丰　县', null, '320300', null);
INSERT INTO `sys_area` VALUES ('320322', '沛　县', null, '320300', null);
INSERT INTO `sys_area` VALUES ('320323', '铜山县', null, '320300', null);
INSERT INTO `sys_area` VALUES ('320324', '睢宁县', null, '320300', null);
INSERT INTO `sys_area` VALUES ('320381', '新沂市', null, '320300', null);
INSERT INTO `sys_area` VALUES ('320382', '邳州市', null, '320300', null);
INSERT INTO `sys_area` VALUES ('320401', '市辖区', null, '320400', null);
INSERT INTO `sys_area` VALUES ('320402', '天宁区', null, '320400', null);
INSERT INTO `sys_area` VALUES ('320404', '钟楼区', null, '320400', null);
INSERT INTO `sys_area` VALUES ('320405', '戚墅堰区', null, '320400', null);
INSERT INTO `sys_area` VALUES ('320411', '新北区', null, '320400', null);
INSERT INTO `sys_area` VALUES ('320412', '武进区', null, '320400', null);
INSERT INTO `sys_area` VALUES ('320481', '溧阳市', null, '320400', null);
INSERT INTO `sys_area` VALUES ('320482', '金坛市', null, '320400', null);
INSERT INTO `sys_area` VALUES ('320501', '市辖区', null, '320500', null);
INSERT INTO `sys_area` VALUES ('320502', '沧浪区', null, '320500', null);
INSERT INTO `sys_area` VALUES ('320503', '平江区', null, '320500', null);
INSERT INTO `sys_area` VALUES ('320504', '金阊区', null, '320500', null);
INSERT INTO `sys_area` VALUES ('320505', '虎丘区', null, '320500', null);
INSERT INTO `sys_area` VALUES ('320506', '吴中区', null, '320500', null);
INSERT INTO `sys_area` VALUES ('320507', '相城区', null, '320500', null);
INSERT INTO `sys_area` VALUES ('320581', '常熟市', null, '320500', null);
INSERT INTO `sys_area` VALUES ('320582', '张家港市', null, '320500', null);
INSERT INTO `sys_area` VALUES ('320583', '昆山市', null, '320500', null);
INSERT INTO `sys_area` VALUES ('320584', '吴江市', null, '320500', null);
INSERT INTO `sys_area` VALUES ('320585', '太仓市', null, '320500', null);
INSERT INTO `sys_area` VALUES ('320601', '市辖区', null, '320600', null);
INSERT INTO `sys_area` VALUES ('320602', '崇川区', null, '320600', null);
INSERT INTO `sys_area` VALUES ('320611', '港闸区', null, '320600', null);
INSERT INTO `sys_area` VALUES ('320621', '海安县', null, '320600', null);
INSERT INTO `sys_area` VALUES ('320623', '如东县', null, '320600', null);
INSERT INTO `sys_area` VALUES ('320681', '启东市', null, '320600', null);
INSERT INTO `sys_area` VALUES ('320682', '如皋市', null, '320600', null);
INSERT INTO `sys_area` VALUES ('320683', '通州市', null, '320600', null);
INSERT INTO `sys_area` VALUES ('320684', '海门市', null, '320600', null);
INSERT INTO `sys_area` VALUES ('320701', '市辖区', null, '320700', null);
INSERT INTO `sys_area` VALUES ('320703', '连云区', null, '320700', null);
INSERT INTO `sys_area` VALUES ('320705', '新浦区', null, '320700', null);
INSERT INTO `sys_area` VALUES ('320706', '海州区', null, '320700', null);
INSERT INTO `sys_area` VALUES ('320721', '赣榆县', null, '320700', null);
INSERT INTO `sys_area` VALUES ('320722', '东海县', null, '320700', null);
INSERT INTO `sys_area` VALUES ('320723', '灌云县', null, '320700', null);
INSERT INTO `sys_area` VALUES ('320724', '灌南县', null, '320700', null);
INSERT INTO `sys_area` VALUES ('320801', '市辖区', null, '320800', null);
INSERT INTO `sys_area` VALUES ('320802', '清河区', null, '320800', null);
INSERT INTO `sys_area` VALUES ('320803', '楚州区', null, '320800', null);
INSERT INTO `sys_area` VALUES ('320804', '淮阴区', null, '320800', null);
INSERT INTO `sys_area` VALUES ('320811', '清浦区', null, '320800', null);
INSERT INTO `sys_area` VALUES ('320826', '涟水县', null, '320800', null);
INSERT INTO `sys_area` VALUES ('320829', '洪泽县', null, '320800', null);
INSERT INTO `sys_area` VALUES ('320830', '盱眙县', null, '320800', null);
INSERT INTO `sys_area` VALUES ('320831', '金湖县', null, '320800', null);
INSERT INTO `sys_area` VALUES ('320901', '市辖区', null, '320900', null);
INSERT INTO `sys_area` VALUES ('320902', '亭湖区', null, '320900', null);
INSERT INTO `sys_area` VALUES ('320903', '盐都区', null, '320900', null);
INSERT INTO `sys_area` VALUES ('320921', '响水县', null, '320900', null);
INSERT INTO `sys_area` VALUES ('320922', '滨海县', null, '320900', null);
INSERT INTO `sys_area` VALUES ('320923', '阜宁县', null, '320900', null);
INSERT INTO `sys_area` VALUES ('320924', '射阳县', null, '320900', null);
INSERT INTO `sys_area` VALUES ('320925', '建湖县', null, '320900', null);
INSERT INTO `sys_area` VALUES ('320981', '东台市', null, '320900', null);
INSERT INTO `sys_area` VALUES ('320982', '大丰市', null, '320900', null);
INSERT INTO `sys_area` VALUES ('321001', '市辖区', null, '321000', null);
INSERT INTO `sys_area` VALUES ('321002', '广陵区', null, '321000', null);
INSERT INTO `sys_area` VALUES ('321003', '邗江区', null, '321000', null);
INSERT INTO `sys_area` VALUES ('321011', '郊　区', null, '321000', null);
INSERT INTO `sys_area` VALUES ('321023', '宝应县', null, '321000', null);
INSERT INTO `sys_area` VALUES ('321081', '仪征市', null, '321000', null);
INSERT INTO `sys_area` VALUES ('321084', '高邮市', null, '321000', null);
INSERT INTO `sys_area` VALUES ('321088', '江都市', null, '321000', null);
INSERT INTO `sys_area` VALUES ('321101', '市辖区', null, '321100', null);
INSERT INTO `sys_area` VALUES ('321102', '京口区', null, '321100', null);
INSERT INTO `sys_area` VALUES ('321111', '润州区', null, '321100', null);
INSERT INTO `sys_area` VALUES ('321112', '丹徒区', null, '321100', null);
INSERT INTO `sys_area` VALUES ('321181', '丹阳市', null, '321100', null);
INSERT INTO `sys_area` VALUES ('321182', '扬中市', null, '321100', null);
INSERT INTO `sys_area` VALUES ('321183', '句容市', null, '321100', null);
INSERT INTO `sys_area` VALUES ('321201', '市辖区', null, '321200', null);
INSERT INTO `sys_area` VALUES ('321202', '海陵区', null, '321200', null);
INSERT INTO `sys_area` VALUES ('321203', '高港区', null, '321200', null);
INSERT INTO `sys_area` VALUES ('321281', '兴化市', null, '321200', null);
INSERT INTO `sys_area` VALUES ('321282', '靖江市', null, '321200', null);
INSERT INTO `sys_area` VALUES ('321283', '泰兴市', null, '321200', null);
INSERT INTO `sys_area` VALUES ('321284', '姜堰市', null, '321200', null);
INSERT INTO `sys_area` VALUES ('321301', '市辖区', null, '321300', null);
INSERT INTO `sys_area` VALUES ('321302', '宿城区', null, '321300', null);
INSERT INTO `sys_area` VALUES ('321311', '宿豫区', null, '321300', null);
INSERT INTO `sys_area` VALUES ('321322', '沭阳县', null, '321300', null);
INSERT INTO `sys_area` VALUES ('321323', '泗阳县', null, '321300', null);
INSERT INTO `sys_area` VALUES ('321324', '泗洪县', null, '321300', null);
INSERT INTO `sys_area` VALUES ('330101', '市辖区', null, '330100', null);
INSERT INTO `sys_area` VALUES ('330102', '上城区', null, '330100', null);
INSERT INTO `sys_area` VALUES ('330103', '下城区', null, '330100', null);
INSERT INTO `sys_area` VALUES ('330104', '江干区', null, '330100', null);
INSERT INTO `sys_area` VALUES ('330105', '拱墅区', null, '330100', null);
INSERT INTO `sys_area` VALUES ('330106', '西湖区', null, '330100', null);
INSERT INTO `sys_area` VALUES ('330108', '滨江区', null, '330100', null);
INSERT INTO `sys_area` VALUES ('330109', '萧山区', null, '330100', null);
INSERT INTO `sys_area` VALUES ('330110', '余杭区', null, '330100', null);
INSERT INTO `sys_area` VALUES ('330122', '桐庐县', null, '330100', null);
INSERT INTO `sys_area` VALUES ('330127', '淳安县', null, '330100', null);
INSERT INTO `sys_area` VALUES ('330182', '建德市', null, '330100', null);
INSERT INTO `sys_area` VALUES ('330183', '富阳市', null, '330100', null);
INSERT INTO `sys_area` VALUES ('330185', '临安市', null, '330100', null);
INSERT INTO `sys_area` VALUES ('330201', '市辖区', null, '330200', null);
INSERT INTO `sys_area` VALUES ('330203', '海曙区', null, '330200', null);
INSERT INTO `sys_area` VALUES ('330204', '江东区', null, '330200', null);
INSERT INTO `sys_area` VALUES ('330205', '江北区', null, '330200', null);
INSERT INTO `sys_area` VALUES ('330206', '北仑区', null, '330200', null);
INSERT INTO `sys_area` VALUES ('330211', '镇海区', null, '330200', null);
INSERT INTO `sys_area` VALUES ('330212', '鄞州区', null, '330200', null);
INSERT INTO `sys_area` VALUES ('330225', '象山县', null, '330200', null);
INSERT INTO `sys_area` VALUES ('330226', '宁海县', null, '330200', null);
INSERT INTO `sys_area` VALUES ('330281', '余姚市', null, '330200', null);
INSERT INTO `sys_area` VALUES ('330282', '慈溪市', null, '330200', null);
INSERT INTO `sys_area` VALUES ('330283', '奉化市', null, '330200', null);
INSERT INTO `sys_area` VALUES ('330301', '市辖区', null, '330300', null);
INSERT INTO `sys_area` VALUES ('330302', '鹿城区', null, '330300', null);
INSERT INTO `sys_area` VALUES ('330303', '龙湾区', null, '330300', null);
INSERT INTO `sys_area` VALUES ('330304', '瓯海区', null, '330300', null);
INSERT INTO `sys_area` VALUES ('330322', '洞头县', null, '330300', null);
INSERT INTO `sys_area` VALUES ('330324', '永嘉县', null, '330300', null);
INSERT INTO `sys_area` VALUES ('330326', '平阳县', null, '330300', null);
INSERT INTO `sys_area` VALUES ('330327', '苍南县', null, '330300', null);
INSERT INTO `sys_area` VALUES ('330328', '文成县', null, '330300', null);
INSERT INTO `sys_area` VALUES ('330329', '泰顺县', null, '330300', null);
INSERT INTO `sys_area` VALUES ('330381', '瑞安市', null, '330300', null);
INSERT INTO `sys_area` VALUES ('330382', '乐清市', null, '330300', null);
INSERT INTO `sys_area` VALUES ('330401', '市辖区', null, '330400', null);
INSERT INTO `sys_area` VALUES ('330402', '秀城区', null, '330400', null);
INSERT INTO `sys_area` VALUES ('330411', '秀洲区', null, '330400', null);
INSERT INTO `sys_area` VALUES ('330421', '嘉善县', null, '330400', null);
INSERT INTO `sys_area` VALUES ('330424', '海盐县', null, '330400', null);
INSERT INTO `sys_area` VALUES ('330481', '海宁市', null, '330400', null);
INSERT INTO `sys_area` VALUES ('330482', '平湖市', null, '330400', null);
INSERT INTO `sys_area` VALUES ('330483', '桐乡市', null, '330400', null);
INSERT INTO `sys_area` VALUES ('330501', '市辖区', null, '330500', null);
INSERT INTO `sys_area` VALUES ('330502', '吴兴区', null, '330500', null);
INSERT INTO `sys_area` VALUES ('330503', '南浔区', null, '330500', null);
INSERT INTO `sys_area` VALUES ('330521', '德清县', null, '330500', null);
INSERT INTO `sys_area` VALUES ('330522', '长兴县', null, '330500', null);
INSERT INTO `sys_area` VALUES ('330523', '安吉县', null, '330500', null);
INSERT INTO `sys_area` VALUES ('330601', '市辖区', null, '330600', null);
INSERT INTO `sys_area` VALUES ('330602', '越城区', null, '330600', null);
INSERT INTO `sys_area` VALUES ('330621', '绍兴县', null, '330600', null);
INSERT INTO `sys_area` VALUES ('330624', '新昌县', null, '330600', null);
INSERT INTO `sys_area` VALUES ('330681', '诸暨市', null, '330600', null);
INSERT INTO `sys_area` VALUES ('330682', '上虞市', null, '330600', null);
INSERT INTO `sys_area` VALUES ('330683', '嵊州市', null, '330600', null);
INSERT INTO `sys_area` VALUES ('330701', '市辖区', null, '330700', null);
INSERT INTO `sys_area` VALUES ('330702', '婺城区', null, '330700', null);
INSERT INTO `sys_area` VALUES ('330703', '金东区', null, '330700', null);
INSERT INTO `sys_area` VALUES ('330723', '武义县', null, '330700', null);
INSERT INTO `sys_area` VALUES ('330726', '浦江县', null, '330700', null);
INSERT INTO `sys_area` VALUES ('330727', '磐安县', null, '330700', null);
INSERT INTO `sys_area` VALUES ('330781', '兰溪市', null, '330700', null);
INSERT INTO `sys_area` VALUES ('330782', '义乌市', null, '330700', null);
INSERT INTO `sys_area` VALUES ('330783', '东阳市', null, '330700', null);
INSERT INTO `sys_area` VALUES ('330784', '永康市', null, '330700', null);
INSERT INTO `sys_area` VALUES ('330801', '市辖区', null, '330800', null);
INSERT INTO `sys_area` VALUES ('330802', '柯城区', null, '330800', null);
INSERT INTO `sys_area` VALUES ('330803', '衢江区', null, '330800', null);
INSERT INTO `sys_area` VALUES ('330822', '常山县', null, '330800', null);
INSERT INTO `sys_area` VALUES ('330824', '开化县', null, '330800', null);
INSERT INTO `sys_area` VALUES ('330825', '龙游县', null, '330800', null);
INSERT INTO `sys_area` VALUES ('330881', '江山市', null, '330800', null);
INSERT INTO `sys_area` VALUES ('330901', '市辖区', null, '330900', null);
INSERT INTO `sys_area` VALUES ('330902', '定海区', null, '330900', null);
INSERT INTO `sys_area` VALUES ('330903', '普陀区', null, '330900', null);
INSERT INTO `sys_area` VALUES ('330921', '岱山县', null, '330900', null);
INSERT INTO `sys_area` VALUES ('330922', '嵊泗县', null, '330900', null);
INSERT INTO `sys_area` VALUES ('331001', '市辖区', null, '331000', null);
INSERT INTO `sys_area` VALUES ('331002', '椒江区', null, '331000', null);
INSERT INTO `sys_area` VALUES ('331003', '黄岩区', null, '331000', null);
INSERT INTO `sys_area` VALUES ('331004', '路桥区', null, '331000', null);
INSERT INTO `sys_area` VALUES ('331021', '玉环县', null, '331000', null);
INSERT INTO `sys_area` VALUES ('331022', '三门县', null, '331000', null);
INSERT INTO `sys_area` VALUES ('331023', '天台县', null, '331000', null);
INSERT INTO `sys_area` VALUES ('331024', '仙居县', null, '331000', null);
INSERT INTO `sys_area` VALUES ('331081', '温岭市', null, '331000', null);
INSERT INTO `sys_area` VALUES ('331082', '临海市', null, '331000', null);
INSERT INTO `sys_area` VALUES ('331101', '市辖区', null, '331100', null);
INSERT INTO `sys_area` VALUES ('331102', '莲都区', null, '331100', null);
INSERT INTO `sys_area` VALUES ('331121', '青田县', null, '331100', null);
INSERT INTO `sys_area` VALUES ('331122', '缙云县', null, '331100', null);
INSERT INTO `sys_area` VALUES ('331123', '遂昌县', null, '331100', null);
INSERT INTO `sys_area` VALUES ('331124', '松阳县', null, '331100', null);
INSERT INTO `sys_area` VALUES ('331125', '云和县', null, '331100', null);
INSERT INTO `sys_area` VALUES ('331126', '庆元县', null, '331100', null);
INSERT INTO `sys_area` VALUES ('331127', '景宁畲族自治县', null, '331100', null);
INSERT INTO `sys_area` VALUES ('331181', '龙泉市', null, '331100', null);
INSERT INTO `sys_area` VALUES ('340101', '市辖区', null, '340100', null);
INSERT INTO `sys_area` VALUES ('340102', '瑶海区', null, '340100', null);
INSERT INTO `sys_area` VALUES ('340103', '庐阳区', null, '340100', null);
INSERT INTO `sys_area` VALUES ('340104', '蜀山区', null, '340100', null);
INSERT INTO `sys_area` VALUES ('340111', '包河区', null, '340100', null);
INSERT INTO `sys_area` VALUES ('340121', '长丰县', null, '340100', null);
INSERT INTO `sys_area` VALUES ('340122', '肥东县', null, '340100', null);
INSERT INTO `sys_area` VALUES ('340123', '肥西县', null, '340100', null);
INSERT INTO `sys_area` VALUES ('340201', '市辖区', null, '340200', null);
INSERT INTO `sys_area` VALUES ('340202', '镜湖区', null, '340200', null);
INSERT INTO `sys_area` VALUES ('340203', '马塘区', null, '340200', null);
INSERT INTO `sys_area` VALUES ('340204', '新芜区', null, '340200', null);
INSERT INTO `sys_area` VALUES ('340207', '鸠江区', null, '340200', null);
INSERT INTO `sys_area` VALUES ('340221', '芜湖县', null, '340200', null);
INSERT INTO `sys_area` VALUES ('340222', '繁昌县', null, '340200', null);
INSERT INTO `sys_area` VALUES ('340223', '南陵县', null, '340200', null);
INSERT INTO `sys_area` VALUES ('340301', '市辖区', null, '340300', null);
INSERT INTO `sys_area` VALUES ('340302', '龙子湖区', null, '340300', null);
INSERT INTO `sys_area` VALUES ('340303', '蚌山区', null, '340300', null);
INSERT INTO `sys_area` VALUES ('340304', '禹会区', null, '340300', null);
INSERT INTO `sys_area` VALUES ('340311', '淮上区', null, '340300', null);
INSERT INTO `sys_area` VALUES ('340321', '怀远县', null, '340300', null);
INSERT INTO `sys_area` VALUES ('340322', '五河县', null, '340300', null);
INSERT INTO `sys_area` VALUES ('340323', '固镇县', null, '340300', null);
INSERT INTO `sys_area` VALUES ('340401', '市辖区', null, '340400', null);
INSERT INTO `sys_area` VALUES ('340402', '大通区', null, '340400', null);
INSERT INTO `sys_area` VALUES ('340403', '田家庵区', null, '340400', null);
INSERT INTO `sys_area` VALUES ('340404', '谢家集区', null, '340400', null);
INSERT INTO `sys_area` VALUES ('340405', '八公山区', null, '340400', null);
INSERT INTO `sys_area` VALUES ('340406', '潘集区', null, '340400', null);
INSERT INTO `sys_area` VALUES ('340421', '凤台县', null, '340400', null);
INSERT INTO `sys_area` VALUES ('340501', '市辖区', null, '340500', null);
INSERT INTO `sys_area` VALUES ('340502', '金家庄区', null, '340500', null);
INSERT INTO `sys_area` VALUES ('340503', '花山区', null, '340500', null);
INSERT INTO `sys_area` VALUES ('340504', '雨山区', null, '340500', null);
INSERT INTO `sys_area` VALUES ('340521', '当涂县', null, '340500', null);
INSERT INTO `sys_area` VALUES ('340601', '市辖区', null, '340600', null);
INSERT INTO `sys_area` VALUES ('340602', '杜集区', null, '340600', null);
INSERT INTO `sys_area` VALUES ('340603', '相山区', null, '340600', null);
INSERT INTO `sys_area` VALUES ('340604', '烈山区', null, '340600', null);
INSERT INTO `sys_area` VALUES ('340621', '濉溪县', null, '340600', null);
INSERT INTO `sys_area` VALUES ('340701', '市辖区', null, '340700', null);
INSERT INTO `sys_area` VALUES ('340702', '铜官山区', null, '340700', null);
INSERT INTO `sys_area` VALUES ('340703', '狮子山区', null, '340700', null);
INSERT INTO `sys_area` VALUES ('340711', '郊　区', null, '340700', null);
INSERT INTO `sys_area` VALUES ('340721', '铜陵县', null, '340700', null);
INSERT INTO `sys_area` VALUES ('340801', '市辖区', null, '340800', null);
INSERT INTO `sys_area` VALUES ('340802', '迎江区', null, '340800', null);
INSERT INTO `sys_area` VALUES ('340803', '大观区', null, '340800', null);
INSERT INTO `sys_area` VALUES ('340811', '郊　区', null, '340800', null);
INSERT INTO `sys_area` VALUES ('340822', '怀宁县', null, '340800', null);
INSERT INTO `sys_area` VALUES ('340823', '枞阳县', null, '340800', null);
INSERT INTO `sys_area` VALUES ('340824', '潜山县', null, '340800', null);
INSERT INTO `sys_area` VALUES ('340825', '太湖县', null, '340800', null);
INSERT INTO `sys_area` VALUES ('340826', '宿松县', null, '340800', null);
INSERT INTO `sys_area` VALUES ('340827', '望江县', null, '340800', null);
INSERT INTO `sys_area` VALUES ('340828', '岳西县', null, '340800', null);
INSERT INTO `sys_area` VALUES ('340881', '桐城市', null, '340800', null);
INSERT INTO `sys_area` VALUES ('341001', '市辖区', null, '341000', null);
INSERT INTO `sys_area` VALUES ('341002', '屯溪区', null, '341000', null);
INSERT INTO `sys_area` VALUES ('341003', '黄山区', null, '341000', null);
INSERT INTO `sys_area` VALUES ('341004', '徽州区', null, '341000', null);
INSERT INTO `sys_area` VALUES ('341021', '歙　县', null, '341000', null);
INSERT INTO `sys_area` VALUES ('341022', '休宁县', null, '341000', null);
INSERT INTO `sys_area` VALUES ('341023', '黟　县', null, '341000', null);
INSERT INTO `sys_area` VALUES ('341024', '祁门县', null, '341000', null);
INSERT INTO `sys_area` VALUES ('341101', '市辖区', null, '341100', null);
INSERT INTO `sys_area` VALUES ('341102', '琅琊区', null, '341100', null);
INSERT INTO `sys_area` VALUES ('341103', '南谯区', null, '341100', null);
INSERT INTO `sys_area` VALUES ('341122', '来安县', null, '341100', null);
INSERT INTO `sys_area` VALUES ('341124', '全椒县', null, '341100', null);
INSERT INTO `sys_area` VALUES ('341125', '定远县', null, '341100', null);
INSERT INTO `sys_area` VALUES ('341126', '凤阳县', null, '341100', null);
INSERT INTO `sys_area` VALUES ('341181', '天长市', null, '341100', null);
INSERT INTO `sys_area` VALUES ('341182', '明光市', null, '341100', null);
INSERT INTO `sys_area` VALUES ('341201', '市辖区', null, '341200', null);
INSERT INTO `sys_area` VALUES ('341202', '颍州区', null, '341200', null);
INSERT INTO `sys_area` VALUES ('341203', '颍东区', null, '341200', null);
INSERT INTO `sys_area` VALUES ('341204', '颍泉区', null, '341200', null);
INSERT INTO `sys_area` VALUES ('341221', '临泉县', null, '341200', null);
INSERT INTO `sys_area` VALUES ('341222', '太和县', null, '341200', null);
INSERT INTO `sys_area` VALUES ('341225', '阜南县', null, '341200', null);
INSERT INTO `sys_area` VALUES ('341226', '颍上县', null, '341200', null);
INSERT INTO `sys_area` VALUES ('341282', '界首市', null, '341200', null);
INSERT INTO `sys_area` VALUES ('341301', '市辖区', null, '341300', null);
INSERT INTO `sys_area` VALUES ('341302', '墉桥区', null, '341300', null);
INSERT INTO `sys_area` VALUES ('341321', '砀山县', null, '341300', null);
INSERT INTO `sys_area` VALUES ('341322', '萧　县', null, '341300', null);
INSERT INTO `sys_area` VALUES ('341323', '灵璧县', null, '341300', null);
INSERT INTO `sys_area` VALUES ('341324', '泗　县', null, '341300', null);
INSERT INTO `sys_area` VALUES ('341401', '市辖区', null, '341400', null);
INSERT INTO `sys_area` VALUES ('341402', '居巢区', null, '341400', null);
INSERT INTO `sys_area` VALUES ('341421', '庐江县', null, '341400', null);
INSERT INTO `sys_area` VALUES ('341422', '无为县', null, '341400', null);
INSERT INTO `sys_area` VALUES ('341423', '含山县', null, '341400', null);
INSERT INTO `sys_area` VALUES ('341424', '和　县', null, '341400', null);
INSERT INTO `sys_area` VALUES ('341501', '市辖区', null, '341500', null);
INSERT INTO `sys_area` VALUES ('341502', '金安区', null, '341500', null);
INSERT INTO `sys_area` VALUES ('341503', '裕安区', null, '341500', null);
INSERT INTO `sys_area` VALUES ('341521', '寿　县', null, '341500', null);
INSERT INTO `sys_area` VALUES ('341522', '霍邱县', null, '341500', null);
INSERT INTO `sys_area` VALUES ('341523', '舒城县', null, '341500', null);
INSERT INTO `sys_area` VALUES ('341524', '金寨县', null, '341500', null);
INSERT INTO `sys_area` VALUES ('341525', '霍山县', null, '341500', null);
INSERT INTO `sys_area` VALUES ('341601', '市辖区', null, '341600', null);
INSERT INTO `sys_area` VALUES ('341602', '谯城区', null, '341600', null);
INSERT INTO `sys_area` VALUES ('341621', '涡阳县', null, '341600', null);
INSERT INTO `sys_area` VALUES ('341622', '蒙城县', null, '341600', null);
INSERT INTO `sys_area` VALUES ('341623', '利辛县', null, '341600', null);
INSERT INTO `sys_area` VALUES ('341701', '市辖区', null, '341700', null);
INSERT INTO `sys_area` VALUES ('341702', '贵池区', null, '341700', null);
INSERT INTO `sys_area` VALUES ('341721', '东至县', null, '341700', null);
INSERT INTO `sys_area` VALUES ('341722', '石台县', null, '341700', null);
INSERT INTO `sys_area` VALUES ('341723', '青阳县', null, '341700', null);
INSERT INTO `sys_area` VALUES ('341801', '市辖区', null, '341800', null);
INSERT INTO `sys_area` VALUES ('341802', '宣州区', null, '341800', null);
INSERT INTO `sys_area` VALUES ('341821', '郎溪县', null, '341800', null);
INSERT INTO `sys_area` VALUES ('341822', '广德县', null, '341800', null);
INSERT INTO `sys_area` VALUES ('341823', '泾　县', null, '341800', null);
INSERT INTO `sys_area` VALUES ('341824', '绩溪县', null, '341800', null);
INSERT INTO `sys_area` VALUES ('341825', '旌德县', null, '341800', null);
INSERT INTO `sys_area` VALUES ('341881', '宁国市', null, '341800', null);
INSERT INTO `sys_area` VALUES ('350101', '市辖区', null, '350100', null);
INSERT INTO `sys_area` VALUES ('350102', '鼓楼区', null, '350100', null);
INSERT INTO `sys_area` VALUES ('350103', '台江区', null, '350100', null);
INSERT INTO `sys_area` VALUES ('350104', '仓山区', null, '350100', null);
INSERT INTO `sys_area` VALUES ('350105', '马尾区', null, '350100', null);
INSERT INTO `sys_area` VALUES ('350111', '晋安区', null, '350100', null);
INSERT INTO `sys_area` VALUES ('350121', '闽侯县', null, '350100', null);
INSERT INTO `sys_area` VALUES ('350122', '连江县', null, '350100', null);
INSERT INTO `sys_area` VALUES ('350123', '罗源县', null, '350100', null);
INSERT INTO `sys_area` VALUES ('350124', '闽清县', null, '350100', null);
INSERT INTO `sys_area` VALUES ('350125', '永泰县', null, '350100', null);
INSERT INTO `sys_area` VALUES ('350128', '平潭县', null, '350100', null);
INSERT INTO `sys_area` VALUES ('350181', '福清市', null, '350100', null);
INSERT INTO `sys_area` VALUES ('350182', '长乐市', null, '350100', null);
INSERT INTO `sys_area` VALUES ('350201', '市辖区', null, '350200', null);
INSERT INTO `sys_area` VALUES ('350203', '思明区', null, '350200', null);
INSERT INTO `sys_area` VALUES ('350205', '海沧区', null, '350200', null);
INSERT INTO `sys_area` VALUES ('350206', '湖里区', null, '350200', null);
INSERT INTO `sys_area` VALUES ('350211', '集美区', null, '350200', null);
INSERT INTO `sys_area` VALUES ('350212', '同安区', null, '350200', null);
INSERT INTO `sys_area` VALUES ('350213', '翔安区', null, '350200', null);
INSERT INTO `sys_area` VALUES ('350301', '市辖区', null, '350300', null);
INSERT INTO `sys_area` VALUES ('350302', '城厢区', null, '350300', null);
INSERT INTO `sys_area` VALUES ('350303', '涵江区', null, '350300', null);
INSERT INTO `sys_area` VALUES ('350304', '荔城区', null, '350300', null);
INSERT INTO `sys_area` VALUES ('350305', '秀屿区', null, '350300', null);
INSERT INTO `sys_area` VALUES ('350322', '仙游县', null, '350300', null);
INSERT INTO `sys_area` VALUES ('350401', '市辖区', null, '350400', null);
INSERT INTO `sys_area` VALUES ('350402', '梅列区', null, '350400', null);
INSERT INTO `sys_area` VALUES ('350403', '三元区', null, '350400', null);
INSERT INTO `sys_area` VALUES ('350421', '明溪县', null, '350400', null);
INSERT INTO `sys_area` VALUES ('350423', '清流县', null, '350400', null);
INSERT INTO `sys_area` VALUES ('350424', '宁化县', null, '350400', null);
INSERT INTO `sys_area` VALUES ('350425', '大田县', null, '350400', null);
INSERT INTO `sys_area` VALUES ('350426', '尤溪县', null, '350400', null);
INSERT INTO `sys_area` VALUES ('350427', '沙　县', null, '350400', null);
INSERT INTO `sys_area` VALUES ('350428', '将乐县', null, '350400', null);
INSERT INTO `sys_area` VALUES ('350429', '泰宁县', null, '350400', null);
INSERT INTO `sys_area` VALUES ('350430', '建宁县', null, '350400', null);
INSERT INTO `sys_area` VALUES ('350481', '永安市', null, '350400', null);
INSERT INTO `sys_area` VALUES ('350501', '市辖区', null, '350500', null);
INSERT INTO `sys_area` VALUES ('350502', '鲤城区', null, '350500', null);
INSERT INTO `sys_area` VALUES ('350503', '丰泽区', null, '350500', null);
INSERT INTO `sys_area` VALUES ('350504', '洛江区', null, '350500', null);
INSERT INTO `sys_area` VALUES ('350505', '泉港区', null, '350500', null);
INSERT INTO `sys_area` VALUES ('350521', '惠安县', null, '350500', null);
INSERT INTO `sys_area` VALUES ('350524', '安溪县', null, '350500', null);
INSERT INTO `sys_area` VALUES ('350525', '永春县', null, '350500', null);
INSERT INTO `sys_area` VALUES ('350526', '德化县', null, '350500', null);
INSERT INTO `sys_area` VALUES ('350527', '金门县', null, '350500', null);
INSERT INTO `sys_area` VALUES ('350581', '石狮市', null, '350500', null);
INSERT INTO `sys_area` VALUES ('350582', '晋江市', null, '350500', null);
INSERT INTO `sys_area` VALUES ('350583', '南安市', null, '350500', null);
INSERT INTO `sys_area` VALUES ('350601', '市辖区', null, '350600', null);
INSERT INTO `sys_area` VALUES ('350602', '芗城区', null, '350600', null);
INSERT INTO `sys_area` VALUES ('350603', '龙文区', null, '350600', null);
INSERT INTO `sys_area` VALUES ('350622', '云霄县', null, '350600', null);
INSERT INTO `sys_area` VALUES ('350623', '漳浦县', null, '350600', null);
INSERT INTO `sys_area` VALUES ('350624', '诏安县', null, '350600', null);
INSERT INTO `sys_area` VALUES ('350625', '长泰县', null, '350600', null);
INSERT INTO `sys_area` VALUES ('350626', '东山县', null, '350600', null);
INSERT INTO `sys_area` VALUES ('350627', '南靖县', null, '350600', null);
INSERT INTO `sys_area` VALUES ('350628', '平和县', null, '350600', null);
INSERT INTO `sys_area` VALUES ('350629', '华安县', null, '350600', null);
INSERT INTO `sys_area` VALUES ('350681', '龙海市', null, '350600', null);
INSERT INTO `sys_area` VALUES ('350701', '市辖区', null, '350700', null);
INSERT INTO `sys_area` VALUES ('350702', '延平区', null, '350700', null);
INSERT INTO `sys_area` VALUES ('350721', '顺昌县', null, '350700', null);
INSERT INTO `sys_area` VALUES ('350722', '浦城县', null, '350700', null);
INSERT INTO `sys_area` VALUES ('350723', '光泽县', null, '350700', null);
INSERT INTO `sys_area` VALUES ('350724', '松溪县', null, '350700', null);
INSERT INTO `sys_area` VALUES ('350725', '政和县', null, '350700', null);
INSERT INTO `sys_area` VALUES ('350781', '邵武市', null, '350700', null);
INSERT INTO `sys_area` VALUES ('350782', '武夷山市', null, '350700', null);
INSERT INTO `sys_area` VALUES ('350783', '建瓯市', null, '350700', null);
INSERT INTO `sys_area` VALUES ('350784', '建阳市', null, '350700', null);
INSERT INTO `sys_area` VALUES ('350801', '市辖区', null, '350800', null);
INSERT INTO `sys_area` VALUES ('350802', '新罗区', null, '350800', null);
INSERT INTO `sys_area` VALUES ('350821', '长汀县', null, '350800', null);
INSERT INTO `sys_area` VALUES ('350822', '永定县', null, '350800', null);
INSERT INTO `sys_area` VALUES ('350823', '上杭县', null, '350800', null);
INSERT INTO `sys_area` VALUES ('350824', '武平县', null, '350800', null);
INSERT INTO `sys_area` VALUES ('350825', '连城县', null, '350800', null);
INSERT INTO `sys_area` VALUES ('350881', '漳平市', null, '350800', null);
INSERT INTO `sys_area` VALUES ('350901', '市辖区', null, '350900', null);
INSERT INTO `sys_area` VALUES ('350902', '蕉城区', null, '350900', null);
INSERT INTO `sys_area` VALUES ('350921', '霞浦县', null, '350900', null);
INSERT INTO `sys_area` VALUES ('350922', '古田县', null, '350900', null);
INSERT INTO `sys_area` VALUES ('350923', '屏南县', null, '350900', null);
INSERT INTO `sys_area` VALUES ('350924', '寿宁县', null, '350900', null);
INSERT INTO `sys_area` VALUES ('350925', '周宁县', null, '350900', null);
INSERT INTO `sys_area` VALUES ('350926', '柘荣县', null, '350900', null);
INSERT INTO `sys_area` VALUES ('350981', '福安市', null, '350900', null);
INSERT INTO `sys_area` VALUES ('350982', '福鼎市', null, '350900', null);
INSERT INTO `sys_area` VALUES ('360101', '市辖区', null, '360100', null);
INSERT INTO `sys_area` VALUES ('360102', '东湖区', null, '360100', null);
INSERT INTO `sys_area` VALUES ('360103', '西湖区', null, '360100', null);
INSERT INTO `sys_area` VALUES ('360104', '青云谱区', null, '360100', null);
INSERT INTO `sys_area` VALUES ('360105', '湾里区', null, '360100', null);
INSERT INTO `sys_area` VALUES ('360111', '青山湖区', null, '360100', null);
INSERT INTO `sys_area` VALUES ('360121', '南昌县', null, '360100', null);
INSERT INTO `sys_area` VALUES ('360122', '新建县', null, '360100', null);
INSERT INTO `sys_area` VALUES ('360123', '安义县', null, '360100', null);
INSERT INTO `sys_area` VALUES ('360124', '进贤县', null, '360100', null);
INSERT INTO `sys_area` VALUES ('360201', '市辖区', null, '360200', null);
INSERT INTO `sys_area` VALUES ('360202', '昌江区', null, '360200', null);
INSERT INTO `sys_area` VALUES ('360203', '珠山区', null, '360200', null);
INSERT INTO `sys_area` VALUES ('360222', '浮梁县', null, '360200', null);
INSERT INTO `sys_area` VALUES ('360281', '乐平市', null, '360200', null);
INSERT INTO `sys_area` VALUES ('360301', '市辖区', null, '360300', null);
INSERT INTO `sys_area` VALUES ('360302', '安源区', null, '360300', null);
INSERT INTO `sys_area` VALUES ('360313', '湘东区', null, '360300', null);
INSERT INTO `sys_area` VALUES ('360321', '莲花县', null, '360300', null);
INSERT INTO `sys_area` VALUES ('360322', '上栗县', null, '360300', null);
INSERT INTO `sys_area` VALUES ('360323', '芦溪县', null, '360300', null);
INSERT INTO `sys_area` VALUES ('360401', '市辖区', null, '360400', null);
INSERT INTO `sys_area` VALUES ('360402', '庐山区', null, '360400', null);
INSERT INTO `sys_area` VALUES ('360403', '浔阳区', null, '360400', null);
INSERT INTO `sys_area` VALUES ('360421', '九江县', null, '360400', null);
INSERT INTO `sys_area` VALUES ('360423', '武宁县', null, '360400', null);
INSERT INTO `sys_area` VALUES ('360424', '修水县', null, '360400', null);
INSERT INTO `sys_area` VALUES ('360425', '永修县', null, '360400', null);
INSERT INTO `sys_area` VALUES ('360426', '德安县', null, '360400', null);
INSERT INTO `sys_area` VALUES ('360427', '星子县', null, '360400', null);
INSERT INTO `sys_area` VALUES ('360428', '都昌县', null, '360400', null);
INSERT INTO `sys_area` VALUES ('360429', '湖口县', null, '360400', null);
INSERT INTO `sys_area` VALUES ('360430', '彭泽县', null, '360400', null);
INSERT INTO `sys_area` VALUES ('360481', '瑞昌市', null, '360400', null);
INSERT INTO `sys_area` VALUES ('360501', '市辖区', null, '360500', null);
INSERT INTO `sys_area` VALUES ('360502', '渝水区', null, '360500', null);
INSERT INTO `sys_area` VALUES ('360521', '分宜县', null, '360500', null);
INSERT INTO `sys_area` VALUES ('360601', '市辖区', null, '360600', null);
INSERT INTO `sys_area` VALUES ('360602', '月湖区', null, '360600', null);
INSERT INTO `sys_area` VALUES ('360622', '余江县', null, '360600', null);
INSERT INTO `sys_area` VALUES ('360681', '贵溪市', null, '360600', null);
INSERT INTO `sys_area` VALUES ('360701', '市辖区', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360702', '章贡区', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360721', '赣　县', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360722', '信丰县', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360723', '大余县', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360724', '上犹县', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360725', '崇义县', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360726', '安远县', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360727', '龙南县', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360728', '定南县', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360729', '全南县', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360730', '宁都县', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360731', '于都县', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360732', '兴国县', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360733', '会昌县', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360734', '寻乌县', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360735', '石城县', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360781', '瑞金市', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360782', '南康市', null, '360700', null);
INSERT INTO `sys_area` VALUES ('360801', '市辖区', null, '360800', null);
INSERT INTO `sys_area` VALUES ('360802', '吉州区', null, '360800', null);
INSERT INTO `sys_area` VALUES ('360803', '青原区', null, '360800', null);
INSERT INTO `sys_area` VALUES ('360821', '吉安县', null, '360800', null);
INSERT INTO `sys_area` VALUES ('360822', '吉水县', null, '360800', null);
INSERT INTO `sys_area` VALUES ('360823', '峡江县', null, '360800', null);
INSERT INTO `sys_area` VALUES ('360824', '新干县', null, '360800', null);
INSERT INTO `sys_area` VALUES ('360825', '永丰县', null, '360800', null);
INSERT INTO `sys_area` VALUES ('360826', '泰和县', null, '360800', null);
INSERT INTO `sys_area` VALUES ('360827', '遂川县', null, '360800', null);
INSERT INTO `sys_area` VALUES ('360828', '万安县', null, '360800', null);
INSERT INTO `sys_area` VALUES ('360829', '安福县', null, '360800', null);
INSERT INTO `sys_area` VALUES ('360830', '永新县', null, '360800', null);
INSERT INTO `sys_area` VALUES ('360881', '井冈山市', null, '360800', null);
INSERT INTO `sys_area` VALUES ('360901', '市辖区', null, '360900', null);
INSERT INTO `sys_area` VALUES ('360902', '袁州区', null, '360900', null);
INSERT INTO `sys_area` VALUES ('360921', '奉新县', null, '360900', null);
INSERT INTO `sys_area` VALUES ('360922', '万载县', null, '360900', null);
INSERT INTO `sys_area` VALUES ('360923', '上高县', null, '360900', null);
INSERT INTO `sys_area` VALUES ('360924', '宜丰县', null, '360900', null);
INSERT INTO `sys_area` VALUES ('360925', '靖安县', null, '360900', null);
INSERT INTO `sys_area` VALUES ('360926', '铜鼓县', null, '360900', null);
INSERT INTO `sys_area` VALUES ('360981', '丰城市', null, '360900', null);
INSERT INTO `sys_area` VALUES ('360982', '樟树市', null, '360900', null);
INSERT INTO `sys_area` VALUES ('360983', '高安市', null, '360900', null);
INSERT INTO `sys_area` VALUES ('361001', '市辖区', null, '361000', null);
INSERT INTO `sys_area` VALUES ('361002', '临川区', null, '361000', null);
INSERT INTO `sys_area` VALUES ('361021', '南城县', null, '361000', null);
INSERT INTO `sys_area` VALUES ('361022', '黎川县', null, '361000', null);
INSERT INTO `sys_area` VALUES ('361023', '南丰县', null, '361000', null);
INSERT INTO `sys_area` VALUES ('361024', '崇仁县', null, '361000', null);
INSERT INTO `sys_area` VALUES ('361025', '乐安县', null, '361000', null);
INSERT INTO `sys_area` VALUES ('361026', '宜黄县', null, '361000', null);
INSERT INTO `sys_area` VALUES ('361027', '金溪县', null, '361000', null);
INSERT INTO `sys_area` VALUES ('361028', '资溪县', null, '361000', null);
INSERT INTO `sys_area` VALUES ('361029', '东乡县', null, '361000', null);
INSERT INTO `sys_area` VALUES ('361030', '广昌县', null, '361000', null);
INSERT INTO `sys_area` VALUES ('361101', '市辖区', null, '361100', null);
INSERT INTO `sys_area` VALUES ('361102', '信州区', null, '361100', null);
INSERT INTO `sys_area` VALUES ('361121', '上饶县', null, '361100', null);
INSERT INTO `sys_area` VALUES ('361122', '广丰县', null, '361100', null);
INSERT INTO `sys_area` VALUES ('361123', '玉山县', null, '361100', null);
INSERT INTO `sys_area` VALUES ('361124', '铅山县', null, '361100', null);
INSERT INTO `sys_area` VALUES ('361125', '横峰县', null, '361100', null);
INSERT INTO `sys_area` VALUES ('361126', '弋阳县', null, '361100', null);
INSERT INTO `sys_area` VALUES ('361127', '余干县', null, '361100', null);
INSERT INTO `sys_area` VALUES ('361128', '鄱阳县', null, '361100', null);
INSERT INTO `sys_area` VALUES ('361129', '万年县', null, '361100', null);
INSERT INTO `sys_area` VALUES ('361130', '婺源县', null, '361100', null);
INSERT INTO `sys_area` VALUES ('361181', '德兴市', null, '361100', null);
INSERT INTO `sys_area` VALUES ('370101', '市辖区', null, '370100', null);
INSERT INTO `sys_area` VALUES ('370102', '历下区', null, '370100', null);
INSERT INTO `sys_area` VALUES ('370103', '市中区', null, '370100', null);
INSERT INTO `sys_area` VALUES ('370104', '槐荫区', null, '370100', null);
INSERT INTO `sys_area` VALUES ('370105', '天桥区', null, '370100', null);
INSERT INTO `sys_area` VALUES ('370112', '历城区', null, '370100', null);
INSERT INTO `sys_area` VALUES ('370113', '长清区', null, '370100', null);
INSERT INTO `sys_area` VALUES ('370124', '平阴县', null, '370100', null);
INSERT INTO `sys_area` VALUES ('370125', '济阳县', null, '370100', null);
INSERT INTO `sys_area` VALUES ('370126', '商河县', null, '370100', null);
INSERT INTO `sys_area` VALUES ('370181', '章丘市', null, '370100', null);
INSERT INTO `sys_area` VALUES ('370201', '市辖区', null, '370200', null);
INSERT INTO `sys_area` VALUES ('370202', '市南区', null, '370200', null);
INSERT INTO `sys_area` VALUES ('370203', '市北区', null, '370200', null);
INSERT INTO `sys_area` VALUES ('370205', '四方区', null, '370200', null);
INSERT INTO `sys_area` VALUES ('370211', '黄岛区', null, '370200', null);
INSERT INTO `sys_area` VALUES ('370212', '崂山区', null, '370200', null);
INSERT INTO `sys_area` VALUES ('370213', '李沧区', null, '370200', null);
INSERT INTO `sys_area` VALUES ('370214', '城阳区', null, '370200', null);
INSERT INTO `sys_area` VALUES ('370281', '胶州市', null, '370200', null);
INSERT INTO `sys_area` VALUES ('370282', '即墨市', null, '370200', null);
INSERT INTO `sys_area` VALUES ('370283', '平度市', null, '370200', null);
INSERT INTO `sys_area` VALUES ('370284', '胶南市', null, '370200', null);
INSERT INTO `sys_area` VALUES ('370285', '莱西市', null, '370200', null);
INSERT INTO `sys_area` VALUES ('370301', '市辖区', null, '370300', null);
INSERT INTO `sys_area` VALUES ('370302', '淄川区', null, '370300', null);
INSERT INTO `sys_area` VALUES ('370303', '张店区', null, '370300', null);
INSERT INTO `sys_area` VALUES ('370304', '博山区', null, '370300', null);
INSERT INTO `sys_area` VALUES ('370305', '临淄区', null, '370300', null);
INSERT INTO `sys_area` VALUES ('370306', '周村区', null, '370300', null);
INSERT INTO `sys_area` VALUES ('370321', '桓台县', null, '370300', null);
INSERT INTO `sys_area` VALUES ('370322', '高青县', null, '370300', null);
INSERT INTO `sys_area` VALUES ('370323', '沂源县', null, '370300', null);
INSERT INTO `sys_area` VALUES ('370401', '市辖区', null, '370400', null);
INSERT INTO `sys_area` VALUES ('370402', '市中区', null, '370400', null);
INSERT INTO `sys_area` VALUES ('370403', '薛城区', null, '370400', null);
INSERT INTO `sys_area` VALUES ('370404', '峄城区', null, '370400', null);
INSERT INTO `sys_area` VALUES ('370405', '台儿庄区', null, '370400', null);
INSERT INTO `sys_area` VALUES ('370406', '山亭区', null, '370400', null);
INSERT INTO `sys_area` VALUES ('370481', '滕州市', null, '370400', null);
INSERT INTO `sys_area` VALUES ('370501', '市辖区', null, '370500', null);
INSERT INTO `sys_area` VALUES ('370502', '东营区', null, '370500', null);
INSERT INTO `sys_area` VALUES ('370503', '河口区', null, '370500', null);
INSERT INTO `sys_area` VALUES ('370521', '垦利县', null, '370500', null);
INSERT INTO `sys_area` VALUES ('370522', '利津县', null, '370500', null);
INSERT INTO `sys_area` VALUES ('370523', '广饶县', null, '370500', null);
INSERT INTO `sys_area` VALUES ('370601', '市辖区', null, '370600', null);
INSERT INTO `sys_area` VALUES ('370602', '芝罘区', null, '370600', null);
INSERT INTO `sys_area` VALUES ('370611', '福山区', null, '370600', null);
INSERT INTO `sys_area` VALUES ('370612', '牟平区', null, '370600', null);
INSERT INTO `sys_area` VALUES ('370613', '莱山区', null, '370600', null);
INSERT INTO `sys_area` VALUES ('370634', '长岛县', null, '370600', null);
INSERT INTO `sys_area` VALUES ('370681', '龙口市', null, '370600', null);
INSERT INTO `sys_area` VALUES ('370682', '莱阳市', null, '370600', null);
INSERT INTO `sys_area` VALUES ('370683', '莱州市', null, '370600', null);
INSERT INTO `sys_area` VALUES ('370684', '蓬莱市', null, '370600', null);
INSERT INTO `sys_area` VALUES ('370685', '招远市', null, '370600', null);
INSERT INTO `sys_area` VALUES ('370686', '栖霞市', null, '370600', null);
INSERT INTO `sys_area` VALUES ('370687', '海阳市', null, '370600', null);
INSERT INTO `sys_area` VALUES ('370701', '市辖区', null, '370700', null);
INSERT INTO `sys_area` VALUES ('370702', '潍城区', null, '370700', null);
INSERT INTO `sys_area` VALUES ('370703', '寒亭区', null, '370700', null);
INSERT INTO `sys_area` VALUES ('370704', '坊子区', null, '370700', null);
INSERT INTO `sys_area` VALUES ('370705', '奎文区', null, '370700', null);
INSERT INTO `sys_area` VALUES ('370724', '临朐县', null, '370700', null);
INSERT INTO `sys_area` VALUES ('370725', '昌乐县', null, '370700', null);
INSERT INTO `sys_area` VALUES ('370781', '青州市', null, '370700', null);
INSERT INTO `sys_area` VALUES ('370782', '诸城市', null, '370700', null);
INSERT INTO `sys_area` VALUES ('370783', '寿光市', null, '370700', null);
INSERT INTO `sys_area` VALUES ('370784', '安丘市', null, '370700', null);
INSERT INTO `sys_area` VALUES ('370785', '高密市', null, '370700', null);
INSERT INTO `sys_area` VALUES ('370786', '昌邑市', null, '370700', null);
INSERT INTO `sys_area` VALUES ('370801', '市辖区', null, '370800', null);
INSERT INTO `sys_area` VALUES ('370802', '市中区', null, '370800', null);
INSERT INTO `sys_area` VALUES ('370811', '任城区', null, '370800', null);
INSERT INTO `sys_area` VALUES ('370826', '微山县', null, '370800', null);
INSERT INTO `sys_area` VALUES ('370827', '鱼台县', null, '370800', null);
INSERT INTO `sys_area` VALUES ('370828', '金乡县', null, '370800', null);
INSERT INTO `sys_area` VALUES ('370829', '嘉祥县', null, '370800', null);
INSERT INTO `sys_area` VALUES ('370830', '汶上县', null, '370800', null);
INSERT INTO `sys_area` VALUES ('370831', '泗水县', null, '370800', null);
INSERT INTO `sys_area` VALUES ('370832', '梁山县', null, '370800', null);
INSERT INTO `sys_area` VALUES ('370881', '曲阜市', null, '370800', null);
INSERT INTO `sys_area` VALUES ('370882', '兖州市', null, '370800', null);
INSERT INTO `sys_area` VALUES ('370883', '邹城市', null, '370800', null);
INSERT INTO `sys_area` VALUES ('370901', '市辖区', null, '370900', null);
INSERT INTO `sys_area` VALUES ('370902', '泰山区', null, '370900', null);
INSERT INTO `sys_area` VALUES ('370903', '岱岳区', null, '370900', null);
INSERT INTO `sys_area` VALUES ('370921', '宁阳县', null, '370900', null);
INSERT INTO `sys_area` VALUES ('370923', '东平县', null, '370900', null);
INSERT INTO `sys_area` VALUES ('370982', '新泰市', null, '370900', null);
INSERT INTO `sys_area` VALUES ('370983', '肥城市', null, '370900', null);
INSERT INTO `sys_area` VALUES ('371001', '市辖区', null, '371000', null);
INSERT INTO `sys_area` VALUES ('371002', '环翠区', null, '371000', null);
INSERT INTO `sys_area` VALUES ('371081', '文登市', null, '371000', null);
INSERT INTO `sys_area` VALUES ('371082', '荣成市', null, '371000', null);
INSERT INTO `sys_area` VALUES ('371083', '乳山市', null, '371000', null);
INSERT INTO `sys_area` VALUES ('371101', '市辖区', null, '371100', null);
INSERT INTO `sys_area` VALUES ('371102', '东港区', null, '371100', null);
INSERT INTO `sys_area` VALUES ('371103', '岚山区', null, '371100', null);
INSERT INTO `sys_area` VALUES ('371121', '五莲县', null, '371100', null);
INSERT INTO `sys_area` VALUES ('371122', '莒　县', null, '371100', null);
INSERT INTO `sys_area` VALUES ('371201', '市辖区', null, '371200', null);
INSERT INTO `sys_area` VALUES ('371202', '莱城区', null, '371200', null);
INSERT INTO `sys_area` VALUES ('371203', '钢城区', null, '371200', null);
INSERT INTO `sys_area` VALUES ('371301', '市辖区', null, '371300', null);
INSERT INTO `sys_area` VALUES ('371302', '兰山区', null, '371300', null);
INSERT INTO `sys_area` VALUES ('371311', '罗庄区', null, '371300', null);
INSERT INTO `sys_area` VALUES ('371312', '河东区', null, '371300', null);
INSERT INTO `sys_area` VALUES ('371321', '沂南县', null, '371300', null);
INSERT INTO `sys_area` VALUES ('371322', '郯城县', null, '371300', null);
INSERT INTO `sys_area` VALUES ('371323', '沂水县', null, '371300', null);
INSERT INTO `sys_area` VALUES ('371324', '苍山县', null, '371300', null);
INSERT INTO `sys_area` VALUES ('371325', '费　县', null, '371300', null);
INSERT INTO `sys_area` VALUES ('371326', '平邑县', null, '371300', null);
INSERT INTO `sys_area` VALUES ('371327', '莒南县', null, '371300', null);
INSERT INTO `sys_area` VALUES ('371328', '蒙阴县', null, '371300', null);
INSERT INTO `sys_area` VALUES ('371329', '临沭县', null, '371300', null);
INSERT INTO `sys_area` VALUES ('371401', '市辖区', null, '371400', null);
INSERT INTO `sys_area` VALUES ('371402', '德城区', null, '371400', null);
INSERT INTO `sys_area` VALUES ('371421', '陵　县', null, '371400', null);
INSERT INTO `sys_area` VALUES ('371422', '宁津县', null, '371400', null);
INSERT INTO `sys_area` VALUES ('371423', '庆云县', null, '371400', null);
INSERT INTO `sys_area` VALUES ('371424', '临邑县', null, '371400', null);
INSERT INTO `sys_area` VALUES ('371425', '齐河县', null, '371400', null);
INSERT INTO `sys_area` VALUES ('371426', '平原县', null, '371400', null);
INSERT INTO `sys_area` VALUES ('371427', '夏津县', null, '371400', null);
INSERT INTO `sys_area` VALUES ('371428', '武城县', null, '371400', null);
INSERT INTO `sys_area` VALUES ('371481', '乐陵市', null, '371400', null);
INSERT INTO `sys_area` VALUES ('371482', '禹城市', null, '371400', null);
INSERT INTO `sys_area` VALUES ('371501', '市辖区', null, '371500', null);
INSERT INTO `sys_area` VALUES ('371502', '东昌府区', null, '371500', null);
INSERT INTO `sys_area` VALUES ('371521', '阳谷县', null, '371500', null);
INSERT INTO `sys_area` VALUES ('371522', '莘　县', null, '371500', null);
INSERT INTO `sys_area` VALUES ('371523', '茌平县', null, '371500', null);
INSERT INTO `sys_area` VALUES ('371524', '东阿县', null, '371500', null);
INSERT INTO `sys_area` VALUES ('371525', '冠　县', null, '371500', null);
INSERT INTO `sys_area` VALUES ('371526', '高唐县', null, '371500', null);
INSERT INTO `sys_area` VALUES ('371581', '临清市', null, '371500', null);
INSERT INTO `sys_area` VALUES ('371601', '市辖区', null, '371600', null);
INSERT INTO `sys_area` VALUES ('371602', '滨城区', null, '371600', null);
INSERT INTO `sys_area` VALUES ('371621', '惠民县', null, '371600', null);
INSERT INTO `sys_area` VALUES ('371622', '阳信县', null, '371600', null);
INSERT INTO `sys_area` VALUES ('371623', '无棣县', null, '371600', null);
INSERT INTO `sys_area` VALUES ('371624', '沾化县', null, '371600', null);
INSERT INTO `sys_area` VALUES ('371625', '博兴县', null, '371600', null);
INSERT INTO `sys_area` VALUES ('371626', '邹平县', null, '371600', null);
INSERT INTO `sys_area` VALUES ('371701', '市辖区', null, '371700', null);
INSERT INTO `sys_area` VALUES ('371702', '牡丹区', null, '371700', null);
INSERT INTO `sys_area` VALUES ('371721', '曹　县', null, '371700', null);
INSERT INTO `sys_area` VALUES ('371722', '单　县', null, '371700', null);
INSERT INTO `sys_area` VALUES ('371723', '成武县', null, '371700', null);
INSERT INTO `sys_area` VALUES ('371724', '巨野县', null, '371700', null);
INSERT INTO `sys_area` VALUES ('371725', '郓城县', null, '371700', null);
INSERT INTO `sys_area` VALUES ('371726', '鄄城县', null, '371700', null);
INSERT INTO `sys_area` VALUES ('371727', '定陶县', null, '371700', null);
INSERT INTO `sys_area` VALUES ('371728', '东明县', null, '371700', null);
INSERT INTO `sys_area` VALUES ('410101', '市辖区', null, '410100', null);
INSERT INTO `sys_area` VALUES ('410102', '中原区', null, '410100', null);
INSERT INTO `sys_area` VALUES ('410103', '二七区', null, '410100', null);
INSERT INTO `sys_area` VALUES ('410104', '管城回族区', null, '410100', null);
INSERT INTO `sys_area` VALUES ('410105', '金水区', null, '410100', null);
INSERT INTO `sys_area` VALUES ('410106', '上街区', null, '410100', null);
INSERT INTO `sys_area` VALUES ('410108', '邙山区', null, '410100', null);
INSERT INTO `sys_area` VALUES ('410122', '中牟县', null, '410100', null);
INSERT INTO `sys_area` VALUES ('410181', '巩义市', null, '410100', null);
INSERT INTO `sys_area` VALUES ('410182', '荥阳市', null, '410100', null);
INSERT INTO `sys_area` VALUES ('410183', '新密市', null, '410100', null);
INSERT INTO `sys_area` VALUES ('410184', '新郑市', null, '410100', null);
INSERT INTO `sys_area` VALUES ('410185', '登封市', null, '410100', null);
INSERT INTO `sys_area` VALUES ('410201', '市辖区', null, '410200', null);
INSERT INTO `sys_area` VALUES ('410202', '龙亭区', null, '410200', null);
INSERT INTO `sys_area` VALUES ('410203', '顺河回族区', null, '410200', null);
INSERT INTO `sys_area` VALUES ('410204', '鼓楼区', null, '410200', null);
INSERT INTO `sys_area` VALUES ('410205', '南关区', null, '410200', null);
INSERT INTO `sys_area` VALUES ('410211', '郊　区', null, '410200', null);
INSERT INTO `sys_area` VALUES ('410221', '杞　县', null, '410200', null);
INSERT INTO `sys_area` VALUES ('410222', '通许县', null, '410200', null);
INSERT INTO `sys_area` VALUES ('410223', '尉氏县', null, '410200', null);
INSERT INTO `sys_area` VALUES ('410224', '开封县', null, '410200', null);
INSERT INTO `sys_area` VALUES ('410225', '兰考县', null, '410200', null);
INSERT INTO `sys_area` VALUES ('410301', '市辖区', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410302', '老城区', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410303', '西工区', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410304', '廛河回族区', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410305', '涧西区', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410306', '吉利区', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410307', '洛龙区', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410322', '孟津县', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410323', '新安县', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410324', '栾川县', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410325', '嵩　县', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410326', '汝阳县', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410327', '宜阳县', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410328', '洛宁县', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410329', '伊川县', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410381', '偃师市', null, '410300', null);
INSERT INTO `sys_area` VALUES ('410401', '市辖区', null, '410400', null);
INSERT INTO `sys_area` VALUES ('410402', '新华区', null, '410400', null);
INSERT INTO `sys_area` VALUES ('410403', '卫东区', null, '410400', null);
INSERT INTO `sys_area` VALUES ('410404', '石龙区', null, '410400', null);
INSERT INTO `sys_area` VALUES ('410411', '湛河区', null, '410400', null);
INSERT INTO `sys_area` VALUES ('410421', '宝丰县', null, '410400', null);
INSERT INTO `sys_area` VALUES ('410422', '叶　县', null, '410400', null);
INSERT INTO `sys_area` VALUES ('410423', '鲁山县', null, '410400', null);
INSERT INTO `sys_area` VALUES ('410425', '郏　县', null, '410400', null);
INSERT INTO `sys_area` VALUES ('410481', '舞钢市', null, '410400', null);
INSERT INTO `sys_area` VALUES ('410482', '汝州市', null, '410400', null);
INSERT INTO `sys_area` VALUES ('410501', '市辖区', null, '410500', null);
INSERT INTO `sys_area` VALUES ('410502', '文峰区', null, '410500', null);
INSERT INTO `sys_area` VALUES ('410503', '北关区', null, '410500', null);
INSERT INTO `sys_area` VALUES ('410505', '殷都区', null, '410500', null);
INSERT INTO `sys_area` VALUES ('410506', '龙安区', null, '410500', null);
INSERT INTO `sys_area` VALUES ('410522', '安阳县', null, '410500', null);
INSERT INTO `sys_area` VALUES ('410523', '汤阴县', null, '410500', null);
INSERT INTO `sys_area` VALUES ('410526', '滑　县', null, '410500', null);
INSERT INTO `sys_area` VALUES ('410527', '内黄县', null, '410500', null);
INSERT INTO `sys_area` VALUES ('410581', '林州市', null, '410500', null);
INSERT INTO `sys_area` VALUES ('410601', '市辖区', null, '410600', null);
INSERT INTO `sys_area` VALUES ('410602', '鹤山区', null, '410600', null);
INSERT INTO `sys_area` VALUES ('410603', '山城区', null, '410600', null);
INSERT INTO `sys_area` VALUES ('410611', '淇滨区', null, '410600', null);
INSERT INTO `sys_area` VALUES ('410621', '浚　县', null, '410600', null);
INSERT INTO `sys_area` VALUES ('410622', '淇　县', null, '410600', null);
INSERT INTO `sys_area` VALUES ('410701', '市辖区', null, '410700', null);
INSERT INTO `sys_area` VALUES ('410702', '红旗区', null, '410700', null);
INSERT INTO `sys_area` VALUES ('410703', '卫滨区', null, '410700', null);
INSERT INTO `sys_area` VALUES ('410704', '凤泉区', null, '410700', null);
INSERT INTO `sys_area` VALUES ('410711', '牧野区', null, '410700', null);
INSERT INTO `sys_area` VALUES ('410721', '新乡县', null, '410700', null);
INSERT INTO `sys_area` VALUES ('410724', '获嘉县', null, '410700', null);
INSERT INTO `sys_area` VALUES ('410725', '原阳县', null, '410700', null);
INSERT INTO `sys_area` VALUES ('410726', '延津县', null, '410700', null);
INSERT INTO `sys_area` VALUES ('410727', '封丘县', null, '410700', null);
INSERT INTO `sys_area` VALUES ('410728', '长垣县', null, '410700', null);
INSERT INTO `sys_area` VALUES ('410781', '卫辉市', null, '410700', null);
INSERT INTO `sys_area` VALUES ('410782', '辉县市', null, '410700', null);
INSERT INTO `sys_area` VALUES ('410801', '市辖区', null, '410800', null);
INSERT INTO `sys_area` VALUES ('410802', '解放区', null, '410800', null);
INSERT INTO `sys_area` VALUES ('410803', '中站区', null, '410800', null);
INSERT INTO `sys_area` VALUES ('410804', '马村区', null, '410800', null);
INSERT INTO `sys_area` VALUES ('410811', '山阳区', null, '410800', null);
INSERT INTO `sys_area` VALUES ('410821', '修武县', null, '410800', null);
INSERT INTO `sys_area` VALUES ('410822', '博爱县', null, '410800', null);
INSERT INTO `sys_area` VALUES ('410823', '武陟县', null, '410800', null);
INSERT INTO `sys_area` VALUES ('410825', '温　县', null, '410800', null);
INSERT INTO `sys_area` VALUES ('410881', '济源市', null, '410800', null);
INSERT INTO `sys_area` VALUES ('410882', '沁阳市', null, '410800', null);
INSERT INTO `sys_area` VALUES ('410883', '孟州市', null, '410800', null);
INSERT INTO `sys_area` VALUES ('410901', '市辖区', null, '410900', null);
INSERT INTO `sys_area` VALUES ('410902', '华龙区', null, '410900', null);
INSERT INTO `sys_area` VALUES ('410922', '清丰县', null, '410900', null);
INSERT INTO `sys_area` VALUES ('410923', '南乐县', null, '410900', null);
INSERT INTO `sys_area` VALUES ('410926', '范　县', null, '410900', null);
INSERT INTO `sys_area` VALUES ('410927', '台前县', null, '410900', null);
INSERT INTO `sys_area` VALUES ('410928', '濮阳县', null, '410900', null);
INSERT INTO `sys_area` VALUES ('411001', '市辖区', null, '411000', null);
INSERT INTO `sys_area` VALUES ('411002', '魏都区', null, '411000', null);
INSERT INTO `sys_area` VALUES ('411023', '许昌县', null, '411000', null);
INSERT INTO `sys_area` VALUES ('411024', '鄢陵县', null, '411000', null);
INSERT INTO `sys_area` VALUES ('411025', '襄城县', null, '411000', null);
INSERT INTO `sys_area` VALUES ('411081', '禹州市', null, '411000', null);
INSERT INTO `sys_area` VALUES ('411082', '长葛市', null, '411000', null);
INSERT INTO `sys_area` VALUES ('411101', '市辖区', null, '411100', null);
INSERT INTO `sys_area` VALUES ('411102', '源汇区', null, '411100', null);
INSERT INTO `sys_area` VALUES ('411103', '郾城区', null, '411100', null);
INSERT INTO `sys_area` VALUES ('411104', '召陵区', null, '411100', null);
INSERT INTO `sys_area` VALUES ('411121', '舞阳县', null, '411100', null);
INSERT INTO `sys_area` VALUES ('411122', '临颍县', null, '411100', null);
INSERT INTO `sys_area` VALUES ('411201', '市辖区', null, '411200', null);
INSERT INTO `sys_area` VALUES ('411202', '湖滨区', null, '411200', null);
INSERT INTO `sys_area` VALUES ('411221', '渑池县', null, '411200', null);
INSERT INTO `sys_area` VALUES ('411222', '陕　县', null, '411200', null);
INSERT INTO `sys_area` VALUES ('411224', '卢氏县', null, '411200', null);
INSERT INTO `sys_area` VALUES ('411281', '义马市', null, '411200', null);
INSERT INTO `sys_area` VALUES ('411282', '灵宝市', null, '411200', null);
INSERT INTO `sys_area` VALUES ('411301', '市辖区', null, '411300', null);
INSERT INTO `sys_area` VALUES ('411302', '宛城区', null, '411300', null);
INSERT INTO `sys_area` VALUES ('411303', '卧龙区', null, '411300', null);
INSERT INTO `sys_area` VALUES ('411321', '南召县', null, '411300', null);
INSERT INTO `sys_area` VALUES ('411322', '方城县', null, '411300', null);
INSERT INTO `sys_area` VALUES ('411323', '西峡县', null, '411300', null);
INSERT INTO `sys_area` VALUES ('411324', '镇平县', null, '411300', null);
INSERT INTO `sys_area` VALUES ('411325', '内乡县', null, '411300', null);
INSERT INTO `sys_area` VALUES ('411326', '淅川县', null, '411300', null);
INSERT INTO `sys_area` VALUES ('411327', '社旗县', null, '411300', null);
INSERT INTO `sys_area` VALUES ('411328', '唐河县', null, '411300', null);
INSERT INTO `sys_area` VALUES ('411329', '新野县', null, '411300', null);
INSERT INTO `sys_area` VALUES ('411330', '桐柏县', null, '411300', null);
INSERT INTO `sys_area` VALUES ('411381', '邓州市', null, '411300', null);
INSERT INTO `sys_area` VALUES ('411401', '市辖区', null, '411400', null);
INSERT INTO `sys_area` VALUES ('411402', '梁园区', null, '411400', null);
INSERT INTO `sys_area` VALUES ('411403', '睢阳区', null, '411400', null);
INSERT INTO `sys_area` VALUES ('411421', '民权县', null, '411400', null);
INSERT INTO `sys_area` VALUES ('411422', '睢　县', null, '411400', null);
INSERT INTO `sys_area` VALUES ('411423', '宁陵县', null, '411400', null);
INSERT INTO `sys_area` VALUES ('411424', '柘城县', null, '411400', null);
INSERT INTO `sys_area` VALUES ('411425', '虞城县', null, '411400', null);
INSERT INTO `sys_area` VALUES ('411426', '夏邑县', null, '411400', null);
INSERT INTO `sys_area` VALUES ('411481', '永城市', null, '411400', null);
INSERT INTO `sys_area` VALUES ('411501', '市辖区', null, '411500', null);
INSERT INTO `sys_area` VALUES ('411502', '师河区', null, '411500', null);
INSERT INTO `sys_area` VALUES ('411503', '平桥区', null, '411500', null);
INSERT INTO `sys_area` VALUES ('411521', '罗山县', null, '411500', null);
INSERT INTO `sys_area` VALUES ('411522', '光山县', null, '411500', null);
INSERT INTO `sys_area` VALUES ('411523', '新　县', null, '411500', null);
INSERT INTO `sys_area` VALUES ('411524', '商城县', null, '411500', null);
INSERT INTO `sys_area` VALUES ('411525', '固始县', null, '411500', null);
INSERT INTO `sys_area` VALUES ('411526', '潢川县', null, '411500', null);
INSERT INTO `sys_area` VALUES ('411527', '淮滨县', null, '411500', null);
INSERT INTO `sys_area` VALUES ('411528', '息　县', null, '411500', null);
INSERT INTO `sys_area` VALUES ('411601', '市辖区', null, '411600', null);
INSERT INTO `sys_area` VALUES ('411602', '川汇区', null, '411600', null);
INSERT INTO `sys_area` VALUES ('411621', '扶沟县', null, '411600', null);
INSERT INTO `sys_area` VALUES ('411622', '西华县', null, '411600', null);
INSERT INTO `sys_area` VALUES ('411623', '商水县', null, '411600', null);
INSERT INTO `sys_area` VALUES ('411624', '沈丘县', null, '411600', null);
INSERT INTO `sys_area` VALUES ('411625', '郸城县', null, '411600', null);
INSERT INTO `sys_area` VALUES ('411626', '淮阳县', null, '411600', null);
INSERT INTO `sys_area` VALUES ('411627', '太康县', null, '411600', null);
INSERT INTO `sys_area` VALUES ('411628', '鹿邑县', null, '411600', null);
INSERT INTO `sys_area` VALUES ('411681', '项城市', null, '411600', null);
INSERT INTO `sys_area` VALUES ('411701', '市辖区', null, '411700', null);
INSERT INTO `sys_area` VALUES ('411702', '驿城区', null, '411700', null);
INSERT INTO `sys_area` VALUES ('411721', '西平县', null, '411700', null);
INSERT INTO `sys_area` VALUES ('411722', '上蔡县', null, '411700', null);
INSERT INTO `sys_area` VALUES ('411723', '平舆县', null, '411700', null);
INSERT INTO `sys_area` VALUES ('411724', '正阳县', null, '411700', null);
INSERT INTO `sys_area` VALUES ('411725', '确山县', null, '411700', null);
INSERT INTO `sys_area` VALUES ('411726', '泌阳县', null, '411700', null);
INSERT INTO `sys_area` VALUES ('411727', '汝南县', null, '411700', null);
INSERT INTO `sys_area` VALUES ('411728', '遂平县', null, '411700', null);
INSERT INTO `sys_area` VALUES ('411729', '新蔡县', null, '411700', null);
INSERT INTO `sys_area` VALUES ('420101', '市辖区', null, '420100', null);
INSERT INTO `sys_area` VALUES ('420102', '江岸区', null, '420100', null);
INSERT INTO `sys_area` VALUES ('420103', '江汉区', null, '420100', null);
INSERT INTO `sys_area` VALUES ('420104', '乔口区', null, '420100', null);
INSERT INTO `sys_area` VALUES ('420105', '汉阳区', null, '420100', null);
INSERT INTO `sys_area` VALUES ('420106', '武昌区', null, '420100', null);
INSERT INTO `sys_area` VALUES ('420107', '青山区', null, '420100', null);
INSERT INTO `sys_area` VALUES ('420111', '洪山区', null, '420100', null);
INSERT INTO `sys_area` VALUES ('420112', '东西湖区', null, '420100', null);
INSERT INTO `sys_area` VALUES ('420113', '汉南区', null, '420100', null);
INSERT INTO `sys_area` VALUES ('420114', '蔡甸区', null, '420100', null);
INSERT INTO `sys_area` VALUES ('420115', '江夏区', null, '420100', null);
INSERT INTO `sys_area` VALUES ('420116', '黄陂区', null, '420100', null);
INSERT INTO `sys_area` VALUES ('420117', '新洲区', null, '420100', null);
INSERT INTO `sys_area` VALUES ('420201', '市辖区', null, '420200', null);
INSERT INTO `sys_area` VALUES ('420202', '黄石港区', null, '420200', null);
INSERT INTO `sys_area` VALUES ('420203', '西塞山区', null, '420200', null);
INSERT INTO `sys_area` VALUES ('420204', '下陆区', null, '420200', null);
INSERT INTO `sys_area` VALUES ('420205', '铁山区', null, '420200', null);
INSERT INTO `sys_area` VALUES ('420222', '阳新县', null, '420200', null);
INSERT INTO `sys_area` VALUES ('420281', '大冶市', null, '420200', null);
INSERT INTO `sys_area` VALUES ('420301', '市辖区', null, '420300', null);
INSERT INTO `sys_area` VALUES ('420302', '茅箭区', null, '420300', null);
INSERT INTO `sys_area` VALUES ('420303', '张湾区', null, '420300', null);
INSERT INTO `sys_area` VALUES ('420321', '郧　县', null, '420300', null);
INSERT INTO `sys_area` VALUES ('420322', '郧西县', null, '420300', null);
INSERT INTO `sys_area` VALUES ('420323', '竹山县', null, '420300', null);
INSERT INTO `sys_area` VALUES ('420324', '竹溪县', null, '420300', null);
INSERT INTO `sys_area` VALUES ('420325', '房　县', null, '420300', null);
INSERT INTO `sys_area` VALUES ('420381', '丹江口市', null, '420300', null);
INSERT INTO `sys_area` VALUES ('420501', '市辖区', null, '420500', null);
INSERT INTO `sys_area` VALUES ('420502', '西陵区', null, '420500', null);
INSERT INTO `sys_area` VALUES ('420503', '伍家岗区', null, '420500', null);
INSERT INTO `sys_area` VALUES ('420504', '点军区', null, '420500', null);
INSERT INTO `sys_area` VALUES ('420505', '猇亭区', null, '420500', null);
INSERT INTO `sys_area` VALUES ('420506', '夷陵区', null, '420500', null);
INSERT INTO `sys_area` VALUES ('420525', '远安县', null, '420500', null);
INSERT INTO `sys_area` VALUES ('420526', '兴山县', null, '420500', null);
INSERT INTO `sys_area` VALUES ('420527', '秭归县', null, '420500', null);
INSERT INTO `sys_area` VALUES ('420528', '长阳土家族自治县', null, '420500', null);
INSERT INTO `sys_area` VALUES ('420529', '五峰土家族自治县', null, '420500', null);
INSERT INTO `sys_area` VALUES ('420581', '宜都市', null, '420500', null);
INSERT INTO `sys_area` VALUES ('420582', '当阳市', null, '420500', null);
INSERT INTO `sys_area` VALUES ('420583', '枝江市', null, '420500', null);
INSERT INTO `sys_area` VALUES ('420601', '市辖区', null, '420600', null);
INSERT INTO `sys_area` VALUES ('420602', '襄城区', null, '420600', null);
INSERT INTO `sys_area` VALUES ('420606', '樊城区', null, '420600', null);
INSERT INTO `sys_area` VALUES ('420607', '襄阳区', null, '420600', null);
INSERT INTO `sys_area` VALUES ('420624', '南漳县', null, '420600', null);
INSERT INTO `sys_area` VALUES ('420625', '谷城县', null, '420600', null);
INSERT INTO `sys_area` VALUES ('420626', '保康县', null, '420600', null);
INSERT INTO `sys_area` VALUES ('420682', '老河口市', null, '420600', null);
INSERT INTO `sys_area` VALUES ('420683', '枣阳市', null, '420600', null);
INSERT INTO `sys_area` VALUES ('420684', '宜城市', null, '420600', null);
INSERT INTO `sys_area` VALUES ('420701', '市辖区', null, '420700', null);
INSERT INTO `sys_area` VALUES ('420702', '梁子湖区', null, '420700', null);
INSERT INTO `sys_area` VALUES ('420703', '华容区', null, '420700', null);
INSERT INTO `sys_area` VALUES ('420704', '鄂城区', null, '420700', null);
INSERT INTO `sys_area` VALUES ('420801', '市辖区', null, '420800', null);
INSERT INTO `sys_area` VALUES ('420802', '东宝区', null, '420800', null);
INSERT INTO `sys_area` VALUES ('420804', '掇刀区', null, '420800', null);
INSERT INTO `sys_area` VALUES ('420821', '京山县', null, '420800', null);
INSERT INTO `sys_area` VALUES ('420822', '沙洋县', null, '420800', null);
INSERT INTO `sys_area` VALUES ('420881', '钟祥市', null, '420800', null);
INSERT INTO `sys_area` VALUES ('420901', '市辖区', null, '420900', null);
INSERT INTO `sys_area` VALUES ('420902', '孝南区', null, '420900', null);
INSERT INTO `sys_area` VALUES ('420921', '孝昌县', null, '420900', null);
INSERT INTO `sys_area` VALUES ('420922', '大悟县', null, '420900', null);
INSERT INTO `sys_area` VALUES ('420923', '云梦县', null, '420900', null);
INSERT INTO `sys_area` VALUES ('420981', '应城市', null, '420900', null);
INSERT INTO `sys_area` VALUES ('420982', '安陆市', null, '420900', null);
INSERT INTO `sys_area` VALUES ('420984', '汉川市', null, '420900', null);
INSERT INTO `sys_area` VALUES ('421001', '市辖区', null, '421000', null);
INSERT INTO `sys_area` VALUES ('421002', '沙市区', null, '421000', null);
INSERT INTO `sys_area` VALUES ('421003', '荆州区', null, '421000', null);
INSERT INTO `sys_area` VALUES ('421022', '公安县', null, '421000', null);
INSERT INTO `sys_area` VALUES ('421023', '监利县', null, '421000', null);
INSERT INTO `sys_area` VALUES ('421024', '江陵县', null, '421000', null);
INSERT INTO `sys_area` VALUES ('421081', '石首市', null, '421000', null);
INSERT INTO `sys_area` VALUES ('421083', '洪湖市', null, '421000', null);
INSERT INTO `sys_area` VALUES ('421087', '松滋市', null, '421000', null);
INSERT INTO `sys_area` VALUES ('421101', '市辖区', null, '421100', null);
INSERT INTO `sys_area` VALUES ('421102', '黄州区', null, '421100', null);
INSERT INTO `sys_area` VALUES ('421121', '团风县', null, '421100', null);
INSERT INTO `sys_area` VALUES ('421122', '红安县', null, '421100', null);
INSERT INTO `sys_area` VALUES ('421123', '罗田县', null, '421100', null);
INSERT INTO `sys_area` VALUES ('421124', '英山县', null, '421100', null);
INSERT INTO `sys_area` VALUES ('421125', '浠水县', null, '421100', null);
INSERT INTO `sys_area` VALUES ('421126', '蕲春县', null, '421100', null);
INSERT INTO `sys_area` VALUES ('421127', '黄梅县', null, '421100', null);
INSERT INTO `sys_area` VALUES ('421181', '麻城市', null, '421100', null);
INSERT INTO `sys_area` VALUES ('421182', '武穴市', null, '421100', null);
INSERT INTO `sys_area` VALUES ('421201', '市辖区', null, '421200', null);
INSERT INTO `sys_area` VALUES ('421202', '咸安区', null, '421200', null);
INSERT INTO `sys_area` VALUES ('421221', '嘉鱼县', null, '421200', null);
INSERT INTO `sys_area` VALUES ('421222', '通城县', null, '421200', null);
INSERT INTO `sys_area` VALUES ('421223', '崇阳县', null, '421200', null);
INSERT INTO `sys_area` VALUES ('421224', '通山县', null, '421200', null);
INSERT INTO `sys_area` VALUES ('421281', '赤壁市', null, '421200', null);
INSERT INTO `sys_area` VALUES ('421301', '市辖区', null, '421300', null);
INSERT INTO `sys_area` VALUES ('421302', '曾都区', null, '421300', null);
INSERT INTO `sys_area` VALUES ('421381', '广水市', null, '421300', null);
INSERT INTO `sys_area` VALUES ('422801', '恩施市', null, '422800', null);
INSERT INTO `sys_area` VALUES ('422802', '利川市', null, '422800', null);
INSERT INTO `sys_area` VALUES ('422822', '建始县', null, '422800', null);
INSERT INTO `sys_area` VALUES ('422823', '巴东县', null, '422800', null);
INSERT INTO `sys_area` VALUES ('422825', '宣恩县', null, '422800', null);
INSERT INTO `sys_area` VALUES ('422826', '咸丰县', null, '422800', null);
INSERT INTO `sys_area` VALUES ('422827', '来凤县', null, '422800', null);
INSERT INTO `sys_area` VALUES ('422828', '鹤峰县', null, '422800', null);
INSERT INTO `sys_area` VALUES ('429004', '仙桃市', null, '429000', null);
INSERT INTO `sys_area` VALUES ('429005', '潜江市', null, '429000', null);
INSERT INTO `sys_area` VALUES ('429006', '天门市', null, '429000', null);
INSERT INTO `sys_area` VALUES ('429021', '神农架林区', null, '429000', null);
INSERT INTO `sys_area` VALUES ('430101', '市辖区', null, '430100', null);
INSERT INTO `sys_area` VALUES ('430102', '芙蓉区', null, '430100', null);
INSERT INTO `sys_area` VALUES ('430103', '天心区', null, '430100', null);
INSERT INTO `sys_area` VALUES ('430104', '岳麓区', null, '430100', null);
INSERT INTO `sys_area` VALUES ('430105', '开福区', null, '430100', null);
INSERT INTO `sys_area` VALUES ('430111', '雨花区', null, '430100', null);
INSERT INTO `sys_area` VALUES ('430121', '长沙县', null, '430100', null);
INSERT INTO `sys_area` VALUES ('430122', '望城县', null, '430100', null);
INSERT INTO `sys_area` VALUES ('430124', '宁乡县', null, '430100', null);
INSERT INTO `sys_area` VALUES ('430181', '浏阳市', null, '430100', null);
INSERT INTO `sys_area` VALUES ('430201', '市辖区', null, '430200', null);
INSERT INTO `sys_area` VALUES ('430202', '荷塘区', null, '430200', null);
INSERT INTO `sys_area` VALUES ('430203', '芦淞区', null, '430200', null);
INSERT INTO `sys_area` VALUES ('430204', '石峰区', null, '430200', null);
INSERT INTO `sys_area` VALUES ('430211', '天元区', null, '430200', null);
INSERT INTO `sys_area` VALUES ('430221', '株洲县', null, '430200', null);
INSERT INTO `sys_area` VALUES ('430223', '攸　县', null, '430200', null);
INSERT INTO `sys_area` VALUES ('430224', '茶陵县', null, '430200', null);
INSERT INTO `sys_area` VALUES ('430225', '炎陵县', null, '430200', null);
INSERT INTO `sys_area` VALUES ('430281', '醴陵市', null, '430200', null);
INSERT INTO `sys_area` VALUES ('430301', '市辖区', null, '430300', null);
INSERT INTO `sys_area` VALUES ('430302', '雨湖区', null, '430300', null);
INSERT INTO `sys_area` VALUES ('430304', '岳塘区', null, '430300', null);
INSERT INTO `sys_area` VALUES ('430321', '湘潭县', null, '430300', null);
INSERT INTO `sys_area` VALUES ('430381', '湘乡市', null, '430300', null);
INSERT INTO `sys_area` VALUES ('430382', '韶山市', null, '430300', null);
INSERT INTO `sys_area` VALUES ('430401', '市辖区', null, '430400', null);
INSERT INTO `sys_area` VALUES ('430405', '珠晖区', null, '430400', null);
INSERT INTO `sys_area` VALUES ('430406', '雁峰区', null, '430400', null);
INSERT INTO `sys_area` VALUES ('430407', '石鼓区', null, '430400', null);
INSERT INTO `sys_area` VALUES ('430408', '蒸湘区', null, '430400', null);
INSERT INTO `sys_area` VALUES ('430412', '南岳区', null, '430400', null);
INSERT INTO `sys_area` VALUES ('430421', '衡阳县', null, '430400', null);
INSERT INTO `sys_area` VALUES ('430422', '衡南县', null, '430400', null);
INSERT INTO `sys_area` VALUES ('430423', '衡山县', null, '430400', null);
INSERT INTO `sys_area` VALUES ('430424', '衡东县', null, '430400', null);
INSERT INTO `sys_area` VALUES ('430426', '祁东县', null, '430400', null);
INSERT INTO `sys_area` VALUES ('430481', '耒阳市', null, '430400', null);
INSERT INTO `sys_area` VALUES ('430482', '常宁市', null, '430400', null);
INSERT INTO `sys_area` VALUES ('430501', '市辖区', null, '430500', null);
INSERT INTO `sys_area` VALUES ('430502', '双清区', null, '430500', null);
INSERT INTO `sys_area` VALUES ('430503', '大祥区', null, '430500', null);
INSERT INTO `sys_area` VALUES ('430511', '北塔区', null, '430500', null);
INSERT INTO `sys_area` VALUES ('430521', '邵东县', null, '430500', null);
INSERT INTO `sys_area` VALUES ('430522', '新邵县', null, '430500', null);
INSERT INTO `sys_area` VALUES ('430523', '邵阳县', null, '430500', null);
INSERT INTO `sys_area` VALUES ('430524', '隆回县', null, '430500', null);
INSERT INTO `sys_area` VALUES ('430525', '洞口县', null, '430500', null);
INSERT INTO `sys_area` VALUES ('430527', '绥宁县', null, '430500', null);
INSERT INTO `sys_area` VALUES ('430528', '新宁县', null, '430500', null);
INSERT INTO `sys_area` VALUES ('430529', '城步苗族自治县', null, '430500', null);
INSERT INTO `sys_area` VALUES ('430581', '武冈市', null, '430500', null);
INSERT INTO `sys_area` VALUES ('430601', '市辖区', null, '430600', null);
INSERT INTO `sys_area` VALUES ('430602', '岳阳楼区', null, '430600', null);
INSERT INTO `sys_area` VALUES ('430603', '云溪区', null, '430600', null);
INSERT INTO `sys_area` VALUES ('430611', '君山区', null, '430600', null);
INSERT INTO `sys_area` VALUES ('430621', '岳阳县', null, '430600', null);
INSERT INTO `sys_area` VALUES ('430623', '华容县', null, '430600', null);
INSERT INTO `sys_area` VALUES ('430624', '湘阴县', null, '430600', null);
INSERT INTO `sys_area` VALUES ('430626', '平江县', null, '430600', null);
INSERT INTO `sys_area` VALUES ('430681', '汨罗市', null, '430600', null);
INSERT INTO `sys_area` VALUES ('430682', '临湘市', null, '430600', null);
INSERT INTO `sys_area` VALUES ('430701', '市辖区', null, '430700', null);
INSERT INTO `sys_area` VALUES ('430702', '武陵区', null, '430700', null);
INSERT INTO `sys_area` VALUES ('430703', '鼎城区', null, '430700', null);
INSERT INTO `sys_area` VALUES ('430721', '安乡县', null, '430700', null);
INSERT INTO `sys_area` VALUES ('430722', '汉寿县', null, '430700', null);
INSERT INTO `sys_area` VALUES ('430723', '澧　县', null, '430700', null);
INSERT INTO `sys_area` VALUES ('430724', '临澧县', null, '430700', null);
INSERT INTO `sys_area` VALUES ('430725', '桃源县', null, '430700', null);
INSERT INTO `sys_area` VALUES ('430726', '石门县', null, '430700', null);
INSERT INTO `sys_area` VALUES ('430781', '津市市', null, '430700', null);
INSERT INTO `sys_area` VALUES ('430801', '市辖区', null, '430800', null);
INSERT INTO `sys_area` VALUES ('430802', '永定区', null, '430800', null);
INSERT INTO `sys_area` VALUES ('430811', '武陵源区', null, '430800', null);
INSERT INTO `sys_area` VALUES ('430821', '慈利县', null, '430800', null);
INSERT INTO `sys_area` VALUES ('430822', '桑植县', null, '430800', null);
INSERT INTO `sys_area` VALUES ('430901', '市辖区', null, '430900', null);
INSERT INTO `sys_area` VALUES ('430902', '资阳区', null, '430900', null);
INSERT INTO `sys_area` VALUES ('430903', '赫山区', null, '430900', null);
INSERT INTO `sys_area` VALUES ('430921', '南　县', null, '430900', null);
INSERT INTO `sys_area` VALUES ('430922', '桃江县', null, '430900', null);
INSERT INTO `sys_area` VALUES ('430923', '安化县', null, '430900', null);
INSERT INTO `sys_area` VALUES ('430981', '沅江市', null, '430900', null);
INSERT INTO `sys_area` VALUES ('431001', '市辖区', null, '431000', null);
INSERT INTO `sys_area` VALUES ('431002', '北湖区', null, '431000', null);
INSERT INTO `sys_area` VALUES ('431003', '苏仙区', null, '431000', null);
INSERT INTO `sys_area` VALUES ('431021', '桂阳县', null, '431000', null);
INSERT INTO `sys_area` VALUES ('431022', '宜章县', null, '431000', null);
INSERT INTO `sys_area` VALUES ('431023', '永兴县', null, '431000', null);
INSERT INTO `sys_area` VALUES ('431024', '嘉禾县', null, '431000', null);
INSERT INTO `sys_area` VALUES ('431025', '临武县', null, '431000', null);
INSERT INTO `sys_area` VALUES ('431026', '汝城县', null, '431000', null);
INSERT INTO `sys_area` VALUES ('431027', '桂东县', null, '431000', null);
INSERT INTO `sys_area` VALUES ('431028', '安仁县', null, '431000', null);
INSERT INTO `sys_area` VALUES ('431081', '资兴市', null, '431000', null);
INSERT INTO `sys_area` VALUES ('431101', '市辖区', null, '431100', null);
INSERT INTO `sys_area` VALUES ('431102', '芝山区', null, '431100', null);
INSERT INTO `sys_area` VALUES ('431103', '冷水滩区', null, '431100', null);
INSERT INTO `sys_area` VALUES ('431121', '祁阳县', null, '431100', null);
INSERT INTO `sys_area` VALUES ('431122', '东安县', null, '431100', null);
INSERT INTO `sys_area` VALUES ('431123', '双牌县', null, '431100', null);
INSERT INTO `sys_area` VALUES ('431124', '道　县', null, '431100', null);
INSERT INTO `sys_area` VALUES ('431125', '江永县', null, '431100', null);
INSERT INTO `sys_area` VALUES ('431126', '宁远县', null, '431100', null);
INSERT INTO `sys_area` VALUES ('431127', '蓝山县', null, '431100', null);
INSERT INTO `sys_area` VALUES ('431128', '新田县', null, '431100', null);
INSERT INTO `sys_area` VALUES ('431129', '江华瑶族自治县', null, '431100', null);
INSERT INTO `sys_area` VALUES ('431201', '市辖区', null, '431200', null);
INSERT INTO `sys_area` VALUES ('431202', '鹤城区', null, '431200', null);
INSERT INTO `sys_area` VALUES ('431221', '中方县', null, '431200', null);
INSERT INTO `sys_area` VALUES ('431222', '沅陵县', null, '431200', null);
INSERT INTO `sys_area` VALUES ('431223', '辰溪县', null, '431200', null);
INSERT INTO `sys_area` VALUES ('431224', '溆浦县', null, '431200', null);
INSERT INTO `sys_area` VALUES ('431225', '会同县', null, '431200', null);
INSERT INTO `sys_area` VALUES ('431226', '麻阳苗族自治县', null, '431200', null);
INSERT INTO `sys_area` VALUES ('431227', '新晃侗族自治县', null, '431200', null);
INSERT INTO `sys_area` VALUES ('431228', '芷江侗族自治县', null, '431200', null);
INSERT INTO `sys_area` VALUES ('431229', '靖州苗族侗族自治县', null, '431200', null);
INSERT INTO `sys_area` VALUES ('431230', '通道侗族自治县', null, '431200', null);
INSERT INTO `sys_area` VALUES ('431281', '洪江市', null, '431200', null);
INSERT INTO `sys_area` VALUES ('431301', '市辖区', null, '431300', null);
INSERT INTO `sys_area` VALUES ('431302', '娄星区', null, '431300', null);
INSERT INTO `sys_area` VALUES ('431321', '双峰县', null, '431300', null);
INSERT INTO `sys_area` VALUES ('431322', '新化县', null, '431300', null);
INSERT INTO `sys_area` VALUES ('431381', '冷水江市', null, '431300', null);
INSERT INTO `sys_area` VALUES ('431382', '涟源市', null, '431300', null);
INSERT INTO `sys_area` VALUES ('433101', '吉首市', null, '433100', null);
INSERT INTO `sys_area` VALUES ('433122', '泸溪县', null, '433100', null);
INSERT INTO `sys_area` VALUES ('433123', '凤凰县', null, '433100', null);
INSERT INTO `sys_area` VALUES ('433124', '花垣县', null, '433100', null);
INSERT INTO `sys_area` VALUES ('433125', '保靖县', null, '433100', null);
INSERT INTO `sys_area` VALUES ('433126', '古丈县', null, '433100', null);
INSERT INTO `sys_area` VALUES ('433127', '永顺县', null, '433100', null);
INSERT INTO `sys_area` VALUES ('433130', '龙山县', null, '433100', null);
INSERT INTO `sys_area` VALUES ('440101', '市辖区', null, '440100', null);
INSERT INTO `sys_area` VALUES ('440102', '东山区', null, '440100', null);
INSERT INTO `sys_area` VALUES ('440103', '荔湾区', null, '440100', null);
INSERT INTO `sys_area` VALUES ('440104', '越秀区', null, '440100', null);
INSERT INTO `sys_area` VALUES ('440105', '海珠区', null, '440100', null);
INSERT INTO `sys_area` VALUES ('440106', '天河区', null, '440100', null);
INSERT INTO `sys_area` VALUES ('440107', '芳村区', null, '440100', null);
INSERT INTO `sys_area` VALUES ('440111', '白云区', null, '440100', null);
INSERT INTO `sys_area` VALUES ('440112', '黄埔区', null, '440100', null);
INSERT INTO `sys_area` VALUES ('440113', '番禺区', null, '440100', null);
INSERT INTO `sys_area` VALUES ('440114', '花都区', null, '440100', null);
INSERT INTO `sys_area` VALUES ('440183', '增城市', null, '440100', null);
INSERT INTO `sys_area` VALUES ('440184', '从化市', null, '440100', null);
INSERT INTO `sys_area` VALUES ('440201', '市辖区', null, '440200', null);
INSERT INTO `sys_area` VALUES ('440203', '武江区', null, '440200', null);
INSERT INTO `sys_area` VALUES ('440204', '浈江区', null, '440200', null);
INSERT INTO `sys_area` VALUES ('440205', '曲江区', null, '440200', null);
INSERT INTO `sys_area` VALUES ('440222', '始兴县', null, '440200', null);
INSERT INTO `sys_area` VALUES ('440224', '仁化县', null, '440200', null);
INSERT INTO `sys_area` VALUES ('440229', '翁源县', null, '440200', null);
INSERT INTO `sys_area` VALUES ('440232', '乳源瑶族自治县', null, '440200', null);
INSERT INTO `sys_area` VALUES ('440233', '新丰县', null, '440200', null);
INSERT INTO `sys_area` VALUES ('440281', '乐昌市', null, '440200', null);
INSERT INTO `sys_area` VALUES ('440282', '南雄市', null, '440200', null);
INSERT INTO `sys_area` VALUES ('440301', '市辖区', null, '440300', null);
INSERT INTO `sys_area` VALUES ('440303', '罗湖区', null, '440300', null);
INSERT INTO `sys_area` VALUES ('440304', '福田区', null, '440300', null);
INSERT INTO `sys_area` VALUES ('440305', '南山区', null, '440300', null);
INSERT INTO `sys_area` VALUES ('440306', '宝安区', null, '440300', null);
INSERT INTO `sys_area` VALUES ('440307', '龙岗区', null, '440300', null);
INSERT INTO `sys_area` VALUES ('440308', '盐田区', null, '440300', null);
INSERT INTO `sys_area` VALUES ('440401', '市辖区', null, '440400', null);
INSERT INTO `sys_area` VALUES ('440402', '香洲区', null, '440400', null);
INSERT INTO `sys_area` VALUES ('440403', '斗门区', null, '440400', null);
INSERT INTO `sys_area` VALUES ('440404', '金湾区', null, '440400', null);
INSERT INTO `sys_area` VALUES ('440501', '市辖区', null, '440500', null);
INSERT INTO `sys_area` VALUES ('440507', '龙湖区', null, '440500', null);
INSERT INTO `sys_area` VALUES ('440511', '金平区', null, '440500', null);
INSERT INTO `sys_area` VALUES ('440512', '濠江区', null, '440500', null);
INSERT INTO `sys_area` VALUES ('440513', '潮阳区', null, '440500', null);
INSERT INTO `sys_area` VALUES ('440514', '潮南区', null, '440500', null);
INSERT INTO `sys_area` VALUES ('440515', '澄海区', null, '440500', null);
INSERT INTO `sys_area` VALUES ('440523', '南澳县', null, '440500', null);
INSERT INTO `sys_area` VALUES ('440601', '市辖区', null, '440600', null);
INSERT INTO `sys_area` VALUES ('440604', '禅城区', null, '440600', null);
INSERT INTO `sys_area` VALUES ('440605', '南海区', null, '440600', null);
INSERT INTO `sys_area` VALUES ('440606', '顺德区', null, '440600', null);
INSERT INTO `sys_area` VALUES ('440607', '三水区', null, '440600', null);
INSERT INTO `sys_area` VALUES ('440608', '高明区', null, '440600', null);
INSERT INTO `sys_area` VALUES ('440701', '市辖区', null, '440700', null);
INSERT INTO `sys_area` VALUES ('440703', '蓬江区', null, '440700', null);
INSERT INTO `sys_area` VALUES ('440704', '江海区', null, '440700', null);
INSERT INTO `sys_area` VALUES ('440705', '新会区', null, '440700', null);
INSERT INTO `sys_area` VALUES ('440781', '台山市', null, '440700', null);
INSERT INTO `sys_area` VALUES ('440783', '开平市', null, '440700', null);
INSERT INTO `sys_area` VALUES ('440784', '鹤山市', null, '440700', null);
INSERT INTO `sys_area` VALUES ('440785', '恩平市', null, '440700', null);
INSERT INTO `sys_area` VALUES ('440801', '市辖区', null, '440800', null);
INSERT INTO `sys_area` VALUES ('440802', '赤坎区', null, '440800', null);
INSERT INTO `sys_area` VALUES ('440803', '霞山区', null, '440800', null);
INSERT INTO `sys_area` VALUES ('440804', '坡头区', null, '440800', null);
INSERT INTO `sys_area` VALUES ('440811', '麻章区', null, '440800', null);
INSERT INTO `sys_area` VALUES ('440823', '遂溪县', null, '440800', null);
INSERT INTO `sys_area` VALUES ('440825', '徐闻县', null, '440800', null);
INSERT INTO `sys_area` VALUES ('440881', '廉江市', null, '440800', null);
INSERT INTO `sys_area` VALUES ('440882', '雷州市', null, '440800', null);
INSERT INTO `sys_area` VALUES ('440883', '吴川市', null, '440800', null);
INSERT INTO `sys_area` VALUES ('440901', '市辖区', null, '440900', null);
INSERT INTO `sys_area` VALUES ('440902', '茂南区', null, '440900', null);
INSERT INTO `sys_area` VALUES ('440903', '茂港区', null, '440900', null);
INSERT INTO `sys_area` VALUES ('440923', '电白县', null, '440900', null);
INSERT INTO `sys_area` VALUES ('440981', '高州市', null, '440900', null);
INSERT INTO `sys_area` VALUES ('440982', '化州市', null, '440900', null);
INSERT INTO `sys_area` VALUES ('440983', '信宜市', null, '440900', null);
INSERT INTO `sys_area` VALUES ('441201', '市辖区', null, '441200', null);
INSERT INTO `sys_area` VALUES ('441202', '端州区', null, '441200', null);
INSERT INTO `sys_area` VALUES ('441203', '鼎湖区', null, '441200', null);
INSERT INTO `sys_area` VALUES ('441223', '广宁县', null, '441200', null);
INSERT INTO `sys_area` VALUES ('441224', '怀集县', null, '441200', null);
INSERT INTO `sys_area` VALUES ('441225', '封开县', null, '441200', null);
INSERT INTO `sys_area` VALUES ('441226', '德庆县', null, '441200', null);
INSERT INTO `sys_area` VALUES ('441283', '高要市', null, '441200', null);
INSERT INTO `sys_area` VALUES ('441284', '四会市', null, '441200', null);
INSERT INTO `sys_area` VALUES ('441301', '市辖区', null, '441300', null);
INSERT INTO `sys_area` VALUES ('441302', '惠城区', null, '441300', null);
INSERT INTO `sys_area` VALUES ('441303', '惠阳区', null, '441300', null);
INSERT INTO `sys_area` VALUES ('441322', '博罗县', null, '441300', null);
INSERT INTO `sys_area` VALUES ('441323', '惠东县', null, '441300', null);
INSERT INTO `sys_area` VALUES ('441324', '龙门县', null, '441300', null);
INSERT INTO `sys_area` VALUES ('441401', '市辖区', null, '441400', null);
INSERT INTO `sys_area` VALUES ('441402', '梅江区', null, '441400', null);
INSERT INTO `sys_area` VALUES ('441421', '梅　县', null, '441400', null);
INSERT INTO `sys_area` VALUES ('441422', '大埔县', null, '441400', null);
INSERT INTO `sys_area` VALUES ('441423', '丰顺县', null, '441400', null);
INSERT INTO `sys_area` VALUES ('441424', '五华县', null, '441400', null);
INSERT INTO `sys_area` VALUES ('441426', '平远县', null, '441400', null);
INSERT INTO `sys_area` VALUES ('441427', '蕉岭县', null, '441400', null);
INSERT INTO `sys_area` VALUES ('441481', '兴宁市', null, '441400', null);
INSERT INTO `sys_area` VALUES ('441501', '市辖区', null, '441500', null);
INSERT INTO `sys_area` VALUES ('441502', '城　区', null, '441500', null);
INSERT INTO `sys_area` VALUES ('441521', '海丰县', null, '441500', null);
INSERT INTO `sys_area` VALUES ('441523', '陆河县', null, '441500', null);
INSERT INTO `sys_area` VALUES ('441581', '陆丰市', null, '441500', null);
INSERT INTO `sys_area` VALUES ('441601', '市辖区', null, '441600', null);
INSERT INTO `sys_area` VALUES ('441602', '源城区', null, '441600', null);
INSERT INTO `sys_area` VALUES ('441621', '紫金县', null, '441600', null);
INSERT INTO `sys_area` VALUES ('441622', '龙川县', null, '441600', null);
INSERT INTO `sys_area` VALUES ('441623', '连平县', null, '441600', null);
INSERT INTO `sys_area` VALUES ('441624', '和平县', null, '441600', null);
INSERT INTO `sys_area` VALUES ('441625', '东源县', null, '441600', null);
INSERT INTO `sys_area` VALUES ('441701', '市辖区', null, '441700', null);
INSERT INTO `sys_area` VALUES ('441702', '江城区', null, '441700', null);
INSERT INTO `sys_area` VALUES ('441721', '阳西县', null, '441700', null);
INSERT INTO `sys_area` VALUES ('441723', '阳东县', null, '441700', null);
INSERT INTO `sys_area` VALUES ('441781', '阳春市', null, '441700', null);
INSERT INTO `sys_area` VALUES ('441801', '市辖区', null, '441800', null);
INSERT INTO `sys_area` VALUES ('441802', '清城区', null, '441800', null);
INSERT INTO `sys_area` VALUES ('441821', '佛冈县', null, '441800', null);
INSERT INTO `sys_area` VALUES ('441823', '阳山县', null, '441800', null);
INSERT INTO `sys_area` VALUES ('441825', '连山壮族瑶族自治县', null, '441800', null);
INSERT INTO `sys_area` VALUES ('441826', '连南瑶族自治县', null, '441800', null);
INSERT INTO `sys_area` VALUES ('441827', '清新县', null, '441800', null);
INSERT INTO `sys_area` VALUES ('441881', '英德市', null, '441800', null);
INSERT INTO `sys_area` VALUES ('441882', '连州市', null, '441800', null);
INSERT INTO `sys_area` VALUES ('445101', '市辖区', null, '445100', null);
INSERT INTO `sys_area` VALUES ('445102', '湘桥区', null, '445100', null);
INSERT INTO `sys_area` VALUES ('445121', '潮安县', null, '445100', null);
INSERT INTO `sys_area` VALUES ('445122', '饶平县', null, '445100', null);
INSERT INTO `sys_area` VALUES ('445201', '市辖区', null, '445200', null);
INSERT INTO `sys_area` VALUES ('445202', '榕城区', null, '445200', null);
INSERT INTO `sys_area` VALUES ('445221', '揭东县', null, '445200', null);
INSERT INTO `sys_area` VALUES ('445222', '揭西县', null, '445200', null);
INSERT INTO `sys_area` VALUES ('445224', '惠来县', null, '445200', null);
INSERT INTO `sys_area` VALUES ('445281', '普宁市', null, '445200', null);
INSERT INTO `sys_area` VALUES ('445301', '市辖区', null, '445300', null);
INSERT INTO `sys_area` VALUES ('445302', '云城区', null, '445300', null);
INSERT INTO `sys_area` VALUES ('445321', '新兴县', null, '445300', null);
INSERT INTO `sys_area` VALUES ('445322', '郁南县', null, '445300', null);
INSERT INTO `sys_area` VALUES ('445323', '云安县', null, '445300', null);
INSERT INTO `sys_area` VALUES ('445381', '罗定市', null, '445300', null);
INSERT INTO `sys_area` VALUES ('450101', '市辖区', null, '450100', null);
INSERT INTO `sys_area` VALUES ('450102', '兴宁区', null, '450100', null);
INSERT INTO `sys_area` VALUES ('450103', '青秀区', null, '450100', null);
INSERT INTO `sys_area` VALUES ('450105', '江南区', null, '450100', null);
INSERT INTO `sys_area` VALUES ('450107', '西乡塘区', null, '450100', null);
INSERT INTO `sys_area` VALUES ('450108', '良庆区', null, '450100', null);
INSERT INTO `sys_area` VALUES ('450109', '邕宁区', null, '450100', null);
INSERT INTO `sys_area` VALUES ('450122', '武鸣县', null, '450100', null);
INSERT INTO `sys_area` VALUES ('450123', '隆安县', null, '450100', null);
INSERT INTO `sys_area` VALUES ('450124', '马山县', null, '450100', null);
INSERT INTO `sys_area` VALUES ('450125', '上林县', null, '450100', null);
INSERT INTO `sys_area` VALUES ('450126', '宾阳县', null, '450100', null);
INSERT INTO `sys_area` VALUES ('450127', '横　县', null, '450100', null);
INSERT INTO `sys_area` VALUES ('450201', '市辖区', null, '450200', null);
INSERT INTO `sys_area` VALUES ('450202', '城中区', null, '450200', null);
INSERT INTO `sys_area` VALUES ('450203', '鱼峰区', null, '450200', null);
INSERT INTO `sys_area` VALUES ('450204', '柳南区', null, '450200', null);
INSERT INTO `sys_area` VALUES ('450205', '柳北区', null, '450200', null);
INSERT INTO `sys_area` VALUES ('450221', '柳江县', null, '450200', null);
INSERT INTO `sys_area` VALUES ('450222', '柳城县', null, '450200', null);
INSERT INTO `sys_area` VALUES ('450223', '鹿寨县', null, '450200', null);
INSERT INTO `sys_area` VALUES ('450224', '融安县', null, '450200', null);
INSERT INTO `sys_area` VALUES ('450225', '融水苗族自治县', null, '450200', null);
INSERT INTO `sys_area` VALUES ('450226', '三江侗族自治县', null, '450200', null);
INSERT INTO `sys_area` VALUES ('450301', '市辖区', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450302', '秀峰区', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450303', '叠彩区', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450304', '象山区', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450305', '七星区', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450311', '雁山区', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450321', '阳朔县', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450322', '临桂县', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450323', '灵川县', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450324', '全州县', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450325', '兴安县', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450326', '永福县', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450327', '灌阳县', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450328', '龙胜各族自治县', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450329', '资源县', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450330', '平乐县', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450331', '荔蒲县', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450332', '恭城瑶族自治县', null, '450300', null);
INSERT INTO `sys_area` VALUES ('450401', '市辖区', null, '450400', null);
INSERT INTO `sys_area` VALUES ('450403', '万秀区', null, '450400', null);
INSERT INTO `sys_area` VALUES ('450404', '蝶山区', null, '450400', null);
INSERT INTO `sys_area` VALUES ('450405', '长洲区', null, '450400', null);
INSERT INTO `sys_area` VALUES ('450421', '苍梧县', null, '450400', null);
INSERT INTO `sys_area` VALUES ('450422', '藤　县', null, '450400', null);
INSERT INTO `sys_area` VALUES ('450423', '蒙山县', null, '450400', null);
INSERT INTO `sys_area` VALUES ('450481', '岑溪市', null, '450400', null);
INSERT INTO `sys_area` VALUES ('450501', '市辖区', null, '450500', null);
INSERT INTO `sys_area` VALUES ('450502', '海城区', null, '450500', null);
INSERT INTO `sys_area` VALUES ('450503', '银海区', null, '450500', null);
INSERT INTO `sys_area` VALUES ('450512', '铁山港区', null, '450500', null);
INSERT INTO `sys_area` VALUES ('450521', '合浦县', null, '450500', null);
INSERT INTO `sys_area` VALUES ('450601', '市辖区', null, '450600', null);
INSERT INTO `sys_area` VALUES ('450602', '港口区', null, '450600', null);
INSERT INTO `sys_area` VALUES ('450603', '防城区', null, '450600', null);
INSERT INTO `sys_area` VALUES ('450621', '上思县', null, '450600', null);
INSERT INTO `sys_area` VALUES ('450681', '东兴市', null, '450600', null);
INSERT INTO `sys_area` VALUES ('450701', '市辖区', null, '450700', null);
INSERT INTO `sys_area` VALUES ('450702', '钦南区', null, '450700', null);
INSERT INTO `sys_area` VALUES ('450703', '钦北区', null, '450700', null);
INSERT INTO `sys_area` VALUES ('450721', '灵山县', null, '450700', null);
INSERT INTO `sys_area` VALUES ('450722', '浦北县', null, '450700', null);
INSERT INTO `sys_area` VALUES ('450801', '市辖区', null, '450800', null);
INSERT INTO `sys_area` VALUES ('450802', '港北区', null, '450800', null);
INSERT INTO `sys_area` VALUES ('450803', '港南区', null, '450800', null);
INSERT INTO `sys_area` VALUES ('450804', '覃塘区', null, '450800', null);
INSERT INTO `sys_area` VALUES ('450821', '平南县', null, '450800', null);
INSERT INTO `sys_area` VALUES ('450881', '桂平市', null, '450800', null);
INSERT INTO `sys_area` VALUES ('450901', '市辖区', null, '450900', null);
INSERT INTO `sys_area` VALUES ('450902', '玉州区', null, '450900', null);
INSERT INTO `sys_area` VALUES ('450921', '容　县', null, '450900', null);
INSERT INTO `sys_area` VALUES ('450922', '陆川县', null, '450900', null);
INSERT INTO `sys_area` VALUES ('450923', '博白县', null, '450900', null);
INSERT INTO `sys_area` VALUES ('450924', '兴业县', null, '450900', null);
INSERT INTO `sys_area` VALUES ('450981', '北流市', null, '450900', null);
INSERT INTO `sys_area` VALUES ('451001', '市辖区', null, '451000', null);
INSERT INTO `sys_area` VALUES ('451002', '右江区', null, '451000', null);
INSERT INTO `sys_area` VALUES ('451021', '田阳县', null, '451000', null);
INSERT INTO `sys_area` VALUES ('451022', '田东县', null, '451000', null);
INSERT INTO `sys_area` VALUES ('451023', '平果县', null, '451000', null);
INSERT INTO `sys_area` VALUES ('451024', '德保县', null, '451000', null);
INSERT INTO `sys_area` VALUES ('451025', '靖西县', null, '451000', null);
INSERT INTO `sys_area` VALUES ('451026', '那坡县', null, '451000', null);
INSERT INTO `sys_area` VALUES ('451027', '凌云县', null, '451000', null);
INSERT INTO `sys_area` VALUES ('451028', '乐业县', null, '451000', null);
INSERT INTO `sys_area` VALUES ('451029', '田林县', null, '451000', null);
INSERT INTO `sys_area` VALUES ('451030', '西林县', null, '451000', null);
INSERT INTO `sys_area` VALUES ('451031', '隆林各族自治县', null, '451000', null);
INSERT INTO `sys_area` VALUES ('451101', '市辖区', null, '451100', null);
INSERT INTO `sys_area` VALUES ('451102', '八步区', null, '451100', null);
INSERT INTO `sys_area` VALUES ('451121', '昭平县', null, '451100', null);
INSERT INTO `sys_area` VALUES ('451122', '钟山县', null, '451100', null);
INSERT INTO `sys_area` VALUES ('451123', '富川瑶族自治县', null, '451100', null);
INSERT INTO `sys_area` VALUES ('451201', '市辖区', null, '451200', null);
INSERT INTO `sys_area` VALUES ('451202', '金城江区', null, '451200', null);
INSERT INTO `sys_area` VALUES ('451221', '南丹县', null, '451200', null);
INSERT INTO `sys_area` VALUES ('451222', '天峨县', null, '451200', null);
INSERT INTO `sys_area` VALUES ('451223', '凤山县', null, '451200', null);
INSERT INTO `sys_area` VALUES ('451224', '东兰县', null, '451200', null);
INSERT INTO `sys_area` VALUES ('451225', '罗城仫佬族自治县', null, '451200', null);
INSERT INTO `sys_area` VALUES ('451226', '环江毛南族自治县', null, '451200', null);
INSERT INTO `sys_area` VALUES ('451227', '巴马瑶族自治县', null, '451200', null);
INSERT INTO `sys_area` VALUES ('451228', '都安瑶族自治县', null, '451200', null);
INSERT INTO `sys_area` VALUES ('451229', '大化瑶族自治县', null, '451200', null);
INSERT INTO `sys_area` VALUES ('451281', '宜州市', null, '451200', null);
INSERT INTO `sys_area` VALUES ('451301', '市辖区', null, '451300', null);
INSERT INTO `sys_area` VALUES ('451302', '兴宾区', null, '451300', null);
INSERT INTO `sys_area` VALUES ('451321', '忻城县', null, '451300', null);
INSERT INTO `sys_area` VALUES ('451322', '象州县', null, '451300', null);
INSERT INTO `sys_area` VALUES ('451323', '武宣县', null, '451300', null);
INSERT INTO `sys_area` VALUES ('451324', '金秀瑶族自治县', null, '451300', null);
INSERT INTO `sys_area` VALUES ('451381', '合山市', null, '451300', null);
INSERT INTO `sys_area` VALUES ('451401', '市辖区', null, '451400', null);
INSERT INTO `sys_area` VALUES ('451402', '江洲区', null, '451400', null);
INSERT INTO `sys_area` VALUES ('451421', '扶绥县', null, '451400', null);
INSERT INTO `sys_area` VALUES ('451422', '宁明县', null, '451400', null);
INSERT INTO `sys_area` VALUES ('451423', '龙州县', null, '451400', null);
INSERT INTO `sys_area` VALUES ('451424', '大新县', null, '451400', null);
INSERT INTO `sys_area` VALUES ('451425', '天等县', null, '451400', null);
INSERT INTO `sys_area` VALUES ('451481', '凭祥市', null, '451400', null);
INSERT INTO `sys_area` VALUES ('460101', '市辖区', null, '460100', null);
INSERT INTO `sys_area` VALUES ('460105', '秀英区', null, '460100', null);
INSERT INTO `sys_area` VALUES ('460106', '龙华区', null, '460100', null);
INSERT INTO `sys_area` VALUES ('460107', '琼山区', null, '460100', null);
INSERT INTO `sys_area` VALUES ('460108', '美兰区', null, '460100', null);
INSERT INTO `sys_area` VALUES ('460201', '市辖区', null, '460200', null);
INSERT INTO `sys_area` VALUES ('469001', '五指山市', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469002', '琼海市', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469003', '儋州市', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469005', '文昌市', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469006', '万宁市', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469007', '东方市', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469025', '定安县', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469026', '屯昌县', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469027', '澄迈县', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469028', '临高县', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469030', '白沙黎族自治县', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469031', '昌江黎族自治县', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469033', '乐东黎族自治县', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469034', '陵水黎族自治县', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469035', '保亭黎族苗族自治县', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469036', '琼中黎族苗族自治县', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469037', '西沙群岛', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469038', '南沙群岛', null, '469000', null);
INSERT INTO `sys_area` VALUES ('469039', '中沙群岛的岛礁及其海域', null, '469000', null);
INSERT INTO `sys_area` VALUES ('500101', '万州区', null, '500100', null);
INSERT INTO `sys_area` VALUES ('500102', '涪陵区', null, '500100', null);
INSERT INTO `sys_area` VALUES ('500103', '渝中区', null, '500100', null);
INSERT INTO `sys_area` VALUES ('500104', '大渡口区', null, '500100', null);
INSERT INTO `sys_area` VALUES ('500105', '江北区', null, '500100', null);
INSERT INTO `sys_area` VALUES ('500106', '沙坪坝区', null, '500100', null);
INSERT INTO `sys_area` VALUES ('500107', '九龙坡区', null, '500100', null);
INSERT INTO `sys_area` VALUES ('500108', '南岸区', null, '500100', null);
INSERT INTO `sys_area` VALUES ('500109', '北碚区', null, '500100', null);
INSERT INTO `sys_area` VALUES ('500110', '万盛区', null, '500100', null);
INSERT INTO `sys_area` VALUES ('500111', '双桥区', null, '500100', null);
INSERT INTO `sys_area` VALUES ('500112', '渝北区', null, '500100', null);
INSERT INTO `sys_area` VALUES ('500113', '巴南区', null, '500100', null);
INSERT INTO `sys_area` VALUES ('500114', '黔江区', null, '500100', null);
INSERT INTO `sys_area` VALUES ('500115', '长寿区', null, '500100', null);
INSERT INTO `sys_area` VALUES ('500222', '綦江县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500223', '潼南县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500224', '铜梁县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500225', '大足县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500226', '荣昌县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500227', '璧山县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500228', '梁平县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500229', '城口县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500230', '丰都县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500231', '垫江县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500232', '武隆县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500233', '忠　县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500234', '开　县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500235', '云阳县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500236', '奉节县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500237', '巫山县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500238', '巫溪县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500240', '石柱土家族自治县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500241', '秀山土家族苗族自治县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500242', '酉阳土家族苗族自治县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500243', '彭水苗族土家族自治县', null, '500200', null);
INSERT INTO `sys_area` VALUES ('500381', '江津市', null, '500300', null);
INSERT INTO `sys_area` VALUES ('500382', '合川市', null, '500300', null);
INSERT INTO `sys_area` VALUES ('500383', '永川市', null, '500300', null);
INSERT INTO `sys_area` VALUES ('500384', '南川市', null, '500300', null);
INSERT INTO `sys_area` VALUES ('510101', '市辖区', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510104', '锦江区', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510105', '青羊区', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510106', '金牛区', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510107', '武侯区', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510108', '成华区', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510112', '龙泉驿区', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510113', '青白江区', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510114', '新都区', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510115', '温江区', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510121', '金堂县', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510122', '双流县', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510124', '郫　县', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510129', '大邑县', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510131', '蒲江县', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510132', '新津县', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510181', '都江堰市', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510182', '彭州市', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510183', '邛崃市', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510184', '崇州市', null, '510100', null);
INSERT INTO `sys_area` VALUES ('510301', '市辖区', null, '510300', null);
INSERT INTO `sys_area` VALUES ('510302', '自流井区', null, '510300', null);
INSERT INTO `sys_area` VALUES ('510303', '贡井区', null, '510300', null);
INSERT INTO `sys_area` VALUES ('510304', '大安区', null, '510300', null);
INSERT INTO `sys_area` VALUES ('510311', '沿滩区', null, '510300', null);
INSERT INTO `sys_area` VALUES ('510321', '荣　县', null, '510300', null);
INSERT INTO `sys_area` VALUES ('510322', '富顺县', null, '510300', null);
INSERT INTO `sys_area` VALUES ('510401', '市辖区', null, '510400', null);
INSERT INTO `sys_area` VALUES ('510402', '东　区', null, '510400', null);
INSERT INTO `sys_area` VALUES ('510403', '西　区', null, '510400', null);
INSERT INTO `sys_area` VALUES ('510411', '仁和区', null, '510400', null);
INSERT INTO `sys_area` VALUES ('510421', '米易县', null, '510400', null);
INSERT INTO `sys_area` VALUES ('510422', '盐边县', null, '510400', null);
INSERT INTO `sys_area` VALUES ('510501', '市辖区', null, '510500', null);
INSERT INTO `sys_area` VALUES ('510502', '江阳区', null, '510500', null);
INSERT INTO `sys_area` VALUES ('510503', '纳溪区', null, '510500', null);
INSERT INTO `sys_area` VALUES ('510504', '龙马潭区', null, '510500', null);
INSERT INTO `sys_area` VALUES ('510521', '泸　县', null, '510500', null);
INSERT INTO `sys_area` VALUES ('510522', '合江县', null, '510500', null);
INSERT INTO `sys_area` VALUES ('510524', '叙永县', null, '510500', null);
INSERT INTO `sys_area` VALUES ('510525', '古蔺县', null, '510500', null);
INSERT INTO `sys_area` VALUES ('510601', '市辖区', null, '510600', null);
INSERT INTO `sys_area` VALUES ('510603', '旌阳区', null, '510600', null);
INSERT INTO `sys_area` VALUES ('510623', '中江县', null, '510600', null);
INSERT INTO `sys_area` VALUES ('510626', '罗江县', null, '510600', null);
INSERT INTO `sys_area` VALUES ('510681', '广汉市', null, '510600', null);
INSERT INTO `sys_area` VALUES ('510682', '什邡市', null, '510600', null);
INSERT INTO `sys_area` VALUES ('510683', '绵竹市', null, '510600', null);
INSERT INTO `sys_area` VALUES ('510701', '市辖区', null, '510700', null);
INSERT INTO `sys_area` VALUES ('510703', '涪城区', null, '510700', null);
INSERT INTO `sys_area` VALUES ('510704', '游仙区', null, '510700', null);
INSERT INTO `sys_area` VALUES ('510722', '三台县', null, '510700', null);
INSERT INTO `sys_area` VALUES ('510723', '盐亭县', null, '510700', null);
INSERT INTO `sys_area` VALUES ('510724', '安　县', null, '510700', null);
INSERT INTO `sys_area` VALUES ('510725', '梓潼县', null, '510700', null);
INSERT INTO `sys_area` VALUES ('510726', '北川羌族自治县', null, '510700', null);
INSERT INTO `sys_area` VALUES ('510727', '平武县', null, '510700', null);
INSERT INTO `sys_area` VALUES ('510781', '江油市', null, '510700', null);
INSERT INTO `sys_area` VALUES ('510801', '市辖区', null, '510800', null);
INSERT INTO `sys_area` VALUES ('510802', '市中区', null, '510800', null);
INSERT INTO `sys_area` VALUES ('510811', '元坝区', null, '510800', null);
INSERT INTO `sys_area` VALUES ('510812', '朝天区', null, '510800', null);
INSERT INTO `sys_area` VALUES ('510821', '旺苍县', null, '510800', null);
INSERT INTO `sys_area` VALUES ('510822', '青川县', null, '510800', null);
INSERT INTO `sys_area` VALUES ('510823', '剑阁县', null, '510800', null);
INSERT INTO `sys_area` VALUES ('510824', '苍溪县', null, '510800', null);
INSERT INTO `sys_area` VALUES ('510901', '市辖区', null, '510900', null);
INSERT INTO `sys_area` VALUES ('510903', '船山区', null, '510900', null);
INSERT INTO `sys_area` VALUES ('510904', '安居区', null, '510900', null);
INSERT INTO `sys_area` VALUES ('510921', '蓬溪县', null, '510900', null);
INSERT INTO `sys_area` VALUES ('510922', '射洪县', null, '510900', null);
INSERT INTO `sys_area` VALUES ('510923', '大英县', null, '510900', null);
INSERT INTO `sys_area` VALUES ('511001', '市辖区', null, '511000', null);
INSERT INTO `sys_area` VALUES ('511002', '市中区', null, '511000', null);
INSERT INTO `sys_area` VALUES ('511011', '东兴区', null, '511000', null);
INSERT INTO `sys_area` VALUES ('511024', '威远县', null, '511000', null);
INSERT INTO `sys_area` VALUES ('511025', '资中县', null, '511000', null);
INSERT INTO `sys_area` VALUES ('511028', '隆昌县', null, '511000', null);
INSERT INTO `sys_area` VALUES ('511101', '市辖区', null, '511100', null);
INSERT INTO `sys_area` VALUES ('511102', '市中区', null, '511100', null);
INSERT INTO `sys_area` VALUES ('511111', '沙湾区', null, '511100', null);
INSERT INTO `sys_area` VALUES ('511112', '五通桥区', null, '511100', null);
INSERT INTO `sys_area` VALUES ('511113', '金口河区', null, '511100', null);
INSERT INTO `sys_area` VALUES ('511123', '犍为县', null, '511100', null);
INSERT INTO `sys_area` VALUES ('511124', '井研县', null, '511100', null);
INSERT INTO `sys_area` VALUES ('511126', '夹江县', null, '511100', null);
INSERT INTO `sys_area` VALUES ('511129', '沐川县', null, '511100', null);
INSERT INTO `sys_area` VALUES ('511132', '峨边彝族自治县', null, '511100', null);
INSERT INTO `sys_area` VALUES ('511133', '马边彝族自治县', null, '511100', null);
INSERT INTO `sys_area` VALUES ('511181', '峨眉山市', null, '511100', null);
INSERT INTO `sys_area` VALUES ('511301', '市辖区', null, '511300', null);
INSERT INTO `sys_area` VALUES ('511302', '顺庆区', null, '511300', null);
INSERT INTO `sys_area` VALUES ('511303', '高坪区', null, '511300', null);
INSERT INTO `sys_area` VALUES ('511304', '嘉陵区', null, '511300', null);
INSERT INTO `sys_area` VALUES ('511321', '南部县', null, '511300', null);
INSERT INTO `sys_area` VALUES ('511322', '营山县', null, '511300', null);
INSERT INTO `sys_area` VALUES ('511323', '蓬安县', null, '511300', null);
INSERT INTO `sys_area` VALUES ('511324', '仪陇县', null, '511300', null);
INSERT INTO `sys_area` VALUES ('511325', '西充县', null, '511300', null);
INSERT INTO `sys_area` VALUES ('511381', '阆中市', null, '511300', null);
INSERT INTO `sys_area` VALUES ('511401', '市辖区', null, '511400', null);
INSERT INTO `sys_area` VALUES ('511402', '东坡区', null, '511400', null);
INSERT INTO `sys_area` VALUES ('511421', '仁寿县', null, '511400', null);
INSERT INTO `sys_area` VALUES ('511422', '彭山县', null, '511400', null);
INSERT INTO `sys_area` VALUES ('511423', '洪雅县', null, '511400', null);
INSERT INTO `sys_area` VALUES ('511424', '丹棱县', null, '511400', null);
INSERT INTO `sys_area` VALUES ('511425', '青神县', null, '511400', null);
INSERT INTO `sys_area` VALUES ('511501', '市辖区', null, '511500', null);
INSERT INTO `sys_area` VALUES ('511502', '翠屏区', null, '511500', null);
INSERT INTO `sys_area` VALUES ('511521', '宜宾县', null, '511500', null);
INSERT INTO `sys_area` VALUES ('511522', '南溪县', null, '511500', null);
INSERT INTO `sys_area` VALUES ('511523', '江安县', null, '511500', null);
INSERT INTO `sys_area` VALUES ('511524', '长宁县', null, '511500', null);
INSERT INTO `sys_area` VALUES ('511525', '高　县', null, '511500', null);
INSERT INTO `sys_area` VALUES ('511526', '珙　县', null, '511500', null);
INSERT INTO `sys_area` VALUES ('511527', '筠连县', null, '511500', null);
INSERT INTO `sys_area` VALUES ('511528', '兴文县', null, '511500', null);
INSERT INTO `sys_area` VALUES ('511529', '屏山县', null, '511500', null);
INSERT INTO `sys_area` VALUES ('511601', '市辖区', null, '511600', null);
INSERT INTO `sys_area` VALUES ('511602', '广安区', null, '511600', null);
INSERT INTO `sys_area` VALUES ('511621', '岳池县', null, '511600', null);
INSERT INTO `sys_area` VALUES ('511622', '武胜县', null, '511600', null);
INSERT INTO `sys_area` VALUES ('511623', '邻水县', null, '511600', null);
INSERT INTO `sys_area` VALUES ('511681', '华莹市', null, '511600', null);
INSERT INTO `sys_area` VALUES ('511701', '市辖区', null, '511700', null);
INSERT INTO `sys_area` VALUES ('511702', '通川区', null, '511700', null);
INSERT INTO `sys_area` VALUES ('511721', '达　县', null, '511700', null);
INSERT INTO `sys_area` VALUES ('511722', '宣汉县', null, '511700', null);
INSERT INTO `sys_area` VALUES ('511723', '开江县', null, '511700', null);
INSERT INTO `sys_area` VALUES ('511724', '大竹县', null, '511700', null);
INSERT INTO `sys_area` VALUES ('511725', '渠　县', null, '511700', null);
INSERT INTO `sys_area` VALUES ('511781', '万源市', null, '511700', null);
INSERT INTO `sys_area` VALUES ('511801', '市辖区', null, '511800', null);
INSERT INTO `sys_area` VALUES ('511802', '雨城区', null, '511800', null);
INSERT INTO `sys_area` VALUES ('511821', '名山县', null, '511800', null);
INSERT INTO `sys_area` VALUES ('511822', '荥经县', null, '511800', null);
INSERT INTO `sys_area` VALUES ('511823', '汉源县', null, '511800', null);
INSERT INTO `sys_area` VALUES ('511824', '石棉县', null, '511800', null);
INSERT INTO `sys_area` VALUES ('511825', '天全县', null, '511800', null);
INSERT INTO `sys_area` VALUES ('511826', '芦山县', null, '511800', null);
INSERT INTO `sys_area` VALUES ('511827', '宝兴县', null, '511800', null);
INSERT INTO `sys_area` VALUES ('511901', '市辖区', null, '511900', null);
INSERT INTO `sys_area` VALUES ('511902', '巴州区', null, '511900', null);
INSERT INTO `sys_area` VALUES ('511921', '通江县', null, '511900', null);
INSERT INTO `sys_area` VALUES ('511922', '南江县', null, '511900', null);
INSERT INTO `sys_area` VALUES ('511923', '平昌县', null, '511900', null);
INSERT INTO `sys_area` VALUES ('512001', '市辖区', null, '512000', null);
INSERT INTO `sys_area` VALUES ('512002', '雁江区', null, '512000', null);
INSERT INTO `sys_area` VALUES ('512021', '安岳县', null, '512000', null);
INSERT INTO `sys_area` VALUES ('512022', '乐至县', null, '512000', null);
INSERT INTO `sys_area` VALUES ('512081', '简阳市', null, '512000', null);
INSERT INTO `sys_area` VALUES ('513221', '汶川县', null, '513200', null);
INSERT INTO `sys_area` VALUES ('513222', '理　县', null, '513200', null);
INSERT INTO `sys_area` VALUES ('513223', '茂　县', null, '513200', null);
INSERT INTO `sys_area` VALUES ('513224', '松潘县', null, '513200', null);
INSERT INTO `sys_area` VALUES ('513225', '九寨沟县', null, '513200', null);
INSERT INTO `sys_area` VALUES ('513226', '金川县', null, '513200', null);
INSERT INTO `sys_area` VALUES ('513227', '小金县', null, '513200', null);
INSERT INTO `sys_area` VALUES ('513228', '黑水县', null, '513200', null);
INSERT INTO `sys_area` VALUES ('513229', '马尔康县', null, '513200', null);
INSERT INTO `sys_area` VALUES ('513230', '壤塘县', null, '513200', null);
INSERT INTO `sys_area` VALUES ('513231', '阿坝县', null, '513200', null);
INSERT INTO `sys_area` VALUES ('513232', '若尔盖县', null, '513200', null);
INSERT INTO `sys_area` VALUES ('513233', '红原县', null, '513200', null);
INSERT INTO `sys_area` VALUES ('513321', '康定县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513322', '泸定县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513323', '丹巴县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513324', '九龙县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513325', '雅江县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513326', '道孚县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513327', '炉霍县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513328', '甘孜县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513329', '新龙县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513330', '德格县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513331', '白玉县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513332', '石渠县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513333', '色达县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513334', '理塘县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513335', '巴塘县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513336', '乡城县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513337', '稻城县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513338', '得荣县', null, '513300', null);
INSERT INTO `sys_area` VALUES ('513401', '西昌市', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513422', '木里藏族自治县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513423', '盐源县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513424', '德昌县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513425', '会理县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513426', '会东县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513427', '宁南县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513428', '普格县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513429', '布拖县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513430', '金阳县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513431', '昭觉县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513432', '喜德县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513433', '冕宁县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513434', '越西县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513435', '甘洛县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513436', '美姑县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('513437', '雷波县', null, '513400', null);
INSERT INTO `sys_area` VALUES ('520101', '市辖区', null, '520100', null);
INSERT INTO `sys_area` VALUES ('520102', '南明区', null, '520100', null);
INSERT INTO `sys_area` VALUES ('520103', '云岩区', null, '520100', null);
INSERT INTO `sys_area` VALUES ('520111', '花溪区', null, '520100', null);
INSERT INTO `sys_area` VALUES ('520112', '乌当区', null, '520100', null);
INSERT INTO `sys_area` VALUES ('520113', '白云区', null, '520100', null);
INSERT INTO `sys_area` VALUES ('520114', '小河区', null, '520100', null);
INSERT INTO `sys_area` VALUES ('520121', '开阳县', null, '520100', null);
INSERT INTO `sys_area` VALUES ('520122', '息烽县', null, '520100', null);
INSERT INTO `sys_area` VALUES ('520123', '修文县', null, '520100', null);
INSERT INTO `sys_area` VALUES ('520181', '清镇市', null, '520100', null);
INSERT INTO `sys_area` VALUES ('520201', '钟山区', null, '520200', null);
INSERT INTO `sys_area` VALUES ('520203', '六枝特区', null, '520200', null);
INSERT INTO `sys_area` VALUES ('520221', '水城县', null, '520200', null);
INSERT INTO `sys_area` VALUES ('520222', '盘　县', null, '520200', null);
INSERT INTO `sys_area` VALUES ('520301', '市辖区', null, '520300', null);
INSERT INTO `sys_area` VALUES ('520302', '红花岗区', null, '520300', null);
INSERT INTO `sys_area` VALUES ('520303', '汇川区', null, '520300', null);
INSERT INTO `sys_area` VALUES ('520321', '遵义县', null, '520300', null);
INSERT INTO `sys_area` VALUES ('520322', '桐梓县', null, '520300', null);
INSERT INTO `sys_area` VALUES ('520323', '绥阳县', null, '520300', null);
INSERT INTO `sys_area` VALUES ('520324', '正安县', null, '520300', null);
INSERT INTO `sys_area` VALUES ('520325', '道真仡佬族苗族自治县', null, '520300', null);
INSERT INTO `sys_area` VALUES ('520326', '务川仡佬族苗族自治县', null, '520300', null);
INSERT INTO `sys_area` VALUES ('520327', '凤冈县', null, '520300', null);
INSERT INTO `sys_area` VALUES ('520328', '湄潭县', null, '520300', null);
INSERT INTO `sys_area` VALUES ('520329', '余庆县', null, '520300', null);
INSERT INTO `sys_area` VALUES ('520330', '习水县', null, '520300', null);
INSERT INTO `sys_area` VALUES ('520381', '赤水市', null, '520300', null);
INSERT INTO `sys_area` VALUES ('520382', '仁怀市', null, '520300', null);
INSERT INTO `sys_area` VALUES ('520401', '市辖区', null, '520400', null);
INSERT INTO `sys_area` VALUES ('520402', '西秀区', null, '520400', null);
INSERT INTO `sys_area` VALUES ('520421', '平坝县', null, '520400', null);
INSERT INTO `sys_area` VALUES ('520422', '普定县', null, '520400', null);
INSERT INTO `sys_area` VALUES ('520423', '镇宁布依族苗族自治县', null, '520400', null);
INSERT INTO `sys_area` VALUES ('520424', '关岭布依族苗族自治县', null, '520400', null);
INSERT INTO `sys_area` VALUES ('520425', '紫云苗族布依族自治县', null, '520400', null);
INSERT INTO `sys_area` VALUES ('522201', '铜仁市', null, '522200', null);
INSERT INTO `sys_area` VALUES ('522222', '江口县', null, '522200', null);
INSERT INTO `sys_area` VALUES ('522223', '玉屏侗族自治县', null, '522200', null);
INSERT INTO `sys_area` VALUES ('522224', '石阡县', null, '522200', null);
INSERT INTO `sys_area` VALUES ('522225', '思南县', null, '522200', null);
INSERT INTO `sys_area` VALUES ('522226', '印江土家族苗族自治县', null, '522200', null);
INSERT INTO `sys_area` VALUES ('522227', '德江县', null, '522200', null);
INSERT INTO `sys_area` VALUES ('522228', '沿河土家族自治县', null, '522200', null);
INSERT INTO `sys_area` VALUES ('522229', '松桃苗族自治县', null, '522200', null);
INSERT INTO `sys_area` VALUES ('522230', '万山特区', null, '522200', null);
INSERT INTO `sys_area` VALUES ('522301', '兴义市', null, '522300', null);
INSERT INTO `sys_area` VALUES ('522322', '兴仁县', null, '522300', null);
INSERT INTO `sys_area` VALUES ('522323', '普安县', null, '522300', null);
INSERT INTO `sys_area` VALUES ('522324', '晴隆县', null, '522300', null);
INSERT INTO `sys_area` VALUES ('522325', '贞丰县', null, '522300', null);
INSERT INTO `sys_area` VALUES ('522326', '望谟县', null, '522300', null);
INSERT INTO `sys_area` VALUES ('522327', '册亨县', null, '522300', null);
INSERT INTO `sys_area` VALUES ('522328', '安龙县', null, '522300', null);
INSERT INTO `sys_area` VALUES ('522401', '毕节市', null, '522400', null);
INSERT INTO `sys_area` VALUES ('522422', '大方县', null, '522400', null);
INSERT INTO `sys_area` VALUES ('522423', '黔西县', null, '522400', null);
INSERT INTO `sys_area` VALUES ('522424', '金沙县', null, '522400', null);
INSERT INTO `sys_area` VALUES ('522425', '织金县', null, '522400', null);
INSERT INTO `sys_area` VALUES ('522426', '纳雍县', null, '522400', null);
INSERT INTO `sys_area` VALUES ('522427', '威宁彝族回族苗族自治县', null, '522400', null);
INSERT INTO `sys_area` VALUES ('522428', '赫章县', null, '522400', null);
INSERT INTO `sys_area` VALUES ('522601', '凯里市', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522622', '黄平县', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522623', '施秉县', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522624', '三穗县', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522625', '镇远县', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522626', '岑巩县', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522627', '天柱县', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522628', '锦屏县', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522629', '剑河县', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522630', '台江县', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522631', '黎平县', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522632', '榕江县', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522633', '从江县', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522634', '雷山县', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522635', '麻江县', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522636', '丹寨县', null, '522600', null);
INSERT INTO `sys_area` VALUES ('522701', '都匀市', null, '522700', null);
INSERT INTO `sys_area` VALUES ('522702', '福泉市', null, '522700', null);
INSERT INTO `sys_area` VALUES ('522722', '荔波县', null, '522700', null);
INSERT INTO `sys_area` VALUES ('522723', '贵定县', null, '522700', null);
INSERT INTO `sys_area` VALUES ('522725', '瓮安县', null, '522700', null);
INSERT INTO `sys_area` VALUES ('522726', '独山县', null, '522700', null);
INSERT INTO `sys_area` VALUES ('522727', '平塘县', null, '522700', null);
INSERT INTO `sys_area` VALUES ('522728', '罗甸县', null, '522700', null);
INSERT INTO `sys_area` VALUES ('522729', '长顺县', null, '522700', null);
INSERT INTO `sys_area` VALUES ('522730', '龙里县', null, '522700', null);
INSERT INTO `sys_area` VALUES ('522731', '惠水县', null, '522700', null);
INSERT INTO `sys_area` VALUES ('522732', '三都水族自治县', null, '522700', null);
INSERT INTO `sys_area` VALUES ('530101', '市辖区', null, '530100', null);
INSERT INTO `sys_area` VALUES ('530102', '五华区', null, '530100', null);
INSERT INTO `sys_area` VALUES ('530103', '盘龙区', null, '530100', null);
INSERT INTO `sys_area` VALUES ('530111', '官渡区', null, '530100', null);
INSERT INTO `sys_area` VALUES ('530112', '西山区', null, '530100', null);
INSERT INTO `sys_area` VALUES ('530113', '东川区', null, '530100', null);
INSERT INTO `sys_area` VALUES ('530121', '呈贡县', null, '530100', null);
INSERT INTO `sys_area` VALUES ('530122', '晋宁县', null, '530100', null);
INSERT INTO `sys_area` VALUES ('530124', '富民县', null, '530100', null);
INSERT INTO `sys_area` VALUES ('530125', '宜良县', null, '530100', null);
INSERT INTO `sys_area` VALUES ('530126', '石林彝族自治县', null, '530100', null);
INSERT INTO `sys_area` VALUES ('530127', '嵩明县', null, '530100', null);
INSERT INTO `sys_area` VALUES ('530128', '禄劝彝族苗族自治县', null, '530100', null);
INSERT INTO `sys_area` VALUES ('530129', '寻甸回族彝族自治县', null, '530100', null);
INSERT INTO `sys_area` VALUES ('530181', '安宁市', null, '530100', null);
INSERT INTO `sys_area` VALUES ('530301', '市辖区', null, '530300', null);
INSERT INTO `sys_area` VALUES ('530302', '麒麟区', null, '530300', null);
INSERT INTO `sys_area` VALUES ('530321', '马龙县', null, '530300', null);
INSERT INTO `sys_area` VALUES ('530322', '陆良县', null, '530300', null);
INSERT INTO `sys_area` VALUES ('530323', '师宗县', null, '530300', null);
INSERT INTO `sys_area` VALUES ('530324', '罗平县', null, '530300', null);
INSERT INTO `sys_area` VALUES ('530325', '富源县', null, '530300', null);
INSERT INTO `sys_area` VALUES ('530326', '会泽县', null, '530300', null);
INSERT INTO `sys_area` VALUES ('530328', '沾益县', null, '530300', null);
INSERT INTO `sys_area` VALUES ('530381', '宣威市', null, '530300', null);
INSERT INTO `sys_area` VALUES ('530401', '市辖区', null, '530400', null);
INSERT INTO `sys_area` VALUES ('530402', '红塔区', null, '530400', null);
INSERT INTO `sys_area` VALUES ('530421', '江川县', null, '530400', null);
INSERT INTO `sys_area` VALUES ('530422', '澄江县', null, '530400', null);
INSERT INTO `sys_area` VALUES ('530423', '通海县', null, '530400', null);
INSERT INTO `sys_area` VALUES ('530424', '华宁县', null, '530400', null);
INSERT INTO `sys_area` VALUES ('530425', '易门县', null, '530400', null);
INSERT INTO `sys_area` VALUES ('530426', '峨山彝族自治县', null, '530400', null);
INSERT INTO `sys_area` VALUES ('530427', '新平彝族傣族自治县', null, '530400', null);
INSERT INTO `sys_area` VALUES ('530428', '元江哈尼族彝族傣族自治县', null, '530400', null);
INSERT INTO `sys_area` VALUES ('530501', '市辖区', null, '530500', null);
INSERT INTO `sys_area` VALUES ('530502', '隆阳区', null, '530500', null);
INSERT INTO `sys_area` VALUES ('530521', '施甸县', null, '530500', null);
INSERT INTO `sys_area` VALUES ('530522', '腾冲县', null, '530500', null);
INSERT INTO `sys_area` VALUES ('530523', '龙陵县', null, '530500', null);
INSERT INTO `sys_area` VALUES ('530524', '昌宁县', null, '530500', null);
INSERT INTO `sys_area` VALUES ('530601', '市辖区', null, '530600', null);
INSERT INTO `sys_area` VALUES ('530602', '昭阳区', null, '530600', null);
INSERT INTO `sys_area` VALUES ('530621', '鲁甸县', null, '530600', null);
INSERT INTO `sys_area` VALUES ('530622', '巧家县', null, '530600', null);
INSERT INTO `sys_area` VALUES ('530623', '盐津县', null, '530600', null);
INSERT INTO `sys_area` VALUES ('530624', '大关县', null, '530600', null);
INSERT INTO `sys_area` VALUES ('530625', '永善县', null, '530600', null);
INSERT INTO `sys_area` VALUES ('530626', '绥江县', null, '530600', null);
INSERT INTO `sys_area` VALUES ('530627', '镇雄县', null, '530600', null);
INSERT INTO `sys_area` VALUES ('530628', '彝良县', null, '530600', null);
INSERT INTO `sys_area` VALUES ('530629', '威信县', null, '530600', null);
INSERT INTO `sys_area` VALUES ('530630', '水富县', null, '530600', null);
INSERT INTO `sys_area` VALUES ('530701', '市辖区', null, '530700', null);
INSERT INTO `sys_area` VALUES ('530702', '古城区', null, '530700', null);
INSERT INTO `sys_area` VALUES ('530721', '玉龙纳西族自治县', null, '530700', null);
INSERT INTO `sys_area` VALUES ('530722', '永胜县', null, '530700', null);
INSERT INTO `sys_area` VALUES ('530723', '华坪县', null, '530700', null);
INSERT INTO `sys_area` VALUES ('530724', '宁蒗彝族自治县', null, '530700', null);
INSERT INTO `sys_area` VALUES ('530801', '市辖区', null, '530800', null);
INSERT INTO `sys_area` VALUES ('530802', '翠云区', null, '530800', null);
INSERT INTO `sys_area` VALUES ('530821', '普洱哈尼族彝族自治县', null, '530800', null);
INSERT INTO `sys_area` VALUES ('530822', '墨江哈尼族自治县', null, '530800', null);
INSERT INTO `sys_area` VALUES ('530823', '景东彝族自治县', null, '530800', null);
INSERT INTO `sys_area` VALUES ('530824', '景谷傣族彝族自治县', null, '530800', null);
INSERT INTO `sys_area` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', null, '530800', null);
INSERT INTO `sys_area` VALUES ('530826', '江城哈尼族彝族自治县', null, '530800', null);
INSERT INTO `sys_area` VALUES ('530827', '孟连傣族拉祜族佤族自治县', null, '530800', null);
INSERT INTO `sys_area` VALUES ('530828', '澜沧拉祜族自治县', null, '530800', null);
INSERT INTO `sys_area` VALUES ('530829', '西盟佤族自治县', null, '530800', null);
INSERT INTO `sys_area` VALUES ('530901', '市辖区', null, '530900', null);
INSERT INTO `sys_area` VALUES ('530902', '临翔区', null, '530900', null);
INSERT INTO `sys_area` VALUES ('530921', '凤庆县', null, '530900', null);
INSERT INTO `sys_area` VALUES ('530922', '云　县', null, '530900', null);
INSERT INTO `sys_area` VALUES ('530923', '永德县', null, '530900', null);
INSERT INTO `sys_area` VALUES ('530924', '镇康县', null, '530900', null);
INSERT INTO `sys_area` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', null, '530900', null);
INSERT INTO `sys_area` VALUES ('530926', '耿马傣族佤族自治县', null, '530900', null);
INSERT INTO `sys_area` VALUES ('530927', '沧源佤族自治县', null, '530900', null);
INSERT INTO `sys_area` VALUES ('532301', '楚雄市', null, '532300', null);
INSERT INTO `sys_area` VALUES ('532322', '双柏县', null, '532300', null);
INSERT INTO `sys_area` VALUES ('532323', '牟定县', null, '532300', null);
INSERT INTO `sys_area` VALUES ('532324', '南华县', null, '532300', null);
INSERT INTO `sys_area` VALUES ('532325', '姚安县', null, '532300', null);
INSERT INTO `sys_area` VALUES ('532326', '大姚县', null, '532300', null);
INSERT INTO `sys_area` VALUES ('532327', '永仁县', null, '532300', null);
INSERT INTO `sys_area` VALUES ('532328', '元谋县', null, '532300', null);
INSERT INTO `sys_area` VALUES ('532329', '武定县', null, '532300', null);
INSERT INTO `sys_area` VALUES ('532331', '禄丰县', null, '532300', null);
INSERT INTO `sys_area` VALUES ('532501', '个旧市', null, '532500', null);
INSERT INTO `sys_area` VALUES ('532502', '开远市', null, '532500', null);
INSERT INTO `sys_area` VALUES ('532522', '蒙自县', null, '532500', null);
INSERT INTO `sys_area` VALUES ('532523', '屏边苗族自治县', null, '532500', null);
INSERT INTO `sys_area` VALUES ('532524', '建水县', null, '532500', null);
INSERT INTO `sys_area` VALUES ('532525', '石屏县', null, '532500', null);
INSERT INTO `sys_area` VALUES ('532526', '弥勒县', null, '532500', null);
INSERT INTO `sys_area` VALUES ('532527', '泸西县', null, '532500', null);
INSERT INTO `sys_area` VALUES ('532528', '元阳县', null, '532500', null);
INSERT INTO `sys_area` VALUES ('532529', '红河县', null, '532500', null);
INSERT INTO `sys_area` VALUES ('532530', '金平苗族瑶族傣族自治县', null, '532500', null);
INSERT INTO `sys_area` VALUES ('532531', '绿春县', null, '532500', null);
INSERT INTO `sys_area` VALUES ('532532', '河口瑶族自治县', null, '532500', null);
INSERT INTO `sys_area` VALUES ('532621', '文山县', null, '532600', null);
INSERT INTO `sys_area` VALUES ('532622', '砚山县', null, '532600', null);
INSERT INTO `sys_area` VALUES ('532623', '西畴县', null, '532600', null);
INSERT INTO `sys_area` VALUES ('532624', '麻栗坡县', null, '532600', null);
INSERT INTO `sys_area` VALUES ('532625', '马关县', null, '532600', null);
INSERT INTO `sys_area` VALUES ('532626', '丘北县', null, '532600', null);
INSERT INTO `sys_area` VALUES ('532627', '广南县', null, '532600', null);
INSERT INTO `sys_area` VALUES ('532628', '富宁县', null, '532600', null);
INSERT INTO `sys_area` VALUES ('532801', '景洪市', null, '532800', null);
INSERT INTO `sys_area` VALUES ('532822', '勐海县', null, '532800', null);
INSERT INTO `sys_area` VALUES ('532823', '勐腊县', null, '532800', null);
INSERT INTO `sys_area` VALUES ('532901', '大理市', null, '532900', null);
INSERT INTO `sys_area` VALUES ('532922', '漾濞彝族自治县', null, '532900', null);
INSERT INTO `sys_area` VALUES ('532923', '祥云县', null, '532900', null);
INSERT INTO `sys_area` VALUES ('532924', '宾川县', null, '532900', null);
INSERT INTO `sys_area` VALUES ('532925', '弥渡县', null, '532900', null);
INSERT INTO `sys_area` VALUES ('532926', '南涧彝族自治县', null, '532900', null);
INSERT INTO `sys_area` VALUES ('532927', '巍山彝族回族自治县', null, '532900', null);
INSERT INTO `sys_area` VALUES ('532928', '永平县', null, '532900', null);
INSERT INTO `sys_area` VALUES ('532929', '云龙县', null, '532900', null);
INSERT INTO `sys_area` VALUES ('532930', '洱源县', null, '532900', null);
INSERT INTO `sys_area` VALUES ('532931', '剑川县', null, '532900', null);
INSERT INTO `sys_area` VALUES ('532932', '鹤庆县', null, '532900', null);
INSERT INTO `sys_area` VALUES ('533102', '瑞丽市', null, '533100', null);
INSERT INTO `sys_area` VALUES ('533103', '潞西市', null, '533100', null);
INSERT INTO `sys_area` VALUES ('533122', '梁河县', null, '533100', null);
INSERT INTO `sys_area` VALUES ('533123', '盈江县', null, '533100', null);
INSERT INTO `sys_area` VALUES ('533124', '陇川县', null, '533100', null);
INSERT INTO `sys_area` VALUES ('533321', '泸水县', null, '533300', null);
INSERT INTO `sys_area` VALUES ('533323', '福贡县', null, '533300', null);
INSERT INTO `sys_area` VALUES ('533324', '贡山独龙族怒族自治县', null, '533300', null);
INSERT INTO `sys_area` VALUES ('533325', '兰坪白族普米族自治县', null, '533300', null);
INSERT INTO `sys_area` VALUES ('533421', '香格里拉县', null, '533400', null);
INSERT INTO `sys_area` VALUES ('533422', '德钦县', null, '533400', null);
INSERT INTO `sys_area` VALUES ('533423', '维西傈僳族自治县', null, '533400', null);
INSERT INTO `sys_area` VALUES ('540101', '市辖区', null, '540100', null);
INSERT INTO `sys_area` VALUES ('540102', '城关区', null, '540100', null);
INSERT INTO `sys_area` VALUES ('540121', '林周县', null, '540100', null);
INSERT INTO `sys_area` VALUES ('540122', '当雄县', null, '540100', null);
INSERT INTO `sys_area` VALUES ('540123', '尼木县', null, '540100', null);
INSERT INTO `sys_area` VALUES ('540124', '曲水县', null, '540100', null);
INSERT INTO `sys_area` VALUES ('540125', '堆龙德庆县', null, '540100', null);
INSERT INTO `sys_area` VALUES ('540126', '达孜县', null, '540100', null);
INSERT INTO `sys_area` VALUES ('540127', '墨竹工卡县', null, '540100', null);
INSERT INTO `sys_area` VALUES ('542121', '昌都县', null, '542100', null);
INSERT INTO `sys_area` VALUES ('542122', '江达县', null, '542100', null);
INSERT INTO `sys_area` VALUES ('542123', '贡觉县', null, '542100', null);
INSERT INTO `sys_area` VALUES ('542124', '类乌齐县', null, '542100', null);
INSERT INTO `sys_area` VALUES ('542125', '丁青县', null, '542100', null);
INSERT INTO `sys_area` VALUES ('542126', '察雅县', null, '542100', null);
INSERT INTO `sys_area` VALUES ('542127', '八宿县', null, '542100', null);
INSERT INTO `sys_area` VALUES ('542128', '左贡县', null, '542100', null);
INSERT INTO `sys_area` VALUES ('542129', '芒康县', null, '542100', null);
INSERT INTO `sys_area` VALUES ('542132', '洛隆县', null, '542100', null);
INSERT INTO `sys_area` VALUES ('542133', '边坝县', null, '542100', null);
INSERT INTO `sys_area` VALUES ('542221', '乃东县', null, '542200', null);
INSERT INTO `sys_area` VALUES ('542222', '扎囊县', null, '542200', null);
INSERT INTO `sys_area` VALUES ('542223', '贡嘎县', null, '542200', null);
INSERT INTO `sys_area` VALUES ('542224', '桑日县', null, '542200', null);
INSERT INTO `sys_area` VALUES ('542225', '琼结县', null, '542200', null);
INSERT INTO `sys_area` VALUES ('542226', '曲松县', null, '542200', null);
INSERT INTO `sys_area` VALUES ('542227', '措美县', null, '542200', null);
INSERT INTO `sys_area` VALUES ('542228', '洛扎县', null, '542200', null);
INSERT INTO `sys_area` VALUES ('542229', '加查县', null, '542200', null);
INSERT INTO `sys_area` VALUES ('542231', '隆子县', null, '542200', null);
INSERT INTO `sys_area` VALUES ('542232', '错那县', null, '542200', null);
INSERT INTO `sys_area` VALUES ('542233', '浪卡子县', null, '542200', null);
INSERT INTO `sys_area` VALUES ('542301', '日喀则市', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542322', '南木林县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542323', '江孜县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542324', '定日县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542325', '萨迦县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542326', '拉孜县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542327', '昂仁县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542328', '谢通门县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542329', '白朗县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542330', '仁布县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542331', '康马县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542332', '定结县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542333', '仲巴县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542334', '亚东县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542335', '吉隆县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542336', '聂拉木县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542337', '萨嘎县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542338', '岗巴县', null, '542300', null);
INSERT INTO `sys_area` VALUES ('542421', '那曲县', null, '542400', null);
INSERT INTO `sys_area` VALUES ('542422', '嘉黎县', null, '542400', null);
INSERT INTO `sys_area` VALUES ('542423', '比如县', null, '542400', null);
INSERT INTO `sys_area` VALUES ('542424', '聂荣县', null, '542400', null);
INSERT INTO `sys_area` VALUES ('542425', '安多县', null, '542400', null);
INSERT INTO `sys_area` VALUES ('542426', '申扎县', null, '542400', null);
INSERT INTO `sys_area` VALUES ('542427', '索　县', null, '542400', null);
INSERT INTO `sys_area` VALUES ('542428', '班戈县', null, '542400', null);
INSERT INTO `sys_area` VALUES ('542429', '巴青县', null, '542400', null);
INSERT INTO `sys_area` VALUES ('542430', '尼玛县', null, '542400', null);
INSERT INTO `sys_area` VALUES ('542521', '普兰县', null, '542500', null);
INSERT INTO `sys_area` VALUES ('542522', '札达县', null, '542500', null);
INSERT INTO `sys_area` VALUES ('542523', '噶尔县', null, '542500', null);
INSERT INTO `sys_area` VALUES ('542524', '日土县', null, '542500', null);
INSERT INTO `sys_area` VALUES ('542525', '革吉县', null, '542500', null);
INSERT INTO `sys_area` VALUES ('542526', '改则县', null, '542500', null);
INSERT INTO `sys_area` VALUES ('542527', '措勤县', null, '542500', null);
INSERT INTO `sys_area` VALUES ('542621', '林芝县', null, '542600', null);
INSERT INTO `sys_area` VALUES ('542622', '工布江达县', null, '542600', null);
INSERT INTO `sys_area` VALUES ('542623', '米林县', null, '542600', null);
INSERT INTO `sys_area` VALUES ('542624', '墨脱县', null, '542600', null);
INSERT INTO `sys_area` VALUES ('542625', '波密县', null, '542600', null);
INSERT INTO `sys_area` VALUES ('542626', '察隅县', null, '542600', null);
INSERT INTO `sys_area` VALUES ('542627', '朗　县', null, '542600', null);
INSERT INTO `sys_area` VALUES ('610101', '市辖区', null, '610100', null);
INSERT INTO `sys_area` VALUES ('610102', '新城区', null, '610100', null);
INSERT INTO `sys_area` VALUES ('610103', '碑林区', null, '610100', null);
INSERT INTO `sys_area` VALUES ('610104', '莲湖区', null, '610100', null);
INSERT INTO `sys_area` VALUES ('610111', '灞桥区', null, '610100', null);
INSERT INTO `sys_area` VALUES ('610112', '未央区', null, '610100', null);
INSERT INTO `sys_area` VALUES ('610113', '雁塔区', null, '610100', null);
INSERT INTO `sys_area` VALUES ('610114', '阎良区', null, '610100', null);
INSERT INTO `sys_area` VALUES ('610115', '临潼区', null, '610100', null);
INSERT INTO `sys_area` VALUES ('610116', '长安区', null, '610100', null);
INSERT INTO `sys_area` VALUES ('610122', '蓝田县', null, '610100', null);
INSERT INTO `sys_area` VALUES ('610124', '周至县', null, '610100', null);
INSERT INTO `sys_area` VALUES ('610125', '户　县', null, '610100', null);
INSERT INTO `sys_area` VALUES ('610126', '高陵县', null, '610100', null);
INSERT INTO `sys_area` VALUES ('610201', '市辖区', null, '610200', null);
INSERT INTO `sys_area` VALUES ('610202', '王益区', null, '610200', null);
INSERT INTO `sys_area` VALUES ('610203', '印台区', null, '610200', null);
INSERT INTO `sys_area` VALUES ('610204', '耀州区', null, '610200', null);
INSERT INTO `sys_area` VALUES ('610222', '宜君县', null, '610200', null);
INSERT INTO `sys_area` VALUES ('610301', '市辖区', null, '610300', null);
INSERT INTO `sys_area` VALUES ('610302', '渭滨区', null, '610300', null);
INSERT INTO `sys_area` VALUES ('610303', '金台区', null, '610300', null);
INSERT INTO `sys_area` VALUES ('610304', '陈仓区', null, '610300', null);
INSERT INTO `sys_area` VALUES ('610322', '凤翔县', null, '610300', null);
INSERT INTO `sys_area` VALUES ('610323', '岐山县', null, '610300', null);
INSERT INTO `sys_area` VALUES ('610324', '扶风县', null, '610300', null);
INSERT INTO `sys_area` VALUES ('610326', '眉　县', null, '610300', null);
INSERT INTO `sys_area` VALUES ('610327', '陇　县', null, '610300', null);
INSERT INTO `sys_area` VALUES ('610328', '千阳县', null, '610300', null);
INSERT INTO `sys_area` VALUES ('610329', '麟游县', null, '610300', null);
INSERT INTO `sys_area` VALUES ('610330', '凤　县', null, '610300', null);
INSERT INTO `sys_area` VALUES ('610331', '太白县', null, '610300', null);
INSERT INTO `sys_area` VALUES ('610401', '市辖区', null, '610400', null);
INSERT INTO `sys_area` VALUES ('610402', '秦都区', null, '610400', null);
INSERT INTO `sys_area` VALUES ('610403', '杨凌区', null, '610400', null);
INSERT INTO `sys_area` VALUES ('610404', '渭城区', null, '610400', null);
INSERT INTO `sys_area` VALUES ('610422', '三原县', null, '610400', null);
INSERT INTO `sys_area` VALUES ('610423', '泾阳县', null, '610400', null);
INSERT INTO `sys_area` VALUES ('610424', '乾　县', null, '610400', null);
INSERT INTO `sys_area` VALUES ('610425', '礼泉县', null, '610400', null);
INSERT INTO `sys_area` VALUES ('610426', '永寿县', null, '610400', null);
INSERT INTO `sys_area` VALUES ('610427', '彬　县', null, '610400', null);
INSERT INTO `sys_area` VALUES ('610428', '长武县', null, '610400', null);
INSERT INTO `sys_area` VALUES ('610429', '旬邑县', null, '610400', null);
INSERT INTO `sys_area` VALUES ('610430', '淳化县', null, '610400', null);
INSERT INTO `sys_area` VALUES ('610431', '武功县', null, '610400', null);
INSERT INTO `sys_area` VALUES ('610481', '兴平市', null, '610400', null);
INSERT INTO `sys_area` VALUES ('610501', '市辖区', null, '610500', null);
INSERT INTO `sys_area` VALUES ('610502', '临渭区', null, '610500', null);
INSERT INTO `sys_area` VALUES ('610521', '华　县', null, '610500', null);
INSERT INTO `sys_area` VALUES ('610522', '潼关县', null, '610500', null);
INSERT INTO `sys_area` VALUES ('610523', '大荔县', null, '610500', null);
INSERT INTO `sys_area` VALUES ('610524', '合阳县', null, '610500', null);
INSERT INTO `sys_area` VALUES ('610525', '澄城县', null, '610500', null);
INSERT INTO `sys_area` VALUES ('610526', '蒲城县', null, '610500', null);
INSERT INTO `sys_area` VALUES ('610527', '白水县', null, '610500', null);
INSERT INTO `sys_area` VALUES ('610528', '富平县', null, '610500', null);
INSERT INTO `sys_area` VALUES ('610581', '韩城市', null, '610500', null);
INSERT INTO `sys_area` VALUES ('610582', '华阴市', null, '610500', null);
INSERT INTO `sys_area` VALUES ('610601', '市辖区', null, '610600', null);
INSERT INTO `sys_area` VALUES ('610602', '宝塔区', null, '610600', null);
INSERT INTO `sys_area` VALUES ('610621', '延长县', null, '610600', null);
INSERT INTO `sys_area` VALUES ('610622', '延川县', null, '610600', null);
INSERT INTO `sys_area` VALUES ('610623', '子长县', null, '610600', null);
INSERT INTO `sys_area` VALUES ('610624', '安塞县', null, '610600', null);
INSERT INTO `sys_area` VALUES ('610625', '志丹县', null, '610600', null);
INSERT INTO `sys_area` VALUES ('610626', '吴旗县', null, '610600', null);
INSERT INTO `sys_area` VALUES ('610627', '甘泉县', null, '610600', null);
INSERT INTO `sys_area` VALUES ('610628', '富　县', null, '610600', null);
INSERT INTO `sys_area` VALUES ('610629', '洛川县', null, '610600', null);
INSERT INTO `sys_area` VALUES ('610630', '宜川县', null, '610600', null);
INSERT INTO `sys_area` VALUES ('610631', '黄龙县', null, '610600', null);
INSERT INTO `sys_area` VALUES ('610632', '黄陵县', null, '610600', null);
INSERT INTO `sys_area` VALUES ('610701', '市辖区', null, '610700', null);
INSERT INTO `sys_area` VALUES ('610702', '汉台区', null, '610700', null);
INSERT INTO `sys_area` VALUES ('610721', '南郑县', null, '610700', null);
INSERT INTO `sys_area` VALUES ('610722', '城固县', null, '610700', null);
INSERT INTO `sys_area` VALUES ('610723', '洋　县', null, '610700', null);
INSERT INTO `sys_area` VALUES ('610724', '西乡县', null, '610700', null);
INSERT INTO `sys_area` VALUES ('610725', '勉　县', null, '610700', null);
INSERT INTO `sys_area` VALUES ('610726', '宁强县', null, '610700', null);
INSERT INTO `sys_area` VALUES ('610727', '略阳县', null, '610700', null);
INSERT INTO `sys_area` VALUES ('610728', '镇巴县', null, '610700', null);
INSERT INTO `sys_area` VALUES ('610729', '留坝县', null, '610700', null);
INSERT INTO `sys_area` VALUES ('610730', '佛坪县', null, '610700', null);
INSERT INTO `sys_area` VALUES ('610801', '市辖区', null, '610800', null);
INSERT INTO `sys_area` VALUES ('610802', '榆阳区', null, '610800', null);
INSERT INTO `sys_area` VALUES ('610821', '神木县', null, '610800', null);
INSERT INTO `sys_area` VALUES ('610822', '府谷县', null, '610800', null);
INSERT INTO `sys_area` VALUES ('610823', '横山县', null, '610800', null);
INSERT INTO `sys_area` VALUES ('610824', '靖边县', null, '610800', null);
INSERT INTO `sys_area` VALUES ('610825', '定边县', null, '610800', null);
INSERT INTO `sys_area` VALUES ('610826', '绥德县', null, '610800', null);
INSERT INTO `sys_area` VALUES ('610827', '米脂县', null, '610800', null);
INSERT INTO `sys_area` VALUES ('610828', '佳　县', null, '610800', null);
INSERT INTO `sys_area` VALUES ('610829', '吴堡县', null, '610800', null);
INSERT INTO `sys_area` VALUES ('610830', '清涧县', null, '610800', null);
INSERT INTO `sys_area` VALUES ('610831', '子洲县', null, '610800', null);
INSERT INTO `sys_area` VALUES ('610901', '市辖区', null, '610900', null);
INSERT INTO `sys_area` VALUES ('610902', '汉滨区', null, '610900', null);
INSERT INTO `sys_area` VALUES ('610921', '汉阴县', null, '610900', null);
INSERT INTO `sys_area` VALUES ('610922', '石泉县', null, '610900', null);
INSERT INTO `sys_area` VALUES ('610923', '宁陕县', null, '610900', null);
INSERT INTO `sys_area` VALUES ('610924', '紫阳县', null, '610900', null);
INSERT INTO `sys_area` VALUES ('610925', '岚皋县', null, '610900', null);
INSERT INTO `sys_area` VALUES ('610926', '平利县', null, '610900', null);
INSERT INTO `sys_area` VALUES ('610927', '镇坪县', null, '610900', null);
INSERT INTO `sys_area` VALUES ('610928', '旬阳县', null, '610900', null);
INSERT INTO `sys_area` VALUES ('610929', '白河县', null, '610900', null);
INSERT INTO `sys_area` VALUES ('611001', '市辖区', null, '611000', null);
INSERT INTO `sys_area` VALUES ('611002', '商州区', null, '611000', null);
INSERT INTO `sys_area` VALUES ('611021', '洛南县', null, '611000', null);
INSERT INTO `sys_area` VALUES ('611022', '丹凤县', null, '611000', null);
INSERT INTO `sys_area` VALUES ('611023', '商南县', null, '611000', null);
INSERT INTO `sys_area` VALUES ('611024', '山阳县', null, '611000', null);
INSERT INTO `sys_area` VALUES ('611025', '镇安县', null, '611000', null);
INSERT INTO `sys_area` VALUES ('611026', '柞水县', null, '611000', null);
INSERT INTO `sys_area` VALUES ('620101', '市辖区', null, '620100', null);
INSERT INTO `sys_area` VALUES ('620102', '城关区', null, '620100', null);
INSERT INTO `sys_area` VALUES ('620103', '七里河区', null, '620100', null);
INSERT INTO `sys_area` VALUES ('620104', '西固区', null, '620100', null);
INSERT INTO `sys_area` VALUES ('620105', '安宁区', null, '620100', null);
INSERT INTO `sys_area` VALUES ('620111', '红古区', null, '620100', null);
INSERT INTO `sys_area` VALUES ('620121', '永登县', null, '620100', null);
INSERT INTO `sys_area` VALUES ('620122', '皋兰县', null, '620100', null);
INSERT INTO `sys_area` VALUES ('620123', '榆中县', null, '620100', null);
INSERT INTO `sys_area` VALUES ('620201', '市辖区', null, '620200', null);
INSERT INTO `sys_area` VALUES ('620301', '市辖区', null, '620300', null);
INSERT INTO `sys_area` VALUES ('620302', '金川区', null, '620300', null);
INSERT INTO `sys_area` VALUES ('620321', '永昌县', null, '620300', null);
INSERT INTO `sys_area` VALUES ('620401', '市辖区', null, '620400', null);
INSERT INTO `sys_area` VALUES ('620402', '白银区', null, '620400', null);
INSERT INTO `sys_area` VALUES ('620403', '平川区', null, '620400', null);
INSERT INTO `sys_area` VALUES ('620421', '靖远县', null, '620400', null);
INSERT INTO `sys_area` VALUES ('620422', '会宁县', null, '620400', null);
INSERT INTO `sys_area` VALUES ('620423', '景泰县', null, '620400', null);
INSERT INTO `sys_area` VALUES ('620501', '市辖区', null, '620500', null);
INSERT INTO `sys_area` VALUES ('620502', '秦城区', null, '620500', null);
INSERT INTO `sys_area` VALUES ('620503', '北道区', null, '620500', null);
INSERT INTO `sys_area` VALUES ('620521', '清水县', null, '620500', null);
INSERT INTO `sys_area` VALUES ('620522', '秦安县', null, '620500', null);
INSERT INTO `sys_area` VALUES ('620523', '甘谷县', null, '620500', null);
INSERT INTO `sys_area` VALUES ('620524', '武山县', null, '620500', null);
INSERT INTO `sys_area` VALUES ('620525', '张家川回族自治县', null, '620500', null);
INSERT INTO `sys_area` VALUES ('620601', '市辖区', null, '620600', null);
INSERT INTO `sys_area` VALUES ('620602', '凉州区', null, '620600', null);
INSERT INTO `sys_area` VALUES ('620621', '民勤县', null, '620600', null);
INSERT INTO `sys_area` VALUES ('620622', '古浪县', null, '620600', null);
INSERT INTO `sys_area` VALUES ('620623', '天祝藏族自治县', null, '620600', null);
INSERT INTO `sys_area` VALUES ('620701', '市辖区', null, '620700', null);
INSERT INTO `sys_area` VALUES ('620702', '甘州区', null, '620700', null);
INSERT INTO `sys_area` VALUES ('620721', '肃南裕固族自治县', null, '620700', null);
INSERT INTO `sys_area` VALUES ('620722', '民乐县', null, '620700', null);
INSERT INTO `sys_area` VALUES ('620723', '临泽县', null, '620700', null);
INSERT INTO `sys_area` VALUES ('620724', '高台县', null, '620700', null);
INSERT INTO `sys_area` VALUES ('620725', '山丹县', null, '620700', null);
INSERT INTO `sys_area` VALUES ('620801', '市辖区', null, '620800', null);
INSERT INTO `sys_area` VALUES ('620802', '崆峒区', null, '620800', null);
INSERT INTO `sys_area` VALUES ('620821', '泾川县', null, '620800', null);
INSERT INTO `sys_area` VALUES ('620822', '灵台县', null, '620800', null);
INSERT INTO `sys_area` VALUES ('620823', '崇信县', null, '620800', null);
INSERT INTO `sys_area` VALUES ('620824', '华亭县', null, '620800', null);
INSERT INTO `sys_area` VALUES ('620825', '庄浪县', null, '620800', null);
INSERT INTO `sys_area` VALUES ('620826', '静宁县', null, '620800', null);
INSERT INTO `sys_area` VALUES ('620901', '市辖区', null, '620900', null);
INSERT INTO `sys_area` VALUES ('620902', '肃州区', null, '620900', null);
INSERT INTO `sys_area` VALUES ('620921', '金塔县', null, '620900', null);
INSERT INTO `sys_area` VALUES ('620922', '安西县', null, '620900', null);
INSERT INTO `sys_area` VALUES ('620923', '肃北蒙古族自治县', null, '620900', null);
INSERT INTO `sys_area` VALUES ('620924', '阿克塞哈萨克族自治县', null, '620900', null);
INSERT INTO `sys_area` VALUES ('620981', '玉门市', null, '620900', null);
INSERT INTO `sys_area` VALUES ('620982', '敦煌市', null, '620900', null);
INSERT INTO `sys_area` VALUES ('621001', '市辖区', null, '621000', null);
INSERT INTO `sys_area` VALUES ('621002', '西峰区', null, '621000', null);
INSERT INTO `sys_area` VALUES ('621021', '庆城县', null, '621000', null);
INSERT INTO `sys_area` VALUES ('621022', '环　县', null, '621000', null);
INSERT INTO `sys_area` VALUES ('621023', '华池县', null, '621000', null);
INSERT INTO `sys_area` VALUES ('621024', '合水县', null, '621000', null);
INSERT INTO `sys_area` VALUES ('621025', '正宁县', null, '621000', null);
INSERT INTO `sys_area` VALUES ('621026', '宁　县', null, '621000', null);
INSERT INTO `sys_area` VALUES ('621027', '镇原县', null, '621000', null);
INSERT INTO `sys_area` VALUES ('621101', '市辖区', null, '621100', null);
INSERT INTO `sys_area` VALUES ('621102', '安定区', null, '621100', null);
INSERT INTO `sys_area` VALUES ('621121', '通渭县', null, '621100', null);
INSERT INTO `sys_area` VALUES ('621122', '陇西县', null, '621100', null);
INSERT INTO `sys_area` VALUES ('621123', '渭源县', null, '621100', null);
INSERT INTO `sys_area` VALUES ('621124', '临洮县', null, '621100', null);
INSERT INTO `sys_area` VALUES ('621125', '漳　县', null, '621100', null);
INSERT INTO `sys_area` VALUES ('621126', '岷　县', null, '621100', null);
INSERT INTO `sys_area` VALUES ('621201', '市辖区', null, '621200', null);
INSERT INTO `sys_area` VALUES ('621202', '武都区', null, '621200', null);
INSERT INTO `sys_area` VALUES ('621221', '成　县', null, '621200', null);
INSERT INTO `sys_area` VALUES ('621222', '文　县', null, '621200', null);
INSERT INTO `sys_area` VALUES ('621223', '宕昌县', null, '621200', null);
INSERT INTO `sys_area` VALUES ('621224', '康　县', null, '621200', null);
INSERT INTO `sys_area` VALUES ('621225', '西和县', null, '621200', null);
INSERT INTO `sys_area` VALUES ('621226', '礼　县', null, '621200', null);
INSERT INTO `sys_area` VALUES ('621227', '徽　县', null, '621200', null);
INSERT INTO `sys_area` VALUES ('621228', '两当县', null, '621200', null);
INSERT INTO `sys_area` VALUES ('622901', '临夏市', null, '622900', null);
INSERT INTO `sys_area` VALUES ('622921', '临夏县', null, '622900', null);
INSERT INTO `sys_area` VALUES ('622922', '康乐县', null, '622900', null);
INSERT INTO `sys_area` VALUES ('622923', '永靖县', null, '622900', null);
INSERT INTO `sys_area` VALUES ('622924', '广河县', null, '622900', null);
INSERT INTO `sys_area` VALUES ('622925', '和政县', null, '622900', null);
INSERT INTO `sys_area` VALUES ('622926', '东乡族自治县', null, '622900', null);
INSERT INTO `sys_area` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', null, '622900', null);
INSERT INTO `sys_area` VALUES ('623001', '合作市', null, '623000', null);
INSERT INTO `sys_area` VALUES ('623021', '临潭县', null, '623000', null);
INSERT INTO `sys_area` VALUES ('623022', '卓尼县', null, '623000', null);
INSERT INTO `sys_area` VALUES ('623023', '舟曲县', null, '623000', null);
INSERT INTO `sys_area` VALUES ('623024', '迭部县', null, '623000', null);
INSERT INTO `sys_area` VALUES ('623025', '玛曲县', null, '623000', null);
INSERT INTO `sys_area` VALUES ('623026', '碌曲县', null, '623000', null);
INSERT INTO `sys_area` VALUES ('623027', '夏河县', null, '623000', null);
INSERT INTO `sys_area` VALUES ('630101', '市辖区', null, '630100', null);
INSERT INTO `sys_area` VALUES ('630102', '城东区', null, '630100', null);
INSERT INTO `sys_area` VALUES ('630103', '城中区', null, '630100', null);
INSERT INTO `sys_area` VALUES ('630104', '城西区', null, '630100', null);
INSERT INTO `sys_area` VALUES ('630105', '城北区', null, '630100', null);
INSERT INTO `sys_area` VALUES ('630121', '大通回族土族自治县', null, '630100', null);
INSERT INTO `sys_area` VALUES ('630122', '湟中县', null, '630100', null);
INSERT INTO `sys_area` VALUES ('630123', '湟源县', null, '630100', null);
INSERT INTO `sys_area` VALUES ('632121', '平安县', null, '632100', null);
INSERT INTO `sys_area` VALUES ('632122', '民和回族土族自治县', null, '632100', null);
INSERT INTO `sys_area` VALUES ('632123', '乐都县', null, '632100', null);
INSERT INTO `sys_area` VALUES ('632126', '互助土族自治县', null, '632100', null);
INSERT INTO `sys_area` VALUES ('632127', '化隆回族自治县', null, '632100', null);
INSERT INTO `sys_area` VALUES ('632128', '循化撒拉族自治县', null, '632100', null);
INSERT INTO `sys_area` VALUES ('632221', '门源回族自治县', null, '632200', null);
INSERT INTO `sys_area` VALUES ('632222', '祁连县', null, '632200', null);
INSERT INTO `sys_area` VALUES ('632223', '海晏县', null, '632200', null);
INSERT INTO `sys_area` VALUES ('632224', '刚察县', null, '632200', null);
INSERT INTO `sys_area` VALUES ('632321', '同仁县', null, '632300', null);
INSERT INTO `sys_area` VALUES ('632322', '尖扎县', null, '632300', null);
INSERT INTO `sys_area` VALUES ('632323', '泽库县', null, '632300', null);
INSERT INTO `sys_area` VALUES ('632324', '河南蒙古族自治县', null, '632300', null);
INSERT INTO `sys_area` VALUES ('632521', '共和县', null, '632500', null);
INSERT INTO `sys_area` VALUES ('632522', '同德县', null, '632500', null);
INSERT INTO `sys_area` VALUES ('632523', '贵德县', null, '632500', null);
INSERT INTO `sys_area` VALUES ('632524', '兴海县', null, '632500', null);
INSERT INTO `sys_area` VALUES ('632525', '贵南县', null, '632500', null);
INSERT INTO `sys_area` VALUES ('632621', '玛沁县', null, '632600', null);
INSERT INTO `sys_area` VALUES ('632622', '班玛县', null, '632600', null);
INSERT INTO `sys_area` VALUES ('632623', '甘德县', null, '632600', null);
INSERT INTO `sys_area` VALUES ('632624', '达日县', null, '632600', null);
INSERT INTO `sys_area` VALUES ('632625', '久治县', null, '632600', null);
INSERT INTO `sys_area` VALUES ('632626', '玛多县', null, '632600', null);
INSERT INTO `sys_area` VALUES ('632721', '玉树县', null, '632700', null);
INSERT INTO `sys_area` VALUES ('632722', '杂多县', null, '632700', null);
INSERT INTO `sys_area` VALUES ('632723', '称多县', null, '632700', null);
INSERT INTO `sys_area` VALUES ('632724', '治多县', null, '632700', null);
INSERT INTO `sys_area` VALUES ('632725', '囊谦县', null, '632700', null);
INSERT INTO `sys_area` VALUES ('632726', '曲麻莱县', null, '632700', null);
INSERT INTO `sys_area` VALUES ('632801', '格尔木市', null, '632800', null);
INSERT INTO `sys_area` VALUES ('632802', '德令哈市', null, '632800', null);
INSERT INTO `sys_area` VALUES ('632821', '乌兰县', null, '632800', null);
INSERT INTO `sys_area` VALUES ('632822', '都兰县', null, '632800', null);
INSERT INTO `sys_area` VALUES ('632823', '天峻县', null, '632800', null);
INSERT INTO `sys_area` VALUES ('640101', '市辖区', null, '640100', null);
INSERT INTO `sys_area` VALUES ('640104', '兴庆区', null, '640100', null);
INSERT INTO `sys_area` VALUES ('640105', '西夏区', null, '640100', null);
INSERT INTO `sys_area` VALUES ('640106', '金凤区', null, '640100', null);
INSERT INTO `sys_area` VALUES ('640121', '永宁县', null, '640100', null);
INSERT INTO `sys_area` VALUES ('640122', '贺兰县', null, '640100', null);
INSERT INTO `sys_area` VALUES ('640181', '灵武市', null, '640100', null);
INSERT INTO `sys_area` VALUES ('640201', '市辖区', null, '640200', null);
INSERT INTO `sys_area` VALUES ('640202', '大武口区', null, '640200', null);
INSERT INTO `sys_area` VALUES ('640205', '惠农区', null, '640200', null);
INSERT INTO `sys_area` VALUES ('640221', '平罗县', null, '640200', null);
INSERT INTO `sys_area` VALUES ('640301', '市辖区', null, '640300', null);
INSERT INTO `sys_area` VALUES ('640302', '利通区', null, '640300', null);
INSERT INTO `sys_area` VALUES ('640323', '盐池县', null, '640300', null);
INSERT INTO `sys_area` VALUES ('640324', '同心县', null, '640300', null);
INSERT INTO `sys_area` VALUES ('640381', '青铜峡市', null, '640300', null);
INSERT INTO `sys_area` VALUES ('640401', '市辖区', null, '640400', null);
INSERT INTO `sys_area` VALUES ('640402', '原州区', null, '640400', null);
INSERT INTO `sys_area` VALUES ('640422', '西吉县', null, '640400', null);
INSERT INTO `sys_area` VALUES ('640423', '隆德县', null, '640400', null);
INSERT INTO `sys_area` VALUES ('640424', '泾源县', null, '640400', null);
INSERT INTO `sys_area` VALUES ('640425', '彭阳县', null, '640400', null);
INSERT INTO `sys_area` VALUES ('640501', '市辖区', null, '640500', null);
INSERT INTO `sys_area` VALUES ('640502', '沙坡头区', null, '640500', null);
INSERT INTO `sys_area` VALUES ('640521', '中宁县', null, '640500', null);
INSERT INTO `sys_area` VALUES ('640522', '海原县', null, '640500', null);
INSERT INTO `sys_area` VALUES ('650101', '市辖区', null, '650100', null);
INSERT INTO `sys_area` VALUES ('650102', '天山区', null, '650100', null);
INSERT INTO `sys_area` VALUES ('650103', '沙依巴克区', null, '650100', null);
INSERT INTO `sys_area` VALUES ('650104', '新市区', null, '650100', null);
INSERT INTO `sys_area` VALUES ('650105', '水磨沟区', null, '650100', null);
INSERT INTO `sys_area` VALUES ('650106', '头屯河区', null, '650100', null);
INSERT INTO `sys_area` VALUES ('650107', '达坂城区', null, '650100', null);
INSERT INTO `sys_area` VALUES ('650108', '东山区', null, '650100', null);
INSERT INTO `sys_area` VALUES ('650121', '乌鲁木齐县', null, '650100', null);
INSERT INTO `sys_area` VALUES ('650201', '市辖区', null, '650200', null);
INSERT INTO `sys_area` VALUES ('650202', '独山子区', null, '650200', null);
INSERT INTO `sys_area` VALUES ('650203', '克拉玛依区', null, '650200', null);
INSERT INTO `sys_area` VALUES ('650204', '白碱滩区', null, '650200', null);
INSERT INTO `sys_area` VALUES ('650205', '乌尔禾区', null, '650200', null);
INSERT INTO `sys_area` VALUES ('652101', '吐鲁番市', null, '652100', null);
INSERT INTO `sys_area` VALUES ('652122', '鄯善县', null, '652100', null);
INSERT INTO `sys_area` VALUES ('652123', '托克逊县', null, '652100', null);
INSERT INTO `sys_area` VALUES ('652201', '哈密市', null, '652200', null);
INSERT INTO `sys_area` VALUES ('652222', '巴里坤哈萨克自治县', null, '652200', null);
INSERT INTO `sys_area` VALUES ('652223', '伊吾县', null, '652200', null);
INSERT INTO `sys_area` VALUES ('652301', '昌吉市', null, '652300', null);
INSERT INTO `sys_area` VALUES ('652302', '阜康市', null, '652300', null);
INSERT INTO `sys_area` VALUES ('652303', '米泉市', null, '652300', null);
INSERT INTO `sys_area` VALUES ('652323', '呼图壁县', null, '652300', null);
INSERT INTO `sys_area` VALUES ('652324', '玛纳斯县', null, '652300', null);
INSERT INTO `sys_area` VALUES ('652325', '奇台县', null, '652300', null);
INSERT INTO `sys_area` VALUES ('652327', '吉木萨尔县', null, '652300', null);
INSERT INTO `sys_area` VALUES ('652328', '木垒哈萨克自治县', null, '652300', null);
INSERT INTO `sys_area` VALUES ('652701', '博乐市', null, '652700', null);
INSERT INTO `sys_area` VALUES ('652722', '精河县', null, '652700', null);
INSERT INTO `sys_area` VALUES ('652723', '温泉县', null, '652700', null);
INSERT INTO `sys_area` VALUES ('652801', '库尔勒市', null, '652800', null);
INSERT INTO `sys_area` VALUES ('652822', '轮台县', null, '652800', null);
INSERT INTO `sys_area` VALUES ('652823', '尉犁县', null, '652800', null);
INSERT INTO `sys_area` VALUES ('652824', '若羌县', null, '652800', null);
INSERT INTO `sys_area` VALUES ('652825', '且末县', null, '652800', null);
INSERT INTO `sys_area` VALUES ('652826', '焉耆回族自治县', null, '652800', null);
INSERT INTO `sys_area` VALUES ('652827', '和静县', null, '652800', null);
INSERT INTO `sys_area` VALUES ('652828', '和硕县', null, '652800', null);
INSERT INTO `sys_area` VALUES ('652829', '博湖县', null, '652800', null);
INSERT INTO `sys_area` VALUES ('652901', '阿克苏市', null, '652900', null);
INSERT INTO `sys_area` VALUES ('652922', '温宿县', null, '652900', null);
INSERT INTO `sys_area` VALUES ('652923', '库车县', null, '652900', null);
INSERT INTO `sys_area` VALUES ('652924', '沙雅县', null, '652900', null);
INSERT INTO `sys_area` VALUES ('652925', '新和县', null, '652900', null);
INSERT INTO `sys_area` VALUES ('652926', '拜城县', null, '652900', null);
INSERT INTO `sys_area` VALUES ('652927', '乌什县', null, '652900', null);
INSERT INTO `sys_area` VALUES ('652928', '阿瓦提县', null, '652900', null);
INSERT INTO `sys_area` VALUES ('652929', '柯坪县', null, '652900', null);
INSERT INTO `sys_area` VALUES ('653001', '阿图什市', null, '653000', null);
INSERT INTO `sys_area` VALUES ('653022', '阿克陶县', null, '653000', null);
INSERT INTO `sys_area` VALUES ('653023', '阿合奇县', null, '653000', null);
INSERT INTO `sys_area` VALUES ('653024', '乌恰县', null, '653000', null);
INSERT INTO `sys_area` VALUES ('653101', '喀什市', null, '653100', null);
INSERT INTO `sys_area` VALUES ('653121', '疏附县', null, '653100', null);
INSERT INTO `sys_area` VALUES ('653122', '疏勒县', null, '653100', null);
INSERT INTO `sys_area` VALUES ('653123', '英吉沙县', null, '653100', null);
INSERT INTO `sys_area` VALUES ('653124', '泽普县', null, '653100', null);
INSERT INTO `sys_area` VALUES ('653125', '莎车县', null, '653100', null);
INSERT INTO `sys_area` VALUES ('653126', '叶城县', null, '653100', null);
INSERT INTO `sys_area` VALUES ('653127', '麦盖提县', null, '653100', null);
INSERT INTO `sys_area` VALUES ('653128', '岳普湖县', null, '653100', null);
INSERT INTO `sys_area` VALUES ('653129', '伽师县', null, '653100', null);
INSERT INTO `sys_area` VALUES ('653130', '巴楚县', null, '653100', null);
INSERT INTO `sys_area` VALUES ('653131', '塔什库尔干塔吉克自治县', null, '653100', null);
INSERT INTO `sys_area` VALUES ('653201', '和田市', null, '653200', null);
INSERT INTO `sys_area` VALUES ('653221', '和田县', null, '653200', null);
INSERT INTO `sys_area` VALUES ('653222', '墨玉县', null, '653200', null);
INSERT INTO `sys_area` VALUES ('653223', '皮山县', null, '653200', null);
INSERT INTO `sys_area` VALUES ('653224', '洛浦县', null, '653200', null);
INSERT INTO `sys_area` VALUES ('653225', '策勒县', null, '653200', null);
INSERT INTO `sys_area` VALUES ('653226', '于田县', null, '653200', null);
INSERT INTO `sys_area` VALUES ('653227', '民丰县', null, '653200', null);
INSERT INTO `sys_area` VALUES ('654002', '伊宁市', null, '654000', null);
INSERT INTO `sys_area` VALUES ('654003', '奎屯市', null, '654000', null);
INSERT INTO `sys_area` VALUES ('654021', '伊宁县', null, '654000', null);
INSERT INTO `sys_area` VALUES ('654022', '察布查尔锡伯自治县', null, '654000', null);
INSERT INTO `sys_area` VALUES ('654023', '霍城县', null, '654000', null);
INSERT INTO `sys_area` VALUES ('654024', '巩留县', null, '654000', null);
INSERT INTO `sys_area` VALUES ('654025', '新源县', null, '654000', null);
INSERT INTO `sys_area` VALUES ('654026', '昭苏县', null, '654000', null);
INSERT INTO `sys_area` VALUES ('654027', '特克斯县', null, '654000', null);
INSERT INTO `sys_area` VALUES ('654028', '尼勒克县', null, '654000', null);
INSERT INTO `sys_area` VALUES ('654201', '塔城市', null, '654200', null);
INSERT INTO `sys_area` VALUES ('654202', '乌苏市', null, '654200', null);
INSERT INTO `sys_area` VALUES ('654221', '额敏县', null, '654200', null);
INSERT INTO `sys_area` VALUES ('654223', '沙湾县', null, '654200', null);
INSERT INTO `sys_area` VALUES ('654224', '托里县', null, '654200', null);
INSERT INTO `sys_area` VALUES ('654225', '裕民县', null, '654200', null);
INSERT INTO `sys_area` VALUES ('654226', '和布克赛尔蒙古自治县', null, '654200', null);
INSERT INTO `sys_area` VALUES ('654301', '阿勒泰市', null, '654300', null);
INSERT INTO `sys_area` VALUES ('654321', '布尔津县', null, '654300', null);
INSERT INTO `sys_area` VALUES ('654322', '富蕴县', null, '654300', null);
INSERT INTO `sys_area` VALUES ('654323', '福海县', null, '654300', null);
INSERT INTO `sys_area` VALUES ('654324', '哈巴河县', null, '654300', null);
INSERT INTO `sys_area` VALUES ('654325', '青河县', null, '654300', null);
INSERT INTO `sys_area` VALUES ('654326', '吉木乃县', null, '654300', null);
INSERT INTO `sys_area` VALUES ('659001', '石河子市', null, '659000', null);
INSERT INTO `sys_area` VALUES ('659002', '阿拉尔市', null, '659000', null);
INSERT INTO `sys_area` VALUES ('659003', '图木舒克市', null, '659000', null);
INSERT INTO `sys_area` VALUES ('659004', '五家渠市', null, '659000', null);

-- ----------------------------
-- Table structure for sys_base_set
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_set`;
CREATE TABLE `sys_base_set` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '基础设置id',
  `hot_search` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '热门搜索关键词 ',
  `appraise_examine` int(1) DEFAULT NULL COMMENT '评价是否审批  0 是  1 否',
  `default_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '默认图片',
  `user_agreement` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户协议',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '最后修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最后修改人名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础设置';

-- ----------------------------
-- Records of sys_base_set
-- ----------------------------
INSERT INTO `sys_base_set` VALUES ('6d2070e1e32a11e8b5e72c56dc9c49c2', 'aa', '0', 'http://localhost:8082/gla/static/probimg/20190318/1552890162525.jpg', 'http://localhost:8082/gla/static/probimg/20190318/1552878270412.pdf', '1', '2019-03-19 18:14:32', 'admin', null, null);
INSERT INTO `sys_base_set` VALUES ('95abd333ce4d65154d17a77e816bac2d', 'wy', '0', null, null, '0', '2019-03-20 11:14:44', null, null, 'admin');
INSERT INTO `sys_base_set` VALUES ('e3ecaa3dc7a4332dfc0f62b5a567f929', '000000', '1', null, null, '0', '2019-03-20 12:23:36', null, null, 'admin');
INSERT INTO `sys_base_set` VALUES ('undefined', 'uuuu', '1', null, null, '0', null, 'admin', '2019-03-20 10:50:30', null);

-- ----------------------------
-- Table structure for sys_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `sys_blacklist`;
CREATE TABLE `sys_blacklist` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '黑名单id',
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户id',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '说明',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='黑名单表';

-- ----------------------------
-- Records of sys_blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for sys_browsing_history
-- ----------------------------
DROP TABLE IF EXISTS `sys_browsing_history`;
CREATE TABLE `sys_browsing_history` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '浏览历史id',
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户id',
  `history_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '历史记录内容',
  `history_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '浏览历史url',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='浏览历史表';

-- ----------------------------
-- Records of sys_browsing_history
-- ----------------------------

-- ----------------------------
-- Table structure for sys_city
-- ----------------------------
DROP TABLE IF EXISTS `sys_city`;
CREATE TABLE `sys_city` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市id',
  `city_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '市名称',
  `city_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '市编码',
  `province_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '省id',
  `order` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='市表';

-- ----------------------------
-- Records of sys_city
-- ----------------------------
INSERT INTO `sys_city` VALUES ('110100', '市辖区', null, '110000', null);
INSERT INTO `sys_city` VALUES ('110200', '县', null, '110000', null);
INSERT INTO `sys_city` VALUES ('120100', '市辖区', null, '120000', null);
INSERT INTO `sys_city` VALUES ('120200', '县', null, '120000', null);
INSERT INTO `sys_city` VALUES ('130100', '石家庄市', null, '130000', null);
INSERT INTO `sys_city` VALUES ('130200', '唐山市', null, '130000', null);
INSERT INTO `sys_city` VALUES ('130300', '秦皇岛市', null, '130000', null);
INSERT INTO `sys_city` VALUES ('130400', '邯郸市', null, '130000', null);
INSERT INTO `sys_city` VALUES ('130500', '邢台市', null, '130000', null);
INSERT INTO `sys_city` VALUES ('130600', '保定市', null, '130000', null);
INSERT INTO `sys_city` VALUES ('130700', '张家口市', null, '130000', null);
INSERT INTO `sys_city` VALUES ('130800', '承德市', null, '130000', null);
INSERT INTO `sys_city` VALUES ('130900', '沧州市', null, '130000', null);
INSERT INTO `sys_city` VALUES ('131000', '廊坊市', null, '130000', null);
INSERT INTO `sys_city` VALUES ('131100', '衡水市', null, '130000', null);
INSERT INTO `sys_city` VALUES ('140100', '太原市', null, '140000', null);
INSERT INTO `sys_city` VALUES ('140200', '大同市', null, '140000', null);
INSERT INTO `sys_city` VALUES ('140300', '阳泉市', null, '140000', null);
INSERT INTO `sys_city` VALUES ('140400', '长治市', null, '140000', null);
INSERT INTO `sys_city` VALUES ('140500', '晋城市', null, '140000', null);
INSERT INTO `sys_city` VALUES ('140600', '朔州市', null, '140000', null);
INSERT INTO `sys_city` VALUES ('140700', '晋中市', null, '140000', null);
INSERT INTO `sys_city` VALUES ('140800', '运城市', null, '140000', null);
INSERT INTO `sys_city` VALUES ('140900', '忻州市', null, '140000', null);
INSERT INTO `sys_city` VALUES ('141000', '临汾市', null, '140000', null);
INSERT INTO `sys_city` VALUES ('141100', '吕梁市', null, '140000', null);
INSERT INTO `sys_city` VALUES ('150100', '呼和浩特市', null, '150000', null);
INSERT INTO `sys_city` VALUES ('150200', '包头市', null, '150000', null);
INSERT INTO `sys_city` VALUES ('150300', '乌海市', null, '150000', null);
INSERT INTO `sys_city` VALUES ('150400', '赤峰市', null, '150000', null);
INSERT INTO `sys_city` VALUES ('150500', '通辽市', null, '150000', null);
INSERT INTO `sys_city` VALUES ('150600', '鄂尔多斯市', null, '150000', null);
INSERT INTO `sys_city` VALUES ('150700', '呼伦贝尔市', null, '150000', null);
INSERT INTO `sys_city` VALUES ('150800', '巴彦淖尔市', null, '150000', null);
INSERT INTO `sys_city` VALUES ('150900', '乌兰察布市', null, '150000', null);
INSERT INTO `sys_city` VALUES ('152200', '兴安盟', null, '150000', null);
INSERT INTO `sys_city` VALUES ('152500', '锡林郭勒盟', null, '150000', null);
INSERT INTO `sys_city` VALUES ('152900', '阿拉善盟', null, '150000', null);
INSERT INTO `sys_city` VALUES ('210100', '沈阳市', null, '210000', null);
INSERT INTO `sys_city` VALUES ('210200', '大连市', null, '210000', null);
INSERT INTO `sys_city` VALUES ('210300', '鞍山市', null, '210000', null);
INSERT INTO `sys_city` VALUES ('210400', '抚顺市', null, '210000', null);
INSERT INTO `sys_city` VALUES ('210500', '本溪市', null, '210000', null);
INSERT INTO `sys_city` VALUES ('210600', '丹东市', null, '210000', null);
INSERT INTO `sys_city` VALUES ('210700', '锦州市', null, '210000', null);
INSERT INTO `sys_city` VALUES ('210800', '营口市', null, '210000', null);
INSERT INTO `sys_city` VALUES ('210900', '阜新市', null, '210000', null);
INSERT INTO `sys_city` VALUES ('211000', '辽阳市', null, '210000', null);
INSERT INTO `sys_city` VALUES ('211100', '盘锦市', null, '210000', null);
INSERT INTO `sys_city` VALUES ('211200', '铁岭市', null, '210000', null);
INSERT INTO `sys_city` VALUES ('211300', '朝阳市', null, '210000', null);
INSERT INTO `sys_city` VALUES ('211400', '葫芦岛市', null, '210000', null);
INSERT INTO `sys_city` VALUES ('220100', '长春市', null, '220000', null);
INSERT INTO `sys_city` VALUES ('220200', '吉林市', null, '220000', null);
INSERT INTO `sys_city` VALUES ('220300', '四平市', null, '220000', null);
INSERT INTO `sys_city` VALUES ('220400', '辽源市', null, '220000', null);
INSERT INTO `sys_city` VALUES ('220500', '通化市', null, '220000', null);
INSERT INTO `sys_city` VALUES ('220600', '白山市', null, '220000', null);
INSERT INTO `sys_city` VALUES ('220700', '松原市', null, '220000', null);
INSERT INTO `sys_city` VALUES ('220800', '白城市', null, '220000', null);
INSERT INTO `sys_city` VALUES ('222400', '延边朝鲜族自治州', null, '220000', null);
INSERT INTO `sys_city` VALUES ('230100', '哈尔滨市', null, '230000', null);
INSERT INTO `sys_city` VALUES ('230200', '齐齐哈尔市', null, '230000', null);
INSERT INTO `sys_city` VALUES ('230300', '鸡西市', null, '230000', null);
INSERT INTO `sys_city` VALUES ('230400', '鹤岗市', null, '230000', null);
INSERT INTO `sys_city` VALUES ('230500', '双鸭山市', null, '230000', null);
INSERT INTO `sys_city` VALUES ('230600', '大庆市', null, '230000', null);
INSERT INTO `sys_city` VALUES ('230700', '伊春市', null, '230000', null);
INSERT INTO `sys_city` VALUES ('230800', '佳木斯市', null, '230000', null);
INSERT INTO `sys_city` VALUES ('230900', '七台河市', null, '230000', null);
INSERT INTO `sys_city` VALUES ('231000', '牡丹江市', null, '230000', null);
INSERT INTO `sys_city` VALUES ('231100', '黑河市', null, '230000', null);
INSERT INTO `sys_city` VALUES ('231200', '绥化市', null, '230000', null);
INSERT INTO `sys_city` VALUES ('232700', '大兴安岭地区', null, '230000', null);
INSERT INTO `sys_city` VALUES ('310100', '市辖区', null, '310000', null);
INSERT INTO `sys_city` VALUES ('310200', '县', null, '310000', null);
INSERT INTO `sys_city` VALUES ('320100', '南京市', null, '320000', null);
INSERT INTO `sys_city` VALUES ('320200', '无锡市', null, '320000', null);
INSERT INTO `sys_city` VALUES ('320300', '徐州市', null, '320000', null);
INSERT INTO `sys_city` VALUES ('320400', '常州市', null, '320000', null);
INSERT INTO `sys_city` VALUES ('320500', '苏州市', null, '320000', null);
INSERT INTO `sys_city` VALUES ('320600', '南通市', null, '320000', null);
INSERT INTO `sys_city` VALUES ('320700', '连云港市', null, '320000', null);
INSERT INTO `sys_city` VALUES ('320800', '淮安市', null, '320000', null);
INSERT INTO `sys_city` VALUES ('320900', '盐城市', null, '320000', null);
INSERT INTO `sys_city` VALUES ('321000', '扬州市', null, '320000', null);
INSERT INTO `sys_city` VALUES ('321100', '镇江市', null, '320000', null);
INSERT INTO `sys_city` VALUES ('321200', '泰州市', null, '320000', null);
INSERT INTO `sys_city` VALUES ('321300', '宿迁市', null, '320000', null);
INSERT INTO `sys_city` VALUES ('330100', '杭州市', null, '330000', null);
INSERT INTO `sys_city` VALUES ('330200', '宁波市', null, '330000', null);
INSERT INTO `sys_city` VALUES ('330300', '温州市', null, '330000', null);
INSERT INTO `sys_city` VALUES ('330400', '嘉兴市', null, '330000', null);
INSERT INTO `sys_city` VALUES ('330500', '湖州市', null, '330000', null);
INSERT INTO `sys_city` VALUES ('330600', '绍兴市', null, '330000', null);
INSERT INTO `sys_city` VALUES ('330700', '金华市', null, '330000', null);
INSERT INTO `sys_city` VALUES ('330800', '衢州市', null, '330000', null);
INSERT INTO `sys_city` VALUES ('330900', '舟山市', null, '330000', null);
INSERT INTO `sys_city` VALUES ('331000', '台州市', null, '330000', null);
INSERT INTO `sys_city` VALUES ('331100', '丽水市', null, '330000', null);
INSERT INTO `sys_city` VALUES ('340100', '合肥市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('340200', '芜湖市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('340300', '蚌埠市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('340400', '淮南市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('340500', '马鞍山市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('340600', '淮北市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('340700', '铜陵市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('340800', '安庆市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('341000', '黄山市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('341100', '滁州市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('341200', '阜阳市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('341300', '宿州市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('341400', '巢湖市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('341500', '六安市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('341600', '亳州市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('341700', '池州市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('341800', '宣城市', null, '340000', null);
INSERT INTO `sys_city` VALUES ('350100', '福州市', null, '350000', null);
INSERT INTO `sys_city` VALUES ('350200', '厦门市', null, '350000', null);
INSERT INTO `sys_city` VALUES ('350300', '莆田市', null, '350000', null);
INSERT INTO `sys_city` VALUES ('350400', '三明市', null, '350000', null);
INSERT INTO `sys_city` VALUES ('350500', '泉州市', null, '350000', null);
INSERT INTO `sys_city` VALUES ('350600', '漳州市', null, '350000', null);
INSERT INTO `sys_city` VALUES ('350700', '南平市', null, '350000', null);
INSERT INTO `sys_city` VALUES ('350800', '龙岩市', null, '350000', null);
INSERT INTO `sys_city` VALUES ('350900', '宁德市', null, '350000', null);
INSERT INTO `sys_city` VALUES ('360100', '南昌市', null, '360000', null);
INSERT INTO `sys_city` VALUES ('360200', '景德镇市', null, '360000', null);
INSERT INTO `sys_city` VALUES ('360300', '萍乡市', null, '360000', null);
INSERT INTO `sys_city` VALUES ('360400', '九江市', null, '360000', null);
INSERT INTO `sys_city` VALUES ('360500', '新余市', null, '360000', null);
INSERT INTO `sys_city` VALUES ('360600', '鹰潭市', null, '360000', null);
INSERT INTO `sys_city` VALUES ('360700', '赣州市', null, '360000', null);
INSERT INTO `sys_city` VALUES ('360800', '吉安市', null, '360000', null);
INSERT INTO `sys_city` VALUES ('360900', '宜春市', null, '360000', null);
INSERT INTO `sys_city` VALUES ('361000', '抚州市', null, '360000', null);
INSERT INTO `sys_city` VALUES ('361100', '上饶市', null, '360000', null);
INSERT INTO `sys_city` VALUES ('370100', '济南市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('370200', '青岛市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('370300', '淄博市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('370400', '枣庄市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('370500', '东营市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('370600', '烟台市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('370700', '潍坊市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('370800', '济宁市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('370900', '泰安市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('371000', '威海市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('371100', '日照市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('371200', '莱芜市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('371300', '临沂市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('371400', '德州市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('371500', '聊城市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('371600', '滨州市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('371700', '荷泽市', null, '370000', null);
INSERT INTO `sys_city` VALUES ('410100', '郑州市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('410200', '开封市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('410300', '洛阳市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('410400', '平顶山市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('410500', '安阳市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('410600', '鹤壁市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('410700', '新乡市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('410800', '焦作市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('410900', '濮阳市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('411000', '许昌市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('411100', '漯河市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('411200', '三门峡市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('411300', '南阳市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('411400', '商丘市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('411500', '信阳市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('411600', '周口市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('411700', '驻马店市', null, '410000', null);
INSERT INTO `sys_city` VALUES ('420100', '武汉市', null, '420000', null);
INSERT INTO `sys_city` VALUES ('420200', '黄石市', null, '420000', null);
INSERT INTO `sys_city` VALUES ('420300', '十堰市', null, '420000', null);
INSERT INTO `sys_city` VALUES ('420500', '宜昌市', null, '420000', null);
INSERT INTO `sys_city` VALUES ('420600', '襄樊市', null, '420000', null);
INSERT INTO `sys_city` VALUES ('420700', '鄂州市', null, '420000', null);
INSERT INTO `sys_city` VALUES ('420800', '荆门市', null, '420000', null);
INSERT INTO `sys_city` VALUES ('420900', '孝感市', null, '420000', null);
INSERT INTO `sys_city` VALUES ('421000', '荆州市', null, '420000', null);
INSERT INTO `sys_city` VALUES ('421100', '黄冈市', null, '420000', null);
INSERT INTO `sys_city` VALUES ('421200', '咸宁市', null, '420000', null);
INSERT INTO `sys_city` VALUES ('421300', '随州市', null, '420000', null);
INSERT INTO `sys_city` VALUES ('422800', '恩施土家族苗族自治州', null, '420000', null);
INSERT INTO `sys_city` VALUES ('429000', '省直辖行政单位', null, '420000', null);
INSERT INTO `sys_city` VALUES ('430100', '长沙市', null, '430000', null);
INSERT INTO `sys_city` VALUES ('430200', '株洲市', null, '430000', null);
INSERT INTO `sys_city` VALUES ('430300', '湘潭市', null, '430000', null);
INSERT INTO `sys_city` VALUES ('430400', '衡阳市', null, '430000', null);
INSERT INTO `sys_city` VALUES ('430500', '邵阳市', null, '430000', null);
INSERT INTO `sys_city` VALUES ('430600', '岳阳市', null, '430000', null);
INSERT INTO `sys_city` VALUES ('430700', '常德市', null, '430000', null);
INSERT INTO `sys_city` VALUES ('430800', '张家界市', null, '430000', null);
INSERT INTO `sys_city` VALUES ('430900', '益阳市', null, '430000', null);
INSERT INTO `sys_city` VALUES ('431000', '郴州市', null, '430000', null);
INSERT INTO `sys_city` VALUES ('431100', '永州市', null, '430000', null);
INSERT INTO `sys_city` VALUES ('431200', '怀化市', null, '430000', null);
INSERT INTO `sys_city` VALUES ('431300', '娄底市', null, '430000', null);
INSERT INTO `sys_city` VALUES ('433100', '湘西土家族苗族自治州', null, '430000', null);
INSERT INTO `sys_city` VALUES ('440100', '广州市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('440200', '韶关市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('440300', '深圳市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('440400', '珠海市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('440500', '汕头市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('440600', '佛山市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('440700', '江门市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('440800', '湛江市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('440900', '茂名市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('441200', '肇庆市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('441300', '惠州市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('441400', '梅州市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('441500', '汕尾市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('441600', '河源市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('441700', '阳江市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('441800', '清远市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('441900', '东莞市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('442000', '中山市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('445100', '潮州市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('445200', '揭阳市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('445300', '云浮市', null, '440000', null);
INSERT INTO `sys_city` VALUES ('450100', '南宁市', null, '450000', null);
INSERT INTO `sys_city` VALUES ('450200', '柳州市', null, '450000', null);
INSERT INTO `sys_city` VALUES ('450300', '桂林市', null, '450000', null);
INSERT INTO `sys_city` VALUES ('450400', '梧州市', null, '450000', null);
INSERT INTO `sys_city` VALUES ('450500', '北海市', null, '450000', null);
INSERT INTO `sys_city` VALUES ('450600', '防城港市', null, '450000', null);
INSERT INTO `sys_city` VALUES ('450700', '钦州市', null, '450000', null);
INSERT INTO `sys_city` VALUES ('450800', '贵港市', null, '450000', null);
INSERT INTO `sys_city` VALUES ('450900', '玉林市', null, '450000', null);
INSERT INTO `sys_city` VALUES ('451000', '百色市', null, '450000', null);
INSERT INTO `sys_city` VALUES ('451100', '贺州市', null, '450000', null);
INSERT INTO `sys_city` VALUES ('451200', '河池市', null, '450000', null);
INSERT INTO `sys_city` VALUES ('451300', '来宾市', null, '450000', null);
INSERT INTO `sys_city` VALUES ('451400', '崇左市', null, '450000', null);
INSERT INTO `sys_city` VALUES ('460100', '海口市', null, '460000', null);
INSERT INTO `sys_city` VALUES ('460200', '三亚市', null, '460000', null);
INSERT INTO `sys_city` VALUES ('469000', '省直辖县级行政单位', null, '460000', null);
INSERT INTO `sys_city` VALUES ('500100', '市辖区', null, '500000', null);
INSERT INTO `sys_city` VALUES ('500200', '县', null, '500000', null);
INSERT INTO `sys_city` VALUES ('500300', '市', null, '500000', null);
INSERT INTO `sys_city` VALUES ('510100', '成都市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('510300', '自贡市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('510400', '攀枝花市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('510500', '泸州市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('510600', '德阳市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('510700', '绵阳市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('510800', '广元市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('510900', '遂宁市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('511000', '内江市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('511100', '乐山市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('511300', '南充市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('511400', '眉山市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('511500', '宜宾市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('511600', '广安市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('511700', '达州市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('511800', '雅安市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('511900', '巴中市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('512000', '资阳市', null, '510000', null);
INSERT INTO `sys_city` VALUES ('513200', '阿坝藏族羌族自治州', null, '510000', null);
INSERT INTO `sys_city` VALUES ('513300', '甘孜藏族自治州', null, '510000', null);
INSERT INTO `sys_city` VALUES ('513400', '凉山彝族自治州', null, '510000', null);
INSERT INTO `sys_city` VALUES ('520100', '贵阳市', null, '520000', null);
INSERT INTO `sys_city` VALUES ('520200', '六盘水市', null, '520000', null);
INSERT INTO `sys_city` VALUES ('520300', '遵义市', null, '520000', null);
INSERT INTO `sys_city` VALUES ('520400', '安顺市', null, '520000', null);
INSERT INTO `sys_city` VALUES ('522200', '铜仁地区', null, '520000', null);
INSERT INTO `sys_city` VALUES ('522300', '黔西南布依族苗族自治州', null, '520000', null);
INSERT INTO `sys_city` VALUES ('522400', '毕节地区', null, '520000', null);
INSERT INTO `sys_city` VALUES ('522600', '黔东南苗族侗族自治州', null, '520000', null);
INSERT INTO `sys_city` VALUES ('522700', '黔南布依族苗族自治州', null, '520000', null);
INSERT INTO `sys_city` VALUES ('530100', '昆明市', null, '530000', null);
INSERT INTO `sys_city` VALUES ('530300', '曲靖市', null, '530000', null);
INSERT INTO `sys_city` VALUES ('530400', '玉溪市', null, '530000', null);
INSERT INTO `sys_city` VALUES ('530500', '保山市', null, '530000', null);
INSERT INTO `sys_city` VALUES ('530600', '昭通市', null, '530000', null);
INSERT INTO `sys_city` VALUES ('530700', '丽江市', null, '530000', null);
INSERT INTO `sys_city` VALUES ('530800', '思茅市', null, '530000', null);
INSERT INTO `sys_city` VALUES ('530900', '临沧市', null, '530000', null);
INSERT INTO `sys_city` VALUES ('532300', '楚雄彝族自治州', null, '530000', null);
INSERT INTO `sys_city` VALUES ('532500', '红河哈尼族彝族自治州', null, '530000', null);
INSERT INTO `sys_city` VALUES ('532600', '文山壮族苗族自治州', null, '530000', null);
INSERT INTO `sys_city` VALUES ('532800', '西双版纳傣族自治州', null, '530000', null);
INSERT INTO `sys_city` VALUES ('532900', '大理白族自治州', null, '530000', null);
INSERT INTO `sys_city` VALUES ('533100', '德宏傣族景颇族自治州', null, '530000', null);
INSERT INTO `sys_city` VALUES ('533300', '怒江傈僳族自治州', null, '530000', null);
INSERT INTO `sys_city` VALUES ('533400', '迪庆藏族自治州', null, '530000', null);
INSERT INTO `sys_city` VALUES ('540100', '拉萨市', null, '540000', null);
INSERT INTO `sys_city` VALUES ('542100', '昌都地区', null, '540000', null);
INSERT INTO `sys_city` VALUES ('542200', '山南地区', null, '540000', null);
INSERT INTO `sys_city` VALUES ('542300', '日喀则地区', null, '540000', null);
INSERT INTO `sys_city` VALUES ('542400', '那曲地区', null, '540000', null);
INSERT INTO `sys_city` VALUES ('542500', '阿里地区', null, '540000', null);
INSERT INTO `sys_city` VALUES ('542600', '林芝地区', null, '540000', null);
INSERT INTO `sys_city` VALUES ('610100', '西安市', null, '610000', null);
INSERT INTO `sys_city` VALUES ('610200', '铜川市', null, '610000', null);
INSERT INTO `sys_city` VALUES ('610300', '宝鸡市', null, '610000', null);
INSERT INTO `sys_city` VALUES ('610400', '咸阳市', null, '610000', null);
INSERT INTO `sys_city` VALUES ('610500', '渭南市', null, '610000', null);
INSERT INTO `sys_city` VALUES ('610600', '延安市', null, '610000', null);
INSERT INTO `sys_city` VALUES ('610700', '汉中市', null, '610000', null);
INSERT INTO `sys_city` VALUES ('610800', '榆林市', null, '610000', null);
INSERT INTO `sys_city` VALUES ('610900', '安康市', null, '610000', null);
INSERT INTO `sys_city` VALUES ('611000', '商洛市', null, '610000', null);
INSERT INTO `sys_city` VALUES ('620100', '兰州市', null, '620000', null);
INSERT INTO `sys_city` VALUES ('620200', '嘉峪关市', null, '620000', null);
INSERT INTO `sys_city` VALUES ('620300', '金昌市', null, '620000', null);
INSERT INTO `sys_city` VALUES ('620400', '白银市', null, '620000', null);
INSERT INTO `sys_city` VALUES ('620500', '天水市', null, '620000', null);
INSERT INTO `sys_city` VALUES ('620600', '武威市', null, '620000', null);
INSERT INTO `sys_city` VALUES ('620700', '张掖市', null, '620000', null);
INSERT INTO `sys_city` VALUES ('620800', '平凉市', null, '620000', null);
INSERT INTO `sys_city` VALUES ('620900', '酒泉市', null, '620000', null);
INSERT INTO `sys_city` VALUES ('621000', '庆阳市', null, '620000', null);
INSERT INTO `sys_city` VALUES ('621100', '定西市', null, '620000', null);
INSERT INTO `sys_city` VALUES ('621200', '陇南市', null, '620000', null);
INSERT INTO `sys_city` VALUES ('622900', '临夏回族自治州', null, '620000', null);
INSERT INTO `sys_city` VALUES ('623000', '甘南藏族自治州', null, '620000', null);
INSERT INTO `sys_city` VALUES ('630100', '西宁市', null, '630000', null);
INSERT INTO `sys_city` VALUES ('632100', '海东地区', null, '630000', null);
INSERT INTO `sys_city` VALUES ('632200', '海北藏族自治州', null, '630000', null);
INSERT INTO `sys_city` VALUES ('632300', '黄南藏族自治州', null, '630000', null);
INSERT INTO `sys_city` VALUES ('632500', '海南藏族自治州', null, '630000', null);
INSERT INTO `sys_city` VALUES ('632600', '果洛藏族自治州', null, '630000', null);
INSERT INTO `sys_city` VALUES ('632700', '玉树藏族自治州', null, '630000', null);
INSERT INTO `sys_city` VALUES ('632800', '海西蒙古族藏族自治州', null, '630000', null);
INSERT INTO `sys_city` VALUES ('640100', '银川市', null, '640000', null);
INSERT INTO `sys_city` VALUES ('640200', '石嘴山市', null, '640000', null);
INSERT INTO `sys_city` VALUES ('640300', '吴忠市', null, '640000', null);
INSERT INTO `sys_city` VALUES ('640400', '固原市', null, '640000', null);
INSERT INTO `sys_city` VALUES ('640500', '中卫市', null, '640000', null);
INSERT INTO `sys_city` VALUES ('650100', '乌鲁木齐市', null, '650000', null);
INSERT INTO `sys_city` VALUES ('650200', '克拉玛依市', null, '650000', null);
INSERT INTO `sys_city` VALUES ('652100', '吐鲁番地区', null, '650000', null);
INSERT INTO `sys_city` VALUES ('652200', '哈密地区', null, '650000', null);
INSERT INTO `sys_city` VALUES ('652300', '昌吉回族自治州', null, '650000', null);
INSERT INTO `sys_city` VALUES ('652700', '博尔塔拉蒙古自治州', null, '650000', null);
INSERT INTO `sys_city` VALUES ('652800', '巴音郭楞蒙古自治州', null, '650000', null);
INSERT INTO `sys_city` VALUES ('652900', '阿克苏地区', null, '650000', null);
INSERT INTO `sys_city` VALUES ('653000', '克孜勒苏柯尔克孜自治州', null, '650000', null);
INSERT INTO `sys_city` VALUES ('653100', '喀什地区', null, '650000', null);
INSERT INTO `sys_city` VALUES ('653200', '和田地区', null, '650000', null);
INSERT INTO `sys_city` VALUES ('654000', '伊犁哈萨克自治州', null, '650000', null);
INSERT INTO `sys_city` VALUES ('654200', '塔城地区', null, '650000', null);
INSERT INTO `sys_city` VALUES ('654300', '阿勒泰地区', null, '650000', null);
INSERT INTO `sys_city` VALUES ('659000', '省直辖行政单位', null, '650000', null);

-- ----------------------------
-- Table structure for sys_employee
-- ----------------------------
DROP TABLE IF EXISTS `sys_employee`;
CREATE TABLE `sys_employee` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主键',
  `employee_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户登录账号',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号密码',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `status` int(1) DEFAULT NULL COMMENT '用户状态  0 启用  1 失效',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_employee
-- ----------------------------
INSERT INTO `sys_employee` VALUES ('00cd7bd40857e7185a4c9eca886ea5f5', 'aa', 'aa', 'aa', '13652321719', '1', '2019-03-20 15:00:53', 'admin', null, null);
INSERT INTO `sys_employee` VALUES ('477085e84bc55fb22b7fad32cb6da8c0', '薛明', 'xueming', '5523', '15236523217', '0', '2019-03-20 09:40:05', 'admin', null, null);
INSERT INTO `sys_employee` VALUES ('6d2070e1e32a11e8b5e72c56dc9c49c2', '周纯', 'admin', '88212f91e2e9cf36981a91b6c518af5c', '18682450122', '0', '2019-03-12 14:29:08', '周纯', '2019-03-12 14:29:10', '周纯');
INSERT INTO `sys_employee` VALUES ('b15594ca29994d16aac94fb3c61cfaff', '王涛', 'tao', '88212f91e2e9cf36981a91b6c518af5c', '13652981415', '0', '2019-03-19 16:32:27', 'admin', null, null);
INSERT INTO `sys_employee` VALUES ('ceb40f3a233ef97c3824a5fcaa556c31', '壹佰', 'yiibai', '8080', '19963231574', '1', '2019-03-19 17:04:25', 'admin', null, null);

-- ----------------------------
-- Table structure for sys_employee_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_employee_role`;
CREATE TABLE `sys_employee_role` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户角色id',
  `employee_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '员工id',
  `role_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of sys_employee_role
-- ----------------------------
INSERT INTO `sys_employee_role` VALUES ('78b59516-f9ce-11e8-b76e-2c56dc9c49c2', '6d2070e1e32a11e8b5e72c56dc9c49c2', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2');
INSERT INTO `sys_employee_role` VALUES ('9e535b76-f9ce-11e8-b76e-2c56dc9c49c2', '6d2070e1e32a11e8b5e72c56dc9c49c3', '66bee58e-f9cd-11e8-b76e-2c56dc9c49c2');
INSERT INTO `sys_employee_role` VALUES ('9e535b76-f9ce-11e8-b76e-2c56dc9c49c3', '6d2070e1e32a11e8b5e72c56dc9c49c2', '66bee58e-f9cd-11e8-b76e-2c56dc9c49c2');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志id',
  `log_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '日志类型',
  `log_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '日志内容',
  `log_moudle` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '日志模块',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('008bcf38464011e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 18:00:28', null, '2019-03-14 18:00:28', null, '0');
INSERT INTO `sys_log` VALUES ('00db5432456d11e9b18f2c56dcd4f98f', '审核商品', '{}', '商品管理', '2019-03-13 16:49:38', null, '2019-03-13 16:49:38', null, '0');
INSERT INTO `sys_log` VALUES ('0102b7f2463511e99da72c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-14 16:41:45', null, '2019-03-14 16:41:45', null, '0');
INSERT INTO `sys_log` VALUES ('01254587462e11e99da72c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-14 15:51:38', null, '2019-03-14 15:51:38', null, '0');
INSERT INTO `sys_log` VALUES ('01b75d3c456d11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:49:39', null, '2019-03-13 16:49:39', null, '0');
INSERT INTO `sys_log` VALUES ('01bd76ac462a11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:23:01', null, '2019-03-14 15:23:01', null, '0');
INSERT INTO `sys_log` VALUES ('01cf9224456111e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:23:45', null, '2019-03-13 15:23:45', null, '0');
INSERT INTO `sys_log` VALUES ('0229a276457211e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:25:28', null, '2019-03-13 17:25:28', null, '0');
INSERT INTO `sys_log` VALUES ('023f4cc8464211e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 18:14:50', null, '2019-03-14 18:14:50', null, '0');
INSERT INTO `sys_log` VALUES ('02600b9d462a11e99da72c56dcd4f98f', '跳转到新增页面', '{}', '商家管理', '2019-03-14 15:23:02', null, '2019-03-14 15:23:02', null, '0');
INSERT INTO `sys_log` VALUES ('02e05d72464211e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 18:14:51', null, '2019-03-14 18:14:51', null, '0');
INSERT INTO `sys_log` VALUES ('03e2719a463511e99da72c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-14 16:41:49', null, '2019-03-14 16:41:49', null, '0');
INSERT INTO `sys_log` VALUES ('04a97e21464211e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:14:54', null, '2019-03-14 18:14:54', null, '0');
INSERT INTO `sys_log` VALUES ('050f12c7464211e99da72c56dcd4f98f', '跳转到新增页面', '{}', '商品库存管理', '2019-03-14 18:14:55', null, '2019-03-14 18:14:55', null, '0');
INSERT INTO `sys_log` VALUES ('05950bb2455e11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 15:02:23', null, '2019-03-13 15:02:23', null, '0');
INSERT INTO `sys_log` VALUES ('0665852a456311e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 15:38:12', null, '2019-03-13 15:38:12', null, '0');
INSERT INTO `sys_log` VALUES ('06700d0b464211e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:14:57', null, '2019-03-14 18:14:57', null, '0');
INSERT INTO `sys_log` VALUES ('06bb0b52455e11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:02:25', null, '2019-03-13 15:02:25', null, '0');
INSERT INTO `sys_log` VALUES ('06c90ab0463511e99da72c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-14 16:41:54', null, '2019-03-14 16:41:54', null, '0');
INSERT INTO `sys_log` VALUES ('07260d98464211e99da72c56dcd4f98f', '跳转到修改页面', '{}', '商品库存管理', '2019-03-14 18:14:58', null, '2019-03-14 18:14:58', null, '0');
INSERT INTO `sys_log` VALUES ('075e4ee1463511e99da72c56dcd4f98f', '分页查询分类数据', '{\"page\":[\"1\"]}', '一级分类', '2019-03-14 16:41:55', null, '2019-03-14 16:41:55', null, '0');
INSERT INTO `sys_log` VALUES ('07a0d3ca463511e99da72c56dcd4f98f', '分页查询商品二级分类数据', '{\"page\":[\"2\"]}', '二级分类', '2019-03-14 16:41:56', null, '2019-03-14 16:41:56', null, '0');
INSERT INTO `sys_log` VALUES ('07bffe48455e11e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 15:02:27', null, '2019-03-13 15:02:27', null, '0');
INSERT INTO `sys_log` VALUES ('0802aa6f456311e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:38:15', null, '2019-03-13 15:38:15', null, '0');
INSERT INTO `sys_log` VALUES ('080f815e464211e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:15:00', null, '2019-03-14 18:15:00', null, '0');
INSERT INTO `sys_log` VALUES ('08276107462b11e99da72c56dcd4f98f', ' 新增或修改商家', '{\"brandName\":[\"???\"],\"businessName\":[\"????\"],\"mobile\":[\"12345678912\"],\"id\":[\"\"],\"businessAddress\":[\"??????\"]}', '商家管理', '2019-03-14 15:30:22', null, '2019-03-14 15:30:22', null, '0');
INSERT INTO `sys_log` VALUES ('083e14d4456d11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:49:50', null, '2019-03-13 16:49:50', null, '0');
INSERT INTO `sys_log` VALUES ('08e7e080462b11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:30:23', null, '2019-03-14 15:30:23', null, '0');
INSERT INTO `sys_log` VALUES ('092e96f8456311e9b18f2c56dcd4f98f', '跳转到修改商品页面', '{}', '商品管理', '2019-03-13 15:38:17', null, '2019-03-13 15:38:17', null, '0');
INSERT INTO `sys_log` VALUES ('09b71164463111e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 16:13:21', null, '2019-03-14 16:13:21', null, '0');
INSERT INTO `sys_log` VALUES ('0acb5851463511e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 16:42:01', null, '2019-03-14 16:42:01', null, '0');
INSERT INTO `sys_log` VALUES ('0c8d0091463111e99da72c56dcd4f98f', '分页查询分类数据', '{\"page\":[\"1\"]}', '一级分类', '2019-03-14 16:13:26', null, '2019-03-14 16:13:26', null, '0');
INSERT INTO `sys_log` VALUES ('0d44be29463111e99da72c56dcd4f98f', '分页查询商品二级分类数据', '{\"page\":[\"2\"]}', '二级分类', '2019-03-14 16:13:27', null, '2019-03-14 16:13:27', null, '0');
INSERT INTO `sys_log` VALUES ('0dad2c82463111e99da72c56dcd4f98f', '分页查询分类数据', '{\"page\":[\"1\"]}', '一级分类', '2019-03-14 16:13:28', null, '2019-03-14 16:13:28', null, '0');
INSERT INTO `sys_log` VALUES ('0e24703e463111e99da72c56dcd4f98f', '跳转到新增页面', '{}', '一级分类', '2019-03-14 16:13:29', null, '2019-03-14 16:13:29', null, '0');
INSERT INTO `sys_log` VALUES ('102c08b7455f11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 15:09:51', null, '2019-03-13 15:09:51', null, '0');
INSERT INTO `sys_log` VALUES ('1036222d455a11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 14:34:03', null, '2019-03-13 14:34:03', null, '0');
INSERT INTO `sys_log` VALUES ('1135251d455a11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 14:34:05', null, '2019-03-13 14:34:05', null, '0');
INSERT INTO `sys_log` VALUES ('11574de0455f11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:09:53', null, '2019-03-13 15:09:53', null, '0');
INSERT INTO `sys_log` VALUES ('11d2d780455f11e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 15:09:53', null, '2019-03-13 15:09:53', null, '0');
INSERT INTO `sys_log` VALUES ('127b0ace456d11e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 16:50:07', null, '2019-03-13 16:50:07', null, '0');
INSERT INTO `sys_log` VALUES ('147b5922457211e9b18f2c56dcd4f98f', '跳转到修改商品页面', '{}', '商品管理', '2019-03-13 17:25:58', null, '2019-03-13 17:25:58', null, '0');
INSERT INTO `sys_log` VALUES ('159fd64a457d11e9b18f2c56dcd4f98f', '跳转到登录界面', '{}', '日志模块', '2019-03-13 18:44:44', null, '2019-03-13 18:44:44', null, '0');
INSERT INTO `sys_log` VALUES ('16678728457d11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 18:44:46', null, '2019-03-13 18:44:46', null, '0');
INSERT INTO `sys_log` VALUES ('16d12b27456211e9b18f2c56dcd4f98f', '新增商品数据', '{\"goodsImg\":[\"\"],\"goodsSortId\":[\"14639f4a453911e9b18f2c56dcd4f98f\"],\"goodsSubhead\":[\"\"],\"goodsBrandId\":[\"a240838d456111e9b18f2c56dcd4f98f\"],\"costPrice\":[\"50\"],\"goodsTag\":[\"\"],\"bindBusiness\":[\"0d31a798425711e99485525400c68bfa\"],\"goodsModel\":[\"\"],\"goodsSuggest\":[\"????\"],\"goodsName\":[\"?????\"]}', '商品管理', '2019-03-13 15:31:30', null, '2019-03-13 15:31:30', null, '0');
INSERT INTO `sys_log` VALUES ('1796546a457d11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 18:44:48', null, '2019-03-13 18:44:48', null, '0');
INSERT INTO `sys_log` VALUES ('179d5396455e11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 15:02:54', null, '2019-03-13 15:02:54', null, '0');
INSERT INTO `sys_log` VALUES ('17b2760d456211e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:31:32', null, '2019-03-13 15:31:32', null, '0');
INSERT INTO `sys_log` VALUES ('18867072457d11e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 18:44:50', null, '2019-03-13 18:44:50', null, '0');
INSERT INTO `sys_log` VALUES ('189469bc462e11e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 15:52:18', null, '2019-03-14 15:52:18', null, '0');
INSERT INTO `sys_log` VALUES ('190cad60455e11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:02:56', null, '2019-03-13 15:02:56', null, '0');
INSERT INTO `sys_log` VALUES ('1983fa0e455e11e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 15:02:57', null, '2019-03-13 15:02:57', null, '0');
INSERT INTO `sys_log` VALUES ('19d314e7462e11e99da72c56dcd4f98f', '分页查询代理商数据', '{}', '代理商模块', '2019-03-14 15:52:20', null, '2019-03-14 15:52:20', null, '0');
INSERT INTO `sys_log` VALUES ('1a92e58f463711e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 16:56:46', null, '2019-03-14 16:56:46', null, '0');
INSERT INTO `sys_log` VALUES ('1b2200ad462e11e99da72c56dcd4f98f', '分页查询终端数据', '{}', '终端管理', '2019-03-14 15:52:22', null, '2019-03-14 15:52:22', null, '0');
INSERT INTO `sys_log` VALUES ('2083f834456311e9b18f2c56dcd4f98f', '分页查询信息', '{}', '消息设置模块', '2019-03-13 15:38:56', null, '2019-03-13 15:38:56', null, '0');
INSERT INTO `sys_log` VALUES ('211460da463711e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 16:56:57', null, '2019-03-14 16:56:57', null, '0');
INSERT INTO `sys_log` VALUES ('214e5d19456311e9b18f2c56dcd4f98f', '跳转到新增页面', '{}', '消息设置模块', '2019-03-13 15:38:57', null, '2019-03-13 15:38:57', null, '0');
INSERT INTO `sys_log` VALUES ('2247a5b2462a11e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 15:23:56', null, '2019-03-14 15:23:56', null, '0');
INSERT INTO `sys_log` VALUES ('238bbd9f462a11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:23:58', null, '2019-03-14 15:23:58', null, '0');
INSERT INTO `sys_log` VALUES ('2435785f456311e9b18f2c56dcd4f98f', '分页查询信息', '{}', '消息设置模块', '2019-03-13 15:39:02', null, '2019-03-13 15:39:02', null, '0');
INSERT INTO `sys_log` VALUES ('244e8348462a11e99da72c56dcd4f98f', '跳转到新增页面', '{}', '商家管理', '2019-03-14 15:23:59', null, '2019-03-14 15:23:59', null, '0');
INSERT INTO `sys_log` VALUES ('24a23f6f463111e99da72c56dcd4f98f', '新增或修改商品分类', '{\"sortName\":[\"??\"],\"id\":[\"\"],\"sort\":[\"1\"]}', '一级分类', '2019-03-14 16:14:06', null, '2019-03-14 16:14:06', null, '0');
INSERT INTO `sys_log` VALUES ('24bad816457011e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 17:12:07', null, '2019-03-13 17:12:07', null, '0');
INSERT INTO `sys_log` VALUES ('24d6a57f462b11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:31:10', null, '2019-03-14 15:31:10', null, '0');
INSERT INTO `sys_log` VALUES ('25958d46462b11e99da72c56dcd4f98f', '跳转到新增页面', '{}', '商家管理', '2019-03-14 15:31:11', null, '2019-03-14 15:31:11', null, '0');
INSERT INTO `sys_log` VALUES ('25ff0a6c463111e99da72c56dcd4f98f', '分页查询分类数据', '{}', '一级分类', '2019-03-14 16:14:09', null, '2019-03-14 16:14:09', null, '0');
INSERT INTO `sys_log` VALUES ('2632f793457011e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:12:09', null, '2019-03-13 17:12:09', null, '0');
INSERT INTO `sys_log` VALUES ('268dae34463111e99da72c56dcd4f98f', '分页查询商品二级分类数据', '{\"page\":[\"2\"]}', '二级分类', '2019-03-14 16:14:10', null, '2019-03-14 16:14:10', null, '0');
INSERT INTO `sys_log` VALUES ('2714e8fe463111e99da72c56dcd4f98f', '跳转到新增页面', '{}', '二级分类', '2019-03-14 16:14:10', null, '2019-03-14 16:14:10', null, '0');
INSERT INTO `sys_log` VALUES ('27163e44457011e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 17:12:10', null, '2019-03-13 17:12:10', null, '0');
INSERT INTO `sys_log` VALUES ('2847954e464211e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 18:15:54', null, '2019-03-14 18:15:54', null, '0');
INSERT INTO `sys_log` VALUES ('2862f1e6457011e9b18f2c56dcd4f98f', '审核商品', '{}', '商品管理', '2019-03-13 17:12:13', null, '2019-03-13 17:12:13', null, '0');
INSERT INTO `sys_log` VALUES ('28e28b0b456311e9b18f2c56dcd4f98f', '跳转到修改页面并回显数据', '{}', '消息设置模块', '2019-03-13 15:39:10', null, '2019-03-13 15:39:10', null, '0');
INSERT INTO `sys_log` VALUES ('2909d2d1464211e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 18:15:55', null, '2019-03-14 18:15:55', null, '0');
INSERT INTO `sys_log` VALUES ('2a27c256463111e99da72c56dcd4f98f', '新增或修改商品分类', '{\"sortName\":[\"??\"],\"id\":[\"\"],\"sort\":[\"1\"],\"parentId\":[\"24977038463111e99da72c56dcd4f98f\"]}', '二级分类', '2019-03-14 16:14:16', null, '2019-03-14 16:14:16', null, '0');
INSERT INTO `sys_log` VALUES ('2a7a4b5e457d11e9b18f2c56dcd4f98f', '新增商品数据', '{}', '商品管理', '2019-03-13 18:45:20', null, '2019-03-13 18:45:20', null, '0');
INSERT INTO `sys_log` VALUES ('2aeaefe0463111e99da72c56dcd4f98f', '分页查询商品二级分类数据', '{}', '二级分类', '2019-03-14 16:14:17', null, '2019-03-14 16:14:17', null, '0');
INSERT INTO `sys_log` VALUES ('2b1fd58a464211e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:15:59', null, '2019-03-14 18:15:59', null, '0');
INSERT INTO `sys_log` VALUES ('2b716099456311e9b18f2c56dcd4f98f', '分页查询信息', '{}', '消息设置模块', '2019-03-13 15:39:14', null, '2019-03-13 15:39:14', null, '0');
INSERT INTO `sys_log` VALUES ('2b98bf8c464211e99da72c56dcd4f98f', '跳转到新增页面', '{}', '商品库存管理', '2019-03-14 18:16:00', null, '2019-03-14 18:16:00', null, '0');
INSERT INTO `sys_log` VALUES ('2bc99108457011e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:12:18', null, '2019-03-13 17:12:18', null, '0');
INSERT INTO `sys_log` VALUES ('2c738fe4464211e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:16:01', null, '2019-03-14 18:16:01', null, '0');
INSERT INTO `sys_log` VALUES ('2d247379464211e99da72c56dcd4f98f', '跳转到修改页面', '{}', '商品库存管理', '2019-03-14 18:16:02', null, '2019-03-14 18:16:02', null, '0');
INSERT INTO `sys_log` VALUES ('2d24cf8d457211e9b18f2c56dcd4f98f', '跳转到登录界面', '{}', '日志模块', '2019-03-13 17:26:39', null, '2019-03-13 17:26:39', null, '0');
INSERT INTO `sys_log` VALUES ('2de894dc457211e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 17:26:41', null, '2019-03-13 17:26:41', null, '0');
INSERT INTO `sys_log` VALUES ('2e4ec2fe464211e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:16:04', null, '2019-03-14 18:16:04', null, '0');
INSERT INTO `sys_log` VALUES ('2ee42f15456311e9b18f2c56dcd4f98f', '跳转到修改页面并回显数据', '{}', '消息设置模块', '2019-03-13 15:39:20', null, '2019-03-13 15:39:20', null, '0');
INSERT INTO `sys_log` VALUES ('2eea6d0b464211e99da72c56dcd4f98f', '跳转到新增页面', '{}', '商品库存管理', '2019-03-14 18:16:05', null, '2019-03-14 18:16:05', null, '0');
INSERT INTO `sys_log` VALUES ('2f0f6f6a457211e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:26:43', null, '2019-03-13 17:26:43', null, '0');
INSERT INTO `sys_log` VALUES ('2fe197ff463111e99da72c56dcd4f98f', '分页查询分类数据', '{\"page\":[\"1\"]}', '一级分类', '2019-03-14 16:14:25', null, '2019-03-14 16:14:25', null, '0');
INSERT INTO `sys_log` VALUES ('30097e4b464211e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:16:07', null, '2019-03-14 18:16:07', null, '0');
INSERT INTO `sys_log` VALUES ('30493a16463111e99da72c56dcd4f98f', '分页查询商品二级分类数据', '{\"page\":[\"2\"]}', '二级分类', '2019-03-14 16:14:26', null, '2019-03-14 16:14:26', null, '0');
INSERT INTO `sys_log` VALUES ('30695168457211e9b18f2c56dcd4f98f', '跳转到修改商品页面', '{}', '商品管理', '2019-03-13 17:26:45', null, '2019-03-13 17:26:45', null, '0');
INSERT INTO `sys_log` VALUES ('306ef26b456311e9b18f2c56dcd4f98f', '分页查询信息', '{}', '消息设置模块', '2019-03-13 15:39:23', null, '2019-03-13 15:39:23', null, '0');
INSERT INTO `sys_log` VALUES ('30ddb96a464211e99da72c56dcd4f98f', '跳转到修改页面', '{}', '商品库存管理', '2019-03-14 18:16:08', null, '2019-03-14 18:16:08', null, '0');
INSERT INTO `sys_log` VALUES ('32757786456311e9b18f2c56dcd4f98f', '跳转到修改页面并回显数据', '{}', '消息设置模块', '2019-03-13 15:39:26', null, '2019-03-13 15:39:26', null, '0');
INSERT INTO `sys_log` VALUES ('32c5d203455a11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 14:35:01', null, '2019-03-13 14:35:01', null, '0');
INSERT INTO `sys_log` VALUES ('32ec39f0464211e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:16:12', null, '2019-03-14 18:16:12', null, '0');
INSERT INTO `sys_log` VALUES ('3330ab01463111e99da72c56dcd4f98f', '分页查询分类数据', '{\"page\":[\"1\"]}', '一级分类', '2019-03-14 16:14:31', null, '2019-03-14 16:14:31', null, '0');
INSERT INTO `sys_log` VALUES ('33941749460c11e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 11:49:43', null, '2019-03-14 11:49:43', null, '0');
INSERT INTO `sys_log` VALUES ('33dc8162455e11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 15:03:41', null, '2019-03-13 15:03:41', null, '0');
INSERT INTO `sys_log` VALUES ('34333cec455a11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 14:35:04', null, '2019-03-13 14:35:04', null, '0');
INSERT INTO `sys_log` VALUES ('349c463e463111e99da72c56dcd4f98f', '分页查询商品二级分类数据', '{\"page\":[\"2\"]}', '二级分类', '2019-03-14 16:14:33', null, '2019-03-14 16:14:33', null, '0');
INSERT INTO `sys_log` VALUES ('349d3eb7464211e99da72c56dcd4f98f', ' 删除（修改状态）', '{}', '商品库存管理', '2019-03-14 18:16:15', null, '2019-03-14 18:16:15', null, '0');
INSERT INTO `sys_log` VALUES ('351d10f3464211e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:16:15', null, '2019-03-14 18:16:15', null, '0');
INSERT INTO `sys_log` VALUES ('356bd08d456311e9b18f2c56dcd4f98f', '分页查询信息', '{}', '消息设置模块', '2019-03-13 15:39:31', null, '2019-03-13 15:39:31', null, '0');
INSERT INTO `sys_log` VALUES ('359284cf457411e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:41:13', null, '2019-03-13 17:41:13', null, '0');
INSERT INTO `sys_log` VALUES ('35c4a687455e11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:03:44', null, '2019-03-13 15:03:44', null, '0');
INSERT INTO `sys_log` VALUES ('36618922455e11e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 15:03:45', null, '2019-03-13 15:03:45', null, '0');
INSERT INTO `sys_log` VALUES ('36a216bc460c11e99da72c56dcd4f98f', '分页查询数据', '{}', '角色模块', '2019-03-14 11:49:48', null, '2019-03-14 11:49:48', null, '0');
INSERT INTO `sys_log` VALUES ('380a8ec0456d11e9b18f2c56dcd4f98f', '审核商品', '{}', '商品管理', '2019-03-13 16:51:10', null, '2019-03-13 16:51:10', null, '0');
INSERT INTO `sys_log` VALUES ('39166236456311e9b18f2c56dcd4f98f', '跳转到修改页面并回显数据', '{}', '消息设置模块', '2019-03-13 15:39:37', null, '2019-03-13 15:39:37', null, '0');
INSERT INTO `sys_log` VALUES ('398e9d8f460c11e99da72c56dcd4f98f', '跳转到更新页面并回显数据', '{}', '角色模块', '2019-03-14 11:49:53', null, '2019-03-14 11:49:53', null, '0');
INSERT INTO `sys_log` VALUES ('39b99517462a11e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 15:24:35', null, '2019-03-14 15:24:35', null, '0');
INSERT INTO `sys_log` VALUES ('3a760ce1462a11e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 15:24:37', null, '2019-03-14 15:24:37', null, '0');
INSERT INTO `sys_log` VALUES ('3aa3e53e457411e9b18f2c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-13 17:41:21', null, '2019-03-13 17:41:21', null, '0');
INSERT INTO `sys_log` VALUES ('3ae1455b463111e99da72c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-14 16:14:44', null, '2019-03-14 16:14:44', null, '0');
INSERT INTO `sys_log` VALUES ('3b397cfb460c11e99da72c56dcd4f98f', '添加数据信息', '{}', '角色模块', '2019-03-14 11:49:56', null, '2019-03-14 11:49:56', null, '0');
INSERT INTO `sys_log` VALUES ('3b3adbb7456311e9b18f2c56dcd4f98f', '分页查询信息', '{}', '消息设置模块', '2019-03-13 15:39:41', null, '2019-03-13 15:39:41', null, '0');
INSERT INTO `sys_log` VALUES ('3b899e22462b11e99da72c56dcd4f98f', ' 新增或修改商家', '{\"businessName\":[\"?????\"],\"mobile\":[\"23456789123\"],\"linkPeople\":[\"????\"],\"id\":[\"\"],\"businessAddress\":[\"????????\"]}', '商家管理', '2019-03-14 15:31:48', null, '2019-03-14 15:31:48', null, '0');
INSERT INTO `sys_log` VALUES ('3bd007dd456311e9b18f2c56dcd4f98f', '分页查询数据', '{}', '基础设置', '2019-03-13 15:39:42', null, '2019-03-13 15:39:42', null, '0');
INSERT INTO `sys_log` VALUES ('3bd03985463111e99da72c56dcd4f98f', '跳转到新增品牌页面', '{}', '品牌管理', '2019-03-14 16:14:45', null, '2019-03-14 16:14:45', null, '0');
INSERT INTO `sys_log` VALUES ('3bf6c662460c11e99da72c56dcd4f98f', '分页查询数据', '{}', '角色模块', '2019-03-14 11:49:57', null, '2019-03-14 11:49:57', null, '0');
INSERT INTO `sys_log` VALUES ('3bff7ba9462a11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:24:39', null, '2019-03-14 15:24:39', null, '0');
INSERT INTO `sys_log` VALUES ('3c1bcce3462b11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:31:49', null, '2019-03-14 15:31:49', null, '0');
INSERT INTO `sys_log` VALUES ('3d16d482456611e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 16:01:12', null, '2019-03-13 16:01:12', null, '0');
INSERT INTO `sys_log` VALUES ('3d1b42d9462a11e99da72c56dcd4f98f', '跳转到新增页面', '{}', '商家管理', '2019-03-14 15:24:41', null, '2019-03-14 15:24:41', null, '0');
INSERT INTO `sys_log` VALUES ('3d68e549457011e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 17:12:48', null, '2019-03-13 17:12:48', null, '0');
INSERT INTO `sys_log` VALUES ('3d89f715456311e9b18f2c56dcd4f98f', '分页/条件查询数据', '{}', '支付模块', '2019-03-13 15:39:45', null, '2019-03-13 15:39:45', null, '0');
INSERT INTO `sys_log` VALUES ('3dd3ed31462b11e99da72c56dcd4f98f', '跳转到修改页面', '{}', '商家管理', '2019-03-14 15:31:52', null, '2019-03-14 15:31:52', null, '0');
INSERT INTO `sys_log` VALUES ('3de7bdc9456311e9b18f2c56dcd4f98f', '分页查询数据', '{}', '消息平台模块', '2019-03-13 15:39:45', null, '2019-03-13 15:39:45', null, '0');
INSERT INTO `sys_log` VALUES ('3e9dd27e462b11e99da72c56dcd4f98f', ' 新增或修改商家', '{\"businessName\":[\"?????\"],\"mobile\":[\"23456789123\"],\"linkPeople\":[\"????\"],\"id\":[\"3b794236462b11e99da72c56dcd4f98f\"],\"businessAddress\":[\"????????\"]}', '商家管理', '2019-03-14 15:31:53', null, '2019-03-14 15:31:53', null, '0');
INSERT INTO `sys_log` VALUES ('3ea5ed2a457011e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:12:50', null, '2019-03-13 17:12:50', null, '0');
INSERT INTO `sys_log` VALUES ('3f515a04462b11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:31:54', null, '2019-03-14 15:31:54', null, '0');
INSERT INTO `sys_log` VALUES ('3f567d78456611e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:01:16', null, '2019-03-13 16:01:16', null, '0');
INSERT INTO `sys_log` VALUES ('3f9a2446457011e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 17:12:52', null, '2019-03-13 17:12:52', null, '0');
INSERT INTO `sys_log` VALUES ('400d4905463f11e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 17:55:05', null, '2019-03-14 17:55:05', null, '0');
INSERT INTO `sys_log` VALUES ('40c6b4c6462b11e99da72c56dcd4f98f', ' 删除（修改状态）', '{}', '商家管理', '2019-03-14 15:31:57', null, '2019-03-14 15:31:57', null, '0');
INSERT INTO `sys_log` VALUES ('4152e8a6462b11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:31:58', null, '2019-03-14 15:31:58', null, '0');
INSERT INTO `sys_log` VALUES ('41853c3d457411e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:41:33', null, '2019-03-13 17:41:33', null, '0');
INSERT INTO `sys_log` VALUES ('41d345c4457011e9b18f2c56dcd4f98f', '审核商品', '{}', '商品管理', '2019-03-13 17:12:55', null, '2019-03-13 17:12:55', null, '0');
INSERT INTO `sys_log` VALUES ('4203a85f462e11e99da72c56dcd4f98f', '分页查询终端数据', '{}', '终端管理', '2019-03-14 15:53:27', null, '2019-03-14 15:53:27', null, '0');
INSERT INTO `sys_log` VALUES ('42a9e157462e11e99da72c56dcd4f98f', '分页查询终端数据', '{}', '终端管理', '2019-03-14 15:53:28', null, '2019-03-14 15:53:28', null, '0');
INSERT INTO `sys_log` VALUES ('42c245a8462e11e99da72c56dcd4f98f', '分页查询终端数据', '{}', '终端管理', '2019-03-14 15:53:28', null, '2019-03-14 15:53:28', null, '0');
INSERT INTO `sys_log` VALUES ('42dac364462e11e99da72c56dcd4f98f', '分页查询终端数据', '{}', '终端管理', '2019-03-14 15:53:29', null, '2019-03-14 15:53:29', null, '0');
INSERT INTO `sys_log` VALUES ('42f1d045462e11e99da72c56dcd4f98f', '分页查询终端数据', '{}', '终端管理', '2019-03-14 15:53:29', null, '2019-03-14 15:53:29', null, '0');
INSERT INTO `sys_log` VALUES ('4307ffcc457211e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 17:27:16', null, '2019-03-13 17:27:16', null, '0');
INSERT INTO `sys_log` VALUES ('43b95045457011e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:12:59', null, '2019-03-13 17:12:59', null, '0');
INSERT INTO `sys_log` VALUES ('43f48b98463f11e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 17:55:12', null, '2019-03-14 17:55:12', null, '0');
INSERT INTO `sys_log` VALUES ('44afd0a1457211e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:27:19', null, '2019-03-13 17:27:19', null, '0');
INSERT INTO `sys_log` VALUES ('44c48921463f11e99da72c56dcd4f98f', '跳转到新增页面', '{}', '商品库存管理', '2019-03-14 17:55:13', null, '2019-03-14 17:55:13', null, '0');
INSERT INTO `sys_log` VALUES ('453f574f457d11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 18:46:05', null, '2019-03-13 18:46:05', null, '0');
INSERT INTO `sys_log` VALUES ('4565631f456311e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:39:58', null, '2019-03-13 15:39:58', null, '0');
INSERT INTO `sys_log` VALUES ('4601886e462e11e99da72c56dcd4f98f', '分页查询代理商数据', '{}', '代理商模块', '2019-03-14 15:53:34', null, '2019-03-14 15:53:34', null, '0');
INSERT INTO `sys_log` VALUES ('462e5c28462511e99da72c56dcd4f98f', '分页查询数据', '{}', '角色模块', '2019-03-14 14:49:09', null, '2019-03-14 14:49:09', null, '0');
INSERT INTO `sys_log` VALUES ('4672ba28457d11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 18:46:07', null, '2019-03-13 18:46:07', null, '0');
INSERT INTO `sys_log` VALUES ('468ff22e462e11e99da72c56dcd4f98f', '跳转到新增页面', '{}', '代理商模块', '2019-03-14 15:53:35', null, '2019-03-14 15:53:35', null, '0');
INSERT INTO `sys_log` VALUES ('46e80867462911e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 15:17:48', null, '2019-03-14 15:17:48', null, '0');
INSERT INTO `sys_log` VALUES ('47495faf457d11e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 18:46:08', null, '2019-03-13 18:46:08', null, '0');
INSERT INTO `sys_log` VALUES ('478eb662456311e9b18f2c56dcd4f98f', '跳转到修改商品页面', '{}', '商品管理', '2019-03-13 15:40:02', null, '2019-03-13 15:40:02', null, '0');
INSERT INTO `sys_log` VALUES ('47f68107462911e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:17:50', null, '2019-03-14 15:17:50', null, '0');
INSERT INTO `sys_log` VALUES ('48bf1051462911e99da72c56dcd4f98f', '跳转到新增页面', '{}', '商家管理', '2019-03-14 15:17:51', null, '2019-03-14 15:17:51', null, '0');
INSERT INTO `sys_log` VALUES ('49680019462b11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:32:11', null, '2019-03-14 15:32:11', null, '0');
INSERT INTO `sys_log` VALUES ('499d0068456311e9b18f2c56dcd4f98f', '新增商品数据', '{\"goodsImg\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290071.jpg\"],\"goodsSortId\":[\"14639f4a453911e9b18f2c56dcd4f98f\"],\"goodsSubhead\":[\"\"],\"goodsBrandId\":[\"a240838d456111e9b18f2c56dcd4f98f\"],\"costPrice\":[\"50\"],\"goodsTag\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290067.jpg\"],\"bindBusiness\":[\"0d31a798425711e99485525400c68bfa\"],\"goodsModel\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290069.jpg\"],\"goodsSuggest\":[\"????\"],\"goodsName\":[\"?????\"]}', '商品管理', '2019-03-13 15:40:05', null, '2019-03-13 15:40:05', null, '0');
INSERT INTO `sys_log` VALUES ('4a56a12a456311e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:40:06', null, '2019-03-13 15:40:06', null, '0');
INSERT INTO `sys_log` VALUES ('4a664a41456c11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:44:32', null, '2019-03-13 16:44:32', null, '0');
INSERT INTO `sys_log` VALUES ('4ad5c5ca464011e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:02:33', null, '2019-03-14 18:02:33', null, '0');
INSERT INTO `sys_log` VALUES ('4b0e12af457d11e9b18f2c56dcd4f98f', '新增商品数据', '{}', '商品管理', '2019-03-13 18:46:14', null, '2019-03-13 18:46:14', null, '0');
INSERT INTO `sys_log` VALUES ('4c6011a9456c11e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 16:44:35', null, '2019-03-13 16:44:35', null, '0');
INSERT INTO `sys_log` VALUES ('4d9b0100456c11e9b18f2c56dcd4f98f', '审核商品', '{}', '商品管理', '2019-03-13 16:44:37', null, '2019-03-13 16:44:37', null, '0');
INSERT INTO `sys_log` VALUES ('4ff91bc0462b11e99da72c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-14 15:32:22', null, '2019-03-14 15:32:22', null, '0');
INSERT INTO `sys_log` VALUES ('50d69217462b11e99da72c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-14 15:32:24', null, '2019-03-14 15:32:24', null, '0');
INSERT INTO `sys_log` VALUES ('51641971462e11e99da72c56dcd4f98f', '查询省下的所有城市', '{\"provinceId\":[\"440000\"]}', '代理商模块', '2019-03-14 15:53:53', null, '2019-03-14 15:53:53', null, '0');
INSERT INTO `sys_log` VALUES ('52fcece6462e11e99da72c56dcd4f98f', '查询城市下的所有区域', '{\"cityId\":[\"440300\"]}', '代理商模块', '2019-03-14 15:53:56', null, '2019-03-14 15:53:56', null, '0');
INSERT INTO `sys_log` VALUES ('52fe0422463f11e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 17:55:37', null, '2019-03-14 17:55:37', null, '0');
INSERT INTO `sys_log` VALUES ('5500dc90464011e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 18:02:50', null, '2019-03-14 18:02:50', null, '0');
INSERT INTO `sys_log` VALUES ('57458722456111e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 15:26:09', null, '2019-03-13 15:26:09', null, '0');
INSERT INTO `sys_log` VALUES ('579c8fa0464011e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:02:54', null, '2019-03-14 18:02:54', null, '0');
INSERT INTO `sys_log` VALUES ('57ed714c462e11e99da72c56dcd4f98f', ' 新增或修改代理商', '{}', '代理商模块', '2019-03-14 15:54:04', null, '2019-03-14 15:54:04', null, '0');
INSERT INTO `sys_log` VALUES ('589a3b91462e11e99da72c56dcd4f98f', '分页查询代理商数据', '{}', '代理商模块', '2019-03-14 15:54:05', null, '2019-03-14 15:54:05', null, '0');
INSERT INTO `sys_log` VALUES ('5993d3d3456211e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 15:33:22', null, '2019-03-13 15:33:22', null, '0');
INSERT INTO `sys_log` VALUES ('59c47872456111e9b18f2c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-13 15:26:13', null, '2019-03-13 15:26:13', null, '0');
INSERT INTO `sys_log` VALUES ('5aad9ad0464011e99da72c56dcd4f98f', '跳转到修改页面', '{}', '商品库存管理', '2019-03-14 18:03:00', null, '2019-03-14 18:03:00', null, '0');
INSERT INTO `sys_log` VALUES ('5b2c0993456211e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:33:25', null, '2019-03-13 15:33:25', null, '0');
INSERT INTO `sys_log` VALUES ('5b4ec698463711e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 16:58:35', null, '2019-03-14 16:58:35', null, '0');
INSERT INTO `sys_log` VALUES ('5c593ae3463711e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 16:58:37', null, '2019-03-14 16:58:37', null, '0');
INSERT INTO `sys_log` VALUES ('5ed7a47a456a11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 16:30:47', null, '2019-03-13 16:30:47', null, '0');
INSERT INTO `sys_log` VALUES ('602328be456a11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:30:49', null, '2019-03-13 16:30:49', null, '0');
INSERT INTO `sys_log` VALUES ('63ccab68456f11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 17:06:43', null, '2019-03-13 17:06:43', null, '0');
INSERT INTO `sys_log` VALUES ('64cc1722462a11e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 15:25:48', null, '2019-03-14 15:25:48', null, '0');
INSERT INTO `sys_log` VALUES ('65b1b5f1456a11e9b18f2c56dcd4f98f', '跳转到修改商品页面', '{}', '商品管理', '2019-03-13 16:30:59', null, '2019-03-13 16:30:59', null, '0');
INSERT INTO `sys_log` VALUES ('65f2f1e7456f11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:06:46', null, '2019-03-13 17:06:46', null, '0');
INSERT INTO `sys_log` VALUES ('66d0f833456f11e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 17:06:48', null, '2019-03-13 17:06:48', null, '0');
INSERT INTO `sys_log` VALUES ('6a171e2a457111e9b18f2c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-13 17:21:12', null, '2019-03-13 17:21:12', null, '0');
INSERT INTO `sys_log` VALUES ('6aabdfe0456d11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 16:52:35', null, '2019-03-13 16:52:35', null, '0');
INSERT INTO `sys_log` VALUES ('6affb02c456a11e9b18f2c56dcd4f98f', '新增商品数据', '{\"goodsImg\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290071.jpg\"],\"goodsSortId\":[\"14639f4a453911e9b18f2c56dcd4f98f\"],\"goodsSubhead\":[\"\"],\"goodsBrandId\":[\"a240838d456111e9b18f2c56dcd4f98f\"],\"costPrice\":[\"50\",\"50\"],\"goodsTag\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290067.jpg\"],\"bindBusiness\":[\"0d31a798425711e99485525400c68bfa\"],\"goodsModel\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290069.jpg\"],\"goodsSuggest\":[\"????\"],\"goodsName\":[\"?????\"]}', '商品管理', '2019-03-13 16:31:07', null, '2019-03-13 16:31:07', null, '0');
INSERT INTO `sys_log` VALUES ('6bb7ef64456a11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:31:09', null, '2019-03-13 16:31:09', null, '0');
INSERT INTO `sys_log` VALUES ('6c3edb80456d11e9b18f2c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-13 16:52:38', null, '2019-03-13 16:52:38', null, '0');
INSERT INTO `sys_log` VALUES ('6d68902a456d11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:52:40', null, '2019-03-13 16:52:40', null, '0');
INSERT INTO `sys_log` VALUES ('6ec1e287456d11e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 16:52:42', null, '2019-03-13 16:52:42', null, '0');
INSERT INTO `sys_log` VALUES ('6f245c56456c11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:45:33', null, '2019-03-13 16:45:33', null, '0');
INSERT INTO `sys_log` VALUES ('6fe6000d457111e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:21:22', null, '2019-03-13 17:21:22', null, '0');
INSERT INTO `sys_log` VALUES ('70a85eb1457111e9b18f2c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-13 17:21:23', null, '2019-03-13 17:21:23', null, '0');
INSERT INTO `sys_log` VALUES ('71599e8e464011e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:03:38', null, '2019-03-14 18:03:38', null, '0');
INSERT INTO `sys_log` VALUES ('77b7cf3f456c11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:45:48', null, '2019-03-13 16:45:48', null, '0');
INSERT INTO `sys_log` VALUES ('786fae5e457111e9b18f2c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-13 17:21:36', null, '2019-03-13 17:21:36', null, '0');
INSERT INTO `sys_log` VALUES ('78dd77f3456c11e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 16:45:50', null, '2019-03-13 16:45:50', null, '0');
INSERT INTO `sys_log` VALUES ('7b40219d462a11e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 15:26:25', null, '2019-03-14 15:26:25', null, '0');
INSERT INTO `sys_log` VALUES ('7c65e8a7455e11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 15:05:43', null, '2019-03-13 15:05:43', null, '0');
INSERT INTO `sys_log` VALUES ('7d9b7d52455e11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:05:45', null, '2019-03-13 15:05:45', null, '0');
INSERT INTO `sys_log` VALUES ('7dfac811462a11e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 15:26:30', null, '2019-03-14 15:26:30', null, '0');
INSERT INTO `sys_log` VALUES ('7e0e2d4e455e11e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 15:05:45', null, '2019-03-13 15:05:45', null, '0');
INSERT INTO `sys_log` VALUES ('7f15ad37462a11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:26:32', null, '2019-03-14 15:26:32', null, '0');
INSERT INTO `sys_log` VALUES ('7fb169dd462a11e99da72c56dcd4f98f', '跳转到新增页面', '{}', '商家管理', '2019-03-14 15:26:33', null, '2019-03-14 15:26:33', null, '0');
INSERT INTO `sys_log` VALUES ('8369c790455711e9b18f2c56dcd4f98f', '跳转到登录界面', '{}', '日志模块', '2019-03-13 14:15:47', null, '2019-03-13 14:15:47', null, '0');
INSERT INTO `sys_log` VALUES ('84534c2f455711e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 14:15:49', null, '2019-03-13 14:15:49', null, '0');
INSERT INTO `sys_log` VALUES ('867eb9ac462e11e99da72c56dcd4f98f', '分页查询终端数据', '{}', '终端管理', '2019-03-14 15:55:22', null, '2019-03-14 15:55:22', null, '0');
INSERT INTO `sys_log` VALUES ('8b6de92c463f11e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 17:57:12', null, '2019-03-14 17:57:12', null, '0');
INSERT INTO `sys_log` VALUES ('8d59820e455e11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 15:06:11', null, '2019-03-13 15:06:11', null, '0');
INSERT INTO `sys_log` VALUES ('8e9e751a455e11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:06:13', null, '2019-03-13 15:06:13', null, '0');
INSERT INTO `sys_log` VALUES ('8f0eba6f463f11e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 17:57:18', null, '2019-03-14 17:57:18', null, '0');
INSERT INTO `sys_log` VALUES ('8f2fd099455e11e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 15:06:14', null, '2019-03-13 15:06:14', null, '0');
INSERT INTO `sys_log` VALUES ('8fa18556463f11e99da72c56dcd4f98f', '跳转到新增页面', '{}', '商品库存管理', '2019-03-14 17:57:19', null, '2019-03-14 17:57:19', null, '0');
INSERT INTO `sys_log` VALUES ('902d52ce456f11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 17:07:57', null, '2019-03-13 17:07:57', null, '0');
INSERT INTO `sys_log` VALUES ('9061a63d464111e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 18:11:39', null, '2019-03-14 18:11:39', null, '0');
INSERT INTO `sys_log` VALUES ('907e6aa2456211e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:34:54', null, '2019-03-13 15:34:54', null, '0');
INSERT INTO `sys_log` VALUES ('9138c10b463f11e99da72c56dcd4f98f', ' 新增或修改商品库存', '{\"goodsId\":[\"ea794c6b463411e99da72c56dcd4f98f\"],\"id\":[\"\"],\"stock\":[\"100\"]}', '商品库存管理', '2019-03-14 17:57:22', null, '2019-03-14 17:57:22', null, '0');
INSERT INTO `sys_log` VALUES ('91e1d3f3463f11e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 17:57:23', null, '2019-03-14 17:57:23', null, '0');
INSERT INTO `sys_log` VALUES ('924cd55c464111e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:11:42', null, '2019-03-14 18:11:42', null, '0');
INSERT INTO `sys_log` VALUES ('9256bff7456f11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:08:01', null, '2019-03-13 17:08:01', null, '0');
INSERT INTO `sys_log` VALUES ('93cc92d4464111e99da72c56dcd4f98f', '跳转到修改页面', '{}', '商品库存管理', '2019-03-14 18:11:45', null, '2019-03-14 18:11:45', null, '0');
INSERT INTO `sys_log` VALUES ('945c3d67456f11e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 17:08:04', null, '2019-03-13 17:08:04', null, '0');
INSERT INTO `sys_log` VALUES ('94bdcc27455a11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 14:37:46', null, '2019-03-13 14:37:46', null, '0');
INSERT INTO `sys_log` VALUES ('94d1866d462e11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:55:46', null, '2019-03-14 15:55:46', null, '0');
INSERT INTO `sys_log` VALUES ('95876e9b462e11e99da72c56dcd4f98f', '分页查询数据', '{}', '角色模块', '2019-03-14 15:55:47', null, '2019-03-14 15:55:47', null, '0');
INSERT INTO `sys_log` VALUES ('96353875456511e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 15:56:32', null, '2019-03-13 15:56:32', null, '0');
INSERT INTO `sys_log` VALUES ('967c5003462e11e99da72c56dcd4f98f', '跳转到更新页面并回显数据', '{}', '角色模块', '2019-03-14 15:55:49', null, '2019-03-14 15:55:49', null, '0');
INSERT INTO `sys_log` VALUES ('968e1365455a11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 14:37:49', null, '2019-03-13 14:37:49', null, '0');
INSERT INTO `sys_log` VALUES ('992801ed462e11e99da72c56dcd4f98f', '添加数据信息', '{}', '角色模块', '2019-03-14 15:55:53', null, '2019-03-14 15:55:53', null, '0');
INSERT INTO `sys_log` VALUES ('99d82a6b462e11e99da72c56dcd4f98f', '分页查询数据', '{}', '角色模块', '2019-03-14 15:55:55', null, '2019-03-14 15:55:55', null, '0');
INSERT INTO `sys_log` VALUES ('9a331ca8456111e9b18f2c56dcd4f98f', '跳转到新增品牌页面', '{}', '品牌管理', '2019-03-13 15:28:01', null, '2019-03-13 15:28:01', null, '0');
INSERT INTO `sys_log` VALUES ('9b00b707462e11e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 15:55:56', null, '2019-03-14 15:55:56', null, '0');
INSERT INTO `sys_log` VALUES ('9c4a623c455a11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 14:37:58', null, '2019-03-13 14:37:58', null, '0');
INSERT INTO `sys_log` VALUES ('9d794f4a456a11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 16:32:32', null, '2019-03-13 16:32:32', null, '0');
INSERT INTO `sys_log` VALUES ('9e8962a7457111e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:22:40', null, '2019-03-13 17:22:40', null, '0');
INSERT INTO `sys_log` VALUES ('9ee50cc1456a11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:32:35', null, '2019-03-13 16:32:35', null, '0');
INSERT INTO `sys_log` VALUES ('9f20902a457111e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 17:22:41', null, '2019-03-13 17:22:41', null, '0');
INSERT INTO `sys_log` VALUES ('9fdbec10462e11e99da72c56dcd4f98f', '分页查询数据', '{}', '角色模块', '2019-03-14 15:56:05', null, '2019-03-14 15:56:05', null, '0');
INSERT INTO `sys_log` VALUES ('9fed1489464011e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 18:04:56', null, '2019-03-14 18:04:56', null, '0');
INSERT INTO `sys_log` VALUES ('a050a09a456a11e9b18f2c56dcd4f98f', '跳转到修改商品页面', '{}', '商品管理', '2019-03-13 16:32:37', null, '2019-03-13 16:32:37', null, '0');
INSERT INTO `sys_log` VALUES ('a0daa50b462e11e99da72c56dcd4f98f', '跳转到更新页面并回显数据', '{}', '角色模块', '2019-03-14 15:56:06', null, '2019-03-14 15:56:06', null, '0');
INSERT INTO `sys_log` VALUES ('a1c1bd75456a11e9b18f2c56dcd4f98f', '新增商品数据', '{\"goodsImg\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290071.jpg\"],\"goodsSortId\":[\"14639f4a453911e9b18f2c56dcd4f98f\"],\"goodsSubhead\":[\"\"],\"goodsBrandId\":[\"a240838d456111e9b18f2c56dcd4f98f\"],\"costPrice\":[\"50\",\"50\"],\"goodsTag\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290067.jpg\"],\"bindBusiness\":[\"0d31a798425711e99485525400c68bfa\"],\"id\":[\"6af2b061456a11e9b18f2c56dcd4f98f\"],\"goodsModel\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290069.jpg\"],\"goodsSuggest\":[\"????\"],\"goodsName\":[\"?????\"]}', '商品管理', '2019-03-13 16:32:39', null, '2019-03-13 16:32:39', null, '0');
INSERT INTO `sys_log` VALUES ('a25344e3456111e9b18f2c56dcd4f98f', '新增或修改品牌', '{\"brandImg\":[\"\"],\"brandName\":[\"??\"],\"brandRemark\":[\"\"],\"id\":[\"\"]}', '品牌管理', '2019-03-13 15:28:15', null, '2019-03-13 15:28:15', null, '0');
INSERT INTO `sys_log` VALUES ('a262a3d7456a11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:32:40', null, '2019-03-13 16:32:40', null, '0');
INSERT INTO `sys_log` VALUES ('a298c047462e11e99da72c56dcd4f98f', '添加数据信息', '{}', '角色模块', '2019-03-14 15:56:09', null, '2019-03-14 15:56:09', null, '0');
INSERT INTO `sys_log` VALUES ('a2a14063456d11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 16:54:09', null, '2019-03-13 16:54:09', null, '0');
INSERT INTO `sys_log` VALUES ('a306ede1456111e9b18f2c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-13 15:28:16', null, '2019-03-13 15:28:16', null, '0');
INSERT INTO `sys_log` VALUES ('a31a6db5464011e99da72c56dcd4f98f', '分页查询终端数据', '{}', '终端管理', '2019-03-14 18:05:01', null, '2019-03-14 18:05:01', null, '0');
INSERT INTO `sys_log` VALUES ('a34309a2462e11e99da72c56dcd4f98f', '分页查询数据', '{}', '角色模块', '2019-03-14 15:56:10', null, '2019-03-14 15:56:10', null, '0');
INSERT INTO `sys_log` VALUES ('a3c07039457111e9b18f2c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-13 17:22:49', null, '2019-03-13 17:22:49', null, '0');
INSERT INTO `sys_log` VALUES ('a412e88a464011e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:05:03', null, '2019-03-14 18:05:03', null, '0');
INSERT INTO `sys_log` VALUES ('a5262d39462e11e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 15:56:14', null, '2019-03-14 15:56:14', null, '0');
INSERT INTO `sys_log` VALUES ('a560fd98456c11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 16:47:04', null, '2019-03-13 16:47:04', null, '0');
INSERT INTO `sys_log` VALUES ('a6185859464011e99da72c56dcd4f98f', '跳转到修改页面', '{}', '商品库存管理', '2019-03-14 18:05:06', null, '2019-03-14 18:05:06', null, '0');
INSERT INTO `sys_log` VALUES ('a6396d3f456411e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:49:50', null, '2019-03-13 15:49:50', null, '0');
INSERT INTO `sys_log` VALUES ('a6e30846456c11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:47:07', null, '2019-03-13 16:47:07', null, '0');
INSERT INTO `sys_log` VALUES ('a6fd9baa456111e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:28:23', null, '2019-03-13 15:28:23', null, '0');
INSERT INTO `sys_log` VALUES ('a793ffeb456d11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:54:18', null, '2019-03-13 16:54:18', null, '0');
INSERT INTO `sys_log` VALUES ('a795be37456111e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 15:28:24', null, '2019-03-13 15:28:24', null, '0');
INSERT INTO `sys_log` VALUES ('a8278d5b456c11e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 16:47:09', null, '2019-03-13 16:47:09', null, '0');
INSERT INTO `sys_log` VALUES ('a8c9eb96456d11e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 16:54:20', null, '2019-03-13 16:54:20', null, '0');
INSERT INTO `sys_log` VALUES ('aa329104456d11e9b18f2c56dcd4f98f', '审核商品', '{}', '商品管理', '2019-03-13 16:54:22', null, '2019-03-13 16:54:22', null, '0');
INSERT INTO `sys_log` VALUES ('aad53b9f456c11e9b18f2c56dcd4f98f', '审核商品', '{}', '商品管理', '2019-03-13 16:47:14', null, '2019-03-13 16:47:14', null, '0');
INSERT INTO `sys_log` VALUES ('abba46be456c11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:47:15', null, '2019-03-13 16:47:15', null, '0');
INSERT INTO `sys_log` VALUES ('ad2a9fd6456a11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:32:58', null, '2019-03-13 16:32:58', null, '0');
INSERT INTO `sys_log` VALUES ('ae8ccf82456a11e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 16:33:01', null, '2019-03-13 16:33:01', null, '0');
INSERT INTO `sys_log` VALUES ('b0849ca7456a11e9b18f2c56dcd4f98f', '审核商品', '{\"goodsImg\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290071.jpg\"],\"goodsTag\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290067.jpg\"],\"id\":[\"6af2b061456a11e9b18f2c56dcd4f98f\"],\"goodsModel\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290069.jpg\"]}', '商品管理', '2019-03-13 16:33:04', null, '2019-03-13 16:33:04', null, '0');
INSERT INTO `sys_log` VALUES ('b11eb794456411e9b18f2c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-13 15:50:08', null, '2019-03-13 15:50:08', null, '0');
INSERT INTO `sys_log` VALUES ('b15de6a2456411e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:50:09', null, '2019-03-13 15:50:09', null, '0');
INSERT INTO `sys_log` VALUES ('b20ef521456a11e9b18f2c56dcd4f98f', '审核商品', '{\"goodsImg\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290071.jpg\"],\"goodsTag\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290067.jpg\"],\"id\":[\"6af2b061456a11e9b18f2c56dcd4f98f\"],\"goodsModel\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290069.jpg\"]}', '商品管理', '2019-03-13 16:33:07', null, '2019-03-13 16:33:07', null, '0');
INSERT INTO `sys_log` VALUES ('b23b8d66456a11e9b18f2c56dcd4f98f', '审核商品', '{\"goodsImg\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290071.jpg\"],\"goodsTag\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290067.jpg\"],\"id\":[\"6af2b061456a11e9b18f2c56dcd4f98f\"],\"goodsModel\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290069.jpg\"]}', '商品管理', '2019-03-13 16:33:07', null, '2019-03-13 16:33:07', null, '0');
INSERT INTO `sys_log` VALUES ('b255c779456a11e9b18f2c56dcd4f98f', '审核商品', '{\"goodsImg\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290071.jpg\"],\"goodsTag\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290067.jpg\"],\"id\":[\"6af2b061456a11e9b18f2c56dcd4f98f\"],\"goodsModel\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290069.jpg\"]}', '商品管理', '2019-03-13 16:33:07', null, '2019-03-13 16:33:07', null, '0');
INSERT INTO `sys_log` VALUES ('b26f6dc5456a11e9b18f2c56dcd4f98f', '审核商品', '{\"goodsImg\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290071.jpg\"],\"goodsTag\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290067.jpg\"],\"id\":[\"6af2b061456a11e9b18f2c56dcd4f98f\"],\"goodsModel\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290069.jpg\"]}', '商品管理', '2019-03-13 16:33:07', null, '2019-03-13 16:33:07', null, '0');
INSERT INTO `sys_log` VALUES ('b2895e0b456a11e9b18f2c56dcd4f98f', '审核商品', '{\"goodsImg\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290071.jpg\"],\"goodsTag\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290067.jpg\"],\"id\":[\"6af2b061456a11e9b18f2c56dcd4f98f\"],\"goodsModel\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290069.jpg\"]}', '商品管理', '2019-03-13 16:33:07', null, '2019-03-13 16:33:07', null, '0');
INSERT INTO `sys_log` VALUES ('b2f5f1b5456811e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:18:49', null, '2019-03-13 16:18:49', null, '0');
INSERT INTO `sys_log` VALUES ('b2f629d7456811e9b18f2c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-13 16:18:49', null, '2019-03-13 16:18:49', null, '0');
INSERT INTO `sys_log` VALUES ('b33654a8456a11e9b18f2c56dcd4f98f', '审核商品', '{\"goodsImg\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290071.jpg\"],\"goodsTag\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290067.jpg\"],\"id\":[\"6af2b061456a11e9b18f2c56dcd4f98f\"],\"goodsModel\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290069.jpg\"]}', '商品管理', '2019-03-13 16:33:09', null, '2019-03-13 16:33:09', null, '0');
INSERT INTO `sys_log` VALUES ('b3d3fed4456811e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 16:18:51', null, '2019-03-13 16:18:51', null, '0');
INSERT INTO `sys_log` VALUES ('b48f5c9d462a11e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 15:28:01', null, '2019-03-14 15:28:01', null, '0');
INSERT INTO `sys_log` VALUES ('b4e63ac2456811e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:18:52', null, '2019-03-13 16:18:52', null, '0');
INSERT INTO `sys_log` VALUES ('b60c29c3457211e9b18f2c56dcd4f98f', '跳转到修改商品页面', '{}', '商品管理', '2019-03-13 17:30:29', null, '2019-03-13 17:30:29', null, '0');
INSERT INTO `sys_log` VALUES ('b60cec63456811e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 16:18:54', null, '2019-03-13 16:18:54', null, '0');
INSERT INTO `sys_log` VALUES ('b6244dfb455911e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 14:31:32', null, '2019-03-13 14:31:32', null, '0');
INSERT INTO `sys_log` VALUES ('b6903c7e462a11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:28:05', null, '2019-03-14 15:28:05', null, '0');
INSERT INTO `sys_log` VALUES ('b798ef6f462a11e99da72c56dcd4f98f', '跳转到新增页面', '{}', '商家管理', '2019-03-14 15:28:06', null, '2019-03-14 15:28:06', null, '0');
INSERT INTO `sys_log` VALUES ('ba551eaf462a11e99da72c56dcd4f98f', ' 新增或修改商家', '{\"brandName\":[\"asd\"],\"businessName\":[\"asfd\"],\"mobile\":[\"asd\"],\"id\":[\"\"],\"businessAddress\":[\"asd\"]}', '商家管理', '2019-03-14 15:28:11', null, '2019-03-14 15:28:11', null, '0');
INSERT INTO `sys_log` VALUES ('bc175073464111e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 18:12:52', null, '2019-03-14 18:12:52', null, '0');
INSERT INTO `sys_log` VALUES ('bdd87b09464111e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 18:12:55', null, '2019-03-14 18:12:55', null, '0');
INSERT INTO `sys_log` VALUES ('bece7def464111e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:12:57', null, '2019-03-14 18:12:57', null, '0');
INSERT INTO `sys_log` VALUES ('bf4d4a65457211e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 17:30:45', null, '2019-03-13 17:30:45', null, '0');
INSERT INTO `sys_log` VALUES ('bfa6eee1464111e99da72c56dcd4f98f', '跳转到修改页面', '{}', '商品库存管理', '2019-03-14 18:12:58', null, '2019-03-14 18:12:58', null, '0');
INSERT INTO `sys_log` VALUES ('c0b57c96457211e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:30:47', null, '2019-03-13 17:30:47', null, '0');
INSERT INTO `sys_log` VALUES ('c10e52a3456a11e9b18f2c56dcd4f98f', '审核商品', '{\"goodsImg\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290071.jpg\"],\"goodsTag\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290067.jpg\"],\"id\":[\"6af2b061456a11e9b18f2c56dcd4f98f\"],\"goodsModel\":[\"http://localhost:8082/gla/static/probimg/20190313/1552462290069.jpg\"]}', '商品管理', '2019-03-13 16:33:32', null, '2019-03-13 16:33:32', null, '0');
INSERT INTO `sys_log` VALUES ('c1d4a1e0457211e9b18f2c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-13 17:30:49', null, '2019-03-13 17:30:49', null, '0');
INSERT INTO `sys_log` VALUES ('c2604ed2464111e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:13:03', null, '2019-03-14 18:13:03', null, '0');
INSERT INTO `sys_log` VALUES ('c27cefb7455e11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 15:07:40', null, '2019-03-13 15:07:40', null, '0');
INSERT INTO `sys_log` VALUES ('c2984f9e457211e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:30:50', null, '2019-03-13 17:30:50', null, '0');
INSERT INTO `sys_log` VALUES ('c32575ea464111e99da72c56dcd4f98f', '跳转到修改页面', '{}', '商品库存管理', '2019-03-14 18:13:04', null, '2019-03-14 18:13:04', null, '0');
INSERT INTO `sys_log` VALUES ('c3651a3c457211e9b18f2c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-13 17:30:52', null, '2019-03-13 17:30:52', null, '0');
INSERT INTO `sys_log` VALUES ('c3936729455e11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:07:42', null, '2019-03-13 15:07:42', null, '0');
INSERT INTO `sys_log` VALUES ('c436c94b455e11e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 15:07:43', null, '2019-03-13 15:07:43', null, '0');
INSERT INTO `sys_log` VALUES ('c49c6824462a11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:28:28', null, '2019-03-14 15:28:28', null, '0');
INSERT INTO `sys_log` VALUES ('c5b8fa6f457211e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:30:56', null, '2019-03-13 17:30:56', null, '0');
INSERT INTO `sys_log` VALUES ('c6c30245456d11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:55:10', null, '2019-03-13 16:55:10', null, '0');
INSERT INTO `sys_log` VALUES ('c74bfdf8455e11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:07:48', null, '2019-03-13 15:07:48', null, '0');
INSERT INTO `sys_log` VALUES ('c77ba0af456d11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 16:55:11', null, '2019-03-13 16:55:11', null, '0');
INSERT INTO `sys_log` VALUES ('c7bb4018455e11e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 15:07:49', null, '2019-03-13 15:07:49', null, '0');
INSERT INTO `sys_log` VALUES ('c889692c456d11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:55:13', null, '2019-03-13 16:55:13', null, '0');
INSERT INTO `sys_log` VALUES ('c9a9a841456d11e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 16:55:15', null, '2019-03-13 16:55:15', null, '0');
INSERT INTO `sys_log` VALUES ('cb3b291d456d11e9b18f2c56dcd4f98f', '审核商品', '{}', '商品管理', '2019-03-13 16:55:17', null, '2019-03-13 16:55:17', null, '0');
INSERT INTO `sys_log` VALUES ('cc0c3ff8457311e9b18f2c56dcd4f98f', '跳转到修改商品页面', '{}', '商品管理', '2019-03-13 17:38:16', null, '2019-03-13 17:38:16', null, '0');
INSERT INTO `sys_log` VALUES ('cc84d85d456f11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 17:09:39', null, '2019-03-13 17:09:39', null, '0');
INSERT INTO `sys_log` VALUES ('cdc843c0463411e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 16:40:19', null, '2019-03-14 16:40:19', null, '0');
INSERT INTO `sys_log` VALUES ('cdd2f316456f11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:09:41', null, '2019-03-13 17:09:41', null, '0');
INSERT INTO `sys_log` VALUES ('cef0332d456f11e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 17:09:43', null, '2019-03-13 17:09:43', null, '0');
INSERT INTO `sys_log` VALUES ('cfcaedbd456d11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:55:25', null, '2019-03-13 16:55:25', null, '0');
INSERT INTO `sys_log` VALUES ('d00d79bf456f11e9b18f2c56dcd4f98f', '审核商品', '{}', '商品管理', '2019-03-13 17:09:44', null, '2019-03-13 17:09:44', null, '0');
INSERT INTO `sys_log` VALUES ('d195ad4a456111e9b18f2c56dcd4f98f', '新增商品数据', '{\"goodsImg\":[\"\"],\"goodsSortId\":[\"14639f4a453911e9b18f2c56dcd4f98f\"],\"goodsSubhead\":[\"\"],\"goodsBrandId\":[\"a240838d456111e9b18f2c56dcd4f98f\"],\"costPrice\":[\"50\"],\"goodsTag\":[\"\"],\"bindBusiness\":[\"0d31a798425711e99485525400c68bfa\"],\"goodsModel\":[\"\"],\"goodsSuggest\":[\"????\"],\"goodsName\":[\"?????\"]}', '商品管理', '2019-03-13 15:29:34', null, '2019-03-13 15:29:34', null, '0');
INSERT INTO `sys_log` VALUES ('d19f451e456f11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:09:47', null, '2019-03-13 17:09:47', null, '0');
INSERT INTO `sys_log` VALUES ('d282ce67463411e99da72c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-14 16:40:27', null, '2019-03-14 16:40:27', null, '0');
INSERT INTO `sys_log` VALUES ('d3572e59463411e99da72c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-14 16:40:28', null, '2019-03-14 16:40:28', null, '0');
INSERT INTO `sys_log` VALUES ('d3679633462a11e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 15:28:53', null, '2019-03-14 15:28:53', null, '0');
INSERT INTO `sys_log` VALUES ('d6dcd9ed456d11e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 16:55:37', null, '2019-03-13 16:55:37', null, '0');
INSERT INTO `sys_log` VALUES ('d8cea4c6456d11e9b18f2c56dcd4f98f', '审核商品', '{}', '商品管理', '2019-03-13 16:55:40', null, '2019-03-13 16:55:40', null, '0');
INSERT INTO `sys_log` VALUES ('d9445275462811e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 15:14:44', null, '2019-03-14 15:14:44', null, '0');
INSERT INTO `sys_log` VALUES ('d94beafb462e11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:57:41', null, '2019-03-14 15:57:41', null, '0');
INSERT INTO `sys_log` VALUES ('d99cb848462e11e99da72c56dcd4f98f', '分页查询数据', '{}', '角色模块', '2019-03-14 15:57:42', null, '2019-03-14 15:57:42', null, '0');
INSERT INTO `sys_log` VALUES ('d9d49908462e11e99da72c56dcd4f98f', '分页查询员工信息', '{}', '员工管理', '2019-03-14 15:57:42', null, '2019-03-14 15:57:42', null, '0');
INSERT INTO `sys_log` VALUES ('da072863462e11e99da72c56dcd4f98f', '分页查询数据', '{}', '终端用户模块', '2019-03-14 15:57:42', null, '2019-03-14 15:57:42', null, '0');
INSERT INTO `sys_log` VALUES ('daabb2d3462e11e99da72c56dcd4f98f', '分页查询员工信息', '{}', '员工管理', '2019-03-14 15:57:43', null, '2019-03-14 15:57:43', null, '0');
INSERT INTO `sys_log` VALUES ('dad8ad6c462e11e99da72c56dcd4f98f', '分页查询数据', '{}', '角色模块', '2019-03-14 15:57:44', null, '2019-03-14 15:57:44', null, '0');
INSERT INTO `sys_log` VALUES ('db04aaf8462e11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:57:44', null, '2019-03-14 15:57:44', null, '0');
INSERT INTO `sys_log` VALUES ('db7d6d06462811e99da72c56dcd4f98f', '分页查询数据', '{}', '角色模块', '2019-03-14 15:14:48', null, '2019-03-14 15:14:48', null, '0');
INSERT INTO `sys_log` VALUES ('dca78a2b462811e99da72c56dcd4f98f', '跳转到更新页面并回显数据', '{}', '角色模块', '2019-03-14 15:14:50', null, '2019-03-14 15:14:50', null, '0');
INSERT INTO `sys_log` VALUES ('dcd8ca57463011e99da72c56dcd4f98f', '分页查询终端数据', '{}', '终端管理', '2019-03-14 16:12:06', null, '2019-03-14 16:12:06', null, '0');
INSERT INTO `sys_log` VALUES ('de164580464111e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 18:13:49', null, '2019-03-14 18:13:49', null, '0');
INSERT INTO `sys_log` VALUES ('dfb5125f456811e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:20:04', null, '2019-03-13 16:20:04', null, '0');
INSERT INTO `sys_log` VALUES ('e00df0df464111e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:13:53', null, '2019-03-14 18:13:53', null, '0');
INSERT INTO `sys_log` VALUES ('e0472165456d11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:55:53', null, '2019-03-13 16:55:53', null, '0');
INSERT INTO `sys_log` VALUES ('e07569b3462811e99da72c56dcd4f98f', '添加数据信息', '{}', '角色模块', '2019-03-14 15:14:56', null, '2019-03-14 15:14:56', null, '0');
INSERT INTO `sys_log` VALUES ('e089a2b1463111e99da72c56dcd4f98f', '新增或修改品牌', '{\"brandImg\":[\"\"],\"brandName\":[\"??\"],\"brandRemark\":[\"\"],\"id\":[\"\"]}', '品牌管理', '2019-03-14 16:19:22', null, '2019-03-14 16:19:22', null, '0');
INSERT INTO `sys_log` VALUES ('e0cc779c456811e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 16:20:06', null, '2019-03-13 16:20:06', null, '0');
INSERT INTO `sys_log` VALUES ('e0d59c0f464111e99da72c56dcd4f98f', '跳转到修改页面', '{}', '商品库存管理', '2019-03-14 18:13:54', null, '2019-03-14 18:13:54', null, '0');
INSERT INTO `sys_log` VALUES ('e123e1a1462811e99da72c56dcd4f98f', '分页查询数据', '{}', '角色模块', '2019-03-14 15:14:57', null, '2019-03-14 15:14:57', null, '0');
INSERT INTO `sys_log` VALUES ('e148d11b463111e99da72c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-14 16:19:23', null, '2019-03-14 16:19:23', null, '0');
INSERT INTO `sys_log` VALUES ('e16738de456b11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 16:41:36', null, '2019-03-13 16:41:36', null, '0');
INSERT INTO `sys_log` VALUES ('e1dea521464111e99da72c56dcd4f98f', '分页查询库存数据', '{}', '库存管理模块', '2019-03-14 18:13:56', null, '2019-03-14 18:13:56', null, '0');
INSERT INTO `sys_log` VALUES ('e26fb0c5464111e99da72c56dcd4f98f', '跳转到新增页面', '{}', '商品库存管理', '2019-03-14 18:13:57', null, '2019-03-14 18:13:57', null, '0');
INSERT INTO `sys_log` VALUES ('e30f370e462811e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 15:15:00', null, '2019-03-14 15:15:00', null, '0');
INSERT INTO `sys_log` VALUES ('e31549ae456b11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:41:38', null, '2019-03-13 16:41:38', null, '0');
INSERT INTO `sys_log` VALUES ('e41486ef463111e99da72c56dcd4f98f', '跳转到新增品牌页面', '{}', '品牌管理', '2019-03-14 16:19:28', null, '2019-03-14 16:19:28', null, '0');
INSERT INTO `sys_log` VALUES ('e4a5021d462811e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:15:03', null, '2019-03-14 15:15:03', null, '0');
INSERT INTO `sys_log` VALUES ('e8d80bde456b11e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 16:41:48', null, '2019-03-13 16:41:48', null, '0');
INSERT INTO `sys_log` VALUES ('ea178d7c463111e99da72c56dcd4f98f', '新增或修改品牌', '{\"brandImg\":[\"\"],\"brandName\":[\"???\"],\"brandRemark\":[\"\"],\"id\":[\"\"]}', '品牌管理', '2019-03-14 16:19:38', null, '2019-03-14 16:19:38', null, '0');
INSERT INTO `sys_log` VALUES ('ea828f53463411e99da72c56dcd4f98f', '新增商品数据', '{\"goodsImg\":[\"\"],\"goodsSortId\":[\"2a242b62463111e99da72c56dcd4f98f\"],\"goodsSubhead\":[\"S1\"],\"salePrice\":[\"700\"],\"goodsBrandId\":[\"ea123e4e463111e99da72c56dcd4f98f\"],\"costPrice\":[\"500\"],\"goodsTag\":[\"\"],\"bindBusiness\":[\"3b794236462b11e99da72c56dcd4f98f\"],\"id\":[\"\"],\"goodsModel\":[\"\"],\"goodsSuggest\":[\"\"],\"goodsName\":[\"?????S1\"]}', '商品管理', '2019-03-14 16:41:07', null, '2019-03-14 16:41:07', null, '0');
INSERT INTO `sys_log` VALUES ('eaa253d8456c11e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 16:49:01', null, '2019-03-13 16:49:01', null, '0');
INSERT INTO `sys_log` VALUES ('eaad995a457111e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:24:48', null, '2019-03-13 17:24:48', null, '0');
INSERT INTO `sys_log` VALUES ('eac70860463111e99da72c56dcd4f98f', '分页查询品牌数据', '{}', '品牌管理', '2019-03-14 16:19:39', null, '2019-03-14 16:19:39', null, '0');
INSERT INTO `sys_log` VALUES ('eb3766a8457111e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 17:24:49', null, '2019-03-13 17:24:49', null, '0');
INSERT INTO `sys_log` VALUES ('eb3a0759463411e99da72c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-14 16:41:08', null, '2019-03-14 16:41:08', null, '0');
INSERT INTO `sys_log` VALUES ('eb5fd65d456811e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:20:24', null, '2019-03-13 16:20:24', null, '0');
INSERT INTO `sys_log` VALUES ('ebf240dc456c11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:49:03', null, '2019-03-13 16:49:03', null, '0');
INSERT INTO `sys_log` VALUES ('ec09b034456811e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 16:20:25', null, '2019-03-13 16:20:25', null, '0');
INSERT INTO `sys_log` VALUES ('ecaf9750463411e99da72c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-14 16:41:11', null, '2019-03-14 16:41:11', null, '0');
INSERT INTO `sys_log` VALUES ('ed33b88d456c11e9b18f2c56dcd4f98f', '跳转到商品审核页面', '{}', '商品管理', '2019-03-13 16:49:05', null, '2019-03-13 16:49:05', null, '0');
INSERT INTO `sys_log` VALUES ('ed50596e463111e99da72c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-14 16:19:43', null, '2019-03-14 16:19:43', null, '0');
INSERT INTO `sys_log` VALUES ('eeb1db55455911e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 14:33:07', null, '2019-03-13 14:33:07', null, '0');
INSERT INTO `sys_log` VALUES ('efef2ab9455e11e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:08:57', null, '2019-03-13 15:08:57', null, '0');
INSERT INTO `sys_log` VALUES ('f000f127463111e99da72c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-14 16:19:48', null, '2019-03-14 16:19:48', null, '0');
INSERT INTO `sys_log` VALUES ('f010d6ad455911e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 14:33:09', null, '2019-03-13 14:33:09', null, '0');
INSERT INTO `sys_log` VALUES ('f0513839455511e9b18f2c56dcd4f98f', '跳转到登录界面', '{}', '日志模块', '2019-03-13 14:04:31', null, '2019-03-13 14:04:31', null, '0');
INSERT INTO `sys_log` VALUES ('f06b449b456811e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 16:20:32', null, '2019-03-13 16:20:32', null, '0');
INSERT INTO `sys_log` VALUES ('f0975300455e11e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 15:08:58', null, '2019-03-13 15:08:58', null, '0');
INSERT INTO `sys_log` VALUES ('f1293a3b456011e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 15:23:18', null, '2019-03-13 15:23:18', null, '0');
INSERT INTO `sys_log` VALUES ('f139801f455511e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 14:04:33', null, '2019-03-13 14:04:33', null, '0');
INSERT INTO `sys_log` VALUES ('f255049c456011e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 15:23:20', null, '2019-03-13 15:23:20', null, '0');
INSERT INTO `sys_log` VALUES ('f600977d456011e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 15:23:26', null, '2019-03-13 15:23:26', null, '0');
INSERT INTO `sys_log` VALUES ('f68b9c3c463111e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 16:19:59', null, '2019-03-14 16:19:59', null, '0');
INSERT INTO `sys_log` VALUES ('f700666e456b11e9b18f2c56dcd4f98f', '审核商品', '{}', '商品管理', '2019-03-13 16:42:12', null, '2019-03-13 16:42:12', null, '0');
INSERT INTO `sys_log` VALUES ('f748077c462a11e99da72c56dcd4f98f', '分页查询商家数据', '{}', '商家管理', '2019-03-14 15:29:53', null, '2019-03-14 15:29:53', null, '0');
INSERT INTO `sys_log` VALUES ('f7cb3337462a11e99da72c56dcd4f98f', '跳转到新增页面', '{}', '商家管理', '2019-03-14 15:29:54', null, '2019-03-14 15:29:54', null, '0');
INSERT INTO `sys_log` VALUES ('f8c0ef72457111e9b18f2c56dcd4f98f', '跳转到登录界面', '{}', '日志模块', '2019-03-13 17:25:11', null, '2019-03-13 17:25:11', null, '0');
INSERT INTO `sys_log` VALUES ('f963360a463111e99da72c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-14 16:20:03', null, '2019-03-14 16:20:03', null, '0');
INSERT INTO `sys_log` VALUES ('f98c09bf457111e9b18f2c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '日志模块', '2019-03-13 17:25:13', null, '2019-03-13 17:25:13', null, '0');
INSERT INTO `sys_log` VALUES ('f9dadb7b463111e99da72c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-14 16:20:04', null, '2019-03-14 16:20:04', null, '0');
INSERT INTO `sys_log` VALUES ('faf2dc30457111e9b18f2c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-13 17:25:15', null, '2019-03-13 17:25:15', null, '0');
INSERT INTO `sys_log` VALUES ('fb7f5b4b457111e9b18f2c56dcd4f98f', '跳转到商品添加页面', '{}', '商品管理', '2019-03-13 17:25:16', null, '2019-03-13 17:25:16', null, '0');
INSERT INTO `sys_log` VALUES ('fe18e4c4463411e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 16:41:40', null, '2019-03-14 16:41:40', null, '0');
INSERT INTO `sys_log` VALUES ('fe21fe3b462911e99da72c56dcd4f98f', '输入账号 密码 进入首页操作', '{\"password\":[\"123\"],\"loginName\":[\"admin\"]}', '登录模块', '2019-03-14 15:22:55', null, '2019-03-14 15:22:55', null, '0');
INSERT INTO `sys_log` VALUES ('ff891587456b11e9b18f2c56dcd4f98f', '审核商品', '{}', '商品管理', '2019-03-13 16:42:26', null, '2019-03-13 16:42:26', null, '0');
INSERT INTO `sys_log` VALUES ('ffc8de89463411e99da72c56dcd4f98f', '分页查询商品数据', '{}', '商品管理', '2019-03-14 16:41:43', null, '2019-03-14 16:41:43', null, '0');

-- ----------------------------
-- Table structure for sys_meesage_notify
-- ----------------------------
DROP TABLE IF EXISTS `sys_meesage_notify`;
CREATE TABLE `sys_meesage_notify` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息设置id',
  `message_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '消息内容',
  `send_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发送方式',
  `send_obj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发送对象',
  `is_push` int(11) DEFAULT NULL COMMENT '是否推送消息',
  `is_deleted` int(1) DEFAULT NULL COMMENT '数据是否有效',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '最后修改时间',
  `update_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息设置表';

-- ----------------------------
-- Records of sys_meesage_notify
-- ----------------------------
INSERT INTO `sys_meesage_notify` VALUES ('13c2116543d311e99485525400c68bfa', '贵公司2017年9月15日的订单XJS***JO，提货单号80**17中的货物已全部出库。详 询 400***88 或登录经销商平台查询【***物流】', '1,2,3', '商品出库', '0', '0', '2019-03-11 15:55:46', null, '2019-03-11 15:55:46', null);
INSERT INTO `sys_meesage_notify` VALUES ('1c0a05a843db11e99485525400c68bfa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa', '0,1,2,3', 'aaaa', '0', '0', '2019-03-11 16:53:15', null, '2019-03-11 16:53:15', null);
INSERT INTO `sys_meesage_notify` VALUES ('54bf308b43d711e99485525400c68bfa', '尊敬的顾客，非常感谢您对XX店铺或者公司的肯定，我们将一如既往的为所有顾客提供高质量的服务和产品', '1,3', '商品购买', '0', '0', '2019-03-11 16:26:04', null, '2019-03-11 16:26:04', null);
INSERT INTO `sys_meesage_notify` VALUES ('558984b143e711e99485525400c68bfa', '借助联想查询服务，帮您在地址栏中自动填充未输完的搜索字词和网址', '1,2', '用户互动', '0', '0', '2019-03-11 18:20:45', null, '2019-03-11 18:20:45', null);
INSERT INTO `sys_meesage_notify` VALUES ('81bb677f43d611e99485525400c68bfa', 'VGC提醒您:您有交易订单已经导出，请在48小时内完成查看确认!***VGC 【**网】', '0,1,2', '订单导出', '0', '0', '2019-03-11 16:20:17', null, '2019-03-11 16:20:17', null);
INSERT INTO `sys_meesage_notify` VALUES ('a63ae9f043e611e99485525400c68bfa', 'bbbbb', '0,1', 'bbb', '1', '0', '2019-03-11 18:15:52', null, '2019-03-11 18:15:52', null);
INSERT INTO `sys_meesage_notify` VALUES ('ac45b14343cd11e99485525400c68bfa', '亲，感谢您选择XX平台。您购买的XXXXXX已经发货啦。XX平台为你提供快递单号5802xx0326553，祝愿亲的生活充满幸福与欢乐。', '0,1', '订单创建', '0', '0', '2019-03-11 15:17:04', null, '2019-03-11 15:17:04', null);
INSERT INTO `sys_meesage_notify` VALUES ('bb1da67243d711e99485525400c68bfa', '【物流公司】尊敬的客户，您的订单XXXXXXXXXXXXX已发出，我们预计货物将在3天内送达。', '1', '订单发货', '0', '1', '2019-03-11 16:29:03', null, '2019-03-11 16:29:03', null);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单id',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单名称',
  `menu_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单code',
  `pid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父id',
  `level` int(11) DEFAULT NULL COMMENT '菜单层级',
  `menu_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单url',
  `menu_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单图片地址',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '商品管理', 'GOODS', '0', '1', null, null, '1');
INSERT INTO `sys_menu` VALUES ('11', '商品管理', 'GOODS_01', '1', '2', '#views/sysManage/bizGoods.html', null, '11');
INSERT INTO `sys_menu` VALUES ('12', '品牌管理', 'BRAND', '1', '2', '#views/sysManage/bizBrand.html', null, '12');
INSERT INTO `sys_menu` VALUES ('13', '一级分类', 'SORT', '1', '2', '#views/sysManage/bizSort1.html', null, '13');
INSERT INTO `sys_menu` VALUES ('14', '二级分类', 'SORT2', '1', '2', '#views/sysManage/bizSort2.html', null, '14');
INSERT INTO `sys_menu` VALUES ('2', '系统管理', 'SYSTEM', '0', '1', '', '', '2');
INSERT INTO `sys_menu` VALUES ('21', '前端用户管理', 'USER_01', '2', '2', '#views/sysManage/sysUsers.html', null, '21');
INSERT INTO `sys_menu` VALUES ('22', '员工管理', 'EMPLOYEE_01', '2', '2', '#views/sysManage/sysEmployee.html', null, '22');
INSERT INTO `sys_menu` VALUES ('23', '角色管理', 'ROLE', '2', '2', '#views/sysManage/sysRole.html', null, '23');
INSERT INTO `sys_menu` VALUES ('24', '商家管理', 'BUSINESS', '2', '2', '#views/sysManage/bizBusiness.html', null, '24');
INSERT INTO `sys_menu` VALUES ('42', '其他设置', 'OTHER', '0', '1', null, null, '42');
INSERT INTO `sys_menu` VALUES ('43', '平台信息设置', 'OTHER_INFORMATION', '42', '2', '#views/sysManage/sysPlateform.html', null, '43');
INSERT INTO `sys_menu` VALUES ('5', '终端管理', 'TERMINAL', '0', '1', '', '', '5');
INSERT INTO `sys_menu` VALUES ('51', '终端管理', 'TERMINAL_01', '5', '2', '#views/sysManage/bizTerminal.html', '', '51');
INSERT INTO `sys_menu` VALUES ('6', '代理商管理', 'AGENT', '0', '1', null, null, '6');
INSERT INTO `sys_menu` VALUES ('61', '代理商管理', 'AGENT_01', '6', '2', '#views/sysManage/bizAgent.html', null, '61');
INSERT INTO `sys_menu` VALUES ('62', '支付设置', 'OTHOR_CHANNEL', '42', '2', '#views/sysManage/sysPaymentChannel.html', null, '62');
INSERT INTO `sys_menu` VALUES ('63', '物流公司设置', 'OTHER_LOGISTICS', '42', '2', '#views/sysManage/sysLogistics.html', null, '63');
INSERT INTO `sys_menu` VALUES ('64', '基本设置', 'OTHER_BASE_SET', '42', '2', '#views/sysSetup/sysBaseSetup.html', null, '64');
INSERT INTO `sys_menu` VALUES ('65', '消息提醒设置', 'OTHER_MESSAGE_NOTIFY', '42', '2', '#views/sysManage/sysMessageNotify.html', null, '65');
INSERT INTO `sys_menu` VALUES ('7', '库存管理', 'STOCK', '0', '1', null, null, '7');
INSERT INTO `sys_menu` VALUES ('71', '库存管理', 'STOCK_01', '7', '2', '#views/sysManage/bizStock.html', null, '71');

-- ----------------------------
-- Table structure for sys_payment_channel
-- ----------------------------
DROP TABLE IF EXISTS `sys_payment_channel`;
CREATE TABLE `sys_payment_channel` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '支付渠道id',
  `channel_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '渠道名称',
  `channel_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '渠道code',
  `order` int(11) DEFAULT NULL COMMENT '排序',
  `is_open` int(1) DEFAULT NULL COMMENT '是否开启',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `update_on` datetime DEFAULT NULL COMMENT '最后修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付渠道表';

-- ----------------------------
-- Records of sys_payment_channel
-- ----------------------------
INSERT INTO `sys_payment_channel` VALUES ('2930333f424d11e99485525400c68bfa', '小米钱包', 'MINI', '4', '0', '2019-03-09 17:24:39', null, '2019-03-09 17:24:39', null);
INSERT INTO `sys_payment_channel` VALUES ('7d62c3cc424511e99485525400c68bfa', '微信', 'WEIXI_CODE', '1', '1', '2019-03-09 16:29:45', null, '2019-03-09 16:29:45', null);
INSERT INTO `sys_payment_channel` VALUES ('aed80083424a11e99485525400c68bfa', '移动和红包支付', 'YIDON_HE', '2', '1', '2019-03-09 17:06:55', null, '2019-03-09 18:19:13', null);
INSERT INTO `sys_payment_channel` VALUES ('d2986723424911e99485525400c68bfa', '支付宝', 'ZFB_01', '3', '1', '2019-03-09 17:00:46', null, '2019-03-11 10:52:06', null);

-- ----------------------------
-- Table structure for sys_platform
-- ----------------------------
DROP TABLE IF EXISTS `sys_platform`;
CREATE TABLE `sys_platform` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'logo地址',
  `logo_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'logo名称',
  `company_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公司网址',
  `company_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公司名称',
  `qrcode` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '二维码地址',
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `company_addr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '公司地址',
  `is_deleted` int(1) DEFAULT NULL COMMENT '是否删除  0 否 1 已删除',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='平台信息';

-- ----------------------------
-- Records of sys_platform
-- ----------------------------
INSERT INTO `sys_platform` VALUES ('0e7ecff7423211e99485525400c68bfa', 'http://localhost:8082/gla/static/probimg/20190309/1552111837917.png', '大舌头', 'www.sjai.com', '舌尖爱食品股份有限公司', 'http://localhost:8082/gla/static/probimg/20190309/1552111837910.png', '17952658413', '广东东莞', '0', '2019-03-09 18:18:27', null, '2019-03-09 18:18:27', null);
INSERT INTO `sys_platform` VALUES ('4995c865421711e99485525400c68bfa', 'http://localhost:8082/gla/static/probimg/20190309/1552100339914.png', '山水图', 'www.nongle.com', '农乐山泉', 'http://localhost:8082/gla/static/probimg/20190309/1552100339908.png', '15963221415', '天津', '1', '2019-03-09 18:18:27', null, '2019-03-09 18:18:27', null);
INSERT INTO `sys_platform` VALUES ('6e193e37421811e99485525400c68bfa', 'http://localhost:8082/gla/static/probimg/20190309/1552100830639.png', '绿草', 'www.shuiqiao.com', '水桥网络', 'http://localhost:8082/gla/static/probimg/20190309/1552100830631.png', '19253634471', '株洲', '1', '2019-03-09 18:18:27', null, '2019-03-09 18:21:18', null);

-- ----------------------------
-- Table structure for sys_province
-- ----------------------------
DROP TABLE IF EXISTS `sys_province`;
CREATE TABLE `sys_province` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省id',
  `province_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '省名称',
  `province_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '省编码code',
  `order` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='省表';

-- ----------------------------
-- Records of sys_province
-- ----------------------------
INSERT INTO `sys_province` VALUES ('110000', '北京市', null, null);
INSERT INTO `sys_province` VALUES ('120000', '天津市', null, null);
INSERT INTO `sys_province` VALUES ('130000', '河北省', null, null);
INSERT INTO `sys_province` VALUES ('140000', '山西省', null, null);
INSERT INTO `sys_province` VALUES ('150000', '内蒙古自治区', null, null);
INSERT INTO `sys_province` VALUES ('210000', '辽宁省', null, null);
INSERT INTO `sys_province` VALUES ('220000', '吉林省', null, null);
INSERT INTO `sys_province` VALUES ('230000', '黑龙江省', null, null);
INSERT INTO `sys_province` VALUES ('310000', '上海市', null, null);
INSERT INTO `sys_province` VALUES ('320000', '江苏省', null, null);
INSERT INTO `sys_province` VALUES ('330000', '浙江省', null, null);
INSERT INTO `sys_province` VALUES ('340000', '安徽省', null, null);
INSERT INTO `sys_province` VALUES ('350000', '福建省', null, null);
INSERT INTO `sys_province` VALUES ('360000', '江西省', null, null);
INSERT INTO `sys_province` VALUES ('370000', '山东省', null, null);
INSERT INTO `sys_province` VALUES ('410000', '河南省', null, null);
INSERT INTO `sys_province` VALUES ('420000', '湖北省', null, null);
INSERT INTO `sys_province` VALUES ('430000', '湖南省', null, null);
INSERT INTO `sys_province` VALUES ('440000', '广东省', null, null);
INSERT INTO `sys_province` VALUES ('450000', '广西壮族自治区', null, null);
INSERT INTO `sys_province` VALUES ('460000', '海南省', null, null);
INSERT INTO `sys_province` VALUES ('500000', '重庆市', null, null);
INSERT INTO `sys_province` VALUES ('510000', '四川省', null, null);
INSERT INTO `sys_province` VALUES ('520000', '贵州省', null, null);
INSERT INTO `sys_province` VALUES ('530000', '云南省', null, null);
INSERT INTO `sys_province` VALUES ('540000', '西藏自治区', null, null);
INSERT INTO `sys_province` VALUES ('610000', '陕西省', null, null);
INSERT INTO `sys_province` VALUES ('620000', '甘肃省', null, null);
INSERT INTO `sys_province` VALUES ('630000', '青海省', null, null);
INSERT INTO `sys_province` VALUES ('640000', '宁夏回族自治区', null, null);
INSERT INTO `sys_province` VALUES ('650000', '新疆维吾尔自治区', null, null);
INSERT INTO `sys_province` VALUES ('710000', '台湾省', null, null);
INSERT INTO `sys_province` VALUES ('810000', '香港特别行政区', null, null);
INSERT INTO `sys_province` VALUES ('820000', '澳门特别行政区', null, null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色id',
  `role_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色编码',
  `sort` int(3) DEFAULT NULL COMMENT '排序',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '超级管理员', '001', '1', '2019-01-14 15:00:55', 'admin', '2019-01-14 15:01:05', 'admin');
INSERT INTO `sys_role` VALUES ('66bee58e-f9cd-11e8-b76e-2c56dc9c49c2', '代理商', '002', '2', '2019-01-14 15:00:58', 'admin', '2019-01-14 15:01:07', 'admin');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色菜单id',
  `role_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色id',
  `menu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色菜单表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('0fb2dc923799cd4181d2e8d619d870fa', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '7');
INSERT INTO `sys_role_menu` VALUES ('279812d81e1bdbf68f77053287ba19df', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '5');
INSERT INTO `sys_role_menu` VALUES ('2e342aaf058cc02be2a9c866c1e6f10a', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '61');
INSERT INTO `sys_role_menu` VALUES ('3adfbe291cdc0351f85247feaae42da8', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '2');
INSERT INTO `sys_role_menu` VALUES ('41204d7513a37ffdb725f09cc753db18', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '24');
INSERT INTO `sys_role_menu` VALUES ('4c486ea0d34f4c7530a38931371d2653', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '6');
INSERT INTO `sys_role_menu` VALUES ('68a2924c76e2043fedd505c7e9cf02cd', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '51');
INSERT INTO `sys_role_menu` VALUES ('6e9eb9a18396ef256de6abf36fba4629', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '11');
INSERT INTO `sys_role_menu` VALUES ('6f4500d88a33e80ce3848813033fba38', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '12');
INSERT INTO `sys_role_menu` VALUES ('73c18917d302bd8251b0e2378f9160d6', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '1');
INSERT INTO `sys_role_menu` VALUES ('8a4487c0c939fba07f44afcb2cc32484', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '71');
INSERT INTO `sys_role_menu` VALUES ('8bbfa95d4993b9ac319b9a846e414e3d', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '21');
INSERT INTO `sys_role_menu` VALUES ('93899a3cd044772d3dd2b2bccd84b65e', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '64');
INSERT INTO `sys_role_menu` VALUES ('a2c1db2f0f28da4a34c50c539ea0b73b', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '13');
INSERT INTO `sys_role_menu` VALUES ('a408ed3ea8e3579cbf4c2590a599a06e', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '62');
INSERT INTO `sys_role_menu` VALUES ('a68db88251c24bf6c328cd807065939f', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '43');
INSERT INTO `sys_role_menu` VALUES ('a7b69c2a278efafaefaacd189232f32e', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '23');
INSERT INTO `sys_role_menu` VALUES ('b574b629387ef46c5eb27cf4c3105653', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '65');
INSERT INTO `sys_role_menu` VALUES ('b7daf85ce0aaf07eef9b8f1804b76e2c', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '42');
INSERT INTO `sys_role_menu` VALUES ('c587fbce633fb97329409f94be9e5b34', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '22');
INSERT INTO `sys_role_menu` VALUES ('d5f98f628093ecb1b1b86c695eb1ab5d', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '63');
INSERT INTO `sys_role_menu` VALUES ('e48e4acf1843e513d42e6297c81d7883', '5369d947-f9cd-11e8-b76e-2c56dc9c49c2', '14');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `sex` int(1) DEFAULT NULL COMMENT '性别  1 男  0  女',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `user_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户头像',
  `growth` int(10) DEFAULT NULL COMMENT '成长值',
  `level` int(3) DEFAULT NULL COMMENT '会员等级',
  `user_model_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '人物模型地址',
  `terminal_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '绑定的终端id',
  `access_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信登录验证id',
  `create_on` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人名称',
  `update_on` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '修改人名称',
  `is_deleted` int(1) DEFAULT NULL COMMENT '删除状态  0 可用  1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('05a2c35a8284a51d2c7d0a0dd83d0767', '刘毅', 'liuyi', '5320', '13652321719', '13652321719@qq.com', '1', '30', null, null, null, null, null, null, '2019-03-20 15:07:39', 'admin', null, null, null);
INSERT INTO `sys_user` VALUES ('0b09d63ff3b011e8b76e2c56dc9c49c2', '陈二', 'chener', '123', '18682450122', '123@163.com', '1', '18', '', '1000', '1', '', '', '', '2019-03-11 18:19:07', '', '2019-03-11 18:18:49', null, '1');
INSERT INTO `sys_user` VALUES ('73f8bb40f38f11e8b76e2c56dc9c49c2', '张三', 'zhangsan', '123', '18682450122', '123@163.com', '1', '18', '', '1000', '1', '', '', '', '2019-03-11 18:19:09', '', '2019-03-11 18:18:52', null, '0');
INSERT INTO `sys_user` VALUES ('7c0a59a2a8ac9530f6435b605f076c16', '陆无双', 'luwusuang', '5247', '18244856317', 'lws@qq.com', '0', '25', null, null, null, null, null, null, '2019-03-20 15:18:48', 'admin', null, null, '1');
INSERT INTO `sys_user` VALUES ('8c6b9468f38f11e8b76e2c56dc9c49c2', '李四', 'lisi', '123', '18682450122', '123@163.com', '1', '18', '', '1000', '1', '', '', '', '2019-03-11 18:19:11', '', '2019-03-11 18:18:54', null, '0');
INSERT INTO `sys_user` VALUES ('aff518b1f3b911e8b76e2c56dc9c49c2', '王五', 'wangwu', '123', '18682450122', '123@163.com', '1', '18', '', '1000', '1', '', '', '', '2019-03-11 18:19:14', '', '2019-03-11 18:18:56', null, '0');
INSERT INTO `sys_user` VALUES ('be82ba8bf3b911e8b76e2c56dc9c49c2', '唐六', 'tangliu', '123', '18682450122', '123@163.com', '0', '18', '', '1000', '1', '', '', '', '2019-03-11 18:19:16', '', '2019-03-11 18:18:58', null, '0');
INSERT INTO `sys_user` VALUES ('f4310cbff3ac11e8b76e2c56dc9c49c2', '朱七', 'zhuqi', '123', '18682450122', '123@163.com', '1', '18', '', '1000', '1', '', '', '', '2019-03-11 18:19:18', '', '2019-03-11 18:19:00', null, '0');
