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
   <!--最下方的购买加购组件-->
  </div>
</template>
<script>
export default {
  data(){
    return {
    val1:''
    }
  },
  methods: {
    onSearch(){
      console.log(`搜索${this.val1}相关内容`);
    },
    onCancel(){
    console.log("已取消搜索");
    }
  },
}
</script>
<style scoped>

</style>
