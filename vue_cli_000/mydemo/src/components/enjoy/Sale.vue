<template>
  <div class="">
    <div class="top">
      <img :src="baseUrl+'sale.jpg'" >
    </div>
    <pre class="m-text">
  ENJOY「尾品特卖」
  限时！低价！超值！
  捡漏捡到手软，买到就是赚到！
  每周三零点更新，火爆开抢啦～</pre>
    <div class="sku-title">
      <p>超值尾品清仓</p>
      <div class="line"></div>
    </div>
    <!--1.一条商品信息-->
    <div>
      <div class="prod">
        <a href="javascript:;">
          <div class="product-image">
            <img :src="baseUrl+'sale1.jpg'" />
            <div class="tag">限时闪购</div>
            <div class="black"></div>
          </div>
          <div class="info">
            <div class="price">
              <div class="unit">¥</div>
              <div class="money">14.9</div>
            </div>
            <div class="amount">限量
              <em>100</em>
              份</div>
          </div>
        </a>
      </div>
      <div class="pdetail">
          <p class="p1">BURTS 啵尔滋/健力士 薯片 多口味可选</p>
          <p class="p2">原切厚片咔嚓脆</p> 
          <button class="mybtn">立即购买</button>
      </div>
      <div class="border-line">
      </div>
    </div>
    <!--2.一条商品信息-->
    <div>
      <div class="prod">
        <a href="javascript:;">
          <div class="product-image">
            <img src="http://127.0.0.1:3000/sale2.jpg" />
            <div class="tag">限时闪购</div>
            <div class="black"></div>
          </div>
          <div class="info">
            <div class="price">
              <div class="unit">¥</div>
              <div class="money">14.9</div>
            </div>
            <div class="amount">限量
              <em>50</em>
              份</div>
          </div>
        </a>
      </div>
      <div class="pdetail">
          <p class="p1">佰思宜 RDISEZO 町田手作水果味牛乳布丁果冻2连杯 多口味可选</p>
          <p class="p2">冷烤双味精致美味</p> 
          <button class="mybtn">立即购买</button>
      </div>
      <div class="border-line">
      </div>
    </div>
    <!--3.一条商品信息-->
    <div>
      <div class="prod">
        <a href="javascript:;">
          <div class="product-image">
            <img src="http://127.0.0.1:3000/sale3.jpg" />
            <div class="tag">限时闪购</div>
            <div class="black"></div>
          </div>
          <div class="info">
            <div class="price">
              <div class="unit">¥</div>
              <div class="money">9.9</div>
            </div>
            <div class="amount">限量
              <em>25</em>
              份</div>
          </div>
        </a>
      </div>
      <div class="pdetail">
          <p class="p1">韩国 客唻美 即食海鲜蟹味棒奶酪鳕鱼饼 多口味可选</p>
          <p class="p2">肉嫩鲜香醇香味美</p> 
          <button class="mybtn">立即购买</button>
      </div>
      <div class="border-line">
      </div>
    </div>
    <!--4.一条商品信息-->
    <div>
      <div class="prod">
        <a href="javascript:;">
          <div class="product-image">
            <img src="http://127.0.0.1:3000/sale4.jpg" />
            <div class="tag">限时闪购</div>
            <div class="black"></div>
          </div>
          <div class="info">
            <div class="price">
              <div class="unit">¥</div>
              <div class="money">9.9</div>
            </div>
            <div class="amount">限量
              <em>100</em>
              份</div>
          </div>
        </a>
      </div>
      <div class="pdetail">
          <p class="p1">LIRAY粮悦 大吃兄手工特产办公休闲零食小吃系列 多口味可选</p>
          <p class="p2">鲜香酥脆百万吃货力荐</p> 
          <button class="mybtn">立即购买</button>
      </div>
      <div class="border-line">
      </div>
    </div>
    <!--5.一条商品信息-->
    <div>
      <div class="prod">
        <a href="javascript:;">
          <div class="product-image">
            <img src="http://127.0.0.1:3000/sale5.jpg" />
            <div class="tag">限时闪购</div>
            <div class="black"></div>
          </div>
          <div class="info">
            <div class="price">
              <div class="unit">¥</div>
              <div class="money">9.9</div>
            </div>
            <div class="amount">限量
              <em>100</em>
              份</div>
          </div>
        </a>
      </div>
      <div class="pdetail">
          <p class="p1">麻戏团 山药麻花 多口味可选</p>
          <p class="p2">酥脆可口补充能量小能手</p> 
          <button class="mybtn">立即购买</button>
      </div>
      <div class="border-line">
      </div>
    </div>
  </div>
