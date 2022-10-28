/**
 * 
 */
 
 
 function count(type)  {
  const resultElement = document.getElementById('now');
  
  let number = resultElement.innerText;
  
  if(type === 'plus') {
    number = parseInt(number) + 1;
  }else if(type === 'minus')  {
    number = parseInt(number) - 1;
  }
  
  if(number<0){
  
  }else if(number>=0){
  	if(number<7){
  		resultElement.innerText = number;
  	}

  }
  
}
 
 function count2(type)  {
  const resultElement = document.getElementById('now2');
  
  let number = resultElement.innerText;
  
  if(type === 'plus') {
    number = parseInt(number) + 1;
  }else if(type === 'minus')  {
    number = parseInt(number) - 1;
  }
  if(number<0){
  
  }else if(number>=0){
  	if(number<7){
  		resultElement.innerText = number;
  	}

  }
  
}



 $( document ).ready( function() {
    $( '.hour_btn' ).click( function() {
       $( '#hour_btn'+ $(this).val() ).toggleClass( 'sel' );
    });
 });


$( document ).ready( function() {
    $( '.seat-condition' ).click( function() {
       $( '#seat_btn'+ $(this).val() ).toggleClass( 'on' );
    });
 });


function mnClk(movienum){
	if($('#movieSel').val() == ""){
		$('#movie_btn_0' + movienum).addClass('active');
	} else {
		$('#movie_btn_0' + $('#movieSel').val()).removeClass('active');
		$('#movie_btn_0' + movienum).addClass('active');
	}
	
	
	$('#movieSel').val(movienum);
	
	var params = "movienum=" + movienum;

	$.ajax({
		type:"POST",
		url:"movieData",
		data: params,
		success:function(data){
			
		},
		error:function(e){
			alert(e.responseText);
		}
	});
	
}


function regionClk(theaternum){
	
	if($('#regionSel').val() == ""){
		$('#theater_seo_btn_' + theaternum).addClass('active');
	} else {
		$('#theater_seo_btn_' + $('#regionSel').val()).removeClass('active');
		$('#theater_seo_btn_' + theaternum).addClass('active');
	}
	$('#regionSel').val(theaternum);
	
	var params = "theaternum=" + theaternum;
	
	$.ajax({
		type:"POST",
		url:"regionDetailList",
		data: params,
		success:function(data){
			
		},
		error:function(e){
			alert(e.responseText);
		}
	});
	
}


function dateClk(year,month,day){
	
	if($('#dateSel').val() == ""){
		$('#day-btn_'+day).addClass('select');
	} else {
		$('#day-btn_' + $('#dateSel').val()).removeClass('select');
		$('#day-btn_' +day).addClass('select');
	}
	$('#dateSel').val(day);
	var strMonth = "";
	
	if(month<10){
		strMonth = "0" + String(month);
	}else{
		strMonth = String(month);
	}
	
	var strDate = "";
	
	strDate = year+"."+strMonth+"."+day;
	
	

	$.ajax({
		type:"POST",
		url:"movieTotalData",
		data: {"movienum":$movieSel,"theaternum":$regionSel},
		dataType:"json",
		success:function(data){
			alert("날짜 선택");
		},
		error:function(e){
			alert(e.responseText);
		}
	});
	
	
	
	
	

}















 
 
 
 