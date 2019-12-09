<template>
  <div>
   <!--最上方的搜索框-->
   <form action="/">
      <van-search
        v-model="val1"
        placeholder="请输入搜索关键词"
        show-action
        @search="onSearch"
        @cancel="onCancel"
      />
   </form>
   <!--中间的评论内容-->
   <div class="inner">
          <div class="cell" v-for="(item,i) of commentList" :key="i">
            <div class="oneuser">
              <img :src="item.utoux" />
              <span class="username">{{item.uname}}</span>
            </div>
            <p class="score">菜品质量 {{item.scoreZ.toFixed(1)}} | 就餐环境 {{item.scoreH.toFixed(1)}} | 餐厅服务 {{item.scoreF.toFixed(1)}} </p>
            <!-- <div class="tags clearfix">
               <span class="tag-item">{{item.ctag}}</span> 
               <span class="tag-item">好吃</span> 
            </div> -->
            <p class="pcontent">{{item.comment}}</p>
            <div class="images clearfix" >
              <div v-for="(p,index) of item.picUrl" :key="index">
                  <img :src="baseUrl+p" style="width: 100px; height: 100px;"/>
              </div>  
            </div>
          </div>
        </div>
  </div>
</template>
<script>
import config from "@/assets/js/config.js"
export default{
  data(){
    return {
    val1:'',
    commentList:[],
    baseUrl:config.config.baseUrl
    }
  },
  props:["lid"],
  methods: {
    // a(){
    //   this.baseUrl=a.config.baseUrl
    // },
    onSearch(){
      console.log(`搜索${this.val1}相关内容`);
    },
    onCancel(){
    console.log("已取消搜索");
    },
    load(){
     var url="/findCommentall";
      this.axios.get(url,{
        params:{lid:this.lid}
      }).then(res=>{res
        console.log(res);
        this.commentList=res.data.data;
        for(var i=0;i<res.data.data.length;i++){
        // console.log(res.data.data[i].picUrl);
        // console.log(res.data.data[i].picUrl.split(","));
        // this.commentList.push(res.data.data[i].picUrl.split(","))
        this.commentList[i].picUrl=res.data.data[i].picUrl.split(",")
        }
        // console.log(this.commentList);
      })
      .catch(err=>{
        console.log(err);
      })
    }
  },
  created() {
    this.load()
    // this.a()
  },
}
</script>
<style scoped>
.comm{
  padding:10px 20px;
  text-align: left;
}
.mycomment{
  
  height:60rpx;
  background:#e29494;
  color:#fff;
  font-size: 26rpx;
  margin-top:50rpx;
  border-radius:5px;
  outline: none;
  border:0;
  padding:5px;
}
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
  margin: 10px 20px 0;
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
  margin-right: 10px;
}
.address a{
  color:#63666b;
}
.store .address{
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
.cell{
  margin-bottom: 15px;
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
    font-size: 21px;
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
