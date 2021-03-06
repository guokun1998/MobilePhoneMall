<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">	
		<link rel="icon" href="../img/index/logo3.ico" type="image/gif" >
		<!-- <link rel="stylesheet" href="../css/layui/css/layui.css"> -->
		<link href="../css/index/jyc.css" rel="stylesheet"  type="text/css">
		<link rel="stylesheet" type="text/css" href="../css/index/iconfont.css">

		<script src="../css/layui/layui.js"></script>

		<script src="../js/index/jquery-3.3.1.js"></script>
		<script src="../js/index/jyc.js"></script>
		<link rel="stylesheet" href="../css/index/index.css">

	</head>
	<body>
		<!--顶部固定部分-->		
		<div class="header">
			<div class="topbar">
				<div class="wrap">
					<div class="topbar-left">
						<a href="${pageContext.request.contextPath }/index.jsp">755手机商城主页</a><span >|</span>
						<a>手机大全</a><span>|</span>
						<a>手机论坛</a><span>|</span>
					</div>
					<div class="topbar-right">
						<!-- 如果登录成功 -->
						<c:if test="${!empty user }">
							
							<a>欢迎您，${sessionScope.user.userNickname}</a><span>|</span>
							<c:if test="${sessionScope.user.userPower > 0 }">
								<a href="${pageContext.request.contextPath }/jsp/managerGoodsList.jsp" id="individualCenter" target=_blank>管理员入口</a><span>|</span>
							</c:if>
							<a href="${pageContext.request.contextPath }/user/logout.action" id="individualCenter">退出</a><span>|</span>
							<a href="${pageContext.request.contextPath }/jsp/myOrder.jsp" id="individual" target=_blank>我的订单</a><span>|</span>
							<a href="${pageContext.request.contextPath }/jsp/personalPage.jsp" id="individualCenter" target=_blank>个人中心</a><span>|</span>
							
							<div id="topbar-cart" >
							<a href="${pageContext.request.contextPath }/shoppingcart/myShoppingcart.action" target=_blank>
								<i class="iconfont">&#xe600;</i>购物车
							</a>
						</div>
						<div class="loading" id="load" style="display:none">购物车中还没有商品，赶紧选购吧！</div>
						</c:if>
						<c:if test="${empty user }">
							
							<a href="login.jsp" id="login">登录</a><span>|</span>
							<a href="register.jsp" id="register" target=_blank>注册</a><span>|</span>
						</c:if>
						
					</div>
				</div>
			</div>
						
		</div>			
		<div class="clear"></div>
	
	
	</body>
</html>