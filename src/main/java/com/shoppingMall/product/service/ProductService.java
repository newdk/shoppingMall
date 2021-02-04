package com.shoppingMall.product.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.shoppingMall.product.vo.ProductVO;

public interface ProductService {
	
//	public Map<String,List<ProductVO>> listProduct() throws Exception;
	public Map productDetail(String _product_id) throws Exception;
	
	public List<String> keywordSearch(String keyword) throws Exception;
//	public List<ProductVO> searchProduct(String searchWord) throws Exception;
}
