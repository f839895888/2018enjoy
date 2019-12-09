import axios from "axios"
export default {
  //一条数据请求(获取商品数据)
  getProductd(callback){
    axios
    .get("/productd")
    .then(callback).catch(err=>{console.log(err)})
  },
  //一条数据请求
  // getDetails(lid,callback){ 
  //   axios
  //   .get(
  //     "/details",
  //     {
  //       params:{lid}
  //     }
  //   ).then(callback).catch(err=>{console.log(err)})
  // },
  //一条数据请求
  // getProducts(callback,kw){
  //   axios
  //   .get("/products",{
  //     params:{kw}
  //   }
  // ).then(callback).catch(err=>{console.log(err)})
  // },
  //一条数据请求
}