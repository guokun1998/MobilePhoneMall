<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>管理员管理界面</title>
<meta charset="UTF-8">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="../css/orderandpersonalpage/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

<link href="../css/orderandpersonalpage/style.css" rel="stylesheet" type="text/css" media="all" />	

<link href="../css/orderandpersonalpage/style4.css" rel="stylesheet" type="text/css" media="all" />	

<script src="../js/orderandpersonalpage/jquery.min.js"></script>
	<script type="text/JavaScript" language="JavaScript">
		function doclick(){
		
		var docs = document.getElementsByClassName("limit");
		var orderId = document.getElementById("changeOrderId").value;
		
		for(var i=0;i<docs.length;i++){
			docs[i].readOnly = false;
		} 
		document.getElementById("changeOrderId").readOnly = false;
		}
		function submit1(){
			document.getElementsByName("f")[0].submit();
		}

</script>
<style>
	.content {
	width: 48%;
    text-align: center;
    padding: 30px 0;
    float: left;
    border-radius: 0px;
}
	.content input[type="text"]{
	padding:10px 40px 10px 10px;
	width:70%;
	border:1px solid #fff;
	color:#fff;
	text-align:left;
	outline:none;
	font-size:18px;
	margin-top:4%;
	font-weight: 300;
	font-family: 'Muli', sans-serif;
	background: no-repeat 440px 10px;
	background-color:dimgrey;
	/*-- W3Layouts --*/
	border-radius: 4px;
	}
</style>
</head>
<body>
<%@ include file="header.jsp"%>
<div class="banner-top">
	<div class="container">
		<h1>管理员管理界面</h1>
		<em></em>
	</div>
</div>
<script>$(document).ready(function(c) {
	$('.close1').on('click', function(c){
		$('.cart-header').fadeOut('slow', function(c){
			$('.cart-header').remove();
		});
		});	  
	});
</script>
<script>$(document).ready(function(c) {
	$('.close2').on('click', function(c){
		$('.cart-header1').fadeOut('slow', function(c){
			$('.cart-header1').remove();
		});
		});	  
	});
</script>
<script>$(document).ready(function(c) {
	$('.close3').on('click', function(c){
		$('.cart-header2').fadeOut('slow', function(c){
			$('.cart-header2').remove();
		});
		});	  
	});
</script>
<div class="container">

	
	 <div class="content" style="margin-left:150px">
		<form  method="post" action="../goods/updateGoodsOffprice.action">
		
			<input type="text" name = "goodsName" value="请输入要修改的商品名称" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'GOODSNAME';}">
			<input type="text" name = "goodsOffprice"value="请输入要修改为的折扣价格" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'GOODSOFFPRICE';}">
			<input type="submit" value="提交修改" style="width: 100px; height: 50px;background-color: lightblue;margin-top: 30px;
					margin-left: 500px;font-size:8;font-family: '微软雅黑';"> 
		</form>
	<div class="check-out">
	<div class="bs-example4" data-example-id="simple-responsive-table">
    <div class="table-responsive">
	</div>
	</div>
    </div> 
	 <div>
		<!--  <form  method="post" action="../goods/updateGoodsOffprice.action">
			<input type="text" value="请输入要修改的商品编号" id="changeGoodsId" name="goodsName">
			<input type="text" value="请输入要修改的折扣价格" name="goodsOffprice">
			<input type="submit" value="提交修改" style="width: 100px; height: 50px;background-color: lightblue;margin-top: 30px;
					margin-left: 500px;font-size:8;font-family: '微软雅黑';">

		</form>-->
	</div>
	<div>
		<form  method="post" action="../goods/insertOneGoods.action">
			<input type="text" value="请输入要补充库存的商品名称" id="changeGoodsId" name="goodsName" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'GOODSNAME';}">
			<input type="text" value="请输入该商品的生产日期" name="goodsFactorydate" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'GOODSFACTORYDATE';}">
			<input type="text" value="请输入该商品的数量" name="insertGoodsCount" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'INSERTGOODSCOUNT';}">
			<input type="submit" value="补充" style="width: 100px; height: 50px;background-color: lightblue;margin-top: 30px;
					margin-left: 500px;font-size:8;font-family: '微软雅黑';">
		</form>
	</div>
	<div>
		<form  method="post" action="../goods/deleteHasSelledGoods.action">
			
			<input type="text" value="请输入要删除的商品名称" name="goodsName" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'GOODSNAME';}">
			<input type="submit" value="删除已销售的商品" style="width: 100px; height: 50px;background-color: lightblue;margin-top: 30px;
					margin-left: 500px;font-size:8;font-family: '微软雅黑';">
		</form>
	</div>
</div>
</div>
</body>
</html>