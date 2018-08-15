package cn.hrbeu.mapper;

import java.util.List;

import cn.hrbeu.po.Shoppingcartdetail;

public interface ShoppingcartdetailMapper {
	public void insertOneShoppingcartdetail(Shoppingcartdetail shoppingcartdetail);
	
	public List<Shoppingcartdetail> findShoppingcartdetailByShoppingcartId(Integer shoppingcartId);
	
	public void deleteOneShoppingcartdetailByShoppingcartdetailId(Integer shoppingcartdetailId);
	
	public void updateOneShoppingcartdetailByShoppingcartdetail(Shoppingcartdetail shoppingcartdetail);
}
