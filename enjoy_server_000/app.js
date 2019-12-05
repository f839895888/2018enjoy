//vue_server_000/app.js
//功能：服务器端程序
//1:下载四个模块
//  express   web服务器
//  mysql    mysql驱动
//  cors    处理跨域
//  express-session 会话session对象
//2:vue_server_000/进入命令行
//  npm i mysql express express-session cors
//3:加载四个第三方模块
// const fs =require('fs')
const express = require("express");
// const multer= require('multer')
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
const bodyParser = require("body-parser");
//4:配置数据库连接池:基本效率高保证
var pool = mysql.createPool({
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "ey",
  port: 3306,
  connectionLimit: 20
})
//5:创建web服务器
var server = express();
//6:配置跨域  允许程序列表
//  http://127.0.0.1:8080
//  http://localhost:8080
server.use(cors({
  origin: ["http://127.0.0.1:8080", "http://localhost:8080"],
  credentials: true  //每次请求验证
}))
//7:配置session环境
server.use(session({
  secret: "128位安全字符串",
  resave: true,         //请求更新数据 
  saveUninitialized: true//保存初始数据
}));
//8:配置静态目录 pubic
//8.1:创建public
server.use(express.static("public"))
//9:启动监听端口  3000
server.listen(3000);
// 
server.use(bodyParser.urlencoded({ extended: true }));
server.use(bodyParser.json())


//功能：用户注册接口
//1.注册路由
server.post('/reg', function (req, res) {
  //1.1获取数据
  var uname = req.body.uname;
  var upwd = req.body.upwd;
  var phone = req.body.phone;
  var email = req.body.email;
  // console.log(obj);
  //1.3要执行sql语句
  pool.query('select * from ey_user where uname= ?', [uname], (err, result) => {
    if (err) throw err;
    //查询用户名是否被注册过
    if (result.length == 0) {
      var sql = `insert into ey_user values(null,?,?,?,?)`;
      pool.query(sql, [uname, upwd, email, phone], (err, result) => {
        if (err) throw err;
        res.send({ code: 1, msg: "注册成功" })
      })
    } else {
      res.send({ code: -1, msg: "用户名已注册" })
    }

  });
});
// 根据用户名称查询是否可以注册get
// server.get("/checkuname/:uname",(req,res)=>{
//   var $uname = req.params.uname;
//   var sql = "select * from ey_user where uname=? ";
//   pool.query(sql,[$uname],(err,result)=>{
//     if(err) throw err;
//     if(result.length>0){
//       res.send("1")
//     }else{
//       res.send("0")
//     }
//   })
// })



//功能一:用户登录
server.get("/login", (req, res) => {
  //1:获取参数uname/upwd
  //脚手架传数 
  // http://127.0.0.1:3000?uname=tom&upwd=123 
  var uname = req.query.uname;
  var upwd = req.query.upwd;
  //  console.log(1+":"+uname+":"+upwd);
  //2:创建sql语句
  var sql = "SELECT id FROM ey_user WHERE uname = ? AND upwd = ?";
  //3:执行sql语句
  pool.query(sql, [uname, upwd], (err, result) => {
    //err 严重错误，程序停止
    if (err) throw err;
    //4:判断执行是否成功
    if (result.length == 0) {
      res.send({ code: -1, msg: "aa用户名或密码有误" });
    } else {
      //4.1:登录成功后将
      //    登录凭证id保存session对象
      //4.2:获取当前登录用户id
      //result[{id:3}]
      var uid = result[0].id;
      //ff登录成功后 把uname保存到session对象里
      //4.3:将用户id/uname保存session对象
      //!!!!!!!!!!!!!!!!!!!
      req.session.uid = uid;
      req.session.uname=uname;
      console.log(req.session);
      res.send({ code: 1, msg: "登录成功" });
    }
    //5:将结果发送脚手架  
  })
})

