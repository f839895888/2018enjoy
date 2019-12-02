<template>
<!--最外层父元素-->
<div>
    <!--1.轮播图-->
    <div class="carousel">
        <van-swipe :autoplay="3000">
          <van-swipe-item v-for="(image, index) in images" :key="index">
            <img v-lazy="image" />
          </van-swipe-item>
        </van-swipe>
    </div>
    <!--2.文字-->
    <div>
      <div class="info">
           <div class="info-title">
             <p class="title">美豚 Biton 单人午餐-招牌拉面/饭类定食单人午餐</p>
             <p class="desc">9款人气定食搭配咖啡、沙拉</p>
             <p class="price">
               <span class="r-price">38</span>
               <span class="yuan">元</span>
               <span class="wei">/位</span>
               <span class="shuzi">¥58</span>
               <span class="xian"></span>
               <span class="tui">随时退</span>
             </p>
             <div class="like"><img src="http://127.0.0.1:3000/like.png" /></div>
           </div>
           <div class="taps" style="color: rgb(50, 87, 130); background-color: rgb(246, 250, 255);">
             <span>城中招牌店</span>
           </div>
      </div> 
      <div class="gap"></div>
    </div>
    <!--3.商户信息-->
    <div class="store">
      <h3 class="card-title">商户信息</h3>
      <div class="ctitle">美豚 Biton</div>
      <a href="" class="address"> 
        <span class="iconfont"><img src="http://127.0.0.1:3000/addre.png" /></span>
        <span class="content">朝阳区麦子店大街46号</span>
        <span class="dir"></span>
      </a>
      <a href="" class="address">
        <span class="iconfont"><img src="http://127.0.0.1:3000/tel.png" /></span>
        <span class="tcontent">13031082198</span>
        <span class="dir"></span>
      </a>
    </div>
    <div class="gap"></div>
    <!--4.用户信息-->
    <div class="user">
        <h3 class="card-title">用户评价</h3>
        <div class="inner">
          <div class="cell">
            <div class="oneuser">
              <img src="http://127.0.0.1:3000/yuan.jpg" />
              <span class="username">ENJOY_4HAVD8hM</span>
            </div>
            <p class="score">菜品质量 5.0 | 就餐环境 5.0 | 餐厅服务 5.0 </p>
            <div class="tags clearfix">
              <span class="tag-item">干净卫生</span>
              <span class="tag-item">好吃</span>
            </div>
            <p class="pcontent">特别好，很精致，米饭粒粒饱满，连送的冰淇淋都很好吃</p>
            <div class="images clearfix">
              <div>
                  <img src="http://127.0.0.1:3000/comment.jpg" style="width: 120px; height: 120px;"/>
              </div>  
            </div>
          </div>
        </div>
        <a href="javascript:;" class="more"> 
          <span class="morecontent">查看全部评价</span>
          <span class="dir"></span>
        </a>
        <div class="gap"></div>
    </div>
     <!--5.MENU-->
     <div>
       <div class="menu">
            <h3  class="card-title">MENU</h3>
            <div class="menu-list">
                 <div class="menu-item">
                   <p class="sub-title">-定食-</p>
                   <p>（任选1款）</p>
                   <p>博多猪骨汤拉面套餐</p>
                   <p>盐酱猪骨汤拉面套餐</p>
                   <p>猪肉生姜套餐</p>
                   <p>蛋包咖喱饭套餐</p>
                   <p>海鲜什锦盖饭套餐</p>
                 </div>
                 <div class="menu-item">
                   <p class="sub-title">-温馨提示-</p>
                   <p>米饭类套餐内含迷你荞麦面，迷你沙拉，咖啡，冰激凌球</p>
                   <p>拉面类套餐内含迷你沙拉，咖啡和冰激凌球</p>  
                 </div>
            </div>
       </div>
       <div class="gap"></div>
     </div>
     <!--6.亮点-->
     <div>
        <div class="normal">
            <h3 class="card-title">亮点</h3>
            <div class="normal-item clearfix">
                <img src="http://127.0.0.1:3000/h11.jpg" />
                <p class="ntitle">多款人气定食选择搭配咖啡、沙拉 呈上“量足质高”的午餐体验</p>
                <p class="ncontent">擅长猪肉料理的美豚，带来多款人气午餐定食。骨汤浓郁，面条劲道入味的「博多猪骨汤拉面」作为日式拉面中的经典款，口味着实令人难忘；3味可选的「炸猪排定食」，从传统原味到创意柚子汁味，呈现风味各异的肉食体验；更有创意定食「鹅肝烤牛排盖饭」，为你变幻陈旧滋味......搭配咖啡、沙拉，呈现“量足质高”的午餐体验。</p>
            </div>
            <div class="normal-item clearfix">
                <img src="http://127.0.0.1:3000/h22.jpg" />
                <p class="ntitle">虎铁原班人马又一力作 还原超人气日系居酒屋</p>
                <p class="ncontent">作为京城人气日料店虎铁原班人马打造的又一餐厅，美豚 Biton 为食客呈现混合了和风洋食与日本人气酒吧风格的创意餐厅。主打原料上乘的豚料理和调酒文化，从看似简单的「豚骨拉面」到出自店长兼调酒师铃木先生的各式调酒，皆为你展现出超日系的正宗品味。</p>
            </div>
            <div class="normal-item clearfix">
              <img src="http://127.0.0.1:3000/h33.jpg" />
                <p class="ntitle">多款定食各富特色 ENJOY 独享65折起</p>
                <p class="ncontent">无论你爱经典还是创新，无论你爱清淡面食还是够味肉食，美豚为你呈上最精彩的饱足午间餐，ENJOY 独享65折起。</p>
            </div>
        </div>
        <div class="gap"></div>
     </div>
     <!--7.使用提示-->
     <div>
       <div class="tips">
          <h3 class="card-title">使用提示</h3>
          <ul class="list">
            <li >使用日期：2019.11.28-2019.12.30</li>
            <li>使用时段：周一至周日 11:30-14:00</li>  
          </ul>
          <p class="fold">
             更多补充说明 
             <span>
               <a href="javascript:;"><img src="http://127.0.0.1:3000/xia.png" /></a>
             </span>
          </p>
          <div class="kefu">
             <a href="javascript:;">
                   <span><img src="http://127.0.0.1:3000/kefu.png" /></span>
                   联系客服
             </a>
          </div>
       </div>
       <div class="gap"></div>
     </div>
     <!--8.猜你喜欢-->
     <div class="ilike">
       <h3 class="card-title">猜你喜欢</h3>
       <div class="hlike">
          <a href="javascript:;"><img src="http://127.0.0.1:3000/h44.jpg" /></a>
          <div class="details">
            <p class="htitle"><a href="javascript:;">北京瑞吉酒店景苑咖啡厅周日早午餐自助</a></p>
            <p class="hprice">358元/位</p>
          </div>
       </div>
     </div>
     <!--9.加购详情-->
     <div class="hbottom">
       <div class="hctitle clearfix">
          <p>已选择：招牌拉面/饭类定食单人午餐(1份)</p>
          <a style="display:none">关闭
            <span class="toggle-down"></span>
          </a>
          <a >切换商品
            <span class="toggle-up"></span>
          </a>
       </div>
     </div>
     <!--10.底部导航栏-->
     <div>
        <van-goods-action>
            <van-goods-action-icon icon="chat-o" text="客服" @click="onClickIcon" />
            <van-goods-action-icon icon="cart-o" text="购物车" @click="onClickIcon" />
            <van-goods-action-button type="warning" text="加入购物车" @click="onClickIcon" />
            <van-goods-action-button type="danger" text="立即购买" @click="onClickButton" />
        </van-goods-action>
    </div>
