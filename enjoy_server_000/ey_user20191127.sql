SET NAMES UTF8;
DROP DATABASE IF EXISTS ey;
CREATE DATABASE ey CHARSET=UTF8;
USE ey;


-- 评论的照片测试
DROP TABLE IF EXISTS ey_commentimg;
CREATE TABLE ey_commentimg(
iid INT PRIMARY KEY AUTO_INCREMENT,
imid VARCHAR(300) DEFAULT NULL,
zhaopian VARCHAR(1000) DEFAULT NULL
);
-- 插入评论的照片测试
INSERT INTO ey_commentimg VALUES
(null,1,'shi1.jpg'),
(null,1,'shi2.jpg'),
(null,1,'shi3.jpg'),
(null,1,'shi13.jpg'),
(null,1,'shi12.jpg'),
(null,1,'shi14.jpg'),
(null,1,'shi7.jpg'),
(null,1,'shi8.jpg'),
(null,2,'sheng1.jpg'),
(null,2,'sheng2.jpg'),
(null,2,'sheng3.jpg'),
(null,2,'sheng4.jpg'),
(null,2,'sheng5.jpg'),
(null,2,'sheng6.jpg'),
(null,2,'sheng7.jpg'),
(null,2,'sheng8.jpg');


-- 用户评论数据表
DROP TABLE IF EXISTS ey_comment;
CREATE TABLE ey_comment(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  cname VARCHAR(88) DEFAULT NULL,
  ctoux VARCHAR(1000) DEFAULT 'jiu1.jpg',
  comts VARCHAR(300) DEFAULT '默认好评',
  comt VARCHAR(300) DEFAULT NULL,
  zhaopian VARCHAR(1000) DEFAULT NULL,
  val1  VARCHAR(88) DEFAULT 5,
  val2  VARCHAR(88) DEFAULT 5,
  val3  VARCHAR(88) DEFAULT 5
);
-- 用户评论插入测试数据
INSERT INTO ey_comment VALUES
(null,'吃货小青年','jiu1.jpg',"包装不错","这家网页不错啊",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'小鲜肉','jiu2.jpg',"描述相符","这a饭店aaa不a错哦",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'包子','jiu3.jpg',"快递真快","这家aaasa饭店是黑哦",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'饺子','jiu4.jpg',"推荐买哦","大佬带aaaaa你飞吃好",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'拉面','jiu5.jpg',"描述不符","兄弟aaaaa们这家饭店",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'海鲜','jiu6.jpg',"真心不好","小姐aaaaa姐，小哥哥",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'小苹果','jiu7.jpg',"大家别买","大aaa家玩什么呢啊",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'辣椒','jiu8.jpg',"上当受骗","这家烤aaaaa肉不错哦",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'句子','jiu9.jpg',"良心卖家","这家醋aaaaa真好吃哦",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'小鲜橘','jiu20.jpg',"双手支持","哎aaaa，臭豆腐做",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'小姐姐','jiu21.jpg',"加油加油","榴莲aa挺好吃滴啊",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'小哥哥','jiu22.jpg',"包装不错","这家饭店真难错aa",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'小小小小','jiu23.jpg',"描述相符","这家饭店不错哦",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'大大大','jiu25.jpg',"快递真快","这家饭店是黑店aa",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'人人','sheng1.jpg',"推荐买哦","大佬带你飞aaa吃好",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'嘎嘎','sheng2.jpg',"描述不符","兄弟们这家饭aaa店",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'小孩子','sheng3.jpg',"真心不好","小姐姐，小a哥哥",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'老顽童','sheng4.jpg',"大家别买","大家玩什么a呢额",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'超级跑跑','sheng5.jpg',"上当受骗","这家烤肉不错哦",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'超级猴子','sheng6.jpg',"良心卖家","这家醋真好吃是",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5),
(null,'超级狗狗','sheng7.jpg',"双手支持","臭豆腐不错推荐",'1_1.jpg,1_2.jpg,1_1.jpg,1_2.jpg,1_3.jpg,1_4.jpg,1_5.jpg',5,5,5);
-- 用户注册表
CREATE TABLE ey_user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  unameimg VARCHAR(128) DEFAULT "shi1.jpg",
  uname VARCHAR(32) DEFAULT NULL,
  upwd  VARCHAR(32) DEFAULT NULL,
  email VARCHAR(64) DEFAULT NULL,
  phone VARCHAR(16) DEFAULT NULL
);

