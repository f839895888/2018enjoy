<template>
  <div>
    <p>验证页面</p>
    <div class="container">
	  <span id="txt">{{city}}</span>
		<span class="imag"></span>
	</div>
	<div>
	  <ul id="d1" @click="a">
	  	<li><router-link to="">北京</router-link></li>
	  	<li><a href="javascript:;">上海</a></li>
	  	<li><a href="javascript:;">天津</a></li>
	  	<li><a href="javascript:;">沈阳</a></li>
	  	<li><a href="javascript:;">石家庄</a></li>
	  </ul>			
	</div>
  </div>
</template>
<script>
export default {
  data(){
    return {
     city:""
    }
  },
  methods: {
    a(e){
      if(e.target.nodeName=="A"){
        this.city=e.target.innerHTML;
      }
    }
  },
  created() {
    
  },
}
</script>
<style scoped>
ul{
		display:flex;
		justify-content:space-between;
		flex-wrap:wrap;
		width:280px;
		list-style:none;
		text-align:center;
		}
	  ul li{
		  display:block;
			height:40px;
			line-height:40px;
			width:120px;
			border:1px solid #fff;
			background-color:yellow;
			margin:5px 10px;
		}
</style>  
