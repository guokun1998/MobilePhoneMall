package cn.hrbeu.controller;




import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.hrbeu.po.Shoppingcart;
import cn.hrbeu.po.ShoppingcartQuery;
import cn.hrbeu.po.Shoppingcartdetail;
import cn.hrbeu.po.User;
import cn.hrbeu.service.ShoppingcartService;
import cn.hrbeu.service.ShoppingcartdetailService;


@Controller
@RequestMapping("shoppingcartdetail")
public class ShoppingcartdetailController {
	@Autowired
	private ShoppingcartdetailService shoppingcartdetailService;
	@Autowired
	private ShoppingcartService shoppingcartService;
	
	@RequestMapping("/insertOneShoppingcartdetail")
	public String insertOneShoppingcartdetail(HttpServletRequest request,HttpSession session) throws Exception{
		//得到HttpServletRequest得到userId，再查询得到Shoppingcart，再得到ShoppingcartId

		User user = (User) session.getAttribute("user");
		
		Shoppingcart shoppingcart = shoppingcartService.findShoppingcartByUserId(user.getUserId());
		
		Shoppingcartdetail shoppingcartdetail = new Shoppingcartdetail();
		shoppingcartdetail.setGoodsName(request.getParameter("goodsName"));
		shoppingcartdetail.setBuyGoodsCount(Integer.parseInt(request.getParameter("buyGoodsCount")));
		shoppingcartdetail.setShoppingcartId(shoppingcart.getShoppingcartId());
		
		shoppingcartdetailService.insertOneShoppingcartdetail(shoppingcartdetail);
		return "../jsp/addSuccess";
	}
	
	/**
	 * 更新购买商品的数量
	 * @param request
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/updatebuyGoodsCount")
	public String updatebuyGoodsCount(HttpServletRequest request,HttpSession session) throws Exception{
		Integer shoppingcartdetailId = Integer.parseInt(request.getParameter("shoppingcartdetailId"));
		List<ShoppingcartQuery> shoppingcartQueryList = (List<ShoppingcartQuery>) session.getAttribute("shoppingcartQueryList");
		Integer buyGoodsCount = Integer.parseInt(request.getParameter("buyGoodsCount"));
		for(ShoppingcartQuery shoppingcartQuery:shoppingcartQueryList){
			if(shoppingcartQuery.getShoppingcartdetailId()==shoppingcartdetailId){
				shoppingcartQuery.setBuyGoodsCount(buyGoodsCount);
				Shoppingcartdetail shoppingcartdetail = new Shoppingcartdetail();
				shoppingcartdetail.setBuyGoodsCount(buyGoodsCount);
				shoppingcartdetail.setShoppingcartdetailId(shoppingcartdetailId);
				shoppingcartdetailService.updateShoppingcartdetailByShoppingcartdetail(shoppingcartdetail);
			}
		}
		session.removeAttribute("shoppingcartQueryList");
		session.setAttribute("shoppingcartQueryList", shoppingcartQueryList);
		
		return "redirect:../jsp/myShoppingcart.jsp";
		
	}
	
	/**
	 * 删除商品详情
	 * @param request
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/deleteshoppingcartdetail")
	public String deleteOneshoppingcartdetailByShoppingcartdetailId(HttpServletRequest request,HttpSession session) throws Exception{
		Integer ShoppingcartdetailId = Integer.parseInt(request.getParameter("shoppingcartdetailId"));
		List<ShoppingcartQuery> shoppingcartQueryList = (List<ShoppingcartQuery>) session.getAttribute("shoppingcartQueryList");
		ShoppingcartQuery deleteShoppingcartQuery = null;
		for(ShoppingcartQuery shoppingcartQuery:shoppingcartQueryList){
			if(shoppingcartQuery.getShoppingcartdetailId()==ShoppingcartdetailId){
				shoppingcartdetailService.deleteOneShoppingcartdetailByShoppingcartdetailId(ShoppingcartdetailId);
				
				deleteShoppingcartQuery = shoppingcartQuery;
				
			}
		}
		shoppingcartQueryList.remove(deleteShoppingcartQuery);
		session.removeAttribute("shoppingcartQueryList");
		session.setAttribute("shoppingcartQueryList", shoppingcartQueryList);
		
		return "redirect:../jsp/myShoppingcart.jsp";
		
	}
	

}