server.get("/product", (req, res) => {
  //2:获取(脚手架发来)数据 pno pageSize
  var pno = req.query.pno;
  var ps = req.query.pageSize;
  //3:设置数据默认值
  if (!pno) { pno = 1 }
  if (!ps) { ps = 150 }
  //4:创建变量offset计算数据库第一参数
  var offset = (pno - 1) * ps;
  //5:给pageSize造型整型
  ps = parseInt(ps);
  //6:创建sql1 查询当前页内容
  var sql1 = "SELECT ppublic,title,ftitle FROM ey_index_hotel LIMIT ?,?";
  //7:发送sql1语句
  pool.query(sql1, [offset, ps],
    (err, result) => {
      //查询成功回调函数 sql1
      if (err) throw err;
      //查询结果
      var data = result;
      //console.log(result);
      //8:在执行成功回调函数中创建第二条 
      var sql2 = "SELECT count(pid) as c FROM ey_index_hotel";
      //9:查询记录总数
      pool.query(sql2, (err, result) => {
        if (err) throw err;
        var pageCount = Math.ceil(result[0].c / ps);
        res.send(
          {
            code: 1,   //查询编码
            msg: "查询成功",//原因
            rows: data, //当前页内容
            pageCount: pageCount//总页
          })
      })
      //10:将所有查询结果封装成
    })
})


// 商品详情接口
server.get("/productt", (req, res) => {
  var pid = req.query.pid;
  // var pro={};
  if (pid !== undefined) {
    var sql1 = `select * from ey_product where pid=?`;
    pool.query(sql1, [pid], (err, result) => {
      if (err) throw err;
      res.send(result[0]);
    })
  }else{
    res.send({code:-1,msg:"无商品编号"});
  } 
})