-- 测试用的 账号密码
INSERT INTO ey_user VALUES
(null,'shi1.jpg''dangdang',123456,'dangdang@qq.com',13588888888),
(null,'shi1.jpg''dongdong',123456,'dongdong@qq.com',13566666666),
(null,'shi1.jpg''ranran',123456,'ranran@qq.com',13512345678),
(null,'shi1.jpg''taotao',123456,'taotao@qq.com',13587654321),
(null,'shi1.jpg''taotao2',123456,'taotao@qq.com',13587654321),
(null,'shi1.jpg''taotao3',123456,'taotao@qq.com',13587654321),
(null,'shi1.jpg''taotao4',123456,'taotao@qq.com',13587654321),
(null,'shi1.jpg''taotao5',123456,'taotao@qq.com',13587654321),
(null,'shi1.jpg''taotao6',123456,'taotao@qq.com',13587654321),
(null,'shi1.jpg''taotao7',123456,'taotao@qq.com',13587654321),
(null,'shi1.jpg''taotao8',123456,'taotao@qq.com',13587654321),
(null,'shi1.jpg''taotao9',123456,'taotao@qq.com',13587654321),
(null,'shi1.jpg''taotao11',123456,'taotao@qq.com',13587654321),
(null,'shi1.jpg''taotao12',123456,'taotao@qq.com',13587654321);






-- 主页商品列表
CREATE TABLE ey_index_hotel(
  pid int PRIMARY KEY AUTO_INCREMENT,
  ppublic varchar(128) DEFAULT NULL,
  title varchar(64) DEFAULT NULL,
  ftitle varchar(32) DEFAULT NULL
);
-- 插入主页商品列表
INSERT INTO ey_index_hotel VALUES 
(null,'1_1.jpg','一元居酒屋 MOTO 单人鳗鱼饭','当日现杀鲜活鳗鱼入料'),
(null,'2_1.jpg','馥泰阁海鲜餐吧海鲜饭双人餐','粤式古早味的海鲜餐吧'),
(null,'3_1.jpg','北京希尔顿酒店东方路一号美餐厅单人餐','低至4折的星级体验'),
(null,'4_1.jpg','北京瑰丽酒店赤火锅 Red Bowl 火锅菜单','深夜及周末的超值体验'),
(null,'5_1.jpg','JUSTIN 文秀新品晚餐套餐','新加坡总理御厨送上精致法餐'),
(null,'6_1.jpg','北京国际饭店星光汇旋转餐厅单人餐','京城“老派”星级西餐体验'),
(null,'7_1.jpg','Tiger Pancake House 全天早午餐','阳光早午餐开启活力一天'),
(null,'8_1.jpg','CINKER PICTURES 三克映画单人 Brunch','随意搭配的三道式 Brunch'),
(null,'shi20.jpg','CINKER PICTURES 三克映画单人 Brunch','随意搭配的三道式 Brunch'),
(null,'jiu9.jpg','CINKER PICTURES 三克映画单人 Brunch','随意搭配的三道式 Brunch'),
(null,'shi1.jpg','CINKER PICTURES 三克映画单人 Brunch','随意搭配的三道式 Brunch'),
(null,'shi7.jpg','CINKER PICTURES 三克映画单人 Brunch','随意搭配的三道式 Brunch'),
(null,'shi11.jpg','CINKER PICTURES 三克映画单人 Brunch','随意搭配的三道式 Brunch'),
(null,'jiu1.jpg','CINKER PICTURES 三克映画单人 Brunch','随意搭配的三道式 Brunch'),
(null,'jiu6.jpg','CINKER PICTURES 三克映画单人 Brunch','随意搭配的三道式 Brunch'),
(null,'jiu11.jpg','CINKER PICTURES 三克映画单人 Brunch','随意搭配的三道式 Brunch'),
(null,'shi21.jpg','北京国际饭店星光汇旋转餐厅单人餐','京城“老派”星级西餐体验'),
(null,'shi22.jpg','JUSTIN 文秀新品晚餐套餐','新加坡总理御厨送上精致法餐'),
-- http://127.0.0.1:3000/1_1.jpg
-- http://127.0.0.1:3000/2_1.jpg

