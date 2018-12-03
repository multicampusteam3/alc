<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>

</script>
<style>
img {
	width: 100px;
}
</style>
</head>
<body>
<div id="main_center">
<h1>Product Detail Page</h1>
<img src="img/${prd.p_imgname }">
<h3>NAME : ${prd.pname }</h3>
<h3>PRICE : ${prd.unit_price }</h3>
<h3>REGDATE : ${prd.regdate }</h3>
<a href="pdelete.alc?pid=${prd.pid }">DELETE</a>
<a href="pupdate.alc?pid=${prd.pid }">UPDATE</a>
<a href="plist.alc">돌아가기</a>
</div>
</body>
</html>