</template>
<script>
import config from "@/assets/js/config.js"
export default {
  data(){
    return {
       baseUrl:config.config.baseUrl
    }
  },
  methods: {
     
  },
  created() {
     
  }, 
}
</script>
<style scoped>
.border-line{
  margin:20px auto 20px;
    height: 1px;
    width: 335px;
    background-color: #e0e0e0;
}
.p1{
    font-size: 15px;
    font-weight: 500;
    line-height: 1.5;
    color: #1a1a1a;
    margin-top: 0px;
    margin-bottom: 6px;
}
.p2{
    line-height: 1.33;
    color: #9b9a9b;
    margin-bottom: 6px;
    font-size: 12px;
}
.mybtn{
    width: 109px;
    height: 30px;
    line-height: 30px;
    border-radius: 4px;
    background-color: #ff3939;
    outline: none;
    border:0;
    color: #fff;
    font-size: 12px;
    text-align: center;
    margin: 6px auto 0;
}
.pdetail{
  width:335px;
  padding: 0px 20px;
  position: relative; 
  text-align: center;
}
.money{
height: 30px;
    font-size: 30.4px;
    margin-left: 5px;
    font-family: SFUIText;
    font-weight: 600;
    line-height: 1.0;
    text-align: left;
    color: #ffffff;
}
.unit{
  height:20px;
  font-family: SFUIText;
    font-size: 20px;
    font-weight: 600;
    line-height: 1.0;
    text-align: left;
    color: #ffffff;
}
.amount{
    font-size: 12px;
    height: 12px;
    line-height: 1;
    text-align: center;
    color: #ffffff;
    border-left: 1px solid #fff;
    margin-right: 15px;
    padding-left: 15px;
}
.price{
  margin-left: 15px;
  display: flex;
}
.info{
  position: absolute;
    bottom: 15px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 335px;
    height: 50px;
    background-color: rgba(0, 0, 0, 0.8);
}
.tag{
    position: absolute;
    left: 30px;
    top: 25px;
    width: 71px;
    height: 22px;
    line-height: 22px;
    background-color: #ffe401;
    font-family: PingFangSC;
    font-size:12px;
    font-weight: 500;
    letter-spacing: 2px;
    text-align: center;
    color: #000000;
}
.prod img{
  width:335px;
}
.prod{
  width:335px;
  padding: 15px 20px;
  position: relative; 

}
.prod a{
  display: block;
  width: 375px;
  height: 100%;
}
.sku-title{
    width: 335px;
    margin: 15px 20px;
}
.sku-title p{
  font-size: 21px;
    font-weight: 500;
    line-height: 1.0;
    margin: 0 auto 10px;
    text-align: center;
    color: #2c3038;
}
.line{
    width: 30px;
    height: 2px;
    margin: 0 auto;
    background-image: linear-gradient(to right, #ff4e00, rgba(255, 102, 0, 0.97) 52%, #ffcc00);
}
.m-text{
    font-size: 16px;
    line-height: 1.75;
    text-align: justify;
    color: #545556;
    font-family: PingFangSC;
    white-space: pre-wrap;
    width: 335px;
    margin: 15px 20px;
}
.top img{
  width: 375px;
  height: 375px;
}

</style>  