-- 目前没有用这个表
CREATE TABLE ey_hotel(
  lid int PRIMARY KEY AUTO_INCREMENT,
  title varchar(128) DEFAULT NULL,
  price decimal(10,2) DEFAULT NULL,
  apublic varchar(128) DEFAULT NULL,
  bpublic varchar(128) DEFAULT NULL,
  cpublic varchar(128) DEFAULT NULL,
  dpublic varchar(128) DEFAULT NULL,
  epublic varchar(128) DEFAULT NULL,
  fpublic varchar(128) DEFAULT NULL,
  gpublic varchar(128) DEFAULT NULL,
  hpublic varchar(128) DEFAULT NULL
);

INSERT INTO ey_hotel VALUES
(null,'一元居酒屋 MOTO 单人鳗鱼饭',135,'public/1_1.jpg','public/1_2.jpg','public/1_3.jpg','public/1_4.jpg','public/1_5.jpg','public/1_6.jpg','public/1_7.jpg','public/2_8.jpg'),
(null,'馥泰阁海鲜餐吧海鲜饭双人餐',235,'public/2_1.jpg','public/2_2.jpg','public/2_3.jpg','public/2_4.jpg','public/2_5.jpg','public/2_6.jpg','public/2_7.jpg','public/2_8.jpg'), 
(null,'北京希尔顿酒店东方路一号美餐厅单人餐',335,'public/3_1.jpg','public/3_2.jpg','public/3_3.jpg','public/3_4.jpg','public/3_5.jpg','public/3_6.jpg','public/3_7.jpg','public/3_8.jpg');

