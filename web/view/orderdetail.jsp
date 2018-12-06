 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<head>
	<title>Goggles Ecommerce Category Bootstrap responsive Web Template | Checkout :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Goggles a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/login_overlay.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/style6.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/shop.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/checkout.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/easy-responsive-tabs.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/style.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/fontawesome-all.css">
	<link href="//fonts.googleapis.com/css?family=Inconsolata:400,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">    
	    
</head> 
	<!--checkout-->
	<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
		<div class="container">
			<div class="inner-sec-shop px-lg-4 px-3">
			<form action="order.alc" method="post">
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
							<input type="hidden" name="pid" value="${p.pid }">
							<input type="hidden" name="pname" value="${p.pname }">
							<input type="hidden" name="cid" value="${p.cid }">
							<input type="hidden" name="price" value="${p.price }">
							<input type="hidden" name="amount" value="15000">
							<input type="hidden" name="price" value="${p.price }">
							<input type="hidden" name="qt" value="${p.qt }">
							<tr class="rem${status.count }">
								<td class="invert">${status.count }</td>
								<td class="invert-image">
									<a href="pdetail.alc?pid=${p.pid }">
										<img src="resource/images/alcimgs/soju_hite.jpg" alt=" " class="img-responsive">
									</a>
								</td>
								<td class="invert">
									<div class="quantity">
										<div class="quantity-select">
											<div class="entry value-minus">&nbsp;</div>
											<div class="entry value">
												<span>${p.qt }</span>
											</div>
											<div class="entry value-plus active">&nbsp;</div>
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
					<input type="hidden" name="user_id" value="${login_user.user_id }">
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
						<a href="orderdetail.alc">결제 진행하기 </a>
						<button type="submit" class="googles-cart pgoogles-cart">
							결제 진행
						</button>
					</div>
			
					<div class="clearfix"> </div>

				</div>
			</form>
			</div>

		</div>
	</section>
	<script src="<c:url value="/resource/js/jquery-2.2.3.min.js" />"> </script>
		<script >
		$(document).ready(function(){
			var price = $('span[id^=sumprice]');
			var total= 0;
			
			$(price).each(function(index,element){
			    total = element.val() + total;
			    
			});
			document.body.innerHTML = txt;
		});
		</script>
		<script>
		
		$(document).ready(function () {
			$(".button-log a").click(function () {
				$(".overlay-login").fadeToggle(200);
				$(this).toggleClass('btn-open').toggleClass('btn-close');
			});
		});
		$('.overlay-close1').on('click', function () {
			$(".overlay-login").fadeToggle(200);
			$(".button-log a").toggleClass('btn-open').toggleClass('btn-close');
			open = false;
		});
	</script>
	<!--//checkout-->
<%-- 	
		<!--jQuery-->
	<script src="<c:url value="/resource/js/jquery-2.2.3.min.js" />"></script>
	<!-- newsletter modal -->
	<!--search jQuery-->
	<script src="<c:url value="/resource/js/modernizr-2.6.2.min.js" />"></script>
	<script src="<c:url value="/resource/js/classie-search.js" />"></script>
	<script src="<c:url value="/resource/js/demo1-search.js" />"></script>
	<!--//search jQuery-->
	<!-- cart-js -->
	<script src="<c:url value="/resource/js/minicart.js" />"></script>
	<script>
		googles.render();

		googles.cart.on('googles_checkout', function (evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {}
			}
		});
	</script>
	<!-- //cart-js -->
	<script>
		$(document).ready(function () {
			$(".button-log a").click(function () {
				$(".overlay-login").fadeToggle(200);
				$(this).toggleClass('btn-open').toggleClass('btn-close');
			});
		});
		$('.overlay-close1').on('click', function () {
			$(".overlay-login").fadeToggle(200);
			$(".button-log a").toggleClass('btn-open').toggleClass('btn-close');
			open = false;
		});
	</script>
	 --%>
	<!-- carousel -->
	
<%-- 
	<!-- dropdown nav -->
	<script>
		$(document).ready(function () {
			$(".dropdown").hover(
				function () {
					$('.dropdown-menu', this).stop(true, true).slideDown("fast");
					$(this).toggleClass('open');
				},
				function () {
					$('.dropdown-menu', this).stop(true, true).slideUp("fast");
					$(this).toggleClass('open');
				}
			);
		});
	</script>
	<!-- //dropdown nav -->
	<script src="<c:url value="/resource/js/move-top.js" />"></script>
    <script src="<c:url value="/resource/js/easing.js" />"></script>
    <script>
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            /*
            						var defaults = {
            							  containerID: 'toTop', // fading element id
            							containerHoverID: 'toTopHover', // fading element hover id
            							scrollSpeed: 1200,
            							easingType: 'linear' 
            						 };
            						*/

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!--// end-smoth-scrolling -->


	<script src="<c:url value="/resource/js/bootstrap.js" />"></script>
	 --%>
	<!-- js file -->
	