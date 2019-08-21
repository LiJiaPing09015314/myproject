const express=require("express");
//引入路由器文件
const carRouter=require("./routes/car");
const bodyParser=require('body-parser');
var app=express();
app.listen(8080,function(){
    console.log("服务器创建成功");
});
app.use(bodyParser.urlencoded({
  extended:false
}));

app.use(express.static("static"));
//挂在路由器
app.use("/car",carRouter);