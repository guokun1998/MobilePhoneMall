<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>订单详情页</title>
<meta charset="UTF-8">
<link href="../css/orderandpersonalpage/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

<link href="../css/orderandpersonalpage/style.css" rel="stylesheet" type="text/css" media="all" />	

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="../css/orderandpersonalpage/style4.css" rel="stylesheet" type="text/css" media="all" />	

<script src="../js/orderandpersonalpage/jquery.min.js"></script>
</head>
<body>
<%@ include file="header.jsp"%>
<div class="banner-top">
	<div class="container">
		<h1>xxxx号订单明细</h1>
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
    <form action="orderdetail/oneOrderdetail">
    	    <table class="table-heading simpleCart_shelfItem">
		  <tr>
		  	<th>订单总编号 </th>
		  	<th>订单明细编号</th>
			<th>商品编号</th>
		
			<th>       </th>
		  </tr>

		<c:forEach items="${orderdetailList }" var="orderdetail">
		  <tr class="cart-header">
			<td style="color: #C7254E;font-size: 30;font-family: '微软雅黑';text-align:left;">${orderdetail.orderId}号订单</td>
			
			<td class="ring-in">
			<div> <!--class="sed"-->
				<h3>订单明细编号${orderdetail.orderdetailId}</h3>
			
			</div>
			<div class="clearfix"> </div>
			
			<td style="color:#999999;font-size: 25;font-family: '微软雅黑';text-align:left;">商品编号${orderdetail.goodsId}</td>

			</tr>
		</c:forEach>
		
	</table>
	</form>
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