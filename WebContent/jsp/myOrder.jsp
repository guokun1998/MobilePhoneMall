<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>我的订单</title>
<meta charset="UTF-8">
<link href="../css/orderandpersonalpage/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

<link href="../css/orderandpersonalpage/style.css" rel="stylesheet" type="text/css" media="all" />	

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="../css/orderandpersonalpage/style4.css" rel="stylesheet" type="text/css" media="all" />	

<script src="../js/orderandpersonalpage/jquery.min.js"></script>

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
</head>
<body>
<%@ include file="header.jsp"%>
<div class="banner-top">
	<div class="container">
		<h1>我的订单</h1>
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
	<div class="bs-example4" data-example-id="simple-responsive-table">
    <div class="table-responsive">
    <form name = "f" action="order/myOrder" method="post">
    	    <table class="table-heading simpleCart_shelfItem">
		  <tr>
			<th>订单编号</th>
					
			<th>订单总价格 </th>
			<th>运费  </th>
			<th>下单日期 </th>
			<th>住址 </th>
			<th>联系方式 </th>
			<th>       </th>
		  </tr>
		  <c:forEach items="${orderList }" var="order">
		  <tr class="cart-header">

			<td class="ring-in">
			<div> <!--class="sed"-->
				<h3>${order.orderId}号订单</h3>
			
			</div>
			<div class="clearfix"> </div>
			</td>
			
			
		
				<td><input type="text" id="t1" class="limit2" value="${order.orderPrice}" name="orderPrice" readOnly/></td>
				<td><input type="text" id="t2" class="limit2" value="${order.shipping}" name="shipping" readOnly /></td>
				<td><input type="text" id="t3" class="limit2" value="${order.buyTime}" name="buyTime" readOnly /></td>
				<td><h5><input type="text" id="t4" class="limit" value="${order.userAddress}" name="userAddress" readOnly /></h5></td>
				<td><input type="text" id="t5" class="limit" value="${order.userTelephone}" name="userTelephone" readOnly /></td> 
				
				<td class="add-check"><a class="item_add hvr-skew-backward" href="../orderdetail/oneOrderdetail.action?orderId=${order.orderId}" target=_blank>订单明细查看</a></td>
			
		 </tr>
			</c:forEach>
		  
	</table>
	</form>
	<div>
	 <div class="content" style="margin-left:150px">
		<form action="../order/updateOrderTelephone.action" method="post">
			<input type="text" value="请输入要修改的订单号" id="changeOrderId" name="orderId" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'UPDATE_ORDERID';}">
			<input type="text" value="请输入要修改的手机号" name="userTelephone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'USERPHONE';}">
			<input type="submit" value="提交修改" style="width: 100px; height: 50px;background-color: lightblue;margin-top: 30px;
					margin-left: 800px;font-size:8;font-family: '微软雅黑';">
		</form>
		
		<form action="../order/deleteOneOrderByOrderId.action" method="post">
			<input type="text" value="请输入要删除的订单号" id="changeOrderId" name="orderId" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'DELETE_ORDERID';}">
			
			<input type="submit" value="提交删除" style="width: 100px; height: 50px;background-color: lightblue;margin-top: 30px;
					margin-left: 800px;font-size:8;font-family: '微软雅黑';">
		</form>
	</div>	
		<!-- <input type="button" value="修改" onclick="doclick();" style="width: 100px; height: 50px;background-color:#00BFF0;font-size:8;font-family: '微软雅黑';margin-left: 300px;">
		<input type="button" value="提交" onclick="submit1();" style="width: 100px; height: 50px;background-color: #8CF2B5;font-size:8;font-family: '微软雅黑';margin-left: 300px;"> -->
	</div>
	</div>
	</div>
    </div>
</div>


	<script src="../js/orderandpersonalpage/simpleCart.min.js"> </script>
<!-- slide -->
<script src="../js/orderandpersonalpage/bootstrap.min.js"></script>
 <%@ include file="footer.jsp"%>
</body>
</html>