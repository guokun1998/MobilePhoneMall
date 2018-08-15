package cn.hrbeu.service;

import java.util.List;

import cn.hrbeu.po.Order;
import cn.hrbeu.po.Shoppingcartdetail;

public interface ShoppingcartdetailService {
	public void insertOneShoppingcartdetail(Shoppingcartdetail shoppingcartdetail) throws Exception;
	
	public List<Shoppingcartdetail> findShoppingcartdetailByShoppingcartId(Integer shoppingcartId) throws Exception;
	
	public void deleteOneShoppingcartdetailByShoppingcartdetailId(Integer shoppingcartdetailId) throws Exception;
	
	public void updateShoppingcartdetailByShoppingcartdetail(Shoppingcartdetail shoppingcartdetail) throws Exception;
	
}
