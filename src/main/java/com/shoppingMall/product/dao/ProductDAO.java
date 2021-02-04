package com.shoppingMall.product.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;

import com.shoppingMall.product.vo.ProductVO;
//import com.shoppingMall.product.vo.ImageFileVO;

public interface ProductDAO {
	public List<ProductVO> selectProductList(String productStatus) throws DataAccessException;
	public List<String> selectKeywordSearch(String keyword) throws DataAccessException;
	public ProductVO selectProductDetail(String product_no) throws DataAccessException;
//	public List<ImageFileVO> selectProductsDetailImage(String product_id) throws DataAccessException;
//	public List<ProductVO> selectProductBySearchWord(String searchWord) throws DataAccessException;
}
