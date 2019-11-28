#1.创建轮播图表
SET NAMES UTF8;
USE ey;
CREATE TABLE ey_lunbo(
 bid INT PRIMARY KEY AUTO_INCREMENT,
 family_id INT,
 imgUrl VARCHAR(255)
);
INSERT INTO ey_lunbo VALUES(null,1,"http://127.0.0.1:3000/h1_1.jpg");
INSERT INTO ey_lunbo VALUES(null,1,"http://127.0.0.1:3000/h1_2.jpg");
INSERT INTO ey_lunbo VALUES(null,1,"http://127.0.0.1:3000/h1_3.jpg");
INSERT INTO ey_lunbo VALUES(null,1,"http://127.0.0.1:3000/h1_4.jpg");
INSERT INTO ey_lunbo VALUES(null,1,"http://127.0.0.1:3000/h1_5.jpg");
INSERT INTO ey_lunbo VALUES(null,1,"http://127.0.0.1:3000/h1_6.jpg");
INSERT INTO ey_lunbo VALUES(null,1,"http://127.0.0.1:3000/h1_7.jpg");
INSERT INTO ey_lunbo VALUES(null,1,"http://127.0.0.1:3000/h1_8.jpg");
INSERT INTO ey_lunbo VALUES(null,1,"http://127.0.0.1:3000/h1_9.jpg");
INSERT INTO ey_lunbo VALUES(null,1,"http://127.0.0.1:3000/h1_10.jpg");
INSERT INTO ey_lunbo VALUES(null,1,"http://127.0.0.1:3000/h1_11.jpg");
INSERT INTO ey_lunbo VALUES(null,1,"http://127.0.0.1:3000/h1_12.jpg");
INSERT INTO ey_lunbo VALUES(null,1,"http://127.0.0.1:3000/h1_13.jpg");
INSERT INTO ey_lunbo VALUES(null,2,"http://127.0.0.1:3000/h2_1.jpg");
INSERT INTO ey_lunbo VALUES(null,2,"http://127.0.0.1:3000/h2_2.jpg");
INSERT INTO ey_lunbo VALUES(null,2,"http://127.0.0.1:3000/h2_3.jpg");
INSERT INTO ey_lunbo VALUES(null,2,"http://127.0.0.1:3000/h2_4.jpg");
INSERT INTO ey_lunbo VALUES(null,3,"http://127.0.0.1:3000/h3_1.jpg");
INSERT INTO ey_lunbo VALUES(null,3,"http://127.0.0.1:3000/h3_2.jpg");
INSERT INTO ey_lunbo VALUES(null,3,"http://127.0.0.1:3000/h3_3.jpg");
INSERT INTO ey_lunbo VALUES(null,3,"http://127.0.0.1:3000/h3_4.jpg");
INSERT INTO ey_lunbo VALUES(null,3,"http://127.0.0.1:3000/h3_5.jpg");
INSERT INTO ey_lunbo VALUES(null,3,"http://127.0.0.1:3000/h3_6.jpg");
INSERT INTO ey_lunbo VALUES(null,3,"http://127.0.0.1:3000/h3_7.jpg");
INSERT INTO ey_lunbo VALUES(null,4,"http://127.0.0.1:3000/h4_1.jpg");
INSERT INTO ey_lunbo VALUES(null,4,"http://127.0.0.1:3000/h4_2.jpg");
INSERT INTO ey_lunbo VALUES(null,4,"http://127.0.0.1:3000/h4_3.jpg");
INSERT INTO ey_lunbo VALUES(null,4,"http://127.0.0.1:3000/h4_4.jpg");
INSERT INTO ey_lunbo VALUES(null,4,"http://127.0.0.1:3000/h4_5.jpg");
INSERT INTO ey_lunbo VALUES(null,4,"http://127.0.0.1:3000/h4_6.jpg");
INSERT INTO ey_lunbo VALUES(null,4,"http://127.0.0.1:3000/h4_7.jpg");
INSERT INTO ey_lunbo VALUES(null,4,"http://127.0.0.1:3000/h4_8.jpg");
INSERT INTO ey_lunbo VALUES(null,4,"http://127.0.0.1:3000/h4_9.jpg");
INSERT INTO ey_lunbo VALUES(null,4,"http://127.0.0.1:3000/h4_10.jpg");
INSERT INTO ey_lunbo VALUES(null,4,"http://127.0.0.1:3000/h4_11.jpg");
INSERT INTO ey_lunbo VALUES(null,4,"http://127.0.0.1:3000/h4_12.jpg");
INSERT INTO ey_lunbo VALUES(null,5,"http://127.0.0.1:3000/h5_1.jpg");
INSERT INTO ey_lunbo VALUES(null,5,"http://127.0.0.1:3000/h5_2.jpg");
INSERT INTO ey_lunbo VALUES(null,5,"http://127.0.0.1:3000/h5_3.jpg");
INSERT INTO ey_lunbo VALUES(null,5,"http://127.0.0.1:3000/h5_4.jpg");
INSERT INTO ey_lunbo VALUES(null,5,"http://127.0.0.1:3000/h5_5.jpg");
INSERT INTO ey_lunbo VALUES(null,5,"http://127.0.0.1:3000/h5_6.jpg");
INSERT INTO ey_lunbo VALUES(null,5,"http://127.0.0.1:3000/h5_7.jpg");
INSERT INTO ey_lunbo VALUES(null,5,"http://127.0.0.1:3000/h5_8.jpg");
INSERT INTO ey_lunbo VALUES(null,5,"http://127.0.0.1:3000/h5_9.jpg");
INSERT INTO ey_lunbo VALUES(null,5,"http://127.0.0.1:3000/h5_10.jpg");
INSERT INTO ey_lunbo VALUES(null,5,"http://127.0.0.1:3000/h5_11.jpg");
INSERT INTO ey_lunbo VALUES(null,6,"http://127.0.0.1:3000/h6_1.jpg");
INSERT INTO ey_lunbo VALUES(null,6,"http://127.0.0.1:3000/h6_2.jpg");
INSERT INTO ey_lunbo VALUES(null,6,"http://127.0.0.1:3000/h6_3.jpg");
INSERT INTO ey_lunbo VALUES(null,6,"http://127.0.0.1:3000/h6_4.jpg");
INSERT INTO ey_lunbo VALUES(null,6,"http://127.0.0.1:3000/h6_5.jpg");
INSERT INTO ey_lunbo VALUES(null,6,"http://127.0.0.1:3000/h6_6.jpg");
INSERT INTO ey_lunbo VALUES(null,6,"http://127.0.0.1:3000/h6_7.jpg");
INSERT INTO ey_lunbo VALUES(null,6,"http://127.0.0.1:3000/h6_8.jpg");
INSERT INTO ey_lunbo VALUES(null,6,"http://127.0.0.1:3000/h6_9.jpg");
INSERT INTO ey_lunbo VALUES(null,6,"http://127.0.0.1:3000/h6_10.jpg");
INSERT INTO ey_lunbo VALUES(null,6,"http://127.0.0.1:3000/h6_11.jpg");
INSERT INTO ey_lunbo VALUES(null,6,"http://127.0.0.1:3000/h6_12.jpg");


