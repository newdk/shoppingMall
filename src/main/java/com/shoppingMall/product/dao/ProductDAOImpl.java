package com.shoppingMall.product.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.shoppingMall.product.vo.ProductVO;
//import com.shoppingMall.product.vo.ImageFileVO;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO{
	@Autowired
	private SqlSession sqlSession;
	

	@Override
	public List<ProductVO> selectProductList(String productStatus ) throws DataAccessException {
		List<ProductVO> productList=(ArrayList)sqlSession.selectList("mapper.product.selectProductList",productStatus);
	   return productList;	
     
	}
	
	
	/*
	@Override
	public List<ImageFileVO> selectProductDetailImage(String product_no) throws DataAccessException{
		List<ImageFileVO> imageList=(ArrayList)sqlSession.selectList("mapper.product.selectProductDetailImage",product_no);
		return imageList;
	}
	
	@Override
	public ArrayList selectProductBySearchWord(String searchWord) throws DataAccessException{
		ArrayList list=(ArrayList)sqlSession.selectList("mapper.product.selectProductBySearchWord",searchWord);
		 return list;
	}
	*/
	
	@Override
	public List<String> selectKeywordSearch(String keyword) throws DataAccessException {
	   List<String> list=(ArrayList)sqlSession.selectList("mapper.product.selectKeywordSearch",keyword);
	   return list;
	}
	
	
	
	@Override
	public ProductVO selectProductDetail(String product_no) throws DataAccessException{
		ProductVO productVO=(ProductVO)sqlSession.selectOne("mapper.product.selectProductDetail",product_no);
		return productVO;
	}
	
}
