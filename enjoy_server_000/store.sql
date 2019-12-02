SET NAMES UTF8;
USE ey;

#一: 创建第一个表:ey_store店铺信息表
CREATE TABLE ey_store(
 id INT PRIMARY KEY AUTO_INCREMENT,
 family_sid INT,
 fenlei VARCHAR(64),
 isNew BOOL,
 title VARCHAR(255),
 subtitle VARCHAR(64),
 price DECIMAL(10,2),
 dprice DECIMAL(10,2),
 pic VARCHAR(64)
);
INSERT INTO ey_store VALUES(null,1,"日本料理",0,"炭匠炉端烧·酒（金融街购物中心）单人餐","风行北海道的炉端烧料理",156,312,"http://127.0.0.1:3000/s1.jpg");
INSERT INTO ey_store VALUES(null,1,"日本料理",0,"桥场居酒屋 IZAKA-YA 桥场居酒屋全天单人餐","重现昭和建筑风格的精致居酒屋",55,null,"http://127.0.0.1:3000/s2.jpg");
INSERT INTO ey_store VALUES(null,1,"日本料理",0,"鳗富士正宗活鳗鱼料理单/双人餐","多款活鳗料理一次尝鲜",168,258,"http://127.0.0.1:3000/s3.jpg");
INSERT INTO ey_store VALUES(null,1,"日本料理",0,"千羽鹤海鲜居酒屋（大望路店）双人小赏套餐","蓝鳍金枪鱼主题超值套餐",288,400,"http://127.0.0.1:3000/s4.jpg");
INSERT INTO ey_store VALUES(null,1,"日本料理",0,"尚水长廊铁板烧餐厅 （三里屯太古里店）全天单人餐","午餐与晚餐通用",368,725,"http://127.0.0.1:3000/s5.jpg");
INSERT INTO ey_store VALUES(null,1,"日本料理",0,"凤寿司午市海鲜饭套餐","府学胡同里的和风美馐",158,228,"http://127.0.0.1:3000/s6.jpg");
INSERT INTO ey_store VALUES(null,1,"日本料理",0,"秋本 AKIMOTO（二店）单人手握寿司套餐","每周三次从日本长崎空运生鲜",200,260,"http://127.0.0.1:3000/s7.jpg");
INSERT INTO ey_store VALUES(null,1,"日本料理",0,"炉匠炉端烧双人餐","采用专业北海道备长炭烤制",188,295,"http://127.0.0.1:3000/s8.jpg");
INSERT INTO ey_store VALUES(null,1,"日本料理",0,"美豚 Biton 单人午餐","9款人气定食搭配咖啡、沙拉",38,58,"http://127.0.0.1:3000/s9.jpg");
INSERT INTO ey_store VALUES(null,1,"日本料理",0,"一元居酒屋 MOTO 单人鳗鱼饭","当日现杀鲜活鳗鱼入料",158,231,"http://127.0.0.1:3000/s10.jpg");
INSERT INTO ey_store VALUES(null,1,"日本料理",1,"Ishikawa 石川料理亭单人晚餐","尽享炭烧鳗鱼与日式小火锅",398,510,"http://127.0.0.1:3000/s11.jpg");
INSERT INTO ey_store VALUES(null,1,"日本料理",1,"Ishikawa 石川料理亭单人午餐","七道式丰盛日料会席",198,320,"http://127.0.0.1:3000/s12.jpg");

INSERT INTO ey_store VALUES(null,2,"精选西餐",0,"Casa Talia by TIAGO 全天双人餐","在时尚餐厅感受地中海风情",388,533,"http://127.0.0.1:3000/s13.jpg");
INSERT INTO ey_store VALUES(null,2,"精选西餐",0,"Meeting Someone海鲜饭双人餐","老胡同里的甜蜜邂逅",398,502,"http://127.0.0.1:3000/s14.jpg");
INSERT INTO ey_store VALUES(null,2,"精选西餐",0,"牛排家商务午餐","ENJOY 用户更独享特色饮品",158,260,"http://127.0.0.1:3000/s15.jpg");
INSERT INTO ey_store VALUES(null,2,"精选西餐",0,"牛排家经典/精致套餐","ENJOY 用户更独享特色饮品",288,318,"http://127.0.0.1:3000/s16.jpg");
INSERT INTO ey_store VALUES(null,2,"精选西餐",0,"北京国际饭店星光汇旋转餐厅单人餐","京城“老派”星级西餐体验",149,376,"http://127.0.0.1:3000/s17.jpg");
INSERT INTO ey_store VALUES(null,2,"精选西餐",0,"BLT 美式西餐厅单人含自助套餐","多款混合沙拉和时蔬任选",65,null,"http://127.0.0.1:3000/s18.jpg");
INSERT INTO ey_store VALUES(null,2,"精选西餐",0,"1949-Taverna 塔瓦娜周末单人 Brunch","三里屯的地中海风情西餐厅",98,323,"http://127.0.0.1:3000/s19.jpg");
INSERT INTO ey_store VALUES(null,2,"精选西餐",0,"IMP PARLOR 单人 Brunch","5款丰盛好味的早午餐可选",48,68,"http://127.0.0.1:3000/s20.jpg");
INSERT INTO ey_store VALUES(null,2,"精选西餐",0,"西贡在巴黎（老佛爷店）单人/双人餐","浪漫优雅的主题餐厅",68,138,"http://127.0.0.1:3000/s21.jpg");
INSERT INTO ey_store VALUES(null,2,"精选西餐",0,"国贸大酒店酒廊周末单人早午餐","在80层云端酒廊畅享星级美食",498,580,"http://127.0.0.1:3000/s22.jpg");
INSERT INTO ey_store VALUES(null,2,"精选西餐",1,"肉趣 MEATEREST 分割肉单人餐","便捷超值的牛扒餐",75,86,"http://127.0.0.1:3000/s23.jpg");
INSERT INTO ey_store VALUES(null,2,"精选西餐",1,"肉趣 MEATEREST 芝巴达单人餐","柔软夏巴塔面包+软嫩肉肆",35,43,"http://127.0.0.1:3000/s24.jpg");


#二: 创建第二个表:ey_foods 食物信息表
CREATE TABLE ey_foods(
 id INT PRIMARY KEY AUTO_INCREMENT,
 family_sid INT,
 fenlei VARCHAR(64),
 isNew BOOL,
 title VARCHAR(255),
 subtitle VARCHAR(64),
 price DECIMAL(10,2),
 dprice DECIMAL(10,2),
 pic VARCHAR(64)
);
INSERT INTO ey_store VALUES(null,1,"日本料理",0,"炭匠炉端烧·酒（金融街购物中心）单人餐","风行北海道的炉端烧料理",156,312,"http://127.0.0.1:3000/s1.jpg");