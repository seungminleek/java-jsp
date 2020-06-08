function passCheck() {
	if (document.frm.pass.value == "") {
		alert("비밀번호를 입력해주세요.");
		frm.pass.focus();
		return false;
	}
}

function empCheck() {
	if (document.frm.id.value == "") {
		alert("아이디를 입력해주세요.");
		frm.id.focus();
		return false;
	} else if (document.frm.pass.value == "") {
		alert("비밀번호를 입력해주세요.");
		frm.pass.focus();
		return false;
	} else if (document.frm.name.value == "") {
		alert("이름을 입력해주세요.");
		frm.name.focus();
		return false;
	} else if (document.frm.phone.value == ""){
		alert("전화번호를 입력해주세요.");
		frm.phone.focus();
		return false;
	}
}

function loginCheck() {
	if (document.frm.id.value == "") {
		alert("아이디를 입력해주세요.");
		frm.id.focus();
		return false;
	} else if (document.frm.pass.value == "") {
		alert("비밀번호를 입력해주세요.");
		frm.pass.focus();
		return false;
	}
}