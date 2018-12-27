<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<style>
table {border : 3px solid black;}
th { border : 1px solid red;}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>

<body>
<table>
		
	<c:forEach var="p" items="${list }">
		<tr class="${p.regdate }"><td>${p.regtime }</td><td>${p.pmtdetail }</td><td>${p.pmtamount }</td></tr>
	</c:forEach>
</table>
</body>
</html>