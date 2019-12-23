<template>
  <div style="background-color: #f6f6f6;">
    <div class="GerenG1">
      <img src="../../../static/gerenG3.png" alt>
      <span>我的购物车</span>
      <span class="GerenG2" @click="delm">清空购物车</span>
      <div></div>
    </div>

    <div class="G-F" v-for="(item,i) of list" :key="i" @click="check">
      <div style="margin:auto">
        <van-checkbox v-model="item.cb" @change="itemchange"></van-checkbox>
      </div>
      <div class="G-F1" @click="check">
        <div class="G-F2">
          <img :src="item.pic" alt>
          <div class="G-F3">
            <div style="font-size:12px;color:#323233;margin-bottom:3px;">{{item.title}}</div>
            <div style="font-size:12px;color:#323233;margin-bottom:3px;">{{item.subtitle}}</div>
            <div style="font-size:12px;color:#ee0a24;margin-bottom:3px;">¥{{item.price}}</div>
            <van-stepper
              class="a1"
              v-model="item.count"
              input-width="25px"
              button-size="20px"
              min="1"
              max="5"
            />
          </div>
        </div>
        <div style="margin:auto 0">
          <van-button :data-id="item.id" round type="danger" size="mini" @click="del">删除</van-button>
        </div>
      </div>
    </div>
    <div style="width:100%;height:1px;"></div>
    <div>
      <van-tabbar v-model="active" class="G-T">
        <div class="G-T1">
          <van-button style="margin-right:20px;" round type="danger" size="small" @click="delm">删除选中</van-button>
          <input class="G-T2" type="checkbox" @change="selectAll" v-model="allcb">
          <div>全选</div>
        </div>
        <div>
          <span>
            合计:
            <span style="color:#ee0a24">¥{{total.toFixed(2)}}</span>
          </span>
          <van-button round type="danger" size="small">结算</van-button>
        </div>
      </van-tabbar>
    </div>
    <tabbar></tabbar>
  </div>
