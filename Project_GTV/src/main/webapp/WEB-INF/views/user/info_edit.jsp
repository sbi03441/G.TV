<%@ page contentType="text/html; charset=UTF-8"%>

<<<<<<< HEAD
<%
    request.setCharacterEncoding("UTF-8");
%>

<style>
#info_edit2{
 position:relative;
 left:275px;
}
#info_edit2 input{
 color:black;
 display:flex;
 margin-bottom:100px;
 margin-top:10px; 
}
#info_edit2 form{
 color:black;
}
#info_edit_button{
 visibility:hidden;
 color:black;
 background-color:white;
 border-color:black;
 border-width:2px;
 width:280px;
 height:35px;
 
}
#info_edit_check{
 visibility:visible;
 color:black;
 position:relative;
 left:273px;
 background-color:white;
 border-color:black;
 border-width:2px;
 width:280px;
 height:35px;
}
#birth_form{
 display:flex;
 flex-direction: row;
 color:black;
 vertical-align: middle;
}
#birth_form input{
 width:91px;
}
#phone_form{
 display:flex;
 flex-direction: row;
 color:black;
 vertical-align: middle;
}
#phone_form input{
 width:91px;
}
#email_form{
 display:flex;
 flex-direction: row;
 color:black;
 vertical-align: middle;
}
#email_form input{
 width:133px;
}
#form_div{
 position:relative;
 left:275px;
}


</style>

<script>
 $(function(){
	 $('#info_edit_check').click(function(){
		 var button1 = document.getElementById('info_edit_button');
			button1.style.visibility = "visible";
		 var button2 = document.getElementById('info_edit_check');
		    button2.style.visibility = "hidden";
		    $('#user_name').removeAttr("readonly");
		    $('#user_phone1').removeAttr("readonly");
		    $('#user_phone2').removeAttr("readonly");
		    $('#user_phone3').removeAttr("readonly");
		    $('#email').removeAttr("readonly");
		    $('#email_domain').removeAttr("readonly");
		    
		    
	 });
 });
</script>


 <div id = "info_edit2">
 <hr/>
 <form method = "post" action = "info_edit_ok" id = "form_div" name = "vo">
 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
 이름  <input id = "user_name" name = "user_name" value = "${user_name}" readonly>
 아이디  <input id = "user_id" name = "user_id" value = "${user_id}" readonly>
 성별  <input disid = "user_gender" name = "user_gender" value = "${user_gender}" disabled>
 생년월일  <div id = "birth_form"><input id = "user_birth1" name = "user_birth1" value = "${user_birth1}" readonly>_<input id = "user_birth2" name = "user_birth2" value = "${user_birth2}" readonly>_<input id = "user_birth3" name = "user_birth3" value = "${user_birth3}" readonly></div>
 전화번호 <div id = "phone_form"><input id = "user_phone1" name = "user_phone1" value = "${user_phone1}" readonly>_<input id = "user_phone2" name = "user_phone2" value = "${user_phone2}" readonly>_<input id = "user_phone3" name = "user_phone3" value = "${user_phone3}" readonly></div>
 이메일 <div id = "email_form"><input id = "email" name = "email" value = "${email}" readonly>@<input id = "email_domain" name = "email_domain" value = "${email_domain}" readonly></div>
 <button type = "submit" id = "info_edit_button">정보수정</button>
 </form>
 <button type = "button" id = "info_edit_check">정보수정하기</button>
 <hr/>
 
 
=======
<style>
 #info_edit2 input{
  border-width:2px;
  height:27px;
  width:287px;
  font-size:18px;
 }
 #info_edit2{
  width:65%;
  position:relative;
  left:400px;
  
  
 }
 #info_edit2 input{
  color:black;
 }
 #info_edit2 select{
  color:black;
 }
 #info_edit2 option{
  color:black;
 }
</style>


 <div id = "info_edit2">
 <hr/>
  이름 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input style = "margin:15px 0px 15px 0px">
 <hr/>
 아이디 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input style = "margin:15px 0px 15px 0px">
 <hr/>
 비밀번호 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input style = "margin:15px 0px 15px 0px">
 <hr/>
 생년월일 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input style = "margin:15px 5px 15px 0px; border-width:2px; width:90px; height:27px; font-size:18px;"><select style = "margin:15px 5px 15px 0px; border-width:2px; width:90px; height:27px; font-size:18px; border-width:2px;"><option>월</option><option value = "1">1</option><option value = "2">2</option><option value = "3">3</option><option value = "4">4</option><option value = "5">5</option><option value = "6">6</option><option value = "7">7</option><option value = "8">8</option><option value = "9">9</option><option value = "10">10</option><option value = "11">11</option><option value = "12">12</option></select><input style = "margin:15px 3px 15px 0px; border-width:2px; width:90px; height:27px; font-size:18px;">
 <hr/>
 성별 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input style = "margin:15px 0px 15px 0px">
 <hr/>
 이메일 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input style = "margin:15px 0px 15px 0px; width:170px;">@<input style = "margin:15px 0px 15px 0px; width:91px;">
 <hr/>
 휴대전화  &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input style = "margin:15px 1px 15px 0px; border-width:2px; width:84px; height:27px; font-size:18px;">-<input style = "margin:15px 1px 15px 0px; border-width:2px; width:84px; height:27px; font-size:18px;">-<input style = "margin:15px 1px 15px 0px; border-width:2px; width:84px; height:27px; font-size:18px;">
 <hr/>
>>>>>>> c292d2ef857f75cb6d8a46060956bea02e7ddb12
 </div>

