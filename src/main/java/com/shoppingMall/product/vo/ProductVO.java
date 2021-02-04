package com.shoppingMall.product.vo;

import java.sql.Date;
import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component("productVO")
public class ProductVO {
	private int product_no;				// 상품번호
	private String product_name;		// 상품명
	private int product_sort;			// 상품종류
	private String cate_code;			// 종류코드
	private int origin_price;			// 원가
	private int sale_price;				// 할인가
	private String product_color;		// 상품색상
	private String product_content;		// 상품내용
	private String product_image;		// 상품이미지
	private Date product_credate;		// 상품생성일
	
	public ProductVO() {}


	public ProductVO(int product_no, String product_name, int product_sort, String cate_code, int origin_price,
			int sale_price, String product_color, String product_content, String product_image, Date product_credate) {
		super();
		this.product_no = product_no;
		this.product_name = product_name;
		this.product_sort = product_sort;
		this.cate_code = cate_code;
		this.origin_price = origin_price;
		this.sale_price = sale_price;
		this.product_color = product_color;
		this.product_content = product_content;
		this.product_image = product_image;
		this.product_credate = product_credate;
	}


	public int getProduct_no() {
		return product_no;
	}


	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}


	public String getProduct_name() {
		return product_name;
	}


	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}


	public int getProduct_sort() {
		return product_sort;
	}


	public void setProduct_sort(int product_sort) {
		this.product_sort = product_sort;
	}


	public String getCate_code() {
		return cate_code;
	}


	public void setCate_code(String cate_code) {
		this.cate_code = cate_code;
	}


	public int getOrigin_price() {
		return origin_price;
	}


	public void setOrigin_price(int origin_price) {
		this.origin_price = origin_price;
	}


	public int getSale_price() {
		return sale_price;
	}


	public void setSale_price(int sale_price) {
		this.sale_price = sale_price;
	}


	public String getProduct_color() {
		return product_color;
	}


	public void setProduct_color(String product_color) {
		this.product_color = product_color;
	}


	public String getProduct_content() {
		return product_content;
	}


	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}


	public String getProduct_image() {
		return product_image;
	}


	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}


	public Date getProduct_credate() {
		return product_credate;
	}


	public void setProduct_credate(Date product_credate) {
		this.product_credate = product_credate;
	}


	@Override
	public String toString() {
		return "ProductVO [product_no=" + product_no + ", product_name=" + product_name + ", product_sort=" + product_sort
				+ ", cate_code=" + cate_code + ", origin_price=" + origin_price + ", sale_price=" + sale_price
				+ ", product_color=" + product_color + ", product_content=" + product_content + ", product_image="
				+ product_image + ", product_credate=" + product_credate + "]";
	}

	
	

}
