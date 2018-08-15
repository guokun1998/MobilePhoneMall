package cn.hrbeu.mapper;

import cn.hrbeu.po.Shoppingcart;
import cn.hrbeu.po.User;

public interface ShoppingcartMapper {
	public void insertOneShoppingcart(User user);
	
	public Shoppingcart findShoppingcartByUserId(Integer userId);
	
	public void deleteOneShoppingcartByUserId(Integer userId);
	
	public void updateOneShoppingcart(Shoppingcart shoppingcart);

	


}
