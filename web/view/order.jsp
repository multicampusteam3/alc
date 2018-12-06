<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<head>
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
<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
		<div class="container">
			<div class="inner-sec-shop px-lg-4 px-3">
				<h3 class="tittle-w3layouts my-lg-4 mt-3">�ֹ� Ȯ�� </h3>
				<div class="checkout-right">
					<h4>������ �ֹ��� �Ʒ��� �����ϴ�.
					</h4>
					<table class="timetable_sub">
						<thead>
							<tr>
								<th>�ֹ� ��ȣ</th>
								<th>�ֹ� ����</th>
								<th>�ݾ�</th>
								<th>�ֹ�����</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="p" items="${orderlist }" varStatus="status">
							<tr class="rem${status.count }">
								<td class="invert"><a href="showorderdetail.alc?oid=${p.oid }">${p.oid } </a></td>
								<td class="invert">${p.o_date }</td>
								<%-- <td class="invert-image">
									<a href="pdetail.alc?pid=${p.o_date }">
										<img src="images/s1.jpg" alt=" " class="img-responsive">
									</a>
								</td> --%>
								<td class="invert">${p.amount }</td>
								<td class="invert">${p.pmt_status }</td>
							</tr>
						</c:forEach>
							
						</tbody>
					</table>
				</div>
				<div class="checkout-left row">
					<%-- <div class="col-md-12 checkout-left-basket">
						<h4>Continue to basket</h4>
						<ul>
						<c:forEach var="p" items="${cartlist }" varStatus="status">
							<li>${p.pname }
								<i>-</i>
								<span id="sumprice${status.count }" val="${p.qt * p.price }">${p.qt * p.price } </span>
							</li>
						</c:forEach>
							
							<li>�հ�
								<i>-</i>
								<span></span>
							</li>
						</ul>
					</div> --%>
					<div class="checkout-right-basket">
						<a href="payment.alc">���� �����ϱ� </a>
					</div>

					<div class="clearfix"> </div>

				</div>

			</div>

		</div>
	</section>