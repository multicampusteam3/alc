<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
img {
	width: 100px;
}
</style>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
<div id="main_center">
	<h1>Product List</h1>
		<c:forEach var="p" items="${plist }">
			<h3>
				<img src="img/${p.p_imgname }"><a
					href="pdetail.alc?pid=${p.pid}">${p.pname }</a> ${p.unit_price }<br>
					${p.regdate }
			</h3>
		</c:forEach>
</div>
</body>
</html>