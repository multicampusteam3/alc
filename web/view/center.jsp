<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script >
$(document).ready(function(){
	function display(data){
		var result = '';
		$(data).each(function(index, item){
			result += '<h4>';
			result += item.id+' ' +item.name;
			result += '</h4>';
		});
		$('#main_div').html(result);
	};
	
	$('button').click(function(){
		$.ajax({
			url:'cjson.mc',
			success:function(data){
				display(data);
			},
			error:function(){
				alert('error');
			}
		})
	});
})
</script>
<div id="main_center">
<h1>Center</h1>
<button>Click</button>
<div id="main_div">

</div>
</div>