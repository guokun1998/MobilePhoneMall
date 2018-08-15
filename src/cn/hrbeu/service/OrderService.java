package cn.hrbeu.service;

import java.util.List;

import cn.hrbeu.po.Order;
import cn.hrbeu.po.Orderdetail;

public interface OrderService {
	public Integer insertOneOrder(Order order) throws Exception;
	
	public List<Order> findOrderByUserId(Integer userId) throws Exception;
	
	public void updateOrderByOrder(Order order) throws Exception;
	
	public void deleteOneOrderByOrderId(Integer orderId) throws Exception;
}
