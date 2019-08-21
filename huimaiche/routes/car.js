const express=require("express");
const pool=require("../pool");
//创建路由器
var router=express.Router();
//添加数据
router.post('/caradd',(req,res)=>{
	var $cname=req.body.cname;
	var $price=req.body.price;
	var $pic=req.body.pic;
	var $tid=req.body.tid;
  var obj=req.body;
	console.log($cname,$price,$pic,$tid);
	var sql="insert into car set ?";
	pool.query(sql,[obj],(err,result)=>{
	  if(err) throw err;
		//console.log(result);
		if(result.affectedRows>0){
		  res.send("1");
		}else{
		  res.send("0");    
		}
	});
});
//查询数据
router.get('/carlist/:tid',(req,res)=>{
  var $tid=req.params.tid;
	var sql="select * from car where tid=?";
	pool.query(sql,[$tid],(err,result)=>{
	  if(err) throw err;
		res.send(result);
	});
});
//删除数据
router.delete('/del/:cid',(req,res)=>{
  var $cid=req.params.cid;
	console.log($cid);
	var sql="delete from car where cid=?";
	pool.query(sql,[$cid],(err,result)=>{
	  if(err) throw err;
		res.send("1");
	});
});
//查询
router.get('/cardetails/:cid',(req,res)=>{
  var $cid=req.params.cid;
	console.log($cid);
	var sql="select * from car where cid=?";
	pool.query(sql,[$cid],(err,result)=>{
	  if(err) throw err;
		res.send(result);
	});
});
      

module.exports=router;