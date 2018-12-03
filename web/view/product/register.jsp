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
<form id="product_register" enctype="multipart/form-data" method="post" action="paddimpl.alc">
상품이름<input type="text" name="pname"><br>
 분류코드<select name="p_code" form="product_register">
  <option value="10" selected="selected">맥주</option>
  <option value="20">소주</option>
  <option value="30">양주</option>
</select>
<br> 
단품가격<input type="number" name="unit_price"><br>
초기재고<input type="number" name="inventory"><br>
상품이미지<input type="file" name="mf"><br>
<input id="pbutton" type="submit" value="상품등록">
</form>
</div>
</body>
</html>