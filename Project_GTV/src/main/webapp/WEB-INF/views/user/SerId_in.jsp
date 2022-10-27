<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<script src="/resources/js/jquery.js"></script>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<style>
#SerId_in {
	background-color: white;
	width: 650px;
	height: 700px;
	position: relative;
	left: 430px;
	display: flex;
	flex-direction: column;
}

#SerId_in_title {
	color: black;
	font-size: 28px;
	margin: auto;
	position: relative;
	top: -20px;
}

#SerId_in_desc {
	color: black;
	margin: auto;
	position: relative;
	top: 0px;
}

#user_name {
	color: black;
	position: relative;
	left: 175px;
	top: -150px;
	border-width: 2px;
	width: 300px;
	height: 40px;
	font-size: 18px;
}

#user_birth1 {
	color: black;
	position: relative;
	left: -131px;
	top: -90px;
	border-width: 2px;
	width: 96px;
	height: 40px;
	font-size: 18px;
}

#user_birth2 {
	color: black;
	position: relative;
	left: -131px;
	top: -90px;
	border-width: 2px;
	width: 96px;
	height: 40px;
	font-size: 18px;
}

#user_birth3 {
	color: black;
	position: relative;
	left: -131px;
	top: -90px;
	border-width: 2px;
	width: 96px;
	height: 40px;
	font-size: 18px;
}

#SerId_button {
	color: black;
	background-color: white;
	border-width: 2px;
	border-color: black;
	width: 150px;
	height: 37px;
	position: relative;
	left: 249px;
	top: -65px;
}

#SerId_button {
	cursor: pointer;
}

#birth_form{
 position:relative;
 left:305px;
 top:-47px;
}
#SerId_reslt{
 position:relative;
 top:215px;
 width:700px;
 height:500px;
}
</style>
<script>
$(function(){
	$('#SerId_button').click(function(){
		$('#SerId_reslt').empty();
		$.ajax({
			type:"POST",
			url:"/SerId_in_ok",
			data:{
				user_name : $('#user_name'),
				user_birth1 : $('#user_birth1'),
				user_birth2 : $('#user_birth2'),
				user_birth3 : $('#user_birth3')				
			},
			success: function(data){
				$('#SerId_reslt').load('SerId_in_ok.jsp');
			}
			
		});
	});
});
</script>
<body>
	<div id="SerId_in">
		<b id="SerId_in_title">아이디 찾기</b> 
		<div id = "SerId_reslt">
		<input type="text" id="user_name" name = "user_name"
			placeholder="이름">
		<div id = "birth_form">
			<input type="text" id="user_birth1" name = "user_birth1" placeholder="년"> <input
				type="text" id="user_birth2" name = "user_birth2" placeholder="월"> <input
				type="text" id="user_birth3" name = "user_birth3" placeholder="일"></div>
			<button type="button" id="SerId_button">찾아보기</button>
			<b id="SerId_in_desc">찾고자 하는 아이디의 이름과 생년월일을 적어주세요</b>
			

               </div>
		</div>
</body>
</html>
<%@ include file="../include/footer.jsp"%>