package cn.hrbeu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hrbeu.mapper.ShoppingcartdetailMapper;
import cn.hrbeu.po.Shoppingcartdetail;



@Service
public class ShoppingcartdetailServiceImpl implements ShoppingcartdetailService{

	
	@Autowired
	private ShoppingcartdetailMapper shoppingcartdetailMapper;

	@Override
	public void insertOneShoppingcartdetail(Shoppingcartdetail shoppingcartdetail) throws Exception {
		// TODO Auto-generated method stub
		shoppingcartdetailMapper.insertOneShoppingcartdetail(shoppingcartdetail);
	}

	@Override
	public List<Shoppingcartdetail> findShoppingcartdetailByShoppingcartId(Integer shoppingcartId) throws Exception {
		
		List<Shoppingcartdetail> shoppingcartdetailList = shoppingcartdetailMapper.findShoppingcartdetailByShoppingcartId(shoppingcartId);
		return shoppingcartdetailList;
	}

	@Override
	public void deleteOneShoppingcartdetailByShoppingcartdetailId(Integer shoppingcartdetailId) throws Exception {
		// TODO Auto-generated method stub
		shoppingcartdetailMapper.deleteOneShoppingcartdetailByShoppingcartdetailId(shoppingcartdetailId);
	}

	@Override
	public void updateShoppingcartdetailByShoppingcartdetail(Shoppingcartdetail shoppingcartdetail)
			throws Exception {
		// TODO Auto-generated method stub
		shoppingcartdetailMapper.updateOneShoppingcartdetailByShoppingcartdetail(shoppingcartdetail);
	}



}
