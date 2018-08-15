<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>注册界面</title>
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" /> -->
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	
	<link href="css/register/style.css" rel='stylesheet' type='text/css' media="all" />
	<!-- /css files -->
	<script type="text/javascript">

			function checkall(){
				var res = true;
				var usrTel = document.getElementById('userTelephone'); 
				var pattern= /^1\d{10}$/;
				if(!pattern.test(usrTel.value)) 
				{ 
					alert('请输入有效的手机号码，需是11位并且以1开头！');
					usrTel.value = "";
					res = false;
				}
				var p1 = document.getElementById('userpassword1');
  				var pattern = /^\w{6,12}$/; //密码要在6-12位 
				if(!pattern.test(p1.value)){ 
				    alert("密码不合规范,请输入6-12位密码");
					p1.value = "";
					res = false;
					
			   }
  				var p2 = document.getElementById('userpassword2');
  					if(p1.value != p2.value){
	  					alert("请保持输入的密码符合规范一致");
	   					p2.value = "";
	  					res = false;
	  					
  				}
  				if(res){
  					//document.forms[0].action = "user/register.action";
  					document.forms[0].submit();
  				}
  				
			}
			</script>
	</head>
	<body>
	<div class="log">
	<div class="content3">
		<br /><br /><br />
		<h2>真实姓名</h2><br />  
		<h2>昵称</h2><br />
		<h2>联系方式</h2><br />
		<h2>密码</h2><br />
		<h2>确认密码</h2><br />
	</div>
	<div class="content2">
		<h2>注册</h2>
		<form action="user/register.action" method="post">
			
			<input type="text" id="userName" name="userName">
			<input type="text" id="userNickname" name="userNickname">
			<input type="tel" id="userTelephone" name="userTelephone">
			<input type="password" id="userpassword1" name="userPassword">
			<input type="password" id="userpassword2">
			<input type="button" class="register" value="提交" onclick="checkall()">	
		</form>
	</div>
	</div>
	</body>
</html>
