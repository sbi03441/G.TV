/**
 * 
 */

function com_check(){
	if($.trim($("#cont_com").val())==""){
      alert("코멘트를 남겨주세요!");
      $("#cont_com").val("").focus();
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

	

