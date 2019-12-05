<template>
  <div class="dabao">
    <van-swipe :autoplay="3000">
      <van-swipe-item v-for="(image, index) in images" :key="index">
        <img class="imglb" v-lazy="image" />
      </van-swipe-item>
    </van-swipe>
    <van-goods-action class="dibu">
      <van-goods-action-icon icon="chat-o" text="客服" />
      <van-goods-action-icon icon="cart-o" text="购物车" info="5"  @click="findcart()"/>
      <van-goods-action-icon icon="shop-o" text="店铺" info="12" />
      <van-goods-action-button type="warning" text="加入购物车" @click="addcart" :data-lid="obj.pid" :data-title="obj.title" :data-price="obj.price" :data-subtitle="obj.ftitle" :data-pic="'http://127.0.0.1:3000'+obj.bsimg"/>
      <van-goods-action-button type="danger" text="立即购买" />
    </van-goods-action>
    <div class="a1">
      <div>
        <div>
          <p class="p1">{{obj.title}}</p>
          <p class="p2">{{obj.ftitle}}</p>
          <p class="p3">
            <span>{{obj.price}}元/组</span>
            <span></span>
            <span>|&nbsp;随时退</span>
            <span></span>
          </p>
        </div>
      </div>
    </div>
    <div class="fenjiexian"></div>
    <div class="a2">
      <h3>aaa</h3>
      <div>
        <div>
          <div class="a2_tx">
            <img src="http://localhost:3000/toux.jpg" alt />
            <span class="user1">护旗青年小小橘</span>
          </div>
          <p class="a2_ms">描述相符 5.0 | 物流服务 5.0 | 推荐指数 5.0</p>
          <div class="a2_wupin">
            <span>{{comt.comt}}</span>
          </div>
          <p class="a2_wd">{{comt.comts}}</p>
          <!-- <div class="a2_tx1" v-for="(item,index) in comt" :key="index">
              <img  :src="`http://localhost:3000/${comt[index].ctoux}`" alt  />
              <span class="user1">{{comt[index].cname}}</span>
          </div>-->
          <div v-show="yincang" v-for="(item,index) in comt" :key="index" class="imgswh">
            <img :src="`http://localhost:3000/${comt[index].ctoux}`" alt />
            <span class="user1" style="line-height:30px;">{{comt[index].cname}}</span>

            <p style="margin:20px 0;">{{comt[index].comt}}</p>
            <p class="a2_wd">{{comt[index].comts}}</p>

           

            <van-image 
                v-for="(item,index) in comt[index].zhaopian" :key="index" 
                :src="`http://localhost:3000/${comt[index].zhaopian[index]}`"
            width="100" height="100"  />
          </div>
        </div>
      </div>
    </div>
    <a class="a3" href="javascript:;">
      <span @click="chakan()">查看全部评价</span>
      <span></span>
    </a>
    <div class="fenjiexian"></div>
    <div class="a4">
      <div>
        <h3 class="h333">商品详情</h3>
        <ul>
          <li>
            <span>原产地</span>
            <span>{{obj.place}}</span>
          </li>
          <li>
            <span>酒精度</span>
            <span>{{obj.alcohol}}</span>
          </li>
          <li>
            <span>货品内容</span>
            <span>{{obj.content}}</span>
          </li>
          <li>
            <span>品牌</span>
            <span>{{obj.brand}}</span>
          </li>
          <li>
            <span>生产商</span>
            <span>{{obj.manufacturer}}</span>
          </li>
          <li>
            <span>净含量</span>
            <span>{{obj.nc}}</span>
          </li>
          <li>
            <span>原料与辅料</span>
            <span>{{obj.rm}}</span>
          </li>
          <li>
            <span>保质期</span>
            <span>{{obj.qjp}}</span>
          </li>
          <li>
            <span>包装方式</span>
            <span>{{obj.packing}}</span>
          </li>
          <li>
            <span>储存方式</span>
            <span>{{obj.sm}}</span>
          </li>
        </ul>
      </div>
    </div>
    <div class="a5">
      <div class="a5_1">
        <h3 class="h333">亮点</h3>
        <div class="a5_2">
          <img :src="`http://localhost:3000${obj.bsimg}`" alt />
          <p>{{obj.bstitle}}</p>
          <p>{{obj.bscontent}}</p>
          <img :src="`http://localhost:3000${obj.bsimgs}`" alt />
          <p>{{obj.bstitles}}</p>
          <p>{{obj.bscontents}}</p>
        </div>
      </div>
    </div>
    <div class="a6">
      <div>
        <h3 class="h333">使用提示</h3>
        <div class="a6_1">免运费</div>
        <ul class="a6_ul">
          <li>本产品支持退款；</li>
          <li>快递信息：韵达；</li>
        </ul>
        <p class="a6_li">更多补充说明</p>
        <span></span>
        <div class="a6_6">
          <a href="javascript:;">
            <span></span>联系客服
          </a>
        </div>
      </div>
    </div>
    <div class="fenjiexian"></div>
    <div class="a7">
      <div>
        <h3 class="h333">猜你喜欢</h3>
        <ul class="a7_ul">
          <li v-for="(item,index) in ojb" :key="index">
            <a href="javascript:;"></a>
            <img class="splb" :src="'http://127.0.0.1:3000'+item.bsimg" alt />
            <div class="a7_wei">
              <p class="wei">{{item.title}}</p>
              <p class="wei1">
                <span>{{item.price}}元/套</span>
              </p>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      images: [
        "http://127.0.0.1:3000/lunbo1.jpg",
        "http://127.0.0.1:3000/lunbo2.jpg",
        "http://127.0.0.1:3000/lunbo3.jpg",
        "http://127.0.0.1:3000/lunbo4.jpg",
        "http://127.0.0.1:3000/lunbo5.jpg",
        "http://127.0.0.1:3000/lunbo6.jpg",
        "http://127.0.0.1:3000/lunbo7.jpg",
        "http://127.0.0.1:3000/lunbo8.jpg"
      ],
      obj: {},
      ojb: [],
      comt: {},
      yincang: false,
      userc: {},
      arr1:[]
    };
  },
  props:["pid"],
  methods: {
    addcart(e){//添加购物车
     var lid=e.target.dataset.lid;
     var title=e.target.dataset.title;
     var subtitle=e.target.dataset.subtitle;
     var price=e.target.dataset.price;
     var pic=e.target.dataset.pic;
     //console.log(lid,title,price,spec,pic);
     var url="/addcartP";
     var obj={
       lid,title,subtitle,price,pic
     };
      this.axios.get(url,{
       params:obj
     }).then(res=>{
       console.log(res);
       if(res.data.code==-1){
         this.$toast("请先登录");
         this.$router.push("/login");
       }else if(res.data.code==1){
         this.$toast("添加成功");
       }
     }).catch(err=>{
       console.log(err);
     })
    },
    findcart(){//查看购物车
     this.$router.push("/GerenG");
    },
    //功能 请求单个商品详情数据
     loadMore(){
       var url="productt";
      this.axios.get(url,{
        params:{pid:this.pid}
      }).then(res=>{
        console.log(res.data)
        this.obj=res.data;
        // console.log(obj)
      });
    },
    //功能 请求单个详情 尾部猜你喜欢
    lod() {
      var url = `productd`;
      this.axios.get(url).then(res => {
        // console.log(res.data)
        this.ojb = res.data;
        //console.log(this.ojb)
      });
    },
    //功能  请求 用户评论
    commt() {
      var url = `ey_comment`;
      this.axios.get(url).then(res => {
        // 获取数据库ey_comment表
      //  querystring.parse
        this.comt = res.data;
      //  console.log(res.data)
      console.log(this.comt)
      //  console.log(this.comt[0])
      //  console.log(this.comt[22].zhaopian) 
      //  console.log((this.comt[22].zhaopian[0]).constructor == String)
      //  var str=this.comt[22].zhaopian
      //  var arr=str.split(',')
      //   console.log(arr)
       
      // var str1=[]
        var str
        var arr=[]
        for (var i=0;i<this.comt.length;i++){
         arr.push((str=this.comt[i].zhaopian).split(','))
        // console.log(str)
        }
        console.log(arr)
        // this.arr1=arr
        // console.log(this.arr)
        for(var j=0;j<this.comt.length;j++){
          this.comt[j].zhaopian=arr[j]
        }
        console.log(this.comt[0].zhaopian)
       
      }).catch(err=>{
        console.log(err)
      })
      
    },
    // 隐藏更多的评论
    chakan() {
      this.yincang = !this.yincang;
    },
    // 请求更多评论数据
    usercha() {
      var url = "ey_comuser";
      this.axios.get(url).then(res => {
        this.userc = res.data;
        // console.log(this.userc);
      });
    }
  },

  created() {
    this.loadMore();
    this.lod();
    this.commt();
    this.usercha();
    // this.comimg();
  }
};
</script>

