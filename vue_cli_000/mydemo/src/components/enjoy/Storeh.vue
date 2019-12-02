<template>
  <div class="sparent"><!--唯一父元素-->
       <!--1.导航条-->
       <table></table>
       <Header></Header>
       <!--2.大图片-->
       <div class="pictxt">
          <img src="http://127.0.0.1:3000/store1.jpg" />
          <div class="txt">
             <h2>-日本料理-</h2>
             <span>10个精品，2个新品</span>
          </div>
       </div>
       <!--3.灰色背景-->
      <div>
        <div class="nav">
           <a href="javascript:;" class="active">精品店</a>
           <a href="javascript:;">新品店</a>
        </div>
      </div>
       <!--4.一条店铺信息-->
       <div class="list">
          <div class="sku" v-for="(item,i) of list" :key="i">
                <div class="detail">
                    <router-link :to="`/detail/${item.id}`" class="title single-line-ellipsis">{{item.title}}</router-link>
                    <p class="desc single-line-ellipsis">{{item.subtitle}}</p>
                    <div class="pprice">
                      <span class="num">{{item.price}}</span>
                      <span class="wei">元/位</span>
                      <span class="original">{{item.dprice}}</span>
                    </div>
                </div>
                <a href="javascript:;" class="images"><img :src="item.pic" /></a>
          </div>
       </div>
       <div class="bar">
           <div class="taps" style="color: rgb(50, 87, 130); background-color: rgb(246, 250, 255);">
              <span>城中招牌店</span>
           </div>
       </div>
  </div>
</template>
<script>
import header from "../enjoy/header.vue"
export default {
    data(){
        return {
        list:[]
        }
    },
    props:["fid"],
    methods:{

      loadMore(){
        var url="/store";
        this.axios.get(url,{
          params:{
            fid:this.fid
          }
        }).then(res=>{
           console.log(res.data);
           this.list=res.data;
        })
        .catch(err=>{
           console.log(err);
        })
      }
    },
  created(){
  this.loadMore();
  },
  watch:{
    fid(){
    this.loadMore();
    }
  },
components:{
    "Header":header  //头部
    
   }

}
</script>

<style scoped>
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
.bar{
  padding: 0 15px 15px;
  border-top:1px solid #e6e6e6;
}
.original{
  display: inline-block;
    margin-left: 6px;
    vertical-align: middle;
    text-decoration: line-through;
    color: #92969c;
    font-size:15px;
}
.wei{
  font-size:12px;
  color: #ff3939;
}
.num{
  font-size:20px;
  line-height: .7;
  color: #ff3939;
}
.desc{
    margin-bottom:10px;
    font-size: 13px;
    color: #92969c;
}
.title{
  display: block;
  width:100%;
  height:20px;
  line-height: 20px;
  font-size: 15px;
  color: #2c3038;
  margin-bottom: 8px;
  margin-top:3px;
}
.single-line-ellipsis{
overflow: hidden;
text-overflow: ellipsis;
white-space: nowrap;
}
.images img{
  width:100%;
}
.images{
  display: block;
  width: 110px;
  height: 75px;
}
.detail{
    width: 215px;
    margin-right: 15px;
}
.sku{
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 15px;
  background-color: #f6f6f6;
  margin-bottom: 10px;
}

.nav .active{
  color: #2c3038;
  border-bottom: 3px solid #1a1a1a;
}
.nav a{
  display: inline-block;
  font-size: 14px;
  color: #838383;
  margin: 6px 40px 5px 0;
  padding-bottom: 5px;
}
.nav{
    height: 40px;
    padding-left: 30px;
    border-bottom: 1px solid #e6e6e6;
    font-size: 16px;
}
.pictxt span{
  display: block;
  margin-top: 8px;
  font-size: 15px;
  color: #fff;
}
.pictxt h2{
    margin-top: 40px;
    font-size: 22px;
    color: #fff;
}
.pictxt{
  margin-top:54px;
  height: 140px;
  position: relative;
}
.pictxt img{
  width:100%;
  height:140px;
  position: absolute;
  top:0;left: 0;
}
.pictxt .txt{
  width:100%;
  text-align: center;
  margin: 0 auto;
  height:140px;
  position: absolute;
  top:0;left: 0;
  z-index: 10;
  background: rgba(44,48,56,0.8)
}
.sparent{
  background:#f6f6f6;
}
</style>