</template>
<script>
import Tabbar from "./Tabbar.vue";
export default {
  data() {
    return {
      active: 0,
      value: 1,
      allcb: false,
      list: []
    };
  },
  components: {
    tabbar: Tabbar
  },
  computed: {
    total(){
      var sum=0;
     for(var p of this.list){
        sum+=p.price*p.count;
      }
      return sum;
    }
  },
  created() {
    this.loadMore();
  },
  methods: {
    check() {
      if (
        event.target.nodeName !== "BUTTON" &&
        event.target.nodeName !== "INPUT"
      ) {
      }
    },
    itemchange() {
      //功能:商品复选框状态修改
      //1:累加商品状态
      //2:创建变量
      var sum = 0;
      //3:创建循环遍历商品状态
      for (var item of this.list) {
        if (item.cb) {
          sum++;
        }
      }
      //console.log(sum);
      //console.log(this.list.length)
      //4:如果true变量数据加一
      //5:如果选中数量与数组相同，将
      //  全选allcb=true
      if (sum == this.list.length) {
        this.allcb = true;
      } else {
        this.allcb = false;
      }
    },
    delm() {
      //1:显示交互提示框，请用户再次确认
      //  是否删除指定商品
      this.$messagebox
        .confirm("是否删除指定商品")
        .then(res => {
          //2:选择确认
          //3:创建空字符串 "1,2,3"
          var str = "";
          //4:创建循环遍历list数组
          //  判断如果当前对象cb值为true
          //  将对象id拼接
          for (var item of this.list) {
            if (item.cb) {
              str += item.id + ",";
            }
          }
          //5:判断用户是否选中商品
          //  提示请选择要删除商品
          if (str.length == 0) {
            this.$messagebox("请选择要删除商品");
            return;
          }
          //0            启始下标 8,9,
          //str.length-1 保存几个字符串
          str = str.substring(0, str.length - 1);
          console.log(str); //!!!!!!
          //6:创建url创建obj 10:28
          var url = "delm";
          var obj = { id: str };
          //7:发送ajax请求
          this.axios.get(url, { params: obj }).then(res => {
            //console.log(res)
            //8:再新加载购物列表
            this.loadMore();
            //9:提示删除成功
            this.$toast("删除成功");
          });
        })
        .catch(err => {});
    },
    selectAll(event) {
      //1:添加参数event
      //2:获取当前全选按钮状态
      var all = event.target.checked;
      //3:赋值所有商品cb
      for (var item of this.list) {
        item.cb = all;
      }
    },
    del(event) {
      //1:为删除按钮添加自定义属性//data-id 保存当前购物车商品id
      //2:添加点击事件click del
      //2.1:交互提示:是否删除商品
      this.$messagebox
        .confirm("是否删除指定商品")
        .then(res => {
          //回调函数 3~8
          //3:获取当前商品id
          var id = event.target.dataset.id;
          //4:输出id
          console.log(id);
          //5:发送ajax请求
          var url = "del";
          var obj = { id };
          this.axios.get(url, { params: obj }).then(res => {
            //6:获取服务器端返回数据
            if (res.data.code == 2) {
              this.$router.push("/Login");
            } else if (res.data.code == -1) {
              this.$toast("删除失败");
            } else {
              this.$toast("删除成功");
            }
            this.loadMore();
          });
          //7:提示删除成功 17:17
          //8:重新调用 loadMore
        })
        .catch(err => {
          //取消
        });
    },
    loadMore() {
      //1:创建url
      var url = "findcart";
      //2:发送ajax请求获取购物车
      this.axios.get(url).then(res => {
        console.log(res.data);
        if (res.data.code == -1) {
          //提示交互提示框
          this.$messagebox("消息", "请登录").then(res => {
            //跳转登录组件
            this.$router.push("/Login");
          });
        } else {
          //(1)为每个商品添加状态
          //res变量data属性data数组
          var list = res.data.data;
          for (var item of list) {
            item.cb = false;
          }
          //(2)赋值
          this.list = list;
          // //(2.9)加载之前先清空
          // this.$store.commit("clearCart");
          // //(3)创建循环遍历数组
          // for (var item of this.list) {
          //   //(4)修改购物车数量
          //   this.$store.commit("addCart");
          // }
        }
      });
      //3:将服务器返回数据保存list
    }
  }
};
</script>
<style scoped>
.GerenG1 {
  width: 100%;
  height: 40px;
  background-color: #ee0a24;
  line-height: 42px;
  text-indent: 45px;
  color: #fff;
}
.GerenG1 > img {
  position: absolute;
  top: 4px;
  left: 4px;
}
.GerenG2 {
  font-size: 15px;
  position: absolute;
  top: 0px;
  right: 0px;
}
.G-F {
  width: 100%;
  display: flex;
  background-color: #fff;
  border: 1px solid #fff;
  margin-top: 10px;
  margin-bottom: 9px;
  box-sizing: border-box;
  padding-left: 5px;
  padding-right: 5px;
}
.G-F1 {
  width: 100%;
  display: flex;
  justify-content: space-between;
}

.G-F2 {
  width: 100%;
  display: flex;
  margin: auto;
}
.G-F2 img {
  width: 90px;
  height: 90px;
  margin-left:8px;
  margin-top:8px;
  margin-bottom:5px;
}
.G-F3 {
  margin: auto 10px;
  box-sizing: border-box;
  padding-top: 5px;
}
.G-T {
  margin-bottom: 51px;
  display: flex;
  justify-content: space-between;
  line-height: 50px;
  box-sizing: border-box;
  padding-left: 5px;
  padding-right: 5px;
  background-color: #fff;
}
.G-T1 {
  margin: auto 0;
  display: flex;
  line-height: 31px;
  text-indent: 7px;
}
.G-T2 {
  width: 20px;
  height: 20px;
  margin-top: 7px;
}
</style>
