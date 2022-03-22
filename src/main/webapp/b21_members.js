/**
 * 
 */
 
 function infoConfirm(){
 	if(document.reg_frm.id.value.length == 0){
 		alert("아이디는 필수 항목입니다.");
 		reg_frm.id.focus();
 		return;
 	}
 	
 	if(document.reg_frm.id.value.length < 4){
 		alert("아이디는 4글자 이상으로 구성되어야합니다.");
 		reg_frm.id.focus();
 		return;
 	}
 	
 	if(document.reg_frm.pw.value.length == 0){
 		alert("비밀번호는 필수 항목입니다.");
 		reg_frm.pw.focus();
 		return;
 	}
 	
 	if(document.reg_frm.pw.value != document.reg_frm.pw_check.value){
 		alert("비밀번호가 일치하지 않습니다.");
 		reg_frm.pw.focus();
 		return;
 	}
 	
 	if(document.reg_frm.name.value.length == 0){
 		alert("이름은 필수 항목입니다.");
 		reg_frm.name.focus();
 		return;
 	}
 	
 	if(document.reg_frm.eMail.value.length == 0){
 		alert("메일은 필수 항목입니다.");
 		reg_frm.eMail.focus();
 		return;
 	}
 	
 	if(document.reg_frm.address.value.length == 0){
 		alert("주소는 필수 항목입니다.");
 		reg_frm.address.focus();
 		return;
 	}
 	
 	document.reg_frm.submit();
 }
 
 function updateInfoConfirm(){
 	if(document.reg_frm.pw.value.length == 0){
 		alert("비밀번호는 필수 항목입니다.");
 		reg_frm.pw.focus();
 		return;
 	}
 	
 	if(document.reg_frm.pw.value != document.reg_frm.pw_check.value){
 		alert("비밀번호가 일치하지 않습니다.");
 		reg_frm.pw.focus();
 		return;
 	}
 	 	
 	if(document.reg_frm.eMail.value.length == 0){
 		alert("메일은 필수 항목입니다.");
 		reg_frm.eMail.focus();
 		return;
 	}
 	
 	if(document.reg_frm.address.value.length == 0){
 		alert("주소는 필수 항목입니다.");
 		reg_frm.address.focus();
 		return;
 	}
 	
 	document.reg_frm.submit();
 }
 
 function login(){
 	
 	if(document.reg_frm.id.value.length < 4){
 		alert("아이디를 입력하세요.(아이디는 4자 이상입니다.)");
 		reg_frm.id.focus();
 		return;
 	}
 	
 	if(document.reg_frm.pw.value.length <= 0){
 		alert("비밀번호를 입력하세요..");
 		reg_frm.pw.focus();
 		return;
 	}
 	
 	document.reg_frm.submit();
 }