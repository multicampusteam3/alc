<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
		<div class="container">
			<div class="inner-sec-shop px-lg-4 px-3">
				<h3 class="tittle-w3layouts my-lg-4 mt-3">Checkout </h3>
				<div class="checkout-right">
					<h4>고객님의 장바구니엔 ${fn:length(cartlist) }개의 상품이 담겨 있습니다.
					</h4>
					<table class="timetable_sub">
						<thead>
							<tr>
								<th>SL No.</th>
								<th>Product</th>
								<th>Quantity</th>
								<th>Product Name</th>

								<th>Price</th>
								<th>Remove</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="p" items="${cartlist }" varStatus="status">
							<tr class="rem${status.count }">
								<td class="invert">${status.count }</td>
								<td class="invert-image">
									<a href="pdetail.alc?pid=${p.pid }">
										<img src="images/s1.jpg" alt=" " class="img-responsive">
									</a>
								</td>
								<td class="invert">
									<div class="quantity">
										<div class="quantity-select">
											<div class="entry value">
												<span>${p.qt }</span>
											</div>
										</div>
									</div>
								</td>
								<td class="invert">${p.pname }</td>
								<td class="invert">${p.price }</td>
								<td class="invert">
									<div class="rem">
										<a href="cartdelete.alc?cid=${p.cid }"><div class="close${status.count }"></div></a> 
									</div>

								</td>
							</tr>
						</c:forEach>
							
						</tbody>
					</table>
				</div>
				<div class="checkout-left row">
					<div class="col-md-12 checkout-left-basket">
						<h4>Continue to basket</h4>
						<ul>
						<c:forEach var="p" items="${cartlist }" varStatus="status">
							<li>${p.pname }
								<i>-</i>
								<span id="sumprice${status.count }" val="${p.qt * p.price }">${p.qt * p.price } </span>
							</li>
						</c:forEach>
							
							<li>합계
								<i>-</i>
								<span></span>
							</li>
						</ul>
					</div>
					<div class="checkout-right-basket">
						<a href="payment.alc">결제 진행하기 </a>
					</div>

					<div class="clearfix"> </div>

				</div>

			</div>

		</div>
	</section>