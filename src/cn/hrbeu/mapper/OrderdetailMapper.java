package cn.hrbeu.mapper;


import java.util.List;

import cn.hrbeu.po.Orderdetail;

public interface OrderdetailMapper {
	
	public void insertOneOrderdetail(Orderdetail orderdetail);
	
	public List<Orderdetail> findOrderdetailByOrderId(Integer OrderId);
	
	public void deleteOneOrderdetailByOrderId(Integer OrderId);
	
	public List<Orderdetail> findOrderdetailByGoodsId(Integer goodsId);
}
