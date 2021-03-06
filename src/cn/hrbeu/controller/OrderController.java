package cn.hrbeu.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.hrbeu.po.Goods;
import cn.hrbeu.po.Order;
import cn.hrbeu.po.Orderdetail;
import cn.hrbeu.service.GoodsService;
import cn.hrbeu.service.OrderService;
import cn.hrbeu.service.OrderdetailService;

@Controller
@RequestMapping("order")
public class OrderController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderdetailService orderdetailService;
	
	/**
	 * 更新订单电话的controller
	 * @param request
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/updateOrderTelephone")
	public String updateOrderTelephone(HttpServletRequest request,HttpSession session) throws Exception{
		//由HttpServletRequest，HttpSession分别得到orderId，orderList，userTelephone
		Integer orderId = Integer.parseInt(request.getParameter("orderId"));
		List<Order> orderList = (List<Order>) session.getAttribute("orderList");
		String userTelephone = request.getParameter("userTelephone");
		//对订单进行遍历，找到要修改的订单，进行修改
		for(Order order:orderList){
			if(order.getOrderId()==orderId){
				order.setUserTelephone(userTelephone);
				orderService.updateOrderByOrder(order);
			}
		}
		
		return "redirect:../jsp/myOrder.jsp";
		
	}
	
	/**
	 * 删除订单的controller
	 * @param request
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/deleteOneOrderByOrderId")
	public String deleteOneOrderByOrderId(HttpServletRequest request,HttpSession session) throws Exception{
		//通过HttpServletRequest，HttpSession得到orderId，orderList
		Integer orderId = Integer.parseInt(request.getParameter("orderId"));
		List<Order> orderList = (List<Order>) session.getAttribute("orderList");
		//通过循环找到要删除的List中的order，并用deleteOrder记录
		//先删除订单详情再删除订单，否则会出现外键错误
		//不能在循环中删除，否则会循环失败
		Order deleteOrder = null;
		for(Order order:orderList){
			if(order.getOrderId()==orderId){
				orderdetailService.deleteOneOrderdetailByOrderId(orderId);
				orderService.deleteOneOrderByOrderId(orderId);
				deleteOrder = order;
				
			}
		}
		//在orderList中删除deleteOrder
		orderList.remove(deleteOrder);
		//更新session域中的orderList
		session.removeAttribute("orderList");
		session.setAttribute("orderList", orderList);
		
		return "redirect:../jsp/myOrder.jsp";
		
	}
	
}