#2.创建餐厅详情表
CREATE TABLE ey_details(
 lid INT PRIMARY KEY AUTO_INCREMENT,
 title VARCHAR(64),
 subtitle VARCHAR(64),
 price DECIMAL(10,2),
 yprice DECIMAL(10,2),
 pname VARCHAR(64),
 addr VARCHAR(64),
 phone VARCHAR(64),
 locat VARCHAR(64)
);
INSERT INTO ey_details VALUES(1,"炭匠炉端烧·酒（金融街购物中心）单人餐","风行北海道的炉端烧料理",156,312,"炭匠炉端烧·酒（金融街店）","西城区金城坊街2号金融街购物中心二层L217-219","010-66220039","116.362139,39.9155");
INSERT INTO ey_details VALUES(2,"桥场居酒屋 IZAKA-YA 桥场居酒屋全天单人餐","重现昭和建筑风格的精致居酒屋",55,null,"桥场居酒屋 IZAKA-YA","朝阳区工体北路4号机电研究院内（近凯富酒店）","010-65853570","116.45640563964844,39.931617736816406");
INSERT INTO ey_details VALUES(3,"鳗富士正宗活鳗鱼料理单/双人餐","多款活鳗料理一次尝鲜",168,258,"鳗富士正宗活鳗鱼料理","朝阳区农展馆北路一番街对面（麦当劳2层）","010-56252979","116.47106170654297,39.94485855102539");
INSERT INTO ey_details VALUES(4,"千羽鹤海鲜居酒屋（大望路店）双人小赏套餐","蓝鳍金枪鱼主题超值套餐",288,400,"千羽鹤海鲜居酒屋（大望路店）","朝阳区建国路88号 SOHO 现代城南侧底商S-1602","57513399","116.476318359375,39.907379150390625");
INSERT INTO ey_details VALUES(5,"尚水长廊铁板烧餐厅 （三里屯太古里店）全天单人餐","午餐与晚餐通用",368,725,"尚水长廊铁板烧餐厅 （三里屯太古里店）","朝阳区三里屯路19号三里屯太古里北区N4-30号","010-64152112","116.45440673828125,39.93899917602539");
INSERT INTO ey_details VALUES(6,"凤寿司午市海鲜饭套餐","府学胡同里的和风美馐",158,228,"凤寿司","东城区东四北大街府学胡同甲1号星程唐府酒店对面","010-69945977","116.41645812988281,39.935760498046875");

