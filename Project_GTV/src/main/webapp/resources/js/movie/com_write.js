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

/*function comRCheck(){
	if(comfirm("정말 삭제하시겠습니까?") == true){
		document.edit-com.submit();
	}else{
		return false;
	}
}*/


	

