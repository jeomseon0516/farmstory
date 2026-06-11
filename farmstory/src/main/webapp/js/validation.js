
/* 정규표현식 */
const reId 	= /^[a-z][a-z0-9]{4,19}$/;
const rePass = /^[a-zA-Z0-9!@#$%^&*]{4,20}$/;
const reName  = /^[가-힣]{2,10}$/;
const reNickname  = /^[a-zA-Z가-힣0-9]+$/;
const reEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
const rePhone = /^01(?:0|1|[6-9])-\d{4}-\d{4}$/;

/* 유효성 검사 상태 */
let isIdOk = false;
let isPassOk = false;
let isNameOk = false;
let isNicknameOk = false;
let isEmailOk = false;
let isPhoneOk = false;

document.addEventListener('DOMContentLoaded', function(){

    const form = document.querySelector('form');

    const idResult = document.querySelector('.idResult');
    const passResult = document.querySelector('.passResult');
    const nameResult = document.querySelector('.nameResult');
    const nicknameResult = document.querySelector('.nicknameResult');
    const emailResult = document.querySelector('.emailResult');
    const phoneResult = document.querySelector('.phoneResult');

	/* =========================
	    입력값 변경시 상태 초기화
	    ========================= */

	 form.id.addEventListener('input', function(){
	     idResult.innerText = '';
	     isIdOk = false;
	 });

	 form.pass.addEventListener('input', function(){
	     passResult.innerText = '';
	     isPassOk = false;
	 });

	 form.pass2.addEventListener('input', function(){
	     passResult.innerText = '';
	     isPassOk = false;
	 });

	 form.name.addEventListener('input', function(){
	     nameResult.innerText = '';
	     isNameOk = false;
	 });

	 form.nickname.addEventListener('input', function(){
	     nicknameResult.innerText = '';
	     isNicknameOk = false;
	 });

	 form.email.addEventListener('input', function(){
	     emailResult.innerText = '';
	     isEmailOk = false;

	     const auth = document.querySelector('.auth');
	     if(auth){
	         auth.style.display = 'none';
	     }
	 });

	 form.phone.addEventListener('input', function(){
	     phoneResult.innerText = '';
	     isPhoneOk = false;
	 });
	
	
	
    /* 최종 전송 검사 */
    form.addEventListener('submit', function(e){

        if(!isIdOk){
            e.preventDefault();
            alert('아이디를 확인하세요.');
            return;
        }

        if(!isPassOk){
            e.preventDefault();
            alert('비밀번호를 확인하세요.');
            return;
        }

        if(!isNameOk){
            e.preventDefault();
            alert('이름을 확인하세요.');
            return;
        }

        if(!isNicknameOk){
            e.preventDefault();
            alert('별명을 확인하세요.');
            return;
        }

        if(!isEmailOk){
            e.preventDefault();
            alert('이메일을 확인하세요.');
            return;
        }

        if(!isPhoneOk){
            e.preventDefault();
            alert('휴대폰을 확인하세요.');
            return;
        }
    });

    /* 아이디 중복 확인 */
    document.getElementById('btnId').addEventListener('click', async function(e){
        e.preventDefault();

        const value = form.id.value.trim();
		
		
		

        if(!reId.test(value)){
            idResult.innerText = '아이디가 유효하지 않습니다.';
            idResult.style.color = 'red';
            isIdOk = false;
            return;      
		}
	

        try {
            const response = await fetch('/farmstory/user/check.do?type=id&value=' + encodeURIComponent(value));
            const data = await response.json();

            if(data.count > 0){
                idResult.innerText = '이미 사용중인 아이디입니다.';
                idResult.style.color = 'red';
                isIdOk = false;
            }else{
                idResult.innerText = '사용 가능한 아이디입니다.';
                idResult.style.color = 'green';
                isIdOk = true;
            }

        } catch(err) {
            idResult.innerText = '아이디 확인 중 오류가 발생했습니다.';
            idResult.style.color = 'red';
            isIdOk = false;
        }
    });

    /* 비밀번호 검사 */
	
	console.log()
    form.pass.addEventListener('focusout', checkPassword);
    form.pass2.addEventListener('focusout', checkPassword);

    function checkPassword(){

        const pass = form.pass.value;
        const pass2 = form.pass2.value;

        if(!rePass.test(pass)){
            passResult.innerText = '비밀번호가 유효하지 않습니다.';
            passResult.style.color = 'red';
            isPassOk = false;
            return;
        }

        if(pass2 === ''){
            passResult.innerText = '';
            isPassOk = false;
            return;
        }

        if(pass === pass2){
            passResult.innerText = '비밀번호가 일치합니다.';
            passResult.style.color = 'green';
            isPassOk = true;
        }else{
            passResult.innerText = '비밀번호가 일치하지 않습니다.';
            passResult.style.color = 'red';
            isPassOk = false;
        }
    }

    /* 이름 검사 */
    form.name.addEventListener('focusout', function(){

        const value = form.name.value.trim();

        if(!reName.test(value)){
            nameResult.innerText = '이름이 유효하지 않습니다.';
            nameResult.style.color = 'red';
            isNameOk = false;
        }else{
            nameResult.innerText = '';
            isNameOk = true;
        }
    });

    /* 별명 중복 확인 */
    document.getElementById('btnNickname').addEventListener('click', async function(e){
        e.preventDefault();

        const value = form.nickname.value.trim();

        if(!reNickname.test(value)){
            nicknameResult.innerText = '별명이 유효하지 않습니다.';
            nicknameResult.style.color = 'red';
            isNicknameOk = false;
            return;
        }

        try {
            const response = await fetch('/farmstory/user/check.do?type=nickname&value=' + encodeURIComponent(value));
            const data = await response.json();

            if(data.count > 0){
                nicknameResult.innerText = '이미 사용중인 별명입니다.';
                nicknameResult.style.color = 'red';
                isNicknameOk = false;
            }else{
                nicknameResult.innerText = '사용 가능한 별명입니다.';
                nicknameResult.style.color = 'green';
                isNicknameOk = true;
            }

        } catch(err) {
            nicknameResult.innerText = '별명 확인 중 오류가 발생했습니다.';
            nicknameResult.style.color = 'red';
            isNicknameOk = false;
        }
    });

    /* 이메일 인증 요청 */
    let preventDblClick = false;

    document.getElementById('btnEmail').addEventListener('click', async function(e){
        e.preventDefault();

        if(preventDblClick){
            return;
        }

        const value = form.email.value.trim();

        if(!reEmail.test(value)){
            emailResult.innerText = '이메일이 유효하지 않습니다.';
            emailResult.style.color = 'red';
            isEmailOk = false;
            return;
        }

        preventDblClick = true;

        try {
            const response = await fetch('/farmstory/user/email.do?email=' + encodeURIComponent(value));
            const data = await response.json();

            if(data.count > 0){
                emailResult.innerText = '이미 사용중인 이메일입니다.';
                emailResult.style.color = 'red';
                isEmailOk = false;
                preventDblClick = false;
            }else{
                emailResult.innerText = '이메일 인증코드를 확인하세요.';
                emailResult.style.color = 'green';
                document.querySelector('.auth').style.display = 'block';
            }

        } catch(err) {
            emailResult.innerText = '이메일 확인 중 오류가 발생했습니다.';
            emailResult.style.color = 'red';
            isEmailOk = false;
            preventDblClick = false;
        }
    });

	/* 이메일 인증코드 확인 */
	document.getElementById('btnConfirm').addEventListener('click', async function(e){
	    e.preventDefault();

	    const code = form.code.value.trim();

	    console.log('입력한 인증코드:', code);

	    if(code === ''){
	        emailResult.innerText = '인증코드를 입력하세요.';
	        emailResult.style.color = 'red';
	        isEmailOk = false;
	        return;
	    }

	    const params = new URLSearchParams();
	    params.append('code', code);

	    try {
	        const response = await fetch('/farmstory/user/email.do', {
	            method: 'POST',
	            headers: {
	                'Content-Type': 'application/x-www-form-urlencoded'
	            },
	            body: params
	        });

	        const data = await response.json();

	        if(data.count === 0){
	            emailResult.innerText = '이메일이 인증되었습니다.';
	            emailResult.style.color = 'green';
	            isEmailOk = true;
	        }else{
	            emailResult.innerText = '인증코드가 일치하지 않습니다.';
	            emailResult.style.color = 'red';
	            isEmailOk = false;
	        }

	    } catch(err) {
	        emailResult.innerText = '인증 확인 중 오류가 발생했습니다.';
	        emailResult.style.color = 'red';
	        isEmailOk = false;
	    }
	});

    /* 휴대폰 중복 확인 */
    form.phone.addEventListener('focusout', async function(){

        const value = form.phone.value.trim();

        if(!rePhone.test(value)){
            phoneResult.innerText = '휴대폰이 유효하지 않습니다.';
            phoneResult.style.color = 'red';
            isPhoneOk = false;
            return;
        }

        try {
            const response = await fetch('/farmstory/user/check.do?type=phone&value=' + encodeURIComponent(value));
            const data = await response.json();

            if(data.count > 0){
                phoneResult.innerText = '이미 사용중인 휴대폰입니다.';
                phoneResult.style.color = 'red';
                isPhoneOk = false;
            }else{
                phoneResult.innerText = '사용 가능한 휴대폰입니다.';
                phoneResult.style.color = 'green';
                isPhoneOk = true;
            }

        } catch(err) {
            phoneResult.innerText = '휴대폰 확인 중 오류가 발생했습니다.';
            phoneResult.style.color = 'red';
            isPhoneOk = false;
        }
    });

    /* 우편번호 찾기 */
    document.getElementById('btnZipCode').addEventListener('click', function(e){
        e.preventDefault();

        new daum.Postcode({
            oncomplete: function(data){
                form.zipCode.value = data.zonecode;
                form.address.value = data.roadAddress;
                form.detailAddress.focus();
            }
        }).open();
    });

});