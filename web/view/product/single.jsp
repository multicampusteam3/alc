<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--/shop-->
		<section class="banner-bottom-wthreelayouts py-lg-5 py-3 ${sec }">
			<div>
			<div>
			<div class="container">
				<div class="inner-sec-shop pt-lg-4 pt-3">
					<div class="row">
							<div class="col-lg-4 single-right-left ">
									<div class="grid images_3_of_2">
										<div class="flexslider1">
											<ul class="slides">
												<li data-thumb="/resource/images/${prd.p_imgname }">
													<div class="thumb-image"> <img src="resource/images/${prd.p_imgname }" data-imagezoom="true" class="img-fluid" alt=" "> </div>
												</li>
												<!-- <li data-thumb="images/d1.jpg">
													<div class="thumb-image"> <img src="images/d1.jpg" data-imagezoom="true" class="img-fluid" alt=" "> </div>
												</li> --> 
												<%-- <li data-thumb="/resource/images/${prd.p_imgname }">
													<div class="thumb-image"> <img src="/resource/images/${prd.p_imgname }" data-imagezoom="true" class="img-fluid" alt=" "> </div>
												</li> --%>
											</ul>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
								<div class="col-lg-8 single-right-left simpleCart_shelfItem ${sec }">
									<h3>${prd.pname }</h3>
									<p><span class="item_price">${prd.unit_price }</span>
										<!-- <del>$1,199</del> -->
									</p>

									<br>
									<br>
									<br>
									<br>
									<br>
									<form action="addcart.alc" method="post">
												<label class="mb-2">수량 : </label>
												<input type="number" name="qt">
												
										<br>
										<hr>		
										<div class="occasion-cart">
												<div class="googles single-item singlepage">
	
															<input type="hidden" name="cmd" value="_cart">
															<input type="hidden" name="add" value="1">
															<input type="hidden" name="user_id" value="${login_user.user_id }">
															<input type="hidden" name="pid" value="${prd.pid }">
															<input type="hidden" name="pname" value="${prd.pname }">
															<input type="hidden" name="price" value="${prd.unit_price }">
															<button type="submit" class="googles-cart pgoogles-cart">
																장바구니 담기
															</button>
												</div>
										</div>
									</form>
									
									<form action="order.alc" method="post">
													<input type="hidden" name="qt" value="1">
													<input type="hidden" name="user_id" value="${login_user.user_id }">
													<input type="hidden" name="pid" value="${prd.pid }">
													<input type="hidden" name="pname" value="${prd.pname }">
													<input type="hidden" name="price" value="${prd.unit_price }">
													<button type="submit" class="googles-cart pgoogles-cart">
														바로구매하기
													</button>
									</form>
									
								</div>
					</div>
									
								</div>
								<div class="clearfix"> </div>
								<!--/tabs-->
								<div class="responsive_tabs">
									<div id="horizontalTab">
										<ul class="resp-tabs-list ${sec }">
											<li>Description</li>
											<li>Reviews</li>
											<li>Information</li>
										</ul>
										<div class="resp-tabs-container ${sec }">
											<!--/tab_one-->
											<div class="tab1">
					
												<div class="single_page">
													<h6>Lorem ipsum dolor sit amet</h6>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie
														blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt
														ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore
														magna aliqua.</p>
													<p class="para">Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie
														blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt
														ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore
														magna aliqua.</p>
												</div>
											</div>
											<!--//tab_one-->
											<div class="tab2">
					
												<div class="single_page">
													<div class="bootstrap-tab-text-grids">
														<div class="bootstrap-tab-text-grid">
															<div class="bootstrap-tab-text-grid-left">
																<img src="images/team1.jpg" alt=" " class="img-fluid">
															</div>
															<div class="bootstrap-tab-text-grid-right">
																<ul>
																	<li><a href="#">Admin</a></li>
																	<li><a href="#"><i class="fa fa-reply-all" aria-hidden="true"></i> Reply</a></li>
																</ul>
																<p>Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget.Ut enim ad minima veniam,
																	quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis
																	autem vel eum iure reprehenderit.</p>
															</div>
															<div class="clearfix"> </div>
														</div>
														<!-- <div class="add-review">
															<h4>add a review</h4>
															<form action="#" method="post">
																	<input class="form-control" type="text" name="Name" placeholder="Enter your email..." required="">
																<input class="form-control" type="email" name="Email" placeholder="Enter your email..." required="">
																<textarea name="Message" required=""></textarea>
																<input type="submit" value="SEND">
															</form>
														</div> -->
													</div>
					
												</div>
											</div>
											<div class="tab3">
					
												<div class="single_page">
													<h6>Irayz Butterfly Sunglasses  (Black)</h6>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie
														blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt
														ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore
														magna aliqua.</p>
													<p class="para">Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie
														blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt
														ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore
														magna aliqua.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--//tabs-->
					
					</div>
				</div>
			</div>
				<div class="container-fluid">
					<!--/slide-->
					
					<!--//slider-->
				</div>
		</section>
	