/*
 Navicat MySQL Data Transfer

 Source Server         : HOME
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : mt

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 29/07/2025 21:02:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for test_dataset
-- ----------------------------
DROP TABLE IF EXISTS `test_dataset`;
CREATE TABLE `test_dataset`  (
  `test_id` int(0) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `seq_num` int(0) NOT NULL,
  `correct` int(0) NOT NULL DEFAULT 0,
  `error` int(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`test_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 300 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_dataset
-- ----------------------------
INSERT INTO `test_dataset` VALUES (1, '/home/user/dataset/CUB_200_2011/images/065.Slaty_backed_Gull/Slaty_Backed_Gull_0017_796034.jpg', 'Slaty_backed_Gull', 'cub5', 'test', 1, 0, 0);
INSERT INTO `test_dataset` VALUES (2, '/home/user/dataset/CUB_200_2011/images/065.Slaty_backed_Gull/Slaty_Backed_Gull_0003_796032.jpg', 'Slaty_backed_Gull', 'cub5', 'test', 2, 0, 0);
INSERT INTO `test_dataset` VALUES (3, '/home/user/dataset/CUB_200_2011/images/065.Slaty_backed_Gull/Slaty_Backed_Gull_0023_796030.jpg', 'Slaty_backed_Gull', 'cub5', 'test', 3, 0, 0);
INSERT INTO `test_dataset` VALUES (4, '/home/user/dataset/CUB_200_2011/images/062.Herring_Gull/Herring_Gull_0056_46783.jpg', 'Herring_Gull', 'cub5', 'test', 4, 0, 0);
INSERT INTO `test_dataset` VALUES (5, '/home/user/dataset/CUB_200_2011/images/066.Western_Gull/Western_Gull_0099_53670.jpg', 'Western_Gull', 'cub5', 'test', 5, 0, 0);
INSERT INTO `test_dataset` VALUES (6, '/home/user/dataset/CUB_200_2011/images/061.Heermann_Gull/Heermann_Gull_0138_45269.jpg', 'Heermann_Gull', 'cub5', 'test', 6, 0, 0);
INSERT INTO `test_dataset` VALUES (7, '/home/user/dataset/CUB_200_2011/images/064.Ring_billed_Gull/Ring_Billed_Gull_0107_51306.jpg', 'Ring_billed_Gull', 'cub5', 'test', 7, 0, 0);
INSERT INTO `test_dataset` VALUES (8, '/home/user/dataset/CUB_200_2011/images/064.Ring_billed_Gull/Ring_Billed_Gull_0131_51370.jpg', 'Ring_billed_Gull', 'cub5', 'test', 8, 0, 0);
INSERT INTO `test_dataset` VALUES (9, '/home/user/dataset/CUB_200_2011/images/066.Western_Gull/Western_Gull_0069_53553.jpg', 'Western_Gull', 'cub5', 'test', 9, 0, 0);
INSERT INTO `test_dataset` VALUES (10, '/home/user/dataset/CUB_200_2011/images/064.Ring_billed_Gull/Ring_Billed_Gull_0034_51270.jpg', 'Ring_billed_Gull', 'cub5', 'test', 10, 0, 0);
INSERT INTO `test_dataset` VALUES (11, '/home/user/dataset/CUB_200_2011/images/061.Heermann_Gull/Heermann_Gull_0102_45904.jpg', 'Heermann_Gull', 'cub5', 'test', 11, 0, 0);
INSERT INTO `test_dataset` VALUES (12, '/home/user/dataset/CUB_200_2011/images/065.Slaty_backed_Gull/Slaty_Backed_Gull_0024_796028.jpg', 'Slaty_backed_Gull', 'cub5', 'test', 12, 0, 0);
INSERT INTO `test_dataset` VALUES (13, '/home/user/dataset/CUB_200_2011/images/064.Ring_billed_Gull/Ring_Billed_Gull_0013_50180.jpg', 'Ring_billed_Gull', 'cub5', 'test', 13, 0, 0);
INSERT INTO `test_dataset` VALUES (14, '/home/user/dataset/CUB_200_2011/images/061.Heermann_Gull/Heermann_Gull_0018_45608.jpg', 'Heermann_Gull', 'cub5', 'test', 14, 0, 0);
INSERT INTO `test_dataset` VALUES (15, '/home/user/dataset/CUB_200_2011/images/061.Heermann_Gull/Heermann_Gull_0136_45416.jpg', 'Heermann_Gull', 'cub5', 'test', 15, 0, 0);
INSERT INTO `test_dataset` VALUES (16, '/home/user/dataset/CUB_200_2011/images/062.Herring_Gull/Herring_Gull_0058_47383.jpg', 'Herring_Gull', 'cub5', 'test', 16, 0, 0);
INSERT INTO `test_dataset` VALUES (17, '/home/user/dataset/CUB_200_2011/images/066.Western_Gull/Western_Gull_0131_53349.jpg', 'Western_Gull', 'cub5', 'test', 17, 0, 0);
INSERT INTO `test_dataset` VALUES (18, '/home/user/dataset/CUB_200_2011/images/061.Heermann_Gull/Heermann_Gull_0009_45905.jpg', 'Heermann_Gull', 'cub5', 'test', 18, 0, 0);
INSERT INTO `test_dataset` VALUES (19, '/home/user/dataset/CUB_200_2011/images/062.Herring_Gull/Herring_Gull_0051_46276.jpg', 'Herring_Gull', 'cub5', 'test', 19, 0, 0);
INSERT INTO `test_dataset` VALUES (20, '/home/user/dataset/CUB_200_2011/images/066.Western_Gull/Western_Gull_0029_54143.jpg', 'Western_Gull', 'cub5', 'test', 20, 0, 0);
INSERT INTO `test_dataset` VALUES (21, '/home/user/dataset/CUB_200_2011/images/066.Western_Gull/Western_Gull_0012_53605.jpg', 'Western_Gull', 'cub5', 'test', 21, 0, 0);
INSERT INTO `test_dataset` VALUES (22, '/home/user/dataset/CUB_200_2011/images/062.Herring_Gull/Herring_Gull_0087_47841.jpg', 'Herring_Gull', 'cub5', 'test', 22, 0, 0);
INSERT INTO `test_dataset` VALUES (23, '/home/user/dataset/CUB_200_2011/images/064.Ring_billed_Gull/Ring_Billed_Gull_0113_51525.jpg', 'Ring_billed_Gull', 'cub5', 'test', 23, 0, 0);
INSERT INTO `test_dataset` VALUES (24, '/home/user/dataset/CUB_200_2011/images/064.Ring_billed_Gull/Ring_Billed_Gull_0128_51403.jpg', 'Ring_billed_Gull', 'cub5', 'test', 24, 0, 0);
INSERT INTO `test_dataset` VALUES (25, '/home/user/dataset/CUB_200_2011/images/065.Slaty_backed_Gull/Slaty_Backed_Gull_0063_796050.jpg', 'Slaty_backed_Gull', 'cub5', 'test', 25, 0, 0);
INSERT INTO `test_dataset` VALUES (26, '/home/user/dataset/CUB_200_2011/images/066.Western_Gull/Western_Gull_0116_54037.jpg', 'Western_Gull', 'cub5', 'test', 26, 0, 0);
INSERT INTO `test_dataset` VALUES (27, '/home/user/dataset/CUB_200_2011/images/061.Heermann_Gull/Heermann_Gull_0008_45839.jpg', 'Heermann_Gull', 'cub5', 'test', 27, 0, 0);
INSERT INTO `test_dataset` VALUES (28, '/home/user/dataset/CUB_200_2011/images/062.Herring_Gull/Herring_Gull_0139_47006.jpg', 'Herring_Gull', 'cub5', 'test', 28, 0, 0);
INSERT INTO `test_dataset` VALUES (29, '/home/user/dataset/CUB_200_2011/images/062.Herring_Gull/Herring_Gull_0047_46218.jpg', 'Herring_Gull', 'cub5', 'test', 29, 0, 0);
INSERT INTO `test_dataset` VALUES (30, '/home/user/dataset/CUB_200_2011/images/062.Herring_Gull/Herring_Gull_0132_47395.jpg', 'Herring_Gull', 'cub5', 'train', 1, 0, 0);
INSERT INTO `test_dataset` VALUES (31, '/home/user/dataset/CUB_200_2011/images/065.Slaty_backed_Gull/Slaty_Backed_Gull_0025_796047.jpg', 'Slaty_backed_Gull', 'cub5', 'train', 2, 0, 0);
INSERT INTO `test_dataset` VALUES (32, '/home/user/dataset/CUB_200_2011/images/064.Ring_billed_Gull/Ring_Billed_Gull_0036_51461.jpg', 'Ring_billed_Gull', 'cub5', 'train', 3, 0, 0);
INSERT INTO `test_dataset` VALUES (33, '/home/user/dataset/CUB_200_2011/images/066.Western_Gull/Western_Gull_0050_54425.jpg', 'Western_Gull', 'cub5', 'train', 4, 0, 0);
INSERT INTO `test_dataset` VALUES (34, '/home/user/dataset/CUB_200_2011/images/061.Heermann_Gull/Heermann_Gull_0130_45700.jpg', 'Heermann_Gull', 'cub5', 'train', 5, 0, 0);
INSERT INTO `test_dataset` VALUES (35, '/home/user/dataset/CUB_200_2011/images/062.Herring_Gull/Herring_Gull_0093_46029.jpg', 'Herring_Gull', 'cub5', 'train', 6, 0, 0);
INSERT INTO `test_dataset` VALUES (36, '/home/user/dataset/CUB_200_2011/images/065.Slaty_backed_Gull/Slaty_Backed_Gull_0036_796053.jpg', 'Slaty_backed_Gull', 'cub5', 'train', 7, 0, 0);
INSERT INTO `test_dataset` VALUES (37, '/home/user/dataset/CUB_200_2011/images/065.Slaty_backed_Gull/Slaty_Backed_Gull_0027_53080.jpg', 'Slaty_backed_Gull', 'cub5', 'train', 8, 0, 0);
INSERT INTO `test_dataset` VALUES (38, '/home/user/dataset/CUB_200_2011/images/066.Western_Gull/Western_Gull_0002_54825.jpg', 'Western_Gull', 'cub5', 'train', 9, 0, 0);
INSERT INTO `test_dataset` VALUES (39, '/home/user/dataset/CUB_200_2011/images/066.Western_Gull/Western_Gull_0043_54706.jpg', 'Western_Gull', 'cub5', 'train', 10, 0, 0);
INSERT INTO `test_dataset` VALUES (40, '/home/user/dataset/CUB_200_2011/images/064.Ring_billed_Gull/Ring_Billed_Gull_0057_51315.jpg', 'Ring_billed_Gull', 'cub5', 'train', 11, 0, 0);
INSERT INTO `test_dataset` VALUES (41, '/home/user/dataset/CUB_200_2011/images/061.Heermann_Gull/Heermann_Gull_0056_45751.jpg', 'Heermann_Gull', 'cub5', 'train', 12, 0, 0);
INSERT INTO `test_dataset` VALUES (42, '/home/user/dataset/CUB_200_2011/images/061.Heermann_Gull/Heermann_Gull_0020_45409.jpg', 'Heermann_Gull', 'cub5', 'train', 13, 0, 0);
INSERT INTO `test_dataset` VALUES (43, '/home/user/dataset/CUB_200_2011/images/065.Slaty_backed_Gull/Slaty_Backed_Gull_0061_53309.jpg', 'Slaty_backed_Gull', 'cub5', 'train', 14, 0, 0);
INSERT INTO `test_dataset` VALUES (44, '/home/user/dataset/CUB_200_2011/images/062.Herring_Gull/Herring_Gull_0010_46425.jpg', 'Herring_Gull', 'cub5', 'train', 15, 0, 0);
INSERT INTO `test_dataset` VALUES (45, '/home/user/dataset/CUB_200_2011/images/062.Herring_Gull/Herring_Gull_0120_48822.jpg', 'Herring_Gull', 'cub5', 'train', 16, 0, 0);
INSERT INTO `test_dataset` VALUES (46, '/home/user/dataset/CUB_200_2011/images/061.Heermann_Gull/Heermann_Gull_0001_45472.jpg', 'Heermann_Gull', 'cub5', 'train', 17, 0, 0);
INSERT INTO `test_dataset` VALUES (47, '/home/user/dataset/CUB_200_2011/images/066.Western_Gull/Western_Gull_0025_55421.jpg', 'Western_Gull', 'cub5', 'train', 18, 0, 0);
INSERT INTO `test_dataset` VALUES (48, '/home/user/dataset/CUB_200_2011/images/065.Slaty_backed_Gull/Slaty_Backed_Gull_0072_53314.jpg', 'Slaty_backed_Gull', 'cub5', 'train', 19, 0, 0);
INSERT INTO `test_dataset` VALUES (49, '/home/user/dataset/CUB_200_2011/images/064.Ring_billed_Gull/Ring_Billed_Gull_0117_51363.jpg', 'Ring_billed_Gull', 'cub5', 'train', 20, 0, 0);
INSERT INTO `test_dataset` VALUES (50, '/home/user/dataset/CUB_200_2011/images/169.Magnolia_Warbler/Magnolia_Warbler_0136_166388.jpg', 'Magnolia_Warbler', 'cub10', 'test', 1, 0, 0);
INSERT INTO `test_dataset` VALUES (51, '/home/user/dataset/CUB_200_2011/images/158.Bay_breasted_Warbler/Bay_Breasted_Warbler_0031_797137.jpg', 'Bay_breasted_Warbler', 'cub10', 'test', 2, 0, 0);
INSERT INTO `test_dataset` VALUES (52, '/home/user/dataset/CUB_200_2011/images/174.Palm_Warbler/Palm_Warbler_0039_170894.jpg', 'Palm_Warbler', 'cub10', 'test', 3, 0, 0);
INSERT INTO `test_dataset` VALUES (53, '/home/user/dataset/CUB_200_2011/images/160.Black_throated_Blue_Warbler/Black_Throated_Blue_Warbler_0111_161615.jpg', 'Black_throated_Blue_Warbler', 'cub10', 'test', 4, 0, 0);
INSERT INTO `test_dataset` VALUES (54, '/home/user/dataset/CUB_200_2011/images/109.American_Redstart/American_Redstart_0045_102823.jpg', 'American_Redstart', 'cub10', 'test', 5, 0, 0);
INSERT INTO `test_dataset` VALUES (55, '/home/user/dataset/CUB_200_2011/images/169.Magnolia_Warbler/Magnolia_Warbler_0097_165455.jpg', 'Magnolia_Warbler', 'cub10', 'test', 6, 0, 0);
INSERT INTO `test_dataset` VALUES (56, '/home/user/dataset/CUB_200_2011/images/109.American_Redstart/American_Redstart_0047_102860.jpg', 'American_Redstart', 'cub10', 'test', 7, 0, 0);
INSERT INTO `test_dataset` VALUES (57, '/home/user/dataset/CUB_200_2011/images/171.Myrtle_Warbler/Myrtle_Warbler_0045_166710.jpg', 'Myrtle_Warbler', 'cub10', 'test', 8, 0, 0);
INSERT INTO `test_dataset` VALUES (58, '/home/user/dataset/CUB_200_2011/images/167.Hooded_Warbler/Hooded_Warbler_0001_164704.jpg', 'Hooded_Warbler', 'cub10', 'test', 9, 0, 0);
INSERT INTO `test_dataset` VALUES (59, '/home/user/dataset/CUB_200_2011/images/165.Chestnut_sided_Warbler/Chestnut_Sided_Warbler_0103_163669.jpg', 'Chestnut_sided_Warbler', 'cub10', 'test', 10, 0, 0);
INSERT INTO `test_dataset` VALUES (60, '/home/user/dataset/CUB_200_2011/images/174.Palm_Warbler/Palm_Warbler_0003_170474.jpg', 'Palm_Warbler', 'cub10', 'test', 11, 0, 0);
INSERT INTO `test_dataset` VALUES (61, '/home/user/dataset/CUB_200_2011/images/163.Cape_May_Warbler/Cape_May_Warbler_0104_162958.jpg', 'Cape_May_Warbler', 'cub10', 'test', 12, 0, 0);
INSERT INTO `test_dataset` VALUES (62, '/home/user/dataset/CUB_200_2011/images/160.Black_throated_Blue_Warbler/Black_Throated_Blue_Warbler_0060_161644.jpg', 'Black_throated_Blue_Warbler', 'cub10', 'test', 13, 0, 0);
INSERT INTO `test_dataset` VALUES (63, '/home/user/dataset/CUB_200_2011/images/164.Cerulean_Warbler/Cerulean_Warbler_0022_797189.jpg', 'Cerulean_Warbler', 'cub10', 'test', 14, 0, 0);
INSERT INTO `test_dataset` VALUES (64, '/home/user/dataset/CUB_200_2011/images/163.Cape_May_Warbler/Cape_May_Warbler_0115_163121.jpg', 'Cape_May_Warbler', 'cub10', 'test', 15, 0, 0);
INSERT INTO `test_dataset` VALUES (65, '/home/user/dataset/CUB_200_2011/images/160.Black_throated_Blue_Warbler/Black_Throated_Blue_Warbler_0123_161542.jpg', 'Black_throated_Blue_Warbler', 'cub10', 'test', 16, 0, 0);
INSERT INTO `test_dataset` VALUES (66, '/home/user/dataset/CUB_200_2011/images/165.Chestnut_sided_Warbler/Chestnut_Sided_Warbler_0097_163750.jpg', 'Chestnut_sided_Warbler', 'cub10', 'test', 17, 0, 0);
INSERT INTO `test_dataset` VALUES (67, '/home/user/dataset/CUB_200_2011/images/163.Cape_May_Warbler/Cape_May_Warbler_0053_162950.jpg', 'Cape_May_Warbler', 'cub10', 'test', 18, 0, 0);
INSERT INTO `test_dataset` VALUES (68, '/home/user/dataset/CUB_200_2011/images/167.Hooded_Warbler/Hooded_Warbler_0117_165106.jpg', 'Hooded_Warbler', 'cub10', 'test', 19, 0, 0);
INSERT INTO `test_dataset` VALUES (69, '/home/user/dataset/CUB_200_2011/images/169.Magnolia_Warbler/Magnolia_Warbler_0023_165827.jpg', 'Magnolia_Warbler', 'cub10', 'test', 20, 0, 0);
INSERT INTO `test_dataset` VALUES (70, '/home/user/dataset/CUB_200_2011/images/174.Palm_Warbler/Palm_Warbler_0073_169781.jpg', 'Palm_Warbler', 'cub10', 'test', 21, 0, 0);
INSERT INTO `test_dataset` VALUES (71, '/home/user/dataset/CUB_200_2011/images/164.Cerulean_Warbler/Cerulean_Warbler_0010_797210.jpg', 'Cerulean_Warbler', 'cub10', 'test', 22, 0, 0);
INSERT INTO `test_dataset` VALUES (72, '/home/user/dataset/CUB_200_2011/images/109.American_Redstart/American_Redstart_0024_103042.jpg', 'American_Redstart', 'cub10', 'test', 23, 0, 0);
INSERT INTO `test_dataset` VALUES (73, '/home/user/dataset/CUB_200_2011/images/171.Myrtle_Warbler/Myrtle_Warbler_0073_166798.jpg', 'Myrtle_Warbler', 'cub10', 'test', 24, 0, 0);
INSERT INTO `test_dataset` VALUES (74, '/home/user/dataset/CUB_200_2011/images/174.Palm_Warbler/Palm_Warbler_0051_169487.jpg', 'Palm_Warbler', 'cub10', 'test', 25, 0, 0);
INSERT INTO `test_dataset` VALUES (75, '/home/user/dataset/CUB_200_2011/images/165.Chestnut_sided_Warbler/Chestnut_Sided_Warbler_0008_164001.jpg', 'Chestnut_sided_Warbler', 'cub10', 'test', 26, 0, 0);
INSERT INTO `test_dataset` VALUES (76, '/home/user/dataset/CUB_200_2011/images/171.Myrtle_Warbler/Myrtle_Warbler_0028_166905.jpg', 'Myrtle_Warbler', 'cub10', 'test', 27, 0, 0);
INSERT INTO `test_dataset` VALUES (77, '/home/user/dataset/CUB_200_2011/images/167.Hooded_Warbler/Hooded_Warbler_0121_164639.jpg', 'Hooded_Warbler', 'cub10', 'test', 28, 0, 0);
INSERT INTO `test_dataset` VALUES (78, '/home/user/dataset/CUB_200_2011/images/160.Black_throated_Blue_Warbler/Black_Throated_Blue_Warbler_0002_161533.jpg', 'Black_throated_Blue_Warbler', 'cub10', 'test', 29, 0, 0);
INSERT INTO `test_dataset` VALUES (79, '/home/user/dataset/CUB_200_2011/images/164.Cerulean_Warbler/Cerulean_Warbler_0014_797226.jpg', 'Cerulean_Warbler', 'cub10', 'test', 30, 0, 0);
INSERT INTO `test_dataset` VALUES (80, '/home/user/dataset/CUB_200_2011/images/163.Cape_May_Warbler/Cape_May_Warbler_0113_163130.jpg', 'Cape_May_Warbler', 'cub10', 'test', 31, 0, 0);
INSERT INTO `test_dataset` VALUES (81, '/home/user/dataset/CUB_200_2011/images/163.Cape_May_Warbler/Cape_May_Warbler_0008_163062.jpg', 'Cape_May_Warbler', 'cub10', 'test', 32, 0, 0);
INSERT INTO `test_dataset` VALUES (82, '/home/user/dataset/CUB_200_2011/images/158.Bay_breasted_Warbler/Bay_Breasted_Warbler_0005_159739.jpg', 'Bay_breasted_Warbler', 'cub10', 'test', 33, 0, 0);
INSERT INTO `test_dataset` VALUES (83, '/home/user/dataset/CUB_200_2011/images/165.Chestnut_sided_Warbler/Chestnut_Sided_Warbler_0004_164279.jpg', 'Chestnut_sided_Warbler', 'cub10', 'test', 34, 0, 0);
INSERT INTO `test_dataset` VALUES (84, '/home/user/dataset/CUB_200_2011/images/164.Cerulean_Warbler/Cerulean_Warbler_0017_797198.jpg', 'Cerulean_Warbler', 'cub10', 'test', 35, 0, 0);
INSERT INTO `test_dataset` VALUES (85, '/home/user/dataset/CUB_200_2011/images/174.Palm_Warbler/Palm_Warbler_0066_169284.jpg', 'Palm_Warbler', 'cub10', 'test', 36, 0, 0);
INSERT INTO `test_dataset` VALUES (86, '/home/user/dataset/CUB_200_2011/images/167.Hooded_Warbler/Hooded_Warbler_0124_164923.jpg', 'Hooded_Warbler', 'cub10', 'test', 37, 0, 0);
INSERT INTO `test_dataset` VALUES (87, '/home/user/dataset/CUB_200_2011/images/109.American_Redstart/American_Redstart_0071_103266.jpg', 'American_Redstart', 'cub10', 'test', 38, 0, 0);
INSERT INTO `test_dataset` VALUES (88, '/home/user/dataset/CUB_200_2011/images/109.American_Redstart/American_Redstart_0059_103402.jpg', 'American_Redstart', 'cub10', 'test', 39, 0, 0);
INSERT INTO `test_dataset` VALUES (89, '/home/user/dataset/CUB_200_2011/images/165.Chestnut_sided_Warbler/Chestnut_Sided_Warbler_0104_163638.jpg', 'Chestnut_sided_Warbler', 'cub10', 'test', 40, 0, 0);
INSERT INTO `test_dataset` VALUES (90, '/home/user/dataset/CUB_200_2011/images/171.Myrtle_Warbler/Myrtle_Warbler_0025_166704.jpg', 'Myrtle_Warbler', 'cub10', 'test', 41, 0, 0);
INSERT INTO `test_dataset` VALUES (91, '/home/user/dataset/CUB_200_2011/images/171.Myrtle_Warbler/Myrtle_Warbler_0016_166736.jpg', 'Myrtle_Warbler', 'cub10', 'test', 42, 0, 0);
INSERT INTO `test_dataset` VALUES (92, '/home/user/dataset/CUB_200_2011/images/165.Chestnut_sided_Warbler/Chestnut_Sided_Warbler_0128_163696.jpg', 'Chestnut_sided_Warbler', 'cub10', 'test', 43, 0, 0);
INSERT INTO `test_dataset` VALUES (93, '/home/user/dataset/CUB_200_2011/images/164.Cerulean_Warbler/Cerulean_Warbler_0016_163265.jpg', 'Cerulean_Warbler', 'cub10', 'test', 44, 0, 0);
INSERT INTO `test_dataset` VALUES (94, '/home/user/dataset/CUB_200_2011/images/160.Black_throated_Blue_Warbler/Black_Throated_Blue_Warbler_0017_161220.jpg', 'Black_throated_Blue_Warbler', 'cub10', 'test', 45, 0, 0);
INSERT INTO `test_dataset` VALUES (95, '/home/user/dataset/CUB_200_2011/images/174.Palm_Warbler/Palm_Warbler_0077_169042.jpg', 'Palm_Warbler', 'cub10', 'test', 46, 0, 0);
INSERT INTO `test_dataset` VALUES (96, '/home/user/dataset/CUB_200_2011/images/160.Black_throated_Blue_Warbler/Black_Throated_Blue_Warbler_0083_161462.jpg', 'Black_throated_Blue_Warbler', 'cub10', 'test', 47, 0, 0);
INSERT INTO `test_dataset` VALUES (97, '/home/user/dataset/CUB_200_2011/images/171.Myrtle_Warbler/Myrtle_Warbler_0091_166762.jpg', 'Myrtle_Warbler', 'cub10', 'test', 48, 0, 0);
INSERT INTO `test_dataset` VALUES (98, '/home/user/dataset/CUB_200_2011/images/158.Bay_breasted_Warbler/Bay_Breasted_Warbler_0025_159957.jpg', 'Bay_breasted_Warbler', 'cub10', 'test', 49, 0, 0);
INSERT INTO `test_dataset` VALUES (99, '/home/user/dataset/CUB_200_2011/images/169.Magnolia_Warbler/Magnolia_Warbler_0112_166406.jpg', 'Magnolia_Warbler', 'cub10', 'test', 50, 0, 0);
INSERT INTO `test_dataset` VALUES (100, '/home/user/dataset/CUB_200_2011/images/169.Magnolia_Warbler/Magnolia_Warbler_0042_159690.jpg', 'Magnolia_Warbler', 'cub10', 'test', 51, 0, 0);
INSERT INTO `test_dataset` VALUES (101, '/home/user/dataset/CUB_200_2011/images/164.Cerulean_Warbler/Cerulean_Warbler_0082_797180.jpg', 'Cerulean_Warbler', 'cub10', 'test', 52, 0, 0);
INSERT INTO `test_dataset` VALUES (102, '/home/user/dataset/CUB_200_2011/images/169.Magnolia_Warbler/Magnolia_Warbler_0120_165462.jpg', 'Magnolia_Warbler', 'cub10', 'test', 53, 0, 0);
INSERT INTO `test_dataset` VALUES (103, '/home/user/dataset/CUB_200_2011/images/163.Cape_May_Warbler/Cape_May_Warbler_0076_163075.jpg', 'Cape_May_Warbler', 'cub10', 'test', 54, 0, 0);
INSERT INTO `test_dataset` VALUES (104, '/home/user/dataset/CUB_200_2011/images/158.Bay_breasted_Warbler/Bay_Breasted_Warbler_0102_159887.jpg', 'Bay_breasted_Warbler', 'cub10', 'test', 55, 0, 0);
INSERT INTO `test_dataset` VALUES (105, '/home/user/dataset/CUB_200_2011/images/109.American_Redstart/American_Redstart_0013_103677.jpg', 'American_Redstart', 'cub10', 'test', 56, 0, 0);
INSERT INTO `test_dataset` VALUES (106, '/home/user/dataset/CUB_200_2011/images/167.Hooded_Warbler/Hooded_Warbler_0011_164801.jpg', 'Hooded_Warbler', 'cub10', 'test', 57, 0, 0);
INSERT INTO `test_dataset` VALUES (107, '/home/user/dataset/CUB_200_2011/images/167.Hooded_Warbler/Hooded_Warbler_0095_164709.jpg', 'Hooded_Warbler', 'cub10', 'test', 58, 0, 0);
INSERT INTO `test_dataset` VALUES (108, '/home/user/dataset/CUB_200_2011/images/158.Bay_breasted_Warbler/Bay_Breasted_Warbler_0055_159740.jpg', 'Bay_breasted_Warbler', 'cub10', 'test', 59, 0, 0);
INSERT INTO `test_dataset` VALUES (109, '/home/user/dataset/CUB_200_2011/images/158.Bay_breasted_Warbler/Bay_Breasted_Warbler_0109_159883.jpg', 'Bay_breasted_Warbler', 'cub10', 'test', 60, 0, 0);
INSERT INTO `test_dataset` VALUES (110, '/home/user/dataset/CUB_200_2011/images/167.Hooded_Warbler/Hooded_Warbler_0068_164872.jpg', 'Hooded_Warbler', 'cub10', 'train', 1, 0, 0);
INSERT INTO `test_dataset` VALUES (111, '/home/user/dataset/CUB_200_2011/images/169.Magnolia_Warbler/Magnolia_Warbler_0123_166389.jpg', 'Magnolia_Warbler', 'cub10', 'train', 2, 0, 0);
INSERT INTO `test_dataset` VALUES (112, '/home/user/dataset/CUB_200_2011/images/164.Cerulean_Warbler/Cerulean_Warbler_0072_163200.jpg', 'Cerulean_Warbler', 'cub10', 'train', 3, 0, 0);
INSERT INTO `test_dataset` VALUES (113, '/home/user/dataset/CUB_200_2011/images/171.Myrtle_Warbler/Myrtle_Warbler_0064_166679.jpg', 'Myrtle_Warbler', 'cub10', 'train', 4, 0, 0);
INSERT INTO `test_dataset` VALUES (114, '/home/user/dataset/CUB_200_2011/images/165.Chestnut_sided_Warbler/Chestnut_Sided_Warbler_0044_163975.jpg', 'Chestnut_sided_Warbler', 'cub10', 'train', 5, 0, 0);
INSERT INTO `test_dataset` VALUES (115, '/home/user/dataset/CUB_200_2011/images/174.Palm_Warbler/Palm_Warbler_0067_169318.jpg', 'Palm_Warbler', 'cub10', 'train', 6, 0, 0);
INSERT INTO `test_dataset` VALUES (116, '/home/user/dataset/CUB_200_2011/images/160.Black_throated_Blue_Warbler/Black_Throated_Blue_Warbler_0106_161523.jpg', 'Black_throated_Blue_Warbler', 'cub10', 'train', 7, 0, 0);
INSERT INTO `test_dataset` VALUES (117, '/home/user/dataset/CUB_200_2011/images/109.American_Redstart/American_Redstart_0064_103081.jpg', 'American_Redstart', 'cub10', 'train', 8, 0, 0);
INSERT INTO `test_dataset` VALUES (118, '/home/user/dataset/CUB_200_2011/images/163.Cape_May_Warbler/Cape_May_Warbler_0092_163057.jpg', 'Cape_May_Warbler', 'cub10', 'train', 9, 0, 0);
INSERT INTO `test_dataset` VALUES (119, '/home/user/dataset/CUB_200_2011/images/158.Bay_breasted_Warbler/Bay_Breasted_Warbler_0065_159722.jpg', 'Bay_breasted_Warbler', 'cub10', 'train', 10, 0, 0);
INSERT INTO `test_dataset` VALUES (120, '/home/user/dataset/CUB_200_2011/images/169.Magnolia_Warbler/Magnolia_Warbler_0140_165543.jpg', 'Magnolia_Warbler', 'cub10', 'train', 11, 0, 0);
INSERT INTO `test_dataset` VALUES (121, '/home/user/dataset/CUB_200_2011/images/165.Chestnut_sided_Warbler/Chestnut_Sided_Warbler_0124_164109.jpg', 'Chestnut_sided_Warbler', 'cub10', 'train', 12, 0, 0);
INSERT INTO `test_dataset` VALUES (122, '/home/user/dataset/CUB_200_2011/images/167.Hooded_Warbler/Hooded_Warbler_0039_164928.jpg', 'Hooded_Warbler', 'cub10', 'train', 13, 0, 0);
INSERT INTO `test_dataset` VALUES (123, '/home/user/dataset/CUB_200_2011/images/174.Palm_Warbler/Palm_Warbler_0047_169354.jpg', 'Palm_Warbler', 'cub10', 'train', 14, 0, 0);
INSERT INTO `test_dataset` VALUES (124, '/home/user/dataset/CUB_200_2011/images/171.Myrtle_Warbler/Myrtle_Warbler_0044_166852.jpg', 'Myrtle_Warbler', 'cub10', 'train', 15, 0, 0);
INSERT INTO `test_dataset` VALUES (125, '/home/user/dataset/CUB_200_2011/images/109.American_Redstart/American_Redstart_0058_103082.jpg', 'American_Redstart', 'cub10', 'train', 16, 0, 0);
INSERT INTO `test_dataset` VALUES (126, '/home/user/dataset/CUB_200_2011/images/164.Cerulean_Warbler/Cerulean_Warbler_0047_797211.jpg', 'Cerulean_Warbler', 'cub10', 'train', 17, 0, 0);
INSERT INTO `test_dataset` VALUES (127, '/home/user/dataset/CUB_200_2011/images/160.Black_throated_Blue_Warbler/Black_Throated_Blue_Warbler_0126_161724.jpg', 'Black_throated_Blue_Warbler', 'cub10', 'train', 18, 0, 0);
INSERT INTO `test_dataset` VALUES (128, '/home/user/dataset/CUB_200_2011/images/158.Bay_breasted_Warbler/Bay_Breasted_Warbler_0007_797118.jpg', 'Bay_breasted_Warbler', 'cub10', 'train', 19, 0, 0);
INSERT INTO `test_dataset` VALUES (129, '/home/user/dataset/CUB_200_2011/images/163.Cape_May_Warbler/Cape_May_Warbler_0001_139008.jpg', 'Cape_May_Warbler', 'cub10', 'train', 20, 0, 0);
INSERT INTO `test_dataset` VALUES (130, '/home/user/dataset/CUB_200_2011/images/158.Bay_breasted_Warbler/Bay_Breasted_Warbler_0079_159998.jpg', 'Bay_breasted_Warbler', 'cub10', 'train', 21, 0, 0);
INSERT INTO `test_dataset` VALUES (131, '/home/user/dataset/CUB_200_2011/images/169.Magnolia_Warbler/Magnolia_Warbler_0045_165448.jpg', 'Magnolia_Warbler', 'cub10', 'train', 22, 0, 0);
INSERT INTO `test_dataset` VALUES (132, '/home/user/dataset/CUB_200_2011/images/169.Magnolia_Warbler/Magnolia_Warbler_0139_166081.jpg', 'Magnolia_Warbler', 'cub10', 'train', 23, 0, 0);
INSERT INTO `test_dataset` VALUES (133, '/home/user/dataset/CUB_200_2011/images/171.Myrtle_Warbler/Myrtle_Warbler_0063_93378.jpg', 'Myrtle_Warbler', 'cub10', 'train', 24, 0, 0);
INSERT INTO `test_dataset` VALUES (134, '/home/user/dataset/CUB_200_2011/images/165.Chestnut_sided_Warbler/Chestnut_Sided_Warbler_0094_164152.jpg', 'Chestnut_sided_Warbler', 'cub10', 'train', 25, 0, 0);
INSERT INTO `test_dataset` VALUES (135, '/home/user/dataset/CUB_200_2011/images/174.Palm_Warbler/Palm_Warbler_0055_170219.jpg', 'Palm_Warbler', 'cub10', 'train', 26, 0, 0);
INSERT INTO `test_dataset` VALUES (136, '/home/user/dataset/CUB_200_2011/images/174.Palm_Warbler/Palm_Warbler_0108_169426.jpg', 'Palm_Warbler', 'cub10', 'train', 27, 0, 0);
INSERT INTO `test_dataset` VALUES (137, '/home/user/dataset/CUB_200_2011/images/167.Hooded_Warbler/Hooded_Warbler_0084_164944.jpg', 'Hooded_Warbler', 'cub10', 'train', 28, 0, 0);
INSERT INTO `test_dataset` VALUES (138, '/home/user/dataset/CUB_200_2011/images/163.Cape_May_Warbler/Cape_May_Warbler_0128_162971.jpg', 'Cape_May_Warbler', 'cub10', 'train', 29, 0, 0);
INSERT INTO `test_dataset` VALUES (139, '/home/user/dataset/CUB_200_2011/images/163.Cape_May_Warbler/Cape_May_Warbler_0013_163052.jpg', 'Cape_May_Warbler', 'cub10', 'train', 30, 0, 0);
INSERT INTO `test_dataset` VALUES (140, '/home/user/dataset/CUB_200_2011/images/109.American_Redstart/American_Redstart_0137_102848.jpg', 'American_Redstart', 'cub10', 'train', 31, 0, 0);
INSERT INTO `test_dataset` VALUES (141, '/home/user/dataset/CUB_200_2011/images/160.Black_throated_Blue_Warbler/Black_Throated_Blue_Warbler_0107_161214.jpg', 'Black_throated_Blue_Warbler', 'cub10', 'train', 32, 0, 0);
INSERT INTO `test_dataset` VALUES (142, '/home/user/dataset/CUB_200_2011/images/165.Chestnut_sided_Warbler/Chestnut_Sided_Warbler_0033_163607.jpg', 'Chestnut_sided_Warbler', 'cub10', 'train', 33, 0, 0);
INSERT INTO `test_dataset` VALUES (143, '/home/user/dataset/CUB_200_2011/images/164.Cerulean_Warbler/Cerulean_Warbler_0063_797204.jpg', 'Cerulean_Warbler', 'cub10', 'train', 34, 0, 0);
INSERT INTO `test_dataset` VALUES (144, '/home/user/dataset/CUB_200_2011/images/164.Cerulean_Warbler/Cerulean_Warbler_0003_163305.jpg', 'Cerulean_Warbler', 'cub10', 'train', 35, 0, 0);
INSERT INTO `test_dataset` VALUES (145, '/home/user/dataset/CUB_200_2011/images/171.Myrtle_Warbler/Myrtle_Warbler_0068_166892.jpg', 'Myrtle_Warbler', 'cub10', 'train', 36, 0, 0);
INSERT INTO `test_dataset` VALUES (146, '/home/user/dataset/CUB_200_2011/images/169.Magnolia_Warbler/Magnolia_Warbler_0066_166184.jpg', 'Magnolia_Warbler', 'cub10', 'train', 37, 0, 0);
INSERT INTO `test_dataset` VALUES (147, '/home/user/dataset/CUB_200_2011/images/171.Myrtle_Warbler/Myrtle_Warbler_0100_166871.jpg', 'Myrtle_Warbler', 'cub10', 'train', 38, 0, 0);
INSERT INTO `test_dataset` VALUES (148, '/home/user/dataset/CUB_200_2011/images/160.Black_throated_Blue_Warbler/Black_Throated_Blue_Warbler_0036_161517.jpg', 'Black_throated_Blue_Warbler', 'cub10', 'train', 39, 0, 0);
INSERT INTO `test_dataset` VALUES (149, '/home/user/dataset/CUB_200_2011/images/167.Hooded_Warbler/Hooded_Warbler_0036_164779.jpg', 'Hooded_Warbler', 'cub10', 'train', 40, 0, 0);
INSERT INTO `test_dataset` VALUES (150, '/home/user/dataset/CUB_200_2011/images/166.Golden_winged_Warbler/Golden_Winged_Warbler_0092_164465.jpg', 'Golden_winged_Warbler', 'cub15', 'test', 1, 0, 0);
INSERT INTO `test_dataset` VALUES (151, '/home/user/dataset/CUB_200_2011/images/177.Prothonotary_Warbler/Prothonotary_Warbler_0064_174106.jpg', 'Prothonotary_Warbler', 'cub15', 'test', 2, 0, 0);
INSERT INTO `test_dataset` VALUES (152, '/home/user/dataset/CUB_200_2011/images/183.Northern_Waterthrush/Northern_Waterthrush_0016_177345.jpg', 'Northern_Waterthrush', 'cub15', 'test', 3, 0, 0);
INSERT INTO `test_dataset` VALUES (153, '/home/user/dataset/CUB_200_2011/images/179.Tennessee_Warbler/Tennessee_Warbler_0100_175168.jpg', 'Tennessee_Warbler', 'cub15', 'test', 4, 0, 0);
INSERT INTO `test_dataset` VALUES (154, '/home/user/dataset/CUB_200_2011/images/173.Orange_crowned_Warbler/Orange_Crowned_Warbler_0005_168314.jpg', 'Orange_crowned_Warbler', 'cub15', 'test', 5, 0, 0);
INSERT INTO `test_dataset` VALUES (155, '/home/user/dataset/CUB_200_2011/images/181.Worm_eating_Warbler/Worm_Eating_Warbler_0035_795575.jpg', 'Worm_eating_Warbler', 'cub15', 'test', 6, 0, 0);
INSERT INTO `test_dataset` VALUES (156, '/home/user/dataset/CUB_200_2011/images/181.Worm_eating_Warbler/Worm_Eating_Warbler_0067_795520.jpg', 'Worm_eating_Warbler', 'cub15', 'test', 7, 0, 0);
INSERT INTO `test_dataset` VALUES (157, '/home/user/dataset/CUB_200_2011/images/170.Mourning_Warbler/Mourning_Warbler_0054_795387.jpg', 'Mourning_Warbler', 'cub15', 'test', 8, 0, 0);
INSERT INTO `test_dataset` VALUES (158, '/home/user/dataset/CUB_200_2011/images/181.Worm_eating_Warbler/Worm_Eating_Warbler_0005_175977.jpg', 'Worm_eating_Warbler', 'cub15', 'test', 9, 0, 0);
INSERT INTO `test_dataset` VALUES (159, '/home/user/dataset/CUB_200_2011/images/166.Golden_winged_Warbler/Golden_Winged_Warbler_0083_794801.jpg', 'Golden_winged_Warbler', 'cub15', 'test', 10, 0, 0);
INSERT INTO `test_dataset` VALUES (160, '/home/user/dataset/CUB_200_2011/images/184.Louisiana_Waterthrush/Louisiana_Waterthrush_0002_795285.jpg', 'Louisiana_Waterthrush', 'cub15', 'test', 11, 0, 0);
INSERT INTO `test_dataset` VALUES (161, '/home/user/dataset/CUB_200_2011/images/178.Swainson_Warbler/Swainson_Warbler_0017_174685.jpg', 'Swainson_Warbler', 'cub15', 'test', 12, 0, 0);
INSERT INTO `test_dataset` VALUES (162, '/home/user/dataset/CUB_200_2011/images/180.Wilson_Warbler/Wilson_Warbler_0045_175623.jpg', 'Wilson_Warbler', 'cub15', 'test', 13, 0, 0);
INSERT INTO `test_dataset` VALUES (163, '/home/user/dataset/CUB_200_2011/images/172.Nashville_Warbler/Nashville_Warbler_0018_167191.jpg', 'Nashville_Warbler', 'cub15', 'test', 14, 0, 0);
INSERT INTO `test_dataset` VALUES (164, '/home/user/dataset/CUB_200_2011/images/172.Nashville_Warbler/Nashville_Warbler_0035_167283.jpg', 'Nashville_Warbler', 'cub15', 'test', 15, 0, 0);
INSERT INTO `test_dataset` VALUES (165, '/home/user/dataset/CUB_200_2011/images/177.Prothonotary_Warbler/Prothonotary_Warbler_0031_174578.jpg', 'Prothonotary_Warbler', 'cub15', 'test', 16, 0, 0);
INSERT INTO `test_dataset` VALUES (166, '/home/user/dataset/CUB_200_2011/images/178.Swainson_Warbler/Swainson_Warbler_0026_794884.jpg', 'Swainson_Warbler', 'cub15', 'test', 17, 0, 0);
INSERT INTO `test_dataset` VALUES (167, '/home/user/dataset/CUB_200_2011/images/168.Kentucky_Warbler/Kentucky_Warbler_0023_165247.jpg', 'Kentucky_Warbler', 'cub15', 'test', 18, 0, 0);
INSERT INTO `test_dataset` VALUES (168, '/home/user/dataset/CUB_200_2011/images/179.Tennessee_Warbler/Tennessee_Warbler_0024_174980.jpg', 'Tennessee_Warbler', 'cub15', 'test', 19, 0, 0);
INSERT INTO `test_dataset` VALUES (169, '/home/user/dataset/CUB_200_2011/images/184.Louisiana_Waterthrush/Louisiana_Waterthrush_0055_795280.jpg', 'Louisiana_Waterthrush', 'cub15', 'test', 20, 0, 0);
INSERT INTO `test_dataset` VALUES (170, '/home/user/dataset/CUB_200_2011/images/200.Common_Yellowthroat/Common_Yellowthroat_0088_190594.jpg', 'Common_Yellowthroat', 'cub15', 'test', 21, 0, 0);
INSERT INTO `test_dataset` VALUES (171, '/home/user/dataset/CUB_200_2011/images/183.Northern_Waterthrush/Northern_Waterthrush_0103_177162.jpg', 'Northern_Waterthrush', 'cub15', 'test', 22, 0, 0);
INSERT INTO `test_dataset` VALUES (172, '/home/user/dataset/CUB_200_2011/images/200.Common_Yellowthroat/Common_Yellowthroat_0098_190430.jpg', 'Common_Yellowthroat', 'cub15', 'test', 23, 0, 0);
INSERT INTO `test_dataset` VALUES (173, '/home/user/dataset/CUB_200_2011/images/173.Orange_crowned_Warbler/Orange_Crowned_Warbler_0118_167640.jpg', 'Orange_crowned_Warbler', 'cub15', 'test', 24, 0, 0);
INSERT INTO `test_dataset` VALUES (174, '/home/user/dataset/CUB_200_2011/images/181.Worm_eating_Warbler/Worm_Eating_Warbler_0019_795554.jpg', 'Worm_eating_Warbler', 'cub15', 'test', 25, 0, 0);
INSERT INTO `test_dataset` VALUES (175, '/home/user/dataset/CUB_200_2011/images/173.Orange_crowned_Warbler/Orange_Crowned_Warbler_0088_168052.jpg', 'Orange_crowned_Warbler', 'cub15', 'test', 26, 0, 0);
INSERT INTO `test_dataset` VALUES (176, '/home/user/dataset/CUB_200_2011/images/200.Common_Yellowthroat/Common_Yellowthroat_0050_190535.jpg', 'Common_Yellowthroat', 'cub15', 'test', 27, 0, 0);
INSERT INTO `test_dataset` VALUES (177, '/home/user/dataset/CUB_200_2011/images/162.Canada_Warbler/Canada_Warbler_0117_162394.jpg', 'Canada_Warbler', 'cub15', 'test', 28, 0, 0);
INSERT INTO `test_dataset` VALUES (178, '/home/user/dataset/CUB_200_2011/images/173.Orange_crowned_Warbler/Orange_Crowned_Warbler_0065_167952.jpg', 'Orange_crowned_Warbler', 'cub15', 'test', 29, 0, 0);
INSERT INTO `test_dataset` VALUES (179, '/home/user/dataset/CUB_200_2011/images/184.Louisiana_Waterthrush/Louisiana_Waterthrush_0077_795247.jpg', 'Louisiana_Waterthrush', 'cub15', 'test', 30, 0, 0);
INSERT INTO `test_dataset` VALUES (180, '/home/user/dataset/CUB_200_2011/images/170.Mourning_Warbler/Mourning_Warbler_0008_166467.jpg', 'Mourning_Warbler', 'cub15', 'test', 31, 0, 0);
INSERT INTO `test_dataset` VALUES (181, '/home/user/dataset/CUB_200_2011/images/179.Tennessee_Warbler/Tennessee_Warbler_0061_174775.jpg', 'Tennessee_Warbler', 'cub15', 'test', 32, 0, 0);
INSERT INTO `test_dataset` VALUES (182, '/home/user/dataset/CUB_200_2011/images/178.Swainson_Warbler/Swainson_Warbler_0020_794863.jpg', 'Swainson_Warbler', 'cub15', 'test', 33, 0, 0);
INSERT INTO `test_dataset` VALUES (183, '/home/user/dataset/CUB_200_2011/images/177.Prothonotary_Warbler/Prothonotary_Warbler_0045_173536.jpg', 'Prothonotary_Warbler', 'cub15', 'test', 34, 0, 0);
INSERT INTO `test_dataset` VALUES (184, '/home/user/dataset/CUB_200_2011/images/172.Nashville_Warbler/Nashville_Warbler_0121_167078.jpg', 'Nashville_Warbler', 'cub15', 'test', 35, 0, 0);
INSERT INTO `test_dataset` VALUES (185, '/home/user/dataset/CUB_200_2011/images/166.Golden_winged_Warbler/Golden_Winged_Warbler_0016_794841.jpg', 'Golden_winged_Warbler', 'cub15', 'test', 36, 0, 0);
INSERT INTO `test_dataset` VALUES (186, '/home/user/dataset/CUB_200_2011/images/177.Prothonotary_Warbler/Prothonotary_Warbler_0112_174594.jpg', 'Prothonotary_Warbler', 'cub15', 'test', 37, 0, 0);
INSERT INTO `test_dataset` VALUES (187, '/home/user/dataset/CUB_200_2011/images/179.Tennessee_Warbler/Tennessee_Warbler_0052_175089.jpg', 'Tennessee_Warbler', 'cub15', 'test', 38, 0, 0);
INSERT INTO `test_dataset` VALUES (188, '/home/user/dataset/CUB_200_2011/images/184.Louisiana_Waterthrush/Louisiana_Waterthrush_0086_795263.jpg', 'Louisiana_Waterthrush', 'cub15', 'test', 39, 0, 0);
INSERT INTO `test_dataset` VALUES (189, '/home/user/dataset/CUB_200_2011/images/162.Canada_Warbler/Canada_Warbler_0035_162377.jpg', 'Canada_Warbler', 'cub15', 'test', 40, 0, 0);
INSERT INTO `test_dataset` VALUES (190, '/home/user/dataset/CUB_200_2011/images/166.Golden_winged_Warbler/Golden_Winged_Warbler_0086_794844.jpg', 'Golden_winged_Warbler', 'cub15', 'test', 41, 0, 0);
INSERT INTO `test_dataset` VALUES (191, '/home/user/dataset/CUB_200_2011/images/180.Wilson_Warbler/Wilson_Warbler_0132_175600.jpg', 'Wilson_Warbler', 'cub15', 'test', 42, 0, 0);
INSERT INTO `test_dataset` VALUES (192, '/home/user/dataset/CUB_200_2011/images/168.Kentucky_Warbler/Kentucky_Warbler_0066_165290.jpg', 'Kentucky_Warbler', 'cub15', 'test', 43, 0, 0);
INSERT INTO `test_dataset` VALUES (193, '/home/user/dataset/CUB_200_2011/images/170.Mourning_Warbler/Mourning_Warbler_0056_166476.jpg', 'Mourning_Warbler', 'cub15', 'test', 44, 0, 0);
INSERT INTO `test_dataset` VALUES (194, '/home/user/dataset/CUB_200_2011/images/170.Mourning_Warbler/Mourning_Warbler_0007_166500.jpg', 'Mourning_Warbler', 'cub15', 'test', 45, 0, 0);
INSERT INTO `test_dataset` VALUES (195, '/home/user/dataset/CUB_200_2011/images/183.Northern_Waterthrush/Northern_Waterthrush_0084_177239.jpg', 'Northern_Waterthrush', 'cub15', 'test', 46, 0, 0);
INSERT INTO `test_dataset` VALUES (196, '/home/user/dataset/CUB_200_2011/images/200.Common_Yellowthroat/Common_Yellowthroat_0087_190414.jpg', 'Common_Yellowthroat', 'cub15', 'test', 47, 0, 0);
INSERT INTO `test_dataset` VALUES (197, '/home/user/dataset/CUB_200_2011/images/161.Blue_winged_Warbler/Blue_Winged_Warbler_0092_162044.jpg', 'Blue_winged_Warbler', 'cub15', 'test', 48, 0, 0);
INSERT INTO `test_dataset` VALUES (198, '/home/user/dataset/CUB_200_2011/images/177.Prothonotary_Warbler/Prothonotary_Warbler_0082_173970.jpg', 'Prothonotary_Warbler', 'cub15', 'test', 49, 0, 0);
INSERT INTO `test_dataset` VALUES (199, '/home/user/dataset/CUB_200_2011/images/161.Blue_winged_Warbler/Blue_Winged_Warbler_0040_161883.jpg', 'Blue_winged_Warbler', 'cub15', 'test', 50, 0, 0);
INSERT INTO `test_dataset` VALUES (200, '/home/user/dataset/CUB_200_2011/images/180.Wilson_Warbler/Wilson_Warbler_0108_175179.jpg', 'Wilson_Warbler', 'cub15', 'test', 51, 0, 0);
INSERT INTO `test_dataset` VALUES (201, '/home/user/dataset/CUB_200_2011/images/178.Swainson_Warbler/Swainson_Warbler_0049_794880.jpg', 'Swainson_Warbler', 'cub15', 'test', 52, 0, 0);
INSERT INTO `test_dataset` VALUES (202, '/home/user/dataset/CUB_200_2011/images/180.Wilson_Warbler/Wilson_Warbler_0016_175532.jpg', 'Wilson_Warbler', 'cub15', 'test', 53, 0, 0);
INSERT INTO `test_dataset` VALUES (203, '/home/user/dataset/CUB_200_2011/images/200.Common_Yellowthroat/Common_Yellowthroat_0027_190869.jpg', 'Common_Yellowthroat', 'cub15', 'test', 54, 0, 0);
INSERT INTO `test_dataset` VALUES (204, '/home/user/dataset/CUB_200_2011/images/162.Canada_Warbler/Canada_Warbler_0121_162310.jpg', 'Canada_Warbler', 'cub15', 'test', 55, 0, 0);
INSERT INTO `test_dataset` VALUES (205, '/home/user/dataset/CUB_200_2011/images/183.Northern_Waterthrush/Northern_Waterthrush_0048_177129.jpg', 'Northern_Waterthrush', 'cub15', 'test', 56, 0, 0);
INSERT INTO `test_dataset` VALUES (206, '/home/user/dataset/CUB_200_2011/images/180.Wilson_Warbler/Wilson_Warbler_0043_175491.jpg', 'Wilson_Warbler', 'cub15', 'test', 57, 0, 0);
INSERT INTO `test_dataset` VALUES (207, '/home/user/dataset/CUB_200_2011/images/183.Northern_Waterthrush/Northern_Waterthrush_0068_177273.jpg', 'Northern_Waterthrush', 'cub15', 'test', 58, 0, 0);
INSERT INTO `test_dataset` VALUES (208, '/home/user/dataset/CUB_200_2011/images/168.Kentucky_Warbler/Kentucky_Warbler_0024_165405.jpg', 'Kentucky_Warbler', 'cub15', 'test', 59, 0, 0);
INSERT INTO `test_dataset` VALUES (209, '/home/user/dataset/CUB_200_2011/images/179.Tennessee_Warbler/Tennessee_Warbler_0026_175118.jpg', 'Tennessee_Warbler', 'cub15', 'test', 60, 0, 0);
INSERT INTO `test_dataset` VALUES (210, '/home/user/dataset/CUB_200_2011/images/172.Nashville_Warbler/Nashville_Warbler_0098_167293.jpg', 'Nashville_Warbler', 'cub15', 'test', 61, 0, 0);
INSERT INTO `test_dataset` VALUES (211, '/home/user/dataset/CUB_200_2011/images/177.Prothonotary_Warbler/Prothonotary_Warbler_0033_174123.jpg', 'Prothonotary_Warbler', 'cub15', 'test', 62, 0, 0);
INSERT INTO `test_dataset` VALUES (212, '/home/user/dataset/CUB_200_2011/images/162.Canada_Warbler/Canada_Warbler_0021_162325.jpg', 'Canada_Warbler', 'cub15', 'test', 63, 0, 0);
INSERT INTO `test_dataset` VALUES (213, '/home/user/dataset/CUB_200_2011/images/161.Blue_winged_Warbler/Blue_Winged_Warbler_0050_162057.jpg', 'Blue_winged_Warbler', 'cub15', 'test', 64, 0, 0);
INSERT INTO `test_dataset` VALUES (214, '/home/user/dataset/CUB_200_2011/images/168.Kentucky_Warbler/Kentucky_Warbler_0005_795919.jpg', 'Kentucky_Warbler', 'cub15', 'test', 65, 0, 0);
INSERT INTO `test_dataset` VALUES (215, '/home/user/dataset/CUB_200_2011/images/180.Wilson_Warbler/Wilson_Warbler_0033_175259.jpg', 'Wilson_Warbler', 'cub15', 'test', 66, 0, 0);
INSERT INTO `test_dataset` VALUES (216, '/home/user/dataset/CUB_200_2011/images/172.Nashville_Warbler/Nashville_Warbler_0107_167186.jpg', 'Nashville_Warbler', 'cub15', 'test', 67, 0, 0);
INSERT INTO `test_dataset` VALUES (217, '/home/user/dataset/CUB_200_2011/images/161.Blue_winged_Warbler/Blue_Winged_Warbler_0066_162062.jpg', 'Blue_winged_Warbler', 'cub15', 'test', 68, 0, 0);
INSERT INTO `test_dataset` VALUES (218, '/home/user/dataset/CUB_200_2011/images/178.Swainson_Warbler/Swainson_Warbler_0031_174696.jpg', 'Swainson_Warbler', 'cub15', 'test', 69, 0, 0);
INSERT INTO `test_dataset` VALUES (219, '/home/user/dataset/CUB_200_2011/images/183.Northern_Waterthrush/Northern_Waterthrush_0009_177078.jpg', 'Northern_Waterthrush', 'cub15', 'test', 70, 0, 0);
INSERT INTO `test_dataset` VALUES (220, '/home/user/dataset/CUB_200_2011/images/181.Worm_eating_Warbler/Worm_Eating_Warbler_0061_795537.jpg', 'Worm_eating_Warbler', 'cub15', 'test', 71, 0, 0);
INSERT INTO `test_dataset` VALUES (221, '/home/user/dataset/CUB_200_2011/images/162.Canada_Warbler/Canada_Warbler_0067_162314.jpg', 'Canada_Warbler', 'cub15', 'test', 72, 0, 0);
INSERT INTO `test_dataset` VALUES (222, '/home/user/dataset/CUB_200_2011/images/200.Common_Yellowthroat/Common_Yellowthroat_0037_190698.jpg', 'Common_Yellowthroat', 'cub15', 'test', 73, 0, 0);
INSERT INTO `test_dataset` VALUES (223, '/home/user/dataset/CUB_200_2011/images/162.Canada_Warbler/Canada_Warbler_0063_162324.jpg', 'Canada_Warbler', 'cub15', 'test', 74, 0, 0);
INSERT INTO `test_dataset` VALUES (224, '/home/user/dataset/CUB_200_2011/images/161.Blue_winged_Warbler/Blue_Winged_Warbler_0020_161875.jpg', 'Blue_winged_Warbler', 'cub15', 'test', 75, 0, 0);
INSERT INTO `test_dataset` VALUES (225, '/home/user/dataset/CUB_200_2011/images/181.Worm_eating_Warbler/Worm_Eating_Warbler_0092_795524.jpg', 'Worm_eating_Warbler', 'cub15', 'test', 76, 0, 0);
INSERT INTO `test_dataset` VALUES (226, '/home/user/dataset/CUB_200_2011/images/172.Nashville_Warbler/Nashville_Warbler_0014_167190.jpg', 'Nashville_Warbler', 'cub15', 'test', 77, 0, 0);
INSERT INTO `test_dataset` VALUES (227, '/home/user/dataset/CUB_200_2011/images/168.Kentucky_Warbler/Kentucky_Warbler_0059_795905.jpg', 'Kentucky_Warbler', 'cub15', 'test', 78, 0, 0);
INSERT INTO `test_dataset` VALUES (228, '/home/user/dataset/CUB_200_2011/images/179.Tennessee_Warbler/Tennessee_Warbler_0046_174798.jpg', 'Tennessee_Warbler', 'cub15', 'test', 79, 0, 0);
INSERT INTO `test_dataset` VALUES (229, '/home/user/dataset/CUB_200_2011/images/184.Louisiana_Waterthrush/Louisiana_Waterthrush_0046_177604.jpg', 'Louisiana_Waterthrush', 'cub15', 'test', 80, 0, 0);
INSERT INTO `test_dataset` VALUES (230, '/home/user/dataset/CUB_200_2011/images/173.Orange_crowned_Warbler/Orange_Crowned_Warbler_0090_167607.jpg', 'Orange_crowned_Warbler', 'cub15', 'test', 81, 0, 0);
INSERT INTO `test_dataset` VALUES (231, '/home/user/dataset/CUB_200_2011/images/170.Mourning_Warbler/Mourning_Warbler_0024_795363.jpg', 'Mourning_Warbler', 'cub15', 'test', 82, 0, 0);
INSERT INTO `test_dataset` VALUES (232, '/home/user/dataset/CUB_200_2011/images/178.Swainson_Warbler/Swainson_Warbler_0019_174692.jpg', 'Swainson_Warbler', 'cub15', 'test', 83, 0, 0);
INSERT INTO `test_dataset` VALUES (233, '/home/user/dataset/CUB_200_2011/images/161.Blue_winged_Warbler/Blue_Winged_Warbler_0063_161810.jpg', 'Blue_winged_Warbler', 'cub15', 'test', 84, 0, 0);
INSERT INTO `test_dataset` VALUES (234, '/home/user/dataset/CUB_200_2011/images/170.Mourning_Warbler/Mourning_Warbler_0050_795343.jpg', 'Mourning_Warbler', 'cub15', 'test', 85, 0, 0);
INSERT INTO `test_dataset` VALUES (235, '/home/user/dataset/CUB_200_2011/images/166.Golden_winged_Warbler/Golden_Winged_Warbler_0095_794809.jpg', 'Golden_winged_Warbler', 'cub15', 'test', 86, 0, 0);
INSERT INTO `test_dataset` VALUES (236, '/home/user/dataset/CUB_200_2011/images/168.Kentucky_Warbler/Kentucky_Warbler_0057_165349.jpg', 'Kentucky_Warbler', 'cub15', 'test', 87, 0, 0);
INSERT INTO `test_dataset` VALUES (237, '/home/user/dataset/CUB_200_2011/images/166.Golden_winged_Warbler/Golden_Winged_Warbler_0068_794825.jpg', 'Golden_winged_Warbler', 'cub15', 'test', 88, 0, 0);
INSERT INTO `test_dataset` VALUES (238, '/home/user/dataset/CUB_200_2011/images/184.Louisiana_Waterthrush/Louisiana_Waterthrush_0049_795244.jpg', 'Louisiana_Waterthrush', 'cub15', 'test', 89, 0, 0);
INSERT INTO `test_dataset` VALUES (239, '/home/user/dataset/CUB_200_2011/images/173.Orange_crowned_Warbler/Orange_Crowned_Warbler_0059_168259.jpg', 'Orange_crowned_Warbler', 'cub15', 'test', 90, 0, 0);
INSERT INTO `test_dataset` VALUES (240, '/home/user/dataset/CUB_200_2011/images/166.Golden_winged_Warbler/Golden_Winged_Warbler_0071_164370.jpg', 'Golden_winged_Warbler', 'cub15', 'train', 1, 0, 0);
INSERT INTO `test_dataset` VALUES (241, '/home/user/dataset/CUB_200_2011/images/179.Tennessee_Warbler/Tennessee_Warbler_0088_175163.jpg', 'Tennessee_Warbler', 'cub15', 'train', 2, 0, 0);
INSERT INTO `test_dataset` VALUES (242, '/home/user/dataset/CUB_200_2011/images/178.Swainson_Warbler/Swainson_Warbler_0048_794887.jpg', 'Swainson_Warbler', 'cub15', 'train', 3, 0, 0);
INSERT INTO `test_dataset` VALUES (243, '/home/user/dataset/CUB_200_2011/images/177.Prothonotary_Warbler/Prothonotary_Warbler_0100_174539.jpg', 'Prothonotary_Warbler', 'cub15', 'train', 4, 0, 0);
INSERT INTO `test_dataset` VALUES (244, '/home/user/dataset/CUB_200_2011/images/170.Mourning_Warbler/Mourning_Warbler_0002_166520.jpg', 'Mourning_Warbler', 'cub15', 'train', 5, 0, 0);
INSERT INTO `test_dataset` VALUES (245, '/home/user/dataset/CUB_200_2011/images/200.Common_Yellowthroat/Common_Yellowthroat_0114_190501.jpg', 'Common_Yellowthroat', 'cub15', 'train', 6, 0, 0);
INSERT INTO `test_dataset` VALUES (246, '/home/user/dataset/CUB_200_2011/images/161.Blue_winged_Warbler/Blue_Winged_Warbler_0072_161991.jpg', 'Blue_winged_Warbler', 'cub15', 'train', 7, 0, 0);
INSERT INTO `test_dataset` VALUES (247, '/home/user/dataset/CUB_200_2011/images/183.Northern_Waterthrush/Northern_Waterthrush_0043_177070.jpg', 'Northern_Waterthrush', 'cub15', 'train', 8, 0, 0);
INSERT INTO `test_dataset` VALUES (248, '/home/user/dataset/CUB_200_2011/images/173.Orange_crowned_Warbler/Orange_Crowned_Warbler_0067_167588.jpg', 'Orange_crowned_Warbler', 'cub15', 'train', 9, 0, 0);
INSERT INTO `test_dataset` VALUES (249, '/home/user/dataset/CUB_200_2011/images/162.Canada_Warbler/Canada_Warbler_0077_162437.jpg', 'Canada_Warbler', 'cub15', 'train', 10, 0, 0);
INSERT INTO `test_dataset` VALUES (250, '/home/user/dataset/CUB_200_2011/images/184.Louisiana_Waterthrush/Louisiana_Waterthrush_0078_177444.jpg', 'Louisiana_Waterthrush', 'cub15', 'train', 11, 0, 0);
INSERT INTO `test_dataset` VALUES (251, '/home/user/dataset/CUB_200_2011/images/181.Worm_eating_Warbler/Worm_Eating_Warbler_0034_795560.jpg', 'Worm_eating_Warbler', 'cub15', 'train', 12, 0, 0);
INSERT INTO `test_dataset` VALUES (252, '/home/user/dataset/CUB_200_2011/images/166.Golden_winged_Warbler/Golden_Winged_Warbler_0011_794812.jpg', 'Golden_winged_Warbler', 'cub15', 'train', 13, 0, 0);
INSERT INTO `test_dataset` VALUES (253, '/home/user/dataset/CUB_200_2011/images/180.Wilson_Warbler/Wilson_Warbler_0083_175253.jpg', 'Wilson_Warbler', 'cub15', 'train', 14, 0, 0);
INSERT INTO `test_dataset` VALUES (254, '/home/user/dataset/CUB_200_2011/images/172.Nashville_Warbler/Nashville_Warbler_0004_167146.jpg', 'Nashville_Warbler', 'cub15', 'train', 15, 0, 0);
INSERT INTO `test_dataset` VALUES (255, '/home/user/dataset/CUB_200_2011/images/168.Kentucky_Warbler/Kentucky_Warbler_0065_795899.jpg', 'Kentucky_Warbler', 'cub15', 'train', 16, 0, 0);
INSERT INTO `test_dataset` VALUES (256, '/home/user/dataset/CUB_200_2011/images/179.Tennessee_Warbler/Tennessee_Warbler_0004_174997.jpg', 'Tennessee_Warbler', 'cub15', 'train', 17, 0, 0);
INSERT INTO `test_dataset` VALUES (257, '/home/user/dataset/CUB_200_2011/images/168.Kentucky_Warbler/Kentucky_Warbler_0013_165228.jpg', 'Kentucky_Warbler', 'cub15', 'train', 18, 0, 0);
INSERT INTO `test_dataset` VALUES (258, '/home/user/dataset/CUB_200_2011/images/200.Common_Yellowthroat/Common_Yellowthroat_0003_190521.jpg', 'Common_Yellowthroat', 'cub15', 'train', 19, 0, 0);
INSERT INTO `test_dataset` VALUES (259, '/home/user/dataset/CUB_200_2011/images/183.Northern_Waterthrush/Northern_Waterthrush_0033_177214.jpg', 'Northern_Waterthrush', 'cub15', 'train', 20, 0, 0);
INSERT INTO `test_dataset` VALUES (260, '/home/user/dataset/CUB_200_2011/images/162.Canada_Warbler/Canada_Warbler_0040_162352.jpg', 'Canada_Warbler', 'cub15', 'train', 21, 0, 0);
INSERT INTO `test_dataset` VALUES (261, '/home/user/dataset/CUB_200_2011/images/161.Blue_winged_Warbler/Blue_Winged_Warbler_0059_162064.jpg', 'Blue_winged_Warbler', 'cub15', 'train', 22, 0, 0);
INSERT INTO `test_dataset` VALUES (262, '/home/user/dataset/CUB_200_2011/images/170.Mourning_Warbler/Mourning_Warbler_0009_166429.jpg', 'Mourning_Warbler', 'cub15', 'train', 23, 0, 0);
INSERT INTO `test_dataset` VALUES (263, '/home/user/dataset/CUB_200_2011/images/177.Prothonotary_Warbler/Prothonotary_Warbler_0106_174221.jpg', 'Prothonotary_Warbler', 'cub15', 'train', 24, 0, 0);
INSERT INTO `test_dataset` VALUES (264, '/home/user/dataset/CUB_200_2011/images/177.Prothonotary_Warbler/Prothonotary_Warbler_0081_173510.jpg', 'Prothonotary_Warbler', 'cub15', 'train', 25, 0, 0);
INSERT INTO `test_dataset` VALUES (265, '/home/user/dataset/CUB_200_2011/images/184.Louisiana_Waterthrush/Louisiana_Waterthrush_0044_177526.jpg', 'Louisiana_Waterthrush', 'cub15', 'train', 26, 0, 0);
INSERT INTO `test_dataset` VALUES (266, '/home/user/dataset/CUB_200_2011/images/173.Orange_crowned_Warbler/Orange_Crowned_Warbler_0042_167614.jpg', 'Orange_crowned_Warbler', 'cub15', 'train', 27, 0, 0);
INSERT INTO `test_dataset` VALUES (267, '/home/user/dataset/CUB_200_2011/images/173.Orange_crowned_Warbler/Orange_Crowned_Warbler_0028_167641.jpg', 'Orange_crowned_Warbler', 'cub15', 'train', 28, 0, 0);
INSERT INTO `test_dataset` VALUES (268, '/home/user/dataset/CUB_200_2011/images/178.Swainson_Warbler/Swainson_Warbler_0010_174724.jpg', 'Swainson_Warbler', 'cub15', 'train', 29, 0, 0);
INSERT INTO `test_dataset` VALUES (269, '/home/user/dataset/CUB_200_2011/images/172.Nashville_Warbler/Nashville_Warbler_0086_167045.jpg', 'Nashville_Warbler', 'cub15', 'train', 30, 0, 0);
INSERT INTO `test_dataset` VALUES (270, '/home/user/dataset/CUB_200_2011/images/166.Golden_winged_Warbler/Golden_Winged_Warbler_0036_794817.jpg', 'Golden_winged_Warbler', 'cub15', 'train', 31, 0, 0);
INSERT INTO `test_dataset` VALUES (271, '/home/user/dataset/CUB_200_2011/images/181.Worm_eating_Warbler/Worm_Eating_Warbler_0065_795551.jpg', 'Worm_eating_Warbler', 'cub15', 'train', 32, 0, 0);
INSERT INTO `test_dataset` VALUES (272, '/home/user/dataset/CUB_200_2011/images/179.Tennessee_Warbler/Tennessee_Warbler_0030_172338.jpg', 'Tennessee_Warbler', 'cub15', 'train', 33, 0, 0);
INSERT INTO `test_dataset` VALUES (273, '/home/user/dataset/CUB_200_2011/images/180.Wilson_Warbler/Wilson_Warbler_0020_175505.jpg', 'Wilson_Warbler', 'cub15', 'train', 34, 0, 0);
INSERT INTO `test_dataset` VALUES (274, '/home/user/dataset/CUB_200_2011/images/170.Mourning_Warbler/Mourning_Warbler_0042_166493.jpg', 'Mourning_Warbler', 'cub15', 'train', 35, 0, 0);
INSERT INTO `test_dataset` VALUES (275, '/home/user/dataset/CUB_200_2011/images/180.Wilson_Warbler/Wilson_Warbler_0027_175290.jpg', 'Wilson_Warbler', 'cub15', 'train', 36, 0, 0);
INSERT INTO `test_dataset` VALUES (276, '/home/user/dataset/CUB_200_2011/images/183.Northern_Waterthrush/Northern_Waterthrush_0023_177002.jpg', 'Northern_Waterthrush', 'cub15', 'train', 37, 0, 0);
INSERT INTO `test_dataset` VALUES (277, '/home/user/dataset/CUB_200_2011/images/173.Orange_crowned_Warbler/Orange_Crowned_Warbler_0038_168384.jpg', 'Orange_crowned_Warbler', 'cub15', 'train', 38, 0, 0);
INSERT INTO `test_dataset` VALUES (278, '/home/user/dataset/CUB_200_2011/images/162.Canada_Warbler/Canada_Warbler_0004_162224.jpg', 'Canada_Warbler', 'cub15', 'train', 39, 0, 0);
INSERT INTO `test_dataset` VALUES (279, '/home/user/dataset/CUB_200_2011/images/179.Tennessee_Warbler/Tennessee_Warbler_0013_163552.jpg', 'Tennessee_Warbler', 'cub15', 'train', 40, 0, 0);
INSERT INTO `test_dataset` VALUES (280, '/home/user/dataset/CUB_200_2011/images/161.Blue_winged_Warbler/Blue_Winged_Warbler_0026_161813.jpg', 'Blue_winged_Warbler', 'cub15', 'train', 41, 0, 0);
INSERT INTO `test_dataset` VALUES (281, '/home/user/dataset/CUB_200_2011/images/166.Golden_winged_Warbler/Golden_Winged_Warbler_0082_164544.jpg', 'Golden_winged_Warbler', 'cub15', 'train', 42, 0, 0);
INSERT INTO `test_dataset` VALUES (282, '/home/user/dataset/CUB_200_2011/images/200.Common_Yellowthroat/Common_Yellowthroat_0118_190805.jpg', 'Common_Yellowthroat', 'cub15', 'train', 43, 0, 0);
INSERT INTO `test_dataset` VALUES (283, '/home/user/dataset/CUB_200_2011/images/200.Common_Yellowthroat/Common_Yellowthroat_0122_190570.jpg', 'Common_Yellowthroat', 'cub15', 'train', 44, 0, 0);
INSERT INTO `test_dataset` VALUES (284, '/home/user/dataset/CUB_200_2011/images/184.Louisiana_Waterthrush/Louisiana_Waterthrush_0068_177462.jpg', 'Louisiana_Waterthrush', 'cub15', 'train', 45, 0, 0);
INSERT INTO `test_dataset` VALUES (285, '/home/user/dataset/CUB_200_2011/images/178.Swainson_Warbler/Swainson_Warbler_0054_174689.jpg', 'Swainson_Warbler', 'cub15', 'train', 46, 0, 0);
INSERT INTO `test_dataset` VALUES (286, '/home/user/dataset/CUB_200_2011/images/168.Kentucky_Warbler/Kentucky_Warbler_0031_165363.jpg', 'Kentucky_Warbler', 'cub15', 'train', 47, 0, 0);
INSERT INTO `test_dataset` VALUES (287, '/home/user/dataset/CUB_200_2011/images/173.Orange_crowned_Warbler/Orange_Crowned_Warbler_0056_167876.jpg', 'Orange_crowned_Warbler', 'cub15', 'train', 48, 0, 0);
INSERT INTO `test_dataset` VALUES (288, '/home/user/dataset/CUB_200_2011/images/180.Wilson_Warbler/Wilson_Warbler_0040_175347.jpg', 'Wilson_Warbler', 'cub15', 'train', 49, 0, 0);
INSERT INTO `test_dataset` VALUES (289, '/home/user/dataset/CUB_200_2011/images/179.Tennessee_Warbler/Tennessee_Warbler_0033_174772.jpg', 'Tennessee_Warbler', 'cub15', 'train', 50, 0, 0);
INSERT INTO `test_dataset` VALUES (290, '/home/user/dataset/CUB_200_2011/images/172.Nashville_Warbler/Nashville_Warbler_0053_167403.jpg', 'Nashville_Warbler', 'cub15', 'train', 51, 0, 0);
INSERT INTO `test_dataset` VALUES (291, '/home/user/dataset/CUB_200_2011/images/172.Nashville_Warbler/Nashville_Warbler_0129_167053.jpg', 'Nashville_Warbler', 'cub15', 'train', 52, 0, 0);
INSERT INTO `test_dataset` VALUES (292, '/home/user/dataset/CUB_200_2011/images/177.Prothonotary_Warbler/Prothonotary_Warbler_0124_173686.jpg', 'Prothonotary_Warbler', 'cub15', 'train', 53, 0, 0);
INSERT INTO `test_dataset` VALUES (293, '/home/user/dataset/CUB_200_2011/images/166.Golden_winged_Warbler/Golden_Winged_Warbler_0014_164464.jpg', 'Golden_winged_Warbler', 'cub15', 'train', 54, 0, 0);
INSERT INTO `test_dataset` VALUES (294, '/home/user/dataset/CUB_200_2011/images/181.Worm_eating_Warbler/Worm_Eating_Warbler_0102_176069.jpg', 'Worm_eating_Warbler', 'cub15', 'train', 55, 0, 0);
INSERT INTO `test_dataset` VALUES (295, '/home/user/dataset/CUB_200_2011/images/181.Worm_eating_Warbler/Worm_Eating_Warbler_0056_795547.jpg', 'Worm_eating_Warbler', 'cub15', 'train', 56, 0, 0);
INSERT INTO `test_dataset` VALUES (296, '/home/user/dataset/CUB_200_2011/images/173.Orange_crowned_Warbler/Orange_Crowned_Warbler_0007_167545.jpg', 'Orange_crowned_Warbler', 'cub15', 'train', 57, 0, 0);
INSERT INTO `test_dataset` VALUES (297, '/home/user/dataset/CUB_200_2011/images/161.Blue_winged_Warbler/Blue_Winged_Warbler_0021_161858.jpg', 'Blue_winged_Warbler', 'cub15', 'train', 58, 0, 0);
INSERT INTO `test_dataset` VALUES (298, '/home/user/dataset/CUB_200_2011/images/170.Mourning_Warbler/Mourning_Warbler_0072_795379.jpg', 'Mourning_Warbler', 'cub15', 'train', 59, 0, 0);
INSERT INTO `test_dataset` VALUES (299, '/home/user/dataset/CUB_200_2011/images/168.Kentucky_Warbler/Kentucky_Warbler_0050_165278.jpg', 'Kentucky_Warbler', 'cub15', 'train', 60, 0, 0);

-- ----------------------------
-- Table structure for test_result
-- ----------------------------
DROP TABLE IF EXISTS `test_result`;
CREATE TABLE `test_result`  (
  `test_id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `during_time` time(0) NOT NULL,
  `correct` int(0) NOT NULL DEFAULT 0,
  `error` int(0) NOT NULL DEFAULT 0,
  `total` int(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`test_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_result
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `age` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (5, '黄徽冯', 25);

SET FOREIGN_KEY_CHECKS = 1;
