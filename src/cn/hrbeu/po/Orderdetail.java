package cn.hrbeu.po;

public class Orderdetail {
	private Integer orderdetailId;
	
    private Integer orderId;

    private Integer goodsId;



	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Integer getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}

	public Integer getOrderdetailId() {
		return orderdetailId;
	}

	public void setOrderdetailId(Integer orderdetailId) {
		this.orderdetailId = orderdetailId;
	}

	
    
}