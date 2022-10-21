/**
 * 
 */

function com_check(){
	if($.trim($("#ment").val())==""){
      alert("코멘트를 남겨주세요!");
      $("#ment").val("").focus();
      return false;
	}
}

var target = document.querySelectorAll('.com_open');
var targetID;

// 팝업 열기
for(var i = 0; i < target.length; i++){
  target[i].addEventListener('click', function(){
    targetID = this.getAttribute('href');
    document.querySelector(targetID).style.display = 'block';
  });
}

	

