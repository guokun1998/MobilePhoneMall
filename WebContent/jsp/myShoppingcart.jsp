<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>我的购物车</title>
<link href="../css/shoppingcart/ootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<!--theme-style-->
<link href="../css/shoppingcart/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--theme-style-->
<link href="../css/shoppingcart/style4.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<script src="../js/shoppingcart/jquery.min.js"></script>
<!--- start-rate---->
<script src="../js/shoppingcart/jstarbox.js"></script>
<link rel="stylesheet" href="../css/shoppingcart/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!---//End-rate---->
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
<!--banner-->
<div class="banner-top">
	<div class="container">
		<h1>我的购物车</h1>
		<em></em>
		
	</div>
</div>
<!--login-->
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
	<div class="check-out">
	<div class="bs-example4">
    <div class="table-responsive">
    <form action="shoppingcart/myShoppingcart.action" method="post">
	<table class="table-heading simpleCart_shelfItem">
		<tr>
			<th >商品名称</th>
			<th>购物车详情Id</th>	
			<th>商品价格</th>
			<th>商品数量</th>
	
			<th>总价格</th>
		</tr>
		
		<c:forEach items="${shoppingcartQueryList }" var="shoppingcartQuery">
			<tr class="cart-header">
			 
				<td>
					
				
					${shoppingcartQuery.goodsName}	</td>
			
				<div class="clearfix"> </div>
				
			
				<td><!-- 第一件商品价格-->${shoppingcartQuery.shoppingcartdetailId}</td>
				<td><!-- 第一件商品价格-->${shoppingcartQuery.goodsOffprice}</td>
				<td><!-- 第一件商品价格-->${shoppingcartQuery.buyGoodsCount}</td>
				<%-- <td><input type="text" name="buyGoodsCount" value="${shoppingcartQuery.buyGoodsCount}"></td> --%>
				<td class="item_price"><!-- 第一件商品总价格-->${shoppingcartQuery.priceSum}</td>
			</tr>
		</c:forEach>
	</table>
	 </form>
	</div>
	</div>
	<div>
	<div class="content" style="margin-left:150px">
		<form action="../shoppingcartdetail/updatebuyGoodsCount.action" method="post">
			<input type="text" value="请输入要修改的购物车详情ID" id="changeshoppingcartdetailId" name="shoppingcartdetailId" > 
			<input type="text" value="请输入要修改的商品数量" name="buyGoodsCount" >
			<input type="submit" value="提交修改" style="width: 100px; height: 50px;background-color: lightblue;margin-top: 30px;
					margin-left:900px;font-size:8;font-family: '微软雅黑';">
		</form>
		<form action="../shoppingcartdetail/deleteshoppingcartdetail.action" method="post">
			<input type="text" value="请输入要删除的购物车详情ID" id="deleteshoppingcartdetail" name="shoppingcartdetailId">
			<input type="submit" value="确认删除" style="width: 100px; height: 50px;background-color: lightblue;margin-top: 30px;
					margin-left: 900px;font-size:8;font-family: '微软雅黑';">
		</form>
	</div>	
	</div>
	<div class="produced" style="margin-top:500px">
	<a href="../shoppingcart/pay.action" class="hvr-skew-backward">结算</a>

	 </div>
	
   
</div>

<!--//login-->
<!--brand-->
		<div class="container">
			<div class="brand">
			</div>
			<!--//brand-->
		</div>
	</div>
	<script src="../js/shoppingcart/simpleCart.min.js"> </script>
<!-- slide -->
<script src="../js/shoppingcart/bootstrap.min.js"></script>
 <%@ include file="footer.jsp"%>
</body>
</html>