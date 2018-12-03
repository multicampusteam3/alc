<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
/*     $(document).ready(function(){
        $('#pbutton').click(function(){
            $('#product_register').attr('method','post');
            $('#product_register').attr('action','paddimpl.mc');
            $('#product_register').submit();
        });
    }); */
</script>
</head>
<body>
<div id="main_center">
<h1>Product Register Page</h1>
<form id="product_register" enctype="multipart/form-data" method="post" action="paddimpl.mc">
NAME<input type="text" name="name"><br>
PRICE<input type="number" name="price"><br>
IMGNAME<input type="file" name="mf"><br>
<input id="pbutton" type="submit" value="Register">
</form>
</div>
</body>
</html>