//  商品列表页面 猜你喜欢接口
 server.get("/productd",(req,res)=>{
  
//  商品显详情页 猜你喜欢接口
server.get("/productd", (req, res) => {

  // var pro={};
  var sql1 = `select * from ey_product`;
  pool.query(sql1, (err, result) => {
    if (err) throw err;
    res.send(result);
  })
})



//  判断是否登录
// 1.get  /checkLogin
server.get("/checkLogin", (req, res) => {
  // 获取当前登录用户uid
  var uid = req.session.uid;
  if (!uid) {
    res.send({ code: -1, msg: "请登录" });
    return;
  }
})

//功能：查询餐厅列表信息
server.get("/store",(req,res)=>{
  var fid=req.query.fid;
  var isNew=req.query.isNew||0;
   var sql=`SELECT * FROM ey_store WHERE family_sid=? AND isNew=?`;
   pool.query(sql,[fid,isNew],(err,result)=>{
    if(err)throw err;
server.get("/store", (req, res) => {
  var fid = req.query.fid;
  var sql = `SELECT * FROM ey_store WHERE family_sid=?`;
  pool.query(sql, [fid], (err, result) => {
    if (err) throw err;
    res.send(result);
  })
})
// 功能 查询评价内容
server.get("/ey_comment", (req, res) => {

  var sql = `SELECT * FROM ey_comment`;
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
    console.log(result)
  })
})


// 评论功能 测试
server.post("/ey_comments", (req, res) => {
  //判断是否登录
  var uid = req.session.uid;
  var cname=req.session.uname;
  if (!uid) {
    res.send({ code: -1, msg: "请登录" });
    return;
  }
  // 获取客户上传的照片名称和评论内容
  var msg = req.body.str
  var fils = req.body.fils
  //执行sql语句 插入以上内容
  var sql = `INSERT INTO ey_comment(comt,zhaopian,cname) VALUES(?,?,?)`
  pool.query(sql, [msg, fils,cname], (err, result) => {
    if (err) throw err;
    res.send({ code: 1, msg: "评论成功" })
  })

})

// 获取用户信息

server.get("/ey_comuser", (req, res) => {
  var sql = `SELECT * FROM ey_user`;
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  })
})


//获取用户评论的照片
server.get("/ey_commentimg",(req,res)=>{
  var sql=`select * from ey_commentimg `
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})


//功能：查询餐厅及食物详情
server.get("/foodDetail",(req,res)=>{
  var lid=req.query.lid;
  var output={
    product:{},
    liangdian:[],
    pics:[],
    menu:[]
  }
if(lid!==undefined){
  var sql1=`select * from ey_details where lid=?`;
  pool.query(sql1,[lid],(err,result)=>{
    if(err) console.log(err);
    if(result.length>0){
      output.product=result[0];
    }else{
      output.product={title:"",imgUrl:""};
    }
    
    var sql2=`select * from ey_liang where ldid=?`;
    pool.query(sql2,[lid],(err,result)=>{
      if(err) console.log(err);
      output.liangdian=result;
      var sql3=`select * from ey_lunbo where family_id=?`
      pool.query(sql3,[lid],(err,result)=>{
        if(err) console.log(err);
        if(result.length>0){
          output.pics=result;
        }else{
          output.pics=[{imgUrl:""}]
        }
        
        var sql4=`select * from ey_menu where fid=?`
      pool.query(sql4,[lid],(err,result)=>{
        if(err) console.log(err);
        output.menu=result;
        res.send(output);
      })
    })
  })
})
}else{
  res.send(output);
}
})

//功能:查看购物车 
server.get("/findcart",(req,res)=>{
  var uid=req.session.uid;
  console.log(uid);
  if(!uid){
    res.send({code:-1,msg:"请登录"});
    return;
  }
  var sql=`SELECT id,lid,title,subtitle,price,pic,count FROM ey_cart WHERE uid = ?`;
   pool.query(sql,[uid],(err,result)=>{
     if(err)throw err;
     res.send({code:1,msg:"查询成功",data:result})
   })
 })


 //功能:1.将商品添加至购物车
 server.get("/addcart",(req,res)=>{
   var uid = req.session.uid;
   //3:如果用户没有登录   !!!
   if(!uid){
    //4:返回错误消息 请登录
    res.send({code:-1,msg:"请登录"});
    return;
   }
   var lid = req.query.lid;  //商品编号
   var title=req.query.title;  //商品名称
   var subtitle=req.query.subtitle;  //商家名称
   var price = req.query.price;//商品价格
   var pic=req.query.pic;      //商品图片
   var sql = "SELECT id FROM ey_cart WHERE uid = ? AND lid = ?";
   pool.query(sql,[uid,lid],(err,result)=>{
     if(err)throw err;
 //8:如果用户没有购买过此商品添加
 //9:如果用户己经购买过此商品更新数量
     if(result.length==0){
     var sql = `INSERT INTO ey_cart VALUES(null,?,?,?,?,?,?,1)`; 
         pool.query(sql,[uid,lid,title,subtitle,price,pic],(err,result)=>{
           if(err)throw err;
           console.log(result);
           res.send({code:1,msg:"添加成功"});
         })
     }else{
     var sql =`UPDATE ey_cart SET count=count+1 WHERE uid=? AND lid=?`;
         pool.query(sql,[uid,lid],(err,result)=>{
           if(err)throw err;
           console.log(result);
           res.send({code:1,msg:"添加成功"});
         })
     }
 })
 })
//功能:2.将商品添加至购物车
server.get("/addcartP",(req,res)=>{
  var uid = req.session.uid;
  //3:如果用户没有登录   !!!
  if(!uid){
   //4:返回错误消息 请登录
   res.send({code:-1,msg:"请登录"});
   return;
  }
  var lid = req.query.lid;  //商品编号
  var title=req.query.title;  //商品名称
  var subtitle=req.query.subtitle;  //商家名称
  var price = req.query.price;//商品价格
  var pic=req.query.pic;      //商品图片
  var sql = "SELECT id FROM ey_cart WHERE uid = ? AND lid = ?";
  pool.query(sql,[uid,lid],(err,result)=>{
    if(err)throw err;
//8:如果用户没有购买过此商品添加
//9:如果用户己经购买过此商品更新数量
    if(result.length==0){
    var sql = `INSERT INTO ey_cart VALUES(null,?,?,?,?,?,?,1)`; 
        pool.query(sql,[uid,lid,title,subtitle,price,pic],(err,result)=>{
          if(err)throw err;
          console.log(result);
          res.send({code:1,msg:"添加成功"});
        })
    }else{
    var sql =`UPDATE ey_cart SET count=count+1 WHERE uid=? AND lid=?`;
        pool.query(sql,[uid,lid],(err,result)=>{
          if(err)throw err;
          console.log(result);
          res.send({code:1,msg:"添加成功"});
        })
    }
    
})
})

//功能：添加一条评论
server.get("/addcomment",(req,res)=>{
  var uid = req.session.uid;
  //3:如果用户没有登录   !!!
  if(!uid){
   //4:返回错误消息 请登录
   res.send({code:-1,msg:"请登录"});
   return;
  }
  var lid = req.query.lid;  //商品编号
  var title=req.query.title;  //商品名称
  var subtitle=req.query.subtitle;  //商家名称
  var price = req.query.price;//商品价格
  var pic=req.query.pic;      //商品图片
  var sql = "SELECT id FROM ey_cart WHERE uid = ? AND lid = ?";
  pool.query(sql,[uid,lid],(err,result)=>{
    if(err)throw err;
//8:如果用户没有购买过此商品添加
//9:如果用户己经购买过此商品更新数量
    if(result.length==0){
    var sql = `INSERT INTO ey_cart VALUES(null,?,?,?,?,?,?,1)`; 
        pool.query(sql,[uid,lid,title,subtitle,price,pic],(err,result)=>{
          if(err)throw err;
          console.log(result);
          res.send({code:1,msg:"添加成功"});
        })
    }else{
    var sql =`UPDATE ey_cart SET count=count+1 WHERE uid=? AND lid=?`;
        pool.query(sql,[uid,lid],(err,result)=>{
          if(err)throw err;
          console.log(result);
          res.send({code:1,msg:"添加成功"});
        })
    }
    
})
})

//功能：在商品详情页仅查看第一条评论
server.get("/findCommentone",(req,res)=>{
  // var uid=req.session.uid;
  var lid=req.query.lid;
  // var uname="";
  // console.log(uid);
  // if(!uid){
  //   res.send({code:-1,msg:"请登录"});
  //   return;
  // }
  // var sql1=`SELECT uname FROM ey_user WHERE uid = ?`;
  // pool.query(sql1,[uid],(err,result)=>{
  //       if(err)throw err;
  //       res.send(result);
  // })
  var sql2=`SELECT * FROM ey_comment WHERE lid = ? LIMIT 1`;
   pool.query(sql2,[lid],(err,result)=>{
     if(err)throw err;
     res.send({code:1,msg:"查询成功",data:result})
   })
 })
 //http://127.0.0.1:3000/findCommentone?lid=1
 //http://127.0.0.1:3000/login?uname=dangdang&upwd=123456
 //http://127.0.0.1:3000/findCommentone?lid=1

//功能：在所有评论页面查看所有的评论
server.get("/findCommentall",(req,res)=>{
  // var uid=req.session.uid;
  var lid=req.query.lid;
  // var uname="";
  // console.log(uid);
  // if(!uid){
  //   res.send({code:-1,msg:"请登录"});
  //   return;
  // }
  // var sql1=`SELECT uname FROM ey_user WHERE uid = ?`;
  // pool.query(sql1,[uid],(err,result)=>{
  //       if(err)throw err;
  //       res.send(result);
  // })
  var sql2=`SELECT * FROM ey_comment WHERE lid = ?`;
   pool.query(sql2,[lid],(err,result)=>{
     if(err)throw err;
     res.send({code:1,msg:"查询成功",data:result})
    })
  })