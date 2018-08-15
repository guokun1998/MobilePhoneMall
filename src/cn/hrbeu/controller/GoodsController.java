package cn.hrbeu.controller;



import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.hrbeu.po.Goods;
import cn.hrbeu.po.Order;
import cn.hrbeu.po.Orderdetail;
import cn.hrbeu.po.User;
import cn.hrbeu.service.GoodsService;
import cn.hrbeu.service.OrderdetailService;

@Controller
@RequestMapping("goods")
public class GoodsController {
	@Autowired
	private GoodsService goodsService;
	@Autowired
	private OrderdetailService orderdetailService;
	
	/**
	 * 商品详情页controller，根据HttpServletRequest发出的goodsName，进行查询，并写入model
	 * @param request
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/goodsDetail")
	public String findGoodsByGoodsName(HttpServletRequest request,Model model) throws Exception{
		//从HttpServletRequest得到goodsName
		List<Goods> goodsList = goodsService.findGoodsByGoodsName(request.getParameter("goodsName"));
		if(goodsList.isEmpty()){
			//商品卖完了
		}
		else{
			model.addAttribute("goods",goodsList.get(0));
		}			
		return "/jsp/goodsDetail";
	}
	
	/**
	 * goodsList列表页
	 * @param request
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/goodsList")
	public String findGoodsListByGoodsName(HttpServletRequest request,Model model) throws Exception{
		//从HttpServletRequest得到goodsName
		String goodsName = request.getParameter("goodsName");
		//查询得到goodsList
		List<Goods> goodsList = goodsService.findGoodsListByGoodsName(goodsName);
		//写入HttpServletRequest
		request.setAttribute("goodsList", goodsList);
		
		return "forward:/jsp/goodsList.jsp";
	}
	
	/**
	 * 更新商品促销价
	 * @param request
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/updateGoodsOffprice")
	public String updateGoodsOffpriceByGoods(HttpServletRequest request,HttpSession session) throws Exception {
		//从HttpServletRequest得到goodsName
		String goodsName = request.getParameter("goodsName");
		//查询得到goodsList
		List<Goods> goodsList = goodsService.findGoodsByGoodsName(goodsName);
		//从HttpServletRequest得到goodsOffprice
		double goodsOffprice = Double.parseDouble(request.getParameter("goodsOffprice"));
		//得到例子
		Goods goods = goodsList.get(0);
		//更改价格
		goods.setGoodsOffprice(goodsOffprice);
		goodsService.updateGoodsOffpriceByGoods(goods);
		
		return "redirect:../jsp/updateSuccess.jsp";
	}
	
	/**
	 * 补充一个商品的库存，该商品必须存在于数据库，输入商品名，插入数量，生产日期
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/insertOneGoods")
	public String insertLotsOfGoods(HttpServletRequest request) throws Exception {
		//从HttpServletRequest得到goodsName，insertGoodsCount，goodsFactorydate
		String goodsName = request.getParameter("goodsName");
		Integer insertGoodsCount = Integer.parseInt(request.getParameter("insertGoodsCount"));
		//转换日期类型
		DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd");
		String s = request.getParameter("goodsFactorydate");
		Date goodsFactorydate = fmt.parse(s);
		//得到商品列表
		List<Goods> goodsList = goodsService.findGoodsByGoodsName(goodsName);
		//取其中第一个为例
		Goods goods = goodsList.get(0);
		//更新例子中的生产日期
		goods.setGoodsFactorydate(goodsFactorydate);
		//循环插入
		for(int i=0;i<insertGoodsCount;i++){
			goodsService.insertOneGoods(goods);
		}
		
		
		return "redirect:../jsp/insertSuccess.jsp";
	}
	
	/**
	 * 删除已卖出的商品，输入商品名即可。只有在订单详情中不存在此商品时才可删除
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/deleteHasSelledGoods")
	public String deleteHasSelledGoods(HttpServletRequest request) throws Exception {
		//从HttpServletRequest得到goodsName
		String goodsName = request.getParameter("goodsName");
		//查询得到商品列表
		List<Goods> goodsList = goodsService.findGoodsByGoodsName(goodsName);
		//遍历商品列表进行操作
		for(Goods goods:goodsList){
			if(goods.getGoodsHasSelled().equals("true")){
				//如果是已卖出的
				List<Orderdetail> orderdetail = orderdetailService.findOrderdetailByGoodsId(goods.getGoodsId());
				if(orderdetail.isEmpty()){
					//并且订单详情中已不存在该商品时，即可删除
					goodsService.deleteHasSelledGoodsByGoodsHasSelled(goods);
				}
				
			}
		}

		return "redirect:../jsp/deleteSuccess.jsp";
	}
}