<style scoped>
.van-swipe {
  height: 254px;
}
* {
  margin: 0;
  padding: 0;
}
.a2_wupin1 {
  display: none;
}
.dibu {
  z-index: 100;
}
.a7_wei .wei1 {
  width: 100%;
  color: #f00;
  font-size: 8px;
  margin-top: 10px;
}
.a7_wei .wei {
  width: 100%;
  height: 27px;
  overflow: hidden;
  margin-top: 5px;
  color: #1a1a1a;
  font-size: 10px;
}
.a7_ul li a {
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  -webkit-tap-highlight-color: rgba(254, 254, 254, 0.4);
  z-index: 1;
  width: 100%;
  box-sizing: border-box;
}
.a7_ul li {
  width: 50%;
  box-sizing: border-box;
  position: relative;
  /* overflow:auto; */
  float: left;
  box-sizing: border-box;
  padding: 10px 10px 0 0;
}
.a7_ul {
  /* display:flex; */
  float: left;
  margin-top: 30px;
  box-sizing: border-box;
  padding-bottom: 54px;
}
.a7 {
  margin-bottom: 50px;
}
.splb {
  width: 100%;
}
.a6_6 a {
  display: inline-block;
  margin: 17px auto;
  width: 130px;
  height: 26.5px;
  padding-top: 8.5px;
  border: 1px solid #1a1a1a;
  font-size: 13px;
  color: #2c3038;
}
.a6_6 {
  text-align: center;
}
.a6_li {
  text-align: center;
  color: #4a4a4a;
  font-size: 13px;
  margin: 20px 0 18px;
}
.a6_ul {
  font-size: 20px;
  color: #63666b;
}
.a6_ul li {
  margin-top: 10px;
}
.a6_1 {
  background: url(https://image.ricebook.com/business/18421470013614?imageView2/2/w/40/h/40)
    0px 5px no-repeat;
  background-size: 30px;
  margin-top: 12.5px;
  padding-left: 30px;
  box-sizing: border-box;
  display: inline-block;
  line-height: 40px;
  padding-right: 10px;
  position: relative;
  font-size: 16px;
}
.a5_2 p:nth-child(6) {
  font-size: 14px;
  line-height: 1.6;
  color: #63666b;
  margin: 15px 20px 20px;
  text-align: justify;
}
.a5_2 p:nth-child(3) {
  font-size: 14px;
  line-height: 1.6;
  color: #63666b;
  margin: 15px 20px 20px;
  text-align: justify;
}
.a5_2 p:nth-child(5) {
  font-size: 18px;
  color: #21242a;
  margin: 20px 20px 0;
}
.a5_2 p:nth-child(2) {
  font-size: 18px;
  color: #21242a;
  margin: 20px 20px 0;
}
.a5_2 img {
  width: 100%;
  margin-top: 30px;
}
.a5_1 {
  background-clip: #fff;
  padding: 50px 0;
}
.a4 ul li span:last-child {
  width: 170px;
  color: #63666b;
  font-size: 13px;
  display: inline-block;
  vertical-align: middle;
  line-height: 13px;
  box-sizing: border-box;
}
.a4 ul li span:first-child {
  /* float: left; */
  width: 95px;
  padding-left: 10px;
  margin-right: 25px;
  font-size: 14px;
  font-weight: bolder;
  color: #1a1a1a;
  display: inline-block;
  vertical-align: middle;
  line-height: 36px;
  box-sizing: border-box;
}
.a4 ul li {
  color: #63666b;
  font-size: 13px;
  padding: 18px 0;
}
.a4 ul {
  width: 100%;
  margin-top: 25px;
  display: lnline-block;
}
.h333 {
  /* z-index: -1; */
  position: relative;
  font-size: 16px;
  font-weight: bolder;
  line-height: 1;
  text-align: center;
  color: #2c3038;
  display: block;
  margin-bottom: 24px;
}

.a2 h3 {
  position: relative;
  font-size: 16px;
  font-weight: bolder;
  line-height: 1;
  text-align: center;
  color: #2c3038;
  display: block;
  margin-bottom: 24px;
}
.a4 {
  padding: 25px 15px;
}
.a3 {
  display: block;
  border-bottom: 1px solid #e6e6e6;
  padding: 13px 0 15px;
  margin: 0 20px;
  line-height: 14px;
  font-size: 14px;
  color: #63666b;
}
.a2_wd {
  color: #63666b;
  font-size: 16px;
  line-height: 1.5px;
  margin-bottom: 24px;
}

.a2_wupin {
  margin-bottom: 12px;
  font-size: 24px;
  color: #92969c;
}
.a2_ms {
  font-size: 16px;
  text-align: left;
  color: #92969c;
  margin-bottom: 24px;
}
.a2 .a2_tx .user1 {
  float: left;
  /* display: block; */
  font-size: 12px;
  font-weight: 500;
  line-height: 30px;
  color: #1a1a1a;
  margin-right: 10px;
  display: block;
  margin-left: 10px;
  /* padding-top:17px; */
}
.a2 .a2_tx img {
  /* float: left; */
  display: block;
  float: left;
  width: 30px;
  height: 30px;
  border-radius: 5px;
  border: 1px solid #999;
  margin: 5px;
}
.a2 .a2_tx {
  /* float: left; */
  height: 60px;
  line-height: 60px;
  overflow: hidden;
  margin-bottom: 24px;
}
.a2 .a2_tx {
  /* float: left; */
  height: 60px;
  line-height: 60px;
  overflow: hidden;
  margin-bottom: 24px;
}
.h333::after {
  content: " ";
  position: absolute;
  bottom: -12px;
  left: 50%;
  margin-left: -15px;
  width: 30px;
  border-top: 3px solid #e0e0e0;
  display: block;
  z-index: -1;
}

.a2,
.a6,
.a7 {
  background-color: #fff;
  padding: 25px 15px;
}
.a1 div div .p3 {
  margin-top: 21px;
  font-size: 13px;
  color: #fc3838;
  line-height: 1;
}
.a1 div div .p2 {
  font-size: 15px;
  color: #92969c;
}
.a1 div div .p1 {
  font-size: 21px;
}
.a1 {
  padding: 20px;
}
.imglb {
  width: 100%;
  height: 300px;
  /* margin: 50px 0 0 0; */
}
.fenjiexian {
  width: 100%;
  height: 16px;
  background: #fafafa;
  border-top: 1px solid #e6e6e6;
  border-bottom: 1px solid #e6e6e6;
}
.dabao {
  margin: 0px 0 550px 0;
}

.a2 .a2_tx .user1 {
  float: left;
  /* display: block; */
  font-size: 12px;
  font-weight: 500;
  line-height: 30px;
  color: #1a1a1a;
  margin-right: 10px;
  display: block;
  margin-left: 10px;
  /* padding-top:17px; */
}
.imgswh img {
  width: 30px;
  height: 30px;
  border-radius: 50%;
}
.a2 .a2_tx1 img {
  /* float: left; */
  display: block;
  float: left;
  width: 80px;
  height: 80px;
  border-radius: 5px;
  border: 1px solid #999;
  margin: 5px;
}
.a2 .a2_tx1 {
  /* float: left; */

  line-height: 60px;
  overflow: hidden;
  margin-bottom: 24px;
}
.a2 .a2_tx1 {
  /* float: left; */
  /* height: 60px; */
  line-height: 60px;
  overflow: hidden;
  margin-bottom: 24px;
}
.imgswh .pldv .plimg {
  width: 100px;
  height: 100px;
}
</style>