#3.创建菜单表
CREATE TABLE ey_menu(
 fid INT,
 title VARCHAR(64),
 detail VARCHAR(255)
);

INSERT INTO ey_menu VALUES(1,"小菜","和风金枪鱼 冷豆腐温泉蛋");
INSERT INTO ey_menu VALUES(1,"沙拉","油梨沙拉");
INSERT INTO ey_menu VALUES(1,"吸物","松茸茶壶汤");
INSERT INTO ey_menu VALUES(1,"招牌菜","（2选1） 鹅肝牛肉饭 活鳗鱼籽饭");
INSERT INTO ey_menu VALUES(1,"甜点","麻将冰激凌");
INSERT INTO ey_menu VALUES(2,"菜单","（2选1）【南蛮鸡肉盖饭套餐】（配：蘑菇蔬菜沙拉，中华海藻，韩式辣白菜，味增汤，杏仁豆腐）【锅烧乌冬面套餐】（配：蘑菇蔬菜沙拉，中华海藻，韩式辣白菜，抹茶红豆卷）");
INSERT INTO ey_menu VALUES(3,"菜单","特上鳗鱼饭 咸菜 汤");


#3.创建食物亮点表

CREATE TABLE ey_liang(
 ldid INT,
 picUrl VARCHAR(64),
 title VARCHAR(64),
 detail VARCHAR(255)
);

