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
    $( '.theater_bt' ).click( function() {
       $( '#theater_gy_btn'+ $(this).val() ).toggleClass( 'active' );
    });
 });
 
 $( document ).ready( function() {
    $( '.theater_bt' ).click( function() {
       $( '#theater_dae_btn'+ $(this).val() ).toggleClass( 'active' );
    });
 });

 $( document ).ready( function() {
    $( '.li-day-btn' ).click( function() {
       $( '#day-btn'+ $(this).val() ).toggleClass( 'select' );
    });
 });

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
			alert("영화 선택");
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
		data: params
	});
	
}

















 
 
 
 