</div>
</template>
<script>
export default {
  data(){
    return {
      
      images: [
        'http://127.0.0.1:3000/21.jpg',
        'http://127.0.0.1:3000/22.jpg',
        'http://127.0.0.1:3000/23.jpg',
        'http://127.0.0.1:3000/24.jpg',
        'http://127.0.0.1:3000/25.jpg',
        'http://127.0.0.1:3000/26.jpg'
      ]
    }
  },
  props:["lid"],
  methods:{
    onClickIcon() {
      alert("加入购物车");
    },
    onClickButton() {
      alert("立即购买");
    }
  },

}
</script>
<style scoped>
.hbottom{
margin-bottom: 50px;
}
.hctitle span{
    width: 0;
    height: 0;
    line-height: 0;
    font-size: 0;
    /* margin-left: 7px; */
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
}
.toggle-up{
    border-top: none;
    border-bottom: 5px solid #1a1a1a;
    vertical-align: 6px;
}
.toggle-down{
  border-top: 5px solid #1a1a1a;
    border-bottom: none;
    vertical-align: 1px;
}
.hctitle p{
    float: left;
    padding: 6px 10px;
    letter-spacing: -.6px;
    width: 240px;
}
.hctitle a{
  float: right;
  line-height: 30px;
  font-size: 14px;
    color: #1a1a1a;
}
.hctitle{
  border-bottom: 1px solid #e6e6e6;
    padding: 12px 20px;
    font-size:14px;
    color: #1a1a1a;
}
.hprice{
  font-size: 16px;
  color: #ff3939;
  font-weight: bolder;
}
.htitle a{
  font-size: 15px;
  color: #2c3038;
}
.htitle{
  margin-top:5px;
  margin-bottom: 3px;
  height: 45px;
  line-height: 1.3;
  overflow: hidden;
  text-overflow: ellipsis;
}

