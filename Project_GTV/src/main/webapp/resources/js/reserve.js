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
    $( '.movie' ).click( function() {
       $( '#movie_btn'+ $(this).val() ).toggleClass( 'active' );
    });
 });


$( document ).ready( function() {
    $( '.theater_bt' ).click( function() {
       $( '#theater_seo_btn'+ $(this).val() ).toggleClass( 'active' );
    });
 });

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




 
 
 
 