-- 商品详情表
DROP TABLE IF EXISTS ey_product;
CREATE TABLE ey_product(
  pid int PRIMARY KEY AUTO_INCREMENT,
  title varchar(128) DEFAULT NULL,
  ftitle varchar(128) DEFAULT NULL,
  price decimal(10,2) DEFAULT NULL,
  place varchar(128) DEFAULT NULL,
  alcohol varchar(300) DEFAULT NULL,
  content varchar(128) DEFAULT NULL,
  brand varchar(128) DEFAULT NULL,
  manufacturer varchar(128) DEFAULT NULL,
  nc varchar(128) DEFAULT NULL,
  rm varchar(128) DEFAULT NULL,
  qjp varchar(128) DEFAULT NULL,
  packing varchar(128) DEFAULT NULL,
  sm varchar(128) DEFAULT NULL,
  bsimg varchar(128) DEFAULT NULL,
  bstitle varchar(128) DEFAULT NULL,
  bscontent varchar(3000) DEFAULT NULL,
  bsimgs varchar(128) DEFAULT NULL,
  bstitles varchar(128) DEFAULT NULL,
  bscontents varchar(3000) DEFAULT NULL
  
);
-- 商品详情表插入测试数据
INSERT INTO ey_product VALUES
(NULL,
'日本京都 TaKaRa 清爽果实起泡酒6罐套装',
'果汁起泡酒的鼻祖',
108,
'弹丸之地',
'4%vol',
'TaKaRa 白桃果实起泡酒2罐 TaKaRa 荔枝果实起泡酒2罐 TaKaRa 葡萄果实起泡酒2罐',
'TaKaRa',
'宝酒早主食会社',
'250ml*6',
'水 果汁 食用酒精 果糖 柠檬酸 二氧化碳 食用香料',
'12个月',
'玻璃瓶装',
'请置于阴凉干燥处，冷藏后饮用更佳',
'/lunbo1.jpg',
'每罐都含纯果汁成分',
'日本果汁起泡酒的鼻祖，有着一流清爽感的果汁起泡鸡尾酒，每罐都含纯果汁成分。250ml的小身材，很适合随身携带。天然的水果清甜口感，酸甜不腻，加上爽口的起泡，4.0%的低酒精度数畅饮无压力，冰过之后口感更佳。',
'/jiu8.jpg',
'拥有150余年历史的日本综合性酒类龙头企业',
'来自日本京都的宝酒造（TaKaRa）是一家有着150余年历史的日本综合性酒类龙头企业。1984年，宝酒造公司率先在日本推出全新低酒精饮料——TaKaRa Can CHU－HI，开创了天然汽酒这一全新饮品。作为日本新一代低酒精饮品的出口代表，风靡全世界。');
INSERT INTO ey_product VALUES
(NULL,
'意大利秀俪阁桃红干型起泡葡萄酒',
'味觉与视觉上的享受',
105,
'意大利',
'11.5%',
'意大利秀俪阁桃红干型起泡葡萄酒 1瓶',
'秀俪阁',
'威尼托秀俪阁',
'750mL',
'葡萄汁 二氧化硫',
'不限',
'玻璃瓶装',
'请置于阴凉干燥处，冷藏后饮用更佳',
'/jiu6.jpg',
'味觉与视觉上的享受',
'这是一款采用白色磨砂瓶包装的桃红起泡酒，迷人的浅粉红色，透过朦胧的磨砂瓶，有着相当迷人的外观。甜美新鲜的红色水果香气伴着花朵的芳香，酸度爽脆悠长，气泡持久。一杯迷人的浅色桃红酒再配上春日的桃花，无论是视觉上还是味觉上都极其诱人。',
'/shi2.jpg',
'意大利生产普罗塞克的前三大酒庄',
'秀俪阁酒庄是由怀着对普罗塞克热爱的葡萄种植者们于1957年联合建立的，坐落在意大利普罗塞克 DOC 等级产区的中心地带。秀俪阁酒庄为意大利生产白葡萄酒和普罗塞克的前三大酒庄，所生产的葡萄酒都具有非常明显的个性。');
INSERT INTO ey_product VALUES
(NULL,
'法国西堤飞鸟酒庄长相思干白葡萄酒2015',
'德国柏林葡萄酒大赛金奖',
149,
'法国',
'12%vol',
'法国西堤飞鸟酒庄长相思干白葡萄酒2015 1瓶',
null,
'西堤飞鸟酒庄',
'750mL',
'葡萄汁 二氧化硫',
'不限',
'玻璃瓶装',
'请置于阴凉干燥处，冷藏后饮用更佳',
'/jiu1.jpg',
'2015年德国柏林葡萄酒大赛金奖',
'金黄色的酒液里蕴含着浓郁的水果香气，伴随着细腻的花香和些许矿物质的气息，酒体圆润，结构细致。建议冰镇至10-12℃饮用，可以搭配开胃菜以及白肉等料理。此款长相思在2015年德国柏林葡萄酒大赛中荣获金奖。',
'/jiu14.jpg',
'来自法国以白葡萄酒最为盛赞的产区',
'西堤飞鸟酒庄位于法国的加斯科涅产区，现由对酿酒事业充满热情的 Armin 和 Remy 两兄弟掌管着葡萄园。酒庄的葡萄园环绕在一座十八世纪的古堡周围。得天独道的气候，加上由二氧化硅、粘土与沙土风化成的特有彩色土壤，使得园中的白葡萄品种有着新鲜的果实香气与柔美的酸度。');
INSERT INTO ey_product VALUES
(NULL,
'「寿桃」叻沙爽面5连包',
'起源于马来西亚的面食料理',
22.9,
'大陆',
null,
'叻沙爽面5连包',
'寿桃',
null,
'475克',
'小麦、叻沙酱、椰汁、大蒜、咖喱粉等',
'一年',
'袋装',
'存放常温阴凉干燥通风处，避免光线直射',
'/shi1.jpg',
'源于马来西亚 浓郁汤头搭配港式碱水爽面',
'“叻沙”是一道起源于马来西亚的面食料理，为马来西亚和新加坡的代表性料理，讲究椰浆的鲜味、鲜虾的甜味和辣椒辛辣味。「寿桃」叻沙爽面汤头是其鲜明的特色，以咖哩汤汁混合椰浆，口味甜、咸、辣兼备，搭配港式碱水爽面，面条的汤底的结合恰到好处。',
'/shi2.jpg',
'沿袭经典制作工艺 品牌专注制面56年',
'来自香港的「寿桃」专注制面56年，沿袭经典制作工艺，选用优质大米、淀粉，经特殊工艺制作更具韧度，爽滑可口，味道总是令人意犹未尽。');
INSERT INTO ey_product VALUES
(NULL,
'奇奥菈 Muesli Plus 多果营养燕麦片',
'混合十余种果干果实',
88,
'广东',
null,
'Muesli Plus 多果营养燕麦片',
'奇奥菈',
null,
'45克',
'小麦、叻沙酱、椰汁、大蒜、咖喱粉等',
'180天',
'袋装',
'存放常温阴凉干燥通风处，避免光线直射',
'/shi10.jpg',
'缘起于瑞士的营养代餐 由知名厨师精心研制',
'Muesli 是起源于瑞士的营养食物，主要由压榨的麦片和少量水果坚果混合组成，而这款 Muesli Plus 多果营养麦片是由“Chef Rambo 大厨”基于 Muesli 匠心研制的一款可免冲调的即食麦片，风味独特，不仅是早餐食用的营养选择，更可以作为快速补充能量或餐后点心品尝。',
'/shi8.jpg',
'坚持手工选料制作  告别纯谷物的单调口感',
'Muesli Plus 多果营养燕麦片由纯手工制作，所需的各类食材均是单独挑选，加上精确到秒的配比把控，力求对南瓜籽、夏威夷果、椰丝、苹果干、黄桃干等果干果实都进行充分烹饪，味道香酥爽口，告别纯谷物的单调口感。');
INSERT INTO ey_product VALUES
(NULL,
'日本京都 TaKaRa 清爽果实起泡酒6罐套装',
'果汁起泡酒的鼻祖',
108,
'弹丸之地',
'4%vol',
'TaKaRa 白桃果实起泡酒2罐 TaKaRa 荔枝果实起泡酒2罐 TaKaRa 葡萄果实起泡酒2罐',
'TaKaRa',
'宝酒早主食会社',
'250ml*6',
'水 果汁 食用酒精 果糖 柠檬酸 二氧化碳 食用香料',
'12个月',
'玻璃瓶装',
'请置于阴凉干燥处，冷藏后饮用更佳',
'/lunbo1.jpg',
'每罐都含纯果汁成分',
'日本果汁起泡酒的鼻祖，有着一流清爽感的果汁起泡鸡尾酒，每罐都含纯果汁成分。250ml的小身材，很适合随身携带。天然的水果清甜口感，酸甜不腻，加上爽口的起泡，4.0%的低酒精度数畅饮无压力，冰过之后口感更佳。',
'/sheng6.jpg',
'拥有150余年历史的日本综合性酒类龙头企业',
'来自日本京都的宝酒造（TaKaRa）是一家有着150余年历史的日本综合性酒类龙头企业。1984年，宝酒造公司率先在日本推出全新低酒精饮料——TaKaRa Can CHU－HI，开创了天然汽酒这一全新饮品。作为日本新一代低酒精饮品的出口代表，风靡全世界。');
INSERT INTO ey_product VALUES
(NULL,
'苏格兰芝华士12年威士忌',
'历经12年的浓郁风味',
215,
'苏格兰',
'4%vol',
'TaKaRa 白桃果实起泡酒2罐 TaKaRa 荔枝果实起泡酒2罐 TaKaRa 葡萄果实起泡酒2罐',
'TaKaRa',
'斯宾塞',
'700mL',
'水 果汁 食用酒精 果糖 柠檬酸 二氧化碳 食用香料',
'12个月',
'玻璃瓶装',
'请置于阴凉干燥处，冷藏后饮用更佳',
'/lunbo1.jpg',
'精致丰富口感备受推崇',
'1801年成立于苏格兰阿柏丁的芝华士公司，最开始是一家为顾客提供最优质的货物、粮食和麦芽威士忌的杂货店。随着业务增长，很快赢得了良好的口碑，谷物与麦芽调和威士忌还获得了皇室的认证，同时，他们的酿酒技艺也开始在业内备受推崇。创始人詹姆斯·芝华士坚持认为，保持品牌始终如一的经典口感才是是芝华士的品牌魅力之所在，标志性的馥郁醇厚、丰润顺滑、且回味悠长。芝华士是全世界最早生产调和型威士忌的威士忌生产商，同时也是威士忌三重调和的创造者。目前芝华士全球的年销量已超过五千万瓶，以精致丰富的口感继续征服众人的舌尖。',
'/jiu20.jpg',
'历经12年的浓郁风味 在岁月的浸染中熟成',
'酝酿芝华士12年的斯贝塞酒厂，以风味浓郁的麦芽为酒心，并优雅混合其他成熟的麦芽与谷物类威士忌，调和出这款负有盛名的威士忌杰作。每一瓶芝华士12年都坚持至少在橡木桶中熟成12年，酒液在岁月的浸染中，酝酿出调和型威士忌的艺术口感，成就了“威士忌王子”的美誉。温暖的琥珀色，饱满的秋果香和花蜜香味，标志性的馥郁醇厚，丰润顺滑，且回味悠长。');
INSERT INTO ey_product VALUES
(NULL,
'意大利爱思醍起泡酒',
'爱思醍协会信誉保证',
88,
'意大利',
'4%vol',
'TaKaRa 白桃果实起泡酒2罐 TaKaRa 荔枝果实起泡酒2罐 TaKaRa 葡萄果实起泡酒2罐',
'TaKaRa',
'意大利卡萨维尼克拉马朗科风酒庄',
'700mL',
'水 果汁 食用酒精 果糖 柠檬酸 二氧化碳 食用香料',
'12个月',
'玻璃瓶装',
'请置于阴凉干燥处，冷藏后饮用更佳',
'/lunbo1.jpg',
'爱思醍协会逾80年的信誉保证',
'1932年正式成立的爱思醍甜汽酒保护协会，旨在保护爱思醍的品牌、指定产地、葡萄种类、生产技术和产品类型。爱思醍起泡酒出色地保留了刚采摘的新鲜葡萄的芳香和味道，开瓶即散发麝香般的香味，起泡活跃细密，并带有天然平衡的甜味，较低精度即使日常小酌也十分惬意。',
'/jiu21.jpg',
'由莫斯卡托酿制的唯一保证法定产区酒',
'DOCG 是意大利特级法定产区的最高级，相比于 DOC 级别，DOCG 级起泡酒更是在葡萄产地、葡萄品种、种植方法、种植位置、酿造方法、葡萄酒最少产量等方面都十分严格的要求。爱思醍起泡酒采用意大利著名葡萄品种莫斯卡托酿造，是此种葡萄酿制的唯一保证法定产区酒。');
INSERT INTO ey_product VALUES
(NULL,
'法国阿里那男爵半干桃红起泡葡萄酒',
'甜度百搭聚会必备',
100,
'法国',
'4%vol',
'TaKaRa 白桃果实起泡酒2罐 TaKaRa 荔枝果实起泡酒2罐 TaKaRa 葡萄果实起泡酒2罐',
'TaKaRa',
'玛格丽朵酒庄',
'700mL',
'水 果汁 食用酒精 果糖 柠檬酸 二氧化碳 食用香料',
'12个月',
'玻璃瓶装',
'请置于阴凉干燥处，冷藏后饮用更佳',
'/jiu20.jpg',
'甜度百搭聚会必备',
'此款起泡酒呈诱人的淡粉色，甜美新鲜的红色小浆果香气，爽脆悠长的酸度，气泡丰富而细腻，酒精度偏低，轻松易喝，冰镇至6-8℃口感极佳，适合搭配海鲜或色拉食用，是朋友聚会中人人点赞的佳品。',
'/jiu22.jpg',
'法国年度销售前二十名品牌',
'阿里那男爵于1964年在阿里那城堡出生，坐落在比利牛斯山的城堡自1455年以来一直是其家族财产，他爱上酿酒，并把它作为自己的终身事业，他和酒农们一同劳作来保证葡萄的生产和质量。从1980年起开始正式在法国商品化销售，目前是法国年度销售前二十名品牌。');

