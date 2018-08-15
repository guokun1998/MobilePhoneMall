package cn.hrbeu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.hrbeu.mapper.OrderMapper;
import cn.hrbeu.po.Order;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	OrderMapper orderMapper;
	
	@Override
	public Integer insertOneOrder(Order order) throws Exception {
		// TODO Auto-generated method stub
		orderMapper.insertOneOrder(order);
		return order.getOrderId();
	}

	@Override
	public List<Order> findOrderByUserId(Integer userId) throws Exception {
		// TODO Auto-generated method stub
		return orderMapper.findOrderByUserId(userId);
	}

	@Override
	public void updateOrderByOrder(Order order) throws Exception {
		// TODO Auto-generated method stub
		orderMapper.updateOrderByOrder(order);
	}

	@Override
	public void deleteOneOrderByOrderId(Integer orderId) throws Exception {
		// TODO Auto-generated method stub
		orderMapper.deleteOneOrderByOrderId(orderId);
	}

}