.hlike img{
  margin-right: 15px;
  width: 130px;
  height: 90px;
}
.hlike{
  display: flex;
  margin-top: 40px;
}
.ilike{
    background-color: #fff;
    padding: 28px 20px;
    border-bottom: 1px solid #e6e6e6;
}
.kefu a{
  display: inline-block;
  margin: 17px auto;
  width: 130px;
  height: 40px;
  padding-top: 13px;
  border: 1px solid #1a1a1a;
  font-size: 18px;
  color: #2c3038;
}
.kefu span{
  margin-right:8px;
  vertical-align: bottom;
}
.kefu img{
  width:20px;
  height:20px;
  
}
.kefu{
  text-align: center;
}
.fold{
  text-align: center;
  color: #4a4a4a;
  font-size: 18px;
  margin: 25px 0 20px;
}
.fold img{
  width:18px;
  height: 18px;
}
.tips .list{
    margin-top: 13px;
    font-family: PingFangSC-Light;
    font-size: 15px;
    line-height: 1.5;
    color: #63666b;
    list-style: disc inside none;
}
.tips{
  background-color: #fff;
  padding: 25px 20px;
}
.ncontent{
  font-size: 15px;
  line-height: 1.7;
  color: #63666b;
  margin: 15px 20px 20px;
  text-align: justify;
}
.ntitle{
  font-size: 20px;
  color: #21242a;
  margin: 20px 20px 0;
}
.normal-item img{
    display: block;
    width: 100%;
    height: auto;
}
.normal .card-title{
  margin-bottom: 40px;
}
.normal{
    background-color: #fff;
    padding: 25px 0;
}
.menu-item .sub-title{
    font-size: 15px;
    font-weight: bolder;
    line-height: 1.8;
    text-align: center;
    margin-top: 25px;
    color: #2b3038;
}
.menu-list p {
    font-size: 15px;
    line-height: 1.8;
    text-align: center;
    color: #76797e;
}
.menu-list{
  margin-bottom: 10px;
}
.menu{
    background-color: #fff;
    padding: 25px 20px 15px;
}
.more{
    display: block;
    border-bottom: 1px solid #e6e6e6;
    padding: 18px 0 18px;
    margin: 0 20px;
    line-height: 16px;
    font-size: 16px;
    color: #63666b;
    position: relative;
}
.images:after{
  content:"";
  display: block;
  clear:both;
}
.images img{
  float: left;
  margin-right: 10px;
  margin-bottom: 10px;

}
.images{
  position: relative;
}
.pcontent{
  font-size: 15px;
    line-height: 1.5;
    color: #63666b;
    margin-bottom: 18px;
}
.tags span{
  height: 20px;
  margin-right: 10px;
  line-height: 20px;
  padding: 0 5px;
  font-size: 16px;
  font-weight: 300;
  text-align: center;
  color: #92969c;
  border-radius: 3px;
  background-color: #f2f3f5;
}
.tags{
  margin-bottom: 18px;
}
.clearfix{
  overflow: auto;
}
.score{
font-size: 14px;
text-align: left;
color: #92969c;
margin-bottom: 18px;
}
.username{
  font-size: 16px;
  font-weight: 500;
  line-height: 30px;
  color: #1a1a1a;
  margin-right: 10px;
}
.oneuser img{
  width: 30px;
  height: 30px;
  border-radius: 30px;
  margin-right: 10px;
  float: left;
}
.oneuser{
  height: 30px;
  line-height: 30px;
  overflow: hidden;
  margin-bottom: 12px;
}
.inner{
  margin: 30px 20px 0;
  padding-bottom: 10px;
  border-bottom: 1px solid #e6e6e6;
}
.user{
    background-color: #fff;
    padding: 25px 0 15px;
}
.dir{
    width: 0;
    height: 0;
    font-size: 0;
    display: inline-block;
    margin: 0;
    vertical-align: 12px;
    border-top: 4px solid transparent;
    border-bottom: 4px solid transparent;
    border-left: 7px solid #63666b;
    border-right: none;
    position: absolute;
    right: 2px;
}
.iconfont img{
  width:25px;
  height: 25px;
  margin-right: 20px;
}
.store a{
  position: relative;
 display: flex;
 align-items: center;
 padding: 16px 0 11px;
 font-size: 15px;
 color: #63666b;
 border-bottom: 1px solid #e6e6e6;
}
.ctitle{
  padding:30px 0 15px;
  font-size: 23px;
  color:#2c3038;
  border-bottom: 1px solid #e6e6e6;
}
.card-title:after{
    content: " ";
    position: absolute;
    bottom: -8px;
    left: 53%;
    margin-left: -30px;
    width: 40px;
    border-top: 3px solid #e0e0e0;
    display: block;
}
.card-title{
  position: relative;
  font-size: 20px;
  font-weight: bolder;
  line-height: 1;
  text-align: center;
  color: #2c3038;
  display: block;
  margin-bottom: 12px;
}
.store{
  background-color: #fff;
  padding: 25px 20px;
}
.gap{
  width: 100%;
    height: 8px;
    background-color: #fafafa;
    border-top: 1px solid #e6e6e6;
    border-bottom: 1px solid #e6e6e6;
}
.taps{
  width: 72px; 
  margin-right: 20px;
  margin-top: 15px;
}
.taps span{
  display: inline-block;
    padding: 2px 5px;
    font-size: 3px;
    border-radius: 4px;
   border: 1px solid rgb(50, 87, 130); 
}
.like img{
  width:30px;
  height: 30px;
}
.like{
  position: absolute;
  top:2px;
  right: 0px;
}
.tui{
    font-size: 20px;
    color: #92969c;
    line-height: 1;
}
.xian{
    height: 18px;
    background: #92969c;
    display: inline-block;
    width: 1px;
    vertical-align: -3px;
    margin-right: 10px;
}
.shuzi{
  margin-left: 5px;
  text-decoration: line-through;
  color: #92969c;
  margin-right: 8px;
  font-size: 20px;
}
.wei{
    font-size: 20px;
    line-height: 20px;
    margin-right: 7px;
}
.yuan{
  font-size:22px;
  line-height:25px;  
  color:#fc3838;
}
.price{
  margin-top:22px;
  font-size:13px;
  color:#fc3838;
  line-height:1;
}
.r-price{
  font-size:25px;
  line-height:25px;  
  color:#fc3838;
}
.desc{
    width: 335px;
    font-size: 20px;
    line-height: 0.8;
    color: #92969c;
    margin-top: 18px;
}
.title{
    width: 294px;
    font-family: PingFangSC;
    font-size: 22px;
    word-break: break-all;
    color: #2c3038;
}
.info-title{
  padding-bottom:17px;
  position: relative;
  border-bottom:1px solid #eee; 
}
.info{
  background-color: #fff;
  padding: 20px 20px 15px;
}
.carousel img{
  width:100%;
}
.carousel{
  width:100%;
}
.van-swipe{
  height:250px;
}
</style>
