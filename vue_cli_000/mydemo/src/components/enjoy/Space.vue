<template>
  <div class="container">
     <!--1.最上方文字-->
     <div class="caption">
       <p class="title">今日推荐</p>
       <p class="subtitle">全方位的生活指南,每天都有新乐趣</p>
       <div class="queue">
         <span>{{number}}</span>/7
       </div>
     </div>
     <!--中间轮播图-->
     <div class="swipe-container">
         
          <ul @mousemove="move()" :style="{'margin-left':345 * moved+20 + 'px'}">
            <li >
              <a href="javascript:;" class="bord">
                <img src="http://127.0.0.1:3000/01.jpg" />
                <p class="one">快递到家</p>
                <p class="two">周二买醉日 | 每周一个买醉理由</p>
                <p class="subtitle">限量礼券＋超值闪购＋大额满减，三重福利为你奉上～</p>
              </a>
            </li>
            <li > 
              <a href="javascript:;" class="bord">
                <img src="http://127.0.0.1:3000/02.jpg" />
                <p class="one">ENJOY | 城中 TOP 250</p>
                <p class="two">由星级主厨掌勺的华尔道夫招牌中餐厅</p>
                <p class="subtitle">东方典雅与西方华美相融合</p>
             </a>
            </li>
            <li >
              <a href="javascript:;" class="bord">
                <img src="http://127.0.0.1:3000/03.jpg" />
                <p class="one">今日主题</p>
                <p class="two">不住海滨城也能享受最新鲜的海味大餐</p>
                <p class="subtitle"> 想要无限量生蚝还是什锦海鲜锅?任君选择！</p>
              </a>
            </li>
            <li >
              <a href="javascript:;" class="bord">
                <img src="http://127.0.0.1:3000/04.jpg" />
                <p class="one">快递到家</p>
                <p class="two">一周盘点｜本周口碑爆款TOP20</p>
                <p class="subtitle">甄选优质好物，热销爆款限时返场~</p>
              </a>
            </li>
            <li >
              <a href="javascript:;" class="bord">
                <img src="http://127.0.0.1:3000/05.jpg" />
                <p class="one">快递到家</p>
                <p class="two">每周新品 | 每周更新，精选推荐合辑</p>
                <p class="subtitle">更多新品精选推荐～热门品类不容错过！</p>
              </a>
            </li>
            <li >
              <a href="javascript:;" class="bord">
                <img src="http://127.0.0.1:3000/06.jpg" />
                <p class="one">快递到家</p>
                <p class="two">潮流好物｜惊喜当下最热最in的爆款</p>
                <p class="subtitle">每日上新，全部裸价放送，数量有限抢完即止</p>
              </a>
            </li>
            <li >
              <a href="javascript:;" class="bord">
                <img src="http://127.0.0.1:3000/07.jpg" />
                  <p class="one">快递到家</p>
                  <p class="two">尾品特卖｜每周三更新，捡漏到手软！</p>
                  <p class="subtitle">超值好货抄底价限时秒杀！买到就是赚到～ </p>
              </a>
            </li>
          </ul>
     </div>
     <!--中间滚动条-->
     
     <div class="slide-box">
        <div class="top slide-item">
            <router-link to="/storeh/1">
                <img src="http://127.0.0.1:3000/08.jpg" alt="" />
                <p class="title2">日本料理</p>
                <p class="subtitle2">10个精品店</p>
            </router-link>
          </div>
          <div class="top slide-item">
            <router-link to="/storeh/2">
              <img src="http://127.0.0.1:3000/09.jpg" alt="" />
              <p class="title2">精选西餐</p>
              <p class="subtitle2">10个精品店</p>
            </router-link>
          </div>
          <div class="top slide-item">
            <router-link to="">
              <img src="http://127.0.0.1:3000/10.jpg" alt="" />
              <p class="title2">今日特卖</p>
            </router-link>
          </div>
  </div>
     <!--下方的轮播图-->
     <div class="carousel">
        <van-swipe :autoplay="3000" :width="335">
          <van-swipe-item @click.native="jump">
            <img src="http://127.0.0.1:3000/01.jpg"/>
            <p>周二买醉日 | 每周一个买醉理由</p>
          </van-swipe-item>
          <van-swipe-item @click.native="jump">
            <img src="http://127.0.0.1:3000/05.jpg"/>
            <p>每周新品 | 每周更新，精选推荐合辑</p>
          </van-swipe-item>
          <van-swipe-item @click.native="jump">
            <img src="http://127.0.0.1:3000/04.jpg"/>
            <p>一周盘点｜本周口碑爆款TOP20</p>
          </van-swipe-item>
          <van-swipe-item @click.native="jump">
            <img src="http://127.0.0.1:3000/11.jpg"/>
            <p>种草指南｜你的完美“酒伴”</p>
          </van-swipe-item>
          <van-swipe-item @click.native="jump">
            <img src="http://127.0.0.1:3000/06.jpg"/>
            <p>潮流好物｜惊喜当下最热最in的爆款</p>
          </van-swipe-item>
          <van-swipe-item @click.native="jump">
            <img src="http://127.0.0.1:3000/07.jpg"/>
            <p>尾品特卖｜每周三更新，捡漏到手软！</p>
          </van-swipe-item>
        </van-swipe>
     </div>
     <!--一条产品信息-->
     <div>
       <div class="shelf">
          <h3>优选美酒</h3>
          <div class="desc">本周上架10款精品，10款新品</div>
          <a href="javascript:;" class="more">查看更多</a>
          <ul>
            <li v-for="(p,i) of p1" :key="i">
              <router-link :to="`/DetailP/${p.pid}`"><img :src="`http://127.0.0.1:3000${p.bsimg}`"/></router-link>
            </li>
          </ul>
       </div>
     </div>
     <!--一条产品信息-->
     <div>
       <div class="shelf">
          <h3>好味食品</h3>
          <div class="desc">本周上架10款精品，10款新品</div>
          <a href="javascript:;" class="more">查看更多</a>
          <ul>
            <li v-for="(p,i) of p2" :key="i">
              <router-link :to="`/DetailP/${p.pid}`"><img :src="`http://127.0.0.1:3000${p.bsimg}`"/></router-link>
            </li>
          </ul>
       </div>
     </div>
     <!--一条产品信息-->
     <div class="last">
       <div class="shelf">
          <h3>良品好物</h3>
          <div class="desc">本周上架10款精品，10款新品</div>
          <a href="javascript:;" class="more">查看更多</a>
          <ul>
            <li v-for="(p,i) of p3" :key="i">
              <router-link :to="`/DetailP/${p.pid}`"><img :src="`http://127.0.0.1:3000${p.bsimg}`"/></router-link>
            </li>
          </ul>
       </div>
     </div>
  </div>
