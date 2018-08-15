package cn.hrbeu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.hrbeu.mapper.ShoppingcartMapper;
import cn.hrbeu.po.Shoppingcart;
import cn.hrbeu.po.User;



@Service
public class ShoppingcartServiceImpl implements ShoppingcartService{

	
	@Autowired
	private ShoppingcartMapper shoppingcartMapper;



	@Override
	public void insertOneShoppingcart(User user) throws Exception {
		// TODO Auto-generated method stub
		shoppingcartMapper.insertOneShoppingcart(user);
	}



	@Override
	public Shoppingcart findShoppingcartByUserId(Integer userId) throws Exception {
		// TODO Auto-generated method stub
		return shoppingcartMapper.findShoppingcartByUserId(userId);
	}




	@Override
	public void updateOneShoppingcart(Shoppingcart shoppingcart) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public void deleteOneShoppingcartByShoppingcartId(Integer shoppingcartId) throws Exception {
		// TODO Auto-generated method stub
		
	}

	

	
	
	
	

}
