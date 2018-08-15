

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登陆界面</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="css/register/style.css" rel='stylesheet' type='text/css' media="all" />

</head>
<body>
<h1>登陆账户</h1>
<div class="log">
	<div class="content1" >
		<h2>登陆 </h2>
		<form action="user/login.action" method="post">
			<input type="text" name="userTelephone" value="手机号" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'USERNAME';}">
			<input type="password" name="userPassword" value="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'PASSWORD';}">
			<div class="button-row">
				<input type="submit" class="sign-in" value="登陆">
				<input type="reset" class="reset" value="重置">
				<div class="clear"></div>
			</div>
		</form>
	</div>
	<div class="clear"></div>
</div>
</body>
</html>