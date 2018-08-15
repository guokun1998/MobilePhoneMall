package cn.hrbeu.po;

public class ShoppingcartQuery extends Goods {
	private int buyGoodsCount;
	
	private double priceSum;
	
	private Integer shoppingcartdetailId;

	public int getBuyGoodsCount() {
		return buyGoodsCount;
	}

	public void setBuyGoodsCount(int buyGoodsCount) {
		this.buyGoodsCount = buyGoodsCount;
	}

	public double getPriceSum() {
		return super.getGoodsOffprice()*this.getBuyGoodsCount();
	}

	public void setPriceSum(double priceSum) {
		this.priceSum = priceSum;
	}

	public Integer getShoppingcartdetailId() {
		return shoppingcartdetailId;
	}

	public void setShoppingcartdetailId(Integer shoppingcartdetailId) {
		this.shoppingcartdetailId = shoppingcartdetailId;
	}
}
