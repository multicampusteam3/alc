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
��ǰ�̸�<input type="text" name="pname"><br>
 �з��ڵ�<select name="p_code" form="product_register">
  <option value="10" selected="selected">����</option>
  <option value="20">����</option>
  <option value="30">����</option>
</select>
<br> 
��ǰ����<input type="number" name="unit_price"><br>
�ʱ����<input type="number" name="inventory"><br>
��ǰ�̹���<input type="file" name="mf"><br>
<input id="pbutton" type="submit" value="��ǰ���">
</form>
</div>
</body>
</html>