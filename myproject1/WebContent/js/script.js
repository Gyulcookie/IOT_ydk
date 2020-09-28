function fn_submit() {
		
		if($("#userid").val().trim() == ""){
			alert("아이디를 입력해주세요.");
			return false;
		}
		if($("#pass").val().trim() == ""){
			alert("비밀번호를 입력해주세요.");
			return false;
		}
		if($("#birthday").val().trim() == ""){
			alert("생년워릴을 입력해주세요.");
			return false;
		}
		
		$("#frm").submit();
	}