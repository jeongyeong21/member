<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
</head>
<body>
<script>
$(document).ready(function(){
	$('#add').click(function(){
		if($('#member_id').val()==''){
			alert('아이디');		
		}else if($('#member_pw').val()==''){
			alert('비번');
		}else if($('#member_name').val()==''){
			alert('이름');
		}else if($('.member_sex:checked').length==0){
			alert('성별');
		}else if($('#member_age').val()==''){
			alert('나이');
		}else{
		$('#addform').submit();
		}
	});
});



</script>
<h1>member</h1>
<form id="addform" action="./memberaddaction.jsp" method="post">
	<table border="1">
	<tr>	
		<td>member_id</td>
		<td>
		<input type="text" id="member_id" name="member_id"/>
		</td>
	</tr>	
	<tr>	
		<td>member_pw</td>
		<td>
		<input type="text" id="member_pw" name="member_pw"/>
		</td>
	</tr>	
	<tr>	
		<td>member_name</td>
		<td>
		<input type="text" id="member_name" name="member_name"/>
		</td>
	</tr>	
	<tr>	
		<td>member_sex</td>
		<td>
		<input type="radio" class="member_sex" name="member_sex" value="남"/>남
		<input type="radio" class="member_sex" name="member_sex" value="여"/>여
		</td>
	</tr>	
	<tr>	
		<td>member_age</td>
		<td>
		<input type="text" id="member_age" name="member_age"/>
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="button" id="add" value="회원가입"/>
		</td>
	</tr>
			
</table>
</form>
</body>
</html>