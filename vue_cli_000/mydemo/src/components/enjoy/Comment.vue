<template>
  <div>
    <h2>评论</h2>
    <!-- 评论输入框 -->
    <!-- <input max="10" placeholder="请输入您的评论..." type="text" name="aaa"  > -->
    <div class="a1">
      <div class="a1_1">
      <p>菜品质量：<van-rate v-model="val1" /></p>
      <p>就餐环境：<van-rate v-model="val2" /></p>
      <p>餐厅服务：<van-rate v-model="val3" /></p>
      </div>
      <textarea
        placeholder="请输入您的评论..."
        name="msg"
        cols="20"
        rows="5"
        maxlength="80"
        v-model="commentInput"
      ></textarea>
    </div>
    <!-- 图片上传预览区 -->
    <!-- v-for="(item,index) in fileList" :key="index" -->
    <van-uploader v-model="fileList" multiple :max-count="9" class="imgwh" />
    <!-- <p>默认好评待开发...</p> -->
    <!-- btn按钮 -->
    <div class="btntextin">
      <mt-button @click="add()" type="default">上传图片</mt-button>
      <mt-button @click="adds()" type="default">提交评论</mt-button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      fileList: [],
      commentInput: "",
      val1:5,
      val2:5,
      val3:5
    };
  },

  methods: {
    // 上传图片功能
    add() {},
    //评论功能
    adds() {
      //  获取照片名称
      // new Promise((resolve,reject)=>{})

      var file = this.fileList;
      // 创建一个数组 来保存照片名称
      var fils = [];
      for (var f = 0; f < file.length; f++) {
        fils[f] = file[f].file.name;
      }
      console.log(fils);
      //  var imgUl=fils.
      //请求接口
      var url = "ey_comments";
      // 获取用户输入的评价内容
      var commentInput = this.commentInput;
      var val1=this.val1
      var val2=this.val2
      var val3=this.val3
      // 发送数据给服务器
      var obj = `str=${commentInput}&fils=${fils}&val1=${val1}&val2=${val2}&val3=${val3}`;
      this.axios
        .post(url, obj)
        .then(res => {
          if (res.data.code == -1) {
            alert(res.data.msg);
          }
          //  console.log(res);
          //  如果服务器返回结果是1那么就是评论成功了
          if (res.data.code == 1) {
            location.reload();
            alert(res.data.msg);
          }
        })
        .catch(err => {
          console.log(err);
        });
      //  this.$router.go(0)
      // location.reload()
    }
  },

  beforeCreate() {},
  // 1.创建阶段前后俩函数↑↓
  created() {
    //创建阶段后 重要
    // var url="ey_comments"
    // axios.get(url).then(res=>{
    //     console.log(res)
    // }).catch(err=>{
    // })
  },
  beforeMount() {
    //挂在DOM树前
  },
  //2.挂在前后俩函数

  mounted() {
    //挂在DOM树后 既有Data对象，又有虚拟DOM树，即可发送ajax请求，有课执行DOM操作 重要
  },
  beforeUpdate() {},
  // 3.更新阶段
  updated() {},
  beforeDestroy() {},
  // 4.卸载或销毁阶段
  destroyed() {}
};
</script>





<style scoped>
h2 {
  text-align: center;
  margin: 30px 30px;
}
.btntextin {
  text-align: center;
}
.btntextin button {
  width: 45%;
}
.imgwh {
  box-sizing: border-box;
  width: 100%;
  flex-wrap: wrap;
  padding: 8px;
  justify-content: space-around;
}
.imgwh .imgwh_1 {
  box-sizing: border-box;
  width: 33%;
  /* margin-right:1%; */
}
button {
  background-color: #000;
  color: #fff;
  margin-top: 20px;
}

#test-image-preview {
  border: 1px solid #ccc;
  width: 100%;
  height: 200px;
  background-size: contain;
  background-repeat: no-repeat;
  background-position: center center;
}
.van-uploader__upload {
  width: 32%;
}
.a1 {
  margin: 0 auto;
  width: 100%;
  box-sizing: border-box;
  padding: 20px;
  text-align: center;
}
textarea {
  width: 100%;
  height: 100px;
  /* text-align: center; */
  margin: 0 auto;
  border: 1px solid #999;
}
.a1 .a1_1 {
  float:left;
  margin-bottom:20px
}
</style>

