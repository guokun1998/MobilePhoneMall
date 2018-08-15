package cn.hrbeu.mapper;

import java.util.List;

import cn.hrbeu.po.Goods;

public interface GoodsMapper {
	public List<Goods> findGoodsByGoodsName(String goodsName);
	public List<Goods> findCanSellGoodsByGoodsName(String goodsName);
	public void updateGoodsHasSelledByGoods(Goods goods);
	public List<Goods> findGoodsListByGoodsName(String goodsName);
	public void deleteGoodsListByGoodsId(Goods goods);
	public void updateGoodsOffpriceByGoods(Goods goods);
	
	public void insertOneGoods(Goods goods);
	
	public void deleteHasSelledGoodsByGoodsHasSelled(Goods goods);
}
