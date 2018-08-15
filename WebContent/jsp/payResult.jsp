<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>dadad</h1>
<form>
	下列商品库存不够，无法购买：
	<c:forEach items="${cantBuyGoodsName }" var="cantBuyGoodsName">
			<tr class="cart-header">
			 
				<td class="ring-in">
					
				<div class="sed">
					<h5>${cantBuyGoodsName }</h5>
				</div>
				
			</tr>
		</c:forEach>
		下列商品成功购买：
	<c:forEach items="${canBuyGoodsName }" var="canBuyGoodsName">
			<tr class="cart-header">
			 
				<td class="ring-in">
					
				<div class="sed">
					<h5>${canBuyGoodsName }</h5>
				</div>
			</td>
			</tr>
		</c:forEach>
</form>
</body>
</html>