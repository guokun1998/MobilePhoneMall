package cn.hrbeu.po;

public class Shoppingcartdetail {
    private Integer shoppingcartdetailId;

    private Integer shoppingcartId;

    private String goodsName;

    private Integer buyGoodsCount;

	public Integer getShoppingcartdetailId() {
		return shoppingcartdetailId;
	}

	public void setShoppingcartdetailId(Integer shoppingcartdetailId) {
		this.shoppingcartdetailId = shoppingcartdetailId;
	}

	public Integer getShoppingcartId() {
		return shoppingcartId;
	}

	public void setShoppingcartId(Integer shoppingcartId) {
		this.shoppingcartId = shoppingcartId;
	}



	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public Integer getBuyGoodsCount() {
		return buyGoodsCount;
	}

	public void setBuyGoodsCount(Integer buyGoodsCount) {
		this.buyGoodsCount = buyGoodsCount;
	}

    
}