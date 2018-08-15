<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
	<meta charset="utf-8" />
	
	<script type="text/javascript">
	function sub() {
		/* document.forms[0].action = "goodscartdetail/insertGoodscartdetail.action";
		document.forms[0].submit(); */
		document.getElementsByName("form")[0].submit();
		
		
		alert("添加商品成功！");
	}
	</script>
	<meta http-equiv="x-ua-compatible" content="ie=edge" />
	<title>商品详情页</title> 
	<meta content="" name="description" />
	<meta content="" name="keywords" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="telephone=no" name="format-detection" />
	<meta name="HandheldFriendly" content="true" />
	<link rel="stylesheet" href="../css/goodsDetail/master.css" />
	

</head>

<body>
<!-- Loader-->
	
	
	
	<div id="page-preloader"><span class="spinner border-t_second_b border-t_prim_a"></span>
	</div>
<!-- Loader end-->
	
		<%@ include file="../jsp/header.jsp" %>
	   <!-- ==========================-->
<!-- FULL SCREEN MENU-->
<!-- ==========================-->
		<!-- end .header-->
		<div class="<!--l-main-content--> l-main-content_w-border_btm">
		<section class="b-goods-det <!-- bg-grey-->">
				<div class="container-fluid">
					<div class="row">
					<div class="<!--col-lg-6--> <!--col-lg-push-6 --><!--col-md-7--> <!--col-md-push-5-->">
					<div class="b-goods-det__main">
								<div>
									<img src="../img/goods/${goods.goodsPicture }.jpg"/>
								</div><!-- action="shoppingcartdetail/insertGoodscartdetail.action" -->
								
									<div class="row">
										<div class="col-lg-7">
											<div class="b-goods-det__price"> ￥ ${goods.goodsOffprice }</div>
											<div class="b-goods-det__price-action"><span class="b-goods-det__price-old">  ￥ ${goods.goodsPrice }</span></div>
										</div>
										<div class="enumerator"></div>
										<div class="col-lg-5">
											<form action="../shoppingcartdetail/insertOneShoppingcartdetail.action" id="addToCartForm" class="b-goods-det__form"  method="post" target="_blank" name="form"><!-- target="nm_iframe" -->
												<!-- <span class="enumerator__btn enumerator__btn_minus js-minus_btn"></span> -->
												<h3>数量</h3>
												<input class="enumerator__input" type="text" value="1" size="3" name="buyGoodsCount">
												<!-- <span class="enumerator__btn enumerator__btn_plus js-plus_btn"></span> -->
												
												<input name="userId" value="${sessionScope.user.userId}" type="hidden">
												<input name="goodsName" value="${goods.goodsName }" type="hidden">
											</form>
											<button class="b-goods-det__btn btn btn-dark" type="submit" value="加入购物车" onclick="sub()">加入购物车</button>
										</div>
									</div>
								
								<iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe>  
								
							</div>
							<!-- end .b-goods-det__main-->
						</div>
					</div>
				</div>
			</section>
		</div>
		<!-- end .l-main-content-->
		<!-- .footer-->
	<%@ include file="../jsp/footer.jsp"%>
	<!-- end layout-theme-->


	<!-- ++++++++++++-->
<!-- MAIN SCRIPTS-->
<!-- ++++++++++++-->
<script src="../js/goodsDetail/libs/jquery-1.12.4.min.js"></script>
<script src="../js/goodsDetail/libs/jquery-migrate-1.2.1.js"></script>
<script src="../js/goodsDetail/libs/modernizr.custom.js"></script>
<!-- Bootstrap-->
<script src="../js/goodsDetail/libs/bootstrap/bootstrap.min.js"></script>
<!-- User customization-->
<script src="../js/goodsDetail/custom.js"></script>
<!-- Select customization & Color scheme-->
<script src="../js/goodsDetail/plugins/bootstrap-select/js/bootstrap-select.min.js"></script>
<!-- Slider-->
<script src="../js/goodsDetail/plugins/owl-carousel/owl.carousel.min.js"></script>
<!-- Pop-up window-->
<script src="../js/goodsDetail/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Headers scripts-->
<script src="../js/goodsDetail/plugins/headers/slidebar.js"></script>
<script src="../js/goodsDetail/plugins/headers/header.js"></script>
<script src="../js/goodsDetail/plugins/headers/jquery.dlmenu.js"></script>
<!-- Mail scripts-->
<script src="../js/goodsDetail/plugins/jqBootstrapValidation.js"></script>
<script src="../js/goodsDetail/plugins/contact_me.js"></script>
<!-- Video player-->
<script src="../js/goodsDetail/plugins/flowplayer/flowplayer.min.js"></script>
<!-- Animations-->
<script src="../js/goodsDetail/plugins/scrollreveal/scrollreveal.min.js"></script>
<script src="../js/goodsDetail/plugins/TiltHoverEffects/js/imagesloaded.pkgd.min.js"></script>
<script src="../js/goodsDetail/plugins/TiltHoverEffects/js/anime.min.js"></script>
<script src="../js/goodsDetail/plugins/TiltHoverEffects/js/main.js"></script>
<!-- Main slider-->
<script src="../js/goodsDetail/plugins/slider-pro/jquery.sliderPro.min.js"></script>
</body>
</html>

