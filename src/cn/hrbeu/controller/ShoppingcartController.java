package cn.hrbeu.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.hrbeu.po.Goods;
import cn.hrbeu.po.Order;
import cn.hrbeu.po.Orderdetail;
import cn.hrbeu.po.Shoppingcart;
import cn.hrbeu.po.ShoppingcartQuery;
import cn.hrbeu.po.Shoppingcartdetail;
import cn.hrbeu.po.User;
import cn.hrbeu.service.GoodsService;
import cn.hrbeu.service.OrderService;
import cn.hrbeu.service.OrderdetailService;
import cn.hrbeu.service.ShoppingcartService;
import cn.hrbeu.service.ShoppingcartdetailService;


@Controller
@RequestMapping("shoppingcart")
public class ShoppingcartController {
	@Autowired
	private ShoppingcartService shoppingcartService;
	@Autowired
	private ShoppingcartdetailService shoppingcartdetailService;
	@Autowired
	private GoodsService goodsService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderdetailService orderdetailService;
	
	/**
	 * 我的购物车controller
	 * @param request
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/myShoppingcart")
	public String findShoppingcartList(HttpServletRequest request,HttpSession session) throws Exception{
		//通过HttpSession得到user
		User user = (User) session.getAttribute("user");
		//通过查询user.getUserId得到shoppingcart
		Shoppingcart shoppingcart = shoppingcartService.findShoppingcartByUserId(user.getUserId());
		//通过查询shoppingcart得到shoppingcartdetailList
		List<Shoppingcartdetail> shoppingcartdetailList = shoppingcartdetailService.findShoppingcartdetailByShoppingcartId(shoppingcart.getShoppingcartId());
		//生成一个shoppingcartQueryList用来存储将要在页面展示的数据
		List<ShoppingcartQuery> shoppingcartQueryList = new ArrayList<ShoppingcartQuery>();
		//遍历shoppingcartdetailList，对其进行操作
		for(Shoppingcartdetail shoppingcartdetail : shoppingcartdetailList){
			//新建一个shoppingcartQuery，填入数据
			ShoppingcartQuery shoppingcartQuery = new ShoppingcartQuery();
			shoppingcartQuery.setBuyGoodsCount(shoppingcartdetail.getBuyGoodsCount());
			List<Goods> goodsList = goodsService.findGoodsByGoodsName(shoppingcartdetail.getGoodsName());
			Goods goods = goodsList.get(0);
			shoppingcartQuery.setShoppingcartdetailId(shoppingcartdetail.getShoppingcartdetailId());
			shoppingcartQuery.setGoodsName(goods.getGoodsName());
			shoppingcartQuery.setGoodsOffprice(goods.getGoodsOffprice());
			//将填入的数据插入List中
			shoppingcartQueryList.add(shoppingcartQuery);
			
		}
		//将shoppingcartQueryList写入HttpSession域中
		session.setAttribute("shoppingcartQueryList", shoppingcartQueryList);
		return "../jsp/myShoppingcart";
	}


	/**
	 * 结算controller
	 * @param request
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/pay")
	public String payShoppingcart(HttpServletRequest request,HttpSession session) throws Exception{

		//通过HttpSession得到user
		User user = (User) session.getAttribute("user");
		//暂未用到
		List<String> cantBuyGoodsName = new ArrayList<>();
		List<String> canBuyGoodsName = new ArrayList<>();
		//得到购物车详情
		List<ShoppingcartQuery> shoppingcartQueryList = (List<ShoppingcartQuery>) session.getAttribute("shoppingcartQueryList");
		for(ShoppingcartQuery shoppingcartQuery : shoppingcartQueryList){
			//对每项购物车详情进行判断
			
			List<Goods> goodsList = goodsService.findCanSellGoodsByGoodsName(shoppingcartQuery.getGoodsName());
			if(goodsList.size()<shoppingcartQuery.getBuyGoodsCount()){
				//该商品库存不够
				cantBuyGoodsName.add(shoppingcartQuery.getGoodsName());
				
			}
			else{
				canBuyGoodsName.add(shoppingcartQuery.getGoodsName());
				
				//该订单详情商品数量够，可以出库
				//创建订单，传入userId，orderPrice，buyTime，userAddress，userTelephone
				Order order = new Order();
				order.setUserId(user.getUserId());
				order.setOrderPrice(shoppingcartQuery.getPriceSum());
				order.setBuyTime(new Date());
				order.setUserAddress(user.getUserAddress());
				order.setUserTelephone(user.getUserTelephone());
				//根据自增获取id
				order.setOrderId(orderService.insertOneOrder(order));
				
				int count = shoppingcartQuery.getBuyGoodsCount();
				//创建订单详情，传入商品编号,将商品goodsHasSelled设为true
				for(Goods goods : goodsList){
					if(count > 0){
						//创建订单详情
						Orderdetail orderdetail = new Orderdetail();
						
						orderdetail.setOrderId(order.getOrderId());
						orderdetail.setGoodsId(goods.getGoodsId());
						orderdetailService.insertOneOrderdetail(orderdetail);
						//修改商品信息
						goods.setGoodsHasSelled("true");
						goodsService.updateGoodsHasSelledByGoods(goods);
						count--;
						
					}
					else{
						break;
					}
					
				}
				//删除购物车详情
				shoppingcartdetailService.deleteOneShoppingcartdetailByShoppingcartdetailId(shoppingcartQuery.getShoppingcartdetailId());
				
				
			}
			
		}
		//返回cantBuyGoodsName，canBuyGoodsName
		request.setAttribute("cantBuyGoodsName", cantBuyGoodsName);
		request.setAttribute("canBuyGoodsName", canBuyGoodsName);
		//更新HttpSession中订单
		List<Order> orderList = orderService.findOrderByUserId(user.getUserId());
		session.removeAttribute("orderList");
		session.setAttribute("orderList", orderList);
		return "../jsp/paySuccess";
		

	}
	
}



