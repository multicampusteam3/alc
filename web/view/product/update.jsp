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
</head>
<body>
<div id="main_center">
<h1>Product Update Page</h1>
<form enctype="multipart/form-data" action="pupdateimpl.alc" method="POST">
ID : ${prd.pid }<br>
<input type="hidden" name="pid" value="${prd.pid }">
NAME<input type="text" name="pname" value="${prd.pname }"><br>
UnitPrice<input type="number" name="unit_price" value="${prd.unit_price }"><br>
Inventory<input type="number" name="inventory" value="${prd.inventory }"><br>
IMG<input type="file" name="mf"><br>
<input type="hidden" name="p_imgname" value="${prd.p_imgname }">
<input type="submit" value="UPDATE">

</form>
</div>
</body>
</html>