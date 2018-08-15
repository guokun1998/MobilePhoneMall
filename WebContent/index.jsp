<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>755手机商城</title>
		<link rel="icon" href="img/index/logo3.ico" type="image/gif" >
		<link rel="stylesheet" href="css/layui/css/layui.css">
		<link href="css/index/jyc.css" rel="stylesheet"  type="text/css">
		<link rel="stylesheet" type="text/css" href="css/index/iconfont.css">

		<script src="css/layui/layui.js"></script>

		<script src="js/index/jquery-3.3.1.js"></script>
		<script src="js/index/jyc.js"></script>
		<link rel="stylesheet" href="css/index/index.css">
	</head>
	<body>
		<!--头部-->
		<%@ include file="jsp/header.jsp"%>
		<div class="header">
			
		
			<div class="nav wrap">
				<div class="nav-logo">
					<a href="index.html"><img src="img/index/logo3.jpg"></a>
				</div>
				<div class="header-nav">
					<ul class="nav-list">
						<li class="nav-category" id="nav-all" onmouseover="navallOver()" onmouseout="navallOut()">
							<a>全部商品分类</a>
						</li>
						<li class="nav-item" id="phone">
							<a>热门手机</a>
							<div class="nav-bar-down" id="navbar1">
								<div class="wrap">
									<div>
										<img class="firstimg" src="img/index/ix.jpg"/>
									</div>
									<div>
										<img src="img/小米手机/note2320x220.png"/>
									</div>
									<div>
										<img src="img/小米手机/xm6-320.png"/>
									</div>
									<div>
										<img src="img/小米手机/max2_toubu.png"/>
									</div>
									<div>
										<img src="img/小米手机/5x-2!160x110.jpg"/>
									</div>
								</div>
							</div>
						</li>
						<li class="nav-item" id="tablelet">
							<a>平板电脑</a>
							<div class="nav-bar-down" id="navbar3">
								<div class="wrap">
									<div>
										<img class="firstimg" src="img/小米手机/tv1.png"/>
									</div>
									<div>
										<img src="img/小米手机/tv2.png"/>
									</div>
									<div>
										<img src="img/小米手机/tv3.png"/>
									</div>
									<div>
										<img src="img/小米手机/tv4.png" />
									</div>
									<div>
										<img src="img/小米手机/tv5.png"/>
									</div>
								</div>
							</div>
						</li>
						<li class="nav-item" id="earphone">
							<a>原装耳机</a>
							<div class="nav-bar-down" id="navbar4" >
								<div class="wrap">
									<div>
										<img class="firstimg" src="img/小米手机/computer1.jpg"/>
									</div>
									<div>
										<img src="img/小米手机/computer2.jpg"/>
									</div>
									<div>
										<img src="img/小米手机/computer3.jpg"/>
									</div>
									<div>
										<img src="img/小米手机/computer4.jpg"/>
									</div>
									<div>
										<img src="img/小米手机/computer5.jpg"/>
									</div>
								</div>
							</div>
						</li>
				
						<li class="nav-item">
							<a>服务</a>
						</li>
						<li class="nav-item">
							<a>社区</a>
						</li>
					</ul>
				</div>
				<div class="nav-search">
					<form action="goods/goodsList.action" method="get">
						<input class="search-text" type="text" name ="goodsName">
						<input class="iconfont search-btn " type="submit" value="&#xe7b7;">
					</form>
				</div>
			</div>
		</div>
	<div class="clear"></div>
		<!--主体-->
	<div class="main">
			
		<!--导航栏-->
		
		<div class="home-hero-container wrap">
			<div class="home-carousel">
				<div class="layui-carousel" id="home-carousel" lay-filter="test1">
					<div carousel-item>
						<div>
						<img src="img/index/iPhonebig.jpg"/>
						</div>
						<div>
						<img src="img/index/huaweibig.jpg"/>
						</div>
						<div>
						<img src="img/index/oppobig.jpg"/>
						</div>
						<div>
						<img src="img/index/mi8big.jpg"/>
						</div>
						<div>
						<img src="img/index/meizibig.jpg"/>
						</div>
					</div>
				</div>
			</div>
		
			<div class="home-category">
				<ul>
					<li class="nav-hover">
						<a href="views/mobilephone.html">iphone<i class="iconfont">&#xe602;</i></a>
						<div class="category-children">
							<ul class="children-list">
								<li>
									<a href="goods/goodsDetail.action?goodsName=iPhoneXblack" target=_blank>
										<img src="img/index/iPhoneXblack.jpg"/>
										<span>iphone X</span>
									</a>
								</li>
								<li>
									<a href="goods/goodsDetail.action?goodsName=iPhone8write" target=_blank>
										<img src="img/index/iPhone8black.jpg"/>
										<span>iphone 8</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/iPhone8pluspink.jpg"/>
										<span>iphone 8plus</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/iPhone7write.jpg"/>
										<span>iphone 7</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/iPhone7pluswrite.jpg"/>
										<span>iphone 7plus</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/iPhone6swrite.jpg"/>
										<span>iphone 6s</span>
									</a>
								</li>
							
							</ul>
						</div>
					</li>
					<li class="nav-hover">
						<a href="views/TV.html">华为<i class="iconfont">&#xe602;</i></a>
						<div class="category-children">
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/tv1-1.jpg"/>
										<span>小米电视4A 32英寸</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/tv1-2.jpg"/>
										<span>小米电视4A 40英寸</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/tv1-3.jpg"/>
										<span>小米电视4A 43英寸</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/tv1-4.jpg"/>
										<span>小米电视4A 49英寸</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/tv1-5.jpg"/>
										<span>小米电视4A 50英寸</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/tv1-6.jpg"/>
										<span>小米电视4A 55英寸</span>
									</a>
								</li>
							</ul>
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/tv1-1.jpg"/>
										<span>小米电视4A 32英寸</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/tv1-2.jpg"/>
										<span>小米电视4A 40英寸</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/tv1-3.jpg"/>
										<span>小米电视4A 43英寸</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/tv1-4.jpg"/>
										<span>小米电视4A 49英寸</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/tv1-5.jpg"/>
										<span>小米电视4A 50英寸</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/tv1-6.jpg"/>
										<span>小米电视4A 55英寸</span>
									</a>
								</li>
							</ul>
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/tv1-1.jpg"/>
										<span>小米电视4A 32英寸</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/tv1-2.jpg"/>
										<span>小米电视4A 40英寸</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/tv1-3.jpg"/>
										<span>小米电视4A 43英寸</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/tv1-4.jpg"/>
										<span>小米电视4A 49英寸</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/tv1-5.jpg"/>
										<span>小米电视4A 50英寸</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/tv1-6.jpg"/>
										<span>小米电视4A 55英寸</span>
									</a>
								</li>
							</ul>
						</div>
					</li>
					<li class="nav-hover">
						<a href="views/computer.html">小米<i class="iconfont">&#xe602;</i></a>
						<div class="category-children">
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/computer1-1.jpg"/>
										<span>小米Note 3</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/computer1-2.jpg"/>
										<span>小米MIX 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/computer1-3.jpg"/>
										<span>小米6</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/computer1-4.jpg"/>
										<span>小米5X</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/computer1-5.jpg"/>
										<span>小米Max 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/computer1-6.jpg"/>
										<span>红米5 Plus</span>
									</a>
								</li>
							</ul>
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/computer1-1.jpg"/>
										<span>小米Note 3</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/computer1-2.jpg"/>
										<span>小米MIX 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/computer1-3.jpg"/>
										<span>小米6</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/computer1-4.jpg"/>
										<span>小米5X</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/computer1-5.jpg"/>
										<span>小米Max 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/computer1-6.jpg"/>
										<span>红米5 Plus</span>
									</a>
								</li>
							</ul>
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/computer1-1.jpg"/>
										<span>小米Note 3</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/computer1-2.jpg"/>
										<span>小米MIX 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/computer1-3.jpg"/>
										<span>小米6</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/computer1-4.jpg"/>
										<span>小米5X</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/computer1-5.jpg"/>
										<span>小米Max 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/computer1-6.jpg"/>
										<span>红米5 Plus</span>
									</a>
								</li>
							</ul>
						</div>

					</li>
					<li class="nav-hover">
						<a href="views/Smart_Appliances.html">OPPO<i class="iconfont">&#xe602;</i></a>
						<div class="category-children">
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/note1-1.png"/>
										<span>小米Note 3</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/min21-2.png"/>
										<span>小米MIX 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/xm61-3.png"/>
										<span>小米6</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/80pc1-4.png"/>
										<span>小米5X</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/mix21-5.png"/>
										<span>小米Max 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/redmi51-6.png"/>
										<span>红米5 Plus</span>
									</a>
								</li>
							</ul>
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/note1-1.png"/>
										<span>小米Note 3</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/min21-2.png"/>
										<span>小米MIX 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/xm61-3.png"/>
										<span>小米6</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/80pc1-4.png"/>
										<span>小米5X</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/mix21-5.png"/>
										<span>小米Max 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/redmi51-6.png"/>
										<span>红米5 Plus</span>
									</a>
								</li>
							</ul>
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/note1-1.png"/>
										<span>小米Note 3</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/min21-2.png"/>
										<span>小米MIX 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/xm61-3.png"/>
										<span>小米6</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/80pc1-4.png"/>
										<span>小米5X</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/mix21-5.png"/>
										<span>小米Max 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/redmi51-6.png"/>
										<span>红米5 Plus</span>
									</a>
								</li>
							</ul>
						</div>

					</li>
					<li class="nav-hover">
						<a href="views/Healthy_home.html">ViVO <i class="iconfont">&#xe602;</i></a>
						<div class="category-children">
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/note1-1.png"/>
										<span>小米Note 3</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/min21-2.png"/>
										<span>小米MIX 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/xm61-3.png"/>
										<span>小米6</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/80pc1-4.png"/>
										<span>小米5X</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/mix21-5.png"/>
										<span>小米Max 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/redmi51-6.png"/>
										<span>红米5 Plus</span>
									</a>
								</li>
							</ul>
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/note1-1.png"/>
										<span>小米Note 3</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/min21-2.png"/>
										<span>小米MIX 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/xm61-3.png"/>
										<span>小米6</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/80pc1-4.png"/>
										<span>小米5X</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/mix21-5.png"/>
										<span>小米Max 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/redmi51-6.png"/>
										<span>红米5 Plus</span>
									</a>
								</li>
							</ul>
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/note1-1.png"/>
										<span>小米Note 3</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/min21-2.png"/>
										<span>小米MIX 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/xm61-3.png"/>
										<span>小米6</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/80pc1-4.png"/>
										<span>小米5X</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/mix21-5.png"/>
										<span>小米Max 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/redmi51-6.png"/>
										<span>红米5 Plus</span>
									</a>
								</li>
							</ul>
						</div>

					</li>
					
					<li class="nav-hover">
						<a href="views/power.html">移动电源<i class="iconfont">&#xe602;</i></a>
						<div class="category-children">
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/note1-1.png"/>
										<span>小米Note 3</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/min21-2.png"/>
										<span>小米MIX 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/xm61-3.png"/>
										<span>小米6</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/80pc1-4.png"/>
										<span>小米5X</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/mix21-5.png"/>
										<span>小米Max 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/redmi51-6.png"/>
										<span>红米5 Plus</span>
									</a>
								</li>
							</ul>
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/note1-1.png"/>
										<span>小米Note 3</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/min21-2.png"/>
										<span>小米MIX 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/xm61-3.png"/>
										<span>小米6</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/80pc1-4.png"/>
										<span>小米5X</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/mix21-5.png"/>
										<span>小米Max 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/redmi51-6.png"/>
										<span>红米5 Plus</span>
									</a>
								</li>
							</ul>
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/note1-1.png"/>
										<span>小米Note 3</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/min21-2.png"/>
										<span>小米MIX 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/xm61-3.png"/>
										<span>小米6</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/80pc1-4.png"/>
										<span>小米5X</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/mix21-5.png"/>
										<span>小米Max 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/redmi51-6.png"/>
										<span>红米5 Plus</span>
									</a>
								</li>
							</ul>
						</div>
					</li>
					<li class="nav-hover">
					<a href="views/EarPhone.html">耳机<i class="iconfont">&#xe602;</i></a>
						<div class="category-children">
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/note1-1.png"/>
										<span>小米Note 3</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/min21-2.png"/>
										<span>小米MIX 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/xm61-3.png"/>
										<span>小米6</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/80pc1-4.png"/>
										<span>小米5X</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/mix21-5.png"/>
										<span>小米Max 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/redmi51-6.png"/>
										<span>红米5 Plus</span>
									</a>
								</li>
							</ul>
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/note1-1.png"/>
										<span>小米Note 3</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/min21-2.png"/>
										<span>小米MIX 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/xm61-3.png"/>
										<span>小米6</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/80pc1-4.png"/>
										<span>小米5X</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/mix21-5.png"/>
										<span>小米Max 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/redmi51-6.png"/>
										<span>红米5 Plus</span>
									</a>
								</li>
							</ul>
							<ul class="children-list">
								<li>
									<a>
										<img src="img/index/nav-index/note1-1.png"/>
										<span>小米Note 3</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/min21-2.png"/>
										<span>小米MIX 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/xm61-3.png"/>
										<span>小米6</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/80pc1-4.png"/>
										<span>小米5X</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/mix21-5.png"/>
										<span>小米Max 2</span>
									</a>
								</li>
								<li>
									<a>
										<img src="img/index/nav-index/redmi51-6.png"/>
										<span>红米5 Plus</span>
									</a>
								</li>
							</ul>
						</div>
				  </li>
				</ul>
			</div>
		</div>
		<!--开始闪购-->
        <!--结束闪购-->
   
	<!--底部-->
	<%@ include file="jsp/footer.jsp"%>
	
<script>
    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#home-carousel'
            ,width: '100%' //设置容器宽度
            ,height: '460px'
            ,arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式

        });
    });
</script>
</html>
