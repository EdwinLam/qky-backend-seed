/*
 Navicat Premium Data Transfer

 Source Server         : 全课云
 Source Server Type    : MySQL
 Source Server Version : 50534
 Source Host           : ops.thinkjoy.cn:33061
 Source Schema         : qky_classgroup

 Target Server Type    : MySQL
 Target Server Version : 50534
 File Encoding         : 65001

 Date: 09/01/2019 17:08:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bas_atts
-- ----------------------------
DROP TABLE IF EXISTS `bas_atts`;
CREATE TABLE `bas_atts`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupId` bigint(20) NOT NULL COMMENT '所属群组id',
  `sourceId` bigint(20) NULL DEFAULT NULL COMMENT '所属业务表id',
  `sourceCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '来源标识编码,通常是sourceId所对应的表名，如biz_notice表示通知；biz_enroll表示报名；',
  `fileName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件名称,用于显示',
  `fileSize` bigint(20) NOT NULL COMMENT '文件大小，单位是k',
  `fileType` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件类型',
  `fileUrl` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件访问路径',
  `fileId` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件id,上传第三方文件系统时，文件标识的id',
  `creator` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createDate` bigint(20) NOT NULL COMMENT '创建时间',
  `lastModifier` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  `lastModDate` bigint(20) NOT NULL COMMENT '修改时间',
  `status` tinyint(4) NOT NULL COMMENT '状态 0-启用，1-停用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_3`(`groupId`) USING BTREE,
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`groupId`) REFERENCES `bas_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 425 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '附件表，有于记录整个应用中各个功能模块产生的附件' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bas_atts
-- ----------------------------
INSERT INTO `bas_atts` VALUES (60, 64, 52, 'biz_notice', 'tmp_f721b21bfd719fc2524458f8b66bf165.jpg', 139371, 'image', 'http://ks3.qky100.com/20181226154822.q1a5tVpgGb.jpg', '867849', '14', 1545810503649, '14', 1545810503649, 0);
INSERT INTO `bas_atts` VALUES (61, 66, 55, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0qFuQE18159wDDSPPDvD24.ULJYwfAAqcMO23235f84fd500593550cb2180db466c2.jpg', 3414, 'image', 'http://ks3.qky100.com/20181227110550.NLhp0VABXQ.jpg', '867986', '21', 1545879951453, '21', 1545879951453, 0);
INSERT INTO `bas_atts` VALUES (62, 73, 62, 'biz_notice', 'tmp_b12c1b1345341aee8b6f3c23e45a2e80.png', 153512, 'image', 'http://ks3.qky100.com/20181227165859.hCw7FMPG1q.png', '868015', '24', 1545901156330, '24', 1545901156330, 0);
INSERT INTO `bas_atts` VALUES (63, 73, 62, 'biz_notice', 'tmp_74452fd91b686056895d374ced7eedc5.jpg', 143651, 'image', 'http://ks3.qky100.com/20181227165901.bjNO7ujBet.jpg', '868016', '24', 1545901156330, '24', 1545901156330, 0);
INSERT INTO `bas_atts` VALUES (64, 73, 62, 'biz_notice', 'tmp_4dd9eb1e808257643ae498110de9d6bf.png', 551677, 'image', 'http://ks3.qky100.com/20181227165903.IAq2iD3I1k.png', '868017', '24', 1545901156330, '24', 1545901156330, 0);
INSERT INTO `bas_atts` VALUES (65, 73, 62, 'biz_notice', 'tmp_b3b46cbbf2b00f50ce436f60baab88b8.png', 513068, 'image', 'http://ks3.qky100.com/20181227165905.XDDX97ZK1H.png', '868018', '24', 1545901156330, '24', 1545901156330, 0);
INSERT INTO `bas_atts` VALUES (66, 73, 62, 'biz_notice', 'tmp_868a616cb9abd8715e478656cfe38886.png', 144796, 'image', 'http://ks3.qky100.com/20181227165907.iaoVhkCJwy.png', '868019', '24', 1545901156330, '24', 1545901156330, 0);
INSERT INTO `bas_atts` VALUES (67, 73, 62, 'biz_notice', 'tmp_4c32d34b763875a45e77954b8eb97b37.png', 144773, 'image', 'http://ks3.qky100.com/20181227165908.qAyPYGfnmJ.png', '868020', '24', 1545901156330, '24', 1545901156330, 0);
INSERT INTO `bas_atts` VALUES (68, 73, 62, 'biz_notice', 'tmp_a83a9d2ff7ad587451aaf81bbb9fb783.jpg', 184090, 'image', 'http://ks3.qky100.com/20181227165909.5tAoXO1Q5e.jpg', '868021', '24', 1545901156330, '24', 1545901156330, 0);
INSERT INTO `bas_atts` VALUES (69, 73, 62, 'biz_notice', 'tmp_c34e8ec1f8aee4e61f10524785c49db3.png', 203995, 'image', 'http://ks3.qky100.com/20181227165911.erlTjZzAPp.png', '868022', '24', 1545901156330, '24', 1545901156330, 0);
INSERT INTO `bas_atts` VALUES (70, 73, 62, 'biz_notice', 'tmp_e7f7ed2feba72c250f4488b9222986f8.jpg', 1160549, 'image', 'http://ks3.qky100.com/20181227165914.oV4Il1KGzj.jpg', '868023', '24', 1545901156330, '24', 1545901156330, 0);
INSERT INTO `bas_atts` VALUES (71, 73, 70, 'biz_notice', 'tmp_71430fe5fb5f419b0f63aaeb93a4ba30.jpg(13)', 230202, 'image', 'http://ks3.qky100.com/20181227171300.DPKdlXlUzC.jpg', '868040', '24', 1545901981496, '24', 1545901981496, 0);
INSERT INTO `bas_atts` VALUES (72, 64, 43, 'biz_enroll', 'tmp_6880178d829e6c0379e4d8a702f58ad2.jpg', 150227, 'image', 'http://ks3.qky100.com/20181228100927.FD8xHEZ910.jpg', '868182', '14', 1545962969132, '14', 1545962969132, 0);
INSERT INTO `bas_atts` VALUES (73, 64, 72, 'biz_notice', 'tmp_6e200db506af89412a0e76af23fcf0cd.jpg', 150227, 'image', 'http://ks3.qky100.com/20181228151741.oJXD5ZUHJD.jpg', '868236', '14', 1545981462746, '14', 1545981462746, 0);
INSERT INTO `bas_atts` VALUES (74, 87, 76, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.XDczWiWrShVa1d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190102104316.OhEJ1PT2kh.jpg', '868467', '41', 1546397001339, '41', 1546397001339, 0);
INSERT INTO `bas_atts` VALUES (75, 87, 76, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.atgXnwJIQagof5fde661e8a03c7ac40c0824558c44de.png', 26167, 'image', 'http://ks3.qky100.com/20190102104317.DE2tIVEmKx.png', '868468', '41', 1546397001339, '41', 1546397001339, 0);
INSERT INTO `bas_atts` VALUES (76, 87, 56, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.wyNGlYCWSzEra95a025ae4355841dc26643a5229415c.png', 25441, 'image', 'http://ks3.qky100.com/20190102144637.3KG4VanEkE.png', '868472', '41', 1546411601660, '41', 1546411601660, 0);
INSERT INTO `bas_atts` VALUES (77, 87, 79, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.tCdSdQSM8ltz1d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190102155059.Hni3yFwnjc.jpg', '868473', '41', 1546415471773, '41', 1546415471773, 0);
INSERT INTO `bas_atts` VALUES (78, 87, 79, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.oE0BLtsPjgG11d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190102155100.gmr5Q6teuP.jpg', '868474', '41', 1546415471773, '41', 1546415471773, 0);
INSERT INTO `bas_atts` VALUES (79, 87, 79, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.xqA7oMLZtNoy1d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190102155101.gnD0s20xqv.jpg', '868475', '41', 1546415471773, '41', 1546415471773, 0);
INSERT INTO `bas_atts` VALUES (80, 87, 79, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.wEk9pBa5YRTB1d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190102155102.OstPsmsnXA.jpg', '868476', '41', 1546415471773, '41', 1546415471773, 0);
INSERT INTO `bas_atts` VALUES (81, 87, 79, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.QZUGff2hVHVb1d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190102155103.7jI23lcCYM.jpg', '868477', '41', 1546415471773, '41', 1546415471773, 0);
INSERT INTO `bas_atts` VALUES (82, 87, 79, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.VXKp3l7vtGGe1d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190102155104.Eah6NYCWiP.jpg', '868478', '41', 1546415471773, '41', 1546415471773, 0);
INSERT INTO `bas_atts` VALUES (83, 87, 79, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.alvnQsYLvZ8g1d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190102155105.90WsNv1Mm3.jpg', '868479', '41', 1546415471773, '41', 1546415471773, 0);
INSERT INTO `bas_atts` VALUES (84, 87, 79, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.FCrYouVQfzog1d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190102155106.3BptgrlwXt.jpg', '868480', '41', 1546415471773, '41', 1546415471773, 0);
INSERT INTO `bas_atts` VALUES (85, 87, 79, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.iE0aKOQceDbs1d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190102155107.YXF7V1sEG7.jpg', '868481', '41', 1546415471773, '41', 1546415471773, 0);
INSERT INTO `bas_atts` VALUES (86, 87, 80, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.V9QxzD1cch9c2e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190102155522.Hi5MEPeb89.png', '868482', '41', 1546415752479, '41', 1546415752479, 0);
INSERT INTO `bas_atts` VALUES (87, 87, 80, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.tuwxnhsaJFfc2e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190102155526.8QUohkhpUR.png', '868483', '41', 1546415752479, '41', 1546415752479, 0);
INSERT INTO `bas_atts` VALUES (88, 87, 80, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.LJIWakResAvC2e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190102155529.Gn0REFArkU.png', '868484', '41', 1546415752479, '41', 1546415752479, 0);
INSERT INTO `bas_atts` VALUES (89, 87, 80, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.THZs3yjSWoVp2e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190102155532.uCBAg4zQVI.png', '868485', '41', 1546415752479, '41', 1546415752479, 0);
INSERT INTO `bas_atts` VALUES (90, 87, 80, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.HqRGXW9IfW602e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190102155535.cZO8h2Gbgv.png', '868486', '41', 1546415752479, '41', 1546415752479, 0);
INSERT INTO `bas_atts` VALUES (91, 87, 80, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.1Pty9fGfTr3a2e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190102155538.vYRph2hBIe.png', '868487', '41', 1546415752479, '41', 1546415752479, 0);
INSERT INTO `bas_atts` VALUES (92, 87, 80, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.Y3Bcgx7b4uYw2e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190102155542.Pg4QXruZWH.png', '868488', '41', 1546415752479, '41', 1546415752479, 0);
INSERT INTO `bas_atts` VALUES (93, 87, 80, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.vD4U5v1zP2uD2e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190102155545.VJH2vvLL2p.png', '868489', '41', 1546415752479, '41', 1546415752479, 0);
INSERT INTO `bas_atts` VALUES (94, 87, 80, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.BWMwhEIvGIos2e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190102155548.ek1qeYMpZx.png', '868490', '41', 1546415752479, '41', 1546415752479, 0);
INSERT INTO `bas_atts` VALUES (95, 87, 81, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.4GXgQxGhViDFf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190102161325.Tsb2Q8OD7q.jpg', '868491', '41', 1546416818955, '41', 1546416818955, 0);
INSERT INTO `bas_atts` VALUES (96, 87, 81, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.76WUTfKPuN7Sf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190102161327.NvDrhea75k.jpg', '868492', '41', 1546416818955, '41', 1546416818955, 0);
INSERT INTO `bas_atts` VALUES (97, 87, 81, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.ZBldLsVZBGxPf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190102161328.A8LyD4QW1l.jpg', '868493', '41', 1546416818955, '41', 1546416818955, 0);
INSERT INTO `bas_atts` VALUES (98, 87, 81, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.2XO4KcNkoWctf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190102161330.slt7ONN3Yr.jpg', '868494', '41', 1546416818955, '41', 1546416818955, 0);
INSERT INTO `bas_atts` VALUES (99, 87, 81, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.gTrvbtVIipkDf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190102161331.BfYRIpMx2H.jpg', '868495', '41', 1546416818955, '41', 1546416818955, 0);
INSERT INTO `bas_atts` VALUES (100, 87, 81, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.VpuGfOWE7Nzhf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190102161333.l1Qe0Sg4d0.jpg', '868496', '41', 1546416818955, '41', 1546416818955, 0);
INSERT INTO `bas_atts` VALUES (101, 87, 81, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.tma8L71vUiwsf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190102161334.xIChYYHUpc.jpg', '868497', '41', 1546416818955, '41', 1546416818955, 0);
INSERT INTO `bas_atts` VALUES (102, 87, 81, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.GmMgDPoW2PKCf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190102161336.meF6kbEPXz.jpg', '868498', '41', 1546416818955, '41', 1546416818955, 0);
INSERT INTO `bas_atts` VALUES (103, 87, 81, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.hXaV2nEFAVLqf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190102161337.iSYRr7iB9Y.jpg', '868499', '41', 1546416818955, '41', 1546416818955, 0);
INSERT INTO `bas_atts` VALUES (104, 87, 82, 'biz_notice', 'tmp_8dc10efde6ba3408c1347762180aff52323b931aa2f441bd.jpg', 83175, 'image', 'http://ks3.qky100.com/20190102161648.0JpCeWvCdv.jpg', '868500', '41', 1546417026854, '41', 1546417026854, 0);
INSERT INTO `bas_atts` VALUES (105, 87, 82, 'biz_notice', 'tmp_8c68c2a63fb3d0d23dc94b4067fab007f1494146565cb27c.jpg', 103800, 'image', 'http://ks3.qky100.com/20190102161650.afnu5OCAQc.jpg', '868501', '41', 1546417026854, '41', 1546417026854, 0);
INSERT INTO `bas_atts` VALUES (106, 87, 82, 'biz_notice', 'tmp_8e0499085fbedea84c51f042adac11bbeb590ef2899929a6.jpg', 44281, 'image', 'http://ks3.qky100.com/20190102161652.kf4JiuXWAB.jpg', '868502', '41', 1546417026854, '41', 1546417026854, 0);
INSERT INTO `bas_atts` VALUES (107, 87, 82, 'biz_notice', 'tmp_877965110cbeafad6da596ed404a4c83319f0ecb995d1ad3.jpg', 81705, 'image', 'http://ks3.qky100.com/20190102161653.xaS6ztDbzf.jpg', '868503', '41', 1546417026855, '41', 1546417026855, 0);
INSERT INTO `bas_atts` VALUES (108, 87, 82, 'biz_notice', 'tmp_c39049b351e39d1f6e90503e260e858d83b6ce1e454a7dd9.jpg', 209623, 'image', 'http://ks3.qky100.com/20190102161655.KsUdDIeba6.jpg', '868504', '41', 1546417026855, '41', 1546417026855, 0);
INSERT INTO `bas_atts` VALUES (109, 87, 82, 'biz_notice', 'tmp_35dffde53038d2403107738c0a5c4c518d9438d21261e93b.jpg', 209623, 'image', 'http://ks3.qky100.com/20190102161658.vT4SdToLv6.jpg', '868505', '41', 1546417026855, '41', 1546417026855, 0);
INSERT INTO `bas_atts` VALUES (110, 87, 82, 'biz_notice', 'tmp_9653b2891338029fb47ffaf28e1dadd86f1fbc012e52e7c3.jpg', 196268, 'image', 'http://ks3.qky100.com/20190102161700.BOCnSqEG7Z.jpg', '868506', '41', 1546417026855, '41', 1546417026855, 0);
INSERT INTO `bas_atts` VALUES (111, 87, 82, 'biz_notice', 'tmp_5155febe19bf4e8bc297e2706026260b4ac77a6fb3eecbf8.jpg', 184692, 'image', 'http://ks3.qky100.com/20190102161702.CoDRjeIkSM.jpg', '868507', '41', 1546417026855, '41', 1546417026855, 0);
INSERT INTO `bas_atts` VALUES (112, 87, 82, 'biz_notice', 'tmp_ace7be4a4f11988495964bacf7752f7eb678e99426288d13.jpg', 211660, 'image', 'http://ks3.qky100.com/20190102161704.tJ1hSZ47Qx.jpg', '868508', '41', 1546417026855, '41', 1546417026855, 0);
INSERT INTO `bas_atts` VALUES (113, 95, 83, 'biz_notice', 'tmp_afe98a20d97010592fe0a37fe2889636ac22acf149a97f6e.jpg', 50885, 'image', 'http://ks3.qky100.com/20190102162303.t2NeigNIS3.jpg', '868509', '24', 1546417389817, '24', 1546417389817, 0);
INSERT INTO `bas_atts` VALUES (114, 95, 83, 'biz_notice', 'tmp_bad5694f5bab38d5e0535cc8877b04c0e19984cb333eee94.jpg', 50885, 'image', 'http://ks3.qky100.com/20190102162304.WT5p4EUedA.jpg', '868510', '24', 1546417389817, '24', 1546417389817, 0);
INSERT INTO `bas_atts` VALUES (115, 95, 83, 'biz_notice', 'tmp_5ac2bd422f6b095d99b565cbc3cd7766abc12f86827b6ab5.jpg', 50885, 'image', 'http://ks3.qky100.com/20190102162305.5AG3j2pk0j.jpg', '868511', '24', 1546417389817, '24', 1546417389817, 0);
INSERT INTO `bas_atts` VALUES (116, 95, 83, 'biz_notice', 'tmp_8d006201385cb8afa1907607756b1ccc92aa22955fea4a4c.jpg', 50885, 'image', 'http://ks3.qky100.com/20190102162306.01tHXFZyPV.jpg', '868512', '24', 1546417389817, '24', 1546417389817, 0);
INSERT INTO `bas_atts` VALUES (117, 95, 83, 'biz_notice', 'tmp_99b7ae645b113dac705646fccd5eba454639c8e6e8df4ad7.jpg', 50885, 'image', 'http://ks3.qky100.com/20190102162307.oaRRjBQlJR.jpg', '868513', '24', 1546417389817, '24', 1546417389817, 0);
INSERT INTO `bas_atts` VALUES (118, 95, 83, 'biz_notice', 'tmp_6c32c9559d1f028f3f44828de2d542ec79bcdc86170cbc77.jpg', 50885, 'image', 'http://ks3.qky100.com/20190102162308.YYG38lbFMZ.jpg', '868514', '24', 1546417389817, '24', 1546417389817, 0);
INSERT INTO `bas_atts` VALUES (119, 95, 84, 'biz_notice', 'tmp_360c1bdebae1e3461f4b196f43dee904050389058b757ec2.jpg', 1207408, 'image', 'http://ks3.qky100.com/20190102162617.aI82aIMCrX.jpg', '868515', '24', 1546417578923, '24', 1546417578923, 0);
INSERT INTO `bas_atts` VALUES (120, 64, 85, 'biz_notice', 'tmp_d3d4fb894f72a261c57bd6792a673d7a.jpg', 1160549, 'image', 'http://ks3.qky100.com/20190102162909.NquQ41bn3S.jpg', '868516', '14', 1546417792542, '14', 1546417792542, 0);
INSERT INTO `bas_atts` VALUES (121, 64, 85, 'biz_notice', 'tmp_1e9e6b9190f43a08bca0ac3037af9b29.jpg', 218382, 'image', 'http://ks3.qky100.com/20190102162911.BuBs7AvGmB.jpg', '868517', '14', 1546417792543, '14', 1546417792543, 0);
INSERT INTO `bas_atts` VALUES (122, 64, 85, 'biz_notice', 'tmp_1b0198952f1f28eb8bdd2800447e41bd.jpg', 355654, 'image', 'http://ks3.qky100.com/20190102162913.pSrmtP5fQA.jpg', '868518', '14', 1546417792543, '14', 1546417792543, 0);
INSERT INTO `bas_atts` VALUES (123, 64, 85, 'biz_notice', 'tmp_0e56b8ad0079f27c1c2af702a73bb118.jpg', 2239195, 'image', 'http://ks3.qky100.com/20190102162919.fBDVgdHkeG.jpg', '868519', '14', 1546417792543, '14', 1546417792543, 0);
INSERT INTO `bas_atts` VALUES (124, 64, 85, 'biz_notice', 'tmp_977f540750444eb6edca1f85461c788c.jpg', 2239195, 'image', 'http://ks3.qky100.com/20190102162925.1up6jced95.jpg', '868520', '14', 1546417792543, '14', 1546417792543, 0);
INSERT INTO `bas_atts` VALUES (125, 64, 85, 'biz_notice', 'tmp_242a3d145c195a43364c1abe2e19c745.jpg', 2239195, 'image', 'http://ks3.qky100.com/20190102162934.IcWQC9ulaR.jpg', '868521', '14', 1546417792543, '14', 1546417792543, 0);
INSERT INTO `bas_atts` VALUES (126, 64, 85, 'biz_notice', 'tmp_c50e85b6589fccedc6c0502ece1b285c.jpg', 2239195, 'image', 'http://ks3.qky100.com/20190102162941.vQlbOMgEJY.jpg', '868522', '14', 1546417792543, '14', 1546417792543, 0);
INSERT INTO `bas_atts` VALUES (127, 64, 85, 'biz_notice', 'tmp_ab51aae216db48286812f5e1db1ed384.jpg', 288162, 'image', 'http://ks3.qky100.com/20190102162943.t6uyKFOFKB.jpg', '868523', '14', 1546417792543, '14', 1546417792543, 0);
INSERT INTO `bas_atts` VALUES (128, 64, 85, 'biz_notice', 'tmp_42221bfe679c318ee51adcaa48d89e9c.jpg', 2239195, 'image', 'http://ks3.qky100.com/20190102162951.itKbbY4iyQ.jpg', '868524', '14', 1546417792543, '14', 1546417792543, 0);
INSERT INTO `bas_atts` VALUES (129, 64, 86, 'biz_notice', 'tmp_e292f3b1c2c67d212c0641b2ac6c479d.jpg', 2661124, 'image', 'http://ks3.qky100.com/20190102163128.4RPOjxWvnp.jpg', '868525', '14', 1546417958861, '14', 1546417958861, 0);
INSERT INTO `bas_atts` VALUES (130, 64, 86, 'biz_notice', 'tmp_7b75bc1ec888582eb8efc5b4725cfea4.jpg', 2472314, 'image', 'http://ks3.qky100.com/20190102163134.bRKVvEOKJl.jpg', '868526', '14', 1546417958861, '14', 1546417958861, 0);
INSERT INTO `bas_atts` VALUES (131, 64, 86, 'biz_notice', 'tmp_1a92a4e8a55c5e6ada1f96062e3382bd.jpg', 2358549, 'image', 'http://ks3.qky100.com/20190102163141.mZGDmbmwj1.jpg', '868527', '14', 1546417958861, '14', 1546417958861, 0);
INSERT INTO `bas_atts` VALUES (132, 64, 86, 'biz_notice', 'tmp_04916a27c1e56e8634cc53663fea5d30.jpg', 1660531, 'image', 'http://ks3.qky100.com/20190102163148.EmDZdu1e6D.jpg', '868528', '14', 1546417958861, '14', 1546417958861, 0);
INSERT INTO `bas_atts` VALUES (133, 64, 86, 'biz_notice', 'tmp_638b1e8ac7eff9cba461732f10784d42.jpg', 2612059, 'image', 'http://ks3.qky100.com/20190102163203.Oy9KVKscgp.jpg', '868529', '14', 1546417958861, '14', 1546417958861, 0);
INSERT INTO `bas_atts` VALUES (134, 64, 86, 'biz_notice', 'tmp_a1be746e0c29637821a5761163992f0b.jpg', 2553659, 'image', 'http://ks3.qky100.com/20190102163212.OUWiWN61PN.jpg', '868530', '14', 1546417958861, '14', 1546417958861, 0);
INSERT INTO `bas_atts` VALUES (135, 64, 86, 'biz_notice', 'tmp_0c19d0e5ed0b3701b9fdf7ce496634c6.jpg', 2617204, 'image', 'http://ks3.qky100.com/20190102163218.TswNBDeS0q.jpg', '868531', '14', 1546417958861, '14', 1546417958861, 0);
INSERT INTO `bas_atts` VALUES (136, 64, 86, 'biz_notice', 'tmp_44f16d5d3319f392465dccc602301827.jpg', 3258041, 'image', 'http://ks3.qky100.com/20190102163226.ALT5LXydCg.jpg', '868532', '14', 1546417958861, '14', 1546417958861, 0);
INSERT INTO `bas_atts` VALUES (137, 64, 86, 'biz_notice', 'tmp_7f17b6077826ebae3be26cb934c6ddca.jpg', 5381493, 'image', 'http://ks3.qky100.com/20190102163236.Na6sZqyCaw.jpg', '868533', '14', 1546417958861, '14', 1546417958861, 0);
INSERT INTO `bas_atts` VALUES (138, 64, 87, 'biz_notice', 'tmp_b824927cc9d41181567209673a04e2ad.jpg', 2239195, 'image', 'http://ks3.qky100.com/20190102171652.r9EaPFfmQo.jpg', '868543', '14', 1546420614580, '14', 1546420614580, 0);
INSERT INTO `bas_atts` VALUES (139, 64, 88, 'biz_notice', 'tmp_4d81541ddffc4ee295381aa1770ab1d3.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103094647.TRNJLtXxQ8.jpg', '868545', '14', 1546480010271, '14', 1546480010271, 0);
INSERT INTO `bas_atts` VALUES (140, 64, 88, 'biz_notice', 'tmp_5d216700f12efc700a8163b98e4ef8cc.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103094649.NQCoxTfNQ6.jpg', '868546', '14', 1546480010271, '14', 1546480010271, 0);
INSERT INTO `bas_atts` VALUES (141, 64, 69, 'biz_enroll', 'tmp_a8441c7056c48c422d69c27fd6ce299d.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103094900.tyN22zUHWL.jpg', '868547', '14', 1546480143562, '14', 1546480143562, 0);
INSERT INTO `bas_atts` VALUES (142, 64, 69, 'biz_enroll', 'tmp_38049426a14680ac567117630d9f1c19.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103094902.WMG0QqkId2.jpg', '868548', '14', 1546480143562, '14', 1546480143562, 0);
INSERT INTO `bas_atts` VALUES (143, 64, 92, 'biz_notice', 'tmp_5237fbf457346b4351178aa39b7cdc47.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103103544.hXZCiW4okm.jpg', '868626', '14', 1546482972356, '14', 1546482972356, 0);
INSERT INTO `bas_atts` VALUES (144, 64, 92, 'biz_notice', 'tmp_b50a03688b65b298ad5aecd6b9c7bfc5.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103103546.CkSxZwpetG.jpg', '868627', '14', 1546482972356, '14', 1546482972356, 0);
INSERT INTO `bas_atts` VALUES (145, 64, 92, 'biz_notice', 'tmp_2a4bc69ce543736ac3ba8541c3f150f9.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103103548.Jci9UKeezo.jpg', '868628', '14', 1546482972356, '14', 1546482972356, 0);
INSERT INTO `bas_atts` VALUES (146, 64, 92, 'biz_notice', 'tmp_c3081d25944356cc85285296e80086da.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103103602.n0kFeex9zz.jpg', '868629', '14', 1546482972356, '14', 1546482972356, 0);
INSERT INTO `bas_atts` VALUES (147, 64, 92, 'biz_notice', 'tmp_bc65b891d1550f1b12626f595ac0227c.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103103603.UMaxklYrjs.jpg', '868630', '14', 1546482972356, '14', 1546482972356, 0);
INSERT INTO `bas_atts` VALUES (148, 64, 92, 'biz_notice', 'tmp_13105d1f968e6f42da13078c6197e6d5.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103103605.Rh5gO8cnY9.jpg', '868631', '14', 1546482972356, '14', 1546482972356, 0);
INSERT INTO `bas_atts` VALUES (149, 64, 92, 'biz_notice', 'tmp_ef0af62fd0d9d128a1b0696b57fbf613.jpg', 154154, 'image', 'http://ks3.qky100.com/20190103103607.3G4RxrxrfD.jpg', '868632', '14', 1546482972356, '14', 1546482972356, 0);
INSERT INTO `bas_atts` VALUES (150, 64, 92, 'biz_notice', 'tmp_1b4200af482ec21c07cf6b04b6e1c08d.jpg', 118142, 'image', 'http://ks3.qky100.com/20190103103608.TuPuSVQXH1.jpg', '868633', '14', 1546482972356, '14', 1546482972356, 0);
INSERT INTO `bas_atts` VALUES (151, 64, 92, 'biz_notice', 'tmp_97426e6e86c175a412e2565bd96ef35a.jpg', 112952, 'image', 'http://ks3.qky100.com/20190103103611.18ys6aCEuK.jpg', '868634', '14', 1546482972356, '14', 1546482972356, 0);
INSERT INTO `bas_atts` VALUES (152, 64, 93, 'biz_notice', 'tmp_3421eefcc93b151221270f9010bb089d.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103103716.hnO1cINYJE.jpg', '868635', '14', 1546483063138, '14', 1546483063138, 0);
INSERT INTO `bas_atts` VALUES (153, 64, 93, 'biz_notice', 'tmp_b77dacf57c4fa6f5a7f0b9c50d04a7e0.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103103719.hhujAbSGXK.jpg', '868636', '14', 1546483063138, '14', 1546483063138, 0);
INSERT INTO `bas_atts` VALUES (154, 64, 93, 'biz_notice', 'tmp_ed7bcbeca7e0df87fc0fa254ea61245e.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103103721.Y3onL0LKkK.jpg', '868637', '14', 1546483063138, '14', 1546483063138, 0);
INSERT INTO `bas_atts` VALUES (155, 64, 93, 'biz_notice', 'tmp_0a6aaf69d772bbc286039087431e4330.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103103722.kLDy42jpTg.jpg', '868638', '14', 1546483063138, '14', 1546483063138, 0);
INSERT INTO `bas_atts` VALUES (156, 64, 93, 'biz_notice', 'tmp_e3712f896f9e7da0de5b920a84ebcd68.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103103726.FEUa9Ytp5Z.jpg', '868639', '14', 1546483063138, '14', 1546483063138, 0);
INSERT INTO `bas_atts` VALUES (157, 64, 93, 'biz_notice', 'tmp_f2ec9e77c398f92ffd57077d52de3540.jpg', 183755, 'image', 'http://ks3.qky100.com/20190103103732.Lwng0uG7LN.jpg', '868640', '14', 1546483063138, '14', 1546483063138, 0);
INSERT INTO `bas_atts` VALUES (158, 64, 93, 'biz_notice', 'tmp_b5d0dd75819140db651af7ed00361b32.jpg', 154154, 'image', 'http://ks3.qky100.com/20190103103738.MHkY2H7MVv.jpg', '868641', '14', 1546483063138, '14', 1546483063138, 0);
INSERT INTO `bas_atts` VALUES (159, 64, 93, 'biz_notice', 'tmp_e5971f409a7aea185b891ea32f3a7621.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103103740.Y4RTXzehmh.jpg', '868642', '14', 1546483063138, '14', 1546483063138, 0);
INSERT INTO `bas_atts` VALUES (160, 64, 93, 'biz_notice', 'tmp_543f394a55817b1139cec9a44a64222c.jpg', 117336, 'image', 'http://ks3.qky100.com/20190103103741.u7OLtyYOxh.jpg', '868643', '14', 1546483063138, '14', 1546483063138, 0);
INSERT INTO `bas_atts` VALUES (161, 87, 95, 'biz_enroll', 'tmp_72b60e23dc189c958560590cc7d130028163f209cfc2f9d7.jpg', 209623, 'image', 'http://ks3.qky100.com/20190103104351.MCdRzF06oX.jpg', '868644', '41', 1546483433186, '41', 1546483433186, 0);
INSERT INTO `bas_atts` VALUES (162, 64, 94, 'biz_notice', 'tmp_08520605156ab56a2547d9859b44aa8e.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103104643.NmP47F5nge.jpg', '868645', '14', 1546483628343, '14', 1546483628343, 0);
INSERT INTO `bas_atts` VALUES (163, 64, 94, 'biz_notice', 'tmp_19c3908268e4aedec27e56cd3b9578c1.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103104646.OtLJNM57ts.jpg', '868651', '14', 1546483628343, '14', 1546483628343, 0);
INSERT INTO `bas_atts` VALUES (164, 64, 94, 'biz_notice', 'tmp_92423e6b37c126e06505d39ab6046c15.jpg(1)', 283685, 'image', 'http://ks3.qky100.com/20190103104650.WVfunNZzuU.jpg', '868657', '14', 1546483628343, '14', 1546483628343, 0);
INSERT INTO `bas_atts` VALUES (165, 64, 94, 'biz_notice', 'tmp_e7ffa54b8afd877027eb88e069c564b0.jpg(1)', 110723, 'image', 'http://ks3.qky100.com/20190103104652.N5Dsk7h6ak.jpg', '868660', '14', 1546483628343, '14', 1546483628343, 0);
INSERT INTO `bas_atts` VALUES (166, 64, 94, 'biz_notice', 'tmp_17f534c92a5eec17be9bc5328cb08fe7.jpg(2)', 226231, 'image', 'http://ks3.qky100.com/20190103104654.xOfeTuEAgZ.jpg', '868664', '14', 1546483628343, '14', 1546483628343, 0);
INSERT INTO `bas_atts` VALUES (167, 64, 94, 'biz_notice', 'tmp_ae464370344f3b01b3566833655c7c47.jpg(2)', 183755, 'image', 'http://ks3.qky100.com/20190103104659.0ULbD10lE5.jpg', '868667', '14', 1546483628343, '14', 1546483628343, 0);
INSERT INTO `bas_atts` VALUES (168, 64, 94, 'biz_notice', 'tmp_b08103672737da123145fd314c705a62.jpg(1)', 112952, 'image', 'http://ks3.qky100.com/20190103104700.iuAXykGBkw.jpg', '868670', '14', 1546483628343, '14', 1546483628343, 0);
INSERT INTO `bas_atts` VALUES (169, 64, 94, 'biz_notice', 'tmp_a5b5c1da0fd44630fe5ba718772bd23f.jpg(1)', 118142, 'image', 'http://ks3.qky100.com/20190103104704.CSnGVqLq5K.jpg', '868674', '14', 1546483628343, '14', 1546483628343, 0);
INSERT INTO `bas_atts` VALUES (170, 64, 94, 'biz_notice', 'tmp_594e2c8c6c3404e6720d557178ff24b0.jpg', 117336, 'image', 'http://ks3.qky100.com/20190103104706.KeGZjFKYCn.jpg', '868677', '14', 1546483628343, '14', 1546483628343, 0);
INSERT INTO `bas_atts` VALUES (171, 87, 96, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.3KyxqNKzEcKWa95a025ae4355841dc26643a5229415c.png', 25441, 'image', 'http://ks3.qky100.com/20190103104701.jm2pIh8YXc.png', '868672', '41', 1546483638013, '41', 1546483638013, 0);
INSERT INTO `bas_atts` VALUES (172, 87, 96, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.ik9meP5fTFZVf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103104704.IrsAyDwq7H.jpg', '868673', '41', 1546483638014, '41', 1546483638014, 0);
INSERT INTO `bas_atts` VALUES (173, 87, 96, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.XbTrYJ9fet0Ec9d80619ef4d62288444542ea969adac.jpg', 406315, 'image', 'http://ks3.qky100.com/20190103104706.DoNiwj7b1u.jpg', '868676', '41', 1546483638014, '41', 1546483638014, 0);
INSERT INTO `bas_atts` VALUES (174, 87, 96, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.9iHBZB1O2gdY2e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190103104709.T0hxlbHErb.png', '868681', '41', 1546483638014, '41', 1546483638014, 0);
INSERT INTO `bas_atts` VALUES (175, 87, 96, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.j9Zh80Q4Wm2uf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103104711.b912KzGw55.jpg', '868682', '41', 1546483638014, '41', 1546483638014, 0);
INSERT INTO `bas_atts` VALUES (176, 87, 96, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.yHhfSSalIhQjf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103104712.89IxvlBUaM.jpg', '868684', '41', 1546483638014, '41', 1546483638014, 0);
INSERT INTO `bas_atts` VALUES (177, 87, 96, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.GmGCDpmANZt21d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190103104714.O155o2hUqE.jpg', '868685', '41', 1546483638014, '41', 1546483638014, 0);
INSERT INTO `bas_atts` VALUES (178, 87, 96, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.lwnNYDobVQjDf5fde661e8a03c7ac40c0824558c44de.png', 26167, 'image', 'http://ks3.qky100.com/20190103104715.Hk6eoREgQq.png', '868686', '41', 1546483638014, '41', 1546483638014, 0);
INSERT INTO `bas_atts` VALUES (179, 87, 96, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.xiRniKCOtsjBe7d9675bb73ae86b2961947ab16f79db.jpeg', 88988, 'image', 'http://ks3.qky100.com/20190103104716.BljbMMC1xU.jpeg', '868687', '41', 1546483638014, '41', 1546483638014, 0);
INSERT INTO `bas_atts` VALUES (180, 87, 101, 'biz_enroll', 'tmp_92e1246610e6f79e2df6ceea4b638e0fe9a0f1119f1509a7.jpg', 185792, 'image', 'http://ks3.qky100.com/20190103110939.UBJ4pq11Fz.jpg', '868747', '41', 1546484980905, '41', 1546484980905, 0);
INSERT INTO `bas_atts` VALUES (181, 64, 95, 'biz_notice', 'tmp_a43d20376ab2a2cda1ff904d456195e3.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103115548.1DQUaLk1Dp.jpg', '868752', '14', 1546487759118, '14', 1546487759118, 0);
INSERT INTO `bas_atts` VALUES (182, 64, 95, 'biz_notice', 'tmp_05685aab9c32a29eaea8377e9cc4da15.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103115550.NHWIjuT952.jpg', '868753', '14', 1546487759118, '14', 1546487759118, 0);
INSERT INTO `bas_atts` VALUES (183, 64, 95, 'biz_notice', 'tmp_84828231cd338402f6b9f5003fbb6ce0.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103115551.C2Y2oavwJ2.jpg', '868754', '14', 1546487759118, '14', 1546487759118, 0);
INSERT INTO `bas_atts` VALUES (184, 64, 95, 'biz_notice', 'tmp_3434bd0f9b034888041646a456475f6c.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103115553.RyIVynCofU.jpg', '868755', '14', 1546487759118, '14', 1546487759118, 0);
INSERT INTO `bas_atts` VALUES (185, 64, 95, 'biz_notice', 'tmp_1f4280473035b4c52ed0fe76213c3a95.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103115554.ktQMRLVSjb.jpg', '868756', '14', 1546487759118, '14', 1546487759118, 0);
INSERT INTO `bas_atts` VALUES (186, 64, 95, 'biz_notice', 'tmp_1b0ae8dc84d4d3e6a9e0f1244afc45cd.jpg', 108790, 'image', 'http://ks3.qky100.com/20190103115556.2X3jERfr8z.jpg', '868757', '14', 1546487759118, '14', 1546487759118, 0);
INSERT INTO `bas_atts` VALUES (187, 64, 95, 'biz_notice', 'tmp_52dbf7eeea351681b75db1c06538b53d.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103115557.NdwWADzDSV.jpg', '868758', '14', 1546487759118, '14', 1546487759118, 0);
INSERT INTO `bas_atts` VALUES (188, 64, 110, 'biz_enroll', 'tmp_d3a37b9d494ea4473f5a30096a4b05c4.jpg(4)', 279143, 'image', 'http://ks3.qky100.com/20190103115702.YYt29nBQE3.jpg', '868769', '14', 1546487840912, '14', 1546487840912, 0);
INSERT INTO `bas_atts` VALUES (189, 64, 110, 'biz_enroll', 'tmp_72606bbf910fac930f33ee33fa43a6bc.jpg(2)', 269061, 'image', 'http://ks3.qky100.com/20190103115704.8uVKuni0rj.jpg', '868776', '14', 1546487840912, '14', 1546487840912, 0);
INSERT INTO `bas_atts` VALUES (190, 64, 110, 'biz_enroll', 'tmp_d1a36354ac466f09be163c8c38cd4181.jpg(2)', 283685, 'image', 'http://ks3.qky100.com/20190103115710.pWxPLn6Ubi.jpg', '868785', '14', 1546487840912, '14', 1546487840912, 0);
INSERT INTO `bas_atts` VALUES (191, 64, 110, 'biz_enroll', 'tmp_380099d7c86400a13aae5c10fe79294d.jpg(2)', 108790, 'image', 'http://ks3.qky100.com/20190103115713.UBSJBBXzTV.jpg', '868790', '14', 1546487840912, '14', 1546487840912, 0);
INSERT INTO `bas_atts` VALUES (192, 64, 110, 'biz_enroll', 'tmp_a88911d477644802bbc16bf95b52e521.jpg(2)', 226231, 'image', 'http://ks3.qky100.com/20190103115716.1Uk2lTuncX.jpg', '868795', '14', 1546487840912, '14', 1546487840912, 0);
INSERT INTO `bas_atts` VALUES (193, 64, 110, 'biz_enroll', 'tmp_ead80629d099c979d7ff6d310a049639.jpg(3)', 110723, 'image', 'http://ks3.qky100.com/20190103115719.M1vRcvl0Zr.jpg', '868800', '14', 1546487840912, '14', 1546487840912, 0);
INSERT INTO `bas_atts` VALUES (194, 87, 111, 'biz_enroll', 'tmp_39c77ba35c484bc76253bc64a38b3866abbde2c120e087a0.jpg', 411644, 'image', 'http://ks3.qky100.com/20190103120014.nMM3BmqmBD.jpg', '868801', '41', 1546488034724, '41', 1546488034724, 0);
INSERT INTO `bas_atts` VALUES (195, 87, 111, 'biz_enroll', 'tmp_bd6e232cc998770811493cc32f3e4d23ef899ef4e6b2ca7f.jpg', 411644, 'image', 'http://ks3.qky100.com/20190103120016.1Wkra3FFdD.jpg', '868802', '41', 1546488034724, '41', 1546488034724, 0);
INSERT INTO `bas_atts` VALUES (196, 87, 111, 'biz_enroll', 'tmp_70ff56cca62470561d3322dc9e37a2741f012b87e570812d.jpg', 395637, 'image', 'http://ks3.qky100.com/20190103120018.y9BN9a9KFC.jpg', '868803', '41', 1546488034724, '41', 1546488034724, 0);
INSERT INTO `bas_atts` VALUES (197, 87, 111, 'biz_enroll', 'tmp_eca534a97d04925627f74cc642019a70408920c778d8e7d8.jpg', 410636, 'image', 'http://ks3.qky100.com/20190103120021.4nIKVJOHAn.jpg', '868804', '41', 1546488034724, '41', 1546488034724, 0);
INSERT INTO `bas_atts` VALUES (198, 87, 111, 'biz_enroll', 'tmp_3da57c17af6e04ec881359721d4cab03788ec97675ffd5a9.jpg', 378156, 'image', 'http://ks3.qky100.com/20190103120023.oKUHiDJkYt.jpg', '868805', '41', 1546488034724, '41', 1546488034724, 0);
INSERT INTO `bas_atts` VALUES (199, 87, 111, 'biz_enroll', 'tmp_752a26f3f0f85c882b3ee88c5c225c91b781a9f9fe5560ed.jpg', 1507134, 'image', 'http://ks3.qky100.com/20190103120028.y8haPxux2c.jpg', '868806', '41', 1546488034724, '41', 1546488034724, 0);
INSERT INTO `bas_atts` VALUES (200, 87, 111, 'biz_enroll', 'tmp_33baa02bcfefbf436ee0737b49dcbdb3accc6fac04e0d219.jpg', 1853692, 'image', 'http://ks3.qky100.com/20190103120032.hMuO9Oj83o.jpg', '868807', '41', 1546488034724, '41', 1546488034724, 0);
INSERT INTO `bas_atts` VALUES (201, 64, 97, 'biz_notice', 'tmp_0c60164b336c9f2ed6848e32ba26a34b.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103144204.aJpXyXtrpR.jpg', '868811', '14', 1546497726304, '14', 1546497726304, 0);
INSERT INTO `bas_atts` VALUES (202, 64, 98, 'biz_notice', 'tmp_c1fd133cb9626363eec95c2d9e85c204.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103144359.Z1y4KzH7o2.jpg', '868812', '14', 1546497855931, '14', 1546497855931, 0);
INSERT INTO `bas_atts` VALUES (203, 64, 98, 'biz_notice', 'tmp_ec838915fd3b360d8911f2db6aa0bec7.jpg', 108790, 'image', 'http://ks3.qky100.com/20190103144402.XRssrlXez1.jpg', '868813', '14', 1546497855931, '14', 1546497855931, 0);
INSERT INTO `bas_atts` VALUES (204, 64, 98, 'biz_notice', 'tmp_48bfbb89b477f087f18ec108b538260c.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103144405.qY1Q1Boq13.jpg', '868814', '14', 1546497855931, '14', 1546497855931, 0);
INSERT INTO `bas_atts` VALUES (205, 64, 98, 'biz_notice', 'tmp_7b9ce2fdbc5db6a6627bbdfa03f0e7a8.jpg', 112952, 'image', 'http://ks3.qky100.com/20190103144406.vA9ctT9FMI.jpg', '868815', '14', 1546497855931, '14', 1546497855931, 0);
INSERT INTO `bas_atts` VALUES (206, 64, 98, 'biz_notice', 'tmp_a937ee702046b3881727b0fa1b410233.jpg', 118142, 'image', 'http://ks3.qky100.com/20190103144407.54ndfAMo0R.jpg', '868816', '14', 1546497855931, '14', 1546497855931, 0);
INSERT INTO `bas_atts` VALUES (207, 64, 98, 'biz_notice', 'tmp_3ae4d4ff61bf7d4b3231cdeca90d032a.jpg', 117336, 'image', 'http://ks3.qky100.com/20190103144409.9k3OE9gvr9.jpg', '868817', '14', 1546497855931, '14', 1546497855931, 0);
INSERT INTO `bas_atts` VALUES (208, 64, 98, 'biz_notice', 'tmp_55c693b4f5190350acaa9e248a6c7691.jpg', 217697, 'image', 'http://ks3.qky100.com/20190103144413.p6afE8xFqv.jpg', '868818', '14', 1546497855931, '14', 1546497855931, 0);
INSERT INTO `bas_atts` VALUES (209, 64, 98, 'biz_notice', 'tmp_9465947b6f05a3a225a9c73614931594.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103144414.qYQqEjlCSO.jpg', '868819', '14', 1546497855931, '14', 1546497855931, 0);
INSERT INTO `bas_atts` VALUES (210, 64, 116, 'biz_enroll', 'tmp_fd5c14a8a96f76b2d519b51a1e552635.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103144608.8s9wbMul2T.jpg', '868820', '14', 1546498049683, '14', 1546498049683, 0);
INSERT INTO `bas_atts` VALUES (211, 64, 116, 'biz_enroll', 'tmp_9d566033de35e1580a32b64ce8db1a53.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103144702.weV7u0kSrG.jpg', '868821', '14', 1546498049683, '14', 1546498049683, 0);
INSERT INTO `bas_atts` VALUES (212, 64, 116, 'biz_enroll', 'tmp_e8902943ff537e1eb50bc8ec1f5e894f.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103144704.6oY5JUVbCE.jpg', '868822', '14', 1546498049683, '14', 1546498049683, 0);
INSERT INTO `bas_atts` VALUES (213, 64, 116, 'biz_enroll', 'tmp_e2ec72104325d7073a3e9918f4dd2db0.jpg', 108790, 'image', 'http://ks3.qky100.com/20190103144706.pisJPIEyXh.jpg', '868823', '14', 1546498049683, '14', 1546498049683, 0);
INSERT INTO `bas_atts` VALUES (214, 64, 116, 'biz_enroll', 'tmp_9b1e69f0ef2279f8738b3af82052a0a7.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103144708.b2e7dkffs9.jpg', '868824', '14', 1546498049683, '14', 1546498049683, 0);
INSERT INTO `bas_atts` VALUES (215, 64, 116, 'biz_enroll', 'tmp_e815d6fe06903ba9a71f65c5e1c897a0.jpg', 125836, 'image', 'http://ks3.qky100.com/20190103144715.IAxnp01jGN.jpg', '868826', '14', 1546498049683, '14', 1546498049683, 0);
INSERT INTO `bas_atts` VALUES (216, 64, 116, 'biz_enroll', 'tmp_2d3e296b2b94ef9324ff6025b6a30986.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103144725.ZlPsfvcS3x.jpg', '868828', '14', 1546498049683, '14', 1546498049683, 0);
INSERT INTO `bas_atts` VALUES (217, 64, 116, 'biz_enroll', 'tmp_05e1a4f2ecfcac602a305d2b45ca4936.jpg', 112952, 'image', 'http://ks3.qky100.com/20190103144728.kGzVnJuEIS.jpg', '868830', '14', 1546498049683, '14', 1546498049683, 0);
INSERT INTO `bas_atts` VALUES (218, 64, 117, 'biz_enroll', 'tmp_8fddae2bbd7f162ef933d684f28d29e8.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103145446.Tgzj9cizDd.jpg', '868837', '14', 1546498508865, '14', 1546498508865, 0);
INSERT INTO `bas_atts` VALUES (219, 64, 117, 'biz_enroll', 'tmp_f86a4384cc1a5b46d22e889b85252f51.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103145448.GRhWGyeSZs.jpg', '868838', '14', 1546498508865, '14', 1546498508865, 0);
INSERT INTO `bas_atts` VALUES (220, 64, 117, 'biz_enroll', 'tmp_35d5a22685d76c59e4cef35e964e9781.jpg', 108790, 'image', 'http://ks3.qky100.com/20190103145449.INOsd4pSGS.jpg', '868839', '14', 1546498508865, '14', 1546498508865, 0);
INSERT INTO `bas_atts` VALUES (221, 64, 117, 'biz_enroll', 'tmp_7a4fdb1ea4a713e8441ee72f60a387a1.jpg', 125836, 'image', 'http://ks3.qky100.com/20190103145453.arYgPMkCRj.jpg', '868840', '14', 1546498508865, '14', 1546498508865, 0);
INSERT INTO `bas_atts` VALUES (222, 64, 117, 'biz_enroll', 'tmp_915bee540e3e2f18eb3c3d92575ec756.jpg', 137200, 'image', 'http://ks3.qky100.com/20190103145455.w2TPIouBUg.jpg', '868841', '14', 1546498508865, '14', 1546498508865, 0);
INSERT INTO `bas_atts` VALUES (223, 64, 117, 'biz_enroll', 'tmp_a38f38a6e0f242f0a33b937386259b5f.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103145456.W4SSyMU9iZ.jpg', '868842', '14', 1546498508865, '14', 1546498508865, 0);
INSERT INTO `bas_atts` VALUES (224, 64, 117, 'biz_enroll', 'tmp_d177e81ff4b3a3d7f27d45f0099ac785.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103145459.I4QXj0iiAB.jpg', '868843', '14', 1546498508865, '14', 1546498508865, 0);
INSERT INTO `bas_atts` VALUES (225, 64, 117, 'biz_enroll', 'tmp_e385c80e9d4e7c419085500913f05af6.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103145504.yMQjOhCzss.jpg', '868844', '14', 1546498508865, '14', 1546498508865, 0);
INSERT INTO `bas_atts` VALUES (226, 64, 117, 'biz_enroll', 'tmp_817af4e3260ae094fc450275d4e58ec2.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103145507.6mdCjaaA66.jpg', '868845', '14', 1546498508865, '14', 1546498508865, 0);
INSERT INTO `bas_atts` VALUES (227, 64, 118, 'biz_enroll', 'tmp_d4d04931ac00e6bbe6c12ac96996aed3.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103150325.aC06blzWjb.jpg', '868846', '14', 1546499058752, '14', 1546499058752, 0);
INSERT INTO `bas_atts` VALUES (228, 64, 118, 'biz_enroll', 'tmp_96beeb1d46c1986cd17f11b1d6275380.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103150327.kM3AuMt1Pf.jpg', '868847', '14', 1546499058752, '14', 1546499058752, 0);
INSERT INTO `bas_atts` VALUES (229, 64, 118, 'biz_enroll', 'tmp_4b01ac3f8355409646febc87f96de40a.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103150329.Zmw9il8waN.jpg', '868848', '14', 1546499058752, '14', 1546499058752, 0);
INSERT INTO `bas_atts` VALUES (230, 64, 118, 'biz_enroll', 'tmp_74cd4b3a94fa59f1d29638fb4c7efcc5.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103150332.e7RFjuKajE.jpg', '868849', '14', 1546499058752, '14', 1546499058752, 0);
INSERT INTO `bas_atts` VALUES (231, 64, 118, 'biz_enroll', 'tmp_32156ae859ba9b2763884ada7c06faac.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103150354.wyXn5eot7c.jpg', '868850', '14', 1546499058752, '14', 1546499058752, 0);
INSERT INTO `bas_atts` VALUES (232, 64, 118, 'biz_enroll', 'tmp_8fda41080cfab221519069ac5f709750.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103150402.xw7PxjuGzx.jpg', '868851', '14', 1546499058752, '14', 1546499058752, 0);
INSERT INTO `bas_atts` VALUES (233, 64, 118, 'biz_enroll', 'tmp_4783dba32fe879f1320f37270b279f0d.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103150408.JxAuMa3qav.jpg', '868852', '14', 1546499058752, '14', 1546499058752, 0);
INSERT INTO `bas_atts` VALUES (234, 64, 118, 'biz_enroll', 'tmp_174eb0cdf6258d3d8e5aa0c1b0d97374.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103150410.xT4coIA446.jpg', '868853', '14', 1546499058752, '14', 1546499058752, 0);
INSERT INTO `bas_atts` VALUES (235, 64, 118, 'biz_enroll', 'tmp_20e7f4ba3d5efd2021d6bb7e4b8a5e2f.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103150417.T4tq1QgfkA.jpg', '868854', '14', 1546499058752, '14', 1546499058752, 0);
INSERT INTO `bas_atts` VALUES (236, 87, 119, 'biz_enroll', 'tmp_224d2ba96371b0923e123ca53fbdeac9c90dd0366a533bcb.jpg', 83175, 'image', 'http://ks3.qky100.com/20190103150940.P9dQHJU51X.jpg', '868855', '41', 1546499383950, '41', 1546499383950, 0);
INSERT INTO `bas_atts` VALUES (237, 87, 119, 'biz_enroll', 'tmp_3052d8ff2657b24819adf482f3c871c7613665209220b69f.jpg', 83175, 'image', 'http://ks3.qky100.com/20190103150942.isoyqROeDp.jpg', '868856', '41', 1546499383950, '41', 1546499383950, 0);
INSERT INTO `bas_atts` VALUES (238, 74, 120, 'biz_enroll', 'tmp_0c4e0c7bdc3bd38e2290abd63898612c4cee5256401bc5a8.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103151336.0IQX7PtrvK.jpg', '868857', '24', 1546499620926, '24', 1546499620926, 0);
INSERT INTO `bas_atts` VALUES (239, 74, 120, 'biz_enroll', 'tmp_d51df21862805546d5df327bc047878a1578fb7d615c13cc.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103151337.SHHDFj07iR.jpg', '868858', '24', 1546499620926, '24', 1546499620926, 0);
INSERT INTO `bas_atts` VALUES (240, 74, 120, 'biz_enroll', 'tmp_4f1ad9ef6e3f37afd24c731fbebf28853f4cc5747beb7a93.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103151338.E01GlD0UUL.jpg', '868859', '24', 1546499620926, '24', 1546499620926, 0);
INSERT INTO `bas_atts` VALUES (241, 74, 120, 'biz_enroll', 'tmp_85945c39f1d9c8d7076c884c45fe67ce929d0e7f89f3519c.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103151339.m2OynluGAi.jpg', '868860', '24', 1546499620926, '24', 1546499620926, 0);
INSERT INTO `bas_atts` VALUES (242, 74, 121, 'biz_enroll', 'tmp_4673182fe7c59f31c2fe747522f2fd2c75ced01416041024.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103151412.Aa92rPlEns.jpg', '868861', '24', 1546499656098, '24', 1546499656098, 0);
INSERT INTO `bas_atts` VALUES (243, 74, 121, 'biz_enroll', 'tmp_045f16c392feeee50e5b530fdc961fea7ece6e5d346661a1.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103151413.tIcqP2soGy.jpg', '868862', '24', 1546499656098, '24', 1546499656098, 0);
INSERT INTO `bas_atts` VALUES (244, 74, 121, 'biz_enroll', 'tmp_5d0ab188d4adac386d6a36547dabcb1870238bf73ce12a25.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103151414.TWHO7ObW5j.jpg', '868863', '24', 1546499656098, '24', 1546499656098, 0);
INSERT INTO `bas_atts` VALUES (245, 74, 99, 'biz_notice', 'tmp_31ec2307f48d2dc235fc4069936c00189c01b0d09dba5e24.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103151449.Omz8HuavqY.jpg', '868864', '24', 1546499691934, '24', 1546499691934, 0);
INSERT INTO `bas_atts` VALUES (246, 74, 99, 'biz_notice', 'tmp_0595ed12da6cf3736cfe4a743c5153111139978a9854e2ea.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103151450.iyCpcMXOcn.jpg', '868865', '24', 1546499691934, '24', 1546499691934, 0);
INSERT INTO `bas_atts` VALUES (247, 87, 100, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.q9fFSAUU5XV9e7d9675bb73ae86b2961947ab16f79db.jpeg', 88988, 'image', 'http://ks3.qky100.com/20190103151617.99NE6k20FP.jpeg', '868866', '41', 1546499778574, '41', 1546499778574, 0);
INSERT INTO `bas_atts` VALUES (248, 87, 122, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.anGzVSXIhvRAa95a025ae4355841dc26643a5229415c.png', 25441, 'image', 'http://ks3.qky100.com/20190103151642.4P2P7jr4Bh.png', '868867', '41', 1546499803286, '41', 1546499803286, 0);
INSERT INTO `bas_atts` VALUES (249, 87, 101, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.TrXaqRFIGZe1f9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103151828.E1mJkHPWBY.jpg', '868868', '41', 1546499923236, '41', 1546499923236, 0);
INSERT INTO `bas_atts` VALUES (250, 87, 101, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.c1jE4LvhlsUJc9d80619ef4d62288444542ea969adac.jpg', 406315, 'image', 'http://ks3.qky100.com/20190103151830.xsNW7tovxO.jpg', '868869', '41', 1546499923236, '41', 1546499923236, 0);
INSERT INTO `bas_atts` VALUES (251, 87, 101, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.AXYa5pDEExqK2e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190103151833.Xn60ADMkY7.png', '868870', '41', 1546499923236, '41', 1546499923236, 0);
INSERT INTO `bas_atts` VALUES (252, 87, 101, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.LEt2j1pwnPgaf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103151835.be9v9TE0ZG.jpg', '868871', '41', 1546499923236, '41', 1546499923236, 0);
INSERT INTO `bas_atts` VALUES (253, 87, 101, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.LQcgTGDnXqYwf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103151837.R0LYofngBv.jpg', '868872', '41', 1546499923236, '41', 1546499923236, 0);
INSERT INTO `bas_atts` VALUES (254, 87, 101, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.xBAtuvw4kapl1d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190103151838.06eVGuODLb.jpg', '868873', '41', 1546499923236, '41', 1546499923236, 0);
INSERT INTO `bas_atts` VALUES (255, 87, 101, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.HbgAr5lFoJ1Sf5fde661e8a03c7ac40c0824558c44de.png', 26167, 'image', 'http://ks3.qky100.com/20190103151839.pjdgJgPEhG.png', '868874', '41', 1546499923236, '41', 1546499923236, 0);
INSERT INTO `bas_atts` VALUES (256, 87, 101, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.Re0cH2oPVhAje7d9675bb73ae86b2961947ab16f79db.jpeg', 88988, 'image', 'http://ks3.qky100.com/20190103151840.f16k1wz2lX.jpeg', '868875', '41', 1546499923236, '41', 1546499923236, 0);
INSERT INTO `bas_atts` VALUES (257, 87, 101, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.s836F1rJ2dSSa95a025ae4355841dc26643a5229415c.png', 25441, 'image', 'http://ks3.qky100.com/20190103151842.2fZA0dm7oi.png', '868876', '41', 1546499923236, '41', 1546499923236, 0);
INSERT INTO `bas_atts` VALUES (258, 87, 123, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.pZrnqAxLiV9Pc9d80619ef4d62288444542ea969adac.jpg', 406315, 'image', 'http://ks3.qky100.com/20190103151944.Q0O9CPtM40.jpg', '868877', '41', 1546499997259, '41', 1546499997259, 0);
INSERT INTO `bas_atts` VALUES (259, 87, 123, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.jDb3VouasLPA2e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190103151947.1HWIKiHJd4.png', '868878', '41', 1546499997259, '41', 1546499997259, 0);
INSERT INTO `bas_atts` VALUES (260, 87, 123, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.OumCSTexlw83f9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103151949.glnnGXu3FX.jpg', '868879', '41', 1546499997259, '41', 1546499997259, 0);
INSERT INTO `bas_atts` VALUES (261, 87, 123, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.hI1tioUjnBAMf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103151950.uowCpLoOld.jpg', '868880', '41', 1546499997259, '41', 1546499997259, 0);
INSERT INTO `bas_atts` VALUES (262, 87, 123, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.WzH8IRSJZrhv1d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190103151952.8xCkWajsUR.jpg', '868881', '41', 1546499997259, '41', 1546499997259, 0);
INSERT INTO `bas_atts` VALUES (263, 87, 123, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.xIzHZH5GEs2af5fde661e8a03c7ac40c0824558c44de.png', 26167, 'image', 'http://ks3.qky100.com/20190103151953.CJber1q1W6.png', '868882', '41', 1546499997259, '41', 1546499997259, 0);
INSERT INTO `bas_atts` VALUES (264, 87, 123, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.NGN5fN48ikfce7d9675bb73ae86b2961947ab16f79db.jpeg', 88988, 'image', 'http://ks3.qky100.com/20190103151954.23TyZAVNfw.jpeg', '868883', '41', 1546499997259, '41', 1546499997259, 0);
INSERT INTO `bas_atts` VALUES (265, 87, 123, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.NMO3b3U9Tl9Ea95a025ae4355841dc26643a5229415c.png', 25441, 'image', 'http://ks3.qky100.com/20190103151956.ihsatB35Xc.png', '868884', '41', 1546499997259, '41', 1546499997259, 0);
INSERT INTO `bas_atts` VALUES (266, 64, 102, 'biz_notice', 'tmp_a96d76756ba2ea8eaaa237e3d6aea734.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103152108.mpXZwyPLuD.jpg', '868885', '14', 1546500085335, '14', 1546500085335, 0);
INSERT INTO `bas_atts` VALUES (267, 64, 102, 'biz_notice', 'tmp_9e3e80c587ca588c7a13960940edfeac.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103152110.FbqcwDMmnJ.jpg', '868886', '14', 1546500085335, '14', 1546500085335, 0);
INSERT INTO `bas_atts` VALUES (268, 64, 102, 'biz_notice', 'tmp_345cb5fa77e7d8aef838e55242b43a58.jpg', 108790, 'image', 'http://ks3.qky100.com/20190103152111.oBes50UKKI.jpg', '868887', '14', 1546500085335, '14', 1546500085335, 0);
INSERT INTO `bas_atts` VALUES (269, 64, 102, 'biz_notice', 'tmp_8115c466d19ed8e429ab05feba7dbe1a.jpg', 137200, 'image', 'http://ks3.qky100.com/20190103152113.fi3QuAnll8.jpg', '868888', '14', 1546500085335, '14', 1546500085335, 0);
INSERT INTO `bas_atts` VALUES (270, 64, 102, 'biz_notice', 'tmp_9d5490277430b91397a1af30905d6c33.jpg', 125836, 'image', 'http://ks3.qky100.com/20190103152115.nUBUTtlZoO.jpg', '868889', '14', 1546500085335, '14', 1546500085335, 0);
INSERT INTO `bas_atts` VALUES (271, 64, 102, 'biz_notice', 'tmp_0de0153561c0fa290d89c396deadc0ad.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103152117.8bhYkJuCXo.jpg', '868890', '14', 1546500085335, '14', 1546500085335, 0);
INSERT INTO `bas_atts` VALUES (272, 64, 102, 'biz_notice', 'tmp_d6c5ecf90d7248d360d218240158bbb4.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103152119.3jADFfxMZZ.jpg', '868892', '14', 1546500085335, '14', 1546500085335, 0);
INSERT INTO `bas_atts` VALUES (273, 64, 102, 'biz_notice', 'tmp_3bf733ef91bc7efb8d6c2770f0ce742f.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103152121.tpyEgwM2uH.jpg', '868894', '14', 1546500085335, '14', 1546500085335, 0);
INSERT INTO `bas_atts` VALUES (274, 64, 102, 'biz_notice', 'tmp_b0b55cd33209d0b5a3f07f31f0fd3867.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103152122.WWY8sHkViz.jpg', '868896', '14', 1546500085335, '14', 1546500085335, 0);
INSERT INTO `bas_atts` VALUES (275, 64, 125, 'biz_enroll', 'tmp_dfcee75bb9cea5991f3a32a05eceda6d.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103152329.p9ygZ49Uap.jpg', '868903', '14', 1546500227198, '14', 1546500227198, 0);
INSERT INTO `bas_atts` VALUES (276, 64, 125, 'biz_enroll', 'tmp_0366cc2aa52482376e4d1d445ec6878a.jpg', 108790, 'image', 'http://ks3.qky100.com/20190103152330.x6D8008gVK.jpg', '868904', '14', 1546500227198, '14', 1546500227198, 0);
INSERT INTO `bas_atts` VALUES (277, 64, 125, 'biz_enroll', 'tmp_c0dec763962b8ffb7309c88f3a3a71fe.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103152332.7BXWwJ8cot.jpg', '868905', '14', 1546500227198, '14', 1546500227198, 0);
INSERT INTO `bas_atts` VALUES (278, 64, 125, 'biz_enroll', 'tmp_a20ac6e36d8cc3aac105f76d0f9f49e5.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103152336.4i37lKXjyM.jpg', '868906', '14', 1546500227198, '14', 1546500227198, 0);
INSERT INTO `bas_atts` VALUES (279, 64, 125, 'biz_enroll', 'tmp_aa967174857af6aa7bf7f34e671855d1.jpg', 154154, 'image', 'http://ks3.qky100.com/20190103152339.YdsbD0pARM.jpg', '868907', '14', 1546500227198, '14', 1546500227198, 0);
INSERT INTO `bas_atts` VALUES (280, 64, 125, 'biz_enroll', 'tmp_3623f18804327ea884e86b2964fa0ad7.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103152341.Jjh2XDUlIf.jpg', '868908', '14', 1546500227198, '14', 1546500227198, 0);
INSERT INTO `bas_atts` VALUES (281, 64, 125, 'biz_enroll', 'tmp_9a5f19cd501d30afa544b137d77ebbd9.jpg', 125836, 'image', 'http://ks3.qky100.com/20190103152342.zkyXL4G2UY.jpg', '868910', '14', 1546500227198, '14', 1546500227198, 0);
INSERT INTO `bas_atts` VALUES (282, 64, 125, 'biz_enroll', 'tmp_ff425e098a738b73d03aa26e1ed83126.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103152344.fzFyCmd3bY.jpg', '868912', '14', 1546500227198, '14', 1546500227198, 0);
INSERT INTO `bas_atts` VALUES (283, 64, 125, 'biz_enroll', 'tmp_64090243b4a1acd7ceb114f2e0fd3a12.jpg', 137200, 'image', 'http://ks3.qky100.com/20190103152345.cfCRczVvVC.jpg', '868914', '14', 1546500227198, '14', 1546500227198, 0);
INSERT INTO `bas_atts` VALUES (284, 64, 126, 'biz_enroll', 'tmp_ba68debe80685122ecc160007db17b7c.jpg', 154154, 'image', 'http://ks3.qky100.com/20190103152423.M7HxYkTPTu.jpg', '868921', '14', 1546500275268, '14', 1546500275268, 0);
INSERT INTO `bas_atts` VALUES (285, 64, 126, 'biz_enroll', 'tmp_045b5147d64d019dbe8a7040c112a5d1.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103152425.0bmlvmSofo.jpg', '868922', '14', 1546500275268, '14', 1546500275268, 0);
INSERT INTO `bas_atts` VALUES (286, 64, 126, 'biz_enroll', 'tmp_4c76ddb13fcafddc8eaa90946722ed91.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103152426.46nWh2PL2n.jpg', '868923', '14', 1546500275268, '14', 1546500275268, 0);
INSERT INTO `bas_atts` VALUES (287, 64, 126, 'biz_enroll', 'tmp_ddec554f2ea8b48300a1e243ce20cee2.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103152428.kAmhwyXYYL.jpg', '868924', '14', 1546500275268, '14', 1546500275268, 0);
INSERT INTO `bas_atts` VALUES (288, 64, 126, 'biz_enroll', 'tmp_c6c934d7b17453d280c9535c05cd6971.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103152429.4sKDMuflJU.jpg', '868925', '14', 1546500275268, '14', 1546500275268, 0);
INSERT INTO `bas_atts` VALUES (289, 64, 126, 'biz_enroll', 'tmp_21971362046bc920a78e307c2b53ac45.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103152431.jEz1Fc9ZiL.jpg', '868926', '14', 1546500275268, '14', 1546500275268, 0);
INSERT INTO `bas_atts` VALUES (290, 64, 126, 'biz_enroll', 'tmp_c69fbd1e94b9aef83b0a9390c05d2a42.jpg', 108790, 'image', 'http://ks3.qky100.com/20190103152432.W7BqG9LUrG.jpg', '868927', '14', 1546500275268, '14', 1546500275268, 0);
INSERT INTO `bas_atts` VALUES (291, 64, 126, 'biz_enroll', 'tmp_f2386b73ea43706abb65561b5ca3743f.jpg', 125836, 'image', 'http://ks3.qky100.com/20190103152433.gVfQSC8BSp.jpg', '868928', '14', 1546500275268, '14', 1546500275268, 0);
INSERT INTO `bas_atts` VALUES (292, 64, 103, 'biz_notice', 'tmp_3c8fbc545d3a224d0b3411dc26020151.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103152456.mwZOjel1QB.jpg', '868929', '14', 1546500310917, '14', 1546500310917, 0);
INSERT INTO `bas_atts` VALUES (293, 64, 103, 'biz_notice', 'tmp_30ce48a82f92388422e6de1d583014d8.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103152458.J4JlUdLYxL.jpg', '868930', '14', 1546500310917, '14', 1546500310917, 0);
INSERT INTO `bas_atts` VALUES (294, 64, 103, 'biz_notice', 'tmp_852171f961f7e8b1eb08b9bba6e400a4.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103152459.Q6yx203lBL.jpg', '868931', '14', 1546500310917, '14', 1546500310917, 0);
INSERT INTO `bas_atts` VALUES (295, 64, 103, 'biz_notice', 'tmp_f8d2714696028ce8a8e5f63a5605ae0b.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103152501.wIFSkUwptH.jpg', '868932', '14', 1546500310917, '14', 1546500310917, 0);
INSERT INTO `bas_atts` VALUES (296, 64, 103, 'biz_notice', 'tmp_6a34bc5d557749890df71045a1f94ac7.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103152504.0670rWKpYw.jpg', '868933', '14', 1546500310917, '14', 1546500310917, 0);
INSERT INTO `bas_atts` VALUES (297, 64, 103, 'biz_notice', 'tmp_342e04dccfa89479d1bc85ef5fd1e60b.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103152505.J7wI9S1M05.jpg', '868934', '14', 1546500310917, '14', 1546500310917, 0);
INSERT INTO `bas_atts` VALUES (298, 64, 103, 'biz_notice', 'tmp_0ce13154bbaa8ce5ce6b94c1514ce130.jpg', 108790, 'image', 'http://ks3.qky100.com/20190103152506.9Se0tZ7rPj.jpg', '868935', '14', 1546500310917, '14', 1546500310917, 0);
INSERT INTO `bas_atts` VALUES (299, 64, 103, 'biz_notice', 'tmp_e3a07f9891e75565652f5fc454bc2c00.jpg', 125836, 'image', 'http://ks3.qky100.com/20190103152508.0uxlkMMYCm.jpg', '868936', '14', 1546500310917, '14', 1546500310917, 0);
INSERT INTO `bas_atts` VALUES (300, 64, 103, 'biz_notice', 'tmp_3a6097e2328a6582d32353e1c5f2e9db.jpg', 137200, 'image', 'http://ks3.qky100.com/20190103152509.zwUeqvMGJO.jpg', '868937', '14', 1546500310917, '14', 1546500310917, 0);
INSERT INTO `bas_atts` VALUES (301, 87, 127, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.ZuqaG3wWgNq0c9d80619ef4d62288444542ea969adac.jpg', 406315, 'image', 'http://ks3.qky100.com/20190103152549.Kw6nH3EyiA.jpg', '868947', '41', 1546500361134, '41', 1546500361134, 0);
INSERT INTO `bas_atts` VALUES (302, 87, 127, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.gHtqEUQG72bl2e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190103152552.CWkncm33Hp.png', '868948', '41', 1546500361134, '41', 1546500361134, 0);
INSERT INTO `bas_atts` VALUES (303, 87, 127, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.Hv8WmRZrf5Abf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103152553.WNLae3w38L.jpg', '868949', '41', 1546500361134, '41', 1546500361134, 0);
INSERT INTO `bas_atts` VALUES (304, 87, 127, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.uy5AR5vsPs1wf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103152555.THr6Cje0mA.jpg', '868950', '41', 1546500361134, '41', 1546500361134, 0);
INSERT INTO `bas_atts` VALUES (305, 87, 127, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.vGGHiRIYPujr1d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190103152556.QXf4DQkquk.jpg', '868951', '41', 1546500361134, '41', 1546500361134, 0);
INSERT INTO `bas_atts` VALUES (306, 87, 127, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.dUkcAYT4SLI9f5fde661e8a03c7ac40c0824558c44de.png', 26167, 'image', 'http://ks3.qky100.com/20190103152557.4Vg4D6Zhii.png', '868952', '41', 1546500361134, '41', 1546500361134, 0);
INSERT INTO `bas_atts` VALUES (307, 87, 127, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.3iyMaamtCe8re7d9675bb73ae86b2961947ab16f79db.jpeg', 88988, 'image', 'http://ks3.qky100.com/20190103152558.5WYrvgXg6Q.jpeg', '868953', '41', 1546500361134, '41', 1546500361134, 0);
INSERT INTO `bas_atts` VALUES (308, 87, 127, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.pIOWtFjlejf8a95a025ae4355841dc26643a5229415c.png', 25441, 'image', 'http://ks3.qky100.com/20190103152600.erdLAOPgHp.png', '868954', '41', 1546500361134, '41', 1546500361134, 0);
INSERT INTO `bas_atts` VALUES (309, 87, 128, 'biz_enroll', 'tmp_2782ab6cea9678de134ffb5ed78d1934bbc2d03c3310f584.jpg', 209623, 'image', 'http://ks3.qky100.com/20190103152654.SsghrbLrxx.jpg', '868955', '41', 1546500422707, '41', 1546500422707, 0);
INSERT INTO `bas_atts` VALUES (310, 87, 128, 'biz_enroll', 'tmp_127039f79526102a98048549f2fd9b755a886e2188405ed2.jpg', 209623, 'image', 'http://ks3.qky100.com/20190103152656.nMeNtWu9MG.jpg', '868956', '41', 1546500422707, '41', 1546500422707, 0);
INSERT INTO `bas_atts` VALUES (311, 87, 128, 'biz_enroll', 'tmp_3d3b935355189720a12669ab442257e3ca9c707dd5cd827d.jpg', 196268, 'image', 'http://ks3.qky100.com/20190103152659.GUnAUt0UH5.jpg', '868957', '41', 1546500422707, '41', 1546500422707, 0);
INSERT INTO `bas_atts` VALUES (312, 87, 128, 'biz_enroll', 'tmp_0217ac5e68e975e8db6d44b0d06dbe68a1b4df4fd0a598ac.jpg', 211660, 'image', 'http://ks3.qky100.com/20190103152700.iw9jGWFgUZ.jpg', '868958', '41', 1546500422707, '41', 1546500422707, 0);
INSERT INTO `bas_atts` VALUES (313, 74, 129, 'biz_enroll', 'tmp_05500be2f86341422969041b7f85b710b604891716ff5caa.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103152735.P35LlwWP3U.jpg', '868959', '24', 1546500465302, '24', 1546500465302, 0);
INSERT INTO `bas_atts` VALUES (314, 74, 129, 'biz_enroll', 'tmp_c375ce0bb85299fbcd89310d129ed4b1807f05f70e1aaf36.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103152736.hhUxwTY66e.jpg', '868960', '24', 1546500465302, '24', 1546500465302, 0);
INSERT INTO `bas_atts` VALUES (315, 74, 129, 'biz_enroll', 'tmp_2d146c61124e2a0031bca5ee886f12560b7bebee3d8b8885.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103152737.XP7rPSqorq.jpg', '868961', '24', 1546500465302, '24', 1546500465302, 0);
INSERT INTO `bas_atts` VALUES (316, 74, 129, 'biz_enroll', 'tmp_fd9628f44e3dc37e879b5cbd737439592624104eed9eca6b.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103152739.EVMoimRFQC.jpg', '868962', '24', 1546500465302, '24', 1546500465302, 0);
INSERT INTO `bas_atts` VALUES (317, 74, 129, 'biz_enroll', 'tmp_ee4143cd38d7a4391ed41fabf1fb09a9eb0d3f26af66a378.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103152740.NtgK47XGDn.jpg', '868963', '24', 1546500465302, '24', 1546500465302, 0);
INSERT INTO `bas_atts` VALUES (318, 74, 129, 'biz_enroll', 'tmp_3116c83c82b300802a6dd70eb6a396cce1462f0c7a1fd4f1.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103152741.EYy0hygF4k.jpg', '868964', '24', 1546500465302, '24', 1546500465302, 0);
INSERT INTO `bas_atts` VALUES (319, 74, 129, 'biz_enroll', 'tmp_cb4257cf944d43e36f9941d88b501e50ecd84b9a4271c999.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103152742.zIseIocxYE.jpg', '868965', '24', 1546500465302, '24', 1546500465302, 0);
INSERT INTO `bas_atts` VALUES (320, 74, 129, 'biz_enroll', 'tmp_89e59aad88e133c8bf15da2fa643a2d1fb13a4a8ae84620d.jpg', 50885, 'image', 'http://ks3.qky100.com/20190103152743.mUDpAjhd0e.jpg', '868966', '24', 1546500465302, '24', 1546500465302, 0);
INSERT INTO `bas_atts` VALUES (321, 64, 130, 'biz_enroll', 'tmp_0053ab256d08fc92c2970251167576fd.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103153112.PqzNLo4Ks1.jpg', '868967', '14', 1546500687979, '14', 1546500687979, 0);
INSERT INTO `bas_atts` VALUES (322, 64, 130, 'biz_enroll', 'tmp_73269b5069781b453ec8eee9d98be4df.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103153114.8WVsVLN5d7.jpg', '868968', '14', 1546500687979, '14', 1546500687979, 0);
INSERT INTO `bas_atts` VALUES (323, 64, 130, 'biz_enroll', 'tmp_6032c9afaa461075300e03680dbd949f.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103153116.P2q7sowBk8.jpg', '868969', '14', 1546500687979, '14', 1546500687979, 0);
INSERT INTO `bas_atts` VALUES (324, 64, 130, 'biz_enroll', 'tmp_2f34eeca4ca102eb93a598db1080212d.jpg', 108790, 'image', 'http://ks3.qky100.com/20190103153118.oQelvH4k85.jpg', '868970', '14', 1546500687979, '14', 1546500687979, 0);
INSERT INTO `bas_atts` VALUES (325, 64, 130, 'biz_enroll', 'tmp_039874ca046fc6a41f00a77298e3f16d.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103153119.sjIQaQYqpt.jpg', '868971', '14', 1546500687979, '14', 1546500687979, 0);
INSERT INTO `bas_atts` VALUES (326, 64, 130, 'biz_enroll', 'tmp_85568f6ab04e3e3b6415baefb12304d9.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103153121.merf6MBqvq.jpg', '868972', '14', 1546500687979, '14', 1546500687979, 0);
INSERT INTO `bas_atts` VALUES (327, 64, 130, 'biz_enroll', 'tmp_143cb9ba307251a7c5c6e8f62eca7be6.jpg', 125836, 'image', 'http://ks3.qky100.com/20190103153122.60SwYoLX3w.jpg', '868973', '14', 1546500687979, '14', 1546500687979, 0);
INSERT INTO `bas_atts` VALUES (328, 64, 130, 'biz_enroll', 'tmp_ae2d919364cd2cb1a703a0d4181416f6.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103153124.XnSlYMYqxq.jpg', '868974', '14', 1546500687979, '14', 1546500687979, 0);
INSERT INTO `bas_atts` VALUES (329, 64, 130, 'biz_enroll', 'tmp_770108f767b23948916ed3e95ff6626d.jpg', 154154, 'image', 'http://ks3.qky100.com/20190103153126.uC2Hy0kZZp.jpg', '868975', '14', 1546500687979, '14', 1546500687979, 0);
INSERT INTO `bas_atts` VALUES (330, 64, 131, 'biz_enroll', 'tmp_ac411b1b469c6cf9f0fe3924c96e60b0.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103153151.bBYLF07ack.jpg', '868985', '14', 1546500724300, '14', 1546500724300, 0);
INSERT INTO `bas_atts` VALUES (331, 64, 131, 'biz_enroll', 'tmp_21bc923a94ec721b09777f1eafc90453.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103153152.KT2w8lQdx7.jpg', '868986', '14', 1546500724300, '14', 1546500724300, 0);
INSERT INTO `bas_atts` VALUES (332, 64, 131, 'biz_enroll', 'tmp_53cb5f847ee39f8e63e4aca613fe3d47.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103153156.gi8Ljpe7p1.jpg', '868987', '14', 1546500724300, '14', 1546500724300, 0);
INSERT INTO `bas_atts` VALUES (333, 64, 131, 'biz_enroll', 'tmp_2abd6ee2785afcab43d2aad94034ee05.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103153158.znr0bzimBW.jpg', '868988', '14', 1546500724300, '14', 1546500724300, 0);
INSERT INTO `bas_atts` VALUES (334, 64, 131, 'biz_enroll', 'tmp_e9e7bcad3c32c7cd071a21d4592b4e22.jpg', 108790, 'image', 'http://ks3.qky100.com/20190103153200.c4vndXr0FY.jpg', '868989', '14', 1546500724300, '14', 1546500724300, 0);
INSERT INTO `bas_atts` VALUES (335, 64, 131, 'biz_enroll', 'tmp_6fafc6be8f827ab448a1ad13c0335220.jpg', 125836, 'image', 'http://ks3.qky100.com/20190103153201.eT6YYaqbzx.jpg', '868990', '14', 1546500724300, '14', 1546500724300, 0);
INSERT INTO `bas_atts` VALUES (336, 64, 131, 'biz_enroll', 'tmp_32bd57cd3b99ac0c40cfd0a4ed36d271.jpg', 137200, 'image', 'http://ks3.qky100.com/20190103153203.2DsMxydZlD.jpg', '868991', '14', 1546500724300, '14', 1546500724300, 0);
INSERT INTO `bas_atts` VALUES (337, 64, 132, 'biz_enroll', 'tmp_2df13aeede34864150311a57d3e4e860.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103153220.cdbaSfSC3n.jpg', '868992', '14', 1546500743358, '14', 1546500743358, 0);
INSERT INTO `bas_atts` VALUES (338, 64, 132, 'biz_enroll', 'tmp_b1ac824190b48f7b6975eca30c3afb73.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103153222.UdN2e3R3hJ.jpg', '868993', '14', 1546500743358, '14', 1546500743358, 0);
INSERT INTO `bas_atts` VALUES (339, 64, 133, 'biz_enroll', 'tmp_76dccb1f46d7981c486fb0c746654ee9.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103153253.wNPIm9E2If.jpg', '868994', '14', 1546500787259, '14', 1546500787259, 0);
INSERT INTO `bas_atts` VALUES (340, 64, 133, 'biz_enroll', 'tmp_110be616b1de7735fcf489316f570f83.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103153255.1Hlbp7eBc9.jpg', '868995', '14', 1546500787259, '14', 1546500787259, 0);
INSERT INTO `bas_atts` VALUES (341, 64, 133, 'biz_enroll', 'tmp_23733da13bb8455234ff2154a4af7104.jpg', 108790, 'image', 'http://ks3.qky100.com/20190103153257.XTyBE0JrGG.jpg', '868996', '14', 1546500787259, '14', 1546500787259, 0);
INSERT INTO `bas_atts` VALUES (342, 64, 133, 'biz_enroll', 'tmp_b8e7e3760d759eda2c8bf716bd1ca394.jpg', 125836, 'image', 'http://ks3.qky100.com/20190103153258.70yVDrV7K2.jpg', '868997', '14', 1546500787259, '14', 1546500787259, 0);
INSERT INTO `bas_atts` VALUES (343, 64, 133, 'biz_enroll', 'tmp_ea83178f6680a40a1ca54f45882e3cf3.jpg', 137200, 'image', 'http://ks3.qky100.com/20190103153259.BXvlIZgx5m.jpg', '868998', '14', 1546500787259, '14', 1546500787259, 0);
INSERT INTO `bas_atts` VALUES (344, 64, 133, 'biz_enroll', 'tmp_56013aa5a66e23ebe599c51993e89761.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103153302.HmBsVcoUeL.jpg', '868999', '14', 1546500787259, '14', 1546500787259, 0);
INSERT INTO `bas_atts` VALUES (345, 64, 133, 'biz_enroll', 'tmp_29e20867af700adda6706fd28bc1c658.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103153304.vfsdZXA85p.jpg', '869000', '14', 1546500787259, '14', 1546500787259, 0);
INSERT INTO `bas_atts` VALUES (346, 64, 133, 'biz_enroll', 'tmp_a4979bc735ebf7c878591928a7f2cfcb.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103153305.wywNNJECzy.jpg', '869001', '14', 1546500787259, '14', 1546500787259, 0);
INSERT INTO `bas_atts` VALUES (347, 64, 134, 'biz_enroll', 'tmp_20b43bb07ee0049d7756287f4f52f463.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103153328.vAI8yw7FDJ.jpg', '869002', '14', 1546500826545, '14', 1546500826545, 0);
INSERT INTO `bas_atts` VALUES (348, 64, 134, 'biz_enroll', 'tmp_2b5387103bde91600cdca664cda06da8.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103153332.oxIicHOVgh.jpg', '869003', '14', 1546500826545, '14', 1546500826545, 0);
INSERT INTO `bas_atts` VALUES (349, 64, 134, 'biz_enroll', 'tmp_242edd10dd280e5efe85315fc4b26711.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103153336.68yuspimgZ.jpg', '869004', '14', 1546500826545, '14', 1546500826545, 0);
INSERT INTO `bas_atts` VALUES (350, 64, 134, 'biz_enroll', 'tmp_0b6d205a4259cc39808e797b2d036d66.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103153340.8uHJe6sOlR.jpg', '869005', '14', 1546500826545, '14', 1546500826545, 0);
INSERT INTO `bas_atts` VALUES (351, 64, 134, 'biz_enroll', 'tmp_e204bad7ac929752e36d909507964209.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103153342.KfYNQ9Lpmy.jpg', '869006', '14', 1546500826545, '14', 1546500826545, 0);
INSERT INTO `bas_atts` VALUES (352, 64, 134, 'biz_enroll', 'tmp_7dacd5466c3559be6fc043ebb9b4db8f.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103153344.dBFF6jbIC8.jpg', '869007', '14', 1546500826545, '14', 1546500826545, 0);
INSERT INTO `bas_atts` VALUES (353, 64, 104, 'biz_notice', 'tmp_81ab7079a8088527abc583710639ece1.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103153652.Fc0OY5p0n7.jpg', '869008', '14', 1546501026717, '14', 1546501026717, 0);
INSERT INTO `bas_atts` VALUES (354, 64, 104, 'biz_notice', 'tmp_dd349a645e1df63e698d2fc5e6c28c66.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103153654.Ee5QFzOH4g.jpg', '869009', '14', 1546501026717, '14', 1546501026717, 0);
INSERT INTO `bas_atts` VALUES (355, 64, 104, 'biz_notice', 'tmp_27a604d56b3e183617d5346e96ebd201.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103153656.zlBYaDRs7S.jpg', '869010', '14', 1546501026717, '14', 1546501026717, 0);
INSERT INTO `bas_atts` VALUES (356, 64, 104, 'biz_notice', 'tmp_f21eceb706cc5af0c74a17e46f3fc8bb.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103153658.ijDUh7TAJT.jpg', '869011', '14', 1546501026717, '14', 1546501026717, 0);
INSERT INTO `bas_atts` VALUES (357, 64, 104, 'biz_notice', 'tmp_fb3266d8f6ab6eee740f39d88cf4630d.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103153659.5qwtfDdjKS.jpg', '869012', '14', 1546501026717, '14', 1546501026717, 0);
INSERT INTO `bas_atts` VALUES (358, 64, 104, 'biz_notice', 'tmp_cbfcd8e37864c1dafa10710a78421c4d.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103153701.756Dr3VzZz.jpg', '869013', '14', 1546501026717, '14', 1546501026717, 0);
INSERT INTO `bas_atts` VALUES (359, 64, 104, 'biz_notice', 'tmp_73ae399129f5832fe8a0c0e6f48ee8d7.jpg', 108790, 'image', 'http://ks3.qky100.com/20190103153702.EPjURrBsy3.jpg', '869014', '14', 1546501026717, '14', 1546501026717, 0);
INSERT INTO `bas_atts` VALUES (360, 64, 104, 'biz_notice', 'tmp_ea366687eab71f5abdab71120bc942bd.jpg', 125836, 'image', 'http://ks3.qky100.com/20190103153703.ZfbN47mUiw.jpg', '869015', '14', 1546501026717, '14', 1546501026717, 0);
INSERT INTO `bas_atts` VALUES (361, 64, 104, 'biz_notice', 'tmp_75e4fcad9a9eafc532c99115d2907148.jpg', 137200, 'image', 'http://ks3.qky100.com/20190103153705.8P0WGZDJXh.jpg', '869016', '14', 1546501026717, '14', 1546501026717, 0);
INSERT INTO `bas_atts` VALUES (362, 64, 135, 'biz_enroll', 'tmp_45e4c54e07168c3f2a5ee7b757c346bc.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103153823.gkhIVROF80.jpg', '869017', '14', 1546501119059, '14', 1546501119059, 0);
INSERT INTO `bas_atts` VALUES (363, 64, 135, 'biz_enroll', 'tmp_ef1cc266cfede5720d14ea375a40d6a5.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103153825.OaCSz1G7Mz.jpg', '869018', '14', 1546501119059, '14', 1546501119059, 0);
INSERT INTO `bas_atts` VALUES (364, 64, 135, 'biz_enroll', 'tmp_d16f101bb726b6e0d9a8a13624cf44f6.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103153827.JLOtDv2Jfr.jpg', '869019', '14', 1546501119059, '14', 1546501119059, 0);
INSERT INTO `bas_atts` VALUES (365, 64, 135, 'biz_enroll', 'tmp_075594ea487f8163728958de0d68a7e0.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103153828.MmyeKCFnTU.jpg', '869020', '14', 1546501119059, '14', 1546501119059, 0);
INSERT INTO `bas_atts` VALUES (366, 64, 135, 'biz_enroll', 'tmp_7c6e4976a883d6d67f364c6a4710a0f5.jpg', 108790, 'image', 'http://ks3.qky100.com/20190103153830.oovxNWUT53.jpg', '869021', '14', 1546501119059, '14', 1546501119059, 0);
INSERT INTO `bas_atts` VALUES (367, 64, 135, 'biz_enroll', 'tmp_2adec14161b6ede9032d08e7f2bb93bd.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103153831.NgXq7sCI0q.jpg', '869022', '14', 1546501119059, '14', 1546501119059, 0);
INSERT INTO `bas_atts` VALUES (368, 64, 135, 'biz_enroll', 'tmp_5590c79f475c651d8da458ac7b450d86.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103153832.dlqsGGQz1v.jpg', '869023', '14', 1546501119059, '14', 1546501119059, 0);
INSERT INTO `bas_atts` VALUES (369, 64, 135, 'biz_enroll', 'tmp_fdffb86d7f448373119ca6f5dbaa6418.jpg', 125836, 'image', 'http://ks3.qky100.com/20190103153836.i7MrWydPuq.jpg', '869024', '14', 1546501119059, '14', 1546501119059, 0);
INSERT INTO `bas_atts` VALUES (370, 64, 135, 'biz_enroll', 'tmp_acedd551335fc156eb068c6433a70453.jpg', 137200, 'image', 'http://ks3.qky100.com/20190103153837.UQaGXnub1B.jpg', '869025', '14', 1546501119059, '14', 1546501119059, 0);
INSERT INTO `bas_atts` VALUES (371, 64, 136, 'biz_enroll', 'tmp_7bb8021e1e0bc2a4a110320450e19034.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103153933.BjqrvxPx6R.jpg', '869026', '14', 1546501197395, '14', 1546501197395, 0);
INSERT INTO `bas_atts` VALUES (372, 64, 136, 'biz_enroll', 'tmp_ea4a48ece51189cb8417aa67d4d98708.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103153937.yhRQwVhA9q.jpg', '869027', '14', 1546501197395, '14', 1546501197395, 0);
INSERT INTO `bas_atts` VALUES (373, 64, 136, 'biz_enroll', 'tmp_a6c2bd74ab8d83f1ea288169ca5884e7.jpg', 269061, 'image', 'http://ks3.qky100.com/20190103153945.GPefEjkj5L.jpg', '869028', '14', 1546501197395, '14', 1546501197395, 0);
INSERT INTO `bas_atts` VALUES (374, 64, 136, 'biz_enroll', 'tmp_5573a67777e8b277996009fac636dd32.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103153947.f9aVvH1xMX.jpg', '869029', '14', 1546501197395, '14', 1546501197395, 0);
INSERT INTO `bas_atts` VALUES (375, 64, 136, 'biz_enroll', 'tmp_1de438e9173a08722f3d25996b8dd956.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103153949.pVFDcZnajQ.jpg', '869030', '14', 1546501197395, '14', 1546501197395, 0);
INSERT INTO `bas_atts` VALUES (376, 64, 136, 'biz_enroll', 'tmp_3682326af00cb86562e974333ad28a39.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103153951.RTu2456hnt.jpg', '869031', '14', 1546501197395, '14', 1546501197395, 0);
INSERT INTO `bas_atts` VALUES (377, 64, 136, 'biz_enroll', 'tmp_5ff0e20b7f776273721eb3c7e06d025b.jpg', 108790, 'image', 'http://ks3.qky100.com/20190103153953.84VxmCJzrE.jpg', '869032', '14', 1546501197395, '14', 1546501197395, 0);
INSERT INTO `bas_atts` VALUES (378, 64, 136, 'biz_enroll', 'tmp_7e1de7d95ff6ea24927a91f9f539792a.jpg', 125836, 'image', 'http://ks3.qky100.com/20190103153954.G8VmCHDiyl.jpg', '869033', '14', 1546501197395, '14', 1546501197395, 0);
INSERT INTO `bas_atts` VALUES (379, 64, 136, 'biz_enroll', 'tmp_db2dbeb8bd0fe2379d48522c2407e373.jpg', 137200, 'image', 'http://ks3.qky100.com/20190103153956.v0rQ6NGvQK.jpg', '869035', '14', 1546501197395, '14', 1546501197395, 0);
INSERT INTO `bas_atts` VALUES (380, 64, 137, 'biz_enroll', 'tmp_7bb8021e1e0bc2a4a110320450e19034.jpg(1)', 279143, 'image', 'http://ks3.qky100.com/20190103153955.Ve71P2NlsM.jpg', '869034', '14', 1546501211404, '14', 1546501211404, 0);
INSERT INTO `bas_atts` VALUES (381, 64, 137, 'biz_enroll', 'tmp_ea4a48ece51189cb8417aa67d4d98708.jpg(1)', 288162, 'image', 'http://ks3.qky100.com/20190103153957.nfiabFsFN5.jpg', '869036', '14', 1546501211404, '14', 1546501211404, 0);
INSERT INTO `bas_atts` VALUES (382, 64, 137, 'biz_enroll', 'tmp_a6c2bd74ab8d83f1ea288169ca5884e7.jpg(1)', 269061, 'image', 'http://ks3.qky100.com/20190103153959.iiPyelMzEP.jpg', '869037', '14', 1546501211404, '14', 1546501211404, 0);
INSERT INTO `bas_atts` VALUES (383, 64, 137, 'biz_enroll', 'tmp_5573a67777e8b277996009fac636dd32.jpg(1)', 283685, 'image', 'http://ks3.qky100.com/20190103154001.rMvVWF9ZxY.jpg', '869038', '14', 1546501211404, '14', 1546501211404, 0);
INSERT INTO `bas_atts` VALUES (384, 64, 137, 'biz_enroll', 'tmp_1de438e9173a08722f3d25996b8dd956.jpg(1)', 110723, 'image', 'http://ks3.qky100.com/20190103154002.qLxUwvBnrI.jpg', '869039', '14', 1546501211404, '14', 1546501211404, 0);
INSERT INTO `bas_atts` VALUES (385, 64, 137, 'biz_enroll', 'tmp_3682326af00cb86562e974333ad28a39.jpg(1)', 226231, 'image', 'http://ks3.qky100.com/20190103154004.bWIp9pvn43.jpg', '869040', '14', 1546501211404, '14', 1546501211404, 0);
INSERT INTO `bas_atts` VALUES (386, 64, 137, 'biz_enroll', 'tmp_5ff0e20b7f776273721eb3c7e06d025b.jpg(1)', 108790, 'image', 'http://ks3.qky100.com/20190103154007.UDD43ddGOO.jpg', '869041', '14', 1546501211404, '14', 1546501211404, 0);
INSERT INTO `bas_atts` VALUES (387, 64, 137, 'biz_enroll', 'tmp_7e1de7d95ff6ea24927a91f9f539792a.jpg(1)', 125836, 'image', 'http://ks3.qky100.com/20190103154008.g4emdqcA0D.jpg', '869042', '14', 1546501211404, '14', 1546501211404, 0);
INSERT INTO `bas_atts` VALUES (388, 64, 137, 'biz_enroll', 'tmp_db2dbeb8bd0fe2379d48522c2407e373.jpg(1)', 137200, 'image', 'http://ks3.qky100.com/20190103154010.GXajkDPdHq.jpg', '869043', '14', 1546501211404, '14', 1546501211404, 0);
INSERT INTO `bas_atts` VALUES (389, 64, 138, 'biz_enroll', 'tmp_17154a36ba15f67919ce9964eea70d68.jpg', 108790, 'image', 'http://ks3.qky100.com/20190103154038.RpJdluy9sI.jpg', '869044', '14', 1546501251366, '14', 1546501251366, 0);
INSERT INTO `bas_atts` VALUES (390, 64, 138, 'biz_enroll', 'tmp_f99a15415aa1db430e67b0592815457e.jpg', 226231, 'image', 'http://ks3.qky100.com/20190103154039.n9tsznFgOq.jpg', '869045', '14', 1546501251366, '14', 1546501251366, 0);
INSERT INTO `bas_atts` VALUES (391, 64, 138, 'biz_enroll', 'tmp_6ce78d9a2c389a680849560bf05b200c.jpg', 125836, 'image', 'http://ks3.qky100.com/20190103154041.QLOO8FVCnM.jpg', '869046', '14', 1546501251366, '14', 1546501251366, 0);
INSERT INTO `bas_atts` VALUES (392, 64, 138, 'biz_enroll', 'tmp_ac3f70f65131f30a731b71bdc41a7f08.jpg', 279143, 'image', 'http://ks3.qky100.com/20190103154042.EFi3SogTrz.jpg', '869047', '14', 1546501251366, '14', 1546501251366, 0);
INSERT INTO `bas_atts` VALUES (393, 64, 138, 'biz_enroll', 'tmp_6975e9972a7a85e4f67dd085719b35f9.jpg', 283685, 'image', 'http://ks3.qky100.com/20190103154045.JXHrSpTYO4.jpg', '869048', '14', 1546501251366, '14', 1546501251366, 0);
INSERT INTO `bas_atts` VALUES (394, 64, 138, 'biz_enroll', 'tmp_8668ec3fadf6e10919a150c70a5c1dcb.jpg', 110723, 'image', 'http://ks3.qky100.com/20190103154047.HhmpYUeadW.jpg', '869049', '14', 1546501251366, '14', 1546501251366, 0);
INSERT INTO `bas_atts` VALUES (395, 64, 138, 'biz_enroll', 'tmp_2aa7c3d54d2cf60893947bc2f8278d03.jpg', 137200, 'image', 'http://ks3.qky100.com/20190103154050.XYiMkTbshq.jpg', '869050', '14', 1546501251366, '14', 1546501251366, 0);
INSERT INTO `bas_atts` VALUES (396, 64, 106, 'biz_notice', 'tmp_ad9d12b87004a6172a1b9bffd8f8f720.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103163814.RVOhsgZ7ex.jpg', '869052', '14', 1546504695767, '14', 1546504695767, 0);
INSERT INTO `bas_atts` VALUES (397, 64, 140, 'biz_enroll', 'tmp_c73e553b1dbf8b9057de0bc920204898.jpg', 288162, 'image', 'http://ks3.qky100.com/20190103163924.XrSxmesURQ.jpg', '869053', '14', 1546504765400, '14', 1546504765400, 0);
INSERT INTO `bas_atts` VALUES (398, 87, 146, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.i3QL7q0czF8Cc9d80619ef4d62288444542ea969adac.jpg', 406315, 'image', 'http://ks3.qky100.com/20190103175309.A8nBA664Hf.jpg', '869055', '41', 1546509201524, '41', 1546509201524, 0);
INSERT INTO `bas_atts` VALUES (399, 87, 146, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.jFESkAsRI9Zb2e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190103175312.vxcrLItvo4.png', '869056', '41', 1546509201524, '41', 1546509201524, 0);
INSERT INTO `bas_atts` VALUES (400, 87, 146, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.eDvAZMFnCLAqf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103175313.bELolHj6jw.jpg', '869057', '41', 1546509201524, '41', 1546509201524, 0);
INSERT INTO `bas_atts` VALUES (401, 87, 146, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.1XLm2V3V46bQf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103175315.q1Ia7KjUc6.jpg', '869058', '41', 1546509201524, '41', 1546509201524, 0);
INSERT INTO `bas_atts` VALUES (402, 87, 146, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.AjOzhoxl80TM1d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190103175316.7SKrqLsMds.jpg', '869059', '41', 1546509201524, '41', 1546509201524, 0);
INSERT INTO `bas_atts` VALUES (403, 87, 146, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.uTdEKpyyVPHVf5fde661e8a03c7ac40c0824558c44de.png', 26167, 'image', 'http://ks3.qky100.com/20190103175317.mXJGqmBtax.png', '869060', '41', 1546509201524, '41', 1546509201524, 0);
INSERT INTO `bas_atts` VALUES (404, 87, 146, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.qQUNTr4ICaVre7d9675bb73ae86b2961947ab16f79db.jpeg', 88988, 'image', 'http://ks3.qky100.com/20190103175319.y3AFpfmkSJ.jpeg', '869061', '41', 1546509201524, '41', 1546509201524, 0);
INSERT INTO `bas_atts` VALUES (405, 87, 146, 'biz_enroll', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.8L8zVW2P0bGUa95a025ae4355841dc26643a5229415c.png', 25441, 'image', 'http://ks3.qky100.com/20190103175320.C9l5KSRbCp.png', '869062', '41', 1546509201524, '41', 1546509201524, 0);
INSERT INTO `bas_atts` VALUES (406, 87, 110, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.BlapOZkccsHYc9d80619ef4d62288444542ea969adac.jpg', 406315, 'image', 'http://ks3.qky100.com/20190103175701.aXraDgWz93.jpg', '869063', '41', 1546509430338, '41', 1546509430338, 0);
INSERT INTO `bas_atts` VALUES (407, 87, 110, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.peS4WHQhugsX2e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190103175705.EMTCdeCby1.png', '869064', '41', 1546509430338, '41', 1546509430338, 0);
INSERT INTO `bas_atts` VALUES (408, 87, 110, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.MUQZRK50mbLcf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103175706.wZPTufskOb.jpg', '869065', '41', 1546509430338, '41', 1546509430338, 0);
INSERT INTO `bas_atts` VALUES (409, 87, 110, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.KEqJqRjd1Hlsf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103175708.YjMqEn46zr.jpg', '869066', '41', 1546509430338, '41', 1546509430338, 0);
INSERT INTO `bas_atts` VALUES (410, 87, 110, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.hIef6qwMtvGQ1d7c4a691479fc1c54bb8577411891ac.jpg', 6922, 'image', 'http://ks3.qky100.com/20190103175709.H5o4fn4gMK.jpg', '869067', '41', 1546509430338, '41', 1546509430338, 0);
INSERT INTO `bas_atts` VALUES (411, 87, 111, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.QshqGOS2VdEyc9d80619ef4d62288444542ea969adac.jpg', 406315, 'image', 'http://ks3.qky100.com/20190103180010.E9usJI8GCe.jpg', '869068', '41', 1546509621395, '41', 1546509621395, 0);
INSERT INTO `bas_atts` VALUES (412, 87, 111, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.AThklR4kbIdh2e6ee5b57aa7c60b39221fb71357a71f.png', 1127309, 'image', 'http://ks3.qky100.com/20190103180013.TJT80ovbZ4.png', '869069', '41', 1546509621395, '41', 1546509621395, 0);
INSERT INTO `bas_atts` VALUES (413, 87, 111, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.4Ase8sKhm3ySf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103180014.ALLaebS2oa.jpg', '869070', '41', 1546509621395, '41', 1546509621395, 0);
INSERT INTO `bas_atts` VALUES (414, 87, 111, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.VHm1MqLy0Nqpf9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190103180016.zNdWIOAZzv.jpg', '869071', '41', 1546509621395, '41', 1546509621395, 0);
INSERT INTO `bas_atts` VALUES (415, 87, 111, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.A37q2rRmn0O7f5fde661e8a03c7ac40c0824558c44de.png', 26167, 'image', 'http://ks3.qky100.com/20190103180017.ZKGfCkfmIx.png', '869072', '41', 1546509621395, '41', 1546509621395, 0);
INSERT INTO `bas_atts` VALUES (416, 87, 111, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.CnKkvaPlCw1qe7d9675bb73ae86b2961947ab16f79db.jpeg', 88988, 'image', 'http://ks3.qky100.com/20190103180018.8waUzRSuqd.jpeg', '869073', '41', 1546509621395, '41', 1546509621395, 0);
INSERT INTO `bas_atts` VALUES (417, 87, 111, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.xS9qOLMwZw6sa95a025ae4355841dc26643a5229415c.png', 25441, 'image', 'http://ks3.qky100.com/20190103180020.BJvQBL0o17.png', '869074', '41', 1546509621395, '41', 1546509621395, 0);
INSERT INTO `bas_atts` VALUES (418, 87, 113, 'biz_notice', 'wx37532ad9bfef678d.o6zAJs0Xnwp9smWL-sv9p2b-HQKs.kwvIKMloOQM0f9a434eb0f8ae9181ac5de9c3625fd95.jpg', 189448, 'image', 'http://ks3.qky100.com/20190104100554.W5aAvsNAr7.jpg', '869077', '41', 1546567556154, '41', 1546567556154, 0);
INSERT INTO `bas_atts` VALUES (419, 64, 114, 'biz_notice', 'tmp_e7e1951ff3fdc059b25124d5813c3126.jpg', 278285, 'image', 'http://ks3.qky100.com/20190104102046.IcJuy6a7oe.jpg', '869078', '14', 1546568447387, '14', 1546568447387, 0);
INSERT INTO `bas_atts` VALUES (420, 64, 115, 'biz_notice', 'tmp_fd26b505a636feac8cf3f2b7fdcd0c57.jpg', 288162, 'image', 'http://ks3.qky100.com/20190104102722.8w9EuSY0V9.jpg', '869081', '14', 1546568845279, '14', 1546568845279, 0);
INSERT INTO `bas_atts` VALUES (421, 64, 115, 'biz_notice', 'tmp_55147e9357063f85d9147a3f0d28cc96.jpg', 154154, 'image', 'http://ks3.qky100.com/20190104102724.A5pH2HQCv8.jpg', '869082', '14', 1546568845279, '14', 1546568845279, 0);
INSERT INTO `bas_atts` VALUES (422, 65, 116, 'biz_notice', 'wx37532ad9bfef678d.o6zAJsxuFxAcLui7_wyHt756KgBY.1bUrG5g0YXzR23235f84fd500593550cb2180db466c2.jpg', 3414, 'image', 'http://ks3.qky100.com/20190104104150.r5cy7FS4Vf.jpg', '869083', '15', 1546569712790, '15', 1546569712790, 0);
INSERT INTO `bas_atts` VALUES (423, 65, 116, 'biz_notice', 'wx37532ad9bfef678d.o6zAJsxuFxAcLui7_wyHt756KgBY.rd491RT3Ow2J333168667e8bf71b38bc7286b2c29259.jpg', 8126, 'image', 'http://ks3.qky100.com/20190104104151.daLPlJfwS4.jpg', '869084', '15', 1546569712790, '15', 1546569712790, 0);
INSERT INTO `bas_atts` VALUES (424, 69, 117, 'biz_notice', 'tmp_89e730561c8fd81bb40e1ccad149da62097982ed97b8bedd.jpg', 87204, 'image', 'http://ks3.qky100.com/20190104105149.2QuXlUIRKm.jpg', '869085', '18', 1546570310401, '18', 1546570310401, 0);

-- ----------------------------
-- Table structure for bas_group
-- ----------------------------
DROP TABLE IF EXISTS `bas_group`;
CREATE TABLE `bas_group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一id',
  `groupCode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '群号,9位数字构成,类似于QQ群的群号',
  `groupName` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '群组名称',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `notice` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '通知公告',
  `introduce` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '群组介绍',
  `memberLimit` int(10) NULL DEFAULT -1 COMMENT '成员人数限制,-1表示无限制（该字段用于日后增值考虑）',
  `isNeedCheck` int(1) NULL DEFAULT NULL COMMENT '成员是否要审核，1：是；0：否；开启时，所加入的成员需审核后才能加入群组。',
  `memberNum` int(10) NULL DEFAULT NULL COMMENT '成员人数',
  `creator` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createDate` bigint(20) NOT NULL COMMENT '创建时间',
  `lastModifier` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  `lastModDate` bigint(20) NOT NULL COMMENT '修改时间',
  `status` tinyint(4) NOT NULL COMMENT '状态 0-启用，1-停用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `AK_uq_groupCode`(`groupCode`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '群组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bas_group
-- ----------------------------
INSERT INTO `bas_group` VALUES (64, '000000', '三年二班', '15854336999', '暂无公告', NULL, -1, 1, 3, '14', 1545808591402, '24', 1546395362582, 0);
INSERT INTO `bas_group` VALUES (65, '000001', '高二9班', '15112114489', '暂无公告', NULL, -1, 1, 1, '15', 1545808617046, '15', 1546392881446, 0);
INSERT INTO `bas_group` VALUES (66, '000002', '高二（9）班', '15112114489', '暂无公告', NULL, -1, 1, 2, '21', 1545809653430, '21', 1546392251438, 0);
INSERT INTO `bas_group` VALUES (67, '000003', '三年三班', NULL, '', NULL, -1, 1, 2, '14', 1545809654481, '14', 1545893152726, 0);
INSERT INTO `bas_group` VALUES (68, '000004', '测试字数测试字数测试', NULL, 'undefined', NULL, -1, 1, 2, '14', 1545809789422, '24', 1546412135290, 0);
INSERT INTO `bas_group` VALUES (69, '000005', '春田花花幼儿园', NULL, '这是班级公告公告', NULL, -1, 1, 1, '18', 1545810090698, '18', 1545810644554, 0);
INSERT INTO `bas_group` VALUES (71, '000007', '测试班', NULL, 'tedt', NULL, -1, 1, 2, '15', 1545817145604, '15', 1545821835442, 0);
INSERT INTO `bas_group` VALUES (73, '000008', '测试班级测试班级玻璃杯具体', NULL, '还有4天我们进入“跨年”，而我们的气候也会随之变化，根据中央气象台的数据显示，强冷空气继续影响我国，南方将有明显雨雪天气，并且这个时间可能还会持续到2019年，从气象数据未来10天（12月27日-20', NULL, -1, 1, 2, '24', 1545893237897, '24', 1545893974430, 0);
INSERT INTO `bas_group` VALUES (74, '000009', '1', NULL, '', NULL, -1, 1, 1, '24', 1545894049696, '24', 1545894108146, 0);
INSERT INTO `bas_group` VALUES (75, '000010', '3', NULL, NULL, NULL, -1, 1, 1, '24', 1545894119727, '24', 1545894119727, 0);
INSERT INTO `bas_group` VALUES (76, '000011', 'ba', NULL, '不造呢', NULL, -1, 1, 1, '24', 1545894428686, '24', 1545894446871, 0);
INSERT INTO `bas_group` VALUES (77, '000012', '33', NULL, NULL, NULL, -1, 1, 1, '24', 1545894459979, '24', 1545894459979, 0);
INSERT INTO `bas_group` VALUES (78, '000013', '测试', NULL, NULL, NULL, -1, 1, 1, '24', 1545894476643, '24', 1545894476643, 0);
INSERT INTO `bas_group` VALUES (79, '000014', '测试班级测试字数字', NULL, NULL, NULL, -1, 1, 2, '24', 1545894619361, '24', 1545894619361, 0);
INSERT INTO `bas_group` VALUES (80, '000015', '33', NULL, NULL, NULL, -1, 1, 1, '24', 1545894651777, '24', 1545894651777, 0);
INSERT INTO `bas_group` VALUES (81, '000016', '测试333', NULL, NULL, NULL, -1, 1, 1, '24', 1545959153212, '24', 1545959153212, 0);
INSERT INTO `bas_group` VALUES (82, '000017', 'qwqwqwwq', NULL, '暂无公告', NULL, -1, 1, 1, '24', 1545960992386, '24', 1546413673726, 0);
INSERT INTO `bas_group` VALUES (83, '000018', '高一（1）班', NULL, '暂无公告', NULL, -1, 1, 2, '21', 1545966601996, '21', 1546392057982, 0);
INSERT INTO `bas_group` VALUES (84, '000019', '测试公告测试字数字数', NULL, '测试', NULL, -1, 1, 2, '14', 1545981833395, '14', 1545981881622, 0);
INSERT INTO `bas_group` VALUES (85, '000020', 'test', NULL, NULL, NULL, -1, 1, 2, '21', 1546390991030, '21', 1546390991030, 0);
INSERT INTO `bas_group` VALUES (86, '000021', '测试', NULL, NULL, NULL, -1, 1, 2, '21', 1546392516686, '21', 1546392516686, 0);
INSERT INTO `bas_group` VALUES (87, '000022', '初一（5）班', '13824789780', NULL, NULL, -1, 1, 1, '41', 1546392545110, '41', 1546392545110, 0);
INSERT INTO `bas_group` VALUES (88, '000023', '双叶幼稚园向日葵班', NULL, '欢迎各位家长和老师加入班级大集体！', NULL, -1, 1, 1, '18', 1546396499358, '18', 1546563679214, 0);
INSERT INTO `bas_group` VALUES (89, '000024', '新班级2', NULL, '暂无公告', NULL, -1, 1, 2, '14', 1546411749170, '14', 1546412258558, 0);
INSERT INTO `bas_group` VALUES (90, '000025', '新班级3', NULL, NULL, NULL, -1, 1, 2, '14', 1546412367693, '14', 1546412367693, 0);
INSERT INTO `bas_group` VALUES (91, '000026', 'newClazz', NULL, NULL, NULL, -1, 1, 1, '21', 1546412503421, '21', 1546412620862, 0);
INSERT INTO `bas_group` VALUES (92, '000027', 'test2', NULL, '', NULL, -1, 1, 1, '21', 1546412710514, '21', 1546413412014, 0);
INSERT INTO `bas_group` VALUES (93, '000028', 't1', NULL, '', NULL, -1, 1, 1, '21', 1546413421910, '21', 1546413440970, 0);
INSERT INTO `bas_group` VALUES (94, '000029', '测试6', NULL, '', NULL, -1, 1, 1, '21', 1546413585628, '21', 1546413592378, 0);
INSERT INTO `bas_group` VALUES (95, '000030', '四年五班', NULL, '暂无公告', NULL, -1, 1, 1, '24', 1546414346260, '24', 1546414452390, 0);
INSERT INTO `bas_group` VALUES (96, '000031', '转发测试班', NULL, NULL, NULL, -1, 1, 2, '21', 1546502194560, '21', 1546502194560, 0);
INSERT INTO `bas_group` VALUES (97, '000032', '春田花花幼稚园', NULL, NULL, NULL, -1, 1, 1, '18', 1546566015967, '18', 1546566015967, 0);

-- ----------------------------
-- Table structure for bas_student
-- ----------------------------
DROP TABLE IF EXISTS `bas_student`;
CREATE TABLE `bas_student`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `creator` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `createDate` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `lastModifier` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `lastModDate` bigint(20) NULL DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态 0-启用，1-停用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '学生表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bas_user
-- ----------------------------
DROP TABLE IF EXISTS `bas_user`;
CREATE TABLE `bas_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户唯一标识',
  `unionid` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开放平台的唯一标识符',
  `nickName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `avatarUrl` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表640*640正方形头像），用户没有头像时该项为空。若用户更换头像，原有头像URL将失效。',
  `gender` int(1) NULL DEFAULT NULL COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户所在城市',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户所在省份',
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phoneNumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户绑定的手机号（国外手机号会有区号）',
  `purePhoneNumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '没有区号的手机号',
  `countryCode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createDate` bigint(20) NOT NULL COMMENT '创建时间',
  `lastModifier` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  `lastModDate` bigint(20) NOT NULL COMMENT '修改时间',
  `status` tinyint(4) NOT NULL COMMENT '状态 0-启用，1-停用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `AK_uq_openid`(`openid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户基本信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bas_user
-- ----------------------------
INSERT INTO `bas_user` VALUES (14, 'ocZO45elmPaV-aP8R9JkQ88hALMI', NULL, '鱼丸粗面', 'https://wx.qlogo.cn/mmopen/vi_32/ajNVdqHZLLDZmCbiaYuk8AJ3a839aGRVCqFoZbI4z0tFrKiaNic0hibkq7V97psSoIUrTicOw1tD2GsAgfGHwLWbRNQ/132', 1, '', '', '斯里兰卡', '15854336999', '15854336999', NULL, '0', 1545807439190, '0', 1545807439190, 0);
INSERT INTO `bas_user` VALUES (15, 'ocZO45eA4RrZdjTCxg3QcOXTANh8', NULL, 'koyuhau', 'https://wx.qlogo.cn/mmopen/vi_32/WTfDWbNXN22Inl5YOKTo0UOI7cyczrAxNVibfIyVVQLl7lPZ3EleW9Pu0hdRibeYPspEZLgFcjx0F7eBQJLDibd1w/132', 1, '中山', '广东', '中国', '15112114489', '15112114489', NULL, '0', 1545807640705, '0', 1545807640705, 0);
INSERT INTO `bas_user` VALUES (18, 'ocZO45dTiIqcRyp5I8FE_8AFLrgE', NULL, '依依酱Rorita.Chiang', 'https://wx.qlogo.cn/mmopen/vi_32/WgqxxErTXCHX8lEoeLGYbApAgK8l7aZlvzJSxjEZcUExZSjf54LlIEDa2Sc2j6eWLEDZribmwmy1ib6Qb0EHBI6w/132', 2, '中山', '广东', '中国', '18824501480', '18824501480', NULL, '0', 1545808831681, '0', 1545808831681, 0);
INSERT INTO `bas_user` VALUES (21, 'ocZO45ZNmyhvPZCl8oKwRli_N754', NULL, 'go', 'https://wx.qlogo.cn/mmopen/vi_32/laCMFX1ZRVFSLOUsyr80gVQbIZaUpGm1HTLcQLQwEG5KyLAjNVX1TTAWPGoeTJ4Cf4GAoQhhMBFgsyc1Pxsp6A/132', 1, '中山', '广东', '中国', '15112114489', '15112114489', NULL, '0', 1545809343399, '0', 1545809343399, 0);
INSERT INTO `bas_user` VALUES (24, 'ocZO45cBI4hc1aS_c9YoztlezIA4', NULL, 'test', 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEJvUEGRaS9JWu5VuWHV3Q4E4oJsZibiaomOpia2IIfZ4zzQn99ht8RvribFiaN1hTvtiaSKu13Z9Nl2plQg/132', 0, '', '', '', '13589994999', '13589994999', NULL, '0', 1545815242277, '0', 1545815242277, 0);
INSERT INTO `bas_user` VALUES (26, 'ocZO45UGcO3BzrcRJKrk8J2j7Uns', NULL, 'ls', '', 0, '', '', '', '15195255851', '15195255851', NULL, '0', 1545876913928, '0', 1545876913928, 0);
INSERT INTO `bas_user` VALUES (27, 'ocZO45UGcO3BzrcRJKrk8J2j7Una', NULL, '测试1', NULL, NULL, NULL, NULL, NULL, '13589994999', '13589994999', NULL, '0', 1545815242277, '', 1545815242277, 0);
INSERT INTO `bas_user` VALUES (28, 'ocZO45UGcO3BzrcRJKrk8J2j7Unb', NULL, '测试2', NULL, NULL, NULL, NULL, NULL, '13589994999', '13589994999', NULL, '', 0, '', 0, 0);
INSERT INTO `bas_user` VALUES (29, 'ocZO45UGcO3BzrcRJKrk8J2j7Unc29', NULL, '测试3', NULL, NULL, NULL, NULL, NULL, '13589994999', '13589994999', NULL, '', 0, '', 0, 0);
INSERT INTO `bas_user` VALUES (30, 'ocZO45UGcO3BzrcRJKrk8J2j7Und', NULL, '测试4', NULL, NULL, NULL, NULL, NULL, '13589994999', '13589994999', NULL, '', 0, '', 0, 0);
INSERT INTO `bas_user` VALUES (31, 'ocZO45UGcO3BzrcRJKrk8J2j7Unf', NULL, '测试5', NULL, NULL, NULL, NULL, NULL, '13589994999', '13589994999', NULL, '', 0, '', 0, 0);
INSERT INTO `bas_user` VALUES (32, 'ocZO45UGcO3BzrcRJKrk8J2j7Ung', NULL, '测试6', NULL, NULL, NULL, NULL, NULL, '13589994999', '13589994999', NULL, '', 0, '', 0, 0);
INSERT INTO `bas_user` VALUES (33, 'ocZO45UGcO3BzrcRJKrk8J2j7Unm', NULL, '测试7', NULL, NULL, NULL, NULL, NULL, '13589994999', '13589994999', NULL, '', 0, '', 0, 0);
INSERT INTO `bas_user` VALUES (34, 'ocZO45UGcO3BzrcRJKrk8J2j7Unn', NULL, '测试8', NULL, NULL, NULL, NULL, NULL, '13589994999', '13589994999', NULL, '', 0, '', 0, 0);
INSERT INTO `bas_user` VALUES (35, 'ocZO45UGcO3BzrcRJKrk8J2j7Unl', NULL, '测试9', NULL, NULL, NULL, NULL, NULL, '13589994999', '13589994999', NULL, '', 0, '', 0, 0);
INSERT INTO `bas_user` VALUES (36, 'ocZO45UGcO3BzrcRJKrk8J2j7Uno', NULL, '测试10', NULL, NULL, NULL, NULL, NULL, '13589994999', '13589994999', NULL, '', 0, '', 0, 0);
INSERT INTO `bas_user` VALUES (37, 'ocZO45UGcO3BzrcRJKrk8J2j7Uax', NULL, '测试11', NULL, NULL, NULL, NULL, NULL, '13589994999', '13589994999', NULL, '', 0, '', 0, 0);
INSERT INTO `bas_user` VALUES (38, 'ocZO45UGcO3BzrcRJKrk8J2j7Ufh', NULL, '测试12', NULL, NULL, NULL, NULL, NULL, '13589994999', '13589994999', NULL, '', 0, '', 0, 0);
INSERT INTO `bas_user` VALUES (39, 'ocZO45UGcO3BzrcRJKrk8J2j7Urt', NULL, '测试13', NULL, NULL, NULL, NULL, NULL, '13589994999', '13589994999', NULL, '', 0, '', 0, 0);
INSERT INTO `bas_user` VALUES (41, 'ocZO45ZRUWOtm5v_f5JvIpEwYO_I', NULL, 'lyw', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK89BuzZQiasFZ7vFkwznaMyvx4jH8t5r0bQ819j6TZicyUIQuhQc5APAXicG1KmYzjOav7qmTgb2ffA/132', 1, '中山', '广东', '中国', '13824789780', '13824789780', NULL, '0', 1546392269951, '0', 1546392269951, 0);

-- ----------------------------
-- Table structure for biz_enroll
-- ----------------------------
DROP TABLE IF EXISTS `biz_enroll`;
CREATE TABLE `biz_enroll`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一id',
  `groupId` bigint(20) NOT NULL COMMENT '所属群组id',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `endDate` bigint(20) NOT NULL COMMENT '报名截止时间',
  `readNum` int(10) NULL DEFAULT NULL COMMENT '已读人数',
  `enrollNum` int(10) NULL DEFAULT NULL COMMENT '报名人数',
  `limitNum` int(11) NOT NULL COMMENT '报名名额,-1表示不限；',
  `creatorName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `creator` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createDate` bigint(20) NOT NULL COMMENT '创建时间',
  `lastModifier` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  `lastModDate` bigint(20) NOT NULL COMMENT '修改时间',
  `status` tinyint(4) NOT NULL COMMENT '状态 0-启用，1-停用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `AK_uq_title`(`groupId`, `title`) USING BTREE,
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`groupId`) REFERENCES `bas_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 150 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '报名主表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of biz_enroll
-- ----------------------------
INSERT INTO `biz_enroll` VALUES (22, 69, '报名报名', '内容内容内容', 1546358400000, 1, 0, 10, '依依酱Rorita.Chiang', '18', 1545810506536, '18', 1545810506536, 0);
INSERT INTO `biz_enroll` VALUES (23, 66, '1', '2', 1199116800000, 1, 0, 123, 'go', '21', 1545816659836, '21', 1545816659836, 0);
INSERT INTO `biz_enroll` VALUES (24, 64, '报名', '测试', 1546185600000, 2, 1, 50, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545816671685, '14', 1545816671685, 0);
INSERT INTO `biz_enroll` VALUES (25, 64, 'ttt', 'yyy', 1546272000000, 1, 0, -1, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545816913406, '14', 1545816913406, 0);
INSERT INTO `biz_enroll` VALUES (26, 64, '2', '2', 1546272000000, 2, 0, -1, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545816944589, '14', 1545816944589, 0);
INSERT INTO `biz_enroll` VALUES (27, 64, '1121221', '121212', 1577808000000, 1, 1, -1, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545895895013, '14', 1545895895013, 0);
INSERT INTO `biz_enroll` VALUES (28, 64, '111', '1111', 1577808000000, 2, 2, -1, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545895937762, '14', 1545895937762, 0);
INSERT INTO `biz_enroll` VALUES (29, 64, '12121212', '1212', 1514736000000, 2, 0, -1, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545896144310, '14', 1545896144310, 0);
INSERT INTO `biz_enroll` VALUES (30, 73, '33333', '3333', 1546185600000, 2, 0, -1, 'test', '24', 1545958760771, '24', 1545958760771, 0);
INSERT INTO `biz_enroll` VALUES (31, 64, '测试', '测试字数', 1546185600000, 0, 0, -1, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545960031092, '14', 1545960031092, 0);
INSERT INTO `biz_enroll` VALUES (32, 64, '额额呃呃呃', '得得得', 1546272000000, 2, 0, 2, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545960138593, '14', 1545960138593, 0);
INSERT INTO `biz_enroll` VALUES (33, 64, '字数字数字数字数字数字数字数字数字数字数', '此前有媒体报道，12月27日，国家市场监管总局相关负责人就“百亿保健帝国” 权健自然医学科技发展有限公司引发争议一事表示，总局已经关注到网络舆情，相关业务司局正在了解情况。权健总部所在地天津方面12月27日发布消息称，天津市委、市政府高度重视，责成市市场监管委、市卫健委和武清区等相关部门成立联合调查', 1577808000000, 3, 2, 2, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545960204711, '14', 1545960204710, 0);
INSERT INTO `biz_enroll` VALUES (34, 64, '此前有媒体报道，12月27日，国家市场监', '此前有媒体报道，12月27日，国家市场监管总局相关负责人就“百亿保健帝国” 权健自然医学科技发展有限公司引发争议一事表示，总局已经关注到网络舆情，相关业务司局正在了解情况。权健总部所在地天津方面12月27日发布消息称，天津市委、市政府高度重视，责成市市场监管委、市卫健委和武清区等相关部门成立联合调查此前有媒体报道，12月27日，国家市场监管总局相关负责人就“百亿保健帝国” 权健自然医学科技发展有限公司引发争议一事表示，总局已经关注到网络舆情，相关业务司局正在了解情况。权健总部所在地天津方面12月27日发布消息称，天津市委、市政府高度重视，责成市市场监管委、市卫健委和武清区等相关部门成立联合调查', 1577808000000, 3, 1, -1, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545960234320, '14', 1545960234320, 0);
INSERT INTO `biz_enroll` VALUES (43, 64, '测试图片', '图片', 1546272000000, 1, 1, -1, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545962969072, '14', 1545962969072, 0);
INSERT INTO `biz_enroll` VALUES (46, 66, 'test', '1111', 1199116800000, 0, 0, 123, 'go', '21', 1545963658096, '21', 1545963658096, 0);
INSERT INTO `biz_enroll` VALUES (47, 66, '2', '3', 1199116800000, 0, 0, -1, 'go', '21', 1545964092279, '21', 1545964092279, 0);
INSERT INTO `biz_enroll` VALUES (51, 66, '111', '22222', 1199116800000, 2, 0, 22, 'go', '21', 1545964865042, '21', 1545964865042, 0);
INSERT INTO `biz_enroll` VALUES (52, 64, '测试返回', '测试', 1546272000000, 1, 0, -1, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545981481020, '14', 1545981481020, 0);
INSERT INTO `biz_enroll` VALUES (53, 64, '返回', '返回', 1546272000000, 3, 0, -1, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545981553586, '14', 1545981553586, 0);
INSERT INTO `biz_enroll` VALUES (54, 87, '来报名', '来报名', 1546272000000, 1, 0, 10, '林悦伟', '41', 1546394000694, '41', 1546394000694, 0);
INSERT INTO `biz_enroll` VALUES (55, 87, 'ceshi1', '123123', 1798732800000, 1, 1, 10, '林悦伟', '41', 1546394036693, '41', 1546394036693, 0);
INSERT INTO `biz_enroll` VALUES (56, 87, 'ces', '12312', 1554138000000, 1, 1, 1, '林悦伟', '41', 1546411600437, '41', 1546411600437, 0);
INSERT INTO `biz_enroll` VALUES (67, 87, 'ceshi123', '123123', 1546459200000, 1, 0, 3, '林悦伟', '41', 1546479606766, '41', 1546479606766, 0);
INSERT INTO `biz_enroll` VALUES (68, 87, '123', '123', 1546444800000, 1, 0, -1, '林悦伟', '41', 1546479919242, '41', 1546479919242, 0);
INSERT INTO `biz_enroll` VALUES (69, 64, '测试保存报名', '测试保存', 1546566480000, 2, 2, 1, '蔡老师', '14', 1546480143506, '14', 1546480143506, 0);
INSERT INTO `biz_enroll` VALUES (70, 64, '测试字数', '铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行时间按计划自动调整、到达车站精确停车、停车后自动开门等功能。\n\nATO的工作流程是这样的，“地面调度中心制定好行车计划后，通过地面的数据传输网络把计划送到ATO的地面设备，这个设备再通过铁路移动通信网，把计划发送给动车组上的ATO车载设备。”铁科院专家介绍说，ATO车载设备收到计划以后，根据动车组当前的位置，计算出控制速度曲线，代替司机自动控制动车组的加速、运行、减速、停车、开车门等。', 1546481580000, 1, 0, -1, '蔡老师', '14', 1546481598174, '14', 1546481598174, 0);
INSERT INTO `biz_enroll` VALUES (85, 64, '测试字数字数字数', '铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行时间按计划自动调整、到达车站精确停车、停车后自动开门等功能。\n\nATO的工作流程是这样的，“地面调度中心制定好行车计划后，通过地面的数据传输网络把计划送到ATO的地面设备，这个设备再通过铁路移动通信网，把计划发送给动车组上的ATO车载设备。”铁科院专家介绍说，ATO车载设备收到计划以后，根据动车组当前的位置，计算出控制速度曲线，代替司机自动控制动车组的加速、运行、减速、停车、开车门等。', 1546654560000, 0, 0, -1, '蔡老师', '14', 1546481823599, '14', 1546481823599, 0);
INSERT INTO `biz_enroll` VALUES (86, 64, '测试字数字数测试', '铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行时间按计划自动调整、到达车站精确停车、停车后自动开门等功能。\n\nATO的工作流程是这样的，“地面调度中心制定好行车计划后，通过地面的数据传输网络把计划送到ATO的地面设备，这个设备再通过铁路移动通信网，把计划发送给动车组上的ATO车载设备。”铁科院专家介绍说，ATO车载设备收到计划以后，根据动车组当前的位置，计算出控制速度曲线，代替司机自动控制动车组的加速、运行、减速、停车、开车门等。000', 1546654740000, 2, 0, -1, '蔡老师', '14', 1546481869322, '14', 1546481869322, 0);
INSERT INTO `biz_enroll` VALUES (87, 64, '300个字', '铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行时间按计划自动调整、到达车站精确停车、停车后自动开门等功能。\n\nATO的工作流程是这样的，“地面调度中心制定好行车计划后，通过地面的数据传输网络把计划送到ATO的地面设备，这个设备再通过铁路移动通信网，把计划发送给动车组上的ATO车载设备。”铁科院专家介绍说，ATO车载设备收到计划以后，根据动车组当前的位置，计算出控制速度曲线，代替司机自动控制动车组的加速、运行、减速、停车、开车门等。ghgcvvhh讨论组突突突看见蛇兔兔龙弄极乐净土弄某些旅途我的呢农历图看看突突突突突突我饿的推荐具体的', 1546568340000, 1, 1, -1, '蔡老师', '14', 1546481941346, '14', 1546481941346, 0);
INSERT INTO `biz_enroll` VALUES (92, 64, '测试报名名额', '测试', 1546568760000, 4, 2, 2, '蔡老师', '14', 1546482360275, '14', 1546482360275, 0);
INSERT INTO `biz_enroll` VALUES (93, 64, '名额', '名额', 1546655220000, 4, 3, 1, '蔡老师', '14', 1546482444519, '14', 1546482444519, 0);
INSERT INTO `biz_enroll` VALUES (94, 87, '123123', '测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名', 1546444800000, 0, 0, 3, '林悦伟', '41', 1546482487615, '41', 1546482487615, 0);
INSERT INTO `biz_enroll` VALUES (95, 87, '测试通知', '测试', 1556869620000, 1, 0, 29, '林悦伟', '41', 1546483433128, '41', 1546483433128, 0);
INSERT INTO `biz_enroll` VALUES (96, 87, '多张图片测试', '多张测试', 1546444800000, 1, 0, -1, '林悦伟', '41', 1546483637956, '41', 1546483637956, 0);
INSERT INTO `biz_enroll` VALUES (101, 87, '一人报名', '暗示', 1546484940000, 1, 0, -1, '林悦伟', '41', 1546484980846, '41', 1546484980846, 0);
INSERT INTO `biz_enroll` VALUES (102, 87, '测试2', '啊二货', 1546485000000, 1, 0, 1, '林悦伟', '41', 1546485009453, '41', 1546485009453, 0);
INSERT INTO `biz_enroll` VALUES (103, 87, '测试3', '测试4', 1554261000000, 1, 1, 1, '林悦伟', '41', 1546485049583, '41', 1546485049583, 0);
INSERT INTO `biz_enroll` VALUES (106, 64, '测试字数字数字数字数字数', '作为全球普惠金融的发源地，孟加拉是一个人口超过1.6亿的典型“小鲜肉之国”，人口平均年龄偏年轻。但大部分支付交易还在使用现金，数字金融服务需求强烈。双11前半年，孟加拉国移动支付公司bKash和蚂蚁金服合作，蚂蚁金服提供技术支持，与bKash共同打造了本地版支付宝。\n\n“这种合作形式，是支付宝目前着力最大的，也是海外支付攻坚最难的一种形式。”蚂蚁金服国际事业群技术研究员熊务真告诉《中国企业家》。他介绍，支付宝的海外之路经历了三个阶段。\n\n第一个阶段是打通在线全球网络，实现全球买全球卖。这与阿里的原始基因有关。起初，随着阿里业务的全球化，支付宝作为支付工具跟进，初衷是为了解决电商平台淘宝和天猫的', 1546573620000, 1, 0, 0, '蔡老师', '14', 1546487216353, '14', 1546487216353, 0);
INSERT INTO `biz_enroll` VALUES (107, 64, '测试字数字数字数字数字数字数字数字数字数', '作为全球普惠金融的发源地，孟加拉是一个人口超过1.6亿的典型“小鲜肉之国”，人口平均年龄偏年轻。但大部分支付交易还在使用现金，数字金融服务需求强烈。双11前半年，孟加拉国移动支付公司bKash和蚂蚁金服合作，蚂蚁金服提供技术支持，与bKash共同打造了本地版支付宝。\n\n“这种合作形式，是支付宝目前着力最大的，也是海外支付攻坚最难的一种形式。”蚂蚁金服国际事业群技术研究员熊务真告诉《中国企业家》。他介绍，支付宝的海外之路经历了三个阶段。\n\n第一个阶段是打通在线全球网络，实现全球买全球卖。这与阿里的原始基因有关。起初，随着阿里业务的全球化，支付宝作为支付工具跟进，初衷是为了解决电商平台淘宝和天猫的', 1546660140000, 2, 1, 1, '蔡老师', '14', 1546487307047, '14', 1546487307047, 0);
INSERT INTO `biz_enroll` VALUES (108, 64, '测试人数', '测试人数', 1546487580000, 2, 0, 2, '蔡老师', '14', 1546487612042, '14', 1546487612042, 0);
INSERT INTO `biz_enroll` VALUES (109, 64, '人数越多越好', '人数', 1546574160000, 3, 2, 2, '蔡老师', '14', 1546487648608, '14', 1546487648608, 0);
INSERT INTO `biz_enroll` VALUES (110, 64, '测', '测试', 1546577760000, 1, 1, -1, '蔡老师', '14', 1546487840878, '14', 1546487840878, 0);
INSERT INTO `biz_enroll` VALUES (111, 87, '测试的233', '测试444', 1546488000000, 1, 0, -1, '林悦伟', '41', 1546488034663, '41', 1546488034663, 0);
INSERT INTO `biz_enroll` VALUES (112, 87, '测试2', '123', 1546444800000, 1, 0, 0, '林悦伟', '41', 1546496510653, '41', 1546496510653, 0);
INSERT INTO `biz_enroll` VALUES (113, 64, '测试', '测试', 1546583760000, 2, 0, -1, '蔡老师', '14', 1546497618794, '14', 1546497618794, 0);
INSERT INTO `biz_enroll` VALUES (114, 64, '测试', '测试', 1546584120000, 0, 0, -1, '蔡老师', '14', 1546497637412, '14', 1546497637412, 0);
INSERT INTO `biz_enroll` VALUES (115, 64, '测试人数', '测试字数', 1546843320000, 2, 1, -1, '蔡老师', '14', 1546497663034, '14', 1546497663034, 0);
INSERT INTO `biz_enroll` VALUES (116, 64, '测试预览图', '测试', 1546670760000, 2, 1, -1, '蔡老师', '14', 1546498049651, '14', 1546498049651, 0);
INSERT INTO `biz_enroll` VALUES (117, 64, '测试字数字数字数', '测试', 1546325640000, 1, 0, 2, '蔡老师', '14', 1546498508830, '14', 1546498508830, 0);
INSERT INTO `biz_enroll` VALUES (118, 64, '测试图片', '图片', 1546671840000, 1, 0, -1, '蔡老师', '14', 1546499058716, '14', 1546499058716, 0);
INSERT INTO `biz_enroll` VALUES (119, 87, '测试上传速度', '测试', 1546499340000, 0, 0, -1, '林悦伟', '41', 1546499383891, '41', 1546499383891, 0);
INSERT INTO `biz_enroll` VALUES (120, 74, '11', '11', 1546499700000, 0, 0, -1, '2', '24', 1546499620868, '24', 1546499620868, 0);
INSERT INTO `biz_enroll` VALUES (121, 74, '1111', '1111', 1546499640000, 1, 0, -1, '2', '24', 1546499656041, '24', 1546499656041, 0);
INSERT INTO `biz_enroll` VALUES (122, 87, 'ccc', 'ccc', 1546444980000, 1, 0, 3, '林悦伟', '41', 1546499803222, '41', 1546499803222, 0);
INSERT INTO `biz_enroll` VALUES (123, 87, 'ccc', 'ccc', 1546444920000, 1, 0, 1, '林悦伟', '41', 1546499997190, '41', 1546499997190, 0);
INSERT INTO `biz_enroll` VALUES (124, 64, '图片', '图片', 1547277720000, 2, 0, 100, '蔡老师', '14', 1546500119348, '14', 1546500119348, 0);
INSERT INTO `biz_enroll` VALUES (125, 64, '图片测试', '图片测试变形金刚》系列首部独立电影《大黄蜂》将于2019年1月4日登陆内地各大院线，影片预售正在火热进行中。今日，片方发布“火力全开”预告，震撼变形和刺激对战令人应接不暇，精致特效将变形金刚宇宙的宏大以及大黄蜂超级英雄气概展现得淋漓尽致。变形金刚》系列首部独立电影《大黄蜂》将于2019年1月4日登陆内地各大院线，影片预售正在火热进行中。今日，片方发布“火力全开”预告，震撼变形和刺激对战令人应接不暇，精致特效将变形金刚宇宙的宏大以及大黄蜂超级英雄气概展现得淋漓尽致。', 1546759500000, 1, 0, -1, '蔡老师', '14', 1546500227082, '14', 1546500227082, 0);
INSERT INTO `biz_enroll` VALUES (126, 64, '图片', '图片', 1546586700000, 1, 0, -1, '蔡老师', '14', 1546500275225, '14', 1546500275225, 0);
INSERT INTO `biz_enroll` VALUES (127, 87, '1231', '123123', 1546444800000, 0, 0, -1, '林悦伟', '41', 1546500361073, '41', 1546500361073, 0);
INSERT INTO `biz_enroll` VALUES (128, 87, '测试', '测试2444', 1546500360000, 1, 0, -1, '林悦伟', '41', 1546500422649, '41', 1546500422649, 0);
INSERT INTO `biz_enroll` VALUES (129, 74, '222', '22', 1546500480000, 1, 0, -1, '2', '24', 1546500465246, '24', 1546500465246, 0);
INSERT INTO `biz_enroll` VALUES (130, 64, '测试图片', '图片变形金刚》系列首部独立电影《大黄蜂》将于2019年1月4日登陆内地各大院线，影片预售正在火热进行中。今日，片方发布“火力全开”预告，震撼变形和刺激对战令人应接不暇，精致特效将变形金刚宇宙的宏大以及大黄蜂超级英雄气概展现得淋漓尽致。变形金刚》系列首部独立电影《大黄蜂》将于2019年1月4日登陆内地各大院线，影片预售正在火热进行中。今日，片方发布“火力全开”预告，震撼变形和刺激对战令人应接不暇，精致特效将变形金刚宇宙的宏大以及大黄蜂超级英雄气概展现得淋漓尽致。变形金刚》系列首部独立电影《大黄蜂》将于2019年1月4日登陆内地各大院线，影片预售正在火热进行中。今日，片方发布“火力全开”预告，震撼', 1546673460000, 1, 0, -1, '蔡老师', '14', 1546500687867, '14', 1546500687867, 0);
INSERT INTO `biz_enroll` VALUES (131, 64, '测试字数字数字数字数', '变形金刚》系列首部独立电影《大黄蜂》将于2019年1月4日登陆内地各大院线，影片预售正在火热进行中。今日，片方发布“火力全开”预告，震撼变形和刺激对战令人应接不暇，精致特效将变形金刚宇宙的宏大以及大黄蜂超级英雄气概展现得淋漓尽致。', 1546673460000, 0, 0, -1, '蔡老师', '14', 1546500724270, '14', 1546500724270, 0);
INSERT INTO `biz_enroll` VALUES (132, 64, '测试', '测试', 1546500720000, 1, 0, -1, '蔡老师', '14', 1546500743315, '14', 1546500743315, 0);
INSERT INTO `biz_enroll` VALUES (133, 64, '测试', '测试', 1547364840000, 1, 0, -1, '蔡老师', '14', 1546500787228, '14', 1546500787228, 0);
INSERT INTO `biz_enroll` VALUES (134, 64, '测试', '测评', 1546500780000, 1, 0, -1, '蔡老师', '14', 1546500826518, '14', 1546500826518, 0);
INSERT INTO `biz_enroll` VALUES (135, 64, '测试', '测试', 1546674000000, 1, 0, -1, '蔡老师', '14', 1546501119030, '14', 1546501119030, 0);
INSERT INTO `biz_enroll` VALUES (136, 64, '测试', '测试', 1546587600000, 1, 0, 2, '蔡老师', '14', 1546501197367, '14', 1546501197367, 0);
INSERT INTO `biz_enroll` VALUES (137, 64, '测试', '测试', 1546587600000, 1, 0, -1, '蔡老师', '14', 1546501211374, '14', 1546501211374, 0);
INSERT INTO `biz_enroll` VALUES (138, 64, '测试', '测试', 1546674000000, 2, 1, -1, '蔡老师', '14', 1546501251339, '14', 1546501251339, 0);
INSERT INTO `biz_enroll` VALUES (139, 96, '报名', '123', 1546934220000, 2, 0, 0, '字那你可', '21', 1546502249013, '21', 1546502249013, 0);
INSERT INTO `biz_enroll` VALUES (140, 64, '测试转发', '转发', 1546677660000, 3, 3, -1, '蔡老师', '14', 1546504765372, '14', 1546504765372, 0);
INSERT INTO `biz_enroll` VALUES (141, 89, '没加入转发', '转发', 1546666860000, 2, 0, -1, '测试1', '14', 1546504896520, '14', 1546504896520, 0);
INSERT INTO `biz_enroll` VALUES (142, 73, '测试没加入报名', '1111', 1546592040000, 2, 0, -1, '李白', '24', 1546505642900, '24', 1546505642900, 0);
INSERT INTO `biz_enroll` VALUES (143, 64, '额额呃呃呃', '德德玛德', 1551600000000, 3, 1, -1, '蔡老师', '14', 1546505938591, '14', 1546505938591, 0);
INSERT INTO `biz_enroll` VALUES (144, 73, '2222', '222', 1546506120000, 1, 0, -1, '李白', '24', 1546506109689, '24', 1546506109689, 0);
INSERT INTO `biz_enroll` VALUES (145, 73, '333', '3333', 1549184580000, 1, 0, -1, '李白', '24', 1546506157061, '24', 1546506157061, 0);
INSERT INTO `biz_enroll` VALUES (146, 87, '上传stes', '123123', 1546444800000, 1, 0, -1, '林悦伟', '41', 1546509201124, '41', 1546509201124, 0);
INSERT INTO `biz_enroll` VALUES (147, 88, '秋季运动会接力赛跑报名', '秋季校园运动会要开始啦！接力赛要求每个班级派出10名代表参加，以接力的形式共同跑完五百米！请有意向或者有短跑特长的同学报名参加。', 1546650000000, 1, 0, 10, '吉永老师', '18', 1546563998006, '18', 1546563998006, 0);
INSERT INTO `biz_enroll` VALUES (148, 88, '春季运动会接力跑比赛报名', '春季运动会接力比赛要求每个班级派出5名代表参加接力比赛，要求每个同学以接力的形式共同跑完500米，请有意向或有跑步特长的同学踊跃报名参加！', 1546736400000, 1, 1, 5, '吉永老师', '18', 1546565214396, '18', 1546565214396, 0);
INSERT INTO `biz_enroll` VALUES (149, 87, '测试', '测试', 1546568160000, 1, 0, -1, '林悦伟', '41', 1546568194692, '41', 1546568194692, 0);

-- ----------------------------
-- Table structure for biz_enroll_receive
-- ----------------------------
DROP TABLE IF EXISTS `biz_enroll_receive`;
CREATE TABLE `biz_enroll_receive`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一id',
  `groupId` bigint(20) NOT NULL COMMENT '分组id',
  `enrollId` bigint(20) NOT NULL COMMENT '报名的id',
  `userId` bigint(20) NOT NULL COMMENT '接收人id ，用户表中的用户id',
  `nickName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '接收人在群昵称（冗余字段）',
  `readStatus` int(1) NOT NULL COMMENT '阅读状态（0：未读；1：已读)',
  `readDate` bigint(20) NULL DEFAULT NULL COMMENT '阅读时间',
  `creator` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createDate` bigint(20) NOT NULL COMMENT '创建时间',
  `lastModifier` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  `lastModDate` bigint(20) NOT NULL COMMENT '修改时间',
  `status` tinyint(4) NOT NULL COMMENT '状态 0-启用，1-停用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_5`(`enrollId`) USING BTREE,
  CONSTRAINT `FK_Reference_enrollId` FOREIGN KEY (`enrollId`) REFERENCES `biz_enroll` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 684 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知接收情况表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of biz_enroll_receive
-- ----------------------------
INSERT INTO `biz_enroll_receive` VALUES (33, 69, 22, 18, '园长', 1, NULL, '18', 1545810506591, '18', 1546571006827, 0);
INSERT INTO `biz_enroll_receive` VALUES (34, 66, 23, 15, '高宇恒', 0, NULL, '21', 1545816659891, '21', 1545816659891, 0);
INSERT INTO `biz_enroll_receive` VALUES (35, 66, 23, 21, '毛老师', 1, NULL, '21', 1545816659891, '21', 1545963538294, 0);
INSERT INTO `biz_enroll_receive` VALUES (36, 64, 24, 14, '蔡老师', 1, NULL, '14', 1545816671744, '14', 1545978686793, 0);
INSERT INTO `biz_enroll_receive` VALUES (37, 64, 24, 18, '蒋依依', 0, NULL, '14', 1545816671744, '14', 1545816671744, 0);
INSERT INTO `biz_enroll_receive` VALUES (38, 64, 25, 14, '蔡老师', 1, NULL, '14', 1545816913463, '14', 1545816918574, 0);
INSERT INTO `biz_enroll_receive` VALUES (39, 64, 25, 18, '蒋依依', 0, NULL, '14', 1545816913463, '14', 1545816913463, 0);
INSERT INTO `biz_enroll_receive` VALUES (40, 64, 26, 14, '蔡老师', 1, NULL, '14', 1545816944644, '14', 1545981582741, 0);
INSERT INTO `biz_enroll_receive` VALUES (41, 64, 26, 18, '蒋依依', 0, NULL, '14', 1545816944644, '14', 1545816944644, 0);
INSERT INTO `biz_enroll_receive` VALUES (42, 64, 27, 14, '蔡老师', 1, NULL, '14', 1545895895067, '14', 1545899967278, 0);
INSERT INTO `biz_enroll_receive` VALUES (43, 64, 27, 18, '蒋依依', 0, NULL, '14', 1545895895067, '14', 1545895895067, 0);
INSERT INTO `biz_enroll_receive` VALUES (44, 64, 28, 14, '蔡老师', 1, NULL, '14', 1545895937815, '14', 1545959060162, 0);
INSERT INTO `biz_enroll_receive` VALUES (45, 64, 28, 18, '蒋依依', 0, NULL, '14', 1545895937815, '14', 1545895937815, 0);
INSERT INTO `biz_enroll_receive` VALUES (46, 64, 29, 14, '蔡老师', 1, NULL, '14', 1545896144367, '14', 1545960773286, 0);
INSERT INTO `biz_enroll_receive` VALUES (47, 64, 29, 18, '蒋依依', 0, NULL, '14', 1545896144367, '14', 1545896144367, 0);
INSERT INTO `biz_enroll_receive` VALUES (48, 64, 29, 24, '李小白', 1, NULL, '24', 1545903029508, '24', 1545903029508, 0);
INSERT INTO `biz_enroll_receive` VALUES (49, 73, 30, 14, '李莫愁李莫愁李莫愁李莫愁', 1, NULL, '24', 1545958760827, '14', 1546421339818, 0);
INSERT INTO `biz_enroll_receive` VALUES (50, 73, 30, 24, '李白', 1, NULL, '24', 1545958760827, '24', 1546505624822, 0);
INSERT INTO `biz_enroll_receive` VALUES (51, 64, 26, 24, '李小白', 1, NULL, '24', 1545958984235, '24', 1545958984235, 0);
INSERT INTO `biz_enroll_receive` VALUES (52, 64, 28, 24, '李小白', 1, NULL, '24', 1545959053690, '24', 1545959056790, 0);
INSERT INTO `biz_enroll_receive` VALUES (53, 64, 31, 14, '蔡老师', 0, NULL, '14', 1545960031147, '14', 1545960031147, 0);
INSERT INTO `biz_enroll_receive` VALUES (54, 64, 31, 18, '蒋依依', 0, NULL, '14', 1545960031147, '14', 1545960031147, 0);
INSERT INTO `biz_enroll_receive` VALUES (55, 64, 31, 24, '李小白', 0, NULL, '14', 1545960031147, '14', 1545960031147, 0);
INSERT INTO `biz_enroll_receive` VALUES (56, 64, 32, 14, '蔡老师', 1, NULL, '14', 1545960138651, '14', 1545960933157, 0);
INSERT INTO `biz_enroll_receive` VALUES (57, 64, 32, 18, '蒋依依', 0, NULL, '14', 1545960138651, '14', 1545960138651, 0);
INSERT INTO `biz_enroll_receive` VALUES (58, 64, 32, 24, '李小白', 0, NULL, '14', 1545960138651, '14', 1545960138651, 0);
INSERT INTO `biz_enroll_receive` VALUES (59, 64, 33, 14, '蔡老师', 1, NULL, '14', 1545960204763, '14', 1546495829070, 0);
INSERT INTO `biz_enroll_receive` VALUES (60, 64, 33, 18, '蒋依依', 1, NULL, '14', 1545960204763, '18', 1545960481990, 0);
INSERT INTO `biz_enroll_receive` VALUES (61, 64, 33, 24, '李小白', 1, NULL, '14', 1545960204763, '24', 1545961114882, 0);
INSERT INTO `biz_enroll_receive` VALUES (62, 64, 34, 14, '蔡老师', 1, NULL, '14', 1545960742010, '14', 1546495963678, 0);
INSERT INTO `biz_enroll_receive` VALUES (63, 64, 34, 24, '李小白', 1, NULL, '24', 1545961015311, '24', 1545978833306, 0);
INSERT INTO `biz_enroll_receive` VALUES (64, 64, 43, 14, '蔡老师', 1, NULL, '14', 1545962969127, '14', 1546498771941, 0);
INSERT INTO `biz_enroll_receive` VALUES (65, 64, 43, 18, '蒋依依', 0, NULL, '14', 1545962969127, '14', 1545962969127, 0);
INSERT INTO `biz_enroll_receive` VALUES (66, 64, 43, 24, '李小白', 0, NULL, '14', 1545962969127, '14', 1545962969127, 0);
INSERT INTO `biz_enroll_receive` VALUES (67, 66, 46, 15, '高宇恒', 0, NULL, '21', 1545963658150, '21', 1545963658150, 0);
INSERT INTO `biz_enroll_receive` VALUES (68, 66, 46, 21, '毛老师', 0, NULL, '21', 1545963658150, '21', 1545963658150, 0);
INSERT INTO `biz_enroll_receive` VALUES (69, 66, 47, 15, '高宇恒', 0, NULL, '21', 1545964092334, '21', 1545964092334, 0);
INSERT INTO `biz_enroll_receive` VALUES (70, 66, 47, 21, '毛老师', 0, NULL, '21', 1545964092334, '21', 1545964092334, 0);
INSERT INTO `biz_enroll_receive` VALUES (71, 66, 51, 15, '高宇恒', 1, NULL, '21', 1545964865094, '15', 1546501992445, 0);
INSERT INTO `biz_enroll_receive` VALUES (72, 66, 51, 21, '毛老师', 1, NULL, '21', 1545964865094, '21', 1546501965262, 0);
INSERT INTO `biz_enroll_receive` VALUES (73, 64, 52, 14, '蔡老师', 1, NULL, '14', 1545981481040, '14', 1546498770086, 0);
INSERT INTO `biz_enroll_receive` VALUES (74, 64, 52, 18, '蒋依依', 0, NULL, '14', 1545981481040, '14', 1545981481040, 0);
INSERT INTO `biz_enroll_receive` VALUES (75, 64, 52, 24, '李小白', 0, NULL, '14', 1545981481040, '14', 1545981481040, 0);
INSERT INTO `biz_enroll_receive` VALUES (76, 64, 52, 27, '测试1', 0, NULL, '14', 1545981481040, '14', 1545981481040, 0);
INSERT INTO `biz_enroll_receive` VALUES (77, 64, 52, 28, '测试2', 0, NULL, '14', 1545981481040, '14', 1545981481040, 0);
INSERT INTO `biz_enroll_receive` VALUES (78, 64, 52, 29, '测试3', 0, NULL, '14', 1545981481040, '14', 1545981481040, 0);
INSERT INTO `biz_enroll_receive` VALUES (79, 64, 52, 30, '测试4', 0, NULL, '14', 1545981481040, '14', 1545981481040, 0);
INSERT INTO `biz_enroll_receive` VALUES (80, 64, 52, 31, '测试5', 0, NULL, '14', 1545981481040, '14', 1545981481040, 0);
INSERT INTO `biz_enroll_receive` VALUES (81, 64, 52, 32, '测试6', 0, NULL, '14', 1545981481040, '14', 1545981481040, 0);
INSERT INTO `biz_enroll_receive` VALUES (82, 64, 52, 33, '测试7', 0, NULL, '14', 1545981481040, '14', 1545981481040, 0);
INSERT INTO `biz_enroll_receive` VALUES (83, 64, 52, 34, '测试8', 0, NULL, '14', 1545981481040, '14', 1545981481040, 0);
INSERT INTO `biz_enroll_receive` VALUES (84, 64, 52, 35, '测试9', 0, NULL, '14', 1545981481040, '14', 1545981481040, 0);
INSERT INTO `biz_enroll_receive` VALUES (85, 64, 52, 36, '测试10', 0, NULL, '14', 1545981481040, '14', 1545981481040, 0);
INSERT INTO `biz_enroll_receive` VALUES (86, 64, 52, 37, '测试11', 0, NULL, '14', 1545981481040, '14', 1545981481040, 0);
INSERT INTO `biz_enroll_receive` VALUES (87, 64, 52, 38, '测试12', 0, NULL, '14', 1545981481040, '14', 1545981481040, 0);
INSERT INTO `biz_enroll_receive` VALUES (88, 64, 52, 39, '测试13', 0, NULL, '14', 1545981481040, '14', 1545981481040, 0);
INSERT INTO `biz_enroll_receive` VALUES (89, 64, 53, 14, '蔡老师', 1, NULL, '14', 1545981553606, '14', 1546481272370, 0);
INSERT INTO `biz_enroll_receive` VALUES (90, 64, 53, 18, '蒋依依', 1, NULL, '14', 1545981553606, '18', 1546400804998, 0);
INSERT INTO `biz_enroll_receive` VALUES (91, 64, 53, 24, '李小白', 0, NULL, '14', 1545981553606, '14', 1545981553606, 0);
INSERT INTO `biz_enroll_receive` VALUES (92, 64, 53, 27, '测试1', 0, NULL, '14', 1545981553606, '14', 1545981553606, 0);
INSERT INTO `biz_enroll_receive` VALUES (93, 64, 53, 28, '测试2', 0, NULL, '14', 1545981553606, '14', 1545981553606, 0);
INSERT INTO `biz_enroll_receive` VALUES (94, 64, 53, 29, '测试3', 0, NULL, '14', 1545981553606, '14', 1545981553606, 0);
INSERT INTO `biz_enroll_receive` VALUES (95, 64, 53, 30, '测试4', 0, NULL, '14', 1545981553606, '14', 1545981553606, 0);
INSERT INTO `biz_enroll_receive` VALUES (96, 64, 53, 31, '测试5', 0, NULL, '14', 1545981553606, '14', 1545981553606, 0);
INSERT INTO `biz_enroll_receive` VALUES (97, 64, 53, 32, '测试6', 0, NULL, '14', 1545981553606, '14', 1545981553606, 0);
INSERT INTO `biz_enroll_receive` VALUES (98, 64, 53, 33, '测试7', 0, NULL, '14', 1545981553606, '14', 1545981553606, 0);
INSERT INTO `biz_enroll_receive` VALUES (99, 64, 53, 34, '测试8', 0, NULL, '14', 1545981553606, '14', 1545981553606, 0);
INSERT INTO `biz_enroll_receive` VALUES (100, 64, 53, 35, '测试9', 0, NULL, '14', 1545981553606, '14', 1545981553606, 0);
INSERT INTO `biz_enroll_receive` VALUES (101, 64, 53, 36, '测试10', 0, NULL, '14', 1545981553606, '14', 1545981553606, 0);
INSERT INTO `biz_enroll_receive` VALUES (102, 64, 53, 37, '测试11', 0, NULL, '14', 1545981553606, '14', 1545981553606, 0);
INSERT INTO `biz_enroll_receive` VALUES (103, 64, 53, 38, '测试12', 0, NULL, '14', 1545981553606, '14', 1545981553606, 0);
INSERT INTO `biz_enroll_receive` VALUES (104, 64, 53, 39, '测试13', 0, NULL, '14', 1545981553606, '14', 1545981553606, 0);
INSERT INTO `biz_enroll_receive` VALUES (105, 87, 54, 41, '林悦伟', 1, NULL, '41', 1546394001073, '41', 1546509709846, 0);
INSERT INTO `biz_enroll_receive` VALUES (106, 87, 55, 41, '林悦伟', 1, NULL, '41', 1546394037023, '41', 1546477543833, 0);
INSERT INTO `biz_enroll_receive` VALUES (107, 87, 56, 41, '林悦伟', 1, NULL, '41', 1546411601607, '41', 1546498680385, 0);
INSERT INTO `biz_enroll_receive` VALUES (108, 87, 67, 41, '林悦伟', 1, NULL, '41', 1546479607109, '41', 1546498677878, 0);
INSERT INTO `biz_enroll_receive` VALUES (109, 87, 68, 41, '林悦伟', 1, NULL, '41', 1546479919591, '41', 1546498574974, 0);
INSERT INTO `biz_enroll_receive` VALUES (110, 64, 69, 14, '蔡老师', 1, NULL, '14', 1546480143539, '14', 1546498775870, 0);
INSERT INTO `biz_enroll_receive` VALUES (111, 64, 69, 18, '蒋依依', 0, NULL, '14', 1546480143539, '14', 1546480143539, 0);
INSERT INTO `biz_enroll_receive` VALUES (112, 64, 69, 24, '李小白', 1, NULL, '14', 1546480143539, '24', 1546480196982, 0);
INSERT INTO `biz_enroll_receive` VALUES (113, 64, 69, 27, '测试1', 0, NULL, '14', 1546480143539, '14', 1546480143539, 0);
INSERT INTO `biz_enroll_receive` VALUES (114, 64, 69, 28, '测试测试字数字数字数', 0, NULL, '14', 1546480143539, '14', 1546480143539, 0);
INSERT INTO `biz_enroll_receive` VALUES (115, 64, 69, 29, '测试3', 0, NULL, '14', 1546480143539, '14', 1546480143539, 0);
INSERT INTO `biz_enroll_receive` VALUES (116, 64, 69, 30, '测试4', 0, NULL, '14', 1546480143539, '14', 1546480143539, 0);
INSERT INTO `biz_enroll_receive` VALUES (117, 64, 69, 31, '测试5', 0, NULL, '14', 1546480143539, '14', 1546480143539, 0);
INSERT INTO `biz_enroll_receive` VALUES (118, 64, 69, 32, '测试6', 0, NULL, '14', 1546480143539, '14', 1546480143539, 0);
INSERT INTO `biz_enroll_receive` VALUES (119, 64, 69, 33, '测试7', 0, NULL, '14', 1546480143539, '14', 1546480143539, 0);
INSERT INTO `biz_enroll_receive` VALUES (120, 64, 69, 34, '测试8', 0, NULL, '14', 1546480143539, '14', 1546480143539, 0);
INSERT INTO `biz_enroll_receive` VALUES (121, 64, 69, 35, '测试9', 0, NULL, '14', 1546480143539, '14', 1546480143539, 0);
INSERT INTO `biz_enroll_receive` VALUES (122, 64, 69, 36, '测试10', 0, NULL, '14', 1546480143539, '14', 1546480143539, 0);
INSERT INTO `biz_enroll_receive` VALUES (123, 64, 69, 37, '测试11', 0, NULL, '14', 1546480143539, '14', 1546480143539, 0);
INSERT INTO `biz_enroll_receive` VALUES (124, 64, 69, 38, '测试12', 0, NULL, '14', 1546480143539, '14', 1546480143539, 0);
INSERT INTO `biz_enroll_receive` VALUES (125, 64, 69, 39, '测试13', 0, NULL, '14', 1546480143539, '14', 1546480143539, 0);
INSERT INTO `biz_enroll_receive` VALUES (126, 64, 70, 14, '蔡老师', 1, NULL, '14', 1546481598277, '14', 1546481600066, 0);
INSERT INTO `biz_enroll_receive` VALUES (127, 64, 70, 18, '蒋依依', 0, NULL, '14', 1546481598277, '14', 1546481598277, 0);
INSERT INTO `biz_enroll_receive` VALUES (128, 64, 70, 24, '李小白', 0, NULL, '14', 1546481598277, '14', 1546481598277, 0);
INSERT INTO `biz_enroll_receive` VALUES (129, 64, 70, 27, '测试1', 0, NULL, '14', 1546481598277, '14', 1546481598277, 0);
INSERT INTO `biz_enroll_receive` VALUES (130, 64, 70, 28, '测试测试字数字数字数', 0, NULL, '14', 1546481598277, '14', 1546481598277, 0);
INSERT INTO `biz_enroll_receive` VALUES (131, 64, 70, 29, '测试3', 0, NULL, '14', 1546481598277, '14', 1546481598277, 0);
INSERT INTO `biz_enroll_receive` VALUES (132, 64, 70, 30, '测试4', 0, NULL, '14', 1546481598277, '14', 1546481598277, 0);
INSERT INTO `biz_enroll_receive` VALUES (133, 64, 70, 31, '测试5', 0, NULL, '14', 1546481598277, '14', 1546481598277, 0);
INSERT INTO `biz_enroll_receive` VALUES (134, 64, 70, 32, '测试6', 0, NULL, '14', 1546481598277, '14', 1546481598277, 0);
INSERT INTO `biz_enroll_receive` VALUES (135, 64, 70, 33, '测试7', 0, NULL, '14', 1546481598277, '14', 1546481598277, 0);
INSERT INTO `biz_enroll_receive` VALUES (136, 64, 70, 34, '测试8', 0, NULL, '14', 1546481598277, '14', 1546481598277, 0);
INSERT INTO `biz_enroll_receive` VALUES (137, 64, 70, 35, '测试9', 0, NULL, '14', 1546481598277, '14', 1546481598277, 0);
INSERT INTO `biz_enroll_receive` VALUES (138, 64, 70, 36, '测试10', 0, NULL, '14', 1546481598277, '14', 1546481598277, 0);
INSERT INTO `biz_enroll_receive` VALUES (139, 64, 70, 37, '测试11', 0, NULL, '14', 1546481598277, '14', 1546481598277, 0);
INSERT INTO `biz_enroll_receive` VALUES (140, 64, 70, 38, '测试12', 0, NULL, '14', 1546481598277, '14', 1546481598277, 0);
INSERT INTO `biz_enroll_receive` VALUES (141, 64, 70, 39, '测试13', 0, NULL, '14', 1546481598277, '14', 1546481598277, 0);
INSERT INTO `biz_enroll_receive` VALUES (142, 64, 85, 14, '蔡老师', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (143, 64, 85, 18, '蒋依依', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (144, 64, 85, 24, '李小白', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (145, 64, 85, 27, '测试1', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (146, 64, 85, 28, '测试测试字数字数字数', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (147, 64, 85, 29, '测试3', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (148, 64, 85, 30, '测试4', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (149, 64, 85, 31, '测试5', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (150, 64, 85, 32, '测试6', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (151, 64, 85, 33, '测试7', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (152, 64, 85, 34, '测试8', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (153, 64, 85, 35, '测试9', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (154, 64, 85, 36, '测试10', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (155, 64, 85, 37, '测试11', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (156, 64, 85, 38, '测试12', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (157, 64, 85, 39, '测试13', 0, NULL, '14', 1546481823701, '14', 1546481823701, 0);
INSERT INTO `biz_enroll_receive` VALUES (158, 64, 86, 14, '蔡老师', 1, NULL, '14', 1546481869427, '14', 1546482326954, 0);
INSERT INTO `biz_enroll_receive` VALUES (159, 64, 86, 18, '蒋依依', 0, NULL, '14', 1546481869427, '14', 1546481869427, 0);
INSERT INTO `biz_enroll_receive` VALUES (160, 64, 86, 24, '李小白', 0, NULL, '14', 1546481869427, '14', 1546481869427, 0);
INSERT INTO `biz_enroll_receive` VALUES (161, 64, 86, 27, '测试1', 0, NULL, '14', 1546481869427, '14', 1546481869427, 0);
INSERT INTO `biz_enroll_receive` VALUES (162, 64, 86, 28, '测试测试字数字数字数', 0, NULL, '14', 1546481869427, '14', 1546481869427, 0);
INSERT INTO `biz_enroll_receive` VALUES (163, 64, 86, 29, '测试3', 0, NULL, '14', 1546481869427, '14', 1546481869427, 0);
INSERT INTO `biz_enroll_receive` VALUES (164, 64, 86, 30, '测试4', 0, NULL, '14', 1546481869427, '14', 1546481869427, 0);
INSERT INTO `biz_enroll_receive` VALUES (165, 64, 86, 31, '测试5', 0, NULL, '14', 1546481869427, '14', 1546481869427, 0);
INSERT INTO `biz_enroll_receive` VALUES (166, 64, 86, 32, '测试6', 0, NULL, '14', 1546481869427, '14', 1546481869427, 0);
INSERT INTO `biz_enroll_receive` VALUES (167, 64, 86, 33, '测试7', 0, NULL, '14', 1546481869427, '14', 1546481869427, 0);
INSERT INTO `biz_enroll_receive` VALUES (168, 64, 86, 34, '测试8', 0, NULL, '14', 1546481869427, '14', 1546481869427, 0);
INSERT INTO `biz_enroll_receive` VALUES (169, 64, 86, 35, '测试9', 0, NULL, '14', 1546481869427, '14', 1546481869427, 0);
INSERT INTO `biz_enroll_receive` VALUES (170, 64, 86, 36, '测试10', 0, NULL, '14', 1546481869427, '14', 1546481869427, 0);
INSERT INTO `biz_enroll_receive` VALUES (171, 64, 86, 37, '测试11', 0, NULL, '14', 1546481869427, '14', 1546481869427, 0);
INSERT INTO `biz_enroll_receive` VALUES (172, 64, 86, 38, '测试12', 0, NULL, '14', 1546481869427, '14', 1546481869427, 0);
INSERT INTO `biz_enroll_receive` VALUES (173, 64, 86, 39, '测试13', 0, NULL, '14', 1546481869427, '14', 1546481869427, 0);
INSERT INTO `biz_enroll_receive` VALUES (174, 64, 87, 14, '蔡老师', 1, NULL, '14', 1546481941446, '14', 1546487157028, 0);
INSERT INTO `biz_enroll_receive` VALUES (175, 64, 87, 18, '蒋依依', 0, NULL, '14', 1546481941446, '14', 1546481941446, 0);
INSERT INTO `biz_enroll_receive` VALUES (176, 64, 87, 24, '李小白', 0, NULL, '14', 1546481941446, '14', 1546481941446, 0);
INSERT INTO `biz_enroll_receive` VALUES (177, 64, 87, 27, '测试1', 0, NULL, '14', 1546481941446, '14', 1546481941446, 0);
INSERT INTO `biz_enroll_receive` VALUES (178, 64, 87, 28, '测试测试字数字数字数', 0, NULL, '14', 1546481941446, '14', 1546481941446, 0);
INSERT INTO `biz_enroll_receive` VALUES (179, 64, 87, 29, '测试3', 0, NULL, '14', 1546481941446, '14', 1546481941446, 0);
INSERT INTO `biz_enroll_receive` VALUES (180, 64, 87, 30, '测试4', 0, NULL, '14', 1546481941446, '14', 1546481941446, 0);
INSERT INTO `biz_enroll_receive` VALUES (181, 64, 87, 31, '测试5', 0, NULL, '14', 1546481941446, '14', 1546481941446, 0);
INSERT INTO `biz_enroll_receive` VALUES (182, 64, 87, 32, '测试6', 0, NULL, '14', 1546481941446, '14', 1546481941446, 0);
INSERT INTO `biz_enroll_receive` VALUES (183, 64, 87, 33, '测试7', 0, NULL, '14', 1546481941446, '14', 1546481941446, 0);
INSERT INTO `biz_enroll_receive` VALUES (184, 64, 87, 34, '测试8', 0, NULL, '14', 1546481941446, '14', 1546481941446, 0);
INSERT INTO `biz_enroll_receive` VALUES (185, 64, 87, 35, '测试9', 0, NULL, '14', 1546481941446, '14', 1546481941446, 0);
INSERT INTO `biz_enroll_receive` VALUES (186, 64, 87, 36, '测试10', 0, NULL, '14', 1546481941446, '14', 1546481941446, 0);
INSERT INTO `biz_enroll_receive` VALUES (187, 64, 87, 37, '测试11', 0, NULL, '14', 1546481941446, '14', 1546481941446, 0);
INSERT INTO `biz_enroll_receive` VALUES (188, 64, 87, 38, '测试12', 0, NULL, '14', 1546481941446, '14', 1546481941446, 0);
INSERT INTO `biz_enroll_receive` VALUES (189, 64, 87, 39, '测试13', 0, NULL, '14', 1546481941446, '14', 1546481941446, 0);
INSERT INTO `biz_enroll_receive` VALUES (190, 64, 92, 14, '蔡老师', 1, NULL, '14', 1546482360296, '14', 1546483098445, 0);
INSERT INTO `biz_enroll_receive` VALUES (191, 64, 92, 18, '蒋依依', 1, NULL, '14', 1546482360296, '18', 1546482416922, 0);
INSERT INTO `biz_enroll_receive` VALUES (192, 64, 92, 24, '李小白', 1, NULL, '14', 1546482360296, '24', 1546482373697, 0);
INSERT INTO `biz_enroll_receive` VALUES (193, 64, 92, 27, '测试1', 0, NULL, '14', 1546482360296, '14', 1546482360296, 0);
INSERT INTO `biz_enroll_receive` VALUES (194, 64, 92, 28, '测试测试字数字数字数', 0, NULL, '14', 1546482360296, '14', 1546482360296, 0);
INSERT INTO `biz_enroll_receive` VALUES (195, 64, 92, 29, '测试3', 0, NULL, '14', 1546482360296, '14', 1546482360296, 0);
INSERT INTO `biz_enroll_receive` VALUES (196, 64, 92, 30, '测试4', 0, NULL, '14', 1546482360296, '14', 1546482360296, 0);
INSERT INTO `biz_enroll_receive` VALUES (197, 64, 92, 31, '测试5', 0, NULL, '14', 1546482360296, '14', 1546482360296, 0);
INSERT INTO `biz_enroll_receive` VALUES (198, 64, 92, 32, '测试6', 0, NULL, '14', 1546482360296, '14', 1546482360296, 0);
INSERT INTO `biz_enroll_receive` VALUES (199, 64, 92, 33, '测试7', 0, NULL, '14', 1546482360296, '14', 1546482360296, 0);
INSERT INTO `biz_enroll_receive` VALUES (200, 64, 92, 34, '测试8', 0, NULL, '14', 1546482360296, '14', 1546482360296, 0);
INSERT INTO `biz_enroll_receive` VALUES (201, 64, 92, 35, '测试9', 0, NULL, '14', 1546482360296, '14', 1546482360296, 0);
INSERT INTO `biz_enroll_receive` VALUES (202, 64, 92, 36, '测试10', 0, NULL, '14', 1546482360296, '14', 1546482360296, 0);
INSERT INTO `biz_enroll_receive` VALUES (203, 64, 92, 37, '测试11', 0, NULL, '14', 1546482360296, '14', 1546482360296, 0);
INSERT INTO `biz_enroll_receive` VALUES (204, 64, 92, 38, '测试12', 0, NULL, '14', 1546482360296, '14', 1546482360296, 0);
INSERT INTO `biz_enroll_receive` VALUES (205, 64, 92, 39, '测试13', 0, NULL, '14', 1546482360296, '14', 1546482360296, 0);
INSERT INTO `biz_enroll_receive` VALUES (206, 64, 93, 14, '蔡老师', 1, NULL, '14', 1546482444539, '14', 1546482455037, 0);
INSERT INTO `biz_enroll_receive` VALUES (207, 64, 93, 18, '蒋依依', 1, NULL, '14', 1546482444539, '18', 1546482451730, 0);
INSERT INTO `biz_enroll_receive` VALUES (208, 64, 93, 24, '李小白', 1, NULL, '14', 1546482444539, '24', 1546482472717, 0);
INSERT INTO `biz_enroll_receive` VALUES (209, 64, 93, 27, '测试1', 0, NULL, '14', 1546482444539, '14', 1546482444539, 0);
INSERT INTO `biz_enroll_receive` VALUES (210, 64, 93, 28, '测试测试字数字数字数', 0, NULL, '14', 1546482444540, '14', 1546482444540, 0);
INSERT INTO `biz_enroll_receive` VALUES (211, 64, 93, 29, '测试3', 0, NULL, '14', 1546482444540, '14', 1546482444540, 0);
INSERT INTO `biz_enroll_receive` VALUES (212, 64, 93, 30, '测试4', 0, NULL, '14', 1546482444540, '14', 1546482444540, 0);
INSERT INTO `biz_enroll_receive` VALUES (213, 64, 93, 31, '测试5', 0, NULL, '14', 1546482444540, '14', 1546482444540, 0);
INSERT INTO `biz_enroll_receive` VALUES (214, 64, 93, 32, '测试6', 0, NULL, '14', 1546482444540, '14', 1546482444540, 0);
INSERT INTO `biz_enroll_receive` VALUES (215, 64, 93, 33, '测试7', 0, NULL, '14', 1546482444540, '14', 1546482444540, 0);
INSERT INTO `biz_enroll_receive` VALUES (216, 64, 93, 34, '测试8', 0, NULL, '14', 1546482444540, '14', 1546482444540, 0);
INSERT INTO `biz_enroll_receive` VALUES (217, 64, 93, 35, '测试9', 0, NULL, '14', 1546482444540, '14', 1546482444540, 0);
INSERT INTO `biz_enroll_receive` VALUES (218, 64, 93, 36, '测试10', 0, NULL, '14', 1546482444540, '14', 1546482444540, 0);
INSERT INTO `biz_enroll_receive` VALUES (219, 64, 93, 37, '测试11', 0, NULL, '14', 1546482444540, '14', 1546482444540, 0);
INSERT INTO `biz_enroll_receive` VALUES (220, 64, 93, 38, '测试12', 0, NULL, '14', 1546482444540, '14', 1546482444540, 0);
INSERT INTO `biz_enroll_receive` VALUES (221, 64, 93, 39, '测试13', 0, NULL, '14', 1546482444540, '14', 1546482444540, 0);
INSERT INTO `biz_enroll_receive` VALUES (222, 87, 94, 41, '林悦伟', 0, NULL, '41', 1546482488192, '41', 1546482488192, 0);
INSERT INTO `biz_enroll_receive` VALUES (223, 87, 95, 41, '林悦伟', 1, NULL, '41', 1546483433182, '41', 1546498196482, 0);
INSERT INTO `biz_enroll_receive` VALUES (224, 87, 96, 41, '林悦伟', 1, NULL, '41', 1546483638010, '41', 1546498211254, 0);
INSERT INTO `biz_enroll_receive` VALUES (225, 87, 101, 41, '林悦伟', 1, NULL, '41', 1546484980902, '41', 1546499342625, 0);
INSERT INTO `biz_enroll_receive` VALUES (226, 87, 102, 41, '林悦伟', 1, NULL, '41', 1546485009506, '41', 1546498602378, 0);
INSERT INTO `biz_enroll_receive` VALUES (227, 87, 103, 41, '林悦伟', 1, NULL, '41', 1546485049638, '41', 1546498669110, 0);
INSERT INTO `biz_enroll_receive` VALUES (228, 64, 93, 41, '林悦伟', 1, NULL, '41', 1546485354889, '41', 1546485957576, 0);
INSERT INTO `biz_enroll_receive` VALUES (229, 64, 92, 41, '林悦伟', 1, NULL, '41', 1546485963219, '41', 1546485963219, 0);
INSERT INTO `biz_enroll_receive` VALUES (230, 64, 106, 14, '蔡老师', 1, NULL, '14', 1546487216467, '14', 1546487218143, 0);
INSERT INTO `biz_enroll_receive` VALUES (231, 64, 106, 18, '蒋依依', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (232, 64, 106, 24, '李小白', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (233, 64, 106, 27, '测试1', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (234, 64, 106, 28, '测试测试字数字数字数', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (235, 64, 106, 29, '测试3', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (236, 64, 106, 30, '测试4', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (237, 64, 106, 31, '测试5', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (238, 64, 106, 32, '测试6', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (239, 64, 106, 33, '测试7', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (240, 64, 106, 34, '测试8', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (241, 64, 106, 35, '测试9', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (242, 64, 106, 36, '测试10', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (243, 64, 106, 37, '测试11', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (244, 64, 106, 38, '测试12', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (245, 64, 106, 39, '测试13', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (246, 64, 106, 41, '林悦伟', 0, NULL, '14', 1546487216467, '14', 1546487216467, 0);
INSERT INTO `biz_enroll_receive` VALUES (247, 64, 107, 14, '蔡老师', 1, NULL, '14', 1546487307158, '14', 1546498764073, 0);
INSERT INTO `biz_enroll_receive` VALUES (248, 64, 107, 18, '蒋依依', 0, NULL, '14', 1546487307158, '14', 1546487307158, 0);
INSERT INTO `biz_enroll_receive` VALUES (249, 64, 107, 24, '李小白', 1, NULL, '14', 1546487307158, '24', 1546487677323, 0);
INSERT INTO `biz_enroll_receive` VALUES (250, 64, 107, 27, '测试1', 0, NULL, '14', 1546487307158, '14', 1546487307158, 0);
INSERT INTO `biz_enroll_receive` VALUES (251, 64, 107, 28, '测试测试字数字数字数', 0, NULL, '14', 1546487307158, '14', 1546487307158, 0);
INSERT INTO `biz_enroll_receive` VALUES (252, 64, 107, 29, '测试3', 0, NULL, '14', 1546487307158, '14', 1546487307158, 0);
INSERT INTO `biz_enroll_receive` VALUES (253, 64, 107, 30, '测试4', 0, NULL, '14', 1546487307158, '14', 1546487307158, 0);
INSERT INTO `biz_enroll_receive` VALUES (254, 64, 107, 31, '测试5', 0, NULL, '14', 1546487307158, '14', 1546487307158, 0);
INSERT INTO `biz_enroll_receive` VALUES (255, 64, 107, 32, '测试6', 0, NULL, '14', 1546487307158, '14', 1546487307158, 0);
INSERT INTO `biz_enroll_receive` VALUES (256, 64, 107, 33, '测试7', 0, NULL, '14', 1546487307158, '14', 1546487307158, 0);
INSERT INTO `biz_enroll_receive` VALUES (257, 64, 107, 34, '测试8', 0, NULL, '14', 1546487307158, '14', 1546487307158, 0);
INSERT INTO `biz_enroll_receive` VALUES (258, 64, 107, 35, '测试9', 0, NULL, '14', 1546487307158, '14', 1546487307158, 0);
INSERT INTO `biz_enroll_receive` VALUES (259, 64, 107, 36, '测试10', 0, NULL, '14', 1546487307158, '14', 1546487307158, 0);
INSERT INTO `biz_enroll_receive` VALUES (260, 64, 107, 37, '测试11', 0, NULL, '14', 1546487307158, '14', 1546487307158, 0);
INSERT INTO `biz_enroll_receive` VALUES (261, 64, 107, 38, '测试12', 0, NULL, '14', 1546487307158, '14', 1546487307158, 0);
INSERT INTO `biz_enroll_receive` VALUES (262, 64, 107, 39, '测试13', 0, NULL, '14', 1546487307158, '14', 1546487307158, 0);
INSERT INTO `biz_enroll_receive` VALUES (263, 64, 107, 41, '林悦伟', 0, NULL, '14', 1546487307158, '14', 1546487307158, 0);
INSERT INTO `biz_enroll_receive` VALUES (264, 64, 108, 14, '蔡老师', 1, NULL, '14', 1546487612071, '14', 1546487618750, 0);
INSERT INTO `biz_enroll_receive` VALUES (265, 64, 108, 18, '蒋依依', 0, NULL, '14', 1546487612071, '14', 1546487612071, 0);
INSERT INTO `biz_enroll_receive` VALUES (266, 64, 108, 24, '李小白', 0, NULL, '14', 1546487612071, '14', 1546487612071, 0);
INSERT INTO `biz_enroll_receive` VALUES (267, 64, 108, 27, '测试1', 0, NULL, '14', 1546487612071, '14', 1546487612071, 0);
INSERT INTO `biz_enroll_receive` VALUES (268, 64, 108, 28, '测试测试字数字数字数', 0, NULL, '14', 1546487612071, '14', 1546487612071, 0);
INSERT INTO `biz_enroll_receive` VALUES (269, 64, 108, 29, '测试3', 0, NULL, '14', 1546487612071, '14', 1546487612071, 0);
INSERT INTO `biz_enroll_receive` VALUES (270, 64, 108, 30, '测试4', 0, NULL, '14', 1546487612071, '14', 1546487612071, 0);
INSERT INTO `biz_enroll_receive` VALUES (271, 64, 108, 31, '测试5', 0, NULL, '14', 1546487612071, '14', 1546487612071, 0);
INSERT INTO `biz_enroll_receive` VALUES (272, 64, 108, 32, '测试6', 0, NULL, '14', 1546487612071, '14', 1546487612071, 0);
INSERT INTO `biz_enroll_receive` VALUES (273, 64, 108, 33, '测试7', 0, NULL, '14', 1546487612071, '14', 1546487612071, 0);
INSERT INTO `biz_enroll_receive` VALUES (274, 64, 108, 34, '测试8', 0, NULL, '14', 1546487612071, '14', 1546487612071, 0);
INSERT INTO `biz_enroll_receive` VALUES (275, 64, 108, 35, '测试9', 0, NULL, '14', 1546487612071, '14', 1546487612071, 0);
INSERT INTO `biz_enroll_receive` VALUES (276, 64, 108, 36, '测试10', 0, NULL, '14', 1546487612071, '14', 1546487612071, 0);
INSERT INTO `biz_enroll_receive` VALUES (277, 64, 108, 37, '测试11', 0, NULL, '14', 1546487612071, '14', 1546487612071, 0);
INSERT INTO `biz_enroll_receive` VALUES (278, 64, 108, 38, '测试12', 0, NULL, '14', 1546487612071, '14', 1546487612071, 0);
INSERT INTO `biz_enroll_receive` VALUES (279, 64, 108, 39, '测试13', 0, NULL, '14', 1546487612071, '14', 1546487612071, 0);
INSERT INTO `biz_enroll_receive` VALUES (280, 64, 108, 41, '林悦伟', 1, NULL, '14', 1546487612071, '41', 1546510123386, 0);
INSERT INTO `biz_enroll_receive` VALUES (281, 64, 109, 14, '蔡老师', 1, NULL, '14', 1546487648637, '14', 1546487670762, 0);
INSERT INTO `biz_enroll_receive` VALUES (282, 64, 109, 18, '蒋依依', 1, NULL, '14', 1546487648637, '18', 1546487664526, 0);
INSERT INTO `biz_enroll_receive` VALUES (283, 64, 109, 24, '李小白', 1, NULL, '14', 1546487648637, '24', 1546487684026, 0);
INSERT INTO `biz_enroll_receive` VALUES (284, 64, 109, 27, '测试1', 0, NULL, '14', 1546487648637, '14', 1546487648637, 0);
INSERT INTO `biz_enroll_receive` VALUES (285, 64, 109, 28, '测试测试字数字数字数', 0, NULL, '14', 1546487648637, '14', 1546487648637, 0);
INSERT INTO `biz_enroll_receive` VALUES (286, 64, 109, 29, '测试3', 0, NULL, '14', 1546487648637, '14', 1546487648637, 0);
INSERT INTO `biz_enroll_receive` VALUES (287, 64, 109, 30, '测试4', 0, NULL, '14', 1546487648637, '14', 1546487648637, 0);
INSERT INTO `biz_enroll_receive` VALUES (288, 64, 109, 31, '测试5', 0, NULL, '14', 1546487648637, '14', 1546487648637, 0);
INSERT INTO `biz_enroll_receive` VALUES (289, 64, 109, 32, '测试6', 0, NULL, '14', 1546487648637, '14', 1546487648637, 0);
INSERT INTO `biz_enroll_receive` VALUES (290, 64, 109, 33, '测试7', 0, NULL, '14', 1546487648637, '14', 1546487648637, 0);
INSERT INTO `biz_enroll_receive` VALUES (291, 64, 109, 34, '测试8', 0, NULL, '14', 1546487648637, '14', 1546487648637, 0);
INSERT INTO `biz_enroll_receive` VALUES (292, 64, 109, 35, '测试9', 0, NULL, '14', 1546487648637, '14', 1546487648637, 0);
INSERT INTO `biz_enroll_receive` VALUES (293, 64, 109, 36, '测试10', 0, NULL, '14', 1546487648637, '14', 1546487648637, 0);
INSERT INTO `biz_enroll_receive` VALUES (294, 64, 109, 37, '测试11', 0, NULL, '14', 1546487648637, '14', 1546487648637, 0);
INSERT INTO `biz_enroll_receive` VALUES (295, 64, 109, 38, '测试12', 0, NULL, '14', 1546487648637, '14', 1546487648637, 0);
INSERT INTO `biz_enroll_receive` VALUES (296, 64, 109, 39, '测试13', 0, NULL, '14', 1546487648637, '14', 1546487648637, 0);
INSERT INTO `biz_enroll_receive` VALUES (297, 64, 109, 41, '林悦伟', 0, NULL, '14', 1546487648637, '14', 1546487648637, 0);
INSERT INTO `biz_enroll_receive` VALUES (298, 64, 110, 14, '蔡老师', 1, NULL, '14', 1546487840898, '14', 1546495778050, 0);
INSERT INTO `biz_enroll_receive` VALUES (299, 64, 110, 18, '蒋依依', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (300, 64, 110, 24, '李小白', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (301, 64, 110, 27, '测试1', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (302, 64, 110, 28, '测试测试字数字数字数', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (303, 64, 110, 29, '测试3', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (304, 64, 110, 30, '测试4', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (305, 64, 110, 31, '测试5', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (306, 64, 110, 32, '测试6', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (307, 64, 110, 33, '测试7', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (308, 64, 110, 34, '测试8', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (309, 64, 110, 35, '测试9', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (310, 64, 110, 36, '测试10', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (311, 64, 110, 37, '测试11', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (312, 64, 110, 38, '测试12', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (313, 64, 110, 39, '测试13', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (314, 64, 110, 41, '林悦伟', 0, NULL, '14', 1546487840898, '14', 1546487840898, 0);
INSERT INTO `biz_enroll_receive` VALUES (315, 87, 111, 41, '林悦伟', 1, NULL, '41', 1546488034719, '41', 1546498666538, 0);
INSERT INTO `biz_enroll_receive` VALUES (316, 87, 112, 41, '林悦伟', 1, NULL, '41', 1546496510721, '41', 1546499192538, 0);
INSERT INTO `biz_enroll_receive` VALUES (317, 64, 113, 14, '蔡老师', 1, NULL, '14', 1546497618819, '14', 1546497621742, 0);
INSERT INTO `biz_enroll_receive` VALUES (318, 64, 113, 18, '蒋依依', 0, NULL, '14', 1546497618819, '14', 1546497618819, 0);
INSERT INTO `biz_enroll_receive` VALUES (319, 64, 113, 24, '李小白', 0, NULL, '14', 1546497618819, '14', 1546497618819, 0);
INSERT INTO `biz_enroll_receive` VALUES (320, 64, 113, 27, '测试1', 0, NULL, '14', 1546497618819, '14', 1546497618819, 0);
INSERT INTO `biz_enroll_receive` VALUES (321, 64, 113, 28, '测试测试字数字数字数', 0, NULL, '14', 1546497618819, '14', 1546497618819, 0);
INSERT INTO `biz_enroll_receive` VALUES (322, 64, 113, 29, '测试3', 0, NULL, '14', 1546497618819, '14', 1546497618819, 0);
INSERT INTO `biz_enroll_receive` VALUES (323, 64, 113, 30, '测试4', 0, NULL, '14', 1546497618819, '14', 1546497618819, 0);
INSERT INTO `biz_enroll_receive` VALUES (324, 64, 113, 31, '测试5', 0, NULL, '14', 1546497618819, '14', 1546497618819, 0);
INSERT INTO `biz_enroll_receive` VALUES (325, 64, 113, 32, '测试6', 0, NULL, '14', 1546497618819, '14', 1546497618819, 0);
INSERT INTO `biz_enroll_receive` VALUES (326, 64, 113, 33, '测试7', 0, NULL, '14', 1546497618819, '14', 1546497618819, 0);
INSERT INTO `biz_enroll_receive` VALUES (327, 64, 113, 34, '测试8', 0, NULL, '14', 1546497618819, '14', 1546497618819, 0);
INSERT INTO `biz_enroll_receive` VALUES (328, 64, 113, 35, '测试9', 0, NULL, '14', 1546497618819, '14', 1546497618819, 0);
INSERT INTO `biz_enroll_receive` VALUES (329, 64, 113, 36, '测试10', 0, NULL, '14', 1546497618819, '14', 1546497618819, 0);
INSERT INTO `biz_enroll_receive` VALUES (330, 64, 113, 37, '测试11', 0, NULL, '14', 1546497618819, '14', 1546497618819, 0);
INSERT INTO `biz_enroll_receive` VALUES (331, 64, 113, 38, '测试12', 0, NULL, '14', 1546497618819, '14', 1546497618819, 0);
INSERT INTO `biz_enroll_receive` VALUES (332, 64, 113, 39, '测试13', 0, NULL, '14', 1546497618819, '14', 1546497618819, 0);
INSERT INTO `biz_enroll_receive` VALUES (333, 64, 113, 41, '林悦伟', 1, NULL, '14', 1546497618819, '41', 1546510121194, 0);
INSERT INTO `biz_enroll_receive` VALUES (334, 64, 114, 14, '蔡老师', 0, NULL, '14', 1546497637436, '14', 1546497637436, 0);
INSERT INTO `biz_enroll_receive` VALUES (335, 64, 114, 18, '蒋依依', 0, NULL, '14', 1546497637436, '14', 1546497637436, 0);
INSERT INTO `biz_enroll_receive` VALUES (336, 64, 114, 24, '李小白', 0, NULL, '14', 1546497637436, '14', 1546497637436, 0);
INSERT INTO `biz_enroll_receive` VALUES (337, 64, 114, 27, '测试1', 0, NULL, '14', 1546497637436, '14', 1546497637436, 0);
INSERT INTO `biz_enroll_receive` VALUES (338, 64, 114, 28, '测试测试字数字数字数', 0, NULL, '14', 1546497637437, '14', 1546497637437, 0);
INSERT INTO `biz_enroll_receive` VALUES (339, 64, 114, 29, '测试3', 0, NULL, '14', 1546497637437, '14', 1546497637437, 0);
INSERT INTO `biz_enroll_receive` VALUES (340, 64, 114, 30, '测试4', 0, NULL, '14', 1546497637437, '14', 1546497637437, 0);
INSERT INTO `biz_enroll_receive` VALUES (341, 64, 114, 31, '测试5', 0, NULL, '14', 1546497637437, '14', 1546497637437, 0);
INSERT INTO `biz_enroll_receive` VALUES (342, 64, 114, 32, '测试6', 0, NULL, '14', 1546497637437, '14', 1546497637437, 0);
INSERT INTO `biz_enroll_receive` VALUES (343, 64, 114, 33, '测试7', 0, NULL, '14', 1546497637437, '14', 1546497637437, 0);
INSERT INTO `biz_enroll_receive` VALUES (344, 64, 114, 34, '测试8', 0, NULL, '14', 1546497637437, '14', 1546497637437, 0);
INSERT INTO `biz_enroll_receive` VALUES (345, 64, 114, 35, '测试9', 0, NULL, '14', 1546497637437, '14', 1546497637437, 0);
INSERT INTO `biz_enroll_receive` VALUES (346, 64, 114, 36, '测试10', 0, NULL, '14', 1546497637437, '14', 1546497637437, 0);
INSERT INTO `biz_enroll_receive` VALUES (347, 64, 114, 37, '测试11', 0, NULL, '14', 1546497637437, '14', 1546497637437, 0);
INSERT INTO `biz_enroll_receive` VALUES (348, 64, 114, 38, '测试12', 0, NULL, '14', 1546497637437, '14', 1546497637437, 0);
INSERT INTO `biz_enroll_receive` VALUES (349, 64, 114, 39, '测试13', 0, NULL, '14', 1546497637437, '14', 1546497637437, 0);
INSERT INTO `biz_enroll_receive` VALUES (350, 64, 114, 41, '林悦伟', 0, NULL, '14', 1546497637437, '14', 1546497637437, 0);
INSERT INTO `biz_enroll_receive` VALUES (351, 64, 115, 14, '蔡老师', 1, NULL, '14', 1546497663056, '14', 1546497675690, 0);
INSERT INTO `biz_enroll_receive` VALUES (352, 64, 115, 18, '蒋依依', 0, NULL, '14', 1546497663056, '14', 1546497663056, 0);
INSERT INTO `biz_enroll_receive` VALUES (353, 64, 115, 24, '李小白', 0, NULL, '14', 1546497663056, '14', 1546497663056, 0);
INSERT INTO `biz_enroll_receive` VALUES (354, 64, 115, 27, '测试1', 0, NULL, '14', 1546497663056, '14', 1546497663056, 0);
INSERT INTO `biz_enroll_receive` VALUES (355, 64, 115, 28, '测试测试字数字数字数', 0, NULL, '14', 1546497663056, '14', 1546497663056, 0);
INSERT INTO `biz_enroll_receive` VALUES (356, 64, 115, 29, '测试3', 0, NULL, '14', 1546497663056, '14', 1546497663056, 0);
INSERT INTO `biz_enroll_receive` VALUES (357, 64, 115, 30, '测试4', 0, NULL, '14', 1546497663056, '14', 1546497663056, 0);
INSERT INTO `biz_enroll_receive` VALUES (358, 64, 115, 31, '测试5', 0, NULL, '14', 1546497663056, '14', 1546497663056, 0);
INSERT INTO `biz_enroll_receive` VALUES (359, 64, 115, 32, '测试6', 0, NULL, '14', 1546497663056, '14', 1546497663056, 0);
INSERT INTO `biz_enroll_receive` VALUES (360, 64, 115, 33, '测试7', 0, NULL, '14', 1546497663056, '14', 1546497663056, 0);
INSERT INTO `biz_enroll_receive` VALUES (361, 64, 115, 34, '测试8', 0, NULL, '14', 1546497663056, '14', 1546497663056, 0);
INSERT INTO `biz_enroll_receive` VALUES (362, 64, 115, 35, '测试9', 0, NULL, '14', 1546497663056, '14', 1546497663056, 0);
INSERT INTO `biz_enroll_receive` VALUES (363, 64, 115, 36, '测试10', 0, NULL, '14', 1546497663056, '14', 1546497663056, 0);
INSERT INTO `biz_enroll_receive` VALUES (364, 64, 115, 37, '测试11', 0, NULL, '14', 1546497663056, '14', 1546497663056, 0);
INSERT INTO `biz_enroll_receive` VALUES (365, 64, 115, 38, '测试12', 0, NULL, '14', 1546497663056, '14', 1546497663056, 0);
INSERT INTO `biz_enroll_receive` VALUES (366, 64, 115, 39, '测试13', 0, NULL, '14', 1546497663056, '14', 1546497663056, 0);
INSERT INTO `biz_enroll_receive` VALUES (367, 64, 115, 41, '林悦伟', 1, NULL, '14', 1546497663056, '41', 1546509814234, 0);
INSERT INTO `biz_enroll_receive` VALUES (368, 64, 116, 14, '蔡老师', 1, NULL, '14', 1546498049669, '14', 1546498917774, 0);
INSERT INTO `biz_enroll_receive` VALUES (369, 64, 116, 18, '蒋依依', 0, NULL, '14', 1546498049669, '14', 1546498049669, 0);
INSERT INTO `biz_enroll_receive` VALUES (370, 64, 116, 24, '李小白', 0, NULL, '14', 1546498049669, '14', 1546498049669, 0);
INSERT INTO `biz_enroll_receive` VALUES (371, 64, 116, 27, '测试1', 0, NULL, '14', 1546498049669, '14', 1546498049669, 0);
INSERT INTO `biz_enroll_receive` VALUES (372, 64, 116, 28, '测试测试字数字数字数', 0, NULL, '14', 1546498049669, '14', 1546498049669, 0);
INSERT INTO `biz_enroll_receive` VALUES (373, 64, 116, 29, '测试3', 0, NULL, '14', 1546498049669, '14', 1546498049669, 0);
INSERT INTO `biz_enroll_receive` VALUES (374, 64, 116, 30, '测试4', 0, NULL, '14', 1546498049669, '14', 1546498049669, 0);
INSERT INTO `biz_enroll_receive` VALUES (375, 64, 116, 31, '测试5', 0, NULL, '14', 1546498049669, '14', 1546498049669, 0);
INSERT INTO `biz_enroll_receive` VALUES (376, 64, 116, 32, '测试6', 0, NULL, '14', 1546498049669, '14', 1546498049669, 0);
INSERT INTO `biz_enroll_receive` VALUES (377, 64, 116, 33, '测试7', 0, NULL, '14', 1546498049669, '14', 1546498049669, 0);
INSERT INTO `biz_enroll_receive` VALUES (378, 64, 116, 34, '测试8', 0, NULL, '14', 1546498049669, '14', 1546498049669, 0);
INSERT INTO `biz_enroll_receive` VALUES (379, 64, 116, 35, '测试9', 0, NULL, '14', 1546498049669, '14', 1546498049669, 0);
INSERT INTO `biz_enroll_receive` VALUES (380, 64, 116, 36, '测试10', 0, NULL, '14', 1546498049669, '14', 1546498049669, 0);
INSERT INTO `biz_enroll_receive` VALUES (381, 64, 116, 37, '测试11', 0, NULL, '14', 1546498049669, '14', 1546498049669, 0);
INSERT INTO `biz_enroll_receive` VALUES (382, 64, 116, 38, '测试12', 0, NULL, '14', 1546498049669, '14', 1546498049669, 0);
INSERT INTO `biz_enroll_receive` VALUES (383, 64, 116, 39, '测试13', 0, NULL, '14', 1546498049669, '14', 1546498049669, 0);
INSERT INTO `biz_enroll_receive` VALUES (384, 64, 116, 41, '林悦伟', 1, NULL, '14', 1546498049669, '41', 1546510118617, 0);
INSERT INTO `biz_enroll_receive` VALUES (385, 64, 117, 14, '蔡老师', 1, NULL, '14', 1546498508851, '14', 1546498944322, 0);
INSERT INTO `biz_enroll_receive` VALUES (386, 64, 117, 18, '蒋依依', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (387, 64, 117, 24, '李小白', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (388, 64, 117, 27, '测试1', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (389, 64, 117, 28, '测试测试字数字数字数', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (390, 64, 117, 29, '测试3', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (391, 64, 117, 30, '测试4', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (392, 64, 117, 31, '测试5', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (393, 64, 117, 32, '测试6', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (394, 64, 117, 33, '测试7', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (395, 64, 117, 34, '测试8', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (396, 64, 117, 35, '测试9', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (397, 64, 117, 36, '测试10', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (398, 64, 117, 37, '测试11', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (399, 64, 117, 38, '测试12', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (400, 64, 117, 39, '测试13', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (401, 64, 117, 41, '林悦伟', 0, NULL, '14', 1546498508851, '14', 1546498508851, 0);
INSERT INTO `biz_enroll_receive` VALUES (402, 64, 118, 14, '蔡老师', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (403, 64, 118, 18, '蒋依依', 1, NULL, '14', 1546499058737, '18', 1546564712398, 0);
INSERT INTO `biz_enroll_receive` VALUES (404, 64, 118, 24, '李小白', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (405, 64, 118, 27, '测试1', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (406, 64, 118, 28, '测试测试字数字数字数', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (407, 64, 118, 29, '测试3', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (408, 64, 118, 30, '测试4', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (409, 64, 118, 31, '测试5', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (410, 64, 118, 32, '测试6', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (411, 64, 118, 33, '测试7', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (412, 64, 118, 34, '测试8', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (413, 64, 118, 35, '测试9', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (414, 64, 118, 36, '测试10', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (415, 64, 118, 37, '测试11', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (416, 64, 118, 38, '测试12', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (417, 64, 118, 39, '测试13', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (418, 64, 118, 41, '林悦伟', 0, NULL, '14', 1546499058737, '14', 1546499058737, 0);
INSERT INTO `biz_enroll_receive` VALUES (419, 87, 119, 41, '林悦伟', 0, NULL, '41', 1546499383946, '41', 1546499383946, 0);
INSERT INTO `biz_enroll_receive` VALUES (420, 74, 120, 24, '2', 0, NULL, '24', 1546499620922, '24', 1546499620922, 0);
INSERT INTO `biz_enroll_receive` VALUES (421, 74, 121, 24, '2', 1, NULL, '24', 1546499656094, '24', 1546499665138, 0);
INSERT INTO `biz_enroll_receive` VALUES (422, 87, 122, 41, '林悦伟', 1, NULL, '41', 1546499803282, '41', 1546500099826, 0);
INSERT INTO `biz_enroll_receive` VALUES (423, 87, 123, 41, '林悦伟', 1, NULL, '41', 1546499997242, '41', 1546509695491, 0);
INSERT INTO `biz_enroll_receive` VALUES (424, 64, 124, 14, '蔡老师', 1, NULL, '14', 1546500119367, '14', 1546500121206, 0);
INSERT INTO `biz_enroll_receive` VALUES (425, 64, 124, 18, '蒋依依', 0, NULL, '14', 1546500119367, '14', 1546500119367, 0);
INSERT INTO `biz_enroll_receive` VALUES (426, 64, 124, 24, '李小白', 0, NULL, '14', 1546500119367, '14', 1546500119367, 0);
INSERT INTO `biz_enroll_receive` VALUES (427, 64, 124, 27, '测试1', 0, NULL, '14', 1546500119367, '14', 1546500119367, 0);
INSERT INTO `biz_enroll_receive` VALUES (428, 64, 124, 28, '测试测试字数字数字数', 0, NULL, '14', 1546500119367, '14', 1546500119367, 0);
INSERT INTO `biz_enroll_receive` VALUES (429, 64, 124, 29, '测试3', 0, NULL, '14', 1546500119367, '14', 1546500119367, 0);
INSERT INTO `biz_enroll_receive` VALUES (430, 64, 124, 30, '测试4', 0, NULL, '14', 1546500119367, '14', 1546500119367, 0);
INSERT INTO `biz_enroll_receive` VALUES (431, 64, 124, 31, '测试5', 0, NULL, '14', 1546500119367, '14', 1546500119367, 0);
INSERT INTO `biz_enroll_receive` VALUES (432, 64, 124, 32, '测试6', 0, NULL, '14', 1546500119367, '14', 1546500119367, 0);
INSERT INTO `biz_enroll_receive` VALUES (433, 64, 124, 33, '测试7', 0, NULL, '14', 1546500119367, '14', 1546500119367, 0);
INSERT INTO `biz_enroll_receive` VALUES (434, 64, 124, 34, '测试8', 0, NULL, '14', 1546500119367, '14', 1546500119367, 0);
INSERT INTO `biz_enroll_receive` VALUES (435, 64, 124, 35, '测试9', 0, NULL, '14', 1546500119367, '14', 1546500119367, 0);
INSERT INTO `biz_enroll_receive` VALUES (436, 64, 124, 36, '测试10', 0, NULL, '14', 1546500119367, '14', 1546500119367, 0);
INSERT INTO `biz_enroll_receive` VALUES (437, 64, 124, 37, '测试11', 0, NULL, '14', 1546500119367, '14', 1546500119367, 0);
INSERT INTO `biz_enroll_receive` VALUES (438, 64, 124, 38, '测试12', 0, NULL, '14', 1546500119367, '14', 1546500119367, 0);
INSERT INTO `biz_enroll_receive` VALUES (439, 64, 124, 39, '测试13', 0, NULL, '14', 1546500119367, '14', 1546500119367, 0);
INSERT INTO `biz_enroll_receive` VALUES (440, 64, 124, 41, '林悦伟', 1, NULL, '14', 1546500119367, '41', 1546509807170, 0);
INSERT INTO `biz_enroll_receive` VALUES (441, 64, 125, 14, '蔡老师', 1, NULL, '14', 1546500227185, '14', 1546500230017, 0);
INSERT INTO `biz_enroll_receive` VALUES (442, 64, 125, 18, '蒋依依', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (443, 64, 125, 24, '李小白', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (444, 64, 125, 27, '测试1', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (445, 64, 125, 28, '测试测试字数字数字数', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (446, 64, 125, 29, '测试3', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (447, 64, 125, 30, '测试4', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (448, 64, 125, 31, '测试5', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (449, 64, 125, 32, '测试6', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (450, 64, 125, 33, '测试7', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (451, 64, 125, 34, '测试8', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (452, 64, 125, 35, '测试9', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (453, 64, 125, 36, '测试10', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (454, 64, 125, 37, '测试11', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (455, 64, 125, 38, '测试12', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (456, 64, 125, 39, '测试13', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (457, 64, 125, 41, '林悦伟', 0, NULL, '14', 1546500227185, '14', 1546500227185, 0);
INSERT INTO `biz_enroll_receive` VALUES (458, 64, 126, 14, '蔡老师', 0, NULL, '14', 1546500275249, '14', 1546500275249, 0);
INSERT INTO `biz_enroll_receive` VALUES (459, 64, 126, 18, '蒋依依', 1, NULL, '14', 1546500275249, '18', 1546564707473, 0);
INSERT INTO `biz_enroll_receive` VALUES (460, 64, 126, 24, '李小白', 0, NULL, '14', 1546500275249, '14', 1546500275249, 0);
INSERT INTO `biz_enroll_receive` VALUES (461, 64, 126, 27, '测试1', 0, NULL, '14', 1546500275249, '14', 1546500275249, 0);
INSERT INTO `biz_enroll_receive` VALUES (462, 64, 126, 28, '测试测试字数字数字数', 0, NULL, '14', 1546500275249, '14', 1546500275249, 0);
INSERT INTO `biz_enroll_receive` VALUES (463, 64, 126, 29, '测试3', 0, NULL, '14', 1546500275250, '14', 1546500275249, 0);
INSERT INTO `biz_enroll_receive` VALUES (464, 64, 126, 30, '测试4', 0, NULL, '14', 1546500275250, '14', 1546500275250, 0);
INSERT INTO `biz_enroll_receive` VALUES (465, 64, 126, 31, '测试5', 0, NULL, '14', 1546500275250, '14', 1546500275250, 0);
INSERT INTO `biz_enroll_receive` VALUES (466, 64, 126, 32, '测试6', 0, NULL, '14', 1546500275250, '14', 1546500275250, 0);
INSERT INTO `biz_enroll_receive` VALUES (467, 64, 126, 33, '测试7', 0, NULL, '14', 1546500275250, '14', 1546500275250, 0);
INSERT INTO `biz_enroll_receive` VALUES (468, 64, 126, 34, '测试8', 0, NULL, '14', 1546500275250, '14', 1546500275250, 0);
INSERT INTO `biz_enroll_receive` VALUES (469, 64, 126, 35, '测试9', 0, NULL, '14', 1546500275250, '14', 1546500275250, 0);
INSERT INTO `biz_enroll_receive` VALUES (470, 64, 126, 36, '测试10', 0, NULL, '14', 1546500275250, '14', 1546500275250, 0);
INSERT INTO `biz_enroll_receive` VALUES (471, 64, 126, 37, '测试11', 0, NULL, '14', 1546500275250, '14', 1546500275250, 0);
INSERT INTO `biz_enroll_receive` VALUES (472, 64, 126, 38, '测试12', 0, NULL, '14', 1546500275250, '14', 1546500275250, 0);
INSERT INTO `biz_enroll_receive` VALUES (473, 64, 126, 39, '测试13', 0, NULL, '14', 1546500275250, '14', 1546500275250, 0);
INSERT INTO `biz_enroll_receive` VALUES (474, 64, 126, 41, '林悦伟', 0, NULL, '14', 1546500275250, '14', 1546500275250, 0);
INSERT INTO `biz_enroll_receive` VALUES (475, 87, 127, 41, '林悦伟', 0, NULL, '41', 1546500361130, '41', 1546500361130, 0);
INSERT INTO `biz_enroll_receive` VALUES (476, 87, 128, 41, '林悦伟', 1, NULL, '41', 1546500422702, '41', 1546501730549, 0);
INSERT INTO `biz_enroll_receive` VALUES (477, 74, 129, 24, '2', 1, NULL, '24', 1546500465298, '24', 1546504603905, 0);
INSERT INTO `biz_enroll_receive` VALUES (478, 64, 130, 14, '蔡老师', 0, NULL, '14', 1546500687967, '14', 1546500687967, 0);
INSERT INTO `biz_enroll_receive` VALUES (479, 64, 130, 18, '蒋依依', 1, NULL, '14', 1546500687967, '18', 1546564698606, 0);
INSERT INTO `biz_enroll_receive` VALUES (480, 64, 130, 24, '李小白', 0, NULL, '14', 1546500687967, '14', 1546500687967, 0);
INSERT INTO `biz_enroll_receive` VALUES (481, 64, 130, 27, '测试1', 0, NULL, '14', 1546500687967, '14', 1546500687967, 0);
INSERT INTO `biz_enroll_receive` VALUES (482, 64, 130, 28, '测试测试字数字数字数', 0, NULL, '14', 1546500687967, '14', 1546500687967, 0);
INSERT INTO `biz_enroll_receive` VALUES (483, 64, 130, 29, '测试3', 0, NULL, '14', 1546500687967, '14', 1546500687967, 0);
INSERT INTO `biz_enroll_receive` VALUES (484, 64, 130, 30, '测试4', 0, NULL, '14', 1546500687967, '14', 1546500687967, 0);
INSERT INTO `biz_enroll_receive` VALUES (485, 64, 130, 31, '测试5', 0, NULL, '14', 1546500687967, '14', 1546500687967, 0);
INSERT INTO `biz_enroll_receive` VALUES (486, 64, 130, 32, '测试6', 0, NULL, '14', 1546500687967, '14', 1546500687967, 0);
INSERT INTO `biz_enroll_receive` VALUES (487, 64, 130, 33, '测试7', 0, NULL, '14', 1546500687967, '14', 1546500687967, 0);
INSERT INTO `biz_enroll_receive` VALUES (488, 64, 130, 34, '测试8', 0, NULL, '14', 1546500687967, '14', 1546500687967, 0);
INSERT INTO `biz_enroll_receive` VALUES (489, 64, 130, 35, '测试9', 0, NULL, '14', 1546500687967, '14', 1546500687967, 0);
INSERT INTO `biz_enroll_receive` VALUES (490, 64, 130, 36, '测试10', 0, NULL, '14', 1546500687968, '14', 1546500687968, 0);
INSERT INTO `biz_enroll_receive` VALUES (491, 64, 130, 37, '测试11', 0, NULL, '14', 1546500687968, '14', 1546500687968, 0);
INSERT INTO `biz_enroll_receive` VALUES (492, 64, 130, 38, '测试12', 0, NULL, '14', 1546500687968, '14', 1546500687968, 0);
INSERT INTO `biz_enroll_receive` VALUES (493, 64, 130, 39, '测试13', 0, NULL, '14', 1546500687968, '14', 1546500687968, 0);
INSERT INTO `biz_enroll_receive` VALUES (494, 64, 130, 41, '林悦伟', 0, NULL, '14', 1546500687968, '14', 1546500687968, 0);
INSERT INTO `biz_enroll_receive` VALUES (495, 64, 131, 14, '蔡老师', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (496, 64, 131, 18, '蒋依依', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (497, 64, 131, 24, '李小白', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (498, 64, 131, 27, '测试1', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (499, 64, 131, 28, '测试测试字数字数字数', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (500, 64, 131, 29, '测试3', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (501, 64, 131, 30, '测试4', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (502, 64, 131, 31, '测试5', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (503, 64, 131, 32, '测试6', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (504, 64, 131, 33, '测试7', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (505, 64, 131, 34, '测试8', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (506, 64, 131, 35, '测试9', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (507, 64, 131, 36, '测试10', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (508, 64, 131, 37, '测试11', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (509, 64, 131, 38, '测试12', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (510, 64, 131, 39, '测试13', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (511, 64, 131, 41, '林悦伟', 0, NULL, '14', 1546500724288, '14', 1546500724288, 0);
INSERT INTO `biz_enroll_receive` VALUES (512, 64, 132, 14, '蔡老师', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (513, 64, 132, 18, '蒋依依', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (514, 64, 132, 24, '李小白', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (515, 64, 132, 27, '测试1', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (516, 64, 132, 28, '测试测试字数字数字数', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (517, 64, 132, 29, '测试3', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (518, 64, 132, 30, '测试4', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (519, 64, 132, 31, '测试5', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (520, 64, 132, 32, '测试6', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (521, 64, 132, 33, '测试7', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (522, 64, 132, 34, '测试8', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (523, 64, 132, 35, '测试9', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (524, 64, 132, 36, '测试10', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (525, 64, 132, 37, '测试11', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (526, 64, 132, 38, '测试12', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (527, 64, 132, 39, '测试13', 0, NULL, '14', 1546500743342, '14', 1546500743342, 0);
INSERT INTO `biz_enroll_receive` VALUES (528, 64, 132, 41, '林悦伟', 1, NULL, '14', 1546500743342, '41', 1546506425798, 0);
INSERT INTO `biz_enroll_receive` VALUES (529, 64, 133, 14, '蔡老师', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (530, 64, 133, 18, '蒋依依', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (531, 64, 133, 24, '李小白', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (532, 64, 133, 27, '测试1', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (533, 64, 133, 28, '测试测试字数字数字数', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (534, 64, 133, 29, '测试3', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (535, 64, 133, 30, '测试4', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (536, 64, 133, 31, '测试5', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (537, 64, 133, 32, '测试6', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (538, 64, 133, 33, '测试7', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (539, 64, 133, 34, '测试8', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (540, 64, 133, 35, '测试9', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (541, 64, 133, 36, '测试10', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (542, 64, 133, 37, '测试11', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (543, 64, 133, 38, '测试12', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (544, 64, 133, 39, '测试13', 0, NULL, '14', 1546500787248, '14', 1546500787248, 0);
INSERT INTO `biz_enroll_receive` VALUES (545, 64, 133, 41, '林悦伟', 1, NULL, '14', 1546500787248, '41', 1546510112282, 0);
INSERT INTO `biz_enroll_receive` VALUES (546, 64, 134, 14, '蔡老师', 1, NULL, '14', 1546500826534, '14', 1546501027913, 0);
INSERT INTO `biz_enroll_receive` VALUES (547, 64, 134, 18, '蒋依依', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (548, 64, 134, 24, '李小白', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (549, 64, 134, 27, '测试1', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (550, 64, 134, 28, '测试测试字数字数字数', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (551, 64, 134, 29, '测试3', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (552, 64, 134, 30, '测试4', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (553, 64, 134, 31, '测试5', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (554, 64, 134, 32, '测试6', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (555, 64, 134, 33, '测试7', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (556, 64, 134, 34, '测试8', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (557, 64, 134, 35, '测试9', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (558, 64, 134, 36, '测试10', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (559, 64, 134, 37, '测试11', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (560, 64, 134, 38, '测试12', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (561, 64, 134, 39, '测试13', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (562, 64, 134, 41, '林悦伟', 0, NULL, '14', 1546500826534, '14', 1546500826534, 0);
INSERT INTO `biz_enroll_receive` VALUES (563, 64, 135, 14, '蔡老师', 0, NULL, '14', 1546501119047, '14', 1546501119047, 0);
INSERT INTO `biz_enroll_receive` VALUES (564, 64, 135, 18, '蒋依依', 0, NULL, '14', 1546501119047, '14', 1546501119047, 0);
INSERT INTO `biz_enroll_receive` VALUES (565, 64, 135, 24, '李小白', 0, NULL, '14', 1546501119047, '14', 1546501119047, 0);
INSERT INTO `biz_enroll_receive` VALUES (566, 64, 135, 27, '测试1', 0, NULL, '14', 1546501119047, '14', 1546501119047, 0);
INSERT INTO `biz_enroll_receive` VALUES (567, 64, 135, 28, '测试测试字数字数字数', 0, NULL, '14', 1546501119047, '14', 1546501119047, 0);
INSERT INTO `biz_enroll_receive` VALUES (568, 64, 135, 29, '测试3', 0, NULL, '14', 1546501119047, '14', 1546501119047, 0);
INSERT INTO `biz_enroll_receive` VALUES (569, 64, 135, 30, '测试4', 0, NULL, '14', 1546501119047, '14', 1546501119047, 0);
INSERT INTO `biz_enroll_receive` VALUES (570, 64, 135, 31, '测试5', 0, NULL, '14', 1546501119047, '14', 1546501119047, 0);
INSERT INTO `biz_enroll_receive` VALUES (571, 64, 135, 32, '测试6', 0, NULL, '14', 1546501119047, '14', 1546501119047, 0);
INSERT INTO `biz_enroll_receive` VALUES (572, 64, 135, 33, '测试7', 0, NULL, '14', 1546501119047, '14', 1546501119047, 0);
INSERT INTO `biz_enroll_receive` VALUES (573, 64, 135, 34, '测试8', 0, NULL, '14', 1546501119047, '14', 1546501119047, 0);
INSERT INTO `biz_enroll_receive` VALUES (574, 64, 135, 35, '测试9', 0, NULL, '14', 1546501119047, '14', 1546501119047, 0);
INSERT INTO `biz_enroll_receive` VALUES (575, 64, 135, 36, '测试10', 0, NULL, '14', 1546501119047, '14', 1546501119047, 0);
INSERT INTO `biz_enroll_receive` VALUES (576, 64, 135, 37, '测试11', 0, NULL, '14', 1546501119047, '14', 1546501119047, 0);
INSERT INTO `biz_enroll_receive` VALUES (577, 64, 135, 38, '测试12', 0, NULL, '14', 1546501119048, '14', 1546501119048, 0);
INSERT INTO `biz_enroll_receive` VALUES (578, 64, 135, 39, '测试13', 0, NULL, '14', 1546501119048, '14', 1546501119048, 0);
INSERT INTO `biz_enroll_receive` VALUES (579, 64, 135, 41, '林悦伟', 1, NULL, '14', 1546501119048, '41', 1546509755711, 0);
INSERT INTO `biz_enroll_receive` VALUES (580, 64, 136, 14, '蔡老师', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (581, 64, 136, 18, '蒋依依', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (582, 64, 136, 24, '李小白', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (583, 64, 136, 27, '测试1', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (584, 64, 136, 28, '测试测试字数字数字数', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (585, 64, 136, 29, '测试3', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (586, 64, 136, 30, '测试4', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (587, 64, 136, 31, '测试5', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (588, 64, 136, 32, '测试6', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (589, 64, 136, 33, '测试7', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (590, 64, 136, 34, '测试8', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (591, 64, 136, 35, '测试9', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (592, 64, 136, 36, '测试10', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (593, 64, 136, 37, '测试11', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (594, 64, 136, 38, '测试12', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (595, 64, 136, 39, '测试13', 0, NULL, '14', 1546501197384, '14', 1546501197384, 0);
INSERT INTO `biz_enroll_receive` VALUES (596, 64, 136, 41, '林悦伟', 1, NULL, '14', 1546501197384, '41', 1546507858306, 0);
INSERT INTO `biz_enroll_receive` VALUES (597, 64, 137, 14, '蔡老师', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (598, 64, 137, 18, '蒋依依', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (599, 64, 137, 24, '李小白', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (600, 64, 137, 27, '测试1', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (601, 64, 137, 28, '测试测试字数字数字数', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (602, 64, 137, 29, '测试3', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (603, 64, 137, 30, '测试4', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (604, 64, 137, 31, '测试5', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (605, 64, 137, 32, '测试6', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (606, 64, 137, 33, '测试7', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (607, 64, 137, 34, '测试8', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (608, 64, 137, 35, '测试9', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (609, 64, 137, 36, '测试10', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (610, 64, 137, 37, '测试11', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (611, 64, 137, 38, '测试12', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (612, 64, 137, 39, '测试13', 0, NULL, '14', 1546501211391, '14', 1546501211391, 0);
INSERT INTO `biz_enroll_receive` VALUES (613, 64, 137, 41, '林悦伟', 1, NULL, '14', 1546501211391, '41', 1546509793078, 0);
INSERT INTO `biz_enroll_receive` VALUES (614, 64, 138, 14, '蔡老师', 1, NULL, '14', 1546501251355, '14', 1546504674090, 0);
INSERT INTO `biz_enroll_receive` VALUES (615, 64, 138, 18, '蒋依依', 0, NULL, '14', 1546501251355, '14', 1546501251355, 0);
INSERT INTO `biz_enroll_receive` VALUES (616, 64, 138, 24, '李小白', 0, NULL, '14', 1546501251355, '14', 1546501251355, 0);
INSERT INTO `biz_enroll_receive` VALUES (617, 64, 138, 27, '测试1', 0, NULL, '14', 1546501251355, '14', 1546501251355, 0);
INSERT INTO `biz_enroll_receive` VALUES (618, 64, 138, 28, '测试测试字数字数字数', 0, NULL, '14', 1546501251355, '14', 1546501251355, 0);
INSERT INTO `biz_enroll_receive` VALUES (619, 64, 138, 29, '测试3', 0, NULL, '14', 1546501251355, '14', 1546501251355, 0);
INSERT INTO `biz_enroll_receive` VALUES (620, 64, 138, 30, '测试4', 0, NULL, '14', 1546501251355, '14', 1546501251355, 0);
INSERT INTO `biz_enroll_receive` VALUES (621, 64, 138, 31, '测试5', 0, NULL, '14', 1546501251355, '14', 1546501251355, 0);
INSERT INTO `biz_enroll_receive` VALUES (622, 64, 138, 32, '测试6', 0, NULL, '14', 1546501251355, '14', 1546501251355, 0);
INSERT INTO `biz_enroll_receive` VALUES (623, 64, 138, 33, '测试7', 0, NULL, '14', 1546501251355, '14', 1546501251355, 0);
INSERT INTO `biz_enroll_receive` VALUES (624, 64, 138, 34, '测试8', 0, NULL, '14', 1546501251355, '14', 1546501251355, 0);
INSERT INTO `biz_enroll_receive` VALUES (625, 64, 138, 35, '测试9', 0, NULL, '14', 1546501251355, '14', 1546501251355, 0);
INSERT INTO `biz_enroll_receive` VALUES (626, 64, 138, 36, '测试10', 0, NULL, '14', 1546501251355, '14', 1546501251355, 0);
INSERT INTO `biz_enroll_receive` VALUES (627, 64, 138, 37, '测试11', 0, NULL, '14', 1546501251355, '14', 1546501251355, 0);
INSERT INTO `biz_enroll_receive` VALUES (628, 64, 138, 38, '测试12', 0, NULL, '14', 1546501251355, '14', 1546501251355, 0);
INSERT INTO `biz_enroll_receive` VALUES (629, 64, 138, 39, '测试13', 0, NULL, '14', 1546501251355, '14', 1546501251355, 0);
INSERT INTO `biz_enroll_receive` VALUES (630, 64, 138, 41, '林悦伟', 1, NULL, '14', 1546501251355, '41', 1546505584498, 0);
INSERT INTO `biz_enroll_receive` VALUES (631, 96, 139, 21, '字那你可', 1, NULL, '21', 1546502249066, '21', 1546522249154, 0);
INSERT INTO `biz_enroll_receive` VALUES (632, 96, 139, 15, '高', 1, NULL, '15', 1546503705883, '15', 1546504000514, 0);
INSERT INTO `biz_enroll_receive` VALUES (633, 64, 140, 14, '蔡老师', 1, NULL, '14', 1546504765389, '14', 1546505919746, 0);
INSERT INTO `biz_enroll_receive` VALUES (634, 64, 140, 18, '蒋依依', 0, NULL, '14', 1546504765389, '14', 1546504765389, 0);
INSERT INTO `biz_enroll_receive` VALUES (635, 64, 140, 24, '李小白', 1, NULL, '14', 1546504765389, '24', 1546504790866, 0);
INSERT INTO `biz_enroll_receive` VALUES (636, 64, 140, 27, '测试1', 0, NULL, '14', 1546504765389, '14', 1546504765389, 0);
INSERT INTO `biz_enroll_receive` VALUES (637, 64, 140, 28, '测试测试字数字数字数', 0, NULL, '14', 1546504765389, '14', 1546504765389, 0);
INSERT INTO `biz_enroll_receive` VALUES (638, 64, 140, 29, '测试3', 0, NULL, '14', 1546504765389, '14', 1546504765389, 0);
INSERT INTO `biz_enroll_receive` VALUES (639, 64, 140, 30, '测试4', 0, NULL, '14', 1546504765389, '14', 1546504765389, 0);
INSERT INTO `biz_enroll_receive` VALUES (640, 64, 140, 31, '测试5', 0, NULL, '14', 1546504765389, '14', 1546504765389, 0);
INSERT INTO `biz_enroll_receive` VALUES (641, 64, 140, 32, '测试6', 0, NULL, '14', 1546504765389, '14', 1546504765389, 0);
INSERT INTO `biz_enroll_receive` VALUES (642, 64, 140, 33, '测试7', 0, NULL, '14', 1546504765389, '14', 1546504765389, 0);
INSERT INTO `biz_enroll_receive` VALUES (643, 64, 140, 34, '测试8', 0, NULL, '14', 1546504765389, '14', 1546504765389, 0);
INSERT INTO `biz_enroll_receive` VALUES (644, 64, 140, 35, '测试9', 0, NULL, '14', 1546504765389, '14', 1546504765389, 0);
INSERT INTO `biz_enroll_receive` VALUES (645, 64, 140, 36, '测试10', 0, NULL, '14', 1546504765389, '14', 1546504765389, 0);
INSERT INTO `biz_enroll_receive` VALUES (646, 64, 140, 37, '测试11', 0, NULL, '14', 1546504765389, '14', 1546504765389, 0);
INSERT INTO `biz_enroll_receive` VALUES (647, 64, 140, 38, '测试12', 0, NULL, '14', 1546504765389, '14', 1546504765389, 0);
INSERT INTO `biz_enroll_receive` VALUES (648, 64, 140, 39, '测试13', 0, NULL, '14', 1546504765389, '14', 1546504765389, 0);
INSERT INTO `biz_enroll_receive` VALUES (649, 64, 140, 41, '林悦伟', 1, NULL, '14', 1546504765389, '41', 1546505601354, 0);
INSERT INTO `biz_enroll_receive` VALUES (650, 89, 141, 14, '测试1', 1, NULL, '14', 1546504896574, '14', 1546505820422, 0);
INSERT INTO `biz_enroll_receive` VALUES (651, 89, 141, 24, '不加入', 1, NULL, '24', 1546504982690, '24', 1546505041138, 0);
INSERT INTO `biz_enroll_receive` VALUES (652, 73, 142, 14, '李莫愁李莫愁李莫愁李莫愁', 1, NULL, '24', 1546505642954, '14', 1546506038358, 0);
INSERT INTO `biz_enroll_receive` VALUES (653, 73, 142, 24, '李白', 1, NULL, '24', 1546505642954, '24', 1546567897690, 0);
INSERT INTO `biz_enroll_receive` VALUES (654, 64, 143, 14, '蔡老师', 0, NULL, '14', 1546505938606, '14', 1546505938606, 0);
INSERT INTO `biz_enroll_receive` VALUES (655, 64, 143, 18, '蒋依依', 1, NULL, '14', 1546505938606, '18', 1546564692278, 0);
INSERT INTO `biz_enroll_receive` VALUES (656, 64, 143, 24, '李小白', 1, NULL, '14', 1546505938606, '24', 1546505974050, 0);
INSERT INTO `biz_enroll_receive` VALUES (657, 64, 143, 27, '测试1', 0, NULL, '14', 1546505938606, '14', 1546505938606, 0);
INSERT INTO `biz_enroll_receive` VALUES (658, 64, 143, 28, '测试测试字数字数字数', 0, NULL, '14', 1546505938606, '14', 1546505938606, 0);
INSERT INTO `biz_enroll_receive` VALUES (659, 64, 143, 29, '测试3', 0, NULL, '14', 1546505938606, '14', 1546505938606, 0);
INSERT INTO `biz_enroll_receive` VALUES (660, 64, 143, 30, '测试4', 0, NULL, '14', 1546505938606, '14', 1546505938606, 0);
INSERT INTO `biz_enroll_receive` VALUES (661, 64, 143, 31, '测试5', 0, NULL, '14', 1546505938606, '14', 1546505938606, 0);
INSERT INTO `biz_enroll_receive` VALUES (662, 64, 143, 32, '测试6', 0, NULL, '14', 1546505938606, '14', 1546505938606, 0);
INSERT INTO `biz_enroll_receive` VALUES (663, 64, 143, 33, '测试7', 0, NULL, '14', 1546505938606, '14', 1546505938606, 0);
INSERT INTO `biz_enroll_receive` VALUES (664, 64, 143, 34, '测试8', 0, NULL, '14', 1546505938606, '14', 1546505938606, 0);
INSERT INTO `biz_enroll_receive` VALUES (665, 64, 143, 35, '测试9', 0, NULL, '14', 1546505938606, '14', 1546505938606, 0);
INSERT INTO `biz_enroll_receive` VALUES (666, 64, 143, 36, '测试10', 0, NULL, '14', 1546505938606, '14', 1546505938606, 0);
INSERT INTO `biz_enroll_receive` VALUES (667, 64, 143, 37, '测试11', 0, NULL, '14', 1546505938606, '14', 1546505938606, 0);
INSERT INTO `biz_enroll_receive` VALUES (668, 64, 143, 38, '测试12', 0, NULL, '14', 1546505938606, '14', 1546505938606, 0);
INSERT INTO `biz_enroll_receive` VALUES (669, 64, 143, 39, '测试13', 0, NULL, '14', 1546505938606, '14', 1546505938606, 0);
INSERT INTO `biz_enroll_receive` VALUES (670, 64, 143, 41, '林悦伟', 1, NULL, '14', 1546505938606, '41', 1546567393762, 0);
INSERT INTO `biz_enroll_receive` VALUES (671, 73, 144, 14, '李莫愁李莫愁李莫愁李莫愁', 1, NULL, '24', 1546506109742, '14', 1546506130586, 0);
INSERT INTO `biz_enroll_receive` VALUES (672, 73, 144, 24, '李白', 0, NULL, '24', 1546506109742, '24', 1546506109742, 0);
INSERT INTO `biz_enroll_receive` VALUES (673, 73, 145, 14, '李莫愁李莫愁李莫愁李莫愁', 1, NULL, '24', 1546506157113, '14', 1546506164329, 0);
INSERT INTO `biz_enroll_receive` VALUES (674, 73, 145, 24, '李白', 0, NULL, '24', 1546506157113, '24', 1546506157113, 0);
INSERT INTO `biz_enroll_receive` VALUES (675, 87, 146, 41, '林悦伟', 1, NULL, '41', 1546509201467, '41', 1546509702166, 0);
INSERT INTO `biz_enroll_receive` VALUES (676, 64, 86, 41, '林悦伟', 1, NULL, '41', 1546509817913, '41', 1546509817913, 0);
INSERT INTO `biz_enroll_receive` VALUES (677, 64, 32, 41, '林悦伟', 1, NULL, '41', 1546509823751, '41', 1546509823751, 0);
INSERT INTO `biz_enroll_receive` VALUES (678, 64, 24, 41, '林悦伟', 1, NULL, '41', 1546509830347, '41', 1546509830347, 0);
INSERT INTO `biz_enroll_receive` VALUES (679, 64, 53, 41, '林悦伟', 1, NULL, '41', 1546510130754, '41', 1546510130754, 0);
INSERT INTO `biz_enroll_receive` VALUES (680, 64, 34, 41, '林悦伟', 1, NULL, '41', 1546510135362, '41', 1546510135362, 0);
INSERT INTO `biz_enroll_receive` VALUES (681, 88, 147, 18, '吉永老师', 1, NULL, '18', 1546563998067, '18', 1546571027074, 0);
INSERT INTO `biz_enroll_receive` VALUES (682, 88, 148, 18, '吉永老师', 1, NULL, '18', 1546565214450, '18', 1546571020282, 0);
INSERT INTO `biz_enroll_receive` VALUES (683, 87, 149, 41, '林悦伟', 1, NULL, '41', 1546568194747, '41', 1546568199082, 0);

-- ----------------------------
-- Table structure for biz_enroll_user
-- ----------------------------
DROP TABLE IF EXISTS `biz_enroll_user`;
CREATE TABLE `biz_enroll_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一id',
  `groupId` bigint(20) NOT NULL COMMENT '分组id',
  `enrollId` bigint(20) NOT NULL COMMENT '报名id',
  `studentId` bigint(20) NULL DEFAULT NULL COMMENT '学生id',
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `nickName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `creator` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createDate` bigint(20) NOT NULL COMMENT '创建时间',
  `lastModifier` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  `lastModDate` bigint(20) NOT NULL COMMENT '修改时间',
  `status` tinyint(4) NOT NULL COMMENT '状态 0-启用，1-停用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `AK_uq_enrollId_userId`(`enrollId`, `userId`) USING BTREE,
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`enrollId`) REFERENCES `biz_enroll` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '活动报名名单表，类似接龙游戏' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of biz_enroll_user
-- ----------------------------
INSERT INTO `biz_enroll_user` VALUES (16, 64, 24, NULL, 14, '鱼丸粗面鱼丸粗面鱼丸', '', '14', 1545816740627, '14', 1545816740627, 0);
INSERT INTO `biz_enroll_user` VALUES (17, 64, 26, NULL, 14, '鱼丸粗面鱼丸粗面鱼丸', '', '14', 1545817244826, '14', 1545817244826, 1);
INSERT INTO `biz_enroll_user` VALUES (18, 64, 28, NULL, 14, '鱼丸粗面鱼丸粗面鱼丸', '', '14', 1545899897849, '14', 1545899897849, 0);
INSERT INTO `biz_enroll_user` VALUES (19, 64, 27, NULL, 14, '鱼丸粗面鱼丸粗面鱼丸', '', '14', 1545899967106, '14', 1545899967106, 0);
INSERT INTO `biz_enroll_user` VALUES (20, 64, 28, NULL, 24, 'test', '', '24', 1545959056645, '24', 1545959056645, 0);
INSERT INTO `biz_enroll_user` VALUES (21, 64, 33, NULL, 14, '鱼丸粗面鱼丸粗面鱼丸', '', '14', 1545960385165, '14', 1545960385165, 1);
INSERT INTO `biz_enroll_user` VALUES (22, 64, 33, NULL, 24, 'test', '', '24', 1545960412907, '24', 1545960412907, 0);
INSERT INTO `biz_enroll_user` VALUES (23, 64, 33, NULL, 18, '依依酱Rorita.Chiang', '', '18', 1545960481850, '18', 1545960481850, 0);
INSERT INTO `biz_enroll_user` VALUES (24, 64, 32, NULL, 14, '鱼丸粗面鱼丸粗面鱼丸', '测试字数字数字数测试字数字数', '14', 1545960900164, '14', 1545960900164, 1);
INSERT INTO `biz_enroll_user` VALUES (25, 64, 34, NULL, 24, 'test', '212222222222222222222222222222222222222222222222', '24', 1545961024958, '24', 1545961024958, 1);
INSERT INTO `biz_enroll_user` VALUES (26, 64, 43, NULL, 14, '鱼丸粗面鱼丸粗面鱼丸', '', '14', 1545981415980, '14', 1545981415980, 0);
INSERT INTO `biz_enroll_user` VALUES (29, 87, 56, NULL, 41, '林悦伟', 'xixi', '41', 1546413703425, '41', 1546413703425, 0);
INSERT INTO `biz_enroll_user` VALUES (30, 64, 69, NULL, 24, '李小白', '', '24', 1546480169185, '24', 1546480169185, 0);
INSERT INTO `biz_enroll_user` VALUES (31, 64, 69, NULL, 14, '蔡老师', '测试字数字数字数字数字数字数字数字数字数', '14', 1546480178214, '14', 1546480178214, 0);
INSERT INTO `biz_enroll_user` VALUES (32, 64, 87, NULL, 14, '蔡老师', '备注字数统计备注字数统计备注字数统计备注', '14', 1546482298837, '14', 1546482298837, 0);
INSERT INTO `biz_enroll_user` VALUES (33, 64, 92, NULL, 14, '蔡老师', '', '14', 1546482363244, '14', 1546482363244, 0);
INSERT INTO `biz_enroll_user` VALUES (34, 64, 92, NULL, 24, '李小白', '', '24', 1546482373518, '24', 1546482373518, 0);
INSERT INTO `biz_enroll_user` VALUES (35, 64, 92, NULL, 18, '蒋依依', '', '18', 1546482402649, '18', 1546482402649, 1);
INSERT INTO `biz_enroll_user` VALUES (36, 64, 93, NULL, 18, '蒋依依', '', '18', 1546482451574, '18', 1546482451574, 0);
INSERT INTO `biz_enroll_user` VALUES (37, 64, 93, NULL, 14, '蔡老师', '', '14', 1546482454800, '14', 1546482454800, 0);
INSERT INTO `biz_enroll_user` VALUES (38, 64, 93, NULL, 24, '李小白', '', '24', 1546482461152, '24', 1546482461152, 0);
INSERT INTO `biz_enroll_user` VALUES (39, 87, 103, NULL, 41, '林悦伟', '测试', '41', 1546485062992, '41', 1546485062992, 0);
INSERT INTO `biz_enroll_user` VALUES (40, 64, 107, NULL, 14, '蔡老师', '', '14', 1546487313088, '14', 1546487313088, 1);
INSERT INTO `biz_enroll_user` VALUES (41, 64, 107, NULL, 24, '李小白', '', '24', 1546487342110, '24', 1546487342110, 0);
INSERT INTO `biz_enroll_user` VALUES (42, 64, 109, NULL, 14, '蔡老师', '', '14', 1546487654894, '14', 1546487654894, 0);
INSERT INTO `biz_enroll_user` VALUES (43, 64, 109, NULL, 18, '蒋依依', '报名', '18', 1546487664373, '18', 1546487664373, 0);
INSERT INTO `biz_enroll_user` VALUES (44, 64, 110, NULL, 14, '蔡老师', '测试备注信息', '14', 1546495777703, '14', 1546495777703, 0);
INSERT INTO `biz_enroll_user` VALUES (45, 64, 34, NULL, 14, '蔡老师', '', '14', 1546495963509, '14', 1546495963509, 0);
INSERT INTO `biz_enroll_user` VALUES (46, 64, 115, NULL, 14, '蔡老师', '', '14', 1546497675338, '14', 1546497675338, 0);
INSERT INTO `biz_enroll_user` VALUES (47, 64, 116, NULL, 14, '蔡老师', '', '14', 1546498917641, '14', 1546498917641, 0);
INSERT INTO `biz_enroll_user` VALUES (48, 64, 138, NULL, 14, '蔡老师', '', '14', 1546501261165, '14', 1546501261165, 0);
INSERT INTO `biz_enroll_user` VALUES (49, 64, 140, NULL, 14, '蔡老师', '', '14', 1546504787269, '14', 1546504787269, 0);
INSERT INTO `biz_enroll_user` VALUES (50, 64, 140, NULL, 24, '李小白', '', '24', 1546504790696, '24', 1546504790696, 0);
INSERT INTO `biz_enroll_user` VALUES (51, 64, 140, NULL, 41, '林悦伟', '未阅', '41', 1546505577016, '41', 1546505577016, 0);
INSERT INTO `biz_enroll_user` VALUES (52, 64, 143, NULL, 41, '林悦伟', 'userInfo', '41', 1546509878222, '41', 1546509878222, 0);
INSERT INTO `biz_enroll_user` VALUES (53, 88, 148, NULL, 18, '吉永老师', '我要报名，这是报名文字备注', '18', 1546566310314, '18', 1546566310314, 0);

-- ----------------------------
-- Table structure for biz_message
-- ----------------------------
DROP TABLE IF EXISTS `biz_message`;
CREATE TABLE `biz_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupId` bigint(20) NOT NULL COMMENT '所属群组id',
  `sourceId` bigint(20) NOT NULL COMMENT '所属业务表id',
  `sourceCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '来源标识编码,通常是sourceId所对应的表名，如biz_notice表示通知；biz_enroll表示报名；',
  `messageTitle` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '消息名称',
  `messageContent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '消息内容',
  `creatorName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建者名称',
  `creator` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createDate` bigint(20) NOT NULL COMMENT '创建时间',
  `lastModifier` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  `lastModDate` bigint(20) NOT NULL COMMENT '修改时间',
  `status` tinyint(4) NOT NULL COMMENT '状态 0-启用，1-停用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_GROUP_ID`(`groupId`) USING BTREE,
  CONSTRAINT `FK_REF_MESSAGE_GROUP_ID` FOREIGN KEY (`groupId`) REFERENCES `bas_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '消息总表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of biz_message
-- ----------------------------
INSERT INTO `biz_message` VALUES (61, 69, 51, 'biz_notice', '通知标题', '内容内容', '依依酱Rorita.Chiang', '18', 1545810413417, '18', 1545810413417, 0);
INSERT INTO `biz_message` VALUES (62, 64, 52, 'biz_notice', '测试', '澳大利亚、英国和新西兰已经加入美国的行列，将华为的设备排除在下一代5G移动网络之外。本月早些时候，日本也禁止华为和另一家中国技术供应商中兴(ZTE)获得政府合同，以防止敏感数据泄露。市场研究公司IDC公布数据显示，华为约占2017年全球智能手机市场10.4%的份额，落后于三星的21.6%以及苹果的14.7%。但在4月到6月份的第二季度，华为手机', '鱼丸粗面', '14', 1545810503597, '14', 1545810503597, 0);
INSERT INTO `biz_message` VALUES (63, 69, 22, 'biz_enroll', '报名报名', '内容内容内容', '依依酱Rorita.Chiang', '18', 1545810506543, '18', 1545810506543, 0);
INSERT INTO `biz_message` VALUES (64, 66, 53, 'biz_notice', '1', '2', 'go', '21', 1545816567048, '21', 1545816567048, 0);
INSERT INTO `biz_message` VALUES (65, 64, 54, 'biz_notice', '33', '333', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545816602281, '14', 1545816602281, 0);
INSERT INTO `biz_message` VALUES (66, 66, 23, 'biz_enroll', '1', '2', 'go', '21', 1545816659843, '21', 1545816659843, 0);
INSERT INTO `biz_message` VALUES (67, 64, 24, 'biz_enroll', '报名', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545816671692, '14', 1545816671692, 0);
INSERT INTO `biz_message` VALUES (68, 64, 25, 'biz_enroll', 'ttt', 'yyy', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545816913414, '14', 1545816913414, 0);
INSERT INTO `biz_message` VALUES (69, 64, 26, 'biz_enroll', '2', '2', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545816944596, '14', 1545816944596, 0);
INSERT INTO `biz_message` VALUES (70, 66, 55, 'biz_notice', '1', '2', 'go', '21', 1545879951398, '21', 1545879951398, 0);
INSERT INTO `biz_message` VALUES (71, 64, 56, 'biz_notice', '学校通知信息', '1111', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545895840345, '14', 1545895840345, 0);
INSERT INTO `biz_message` VALUES (72, 64, 27, 'biz_enroll', '1121221', '121212', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545895895020, '14', 1545895895020, 0);
INSERT INTO `biz_message` VALUES (73, 64, 28, 'biz_enroll', '111', '1111', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545895937769, '14', 1545895937769, 0);
INSERT INTO `biz_message` VALUES (74, 64, 57, 'biz_notice', '333', '33333', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545896014977, '14', 1545896014977, 0);
INSERT INTO `biz_message` VALUES (75, 64, 58, 'biz_notice', '22', '2222', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545896093704, '14', 1545896093704, 0);
INSERT INTO `biz_message` VALUES (76, 64, 29, 'biz_enroll', '12121212', '1212', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545896144317, '14', 1545896144317, 0);
INSERT INTO `biz_message` VALUES (77, 71, 59, 'biz_notice', '交学费', '内容内容内容内容内容 ', 'koyuhau', '15', 1545898709104, '15', 1545898709104, 0);
INSERT INTO `biz_message` VALUES (78, 64, 60, 'biz_notice', '222', '22222', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545899325518, '14', 1545899325518, 0);
INSERT INTO `biz_message` VALUES (79, 64, 61, 'biz_notice', '121221', '121221', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545899549016, '14', 1545899549016, 0);
INSERT INTO `biz_message` VALUES (80, 73, 62, 'biz_notice', '班级通知测试', '测试内容', 'test', '24', 1545901156273, '24', 1545901156273, 0);
INSERT INTO `biz_message` VALUES (81, 73, 70, 'biz_notice', '测试字数', '据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动物园的成年雄性华南虎“康康”，报道称保存样本的容器能够隔绝空间辐射、防止瞬间高温等功能，可以实现生物基因的太空永久在轨保存。', 'test', '24', 1545901981445, '24', 1545901981445, 0);
INSERT INTO `biz_message` VALUES (82, 73, 30, 'biz_enroll', '33333', '3333', 'test', '24', 1545958760779, '24', 1545958760779, 0);
INSERT INTO `biz_message` VALUES (83, 64, 31, 'biz_enroll', '测试', '测试字数', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545960031099, '14', 1545960031099, 0);
INSERT INTO `biz_message` VALUES (84, 64, 32, 'biz_enroll', '额额呃呃呃', '得得得', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545960138601, '14', 1545960138601, 0);
INSERT INTO `biz_message` VALUES (85, 64, 33, 'biz_enroll', '字数字数字数字数字数字数字数字数字数字数', '此前有媒体报道，12月27日，国家市场监管总局相关负责人就“百亿保健帝国” 权健自然医学科技发展有限公司引发争议一事表示，总局已经关注到网络舆情，相关业务司局正在了解情况。权健总部所在地天津方面12月27日发布消息称，天津市委、市政府高度重视，责成市市场监管委、市卫健委和武清区等相关部门成立联合调查', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545960204717, '14', 1545960204717, 0);
INSERT INTO `biz_message` VALUES (86, 64, 43, 'biz_enroll', '测试图片', '图片', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545962969078, '14', 1545962969078, 0);
INSERT INTO `biz_message` VALUES (87, 66, 46, 'biz_enroll', 'test', '1111', 'go', '21', 1545963658103, '21', 1545963658103, 0);
INSERT INTO `biz_message` VALUES (88, 66, 47, 'biz_enroll', '2', '3', 'go', '21', 1545964092286, '21', 1545964092286, 0);
INSERT INTO `biz_message` VALUES (89, 66, 71, 'biz_notice', 'tt', 'tt', 'go', '21', 1545964126989, '21', 1545964126989, 0);
INSERT INTO `biz_message` VALUES (90, 66, 51, 'biz_enroll', '111', '22222', 'go', '21', 1545964865048, '21', 1545964865048, 0);
INSERT INTO `biz_message` VALUES (91, 64, 72, 'biz_notice', '测试返回', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545981462720, '14', 1545981462720, 0);
INSERT INTO `biz_message` VALUES (92, 64, 52, 'biz_enroll', '测试返回', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545981481026, '14', 1545981481026, 0);
INSERT INTO `biz_message` VALUES (93, 64, 73, 'biz_notice', '测试返回返回', '测试返回', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545981539847, '14', 1545981539847, 0);
INSERT INTO `biz_message` VALUES (94, 64, 53, 'biz_enroll', '返回', '返回', '鱼丸粗面鱼丸粗面鱼丸', '14', 1545981553593, '14', 1545981553593, 0);
INSERT INTO `biz_message` VALUES (95, 87, 74, 'biz_notice', '测试通知', '测试内容', 'lyw', '41', 1546393708039, '41', 1546393708039, 0);
INSERT INTO `biz_message` VALUES (96, 87, 54, 'biz_enroll', '来报名', '来报名', 'lyw', '41', 1546394000797, '41', 1546394000797, 0);
INSERT INTO `biz_message` VALUES (97, 87, 55, 'biz_enroll', 'ceshi1', '123123', 'lyw', '41', 1546394036791, '41', 1546394036791, 0);
INSERT INTO `biz_message` VALUES (98, 88, 75, 'biz_notice', '转发通知', '转发通知转发通知', '依依酱Rorita.Chiang', '18', 1546396536601, '18', 1546396536601, 0);
INSERT INTO `biz_message` VALUES (99, 87, 76, 'biz_notice', '多张图片测试', '测试', 'lyw', '41', 1546397001053, '41', 1546397001053, 0);
INSERT INTO `biz_message` VALUES (100, 87, 78, 'biz_notice', '300字通知', '2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知232', 'lyw', '41', 1546397499023, '41', 1546397499023, 0);
INSERT INTO `biz_message` VALUES (101, 87, 56, 'biz_enroll', 'ces', '12312', 'lyw', '41', 1546411601369, '41', 1546411601369, 0);
INSERT INTO `biz_message` VALUES (102, 87, 79, 'biz_notice', 'ccc', 'cccc', 'lyw', '41', 1546415471483, '41', 1546415471483, 0);
INSERT INTO `biz_message` VALUES (103, 87, 80, 'biz_notice', 'ccc', 'ccc', 'lyw', '41', 1546415752059, '41', 1546415752059, 0);
INSERT INTO `biz_message` VALUES (104, 87, 81, 'biz_notice', 'waht', 'what', 'lyw', '41', 1546416818894, '41', 1546416818894, 0);
INSERT INTO `biz_message` VALUES (105, 87, 82, 'biz_notice', '测试一下', '测试', 'lyw', '41', 1546417026793, '41', 1546417026793, 0);
INSERT INTO `biz_message` VALUES (106, 95, 83, 'biz_notice', '测试', '测试', 'test', '24', 1546417389758, '24', 1546417389758, 0);
INSERT INTO `biz_message` VALUES (107, 95, 84, 'biz_notice', '1', '11', 'test', '24', 1546417578872, '24', 1546417578872, 0);
INSERT INTO `biz_message` VALUES (108, 64, 85, 'biz_notice', '测试图片', '测试图片', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546417792501, '14', 1546417792501, 0);
INSERT INTO `biz_message` VALUES (109, 64, 86, 'biz_notice', '测试', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546417958825, '14', 1546417958825, 0);
INSERT INTO `biz_message` VALUES (110, 64, 87, 'biz_notice', '0102', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546420614550, '14', 1546420614550, 0);
INSERT INTO `biz_message` VALUES (111, 87, 67, 'biz_enroll', 'ceshi123', '123123', 'lyw', '41', 1546479606873, '41', 1546479606873, 0);
INSERT INTO `biz_message` VALUES (112, 87, 68, 'biz_enroll', '123', '123', 'lyw', '41', 1546479919341, '41', 1546479919341, 0);
INSERT INTO `biz_message` VALUES (113, 64, 88, 'biz_notice', '测试保存通知', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546480010217, '14', 1546480010217, 0);
INSERT INTO `biz_message` VALUES (114, 64, 69, 'biz_enroll', '测试保存报名', '测试保存', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546480143516, '14', 1546480143515, 0);
INSERT INTO `biz_message` VALUES (115, 64, 70, 'biz_enroll', '测试字数', '铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行时间按计划自动调整、到达车站精确停车、停车后自动开门等功能。\n\nATO的工作流程是这样的，“地面调度中心制定好行车计划后，通过地面的数据传输网络把计划送到ATO的地面设备，这个设备再通过铁路移动通信网，把计划发送给动车组上的ATO车载设备。”铁科院专家介绍说，ATO车载设备收到计划以后，根据动车组当前的位置，计算出控制速度曲线，代替司机自动控制动车组的加速、运行、减速、停车、开车门等。', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546481598226, '14', 1546481598226, 0);
INSERT INTO `biz_message` VALUES (116, 64, 85, 'biz_enroll', '测试字数字数字数', '铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行时间按计划自动调整、到达车站精确停车、停车后自动开门等功能。\n\nATO的工作流程是这样的，“地面调度中心制定好行车计划后，通过地面的数据传输网络把计划送到ATO的地面设备，这个设备再通过铁路移动通信网，把计划发送给动车组上的ATO车载设备。”铁科院专家介绍说，ATO车载设备收到计划以后，根据动车组当前的位置，计算出控制速度曲线，代替司机自动控制动车组的加速、运行、减速、停车、开车门等。', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546481823647, '14', 1546481823647, 0);
INSERT INTO `biz_message` VALUES (117, 64, 86, 'biz_enroll', '测试字数字数测试', '铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行时间按计划自动调整、到达车站精确停车、停车后自动开门等功能。\n\nATO的工作流程是这样的，“地面调度中心制定好行车计划后，通过地面的数据传输网络把计划送到ATO的地面设备，这个设备再通过铁路移动通信网，把计划发送给动车组上的ATO车载设备。”铁科院专家介绍说，ATO车载设备收到计划以后，根据动车组当前的位置，计算出控制速度曲线，代替司机自动控制动车组的加速、运行、减速、停车、开车门等。000', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546481869370, '14', 1546481869370, 0);
INSERT INTO `biz_message` VALUES (118, 64, 87, 'biz_enroll', '300个字', '铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行时间按计划自动调整、到达车站精确停车、停车后自动开门等功能。\n\nATO的工作流程是这样的，“地面调度中心制定好行车计划后，通过地面的数据传输网络把计划送到ATO的地面设备，这个设备再通过铁路移动通信网，把计划发送给动车组上的ATO车载设备。”铁科院专家介绍说，ATO车载设备收到计划以后，根据动车组当前的位置，计算出控制速度曲线，代替司机自动控制动车组的加速、运行、减速、停车、开车门等。ghgcvvhh讨论组突突突看见蛇兔兔龙弄极乐净土弄某些旅途我的呢农历图看看突突突突突突我饿的推荐具体的', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546481941395, '14', 1546481941395, 0);
INSERT INTO `biz_message` VALUES (119, 64, 89, 'biz_notice', '字数字数', '铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行时间按计划自动调整、到达车站精确停车、停车后自动开门等功能。\n\nATO的工作流程是这样的，“地面调度中心制定好行车计划后，通过地面的数据传输网络把计划送到ATO的地面设备，这个设备再通过铁路移动通信网，把计划发送给动车组上的ATO车载设备。”铁科院专家介绍说，ATO车载设备收到计划以后，根据动车组当前的位置，计算出控制速度曲线，代替司机自动控制动车组的加速、运行、减速、停车、开车门等。铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546481983731, '14', 1546481983731, 0);
INSERT INTO `biz_message` VALUES (120, 64, 90, 'biz_notice', '测试', '铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行时间按计划自动调整、到达车站精确停车、停车后自动开门等功能。\n\nATO的工作流程是这样的，“地面调度中心制定好行车计划后，通过地面的数据传输网络把计划送到ATO的地面设备，这个设备再通过铁路移动通信网，把计划发送给动车组上的ATO车载设备。”铁科院专家介绍说，ATO车载设备收到计划以后，根据动车组当前的位置，计算出控制速度曲线，代替司机自动控制动车组的加速、运行、减速、停车、开车门等。铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546482005695, '14', 1546482005695, 0);
INSERT INTO `biz_message` VALUES (121, 64, 91, 'biz_notice', '字数字数字数字数字数字数字数字数字数字数', '铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行时间按计划自动调整、到达车站精确停车、停车后自动开门等功能。\n\nATO的工作流程是这样的，“地面调度中心制定好行车计划后，通过地面的数据传输网络把计划送到ATO的地面设备，这个设备再通过铁路移动通信网，把计划发送给动车组上的ATO车载设备。”铁科院专家介绍说，ATO车载设备收到计划以后，根据动车组当前的位置，计算出控制速度曲线，代替司机自动控制动车组的加速、运行、减速、停车、开车门等。铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546482126368, '14', 1546482126368, 0);
INSERT INTO `biz_message` VALUES (122, 64, 92, 'biz_enroll', '测试报名名额', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546482360282, '14', 1546482360282, 0);
INSERT INTO `biz_message` VALUES (123, 64, 93, 'biz_enroll', '名额', '名额', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546482444528, '14', 1546482444528, 0);
INSERT INTO `biz_message` VALUES (124, 87, 94, 'biz_enroll', '123123', '测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名测试报名', 'lyw', '41', 1546482487862, '41', 1546482487862, 0);
INSERT INTO `biz_message` VALUES (125, 64, 92, 'biz_notice', '测试图片', '图片', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546482972334, '14', 1546482972334, 0);
INSERT INTO `biz_message` VALUES (126, 64, 93, 'biz_notice', '测试', '图片', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546483063119, '14', 1546483063119, 0);
INSERT INTO `biz_message` VALUES (127, 87, 95, 'biz_enroll', '测试通知', '测试', 'lyw', '41', 1546483433137, '41', 1546483433137, 0);
INSERT INTO `biz_message` VALUES (128, 64, 94, 'biz_notice', '测试', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546483628321, '14', 1546483628321, 0);
INSERT INTO `biz_message` VALUES (129, 87, 96, 'biz_enroll', '多张图片测试', '多张测试', 'lyw', '41', 1546483637963, '41', 1546483637963, 0);
INSERT INTO `biz_message` VALUES (130, 87, 101, 'biz_enroll', '一人报名', '暗示', 'lyw', '41', 1546484980853, '41', 1546484980853, 0);
INSERT INTO `biz_message` VALUES (131, 87, 102, 'biz_enroll', '测试2', '啊二货', 'lyw', '41', 1546485009459, '41', 1546485009459, 0);
INSERT INTO `biz_message` VALUES (132, 87, 103, 'biz_enroll', '测试3', '测试4', 'lyw', '41', 1546485049589, '41', 1546485049589, 0);
INSERT INTO `biz_message` VALUES (133, 64, 106, 'biz_enroll', '测试字数字数字数字数字数', '作为全球普惠金融的发源地，孟加拉是一个人口超过1.6亿的典型“小鲜肉之国”，人口平均年龄偏年轻。但大部分支付交易还在使用现金，数字金融服务需求强烈。双11前半年，孟加拉国移动支付公司bKash和蚂蚁金服合作，蚂蚁金服提供技术支持，与bKash共同打造了本地版支付宝。\n\n“这种合作形式，是支付宝目前着力最大的，也是海外支付攻坚最难的一种形式。”蚂蚁金服国际事业群技术研究员熊务真告诉《中国企业家》。他介绍，支付宝的海外之路经历了三个阶段。\n\n第一个阶段是打通在线全球网络，实现全球买全球卖。这与阿里的原始基因有关。起初，随着阿里业务的全球化，支付宝作为支付工具跟进，初衷是为了解决电商平台淘宝和天猫的', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546487216401, '14', 1546487216401, 0);
INSERT INTO `biz_message` VALUES (134, 64, 107, 'biz_enroll', '测试字数字数字数字数字数字数字数字数字数', '作为全球普惠金融的发源地，孟加拉是一个人口超过1.6亿的典型“小鲜肉之国”，人口平均年龄偏年轻。但大部分支付交易还在使用现金，数字金融服务需求强烈。双11前半年，孟加拉国移动支付公司bKash和蚂蚁金服合作，蚂蚁金服提供技术支持，与bKash共同打造了本地版支付宝。\n\n“这种合作形式，是支付宝目前着力最大的，也是海外支付攻坚最难的一种形式。”蚂蚁金服国际事业群技术研究员熊务真告诉《中国企业家》。他介绍，支付宝的海外之路经历了三个阶段。\n\n第一个阶段是打通在线全球网络，实现全球买全球卖。这与阿里的原始基因有关。起初，随着阿里业务的全球化，支付宝作为支付工具跟进，初衷是为了解决电商平台淘宝和天猫的', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546487307094, '14', 1546487307094, 0);
INSERT INTO `biz_message` VALUES (135, 64, 108, 'biz_enroll', '测试人数', '测试人数', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546487612050, '14', 1546487612050, 0);
INSERT INTO `biz_message` VALUES (136, 64, 109, 'biz_enroll', '人数越多越好', '人数', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546487648620, '14', 1546487648620, 0);
INSERT INTO `biz_message` VALUES (137, 64, 95, 'biz_notice', '测试', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546487759088, '14', 1546487759088, 0);
INSERT INTO `biz_message` VALUES (138, 64, 110, 'biz_enroll', '测', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546487840884, '14', 1546487840884, 0);
INSERT INTO `biz_message` VALUES (139, 64, 96, 'biz_notice', '测试', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546487880745, '14', 1546487880745, 0);
INSERT INTO `biz_message` VALUES (140, 87, 111, 'biz_enroll', '测试的233', '测试444', 'lyw', '41', 1546488034671, '41', 1546488034671, 0);
INSERT INTO `biz_message` VALUES (141, 87, 112, 'biz_enroll', '测试2', '123', 'lyw', '41', 1546496510663, '41', 1546496510663, 0);
INSERT INTO `biz_message` VALUES (142, 64, 113, 'biz_enroll', '测试', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546497618802, '14', 1546497618802, 0);
INSERT INTO `biz_message` VALUES (143, 64, 114, 'biz_enroll', '测试', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546497637421, '14', 1546497637421, 0);
INSERT INTO `biz_message` VALUES (144, 64, 115, 'biz_enroll', '测试人数', '测试字数', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546497663041, '14', 1546497663041, 0);
INSERT INTO `biz_message` VALUES (145, 64, 97, 'biz_notice', '测试', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546497726263, '14', 1546497726263, 0);
INSERT INTO `biz_message` VALUES (146, 64, 98, 'biz_notice', '测试缩略图', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546497855897, '14', 1546497855897, 0);
INSERT INTO `biz_message` VALUES (147, 64, 116, 'biz_enroll', '测试预览图', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546498049657, '14', 1546498049657, 0);
INSERT INTO `biz_message` VALUES (148, 64, 117, 'biz_enroll', '测试字数字数字数', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546498508837, '14', 1546498508837, 0);
INSERT INTO `biz_message` VALUES (149, 64, 118, 'biz_enroll', '测试图片', '图片', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546499058724, '14', 1546499058724, 0);
INSERT INTO `biz_message` VALUES (150, 87, 119, 'biz_enroll', '测试上传速度', '测试', 'lyw', '41', 1546499383898, '41', 1546499383898, 0);
INSERT INTO `biz_message` VALUES (151, 74, 120, 'biz_enroll', '11', '11', 'test', '24', 1546499620875, '24', 1546499620875, 0);
INSERT INTO `biz_message` VALUES (152, 74, 121, 'biz_enroll', '1111', '1111', 'test', '24', 1546499656048, '24', 1546499656048, 0);
INSERT INTO `biz_message` VALUES (153, 74, 99, 'biz_notice', '12121', '2121212112', 'test', '24', 1546499691884, '24', 1546499691884, 0);
INSERT INTO `biz_message` VALUES (154, 87, 100, 'biz_notice', 'ceshi1', '123', 'lyw', '41', 1546499778523, '41', 1546499778523, 0);
INSERT INTO `biz_message` VALUES (155, 87, 122, 'biz_enroll', 'ccc', 'ccc', 'lyw', '41', 1546499803231, '41', 1546499803231, 0);
INSERT INTO `biz_message` VALUES (156, 87, 101, 'biz_notice', 'testse12', 'asdfasdf', 'lyw', '41', 1546499923180, '41', 1546499923180, 0);
INSERT INTO `biz_message` VALUES (157, 87, 123, 'biz_enroll', 'ccc', 'ccc', 'lyw', '41', 1546499997196, '41', 1546499997196, 0);
INSERT INTO `biz_message` VALUES (158, 64, 102, 'biz_notice', '测试图片', '图片', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546500085309, '14', 1546500085309, 0);
INSERT INTO `biz_message` VALUES (159, 64, 124, 'biz_enroll', '图片', '图片', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546500119355, '14', 1546500119355, 0);
INSERT INTO `biz_message` VALUES (160, 64, 125, 'biz_enroll', '图片测试', '图片测试变形金刚》系列首部独立电影《大黄蜂》将于2019年1月4日登陆内地各大院线，影片预售正在火热进行中。今日，片方发布“火力全开”预告，震撼变形和刺激对战令人应接不暇，精致特效将变形金刚宇宙的宏大以及大黄蜂超级英雄气概展现得淋漓尽致。变形金刚》系列首部独立电影《大黄蜂》将于2019年1月4日登陆内地各大院线，影片预售正在火热进行中。今日，片方发布“火力全开”预告，震撼变形和刺激对战令人应接不暇，精致特效将变形金刚宇宙的宏大以及大黄蜂超级英雄气概展现得淋漓尽致。', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546500227133, '14', 1546500227133, 0);
INSERT INTO `biz_message` VALUES (161, 64, 126, 'biz_enroll', '图片', '图片', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546500275232, '14', 1546500275232, 0);
INSERT INTO `biz_message` VALUES (162, 64, 103, 'biz_notice', '测试', '测试字数字数', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546500310892, '14', 1546500310892, 0);
INSERT INTO `biz_message` VALUES (163, 87, 127, 'biz_enroll', '1231', '123123', 'lyw', '41', 1546500361085, '41', 1546500361085, 0);
INSERT INTO `biz_message` VALUES (164, 87, 128, 'biz_enroll', '测试', '测试2444', 'lyw', '41', 1546500422656, '41', 1546500422656, 0);
INSERT INTO `biz_message` VALUES (165, 74, 129, 'biz_enroll', '222', '22', 'test', '24', 1546500465252, '24', 1546500465252, 0);
INSERT INTO `biz_message` VALUES (166, 64, 130, 'biz_enroll', '测试图片', '图片变形金刚》系列首部独立电影《大黄蜂》将于2019年1月4日登陆内地各大院线，影片预售正在火热进行中。今日，片方发布“火力全开”预告，震撼变形和刺激对战令人应接不暇，精致特效将变形金刚宇宙的宏大以及大黄蜂超级英雄气概展现得淋漓尽致。变形金刚》系列首部独立电影《大黄蜂》将于2019年1月4日登陆内地各大院线，影片预售正在火热进行中。今日，片方发布“火力全开”预告，震撼变形和刺激对战令人应接不暇，精致特效将变形金刚宇宙的宏大以及大黄蜂超级英雄气概展现得淋漓尽致。变形金刚》系列首部独立电影《大黄蜂》将于2019年1月4日登陆内地各大院线，影片预售正在火热进行中。今日，片方发布“火力全开”预告，震撼', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546500687916, '14', 1546500687916, 0);
INSERT INTO `biz_message` VALUES (167, 64, 131, 'biz_enroll', '测试字数字数字数字数', '变形金刚》系列首部独立电影《大黄蜂》将于2019年1月4日登陆内地各大院线，影片预售正在火热进行中。今日，片方发布“火力全开”预告，震撼变形和刺激对战令人应接不暇，精致特效将变形金刚宇宙的宏大以及大黄蜂超级英雄气概展现得淋漓尽致。', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546500724277, '14', 1546500724277, 0);
INSERT INTO `biz_message` VALUES (168, 64, 132, 'biz_enroll', '测试', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546500743323, '14', 1546500743323, 0);
INSERT INTO `biz_message` VALUES (169, 64, 133, 'biz_enroll', '测试', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546500787235, '14', 1546500787235, 0);
INSERT INTO `biz_message` VALUES (170, 64, 134, 'biz_enroll', '测试', '测评', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546500826524, '14', 1546500826524, 0);
INSERT INTO `biz_message` VALUES (171, 64, 104, 'biz_notice', '测试', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546501026693, '14', 1546501026693, 0);
INSERT INTO `biz_message` VALUES (172, 64, 135, 'biz_enroll', '测试', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546501119037, '14', 1546501119037, 0);
INSERT INTO `biz_message` VALUES (173, 64, 136, 'biz_enroll', '测试', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546501197373, '14', 1546501197373, 0);
INSERT INTO `biz_message` VALUES (174, 64, 137, 'biz_enroll', '测试', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546501211380, '14', 1546501211380, 0);
INSERT INTO `biz_message` VALUES (175, 64, 138, 'biz_enroll', '测试', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546501251345, '14', 1546501251345, 0);
INSERT INTO `biz_message` VALUES (176, 96, 105, 'biz_notice', '1', '5', 'go', '21', 1546502211757, '21', 1546502211757, 0);
INSERT INTO `biz_message` VALUES (177, 96, 139, 'biz_enroll', '报名', '123', 'go', '21', 1546502249019, '21', 1546502249019, 0);
INSERT INTO `biz_message` VALUES (178, 64, 106, 'biz_notice', '测试转发', '转发', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546504695742, '14', 1546504695742, 0);
INSERT INTO `biz_message` VALUES (179, 64, 140, 'biz_enroll', '测试转发', '转发', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546504765379, '14', 1546504765379, 0);
INSERT INTO `biz_message` VALUES (180, 90, 107, 'biz_notice', '没加入转发', '没加入', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546504836502, '14', 1546504836502, 0);
INSERT INTO `biz_message` VALUES (181, 89, 141, 'biz_enroll', '没加入转发', '转发', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546504896527, '14', 1546504896527, 0);
INSERT INTO `biz_message` VALUES (182, 79, 108, 'biz_notice', '111', '111', 'test', '24', 1546505203022, '24', 1546505203022, 0);
INSERT INTO `biz_message` VALUES (183, 73, 142, 'biz_enroll', '测试没加入报名', '1111', 'test', '24', 1546505642907, '24', 1546505642907, 0);
INSERT INTO `biz_message` VALUES (184, 75, 109, 'biz_notice', '11', '1', 'test', '24', 1546505828029, '24', 1546505828029, 0);
INSERT INTO `biz_message` VALUES (185, 64, 143, 'biz_enroll', '额额呃呃呃', '德德玛德', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546505938597, '14', 1546505938597, 0);
INSERT INTO `biz_message` VALUES (186, 73, 144, 'biz_enroll', '2222', '222', 'test', '24', 1546506109696, '24', 1546506109696, 0);
INSERT INTO `biz_message` VALUES (187, 73, 145, 'biz_enroll', '333', '3333', 'test', '24', 1546506157067, '24', 1546506157067, 0);
INSERT INTO `biz_message` VALUES (188, 87, 146, 'biz_enroll', '上传stes', '123123', 'lyw', '41', 1546509201230, '41', 1546509201230, 0);
INSERT INTO `biz_message` VALUES (189, 87, 110, 'biz_notice', '手工', '123123', 'lyw', '41', 1546509430273, '41', 1546509430273, 0);
INSERT INTO `biz_message` VALUES (190, 87, 111, 'biz_notice', 'ccc', 'ccc', 'lyw', '41', 1546509621334, '41', 1546509621334, 0);
INSERT INTO `biz_message` VALUES (191, 88, 147, 'biz_enroll', '秋季运动会接力赛跑报名', '秋季校园运动会要开始啦！接力赛要求每个班级派出10名代表参加，以接力的形式共同跑完五百米！请有意向或者有短跑特长的同学报名参加。', '依依酱Rorita.Chiang', '18', 1546563998015, '18', 1546563998015, 0);
INSERT INTO `biz_message` VALUES (192, 88, 148, 'biz_enroll', '春季运动会接力跑比赛报名', '春季运动会接力比赛要求每个班级派出5名代表参加接力比赛，要求每个同学以接力的形式共同跑完500米，请有意向或有跑步特长的同学踊跃报名参加！', '依依酱Rorita.Chiang', '18', 1546565214403, '18', 1546565214403, 0);
INSERT INTO `biz_message` VALUES (193, 88, 112, 'biz_notice', '班费收缴通知', '每位同学需缴纳50元班费，作为班级活动经费使用，请于1月1日前交至班主任处。', '依依酱Rorita.Chiang', '18', 1546566243881, '18', 1546566243881, 0);
INSERT INTO `biz_message` VALUES (194, 87, 113, 'biz_notice', 'ccc', 'ccc', 'lyw', '41', 1546567556099, '41', 1546567556099, 0);
INSERT INTO `biz_message` VALUES (195, 87, 149, 'biz_enroll', '测试', '测试', 'lyw', '41', 1546568194699, '41', 1546568194699, 0);
INSERT INTO `biz_message` VALUES (196, 64, 114, 'biz_notice', 'qqq', 'qqq', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546568447353, '14', 1546568447353, 0);
INSERT INTO `biz_message` VALUES (197, 64, 115, 'biz_notice', '测试', '测试', '鱼丸粗面鱼丸粗面鱼丸', '14', 1546568845252, '14', 1546568845252, 0);
INSERT INTO `biz_message` VALUES (198, 65, 116, 'biz_notice', '1', '2', 'koyuhau', '15', 1546569712740, '15', 1546569712740, 0);
INSERT INTO `biz_message` VALUES (199, 69, 117, 'biz_notice', '11', '11', '依依酱Rorita.Chiang', '18', 1546570310338, '18', 1546570310338, 0);

-- ----------------------------
-- Table structure for biz_notice
-- ----------------------------
DROP TABLE IF EXISTS `biz_notice`;
CREATE TABLE `biz_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一id',
  `groupId` bigint(20) NOT NULL COMMENT '所属群组',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `readNum` int(10) NOT NULL COMMENT '已读人数',
  `creatorName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建人名称',
  `creator` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createDate` bigint(20) NOT NULL COMMENT '创建时间',
  `lastModifier` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  `lastModDate` bigint(20) NOT NULL COMMENT '修改时间',
  `status` tinyint(4) NOT NULL COMMENT '状态 0-启用，1-停用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_4`(`groupId`) USING BTREE,
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`groupId`) REFERENCES `bas_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of biz_notice
-- ----------------------------
INSERT INTO `biz_notice` VALUES (51, 69, '通知标题', '内容内容', 1, '依依酱依依酱依依酱依', '18', 1545810413403, '18', 1545810413403, 0);
INSERT INTO `biz_notice` VALUES (52, 64, '测试', '澳大利亚、英国和新西兰已经加入美国的行列，将华为的设备排除在下一代5G移动网络之外。本月早些时候，日本也禁止华为和另一家中国技术供应商中兴(ZTE)获得政府合同，以防止敏感数据泄露。市场研究公司IDC公布数据显示，华为约占2017年全球智能手机市场10.4%的份额，落后于三星的21.6%以及苹果的14.7%。但在4月到6月份的第二季度，华为手机', 2, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545810503590, '14', 1545810503590, 0);
INSERT INTO `biz_notice` VALUES (53, 66, '1', '2', 1, 'go', '21', 1545816567042, '21', 1545816567042, 0);
INSERT INTO `biz_notice` VALUES (54, 64, '33', '333', 1, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545816602275, '14', 1545816602275, 0);
INSERT INTO `biz_notice` VALUES (55, 66, '1', '2', 2, 'go', '21', 1545879951393, '21', 1545879951393, 0);
INSERT INTO `biz_notice` VALUES (56, 64, '学校通知信息', '1111', 2, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545895840339, '14', 1545895840339, 0);
INSERT INTO `biz_notice` VALUES (57, 64, '333', '33333', 1, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545896014971, '14', 1545896014971, 0);
INSERT INTO `biz_notice` VALUES (58, 64, '22', '2222', 0, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545896093698, '14', 1545896093698, 0);
INSERT INTO `biz_notice` VALUES (59, 71, '交学费', '内容内容内容内容内容 ', 2, 'koyuhau', '15', 1545898709098, '15', 1545898709098, 0);
INSERT INTO `biz_notice` VALUES (60, 64, '222', '22222', 0, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545899325510, '14', 1545899325510, 0);
INSERT INTO `biz_notice` VALUES (61, 64, '121221', '121221', 2, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545899549011, '14', 1545899549011, 0);
INSERT INTO `biz_notice` VALUES (62, 73, '班级通知测试', '测试内容', 1, 'test', '24', 1545901156266, '24', 1545901156266, 0);
INSERT INTO `biz_notice` VALUES (63, 73, '测试字数', '据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动物园的成年雄性华南虎“康康”，报道称保存样本的容器能够隔绝空间辐射、防止瞬间高温等功能，可以实现生物基因的太空永久在轨保存。据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动物园的成年雄性华南虎“康康”，报道称保存样本的容器能够隔绝空间辐射、防止瞬间高温等功能，可以实现生物基因的太空永久在轨保存。据信息时报报道，12月22日7时51分，长征十一', 1, 'test', '24', 1545901863717, '24', 1545901863717, 0);
INSERT INTO `biz_notice` VALUES (64, 73, '测试字数', '据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动物园的成年雄性华南虎“康康”，报道称保存样本的容器能够隔绝空间辐射、防止瞬间高温等功能，可以实现生物基因的太空永久在轨保存。据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动物园的成年雄性华南虎“康康”，报道称保存样本的容器能够隔绝空间辐射、防止瞬间高温等功能，可以实现生物基因的太空永久在轨保存。据信息时报报道，12月22日7时51分，长征十一', 0, 'test', '24', 1545901870828, '24', 1545901870828, 0);
INSERT INTO `biz_notice` VALUES (65, 73, '测试字数', '据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动物园的成年雄性华南虎“康康”，报道称保存样本的容器能够隔绝空间辐射、防止瞬间高温等功能，可以实现生物基因的太空永久在轨保存。据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动物园的成年雄性华南虎“康康”，报道称保存样本的容器能够隔绝空间辐射、防止瞬间高温等功能，可以实现生物基因的太空永久在轨保存。据信息时报报道，12月22日7时51分，长征十', 0, 'test', '24', 1545901876032, '24', 1545901876032, 0);
INSERT INTO `biz_notice` VALUES (66, 73, '测试字数', '据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动物园的成年雄性华南虎“康康”，报道称保存样本的容器能够隔绝空间辐射、防止瞬间高温等功能，可以实现生物基因的太空永久在轨保存。据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动物园的成年雄性华南虎“康康”，报道称保存样本的容器能够隔绝空间辐射、防止瞬间高温等功能，可以实现生物基因的太空永久在轨保存。据信息时报报道，12', 0, 'test', '24', 1545901938490, '24', 1545901938490, 0);
INSERT INTO `biz_notice` VALUES (67, 73, '测试字数', '据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动物园的成年雄性华南虎“康康”，报道称保存样本的容器能够隔绝空间辐射、防止瞬间高温等功能，可以实现生物基因的太空永久在轨保存。据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动物园的成年雄性华南虎“康康”，报道称保存样本的容器能够隔绝空间辐射、防止瞬间高温等功能，可以实现生', 0, 'test', '24', 1545901946185, '24', 1545901946185, 0);
INSERT INTO `biz_notice` VALUES (68, 73, '测试字数', '据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动物园的成年雄性华南虎“康康”，报道称保存样本的容器能够隔绝空间辐射、防止瞬间高温等功能，可以实现生物基因的太空永久在轨保存。据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动物园的成年雄性华南虎“康康”，报道称保存样本的容器能够隔绝空间辐', 1, 'test', '24', 1545901955402, '24', 1545901955402, 0);
INSERT INTO `biz_notice` VALUES (69, 73, '测试字数', '据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动物园的成年雄性华南虎“康康”，报道称保存样本的容器能够隔绝空间辐射、防止瞬间高温等功能，可以实现生物基因的太空永久在轨保存。据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动', 1, 'test', '24', 1545901968683, '24', 1545901968683, 0);
INSERT INTO `biz_notice` VALUES (70, 73, '测试字数', '据信息时报报道，12月22日7时51分，长征十一号运载火箭搭载广州动物园华南虎DNA干粉于酒泉卫星发射中心发射成功。发送到太空的华南虎基因样本采自广州动物园的成年雄性华南虎“康康”，报道称保存样本的容器能够隔绝空间辐射、防止瞬间高温等功能，可以实现生物基因的太空永久在轨保存。', 2, 'test', '24', 1545901981439, '24', 1545901981439, 0);
INSERT INTO `biz_notice` VALUES (71, 66, 'tt', 'tt', 3, 'go', '21', 1545964126984, '21', 1545964126984, 0);
INSERT INTO `biz_notice` VALUES (72, 64, '测试返回', '测试', 1, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545981462715, '14', 1545981462715, 0);
INSERT INTO `biz_notice` VALUES (73, 64, '测试返回返回', '测试返回', 2, '鱼丸粗面鱼丸粗面鱼丸', '14', 1545981539842, '14', 1545981539842, 0);
INSERT INTO `biz_notice` VALUES (74, 87, '测试通知', '测试内容', 1, '林悦伟', '41', 1546393707934, '41', 1546393707934, 0);
INSERT INTO `biz_notice` VALUES (75, 88, '转发通知', '转发通知转发通知', 1, '依依酱Rorita.Chiang', '18', 1546396536596, '18', 1546396536596, 0);
INSERT INTO `biz_notice` VALUES (76, 87, '多张图片测试', '测试', 1, '林悦伟', '41', 1546397000938, '41', 1546397000938, 0);
INSERT INTO `biz_notice` VALUES (77, 87, '300字通知', '2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知232', 1, '林悦伟', '41', 1546397433191, '41', 1546397433191, 0);
INSERT INTO `biz_notice` VALUES (78, 87, '300字通知', '2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知2323123通知232', 1, '林悦伟', '41', 1546397498867, '41', 1546397498867, 0);
INSERT INTO `biz_notice` VALUES (79, 87, 'ccc', 'cccc', 1, '林悦伟', '41', 1546415471387, '41', 1546415471387, 0);
INSERT INTO `biz_notice` VALUES (80, 87, 'ccc', 'ccc', 1, '林悦伟', '41', 1546415751949, '41', 1546415751949, 0);
INSERT INTO `biz_notice` VALUES (81, 87, 'waht', 'what', 1, '林悦伟', '41', 1546416818886, '41', 1546416818886, 0);
INSERT INTO `biz_notice` VALUES (82, 87, '测试一下', '测试', 1, '林悦伟', '41', 1546417026785, '41', 1546417026785, 0);
INSERT INTO `biz_notice` VALUES (83, 95, '测试', '测试', 1, '测试老师', '24', 1546417389753, '24', 1546417389753, 0);
INSERT INTO `biz_notice` VALUES (84, 95, '1', '11', 0, '测试老师', '24', 1546417578866, '24', 1546417578866, 0);
INSERT INTO `biz_notice` VALUES (85, 64, '测试图片', '测试图片', 2, '蔡老师', '14', 1546417792494, '14', 1546417792494, 0);
INSERT INTO `biz_notice` VALUES (86, 64, '测试', '测试', 3, '蔡老师', '14', 1546417958818, '14', 1546417958818, 0);
INSERT INTO `biz_notice` VALUES (87, 64, '0102', '测试', 2, '蔡老师', '14', 1546420614486, '14', 1546420614486, 0);
INSERT INTO `biz_notice` VALUES (88, 64, '测试保存通知', '测试', 2, '蔡老师', '14', 1546480010206, '14', 1546480010206, 0);
INSERT INTO `biz_notice` VALUES (89, 64, '字数字数', '铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行时间按计划自动调整、到达车站精确停车、停车后自动开门等功能。\n\nATO的工作流程是这样的，“地面调度中心制定好行车计划后，通过地面的数据传输网络把计划送到ATO的地面设备，这个设备再通过铁路移动通信网，把计划发送给动车组上的ATO车载设备。”铁科院专家介绍说，ATO车载设备收到计划以后，根据动车组当前的位置，计算出控制速度曲线，代替司机自动控制动车组的加速、运行、减速、停车、开车门等。铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行', 1, '蔡老师', '14', 1546481983685, '14', 1546481983685, 0);
INSERT INTO `biz_notice` VALUES (90, 64, '测试', '铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行时间按计划自动调整、到达车站精确停车、停车后自动开门等功能。\n\nATO的工作流程是这样的，“地面调度中心制定好行车计划后，通过地面的数据传输网络把计划送到ATO的地面设备，这个设备再通过铁路移动通信网，把计划发送给动车组上的ATO车载设备。”铁科院专家介绍说，ATO车载设备收到计划以后，根据动车组当前的位置，计算出控制速度曲线，代替司机自动控制动车组的加速、运行、减速、停车、开车门等。铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行', 1, '蔡老师', '14', 1546482005476, '14', 1546482005476, 0);
INSERT INTO `biz_notice` VALUES (91, 64, '字数字数字数字数字数字数字数字数字数字数', '铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行时间按计划自动调整、到达车站精确停车、停车后自动开门等功能。\n\nATO的工作流程是这样的，“地面调度中心制定好行车计划后，通过地面的数据传输网络把计划送到ATO的地面设备，这个设备再通过铁路移动通信网，把计划发送给动车组上的ATO车载设备。”铁科院专家介绍说，ATO车载设备收到计划以后，根据动车组当前的位置，计算出控制速度曲线，代替司机自动控制动车组的加速、运行、减速、停车、开车门等。铁科院专家表示，采用ATO以后，司机只要按一个启动按钮，就可以实现列车从车站自动发车、在站间自动运行、运行', 1, '蔡老师', '14', 1546482126290, '14', 1546482126290, 0);
INSERT INTO `biz_notice` VALUES (92, 64, '测试图片', '图片', 2, '蔡老师', '14', 1546482972329, '14', 1546482972329, 0);
INSERT INTO `biz_notice` VALUES (93, 64, '测试', '图片', 1, '蔡老师', '14', 1546483063114, '14', 1546483063114, 0);
INSERT INTO `biz_notice` VALUES (94, 64, '测试', '测试', 0, '蔡老师', '14', 1546483628314, '14', 1546483628314, 0);
INSERT INTO `biz_notice` VALUES (95, 64, '测试', '测试', 0, '蔡老师', '14', 1546487759083, '14', 1546487759083, 0);
INSERT INTO `biz_notice` VALUES (96, 64, '测试', '测试', 1, '蔡老师', '14', 1546487880739, '14', 1546487880739, 0);
INSERT INTO `biz_notice` VALUES (97, 64, '测试', '测试', 1, '蔡老师', '14', 1546497726257, '14', 1546497726257, 0);
INSERT INTO `biz_notice` VALUES (98, 64, '测试缩略图', '测试', 1, '蔡老师', '14', 1546497855891, '14', 1546497855891, 0);
INSERT INTO `biz_notice` VALUES (99, 74, '12121', '2121212112', 0, '2', '24', 1546499691879, '24', 1546499691879, 0);
INSERT INTO `biz_notice` VALUES (100, 87, 'ceshi1', '123', 0, '林悦伟', '41', 1546499778517, '41', 1546499778517, 0);
INSERT INTO `biz_notice` VALUES (101, 87, 'testse12', 'asdfasdf', 1, '林悦伟', '41', 1546499923175, '41', 1546499923175, 0);
INSERT INTO `biz_notice` VALUES (102, 64, '测试图片', '图片', 0, '蔡老师', '14', 1546500085303, '14', 1546500085303, 0);
INSERT INTO `biz_notice` VALUES (103, 64, '测试', '测试字数字数', 1, '蔡老师', '14', 1546500310880, '14', 1546500310880, 0);
INSERT INTO `biz_notice` VALUES (104, 64, '测试', '测试', 2, '蔡老师', '14', 1546501026687, '14', 1546501026687, 0);
INSERT INTO `biz_notice` VALUES (105, 96, '1', '5', 2, '字那你可', '21', 1546502211751, '21', 1546502211751, 0);
INSERT INTO `biz_notice` VALUES (106, 64, '测试转发', '转发', 3, '蔡老师', '14', 1546504695737, '14', 1546504695737, 0);
INSERT INTO `biz_notice` VALUES (107, 90, '没加入转发', '没加入', 2, '测试', '14', 1546504836494, '14', 1546504836494, 0);
INSERT INTO `biz_notice` VALUES (108, 79, '111', '111', 2, '测试字数字数字数字', '24', 1546505203016, '24', 1546505203016, 0);
INSERT INTO `biz_notice` VALUES (109, 75, '11', '1', 1, '测试', '24', 1546505828024, '24', 1546505828024, 0);
INSERT INTO `biz_notice` VALUES (110, 87, '手工', '123123', 0, '林悦伟', '41', 1546509430263, '41', 1546509430263, 0);
INSERT INTO `biz_notice` VALUES (111, 87, 'ccc', 'ccc', 1, '林悦伟', '41', 1546509621326, '41', 1546509621326, 0);
INSERT INTO `biz_notice` VALUES (112, 88, '班费收缴通知', '每位同学需缴纳50元班费，作为班级活动经费使用，请于1月1日前交至班主任处。', 1, '吉永老师', '18', 1546566243874, '18', 1546566243874, 0);
INSERT INTO `biz_notice` VALUES (113, 87, 'ccc', 'ccc', 0, '林悦伟', '41', 1546567556093, '41', 1546567556093, 0);
INSERT INTO `biz_notice` VALUES (114, 64, 'qqq', 'qqq', 0, '蔡老师', '14', 1546568447343, '14', 1546568447343, 0);
INSERT INTO `biz_notice` VALUES (115, 64, '测试', '测试', 1, '蔡老师', '14', 1546568845246, '14', 1546568845246, 0);
INSERT INTO `biz_notice` VALUES (116, 65, '1', '2', 0, '毛蔚1', '15', 1546569712734, '15', 1546569712734, 0);
INSERT INTO `biz_notice` VALUES (117, 69, '11', '11', 1, '园长', '18', 1546570310329, '18', 1546570310329, 0);

-- ----------------------------
-- Table structure for biz_notice_receive
-- ----------------------------
DROP TABLE IF EXISTS `biz_notice_receive`;
CREATE TABLE `biz_notice_receive`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '唯一id',
  `groupId` bigint(20) NOT NULL COMMENT '分组id',
  `noticeId` bigint(20) NOT NULL COMMENT '通知的id',
  `userId` bigint(20) NOT NULL COMMENT '接收人id ，用户表中的用户id',
  `nickName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '接收人在群昵称（冗余字段）',
  `readStatus` int(1) NOT NULL COMMENT '阅读状态（0：未读；1：已读)',
  `readDate` bigint(20) NULL DEFAULT NULL COMMENT '阅读时间',
  `creator` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createDate` bigint(20) NOT NULL COMMENT '创建时间',
  `lastModifier` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  `lastModDate` bigint(20) NOT NULL COMMENT '修改时间',
  `status` tinyint(4) NOT NULL COMMENT '状态 0-启用，1-停用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_Reference_5`(`noticeId`) USING BTREE,
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`noticeId`) REFERENCES `biz_notice` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 502 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知接收情况表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of biz_notice_receive
-- ----------------------------
INSERT INTO `biz_notice_receive` VALUES (76, 69, 51, 18, '园长', 1, NULL, '18', 1545810413471, '18', 1546396340517, 0);
INSERT INTO `biz_notice_receive` VALUES (77, 64, 52, 14, '蔡老师', 1, NULL, '14', 1545810503643, '14', 1546481571866, 0);
INSERT INTO `biz_notice_receive` VALUES (78, 64, 52, 18, '蒋依依', 0, NULL, '14', 1545810503644, '14', 1545810503644, 0);
INSERT INTO `biz_notice_receive` VALUES (79, 66, 53, 15, '高宇恒', 0, NULL, '21', 1545816567096, '21', 1545816567096, 0);
INSERT INTO `biz_notice_receive` VALUES (80, 66, 53, 21, '毛老师', 1, NULL, '21', 1545816567096, '21', 1545963644466, 0);
INSERT INTO `biz_notice_receive` VALUES (81, 64, 54, 14, '蔡老师', 1, NULL, '14', 1545816602331, '14', 1545895768710, 0);
INSERT INTO `biz_notice_receive` VALUES (82, 64, 54, 18, '蒋依依', 0, NULL, '14', 1545816602331, '14', 1545816602331, 0);
INSERT INTO `biz_notice_receive` VALUES (83, 66, 55, 15, '高宇恒', 0, NULL, '21', 1545879951447, '21', 1545879951447, 0);
INSERT INTO `biz_notice_receive` VALUES (84, 66, 55, 21, '毛老师', 1, NULL, '21', 1545879951447, '21', 1547015729839, 0);
INSERT INTO `biz_notice_receive` VALUES (85, 64, 56, 14, '蔡老师', 1, NULL, '14', 1545895840395, '14', 1546481567866, 0);
INSERT INTO `biz_notice_receive` VALUES (86, 64, 56, 18, '蒋依依', 0, NULL, '14', 1545895840395, '14', 1545895840395, 0);
INSERT INTO `biz_notice_receive` VALUES (87, 64, 57, 14, '蔡老师', 1, NULL, '14', 1545896015024, '14', 1545981393013, 0);
INSERT INTO `biz_notice_receive` VALUES (88, 64, 57, 18, '蒋依依', 0, NULL, '14', 1545896015024, '14', 1545896015024, 0);
INSERT INTO `biz_notice_receive` VALUES (89, 64, 58, 14, '蔡老师', 0, NULL, '14', 1545896093751, '14', 1545896093751, 0);
INSERT INTO `biz_notice_receive` VALUES (90, 64, 58, 18, '蒋依依', 0, NULL, '14', 1545896093751, '14', 1545896093751, 0);
INSERT INTO `biz_notice_receive` VALUES (91, 71, 59, 15, '高老师', 1, NULL, '15', 1545898709155, '15', 1545898711090, 0);
INSERT INTO `biz_notice_receive` VALUES (92, 71, 59, 21, '陈同学', 1, NULL, '15', 1545898709155, '21', 1545963316770, 0);
INSERT INTO `biz_notice_receive` VALUES (93, 64, 60, 14, '蔡老师', 0, NULL, '14', 1545899325567, '14', 1545899325567, 0);
INSERT INTO `biz_notice_receive` VALUES (94, 64, 60, 18, '蒋依依', 0, NULL, '14', 1545899325567, '14', 1545899325567, 0);
INSERT INTO `biz_notice_receive` VALUES (95, 64, 61, 14, '蔡老师', 1, NULL, '14', 1545899549063, '14', 1546479954482, 0);
INSERT INTO `biz_notice_receive` VALUES (96, 64, 61, 18, '蒋依依', 0, NULL, '14', 1545899549063, '14', 1545899549063, 0);
INSERT INTO `biz_notice_receive` VALUES (97, 64, 61, 24, '李小白', 1, NULL, '24', 1545900381483, '24', 1545903100254, 0);
INSERT INTO `biz_notice_receive` VALUES (98, 73, 62, 14, '李莫愁李莫愁李莫愁李莫愁', 0, NULL, '24', 1545901156325, '24', 1545901156325, 0);
INSERT INTO `biz_notice_receive` VALUES (99, 73, 62, 24, '李白', 1, NULL, '24', 1545901156325, '24', 1545901482586, 0);
INSERT INTO `biz_notice_receive` VALUES (100, 73, 70, 14, '李莫愁李莫愁李莫愁李莫愁', 1, NULL, '24', 1545901981491, '14', 1546421341854, 0);
INSERT INTO `biz_notice_receive` VALUES (101, 73, 70, 24, '李白', 1, NULL, '24', 1545901981491, '24', 1545902777054, 0);
INSERT INTO `biz_notice_receive` VALUES (102, 66, 71, 15, '高宇恒', 1, NULL, '21', 1545964127034, '15', 1546502025206, 0);
INSERT INTO `biz_notice_receive` VALUES (103, 66, 71, 21, '毛老师', 1, NULL, '21', 1545964127034, '21', 1547015728026, 0);
INSERT INTO `biz_notice_receive` VALUES (104, 64, 52, 24, '李小白', 1, NULL, '24', 1545978288663, '24', 1546395385846, 0);
INSERT INTO `biz_notice_receive` VALUES (105, 64, 72, 14, '蔡老师', 1, NULL, '14', 1545981462732, '14', 1546481264786, 0);
INSERT INTO `biz_notice_receive` VALUES (106, 64, 72, 18, '蒋依依', 0, NULL, '14', 1545981462732, '14', 1545981462732, 0);
INSERT INTO `biz_notice_receive` VALUES (107, 64, 72, 24, '李小白', 0, NULL, '14', 1545981462732, '14', 1545981462732, 0);
INSERT INTO `biz_notice_receive` VALUES (108, 64, 72, 27, '测试1', 0, NULL, '14', 1545981462732, '14', 1545981462732, 0);
INSERT INTO `biz_notice_receive` VALUES (109, 64, 72, 28, '测试2', 0, NULL, '14', 1545981462732, '14', 1545981462732, 0);
INSERT INTO `biz_notice_receive` VALUES (110, 64, 72, 29, '测试3', 0, NULL, '14', 1545981462732, '14', 1545981462732, 0);
INSERT INTO `biz_notice_receive` VALUES (111, 64, 72, 30, '测试4', 0, NULL, '14', 1545981462732, '14', 1545981462732, 0);
INSERT INTO `biz_notice_receive` VALUES (112, 64, 72, 31, '测试5', 0, NULL, '14', 1545981462732, '14', 1545981462732, 0);
INSERT INTO `biz_notice_receive` VALUES (113, 64, 72, 32, '测试6', 0, NULL, '14', 1545981462732, '14', 1545981462732, 0);
INSERT INTO `biz_notice_receive` VALUES (114, 64, 72, 33, '测试7', 0, NULL, '14', 1545981462732, '14', 1545981462732, 0);
INSERT INTO `biz_notice_receive` VALUES (115, 64, 72, 34, '测试8', 0, NULL, '14', 1545981462732, '14', 1545981462732, 0);
INSERT INTO `biz_notice_receive` VALUES (116, 64, 72, 35, '测试9', 0, NULL, '14', 1545981462733, '14', 1545981462733, 0);
INSERT INTO `biz_notice_receive` VALUES (117, 64, 72, 36, '测试10', 0, NULL, '14', 1545981462733, '14', 1545981462733, 0);
INSERT INTO `biz_notice_receive` VALUES (118, 64, 72, 37, '测试11', 0, NULL, '14', 1545981462733, '14', 1545981462733, 0);
INSERT INTO `biz_notice_receive` VALUES (119, 64, 72, 38, '测试12', 0, NULL, '14', 1545981462733, '14', 1545981462733, 0);
INSERT INTO `biz_notice_receive` VALUES (120, 64, 72, 39, '测试13', 0, NULL, '14', 1545981462733, '14', 1545981462733, 0);
INSERT INTO `biz_notice_receive` VALUES (121, 64, 73, 14, '蔡老师', 1, NULL, '14', 1545981539860, '14', 1546481564514, 0);
INSERT INTO `biz_notice_receive` VALUES (122, 64, 73, 18, '蒋依依', 1, NULL, '14', 1545981539860, '18', 1546397950666, 0);
INSERT INTO `biz_notice_receive` VALUES (123, 64, 73, 24, '李小白', 0, NULL, '14', 1545981539860, '14', 1545981539860, 0);
INSERT INTO `biz_notice_receive` VALUES (124, 64, 73, 27, '测试1', 0, NULL, '14', 1545981539860, '14', 1545981539860, 0);
INSERT INTO `biz_notice_receive` VALUES (125, 64, 73, 28, '测试2', 0, NULL, '14', 1545981539860, '14', 1545981539860, 0);
INSERT INTO `biz_notice_receive` VALUES (126, 64, 73, 29, '测试3', 0, NULL, '14', 1545981539860, '14', 1545981539860, 0);
INSERT INTO `biz_notice_receive` VALUES (127, 64, 73, 30, '测试4', 0, NULL, '14', 1545981539860, '14', 1545981539860, 0);
INSERT INTO `biz_notice_receive` VALUES (128, 64, 73, 31, '测试5', 0, NULL, '14', 1545981539860, '14', 1545981539860, 0);
INSERT INTO `biz_notice_receive` VALUES (129, 64, 73, 32, '测试6', 0, NULL, '14', 1545981539860, '14', 1545981539860, 0);
INSERT INTO `biz_notice_receive` VALUES (130, 64, 73, 33, '测试7', 0, NULL, '14', 1545981539860, '14', 1545981539860, 0);
INSERT INTO `biz_notice_receive` VALUES (131, 64, 73, 34, '测试8', 0, NULL, '14', 1545981539860, '14', 1545981539860, 0);
INSERT INTO `biz_notice_receive` VALUES (132, 64, 73, 35, '测试9', 0, NULL, '14', 1545981539860, '14', 1545981539860, 0);
INSERT INTO `biz_notice_receive` VALUES (133, 64, 73, 36, '测试10', 0, NULL, '14', 1545981539860, '14', 1545981539860, 0);
INSERT INTO `biz_notice_receive` VALUES (134, 64, 73, 37, '测试11', 0, NULL, '14', 1545981539860, '14', 1545981539860, 0);
INSERT INTO `biz_notice_receive` VALUES (135, 64, 73, 38, '测试12', 0, NULL, '14', 1545981539860, '14', 1545981539860, 0);
INSERT INTO `biz_notice_receive` VALUES (136, 64, 73, 39, '测试13', 0, NULL, '14', 1545981539860, '14', 1545981539860, 0);
INSERT INTO `biz_notice_receive` VALUES (137, 87, 74, 41, '林悦伟', 1, NULL, '41', 1546393708278, '41', 1546495866766, 0);
INSERT INTO `biz_notice_receive` VALUES (138, 64, 56, 24, '李小白', 1, NULL, '24', 1546395470595, '24', 1546395470595, 0);
INSERT INTO `biz_notice_receive` VALUES (139, 66, 55, 41, '林悦伟', 1, NULL, '41', 1546395982303, '41', 1546396969236, 0);
INSERT INTO `biz_notice_receive` VALUES (140, 66, 71, 41, '林悦伟', 1, NULL, '41', 1546396009546, '41', 1546396114069, 0);
INSERT INTO `biz_notice_receive` VALUES (141, 88, 75, 18, '吉永老师', 1, NULL, '18', 1546396536646, '18', 1546566263494, 0);
INSERT INTO `biz_notice_receive` VALUES (142, 87, 76, 41, '林悦伟', 1, NULL, '41', 1546397001288, '41', 1546498650962, 0);
INSERT INTO `biz_notice_receive` VALUES (143, 87, 78, 41, '林悦伟', 1, NULL, '41', 1546397499385, '41', 1546499197270, 0);
INSERT INTO `biz_notice_receive` VALUES (144, 87, 79, 41, '林悦伟', 1, NULL, '41', 1546415471719, '41', 1546422894734, 0);
INSERT INTO `biz_notice_receive` VALUES (145, 87, 80, 41, '林悦伟', 1, NULL, '41', 1546415752380, '41', 1546422859926, 0);
INSERT INTO `biz_notice_receive` VALUES (146, 87, 81, 41, '林悦伟', 1, NULL, '41', 1546416818947, '41', 1546499281602, 0);
INSERT INTO `biz_notice_receive` VALUES (147, 87, 82, 41, '林悦伟', 1, NULL, '41', 1546417026849, '41', 1546499201758, 0);
INSERT INTO `biz_notice_receive` VALUES (148, 95, 83, 24, '测试老师', 1, NULL, '24', 1546417389811, '24', 1546417722626, 0);
INSERT INTO `biz_notice_receive` VALUES (149, 95, 84, 24, '测试老师', 0, NULL, '24', 1546417578919, '24', 1546417578919, 0);
INSERT INTO `biz_notice_receive` VALUES (150, 64, 85, 14, '蔡老师', 1, NULL, '14', 1546417792521, '14', 1546481347901, 0);
INSERT INTO `biz_notice_receive` VALUES (151, 64, 85, 18, '蒋依依', 0, NULL, '14', 1546417792521, '14', 1546417792521, 0);
INSERT INTO `biz_notice_receive` VALUES (152, 64, 85, 24, '李小白', 1, NULL, '14', 1546417792521, '24', 1546479817218, 0);
INSERT INTO `biz_notice_receive` VALUES (153, 64, 85, 27, '测试1', 0, NULL, '14', 1546417792521, '14', 1546417792521, 0);
INSERT INTO `biz_notice_receive` VALUES (154, 64, 85, 28, '测试测试字数字数字数', 0, NULL, '14', 1546417792521, '14', 1546417792521, 0);
INSERT INTO `biz_notice_receive` VALUES (155, 64, 85, 29, '测试3', 0, NULL, '14', 1546417792521, '14', 1546417792521, 0);
INSERT INTO `biz_notice_receive` VALUES (156, 64, 85, 30, '测试4', 0, NULL, '14', 1546417792521, '14', 1546417792521, 0);
INSERT INTO `biz_notice_receive` VALUES (157, 64, 85, 31, '测试5', 0, NULL, '14', 1546417792521, '14', 1546417792521, 0);
INSERT INTO `biz_notice_receive` VALUES (158, 64, 85, 32, '测试6', 0, NULL, '14', 1546417792521, '14', 1546417792521, 0);
INSERT INTO `biz_notice_receive` VALUES (159, 64, 85, 33, '测试7', 0, NULL, '14', 1546417792521, '14', 1546417792521, 0);
INSERT INTO `biz_notice_receive` VALUES (160, 64, 85, 34, '测试8', 0, NULL, '14', 1546417792521, '14', 1546417792521, 0);
INSERT INTO `biz_notice_receive` VALUES (161, 64, 85, 35, '测试9', 0, NULL, '14', 1546417792521, '14', 1546417792521, 0);
INSERT INTO `biz_notice_receive` VALUES (162, 64, 85, 36, '测试10', 0, NULL, '14', 1546417792521, '14', 1546417792521, 0);
INSERT INTO `biz_notice_receive` VALUES (163, 64, 85, 37, '测试11', 0, NULL, '14', 1546417792521, '14', 1546417792521, 0);
INSERT INTO `biz_notice_receive` VALUES (164, 64, 85, 38, '测试12', 0, NULL, '14', 1546417792521, '14', 1546417792521, 0);
INSERT INTO `biz_notice_receive` VALUES (165, 64, 85, 39, '测试13', 0, NULL, '14', 1546417792521, '14', 1546417792521, 0);
INSERT INTO `biz_notice_receive` VALUES (166, 64, 86, 14, '蔡老师', 1, NULL, '14', 1546417958842, '14', 1546421356282, 0);
INSERT INTO `biz_notice_receive` VALUES (167, 64, 86, 18, '蒋依依', 1, NULL, '14', 1546417958842, '18', 1546418026502, 0);
INSERT INTO `biz_notice_receive` VALUES (168, 64, 86, 24, '李小白', 1, NULL, '14', 1546417958842, '24', 1546479756770, 0);
INSERT INTO `biz_notice_receive` VALUES (169, 64, 86, 27, '测试1', 0, NULL, '14', 1546417958842, '14', 1546417958842, 0);
INSERT INTO `biz_notice_receive` VALUES (170, 64, 86, 28, '测试测试字数字数字数', 0, NULL, '14', 1546417958842, '14', 1546417958842, 0);
INSERT INTO `biz_notice_receive` VALUES (171, 64, 86, 29, '测试3', 0, NULL, '14', 1546417958842, '14', 1546417958842, 0);
INSERT INTO `biz_notice_receive` VALUES (172, 64, 86, 30, '测试4', 0, NULL, '14', 1546417958842, '14', 1546417958842, 0);
INSERT INTO `biz_notice_receive` VALUES (173, 64, 86, 31, '测试5', 0, NULL, '14', 1546417958842, '14', 1546417958842, 0);
INSERT INTO `biz_notice_receive` VALUES (174, 64, 86, 32, '测试6', 0, NULL, '14', 1546417958842, '14', 1546417958842, 0);
INSERT INTO `biz_notice_receive` VALUES (175, 64, 86, 33, '测试7', 0, NULL, '14', 1546417958842, '14', 1546417958842, 0);
INSERT INTO `biz_notice_receive` VALUES (176, 64, 86, 34, '测试8', 0, NULL, '14', 1546417958842, '14', 1546417958842, 0);
INSERT INTO `biz_notice_receive` VALUES (177, 64, 86, 35, '测试9', 0, NULL, '14', 1546417958842, '14', 1546417958842, 0);
INSERT INTO `biz_notice_receive` VALUES (178, 64, 86, 36, '测试10', 0, NULL, '14', 1546417958842, '14', 1546417958842, 0);
INSERT INTO `biz_notice_receive` VALUES (179, 64, 86, 37, '测试11', 0, NULL, '14', 1546417958842, '14', 1546417958842, 0);
INSERT INTO `biz_notice_receive` VALUES (180, 64, 86, 38, '测试12', 0, NULL, '14', 1546417958842, '14', 1546417958842, 0);
INSERT INTO `biz_notice_receive` VALUES (181, 64, 86, 39, '测试13', 0, NULL, '14', 1546417958842, '14', 1546417958842, 0);
INSERT INTO `biz_notice_receive` VALUES (182, 64, 87, 14, '蔡老师', 1, NULL, '14', 1546420614565, '14', 1546479788791, 0);
INSERT INTO `biz_notice_receive` VALUES (183, 64, 87, 18, '蒋依依', 0, NULL, '14', 1546420614565, '14', 1546420614565, 0);
INSERT INTO `biz_notice_receive` VALUES (184, 64, 87, 24, '李小白', 1, NULL, '14', 1546420614565, '24', 1546479939714, 0);
INSERT INTO `biz_notice_receive` VALUES (185, 64, 87, 27, '测试1', 0, NULL, '14', 1546420614565, '14', 1546420614565, 0);
INSERT INTO `biz_notice_receive` VALUES (186, 64, 87, 28, '测试测试字数字数字数', 0, NULL, '14', 1546420614565, '14', 1546420614565, 0);
INSERT INTO `biz_notice_receive` VALUES (187, 64, 87, 29, '测试3', 0, NULL, '14', 1546420614565, '14', 1546420614565, 0);
INSERT INTO `biz_notice_receive` VALUES (188, 64, 87, 30, '测试4', 0, NULL, '14', 1546420614565, '14', 1546420614565, 0);
INSERT INTO `biz_notice_receive` VALUES (189, 64, 87, 31, '测试5', 0, NULL, '14', 1546420614565, '14', 1546420614565, 0);
INSERT INTO `biz_notice_receive` VALUES (190, 64, 87, 32, '测试6', 0, NULL, '14', 1546420614565, '14', 1546420614565, 0);
INSERT INTO `biz_notice_receive` VALUES (191, 64, 87, 33, '测试7', 0, NULL, '14', 1546420614565, '14', 1546420614565, 0);
INSERT INTO `biz_notice_receive` VALUES (192, 64, 87, 34, '测试8', 0, NULL, '14', 1546420614565, '14', 1546420614565, 0);
INSERT INTO `biz_notice_receive` VALUES (193, 64, 87, 35, '测试9', 0, NULL, '14', 1546420614565, '14', 1546420614565, 0);
INSERT INTO `biz_notice_receive` VALUES (194, 64, 87, 36, '测试10', 0, NULL, '14', 1546420614565, '14', 1546420614565, 0);
INSERT INTO `biz_notice_receive` VALUES (195, 64, 87, 37, '测试11', 0, NULL, '14', 1546420614565, '14', 1546420614565, 0);
INSERT INTO `biz_notice_receive` VALUES (196, 64, 87, 38, '测试12', 0, NULL, '14', 1546420614565, '14', 1546420614565, 0);
INSERT INTO `biz_notice_receive` VALUES (197, 64, 87, 39, '测试13', 0, NULL, '14', 1546420614565, '14', 1546420614565, 0);
INSERT INTO `biz_notice_receive` VALUES (198, 73, 69, 14, '李莫愁李莫愁李莫愁李莫愁', 1, NULL, '14', 1546420817650, '14', 1546420817650, 0);
INSERT INTO `biz_notice_receive` VALUES (199, 73, 68, 14, '李莫愁李莫愁李莫愁李莫愁', 1, NULL, '14', 1546420822591, '14', 1546420822591, 0);
INSERT INTO `biz_notice_receive` VALUES (200, 73, 63, 14, '李莫愁李莫愁李莫愁李莫愁', 1, NULL, '14', 1546421021173, '14', 1546421021173, 0);
INSERT INTO `biz_notice_receive` VALUES (201, 87, 77, 41, '林悦伟', 1, NULL, '41', 1546422385831, '41', 1546498924930, 0);
INSERT INTO `biz_notice_receive` VALUES (202, 64, 88, 14, '蔡老师', 1, NULL, '14', 1546480010242, '14', 1546481559966, 0);
INSERT INTO `biz_notice_receive` VALUES (203, 64, 88, 18, '蒋依依', 0, NULL, '14', 1546480010242, '14', 1546480010242, 0);
INSERT INTO `biz_notice_receive` VALUES (204, 64, 88, 24, '李小白', 1, NULL, '14', 1546480010242, '24', 1546480044986, 0);
INSERT INTO `biz_notice_receive` VALUES (205, 64, 88, 27, '测试1', 0, NULL, '14', 1546480010242, '14', 1546480010242, 0);
INSERT INTO `biz_notice_receive` VALUES (206, 64, 88, 28, '测试测试字数字数字数', 0, NULL, '14', 1546480010242, '14', 1546480010242, 0);
INSERT INTO `biz_notice_receive` VALUES (207, 64, 88, 29, '测试3', 0, NULL, '14', 1546480010242, '14', 1546480010242, 0);
INSERT INTO `biz_notice_receive` VALUES (208, 64, 88, 30, '测试4', 0, NULL, '14', 1546480010242, '14', 1546480010242, 0);
INSERT INTO `biz_notice_receive` VALUES (209, 64, 88, 31, '测试5', 0, NULL, '14', 1546480010242, '14', 1546480010242, 0);
INSERT INTO `biz_notice_receive` VALUES (210, 64, 88, 32, '测试6', 0, NULL, '14', 1546480010242, '14', 1546480010242, 0);
INSERT INTO `biz_notice_receive` VALUES (211, 64, 88, 33, '测试7', 0, NULL, '14', 1546480010242, '14', 1546480010242, 0);
INSERT INTO `biz_notice_receive` VALUES (212, 64, 88, 34, '测试8', 0, NULL, '14', 1546480010242, '14', 1546480010242, 0);
INSERT INTO `biz_notice_receive` VALUES (213, 64, 88, 35, '测试9', 0, NULL, '14', 1546480010242, '14', 1546480010242, 0);
INSERT INTO `biz_notice_receive` VALUES (214, 64, 88, 36, '测试10', 0, NULL, '14', 1546480010242, '14', 1546480010242, 0);
INSERT INTO `biz_notice_receive` VALUES (215, 64, 88, 37, '测试11', 0, NULL, '14', 1546480010242, '14', 1546480010242, 0);
INSERT INTO `biz_notice_receive` VALUES (216, 64, 88, 38, '测试12', 0, NULL, '14', 1546480010242, '14', 1546480010242, 0);
INSERT INTO `biz_notice_receive` VALUES (217, 64, 88, 39, '测试13', 0, NULL, '14', 1546480010242, '14', 1546480010242, 0);
INSERT INTO `biz_notice_receive` VALUES (218, 64, 89, 14, '蔡老师', 0, NULL, '14', 1546481983784, '14', 1546481983784, 0);
INSERT INTO `biz_notice_receive` VALUES (219, 64, 89, 18, '蒋依依', 0, NULL, '14', 1546481983784, '14', 1546481983784, 0);
INSERT INTO `biz_notice_receive` VALUES (220, 64, 89, 24, '李小白', 0, NULL, '14', 1546481983784, '14', 1546481983784, 0);
INSERT INTO `biz_notice_receive` VALUES (221, 64, 89, 27, '测试1', 0, NULL, '14', 1546481983784, '14', 1546481983784, 0);
INSERT INTO `biz_notice_receive` VALUES (222, 64, 89, 28, '测试测试字数字数字数', 0, NULL, '14', 1546481983784, '14', 1546481983784, 0);
INSERT INTO `biz_notice_receive` VALUES (223, 64, 89, 29, '测试3', 0, NULL, '14', 1546481983784, '14', 1546481983784, 0);
INSERT INTO `biz_notice_receive` VALUES (224, 64, 89, 30, '测试4', 0, NULL, '14', 1546481983784, '14', 1546481983784, 0);
INSERT INTO `biz_notice_receive` VALUES (225, 64, 89, 31, '测试5', 0, NULL, '14', 1546481983785, '14', 1546481983785, 0);
INSERT INTO `biz_notice_receive` VALUES (226, 64, 89, 32, '测试6', 0, NULL, '14', 1546481983785, '14', 1546481983785, 0);
INSERT INTO `biz_notice_receive` VALUES (227, 64, 89, 33, '测试7', 0, NULL, '14', 1546481983785, '14', 1546481983785, 0);
INSERT INTO `biz_notice_receive` VALUES (228, 64, 89, 34, '测试8', 0, NULL, '14', 1546481983785, '14', 1546481983785, 0);
INSERT INTO `biz_notice_receive` VALUES (229, 64, 89, 35, '测试9', 0, NULL, '14', 1546481983785, '14', 1546481983785, 0);
INSERT INTO `biz_notice_receive` VALUES (230, 64, 89, 36, '测试10', 0, NULL, '14', 1546481983785, '14', 1546481983785, 0);
INSERT INTO `biz_notice_receive` VALUES (231, 64, 89, 37, '测试11', 0, NULL, '14', 1546481983785, '14', 1546481983785, 0);
INSERT INTO `biz_notice_receive` VALUES (232, 64, 89, 38, '测试12', 0, NULL, '14', 1546481983785, '14', 1546481983785, 0);
INSERT INTO `biz_notice_receive` VALUES (233, 64, 89, 39, '测试13', 0, NULL, '14', 1546481983785, '14', 1546481983785, 0);
INSERT INTO `biz_notice_receive` VALUES (234, 64, 90, 14, '蔡老师', 1, NULL, '14', 1546482005748, '14', 1546482007970, 0);
INSERT INTO `biz_notice_receive` VALUES (235, 64, 90, 18, '蒋依依', 0, NULL, '14', 1546482005748, '14', 1546482005748, 0);
INSERT INTO `biz_notice_receive` VALUES (236, 64, 90, 24, '李小白', 0, NULL, '14', 1546482005748, '14', 1546482005748, 0);
INSERT INTO `biz_notice_receive` VALUES (237, 64, 90, 27, '测试1', 0, NULL, '14', 1546482005748, '14', 1546482005748, 0);
INSERT INTO `biz_notice_receive` VALUES (238, 64, 90, 28, '测试测试字数字数字数', 0, NULL, '14', 1546482005748, '14', 1546482005748, 0);
INSERT INTO `biz_notice_receive` VALUES (239, 64, 90, 29, '测试3', 0, NULL, '14', 1546482005748, '14', 1546482005748, 0);
INSERT INTO `biz_notice_receive` VALUES (240, 64, 90, 30, '测试4', 0, NULL, '14', 1546482005748, '14', 1546482005748, 0);
INSERT INTO `biz_notice_receive` VALUES (241, 64, 90, 31, '测试5', 0, NULL, '14', 1546482005748, '14', 1546482005748, 0);
INSERT INTO `biz_notice_receive` VALUES (242, 64, 90, 32, '测试6', 0, NULL, '14', 1546482005748, '14', 1546482005748, 0);
INSERT INTO `biz_notice_receive` VALUES (243, 64, 90, 33, '测试7', 0, NULL, '14', 1546482005748, '14', 1546482005748, 0);
INSERT INTO `biz_notice_receive` VALUES (244, 64, 90, 34, '测试8', 0, NULL, '14', 1546482005748, '14', 1546482005748, 0);
INSERT INTO `biz_notice_receive` VALUES (245, 64, 90, 35, '测试9', 0, NULL, '14', 1546482005748, '14', 1546482005748, 0);
INSERT INTO `biz_notice_receive` VALUES (246, 64, 90, 36, '测试10', 0, NULL, '14', 1546482005748, '14', 1546482005748, 0);
INSERT INTO `biz_notice_receive` VALUES (247, 64, 90, 37, '测试11', 0, NULL, '14', 1546482005748, '14', 1546482005748, 0);
INSERT INTO `biz_notice_receive` VALUES (248, 64, 90, 38, '测试12', 0, NULL, '14', 1546482005748, '14', 1546482005748, 0);
INSERT INTO `biz_notice_receive` VALUES (249, 64, 90, 39, '测试13', 0, NULL, '14', 1546482005748, '14', 1546482005748, 0);
INSERT INTO `biz_notice_receive` VALUES (250, 64, 91, 14, '蔡老师', 1, NULL, '14', 1546482126419, '14', 1546482128678, 0);
INSERT INTO `biz_notice_receive` VALUES (251, 64, 91, 18, '蒋依依', 0, NULL, '14', 1546482126419, '14', 1546482126419, 0);
INSERT INTO `biz_notice_receive` VALUES (252, 64, 91, 24, '李小白', 0, NULL, '14', 1546482126419, '14', 1546482126419, 0);
INSERT INTO `biz_notice_receive` VALUES (253, 64, 91, 27, '测试1', 0, NULL, '14', 1546482126419, '14', 1546482126419, 0);
INSERT INTO `biz_notice_receive` VALUES (254, 64, 91, 28, '测试测试字数字数字数', 0, NULL, '14', 1546482126419, '14', 1546482126419, 0);
INSERT INTO `biz_notice_receive` VALUES (255, 64, 91, 29, '测试3', 0, NULL, '14', 1546482126419, '14', 1546482126419, 0);
INSERT INTO `biz_notice_receive` VALUES (256, 64, 91, 30, '测试4', 0, NULL, '14', 1546482126419, '14', 1546482126419, 0);
INSERT INTO `biz_notice_receive` VALUES (257, 64, 91, 31, '测试5', 0, NULL, '14', 1546482126419, '14', 1546482126419, 0);
INSERT INTO `biz_notice_receive` VALUES (258, 64, 91, 32, '测试6', 0, NULL, '14', 1546482126419, '14', 1546482126419, 0);
INSERT INTO `biz_notice_receive` VALUES (259, 64, 91, 33, '测试7', 0, NULL, '14', 1546482126419, '14', 1546482126419, 0);
INSERT INTO `biz_notice_receive` VALUES (260, 64, 91, 34, '测试8', 0, NULL, '14', 1546482126419, '14', 1546482126419, 0);
INSERT INTO `biz_notice_receive` VALUES (261, 64, 91, 35, '测试9', 0, NULL, '14', 1546482126419, '14', 1546482126419, 0);
INSERT INTO `biz_notice_receive` VALUES (262, 64, 91, 36, '测试10', 0, NULL, '14', 1546482126419, '14', 1546482126419, 0);
INSERT INTO `biz_notice_receive` VALUES (263, 64, 91, 37, '测试11', 0, NULL, '14', 1546482126419, '14', 1546482126419, 0);
INSERT INTO `biz_notice_receive` VALUES (264, 64, 91, 38, '测试12', 0, NULL, '14', 1546482126419, '14', 1546482126419, 0);
INSERT INTO `biz_notice_receive` VALUES (265, 64, 91, 39, '测试13', 0, NULL, '14', 1546482126419, '14', 1546482126419, 0);
INSERT INTO `biz_notice_receive` VALUES (266, 64, 92, 14, '蔡老师', 1, NULL, '14', 1546482972345, '14', 1546483101869, 0);
INSERT INTO `biz_notice_receive` VALUES (267, 64, 92, 18, '蒋依依', 0, NULL, '14', 1546482972345, '14', 1546482972345, 0);
INSERT INTO `biz_notice_receive` VALUES (268, 64, 92, 24, '李小白', 0, NULL, '14', 1546482972345, '14', 1546482972345, 0);
INSERT INTO `biz_notice_receive` VALUES (269, 64, 92, 27, '测试1', 0, NULL, '14', 1546482972345, '14', 1546482972345, 0);
INSERT INTO `biz_notice_receive` VALUES (270, 64, 92, 28, '测试测试字数字数字数', 0, NULL, '14', 1546482972345, '14', 1546482972345, 0);
INSERT INTO `biz_notice_receive` VALUES (271, 64, 92, 29, '测试3', 0, NULL, '14', 1546482972345, '14', 1546482972345, 0);
INSERT INTO `biz_notice_receive` VALUES (272, 64, 92, 30, '测试4', 0, NULL, '14', 1546482972345, '14', 1546482972345, 0);
INSERT INTO `biz_notice_receive` VALUES (273, 64, 92, 31, '测试5', 0, NULL, '14', 1546482972345, '14', 1546482972345, 0);
INSERT INTO `biz_notice_receive` VALUES (274, 64, 92, 32, '测试6', 0, NULL, '14', 1546482972345, '14', 1546482972345, 0);
INSERT INTO `biz_notice_receive` VALUES (275, 64, 92, 33, '测试7', 0, NULL, '14', 1546482972345, '14', 1546482972345, 0);
INSERT INTO `biz_notice_receive` VALUES (276, 64, 92, 34, '测试8', 0, NULL, '14', 1546482972345, '14', 1546482972345, 0);
INSERT INTO `biz_notice_receive` VALUES (277, 64, 92, 35, '测试9', 0, NULL, '14', 1546482972345, '14', 1546482972345, 0);
INSERT INTO `biz_notice_receive` VALUES (278, 64, 92, 36, '测试10', 0, NULL, '14', 1546482972345, '14', 1546482972345, 0);
INSERT INTO `biz_notice_receive` VALUES (279, 64, 92, 37, '测试11', 0, NULL, '14', 1546482972345, '14', 1546482972345, 0);
INSERT INTO `biz_notice_receive` VALUES (280, 64, 92, 38, '测试12', 0, NULL, '14', 1546482972345, '14', 1546482972345, 0);
INSERT INTO `biz_notice_receive` VALUES (281, 64, 92, 39, '测试13', 0, NULL, '14', 1546482972345, '14', 1546482972345, 0);
INSERT INTO `biz_notice_receive` VALUES (282, 64, 93, 14, '蔡老师', 1, NULL, '14', 1546483063128, '14', 1546483069474, 0);
INSERT INTO `biz_notice_receive` VALUES (283, 64, 93, 18, '蒋依依', 0, NULL, '14', 1546483063128, '14', 1546483063128, 0);
INSERT INTO `biz_notice_receive` VALUES (284, 64, 93, 24, '李小白', 0, NULL, '14', 1546483063128, '14', 1546483063128, 0);
INSERT INTO `biz_notice_receive` VALUES (285, 64, 93, 27, '测试1', 0, NULL, '14', 1546483063128, '14', 1546483063128, 0);
INSERT INTO `biz_notice_receive` VALUES (286, 64, 93, 28, '测试测试字数字数字数', 0, NULL, '14', 1546483063128, '14', 1546483063128, 0);
INSERT INTO `biz_notice_receive` VALUES (287, 64, 93, 29, '测试3', 0, NULL, '14', 1546483063128, '14', 1546483063128, 0);
INSERT INTO `biz_notice_receive` VALUES (288, 64, 93, 30, '测试4', 0, NULL, '14', 1546483063128, '14', 1546483063128, 0);
INSERT INTO `biz_notice_receive` VALUES (289, 64, 93, 31, '测试5', 0, NULL, '14', 1546483063128, '14', 1546483063128, 0);
INSERT INTO `biz_notice_receive` VALUES (290, 64, 93, 32, '测试6', 0, NULL, '14', 1546483063128, '14', 1546483063128, 0);
INSERT INTO `biz_notice_receive` VALUES (291, 64, 93, 33, '测试7', 0, NULL, '14', 1546483063128, '14', 1546483063128, 0);
INSERT INTO `biz_notice_receive` VALUES (292, 64, 93, 34, '测试8', 0, NULL, '14', 1546483063128, '14', 1546483063128, 0);
INSERT INTO `biz_notice_receive` VALUES (293, 64, 93, 35, '测试9', 0, NULL, '14', 1546483063128, '14', 1546483063128, 0);
INSERT INTO `biz_notice_receive` VALUES (294, 64, 93, 36, '测试10', 0, NULL, '14', 1546483063128, '14', 1546483063128, 0);
INSERT INTO `biz_notice_receive` VALUES (295, 64, 93, 37, '测试11', 0, NULL, '14', 1546483063128, '14', 1546483063128, 0);
INSERT INTO `biz_notice_receive` VALUES (296, 64, 93, 38, '测试12', 0, NULL, '14', 1546483063128, '14', 1546483063128, 0);
INSERT INTO `biz_notice_receive` VALUES (297, 64, 93, 39, '测试13', 0, NULL, '14', 1546483063128, '14', 1546483063128, 0);
INSERT INTO `biz_notice_receive` VALUES (298, 64, 94, 14, '蔡老师', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (299, 64, 94, 18, '蒋依依', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (300, 64, 94, 24, '李小白', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (301, 64, 94, 27, '测试1', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (302, 64, 94, 28, '测试测试字数字数字数', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (303, 64, 94, 29, '测试3', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (304, 64, 94, 30, '测试4', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (305, 64, 94, 31, '测试5', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (306, 64, 94, 32, '测试6', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (307, 64, 94, 33, '测试7', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (308, 64, 94, 34, '测试8', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (309, 64, 94, 35, '测试9', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (310, 64, 94, 36, '测试10', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (311, 64, 94, 37, '测试11', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (312, 64, 94, 38, '测试12', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (313, 64, 94, 39, '测试13', 0, NULL, '14', 1546483628333, '14', 1546483628333, 0);
INSERT INTO `biz_notice_receive` VALUES (314, 64, 92, 41, '林悦伟', 1, NULL, '41', 1546485820379, '41', 1546510125278, 0);
INSERT INTO `biz_notice_receive` VALUES (315, 64, 95, 14, '蔡老师', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (316, 64, 95, 18, '蒋依依', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (317, 64, 95, 24, '李小白', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (318, 64, 95, 27, '测试1', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (319, 64, 95, 28, '测试测试字数字数字数', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (320, 64, 95, 29, '测试3', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (321, 64, 95, 30, '测试4', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (322, 64, 95, 31, '测试5', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (323, 64, 95, 32, '测试6', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (324, 64, 95, 33, '测试7', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (325, 64, 95, 34, '测试8', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (326, 64, 95, 35, '测试9', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (327, 64, 95, 36, '测试10', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (328, 64, 95, 37, '测试11', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (329, 64, 95, 38, '测试12', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (330, 64, 95, 39, '测试13', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (331, 64, 95, 41, '林悦伟', 0, NULL, '14', 1546487759101, '14', 1546487759101, 0);
INSERT INTO `biz_notice_receive` VALUES (332, 64, 96, 14, '蔡老师', 1, NULL, '14', 1546487880757, '14', 1546495723654, 0);
INSERT INTO `biz_notice_receive` VALUES (333, 64, 96, 18, '蒋依依', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (334, 64, 96, 24, '李小白', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (335, 64, 96, 27, '测试1', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (336, 64, 96, 28, '测试测试字数字数字数', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (337, 64, 96, 29, '测试3', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (338, 64, 96, 30, '测试4', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (339, 64, 96, 31, '测试5', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (340, 64, 96, 32, '测试6', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (341, 64, 96, 33, '测试7', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (342, 64, 96, 34, '测试8', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (343, 64, 96, 35, '测试9', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (344, 64, 96, 36, '测试10', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (345, 64, 96, 37, '测试11', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (346, 64, 96, 38, '测试12', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (347, 64, 96, 39, '测试13', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (348, 64, 96, 41, '林悦伟', 0, NULL, '14', 1546487880757, '14', 1546487880757, 0);
INSERT INTO `biz_notice_receive` VALUES (349, 64, 97, 14, '蔡老师', 1, NULL, '14', 1546497726277, '14', 1546497728278, 0);
INSERT INTO `biz_notice_receive` VALUES (350, 64, 97, 18, '蒋依依', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (351, 64, 97, 24, '李小白', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (352, 64, 97, 27, '测试1', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (353, 64, 97, 28, '测试测试字数字数字数', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (354, 64, 97, 29, '测试3', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (355, 64, 97, 30, '测试4', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (356, 64, 97, 31, '测试5', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (357, 64, 97, 32, '测试6', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (358, 64, 97, 33, '测试7', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (359, 64, 97, 34, '测试8', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (360, 64, 97, 35, '测试9', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (361, 64, 97, 36, '测试10', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (362, 64, 97, 37, '测试11', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (363, 64, 97, 38, '测试12', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (364, 64, 97, 39, '测试13', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (365, 64, 97, 41, '林悦伟', 0, NULL, '14', 1546497726277, '14', 1546497726277, 0);
INSERT INTO `biz_notice_receive` VALUES (366, 64, 98, 14, '蔡老师', 1, NULL, '14', 1546497855916, '14', 1546497925838, 0);
INSERT INTO `biz_notice_receive` VALUES (367, 64, 98, 18, '蒋依依', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (368, 64, 98, 24, '李小白', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (369, 64, 98, 27, '测试1', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (370, 64, 98, 28, '测试测试字数字数字数', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (371, 64, 98, 29, '测试3', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (372, 64, 98, 30, '测试4', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (373, 64, 98, 31, '测试5', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (374, 64, 98, 32, '测试6', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (375, 64, 98, 33, '测试7', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (376, 64, 98, 34, '测试8', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (377, 64, 98, 35, '测试9', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (378, 64, 98, 36, '测试10', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (379, 64, 98, 37, '测试11', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (380, 64, 98, 38, '测试12', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (381, 64, 98, 39, '测试13', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (382, 64, 98, 41, '林悦伟', 0, NULL, '14', 1546497855916, '14', 1546497855916, 0);
INSERT INTO `biz_notice_receive` VALUES (383, 74, 99, 24, '2', 0, NULL, '24', 1546499691930, '24', 1546499691930, 0);
INSERT INTO `biz_notice_receive` VALUES (384, 87, 100, 41, '林悦伟', 0, NULL, '41', 1546499778570, '41', 1546499778570, 0);
INSERT INTO `biz_notice_receive` VALUES (385, 87, 101, 41, '林悦伟', 1, NULL, '41', 1546499923231, '41', 1546500097529, 0);
INSERT INTO `biz_notice_receive` VALUES (386, 64, 102, 14, '蔡老师', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (387, 64, 102, 18, '蒋依依', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (388, 64, 102, 24, '李小白', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (389, 64, 102, 27, '测试1', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (390, 64, 102, 28, '测试测试字数字数字数', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (391, 64, 102, 29, '测试3', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (392, 64, 102, 30, '测试4', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (393, 64, 102, 31, '测试5', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (394, 64, 102, 32, '测试6', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (395, 64, 102, 33, '测试7', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (396, 64, 102, 34, '测试8', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (397, 64, 102, 35, '测试9', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (398, 64, 102, 36, '测试10', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (399, 64, 102, 37, '测试11', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (400, 64, 102, 38, '测试12', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (401, 64, 102, 39, '测试13', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (402, 64, 102, 41, '林悦伟', 0, NULL, '14', 1546500085321, '14', 1546500085321, 0);
INSERT INTO `biz_notice_receive` VALUES (403, 64, 103, 14, '蔡老师', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (404, 64, 103, 18, '蒋依依', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (405, 64, 103, 24, '李小白', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (406, 64, 103, 27, '测试1', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (407, 64, 103, 28, '测试测试字数字数字数', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (408, 64, 103, 29, '测试3', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (409, 64, 103, 30, '测试4', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (410, 64, 103, 31, '测试5', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (411, 64, 103, 32, '测试6', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (412, 64, 103, 33, '测试7', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (413, 64, 103, 34, '测试8', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (414, 64, 103, 35, '测试9', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (415, 64, 103, 36, '测试10', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (416, 64, 103, 37, '测试11', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (417, 64, 103, 38, '测试12', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (418, 64, 103, 39, '测试13', 0, NULL, '14', 1546500310903, '14', 1546500310903, 0);
INSERT INTO `biz_notice_receive` VALUES (419, 64, 103, 41, '林悦伟', 1, NULL, '14', 1546500310903, '41', 1546509739642, 0);
INSERT INTO `biz_notice_receive` VALUES (420, 64, 104, 14, '蔡老师', 1, NULL, '14', 1546501026705, '14', 1546501263533, 0);
INSERT INTO `biz_notice_receive` VALUES (421, 64, 104, 18, '蒋依依', 0, NULL, '14', 1546501026705, '14', 1546501026705, 0);
INSERT INTO `biz_notice_receive` VALUES (422, 64, 104, 24, '李小白', 0, NULL, '14', 1546501026705, '14', 1546501026705, 0);
INSERT INTO `biz_notice_receive` VALUES (423, 64, 104, 27, '测试1', 0, NULL, '14', 1546501026705, '14', 1546501026705, 0);
INSERT INTO `biz_notice_receive` VALUES (424, 64, 104, 28, '测试测试字数字数字数', 0, NULL, '14', 1546501026705, '14', 1546501026705, 0);
INSERT INTO `biz_notice_receive` VALUES (425, 64, 104, 29, '测试3', 0, NULL, '14', 1546501026705, '14', 1546501026705, 0);
INSERT INTO `biz_notice_receive` VALUES (426, 64, 104, 30, '测试4', 0, NULL, '14', 1546501026705, '14', 1546501026705, 0);
INSERT INTO `biz_notice_receive` VALUES (427, 64, 104, 31, '测试5', 0, NULL, '14', 1546501026705, '14', 1546501026705, 0);
INSERT INTO `biz_notice_receive` VALUES (428, 64, 104, 32, '测试6', 0, NULL, '14', 1546501026705, '14', 1546501026705, 0);
INSERT INTO `biz_notice_receive` VALUES (429, 64, 104, 33, '测试7', 0, NULL, '14', 1546501026705, '14', 1546501026705, 0);
INSERT INTO `biz_notice_receive` VALUES (430, 64, 104, 34, '测试8', 0, NULL, '14', 1546501026705, '14', 1546501026705, 0);
INSERT INTO `biz_notice_receive` VALUES (431, 64, 104, 35, '测试9', 0, NULL, '14', 1546501026705, '14', 1546501026705, 0);
INSERT INTO `biz_notice_receive` VALUES (432, 64, 104, 36, '测试10', 0, NULL, '14', 1546501026705, '14', 1546501026705, 0);
INSERT INTO `biz_notice_receive` VALUES (433, 64, 104, 37, '测试11', 0, NULL, '14', 1546501026705, '14', 1546501026705, 0);
INSERT INTO `biz_notice_receive` VALUES (434, 64, 104, 38, '测试12', 0, NULL, '14', 1546501026705, '14', 1546501026705, 0);
INSERT INTO `biz_notice_receive` VALUES (435, 64, 104, 39, '测试13', 0, NULL, '14', 1546501026705, '14', 1546501026705, 0);
INSERT INTO `biz_notice_receive` VALUES (436, 64, 104, 41, '林悦伟', 1, NULL, '14', 1546501026705, '41', 1546509843094, 0);
INSERT INTO `biz_notice_receive` VALUES (437, 96, 105, 21, '字那你可', 1, NULL, '21', 1546502211806, '21', 1546522251058, 0);
INSERT INTO `biz_notice_receive` VALUES (438, 96, 105, 15, '高', 1, NULL, '15', 1546503712015, '15', 1546504012102, 0);
INSERT INTO `biz_notice_receive` VALUES (439, 64, 106, 14, '蔡老师', 1, NULL, '14', 1546504695753, '14', 1546504697641, 0);
INSERT INTO `biz_notice_receive` VALUES (440, 64, 106, 18, '蒋依依', 0, NULL, '14', 1546504695753, '14', 1546504695753, 0);
INSERT INTO `biz_notice_receive` VALUES (441, 64, 106, 24, '李小白', 1, NULL, '14', 1546504695753, '24', 1546504775057, 0);
INSERT INTO `biz_notice_receive` VALUES (442, 64, 106, 27, '测试1', 0, NULL, '14', 1546504695753, '14', 1546504695753, 0);
INSERT INTO `biz_notice_receive` VALUES (443, 64, 106, 28, '测试测试字数字数字数', 0, NULL, '14', 1546504695753, '14', 1546504695753, 0);
INSERT INTO `biz_notice_receive` VALUES (444, 64, 106, 29, '测试3', 0, NULL, '14', 1546504695753, '14', 1546504695753, 0);
INSERT INTO `biz_notice_receive` VALUES (445, 64, 106, 30, '测试4', 0, NULL, '14', 1546504695753, '14', 1546504695753, 0);
INSERT INTO `biz_notice_receive` VALUES (446, 64, 106, 31, '测试5', 0, NULL, '14', 1546504695753, '14', 1546504695753, 0);
INSERT INTO `biz_notice_receive` VALUES (447, 64, 106, 32, '测试6', 0, NULL, '14', 1546504695753, '14', 1546504695753, 0);
INSERT INTO `biz_notice_receive` VALUES (448, 64, 106, 33, '测试7', 0, NULL, '14', 1546504695753, '14', 1546504695753, 0);
INSERT INTO `biz_notice_receive` VALUES (449, 64, 106, 34, '测试8', 0, NULL, '14', 1546504695753, '14', 1546504695753, 0);
INSERT INTO `biz_notice_receive` VALUES (450, 64, 106, 35, '测试9', 0, NULL, '14', 1546504695753, '14', 1546504695753, 0);
INSERT INTO `biz_notice_receive` VALUES (451, 64, 106, 36, '测试10', 0, NULL, '14', 1546504695753, '14', 1546504695753, 0);
INSERT INTO `biz_notice_receive` VALUES (452, 64, 106, 37, '测试11', 0, NULL, '14', 1546504695753, '14', 1546504695753, 0);
INSERT INTO `biz_notice_receive` VALUES (453, 64, 106, 38, '测试12', 0, NULL, '14', 1546504695753, '14', 1546504695753, 0);
INSERT INTO `biz_notice_receive` VALUES (454, 64, 106, 39, '测试13', 0, NULL, '14', 1546504695753, '14', 1546504695753, 0);
INSERT INTO `biz_notice_receive` VALUES (455, 64, 106, 41, '林悦伟', 1, NULL, '14', 1546504695753, '41', 1546509727484, 0);
INSERT INTO `biz_notice_receive` VALUES (456, 90, 107, 14, '测试', 1, NULL, '14', 1546504836550, '14', 1546504839546, 0);
INSERT INTO `biz_notice_receive` VALUES (457, 90, 107, 24, '3333', 1, NULL, '24', 1546504858922, '24', 1546504961714, 0);
INSERT INTO `biz_notice_receive` VALUES (458, 79, 108, 24, '测试字数字数字数字', 1, NULL, '24', 1546505203070, '24', 1546505206138, 0);
INSERT INTO `biz_notice_receive` VALUES (459, 79, 108, 42, '杰克马', 1, NULL, '42', 1546505386338, '42', 1546505593494, 0);
INSERT INTO `biz_notice_receive` VALUES (460, 75, 109, 24, '测试', 1, NULL, '24', 1546505828073, '24', 1546506061502, 0);
INSERT INTO `biz_notice_receive` VALUES (461, 87, 110, 41, '林悦伟', 0, NULL, '41', 1546509430329, '41', 1546509430329, 0);
INSERT INTO `biz_notice_receive` VALUES (462, 87, 111, 41, '林悦伟', 1, NULL, '41', 1546509621388, '41', 1546567438450, 0);
INSERT INTO `biz_notice_receive` VALUES (463, 64, 89, 41, '林悦伟', 1, NULL, '41', 1546510127739, '41', 1546510127739, 0);
INSERT INTO `biz_notice_receive` VALUES (464, 88, 112, 18, '吉永老师', 1, NULL, '18', 1546566243930, '18', 1546569862042, 0);
INSERT INTO `biz_notice_receive` VALUES (465, 87, 113, 41, '林悦伟', 0, NULL, '41', 1546567556147, '41', 1546567556147, 0);
INSERT INTO `biz_notice_receive` VALUES (466, 64, 114, 14, '蔡老师', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (467, 64, 114, 18, '蒋依依', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (468, 64, 114, 24, '李小白', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (469, 64, 114, 27, '测试1', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (470, 64, 114, 28, '测试测试字数字数字数', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (471, 64, 114, 29, '测试3', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (472, 64, 114, 30, '测试4', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (473, 64, 114, 31, '测试5', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (474, 64, 114, 32, '测试6', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (475, 64, 114, 33, '测试7', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (476, 64, 114, 34, '测试8', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (477, 64, 114, 35, '测试9', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (478, 64, 114, 36, '测试10', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (479, 64, 114, 37, '测试11', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (480, 64, 114, 38, '测试12', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (481, 64, 114, 39, '测试13', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (482, 64, 114, 41, '林悦伟', 0, NULL, '14', 1546568447372, '14', 1546568447372, 0);
INSERT INTO `biz_notice_receive` VALUES (483, 64, 115, 14, '蔡老师', 1, NULL, '14', 1546568845264, '14', 1546568849135, 0);
INSERT INTO `biz_notice_receive` VALUES (484, 64, 115, 18, '蒋依依', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (485, 64, 115, 24, '李小白', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (486, 64, 115, 27, '测试1', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (487, 64, 115, 28, '测试测试字数字数字数', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (488, 64, 115, 29, '测试3', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (489, 64, 115, 30, '测试4', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (490, 64, 115, 31, '测试5', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (491, 64, 115, 32, '测试6', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (492, 64, 115, 33, '测试7', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (493, 64, 115, 34, '测试8', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (494, 64, 115, 35, '测试9', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (495, 64, 115, 36, '测试10', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (496, 64, 115, 37, '测试11', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (497, 64, 115, 38, '测试12', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (498, 64, 115, 39, '测试13', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (499, 64, 115, 41, '林悦伟', 0, NULL, '14', 1546568845264, '14', 1546568845264, 0);
INSERT INTO `biz_notice_receive` VALUES (500, 65, 116, 15, '毛蔚1', 0, NULL, '15', 1546569712786, '15', 1546569712786, 0);
INSERT INTO `biz_notice_receive` VALUES (501, 69, 117, 18, '园长', 1, NULL, '18', 1546570310392, '18', 1546570315682, 0);

-- ----------------------------
-- Table structure for group_code_index
-- ----------------------------
DROP TABLE IF EXISTS `group_code_index`;
CREATE TABLE `group_code_index`  (
  `digit` tinyint(4) NOT NULL COMMENT '位数',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'id',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态 0-启用，1-停用',
  UNIQUE INDEX `INX_GROUP_INDEX_UNI_CODE`(`code`) USING BTREE,
  INDEX `INX_GROUP_INDEX_STATUS`(`status`, `digit`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'groupCode值记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for group_user_rel
-- ----------------------------
DROP TABLE IF EXISTS `group_user_rel`;
CREATE TABLE `group_user_rel`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupId` bigint(20) NOT NULL COMMENT '群组id',
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `userType` int(2) NOT NULL COMMENT '用户类型(1:教师；2：家长)',
  `userIdentity` int(2) NOT NULL COMMENT '用户在群组中的身份，1：班主任（创建人) ；2：管理员；3：教师；4：家长。群组创建人默认是班主任，管理员由群主设置。',
  `userStatus` int(2) NOT NULL COMMENT '成员状态，审核不通过时，移除记录，只保留两种状态；0：待审核，1：正式成员；',
  `nickName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '成员在群组中的昵称',
  `remark` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注，可用于用户申请加入群组时，填写的信息，用于审核依据',
  `studentId` bigint(20) NULL DEFAULT NULL COMMENT '关联学生id',
  `creator` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createDate` bigint(20) NOT NULL COMMENT '创建时间',
  `lastModifier` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修改人',
  `lastModDate` bigint(20) NOT NULL COMMENT '修改时间',
  `status` tinyint(4) NOT NULL COMMENT '状态 0-启用，1-停用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `AK_uq_groupId_userId`(`groupId`, `userId`) USING BTREE,
  INDEX `FK_Reference_2`(`userId`) USING BTREE,
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`groupId`) REFERENCES `bas_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`userId`) REFERENCES `bas_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 261 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '群组与用户关系表，一个用户可以有N个群组' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of group_user_rel
-- ----------------------------
INSERT INTO `group_user_rel` VALUES (83, 64, 14, 1, 1, 1, '蔡老师', NULL, NULL, '14', 1545808591412, '14', 1545981605618, 0);
INSERT INTO `group_user_rel` VALUES (84, 65, 15, 1, 1, 1, '毛蔚1', NULL, NULL, '15', 1545808617052, '15', 1546392881449, 0);
INSERT INTO `group_user_rel` VALUES (91, 66, 21, 1, 1, 1, '毛老师1', NULL, NULL, '21', 1545809653436, '21', 1546392251442, 0);
INSERT INTO `group_user_rel` VALUES (92, 67, 14, 1, 1, 1, '李白', NULL, NULL, '14', 1545809654487, '14', 1545893152730, 0);
INSERT INTO `group_user_rel` VALUES (93, 68, 14, 1, 1, 1, '姓名字数字数字数字数', NULL, NULL, '14', 1545809789428, '14', 1545809789428, 0);
INSERT INTO `group_user_rel` VALUES (94, 66, 15, 1, 3, 1, '高宇恒', NULL, NULL, '15', 1545809814898, '15', 1545809814898, 0);
INSERT INTO `group_user_rel` VALUES (95, 64, 18, 1, 3, 1, '蒋依依', NULL, NULL, '18', 1545809954140, '18', 1545960559642, 0);
INSERT INTO `group_user_rel` VALUES (96, 69, 18, 1, 1, 1, '园长', NULL, NULL, '18', 1545810090707, '18', 1545810644558, 0);
INSERT INTO `group_user_rel` VALUES (98, 71, 15, 1, 1, 1, '高老师', NULL, NULL, '15', 1545817145610, '15', 1545821835447, 0);
INSERT INTO `group_user_rel` VALUES (99, 71, 21, 1, 3, 1, '陈同学', NULL, NULL, '21', 1545817350647, '21', 1545817350647, 0);
INSERT INTO `group_user_rel` VALUES (105, 67, 24, 1, 3, 1, '李白', NULL, NULL, '24', 1545892227530, '24', 1545892227530, 0);
INSERT INTO `group_user_rel` VALUES (106, 73, 24, 1, 1, 1, '李白', NULL, NULL, '24', 1545893237904, '24', 1545893974434, 0);
INSERT INTO `group_user_rel` VALUES (107, 73, 14, 1, 3, 1, '李莫愁李莫愁李莫愁李莫愁', NULL, NULL, '14', 1545893307130, '14', 1545893307130, 0);
INSERT INTO `group_user_rel` VALUES (108, 74, 24, 1, 1, 1, '2', NULL, NULL, '24', 1545894049714, '24', 1545894108150, 0);
INSERT INTO `group_user_rel` VALUES (109, 75, 24, 1, 1, 1, '测试', NULL, NULL, '24', 1545894119733, '24', 1545894119733, 0);
INSERT INTO `group_user_rel` VALUES (110, 76, 24, 1, 1, 1, '3', NULL, NULL, '24', 1545894428692, '24', 1545894446876, 0);
INSERT INTO `group_user_rel` VALUES (111, 77, 24, 1, 1, 1, '额额额额', NULL, NULL, '24', 1545894459984, '24', 1545894459984, 0);
INSERT INTO `group_user_rel` VALUES (112, 78, 24, 1, 1, 1, '测试', NULL, NULL, '24', 1545894476647, '24', 1545894476647, 0);
INSERT INTO `group_user_rel` VALUES (113, 79, 24, 1, 1, 1, '测试字数字数字数字', NULL, NULL, '24', 1545894619369, '24', 1545894619369, 0);
INSERT INTO `group_user_rel` VALUES (114, 80, 24, 1, 1, 1, '德德', NULL, NULL, '24', 1545894651783, '24', 1545894651783, 0);
INSERT INTO `group_user_rel` VALUES (115, 64, 24, 1, 3, 1, '李小白', NULL, NULL, '24', 1545900350734, '24', 1546395362588, 0);
INSERT INTO `group_user_rel` VALUES (116, 81, 24, 1, 1, 1, 'chenliis6', NULL, NULL, '24', 1545959153217, '24', 1545959153217, 0);
INSERT INTO `group_user_rel` VALUES (117, 82, 24, 1, 1, 1, '21121212', NULL, NULL, '24', 1545960992391, '24', 1546413673729, 0);
INSERT INTO `group_user_rel` VALUES (118, 83, 21, 1, 1, 1, '黄老师', NULL, NULL, '21', 1545966602001, '21', 1546392057987, 0);
INSERT INTO `group_user_rel` VALUES (119, 83, 15, 1, 3, 1, '张同学', NULL, NULL, '15', 1545966680414, '15', 1545966680414, 0);
INSERT INTO `group_user_rel` VALUES (220, 64, 27, 1, 3, 1, '测试1', NULL, NULL, '27', 1545966602001, '27', 1545967456025, 0);
INSERT INTO `group_user_rel` VALUES (221, 64, 28, 1, 3, 1, '测试测试字数字数字数', NULL, NULL, '28', 0, '', 0, 0);
INSERT INTO `group_user_rel` VALUES (222, 64, 29, 1, 3, 1, '测试3', NULL, NULL, '29', 0, '', 0, 0);
INSERT INTO `group_user_rel` VALUES (223, 64, 30, 1, 3, 1, '测试4', NULL, NULL, '30', 0, '', 0, 0);
INSERT INTO `group_user_rel` VALUES (224, 64, 31, 1, 3, 1, '测试5', NULL, NULL, '31', 0, '', 0, 0);
INSERT INTO `group_user_rel` VALUES (225, 64, 32, 1, 3, 1, '测试6', NULL, NULL, '32', 0, '', 0, 0);
INSERT INTO `group_user_rel` VALUES (226, 64, 33, 1, 3, 1, '测试7', NULL, NULL, '33', 0, '', 0, 0);
INSERT INTO `group_user_rel` VALUES (227, 64, 34, 1, 3, 1, '测试8', NULL, NULL, '34', 0, '', 0, 0);
INSERT INTO `group_user_rel` VALUES (228, 64, 35, 1, 3, 1, '测试9', NULL, NULL, '35', 0, '', 0, 0);
INSERT INTO `group_user_rel` VALUES (229, 64, 36, 1, 3, 1, '测试10', NULL, NULL, '36', 0, '', 0, 0);
INSERT INTO `group_user_rel` VALUES (230, 64, 37, 1, 3, 1, '测试11', NULL, NULL, '37', 0, '', 0, 0);
INSERT INTO `group_user_rel` VALUES (231, 64, 38, 1, 3, 1, '测试12', NULL, NULL, '38', 0, '', 0, 0);
INSERT INTO `group_user_rel` VALUES (232, 64, 39, 1, 3, 1, '测试13', NULL, NULL, '39', 0, '', 0, 0);
INSERT INTO `group_user_rel` VALUES (233, 84, 14, 1, 1, 1, '测试', NULL, NULL, '14', 1545981833400, '14', 1545981881625, 0);
INSERT INTO `group_user_rel` VALUES (234, 85, 21, 1, 1, 1, 'teacher01', NULL, NULL, '21', 1546390991035, '21', 1546390991035, 0);
INSERT INTO `group_user_rel` VALUES (235, 85, 15, 1, 3, 1, '1', NULL, NULL, '15', 1546392167674, '15', 1546392167674, 0);
INSERT INTO `group_user_rel` VALUES (236, 86, 21, 1, 1, 1, '老师', NULL, NULL, '21', 1546392516692, '21', 1546392516692, 0);
INSERT INTO `group_user_rel` VALUES (237, 87, 41, 1, 1, 1, '林悦伟', NULL, NULL, '41', 1546392545116, '41', 1546392545116, 0);
INSERT INTO `group_user_rel` VALUES (238, 86, 15, 1, 3, 1, '我', NULL, NULL, '15', 1546392859930, '15', 1546392859930, 0);
INSERT INTO `group_user_rel` VALUES (243, 64, 41, 2, 3, 1, '林悦伟', NULL, NULL, '15', 0, '', 0, 0);
INSERT INTO `group_user_rel` VALUES (244, 88, 18, 1, 1, 1, '吉永老师', NULL, NULL, '18', 1546396499364, '18', 1546563679217, 0);
INSERT INTO `group_user_rel` VALUES (245, 84, 24, 1, 3, 1, '测试字数测试字数测试', NULL, NULL, '24', 1546408718770, '24', 1546408718770, 0);
INSERT INTO `group_user_rel` VALUES (246, 68, 24, 1, 3, 1, '测试加入加入加入加入', NULL, NULL, '24', 1546411688098, '24', 1546412135293, 0);
INSERT INTO `group_user_rel` VALUES (247, 89, 14, 1, 1, 1, '测试1', NULL, NULL, '14', 1546411749176, '14', 1546412258562, 0);
INSERT INTO `group_user_rel` VALUES (248, 90, 14, 1, 1, 1, '测试', NULL, NULL, '14', 1546412367699, '14', 1546412367699, 0);
INSERT INTO `group_user_rel` VALUES (249, 91, 21, 1, 1, 1, 'koyuhau', NULL, NULL, '21', 1546412503427, '21', 1546412620865, 0);
INSERT INTO `group_user_rel` VALUES (250, 92, 21, 1, 1, 1, 'qqq', NULL, NULL, '21', 1546412710519, '21', 1546413412018, 0);
INSERT INTO `group_user_rel` VALUES (251, 93, 21, 1, 1, 1, 'ww', NULL, NULL, '21', 1546413421916, '21', 1546413440974, 0);
INSERT INTO `group_user_rel` VALUES (252, 94, 21, 1, 1, 1, 'jack', NULL, NULL, '21', 1546413585633, '21', 1546413592381, 0);
INSERT INTO `group_user_rel` VALUES (253, 95, 24, 1, 1, 1, '测试老师', NULL, NULL, '24', 1546414346266, '24', 1546414452394, 0);
INSERT INTO `group_user_rel` VALUES (254, 96, 21, 1, 1, 1, '字那你可', NULL, NULL, '21', 1546502194567, '21', 1546502194567, 0);
INSERT INTO `group_user_rel` VALUES (256, 96, 15, 1, 3, 1, '高', NULL, NULL, '15', 1546503982374, '15', 1546503982374, 0);
INSERT INTO `group_user_rel` VALUES (257, 90, 24, 1, 3, 1, '3333', NULL, NULL, '24', 1546504857746, '24', 1546504857746, 0);
INSERT INTO `group_user_rel` VALUES (258, 89, 24, 1, 3, 1, '不加入', NULL, NULL, '24', 1546504981146, '24', 1546504981146, 0);
INSERT INTO `group_user_rel` VALUES (260, 97, 18, 1, 1, 1, '麦园长', NULL, NULL, '18', 1546566015974, '18', 1546566015974, 0);

SET FOREIGN_KEY_CHECKS = 1;