INSERT INTO ey_product VALUES
(NULL,
'法国哈姆雷王子干红葡萄酒【年份随机】',
'传统工艺孕育美妙风味',
222,
'法国',
'4%vol',
'法国哈姆雷王子干红葡萄酒【年份随机】',
'TaKaRa',
'玛格丽朵酒庄',
'700mL',
'水 果汁 食用酒精 果糖 柠檬酸 二氧化碳 食用香料',
'12个月',
'玻璃瓶装',
'请置于阴凉干燥处，冷藏后饮用更佳',
'/jiu23.jpg',
'优质葡萄产区 传统酿酒工艺',
'哈姆雷王子干红采用最传统的酿酒工艺，将去梗后的葡萄粒进行长达17天的浸渍，30%使用酒糟、70%则使用法国橡木桶培育18个月，才能孕育出如此美妙的风味。',
'/jiu23.jpg',
'馥郁香气适合搭配红肉类美食',
'此款干红酒体呈浓郁的深红色，有丰富的樱桃、巧克力、甘草和烤面包片的香气，在甜美和圆润间找到了平衡。单宁表现力突出，淡淡的胡椒与香草味道，很适合搭配红肉类美食、炖菜以及醇厚香甜的巧克力蛋糕享用。');

INSERT INTO ey_product VALUES
(NULL,
'「花知道」鲜榨玫瑰汁5瓶装',
'天然萃取鲜花原液过滤',
222,
'云南普者黑',
'4%vol',
'「花知道」鲜榨玫瑰汁',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'富含 VC 的高颜值鲜榨玫瑰汁',
'“花知道”采用创新工艺，萃取新鲜玫瑰花瓣，获得完好保持鲜花本有色、香的珍贵鲜花饮品。产品中不含人工香精、色素、防腐剂，最佳赏味期仅仅为28天。玫瑰鲜花汁中富含维生素 C 及多种人体所需微量元素，VC 含量高达2000mg/100g，是苹果的约700倍。早上起床后喝下一瓶，呼吸中带着淡淡的香气，开启愉悦的一天。',
'/jiu25.jpg',
'严选“高原重瓣红玫瑰”',
'在年均15.9°C温暖气候，全年阳光普照，每天至少8小时的太阳直射，充分满足 “高原重瓣红玫瑰”生长发育的需要种群作为玫瑰食材，其较其他种类食用玫瑰花色深红带黑红色，色素含量高，有丝绒质感，浓香，香味纯正，口感弹牙, 有嚼劲。基地获得国家有机认证，土壤重金属、农药残留检测满足欧盟 SGS 认证的严苛要求，生产工艺标准满足 ISO22000质量体系管理标准。');

INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');

INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');
INSERT INTO ey_product VALUES
(NULL,
'Mio’s Lab 喵叔的实验室黄标铁盒曲奇',
'四味集锦的微软酥滑体验',
222,
'四味集锦的微软酥滑体验',
'4%vol',
'原味*12块 咖啡味*12块 可可味*12块 抹茶味*12块',
'花知道',
'云南普者黑',
'700mL',
'水，重瓣玫瑰，果葡糖浆，柠檬提取物',
'28天，开盖即饮',
'玻璃瓶装，外包装为瓦楞纸盒',
'常温，避光，防潮，开启后需冷藏',
'/jiu25.jpg',
'坚持手作 酥中带软的高级口感',
'坚持使用昂贵的法国总统黄油和美国蓝钻杏仁粉，每一块曲奇都手工制作，拒绝添加防腐剂香精和人工色素，口感微软酥滑，入口即化，真正酥中带软的高级口感。',
'/jiu25.jpg',
'品质严格把关 精选多地食材',
'优雅风味的法式发酵黄油的典型代表法国总统黄油，颜色是淡淡的乳白色，从生面团到烤制出炉的过程都散发着迷人的香味，口感细腻优雅，优质食材无疑保证了曲奇的香浓美味。');


