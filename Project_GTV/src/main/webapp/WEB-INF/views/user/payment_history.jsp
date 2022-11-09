<%@ page contentType="text/html; charset=UTF-8"%>


<style>
 #mov_table{
  color:black;
 }
</style>

 <div id="payment_info">
		<table id = "mov_table">
		    <hr/>
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
			<c:if test = "${empty moviename}">
			
			</c:if> 
			<c:if test = "${not empty mlist}">
			<tr>
			<c:forEach var = "m" items = "${mlist.mvlist}">
			  
			 <td>${mlist.reservenum}</td>
			 <td>${m.moviename}</td>
			 <td>${mlist.seat}</td>
			 <td>${mlist.adult}</td>
			 <td>${mlist.teen}</td>
			 <td>${mlist.payment}</td>	
			 <td>${m.strdate}</td>
			 <td>${m.strhour}:${m.strmin}</td>
			 <td>${m.branchname}</td>
			 <td>${m.thname}</td>
		     <td><button type = "button" value = "${mlist.reservenum}" id = "cancel_m" onclick = "cancel(${mlist.reservenum})"></button> </td>  
			</c:forEach>
			</tr>
			</c:if>
			
		</table>
		<hr/>
	</div>
	
	<script>
	  function cancel(reservenum){
		  var params = "reservenum=" + reservenum;
		  
		  var token = $("meta[name='_csrf']").attr("content");
		  var header = $("meta[name='_csrf_header']").attr("content");
		  
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
	  }
	</script>

	
	
	
	
	
	
	
	
	
	
	
	