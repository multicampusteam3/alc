<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
*{
	margin:0;
	padding:0;
	
}
a{
	text-decoration : none;
	color:black;
	
}
ul,li{
	list-style : none;
}
header{
	width: 800px;
	height: 150px;
	background-color:pink;
	margin: 0 auto;
}
#navi{
	width: 800px;
	height: 30px;
	background-color:yellow;
	margin: 0 auto;
}
section{
	width: 800px;
	height: 400px;
	background-color:gray;
	margin: 0 auto;
}
footer{
	width: 800px;
	height: 30px;
	background-color:black;
	margin: 0 auto;
}

ul > li{
	float:left;
	padding:0 10px;
}


#bottom_nav{
	padding:100px 0;
}

#bottom_nav a{
	font-size: 1.5em;
	font-weight: bold;
}
#main_center{
		width:700px;
		height:360px;
		background-color: white;
		margin:auto;
		overflow:auto;
}
table{
	width: 60%;
}
table, th, td{
	border-collapse: collapse;
	border : 1px solid black;
	margin: auto;
}
th,td{
	padding: 5px;
	text-align: center;
}
</style>

<script>

</script>
</head>
<body>
<header>
	<nav id="top_nav">
	<c:choose>
		<c:when test="${login_cust == null }">
			<ul>
				<li><a href="login.mc">LOGIN</a></li>
				<li><a href="register.mc">REGISTER</a></li>
				<li><a href="chart.mc">ABOUT US</a></li>
			</ul>
		</c:when>
		<c:otherwise>
			<ul>
				<li>${login_cust.id }, welcome!</li>
				<li><a href="logout.mc">LOGOUT</a></li>
				<li><a href="">ABOUT US</a></li>
			</ul>
		</c:otherwise>
	</c:choose>
		
	</nav>

	<nav id="bottom_nav">
		<ul>
			<li><a href="custregister.mc">CUST ADD</a></li>
			<li><a href="custlist.mc">CUST LIST</a></li>
			<li><a href="padd.alc">PRODUCT ADD</a></li>
			<li><a href="plist.alc">PRODUCT LIST</a></li>
		</ul>
	</nav>
</header>
<nav id="navi">
	<c:choose>
		<c:when test="${navi != null }">
			${navi }
		</c:when>
		<c:otherwise>
			<a href="main.mc">HOME</a>
		</c:otherwise>
	</c:choose>
</nav>
<section>
	<c:choose>
		<c:when test="${center !=null }">
			<jsp:include page="${center }.jsp"/>
		</c:when>
		<c:otherwise>
			<jsp:include page="center.jsp"/>
		</c:otherwise>
	</c:choose>
</section>
<footer></footer>
</body>
</html>