</template>
<script>
import funs from "@/assets/js/funs.js"
export default {
  data(){
    return {
      p1:[],
      p2:[],
      p3:[],
      number:1,
      moved:0,
      moved2:0,
      images:[
        "http://127.0.0.1:3000/01.jpg",
        "http://127.0.0.1:3000/05.jpg",
        "http://127.0.0.1:3000/04.jpg",
        "http://127.0.0.1:3000/11.jpg",
        "http://127.0.0.1:3000/06.jpg",
        "http://127.0.0.1:3000/07.jpg"
      ]
    }
  },
  created() {
    this.load();
  },
  methods: {
    jump(){
      this.$router.push("/sale");
    },
    load(){
      funs.getProductd(result=>{
        console.log(result.data);
        this.p1=result.data.slice(0,3);
        this.p2=result.data.slice(3,6);
        this.p3=result.data.slice(6);
        console.log(this.p1);
        console.log(this.p2);
        console.log(this.p3);
      })
    },
    move1(i) {
      this.moved2 += i;
      if(this.moved2<-1){
        this.moved2=-1
      }
    },
    move(){
      if(this.moved>-6){
      this.moved--;
      this.number++;
      }else{
        this.moved=0;
        this.number=1;
      }
      console.log(this.moved);
    }
  },
}
</script>
<style scoped>
.slide-item img{
  width: 100%;
  height: 91px;
}
.slide-box { 
  padding-left:20px;
  margin-top: 20px; 
  margin-right:20px;
  overflow-x: scroll; 
  display: -webkit-box; -webkit-overflow-scrolling: touch; 
  }
