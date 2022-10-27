<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<script src="/resources/js/jquery.js"></script>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<style>
 #SerPwd_in{
  background-color:white;
  width:650px;
  height:700px;
  position:relative;
  left:430px;
  display:flex;
  flex-direction:column;
 }
 
 #SerPwd_in_title{
  color:black;
  font-size:28px;
  margin:auto;
  position:relative;
  top:-125px;
 }
 
 #SerPwd_in_desc{
  color:black;
  margin:auto;
  position:relative;
  top:-270px;
 }
 
 #find_pwd{
  color:black;
  position:relative;
  left:175px;
  top:-150px;
  border-width:2px;
  width:300px;
  height:40px;
 }
</style>
<body>
<div id = "SerPwd_in">
<b id = "SerPwd_in_title">비밀번호 찾기</b>
<form name = "m" method = "post" action = "serPwd_in_ok.jsp">
 <input type = "password" id = "find_pwd">
</form>
<b id = "SerPwd_in_desc">찾고자 하는 비밀번호의 아이디를 입력해주세요.</b>

 
</div>

</body>
</html>
<%@ include file="../include/footer.jsp"%>