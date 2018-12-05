<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- </head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head> -->
		<!--/shop-->
		<section class="banner-bottom-wthreelayouts py-lg-5 py-3 bg_beer">
			<div class="container-fluid">
				<div class="inner-sec-shop px-lg-4 px-3">
					<!-- <h3 class="tittle-w3layouts my-lg-4 mt-3">Every Beer</h3> -->
					<div class="row">
						<!-- product left -->
						<div class="side-bar col-lg-3">
							<div class="search-hotel">
								<h3 class="agileits-sear-head">Search Here..</h3>
								<form action="#" method="post">
										<input class="form-control" type="search" name="search" placeholder="Search here..." >
										<button class="btn1">
												<i class="fas fa-search"></i>
										</button>
										<div class="clearfix"> </div>
									</form>
							</div>
							<!-- price range -->
							<div class="range">
								<h3 class="agileits-sear-head">Price range</h3>
								<ul class="dropdown-menu6">
									<li>

										<div id="slider-range"></div>
										<input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
									</li>
								</ul>
							</div>
							<!-- //price range -->
							<!--preference -->
							<div class="left-side">
								<h3 class="agileits-sear-head">Deal Offer On</h3>
								<ul>
									<li>
										<input type="checkbox" class="checked">
										<span class="span">Backpack</span>
									</li>
									<li>
										<input type="checkbox" class="checked">
										<span class="span">Phone Pocket</span>
									</li>

								</ul>
							</div>
							<!-- // preference -->
							<!-- discounts -->
							<div class="left-side">
								<h3 class="agileits-sear-head">Discount</h3>
								<ul>
									<li>
										<input type="checkbox" class="checked">
										<span class="span">5% or More</span>
									</li>
									<li>
										<input type="checkbox" class="checked">
										<span class="span">10% or More</span>
									</li>
									<li>
										<input type="checkbox" class="checked">
										<span class="span">20% or More</span>
									</li>
									<li>
										<input type="checkbox" class="checked">
										<span class="span">30% or More</span>
									</li>
									<li>
										<input type="checkbox" class="checked">
										<span class="span">50% or More</span>
									</li>
									<li>
										<input type="checkbox" class="checked">
										<span class="span">60% or More</span>
									</li>
								</ul>
							</div>
							<!-- //discounts -->
							<!-- reviews -->
							<div class="customer-rev left-side">
								<h3 class="agileits-sear-head">Customer Review</h3>
								<ul>
									<li>
										<a href="#">
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star" aria-hidden="true"></i>
											<span>5.0</span>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star-o" aria-hidden="true"></i>
											<span>4.0</span>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star-half-o" aria-hidden="true"></i>
											<i class="fa fa-star-o" aria-hidden="true"></i>
											<span>3.5</span>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star-o" aria-hidden="true"></i>
											<i class="fa fa-star-o" aria-hidden="true"></i>
											<span>3.0</span>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star" aria-hidden="true"></i>
											<i class="fa fa-star-half-o" aria-hidden="true"></i>
											<i class="fa fa-star-o" aria-hidden="true"></i>
											<i class="fa fa-star-o" aria-hidden="true"></i>
											<span>2.5</span>
										</a>
									</li>
								</ul>
							</div>
							<!-- //reviews -->
							
						</div>
						<!-- //product left -->
						<!--/product right-->
						<div class="left-ads-display col-lg-9">
							<div class="wrapper_top_shop bg_beer">
								
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
							<div class="googles single-item hvr-outline-out">
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

							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>

	</c:forEach>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
								
								