.slide-item { 
  width: 162.5px; 
  margin-right: 10px; 
 
  }
.slide-box::-webkit-scrollbar {
  width:0;
  height:0;
  display: none;
  }
.last{
  margin-bottom: 80px;
}
.shelf ul li img{
  width:100%;
  height: 112px;
  cursor: pointer;
}
.shelf ul{
  list-style: none;
  display: flex;
  justify-content: space-between;
  padding-top:20px;
}
.more{
  position: absolute;
    top: 27px;
    right: 0;
    color: #ff3939;
    font-size: 15px;
}
.desc{
  color: #92969c;
  font-size: 12px;
  margin-top: 7px;
}
.shelf h3{
  font-size: 25px;
  font-weight: bolder;
  color: #2c3038;
}
.shelf{
  margin:0 20px;
  padding:20px 0 20px;
  position: relative;
  line-height: 1;
  border-bottom: 1px solid #e0e0e0;
}
.carousel{
  padding-top:20px;
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #ddd;
}
.bord{
  border-bottom: 1px solid #ddd;
}
.carousel p{
  font-size:15px;
  letter-spacing: 2px;
  color: rgba(69,69,69,.99);
  margin-top:8px;
}
.van-swipe{
  height:260px;
  /* margin-right: 10px; */
}
.carousel{
  height:275px;
  margin:0 20px;
  margin-bottom: 10px;
}
.top{
  position: relative;
  padding-bottom:20px; 
}
.title2{
  position: absolute;
  top:25px;
  left:6px;
  color:#fff;
  font-size:20px;
  font-weight: 600;
}
.subtitle2{
  position: absolute;
  top:50px;
  left:6px;
  color:#fff;
  font-size:15px;
}
/* .fffmiddle div img{
  width: 100%;
  height: 91px;
}
.fffmiddle div{
  width: 162.5px;
  margin-right:10px;
}
.fffmiddle{
  margin-top:20px;
  margin-left: 20px;
}
.fffmiddle{
  display: flex;
  overflow: hidden;
  transition:2s;
  list-style: none;
  /* padding-left:12px; 
  width:538px;
  overflow: auto;
  box-sizing: border-box;
} */
.swipe-container ul li a{
  text-decoration: none;
  display: block;
  padding-bottom:20px; 
}
.swipe-container ul li a p{
  overflow: hidden;
}
.swipe-container ul li img{
  margin-bottom: 16px;
}
.swipe-container{
  margin-top:10px;
  /* border-bottom: 1px solid #ddd; */
}
.one{
  color:#ff3939;
  font-size: 11px;
  margin-bottom:5px;
}
.two{
  color:#000;
  font-size: 16px;
  margin-bottom:4px;
  font-weight:1000;
}
 .swipe-container ul{
  list-style: none;
  margin:0;padding:0;
  width:4870px;
  overflow: auto;
  margin-left:20px;
}
.swipe-container ul li{
  position:relative;
  float:left;
  margin-right: 10px;
  width:335px;
  text-decoration: none;
}
.title{
  font-size: 23px;
  font-weight:bolder;
  color: #191919;
}
.queue span{
  font-size:30px;
  font-weight:bolder;
  color: #191919;
}
.subtitle{
 color: #92969c;
 font-size: 12px;
}
.caption{
  width:375rpx;
  position: relative;
  padding:75px 20px 5px;
  text-align: left;
  box-sizing: border-box;
}
.queue{
  position: absolute;
  right:20px;
  top:70px;
  font-size: 11px;
  line-height: 1.6;
  color: #9b9b9b;
}
.container{
  width:100%;
}
img{
  width:100%;
  height:190px;
}
</style>