INSERT INTO ey_liang VALUES(1,"http://127.0.0.1:3000/ld1_1.jpg","风行北海道的炉端烧  在北京即可享用","炉端烧，源于日本宫城县仙台，它的灵魂可“鲜”一字概括。而今喜欢尝鲜的食客不出京城便可体验这一追求形式感且对食材极为苛刻的美食风情。炭匠一直秉承备长炭新鲜现烤的烹饪传统，在烹饪过程中，仅洒清酒和少许玫瑰盐提味，力求诱出食材原味，倡导饮食健康安全。");
INSERT INTO ey_liang VALUES(1,"http://127.0.0.1:3000/ld1_2.jpg","明净敞亮的餐厅环境 仿佛“楼中花园”的高级日料地","仿佛楼中花园的炭匠炉端烧坐落在金融街购物中心的2楼拐角处，不同于传统日料店的狭小幽暗，“炭匠”用干净敞亮的环境让到店的食客从踏进大门之初就倍感愉悦。每日空运新鲜食材打造出优质菜品，招牌「鹅肝牛肉饭」和「活鳗鱼籽饭」均采用新鲜食材精心烹制，更有「松茸茶壶汤」等丰盛菜品，带您品味地道的和风珍馐。");
INSERT INTO ey_liang VALUES(1,"http://127.0.0.1:3000/ld1_3.jpg","上等食材打造精品日料  ENJOY 独享5折","炭匠炉端烧单人餐，精选优质食材，呈现地道东瀛美味。ENJOY 独享5折。");
INSERT INTO ey_liang VALUES(2,"http://127.0.0.1:3000/ld2_1.jpg","鹅肝与银鳕鱼入料 打造八款豪华定食","桥场不同于传统日式居酒屋的小巧与菜单上的局限性，空间更为开阔，料理种类也非常齐全，特请来拥有十余年料理经验的主厨出品。菜单上包含了近两百款菜品，是周边日本客人常驻聚会之所。本次特别带来八款人气定食，从经典的「特选烧肉盖饭」与「锅烧乌冬面」，再到精致的「牛肉鹅肝饭」，周一至周日每天都有新选择。");
INSERT INTO ey_liang VALUES(2,"http://127.0.0.1:3000/ld2_2.jpg","别有洞天的日式居酒屋  重现昭和建筑风格","桥场居酒屋藏匿于工体北路机电院里，门脸毫不张扬却内有洞天。突破传统的居酒屋式设计，将日本昭和初期的建筑风格重新再现，也充斥着好莱坞电影中浓郁的客栈风情。可供18人使用的原色木制寿司台，两层楼的格局，用餐环境颇受食客肯定。秋冬来此，一享居酒屋带来的温情体验。");
INSERT INTO ey_liang VALUES(2,"http://127.0.0.1:3000/ld2_3.jpg","周一至周日午晚通用   ENJOY 独享优惠","桥场居酒屋全天单人餐，包含八款人气定食，午晚均可使用，ENJOY 独享优惠。");
INSERT INTO ey_liang VALUES(3,"http://127.0.0.1:3000/ld3_1.jpg","整条鳗鱼制得一碗饭 现蒸后烤打造完美口感","一番街新开张“鳗富士”活鳗料理店，头牌当属「特上鳗鱼饭」。“食材有限”、“每日现杀”这些特点还不算完——一条完整鳗鱼方可制成一碗鳗鱼饭，满满一碗的鲜活好料。鳗鱼现蒸后烤，在鱼肉饱满多汁之际，被直火锁住水分。料理人全程掌控火候，不断刷汁上色增味，实为耗时费力的手作美味。");
INSERT INTO ey_liang VALUES(3,"http://127.0.0.1:3000/ld3_2.jpg","从沙拉、烤物到主食“皆鳗鱼”","鳗鱼料理常见的料理技法无非炙烤，鳗富士给你没见过的鳗鱼盛宴。「活鳗沙拉」，有别于烤鳗鱼的烫口温度，微凉的鳗鱼沙拉，带来更为 Q 弹的鲜爽口感；「活炸鳗鱼骨」，靠选用当日先杀的鳗鱼骨，才可做出这焦脆香酥的下酒好料。而后是「活鳗鱼肝」「活鳗鸡蛋卷」与「 特上活鳗重」，5道主题料理，搭配前菜与刺身，给你满满一桌的鲜活好味。");
INSERT INTO ey_liang VALUES(3,"http://127.0.0.1:3000/ld3_3.jpg","鳗富士活鳗盛宴单/双人餐 ENJOY 独享5折起","新晋鳗鱼料理专门店鳗富士，带来两款品味一流的鳗鱼套餐！含单人「特上鳗鱼饭」与双人活鳗盛宴可选，ENJOY 独享5折起。");


