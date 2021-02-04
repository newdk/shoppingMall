<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set var="myCartList"  value="${cartMap.myCartList}"  />
<c:set var="myProductList"  value="${cartMap.myGoodsList}"  />

<c:set  var="totalProductNum" value="0" />  <!--주문 개수 -->
<c:set  var="totalDeliveryPrice" value="0" /> <!-- 총 배송비 --> 
<c:set  var="totalDiscountedPrice" value="0" /> <!-- 총 할인금액 -->
<head>

</head>
<body>
	<table class="list_view">
		<tbody align=center >
			<tr style="background:#33ff00" >
				<td class="fixed" >구분</td>
				<td colspan=2 class="fixed">상품명</td>
				<td>정가</td>
				<td>판매가</td>
				<td>수량</td>
				<td>합계</td>
				<td>주문</td>
			</tr>
			
			 <c:choose>
				    <c:when test="${ empty myCartList }">
				    <tr>
				       <td colspan=8 class="fixed">
				         <strong>장바구니에 상품이 없습니다.</strong>
				       </td>
				     </tr>
				    </c:when>
			        <c:otherwise>
			 <tr>       
               <form name="frm_order_all_cart">
				      <c:forEach var="item" items="${myProductList }" varStatus="cnt">
				       <c:set var="count" value="${myCartList[cnt.count-1].count}" />
				       <c:set var="cart_no" value="${myCartList[cnt.count-1].cart_id}" />
					<td><input type="checkbox" name="checked_goods"  checked  value="${item.product_no }"  onClick="calcProductPrice(${item.sale_price },this)"></td>
					<%-- <td class="image">
					<a href="${contextPath}/cart/productDetail.do?product_no=${item.product_no }">
						<img width="75" alt="" src="${contextPath}/thumbnails.do?goods_id=${item.product_no}&fileName=${item.goods_fileName}"  />
					</a>
					</td> --%>
					<td>
						<h2>
							<a href="${contextPath}/product/productDetail.do?product_no=${item.product_no }">${item.product_name }</a>
						</h2>
					</td>
					<td class="price"><span>${item.origin_price }원</span></td>
					<td>
					   <strong>
					      <fmt:formatNumber  value="${item.sale_price*0.9}" type="number" var="discounted_price" />
				            ${discounted_price}원(10%할인)
				         </strong>
					</td>
					<td>
					   <input type="text" id="count" name="count" size=3 value="${count}"><br>
						<a href="javascript:modify_cart_qty(${item.product_no },${item.sale_price*0.9 },${cnt.count-1 });" >
						    <img width=25 alt=""  src="${contextPath}/resources/image/btn_modify_qty.jpg"> 
						</a>
					</td>
					<td>
					   <strong>
					    <fmt:formatNumber  value="${item.sale_price*0.9*count}" type="number" var="total_sales_price" />
				         ${total_sales_price}원
					</strong> </td>
					<td>
					      <%-- <a href="javascript:fn_order_each_goods('${item.product_no }','${item.product_name }','${item.sale_price}','${item.goods_fileName}');"> --%>
					      <a href="javascript:fn_order_each_goods('${item.product_no }','${item.product_name }','${item.sale_price}');">
					       	<img width="75" alt=""  src="${contextPath}/resources/image/btn_order.jpg">
							</a><br>
					 	<a href="#"> 
					 	   <img width="75" alt=""
							src="${contextPath}/resources/image/btn_order_later.jpg">
						</a><br> 
						<a href="#"> 
						   <img width="75" alt=""
							src="${contextPath}/resources/image/btn_add_list.jpg">
						</A><br> 
						<a href="javascript:delete_cart_goods('${cart_no}');""> 
						   <img width="75" alt=""
							   src="${contextPath}/resources/image/btn_delete.jpg">
					   </a>
					</td>
			</tr>
				<c:set  var="totalGoodsPrice" value="${totalGoodsPrice+item.sale_price*0.9*count }" />
				<c:set  var="totalGoodsNum" value="${totalGoodsNum+1 }" />
			   </c:forEach>
		    
		</tbody>
	</table>
	
     	
	<div class="clear"></div>
	
	
	 </c:otherwise>
	</c:choose> 
	<br>
	<br>
	
	
	
	<%-- <table  width=80%   class="list_view" style="background:#cacaff">
	<tbody>
	     <tr  align=center  class="fixed" >
	       <td class="fixed">총 상품수 </td>
	       <td>총 상품금액</td>
	       <td>  </td>
	       <td>총 배송비</td>
	       <td>  </td>
	       <td>총 할인 금액 </td>
	       <td>  </td>
	       <td>최종 결제금액</td>
	     </tr>
		<tr cellpadding=40  align=center >
			<td id="">
			  <p id="p_totalGoodsNum">${totalGoodsNum}개 </p>
			  <input id="h_totalGoodsNum"type="hidden" value="${totalGoodsNum}"  />
			</td>
	       <td>
	          <p id="p_totalGoodsPrice">
	          <fmt:formatNumber  value="${totalGoodsPrice}" type="number" var="total_goods_price" />
				         ${total_goods_price}원
	          </p>
	          <input id="h_totalGoodsPrice"type="hidden" value="${totalGoodsPrice}" />
	       </td>
	       <td> 
	          <img width="25" alt="" src="${contextPath}/resources/image/plus.jpg">  
	       </td>
	       <td>
	         <p id="p_totalDeliveryPrice">${totalDeliveryPrice }원  </p>
	         <input id="h_totalDeliveryPrice"type="hidden" value="${totalDeliveryPrice}" />
	       </td>
	       <td> 
	         <img width="25" alt="" src="${contextPath}/resources/image/minus.jpg"> 
	       </td>
	       <td>  
	         <p id="p_totalSalesPrice"> 
				         ${totalDiscountedPrice}원
	         </p>
	         <input id="h_totalSalesPrice"type="hidden" value="${totalSalesPrice}" />
	       </td>
	       <td>  
	         <img width="25" alt="" src="${contextPath}/resources/image/equal.jpg">
	       </td>
	       <td>
	          <p id="p_final_totalPrice">
	          <fmt:formatNumber  value="${totalGoodsPrice+totalDeliveryPrice-totalDiscountedPrice}" type="number" var="total_price" />
	            ${total_price}원
	          </p>
	          <input id="h_final_totalPrice" type="hidden" value="${totalGoodsPrice+totalDeliveryPrice-totalDiscountedPrice}" />
	       </td>
		</tr>
		</tbody>
	</table>
	
	
	<center>
    <br><br>	
		 <a href="javascript:fn_order_all_cart_goods()">
		 	<img width="75" alt="" src="${contextPath}/resources/image/btn_order_final.jpg">
		 </a>
		 <a href="#">
		 	<img width="75" alt="" src="${contextPath}/resources/image/btn_shoping_continue.jpg">
		 </a>
	<center>
	 --%>
	
</form>	

</body>