<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
 #mov_table3{
  color:black;
  position:relative;
  right:1000px;
  width:500px;
 }




 #cancel_m{
  width:60px;
  height:30px;
  color:black;
  border-width:2px;
  border-color:black;
  background-color:white;
 }
 #cancel_m:hover{
  cursor:pointer;
 }
 .Tbody2 th,
 .Tbody2 td{
  width:500px;
  padding:0px 5px 0px 5px;
  color: black;
  width:100px;
  height:50px;
  text-align:center;

 }
 .Tbody2{
 position:relative;
 left:-500px;
 top:-50px;
 width:1000px;
 color:black;
 }
 
 
 
</style>



      <table>
          
      <tbody class = "Tbody2">
           
         <th>예매번호</th>
         <th>영화이름</th>
         <th>좌석</th>
         <th>성인</th>
         <th>청소년</th>
         <th>결제금액</th>
         <th>상영날짜</th>
         <th>상영시간</th>
         <th>지점</th>
         <th>상영관</th>
         <th>예매취소</th>
         <c:if test = "${empty mlist}">
         
         </c:if> 
         <c:if test = "${not empty mlist}">
         
         
         <c:forEach var = "m" items = "${mlist}">
         <tr>
          <td>${m.reservenum}</td>
          <td>${m.mvlist.moviename}</td>
          <td>${m.seat}</td>
          <td>${m.adult}</td>
          <td>${m.teen}</td>
          <td>${m.payment}</td>   
          <td>${m.mvlist.strdate}</td>
          <td> ${m.mvlist.strhour}:${m.mvlist.strmin}</td>
          <td> ${m.mvlist.branchname}</td>
          <td>${m.mvlist.thname}</td>
           <td><button type = "button" value = "${m.reservenum}" id = "cancel_m" onclick = "cancel(${m.reservenum})">예매취소</button> </td>  
          
    
         
         
         </c:forEach>
         
         </c:if>
         </tbody>
         
      </table>

   
   <script>
     function cancel(reservenum){
        var params = "reservenum=" + reservenum;
        
        var token = $("meta[name='_csrf']").attr("content");
        var header = $("meta[name='_csrf_header']").attr("content");
        
        
        if(confirm('정말 삭제하시겠습니까?') == true){
            $.ajax({
                type:"POST",
                url:"mv_cancel",
                data: params,
                beforeSend : function (xhr){
                      xhr.setRequestHeader(header, token)
                  },
                success:function(data){
                   
                },
                error:function(e){
                   alert(e.responseText);
                }
             });
        	
        	location='/cus_info';
        }else{return ;}
        

        
        
        
     }
   </script>

   
   
   
   
   
   
   
   
   
   
   
   