package com.shoppingMall.product.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingMall.common.base.BaseController;
import com.shoppingMall.product.service.ProductService;
import com.shoppingMall.product.vo.ProductVO;

import net.sf.json.JSONObject;

@Controller("productController")
@RequestMapping(value="/product")
public class ProductControllerImpl extends BaseController implements ProductController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/productDetail.do" ,method = RequestMethod.GET)
	public ModelAndView productDetail(@RequestParam("product_no") String product_no,
			                       HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName=(String)request.getAttribute("viewName");
		HttpSession session=request.getSession();
		Map productMap=productService.productDetail(product_no);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("productMap", productMap);
		ProductVO productVO=(ProductVO)productMap.get("productVO");
		addproductInQuick(product_no,productVO,session);
		return mav;
	}
	
	@RequestMapping(value="/keywordSearch.do",method = RequestMethod.GET,produces = "application/text; charset=utf8")
	public @ResponseBody String  keywordSearch(@RequestParam("keyword") String keyword,
			                                  HttpServletRequest request, HttpServletResponse response) throws Exception{
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		//System.out.println(keyword);
		if(keyword == null || keyword.equals(""))
		   return null ;
	
		keyword = keyword.toUpperCase();
	    List<String> keywordList =productService.keywordSearch(keyword);
	    
	
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("keyword", keywordList);
		 		
	    String jsonInfo = jsonObject.toString();
	   // System.out.println(jsonInfo);
	    return jsonInfo ;
	}
	/*
	@RequestMapping(value="/searchproduct.do" ,method = RequestMethod.GET)
	public ModelAndView searchproduct(@RequestParam("searchWord") String searchWord,
			                       HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName=(String)request.getAttribute("viewName");
		List<ProductVO> productList=productService.searchProduct(searchWord);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("productList", productList);
		return mav;
		
	}
	*/
	private void addproductInQuick(String product_no,ProductVO productVO,HttpSession session){
		boolean already_existed=false;
		List<ProductVO> quickProductList; 
		quickProductList = (ArrayList<ProductVO>)session.getAttribute("quickProductList");
		
		if(quickProductList!=null){
			if(quickProductList.size() < 4){ 
				for(int i=0; i<quickProductList.size();i++){
					ProductVO _productBean=(ProductVO)quickProductList.get(i);
					if(product_no.equals(_productBean.getProduct_no())){
						already_existed=true;
						break;
					}
				}
				if(already_existed==false){
					quickProductList.add(productVO);
				}
			}
			
		}else{
			quickProductList =new ArrayList<ProductVO>();
			quickProductList.add(productVO);
			
		}
		session.setAttribute("quickProductList",quickProductList);
		session.setAttribute("quickProductListNum", quickProductList.size());
	}

	
}
