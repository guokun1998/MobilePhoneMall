package cn.hrbeu.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.hrbeu.po.Goods;
import cn.hrbeu.po.Orderdetail;
import cn.hrbeu.service.GoodsService;
import cn.hrbeu.service.OrderdetailService;

@Controller
@RequestMapping("orderdetail")
public class OrderdetailController {
	@Autowired
	private OrderdetailService orderdetailService;
	
	
	/**
	 * 展示商品详情页的controller
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/oneOrderdetail")
	public String showOneOrder(HttpServletRequest request) throws Exception{
		//通过HttpServletRequest得到orderId
		Integer orderId = Integer.parseInt(request.getParameter("orderId"));
		//通过orderId得到orderdetailList
		List<Orderdetail> orderdetailList = orderdetailService.findOrderdetailByOrderId(orderId);
		//写入HttpServletRequest
		request.setAttribute("orderdetailList", orderdetailList);
		return "../jsp/orderDetail";
	}
}
