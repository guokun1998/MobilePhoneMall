package cn.hrbeu.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import cn.hrbeu.mapper.GoodsMapper;
import cn.hrbeu.po.Goods;
import cn.hrbeu.po.User;



@Service
public class GoodsServiceImpl implements GoodsService{

	
	@Autowired
	private GoodsMapper goodsMapper;
	
	
	@Override
	public List<Goods> findGoodsByGoodsName(String goodsName) throws Exception {
		// TODO Auto-generated method stub
		return goodsMapper.findGoodsByGoodsName(goodsName);
	}


	@Override
	public List<Goods> findCanSellGoodsByGoodsName(String goodsName) throws Exception {
		// TODO Auto-generated method stub
		return goodsMapper.findCanSellGoodsByGoodsName(goodsName);
	}


	@Override
	public void updateGoodsHasSelledByGoods(Goods goods) throws Exception {
		// TODO Auto-generated method stub
		goodsMapper.updateGoodsHasSelledByGoods(goods);
	}

	
	@Override
	public List<Goods> findGoodsListByGoodsName(String goodsName) throws Exception {
		// TODO Auto-generated method stub
		return goodsMapper.findGoodsListByGoodsName(goodsName);
	}
	
	@Override
	public void updateGoodsOffpriceByGoods(Goods goods) throws Exception {
		// TODO Auto-generated method stub
		goodsMapper.updateGoodsOffpriceByGoods(goods);
	}


	@Override
	public void insertOneGoods(Goods goods) throws Exception {
		// TODO Auto-generated method stub
		goodsMapper.insertOneGoods(goods);
	}


	@Override
	public void deleteHasSelledGoodsByGoodsHasSelled(Goods goods) throws Exception {
		// TODO Auto-generated method stub
		goodsMapper.deleteHasSelledGoodsByGoodsHasSelled(goods);
	}

}
