package cn.hrbeu.service;

import java.util.List;

import cn.hrbeu.po.Orderdetail;

public interface OrderdetailService {
	public void insertOneOrderdetail(Orderdetail orderdetail) throws Exception;
	
	
	public List<Orderdetail> findOrderdetailByOrderId(Integer OrderId) throws Exception;
	
	public void deleteOneOrderdetailByOrderId(Integer OrderId) throws Exception;
	
	public List<Orderdetail> findOrderdetailByGoodsId(Integer goodsId) throws Exception;
}
