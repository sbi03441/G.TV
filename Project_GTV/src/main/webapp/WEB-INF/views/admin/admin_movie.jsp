<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메인화면</title>
<style>
#admin_body{
	width:1300px; height:1000px; border:1px solid black;
	margin: 40px auto;
}
#admin_header{
	width:1278px; height:160px; border:1px solid black;
	margin:10px;
}
#admin_menu{
	width:900px; height:140px; border:1px solid black;
	margin:10px 0px 0px 10px; float:left;
}
#admin_menu ul li{
    float:left;
    list-style:none;
    margin:15px 0px 0px 0px;
    padding:0px 65px;
}
#main_title{
	width:878px; height:50px;
	margin: 10px 10px 0px;
	
	text-align: center;
}
#admin_logout1{
	width:340px; height:140px; border:1px solid black;
	margin:10px 0px 0px 10px; float:left;
}
#admin_logout2{
    margin: 50px 0px 0px 130px;	
}
#admin_cont{
    width:1278px; height:800px;
    border:1px solid black;
    margin:10px 0px 0px 10px;
}
a:link{text-decoration:none;}
a:visited{text-decoration:none;}
a:hover{text-decoration:underline;}
a:active{text-decoration:none;}
</style>
</head>
<body>
	 <div id="admin_body">	  
			<div id="admin_header">			   
				   <div id="admin_menu">
				   		<div id="main_title">
				   			<h2>관리자 영화관리</h2>
				   		</div>
					    <ul>
						     <li><a href="admin_main.jsp">메인</a></li>
						     <li><a href="admin_member.jsp">회원관리</a></li>
						     <li><a href="admin_movie.jsp">영화관리</a></li>
						     <li><a href="#">혹시몰라</a></li>
					    </ul>
				   </div>
			   
				   <div id="admin_logout1">
				   		<div id="admin_logout2">
				   			<form method="post" action="admin_logout">
						     <input type="submit" value="로그아웃" />
					    	</form>
				   		</div>
				   </div>
		  	</div>
		  
			<div id="admin_cont" style="background-image: url('./resources/images/admin/bono.jpg');
				background-size: 900px;	opacity: 1;">
			</div>
	 </div>
</body>
</html>