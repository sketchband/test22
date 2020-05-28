function Insert_check(){
		if(document.reg.pw.value!=document.reg.repw.value){
			alert("비밀번호를 확인해주세요");
			document.reg.repw.focus();
			return;
		}
		document.reg.submit();
}
	
	
