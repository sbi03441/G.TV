<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" 
href="/resources/css/sign_up.css" />

<style>
#cus_info {
   background-color: white;
   width: 1000px;
   height: 300px;
   position: relative;
   left: 250px;
   top: 50px;
   border-radius:5px 5px 5px 5px;
   border-color:black;
   border-width:3px;
   box-shadow: -4px -4px 3px 2px black inset;
}



#payment_history{
 width:1000px;
 height:100px;
 position:relative;
 left:750px;
 top:100px;
 
}

#cus_info img {
   width: 150px;
   height: 150px;
   position: relative;
   left: 95px;
   top: 95px;
}
#mov_table{
 text-align:center;
}
#cus_level{
 color:black;
 position:relative;
 left:590px;
 top:-50px;
 font-size:25px;
}
#cus_balance{
 color:black;
 position:relative;
 left:590px;
 top:-45px;
 font-size:20px;
}
#cus_info_main{
 width:150%;
 height:1500px;
 background-color:white;
}
#cus_info_main li a span{
 color:black;
 float:left;
 padding:25px;
 margin:10px;
 font-size:20px;
 position:relative;
 left:300px;
}

li a:hover{
 font-weight: bold;
 cursor:pointer;
}
#info_menu{
 position:relative;
 right:16px;
 top:40px;
}
#inquiry_history{
  position: absolute;
  left: 450px;
  top: 550px;
  text-align:;
}

#info_edit{
 position:absolute;
 left:50px;
 top:550px;
 width:65%;
 
}
</style>

<script>
$(function(){
    $('#payment_info_btn').click(function(){
       $('#payment_history').load('payment_history');
       $('#inquiry_history').empty();
       $('#info_edit').empty();
    });
});

$(function(){
    $('#inquiry_history_btn').click(function(){
       $('#inquiry_history').load('inquiry_history.jsp');
       $('#payment_history').empty();
       $('#info_edit').empty();
    });
});

$(function(){
    $('#info_edit_btn').click(function(){
       $('#info_edit').load('info_edit');
       $('#inquiry_history').empty();
       $('#payment_history').empty();
    });
});





    
</script>

<div id="cus_info">
   <img src="resources/images/main_movie/profile.png"> <a
      style="color: black; font-size: 35px; position: relative; left: 100px; top: 60px">${id}님</a>
   <div id = "cus_level">고객님은 일반  입니다.</div>
   <div id = "cus_balance">잔액 : 13000</div>   
</div>
<div id = "cus_info_main">
    <ul id = "info_menu">
     <li><a href = "#" onclick = "return false;" id = "payment_info_btn"><span>결제내역</span></a></li>
     <li><a><span>쿠폰함</span></a></li>
     <li><a><span>당첨경품</span></a></li>
     <li><a><span>My 이벤트</span></a></li>
     <li><a href = "#" onclick = "return false;" id = "inquiry_history_btn"><span>1대1 문의</span></a></li>
     <li><a href = "#" onclick = "return false;" id = "info_edit_btn"><span>My 정보관리</span></a></li>
    </ul>
    
    <div id = "payment_history">
 
    </div>
    
    <div id = "inquiry_history">
    
    </div>
    
    <div id = "info_edit">
    
    </div>

</div>

<%@ include file="../include/footer.jsp"%>






