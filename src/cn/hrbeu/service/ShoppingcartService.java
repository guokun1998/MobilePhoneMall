package cn.hrbeu.service;

import cn.hrbeu.po.Shoppingcart;
import cn.hrbeu.po.User;

public interface ShoppingcartService {
	public void insertOneShoppingcart(User user) throws Exception;
	
	public Shoppingcart findShoppingcartByUserId(Integer userId) throws Exception;

	public void updateOneShoppingcart(Shoppingcart shoppingcart) throws Exception;

	public void deleteOneShoppingcartByShoppingcartId(Integer shoppingcartId) throws Exception ;

}
