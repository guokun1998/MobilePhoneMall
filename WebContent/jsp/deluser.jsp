<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>注销页面</title>
<meta charset="UTF-8">
<link href="../css/orderandpersonalpage/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

<link href="../css/orderandpersonalpage/style.css" rel="stylesheet" type="text/css" media="all" />	

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="../css/orderandpersonalpage/style4.css" rel="stylesheet" type="text/css" media="all" />	

<script src="../js/orderandpersonalpage/jquery.min.js"></script>

	<style>
		.ooo{
			font-size: 25px;
			color:#747779;
			font-family: '微软雅黑';
			margin-top: 20px;
			padding-left: 430px;
		}
	</style>
	<script type="text/JavaScript" language="JavaScript">
		function del(){
		//	document.getElementsByName("f1")[0]
		//	var doc = document.getElementsById("userId");
		//	document.getElementsByName("f1")[0].submit();
			document.getElementsByName("f1")[0].submit();
		
	}
</script>
</head>
<body>
<%@ include file="header.jsp"%>
<div class="banner-top">
	<div class="container">
		<h1>注销您的当前用户</h1>
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
    <form name = "f1" action="../user/userdel.action" method="post">
    	    <table class="table-heading simpleCart_shelfItem">
		  <tr>
			<th>  </th>
					
			<th> </th>
		  </tr>
			
			<tr>
			<td align="middle" style="font-size: 25px;color:#747779;font-family: '微软雅黑'">我的用户编号</td>
			<td align="left" style="font-size: 20px;color:#747779;font-family: '微软雅黑'"><input type="text" name="userId" value="${sessionScope.user.userId}" readOnly/></td>
			</tr>
			
			<tr>
			<td align="middle" style="font-size: 25px;color:#747779;font-family: '微软雅黑'">我的姓名</td>
			<td><input type="text" id="t1" name="userName" class="limit3" value="${sessionScope.user.userName}" readOnly/></td>
			</tr>
			
			<tr>
			<td align="middle" style="font-size: 25px;color:#747779;font-family: '微软雅黑'">我的昵称</td>
			<td><input type="text" id="t1" name="userNickname" class="limit3" value="${sessionScope.user.userNickname}" readOnly/></td>
			</tr>
			
			<tr>
			<td  align="middle" style="font-size: 25px;color:#747779;font-family: '微软雅黑'">我的密码</td>
			<td><input type="text" id="t1" class="limit3" name="userPassword" value="${sessionScope.user.userPassword}" readOnly/></td>
			</tr>
			
			<tr>
			<td  align="middle" style="font-size: 25px;color:#747779;font-family: '微软雅黑'">我的生日</td>
			<td><input type="text" id="t1" class="limit3" name="userBirthday" value="${sessionScope.user.userBirthday}"  readOnly/></td>
			</tr>
			
			<tr>
			<td align="middle" style="font-size: 25px;color:#747779;font-family: '微软雅黑'">我的住址</td>
			<td><input type="text" id="t1" class="limit3" name="userAddress" value="${sessionScope.user.userAddress}" readOnly/></td>
			</tr>
			
			<tr>
			<td align="middle" style="font-size: 25px;color:#747779;font-family: '微软雅黑'">我的联系方式</td>
			<td><input type="text" id="t1" class="limit3" name="userTelephone" value="${sessionScope.user.userTelephone}" readOnly/></td>
			</tr>
			
			<tr>
			<td align="middle" style="font-size: 25px;color:#747779;font-family: '微软雅黑'">我的邮箱</td>
			<td><input type="text" id="t1" class="limit3" name="userEmail" value="${sessionScope.user.userEmail}" readOnly/></td>
			</tr>
	
		

		  
	</table>
	
	<div>
		<input type="submit" value="注销用户"  onclick="del();"style="width: 100px; height: 50px;background-color: #D43F3A;font-size:8;font-family: '微软雅黑';margin-left: 420px;">
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