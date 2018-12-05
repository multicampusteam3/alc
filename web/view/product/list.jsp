<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>

<div class="row">
	<c:forEach var="p" items="${plist }">
		<div class="col-md-3 product-men women_two shop-gd">
			<div class="product-googles-info googles">
				<div class="men-pro-item">
					<div class="men-thumb-item">
						<img src="<c:url value="/resource/images/${p.p_imgname }" />"
							class="img-fluid" alt="">
						<div class="men-cart-pro">
							<div class="inner-men-cart-pro">
								<a href="pdetail.alc?pid=${p.pid }" class="link-product-add-cart">상세</a>
							</div>
						</div>
						<span class="product-new-top">New</span>
					</div>
					<div class="item-info-product">
						<div class="info-product-price">
							<div class="grid_meta">
								<div class="product_price">
									<h4>
										<a href="single.html">${p.pname}</a>
									</h4>
									<div class="grid-price mt-2">
										<span class="money ">${p.unit_price }</span>
										
									</div>
								</div>
								
							<!-- 	<ul class="stars">
									<li><a href="#"> <i class="fa fa-star"
											aria-hidden="true"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-star"
											aria-hidden="true"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-star"
											aria-hidden="true"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-star"
											aria-hidden="true"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-star-half-o"
											aria-hidden="true"></i>
									</a></li>
								</ul> -->
							</div>
							<!--cart-->
							<%-- <div class="googles single-item hvr-outline-out">
								<form action="addcart.alc" method="post">
									<!-- <input type="hidden" name="cmd" value="_cart">  -->
									<!-- <input type="hidden" name="add" value="1"> -->
									<input type="hidden" name="qt" value="1"> 
									<input type="hidden" name="pid" value="${p.pid }"> 
									<input type="hidden" name="price" value="${p.unit_price }">
									<input type="hidden" name="user_id" value="${login_user.user_id }">
									<button type="submit" class="googles-cart pgoogles-cart">
										<i class="fas fa-cart-plus"></i>
									</button>
								</form>
							</div> --%>
							<!--cart-->
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>

	</c:forEach>
</div>

