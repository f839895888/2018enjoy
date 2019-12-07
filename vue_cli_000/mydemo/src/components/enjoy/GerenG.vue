<template>
  <div style="background-color: #f6f6f6;">
    <div class="GerenG1">
      <img src="../../../static/gerenG3.png" alt>
      <span>我的购物车</span>
      <span class="GerenG2">清空购物车</span>
    </div>

    <div class="G-F">
      <div style="margin:auto">
        <van-checkbox v-model="checked"></van-checkbox>
      </div>
      <div class="G-F1" @click="check">
        <div class="G-F2">
          <img
            src="https://img.yzcdn.cn/public_files/2017/10/24/2f9a36046449dafb8608e99990b3c205.jpeg"
            alt
          >
          <div class="G-F3">
            <div style="font-size:12px;color:#323233;margin-bottom:3px;">进口香蕉</div>
            <div style="font-size:12px;color:#323233;margin-bottom:3px;">约250g，2根</div>
            <div style="font-size:12px;color:#ee0a24;margin-bottom:3px;">¥333</div>
            <van-stepper
              class="a1"
              v-model="value"
              input-width="25px"
              button-size="20px"
              min="1"
              max="5"
            />
          </div>
        </div>
        <div style="margin:auto 0">
          <van-button round type="danger" size="mini">删除</van-button>
        </div>
      </div>
    </div>
    <div style="width:100%;height:1px;"></div>
    <div>
      <van-tabbar v-model="active" class="G-T">
        <div style="margin:auto 0">
          <van-checkbox v-model="allcb">全选</van-checkbox>
        </div>
        <div>
          <span>
            合计:
            <span style="color:#ee0a24">¥ 0</span>
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
      checked: false,
      active: 0,
      value: 1,
      allcb: false,
      list: []
    };
  },
  components: {
    tabbar: Tabbar
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
        this.checked = !this.checked;
      }
    },
    loadMore(){
      //1:创建url
      var url = "findcart"
      //2:发送ajax请求获取购物车
      this.axios.get(url).then(res=>{
        console.log(res.data)
      })
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
</style>
