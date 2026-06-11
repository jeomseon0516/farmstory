document.addEventListener('DOMContentLoaded', function(){

    /* ======================================================
        아이디찾기 페이지
    ====================================================== */

    const formFindId = document.formFindId;

    if(formFindId){

        console.log('아이디찾기 페이지');

        const btnSendEmail = document.getElementById('btnSendEmail');
        const btnConfirm = document.getElementById('btnConfirm');
        const btnCancel = document.getElementById('btnCancel');

        let isEmailAuth = false;

        /* 아이디찾기 - 이메일 인증번호 발송 */
        if(btnSendEmail){

            btnSendEmail.addEventListener('click', async function(e){

                e.preventDefault();

                console.log('아이디찾기 이메일 인증번호 발송');

                const email = formFindId.email.value.trim();

                console.log('입력 이메일 : ', email);

                if(email === ''){
                    alert('이메일을 입력하세요.');
                    return;
                }

                const response = await fetch('/farmstory/user/email.do?email=' + email);
                const data = await response.json();

                console.log('이메일 인증 응답 : ', data);

                if(data.result){
                    alert('인증번호가 발송되었습니다.');
                }
            });
        }

        /* 아이디찾기 - 인증번호 확인 */
        if(btnConfirm){

            btnConfirm.addEventListener('click', async function(e){

                e.preventDefault();

                console.log('아이디찾기 인증번호 확인');

                const code = formFindId.code.value.trim();

                console.log('입력 인증번호 : ', code);

                if(code === ''){
                    alert('인증번호를 입력하세요.');
                    return;
                }

                const params = new URLSearchParams();
                params.append('code', code);

                const response = await fetch('/farmstory/user/email.do', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    },
                    body: params
                });

                const data = await response.json();

                console.log('인증 결과 : ', data);

                if(data.count === 0){
                    alert('인증되었습니다.');
                    isEmailAuth = true;
                }else{
                    alert('인증번호가 일치하지 않습니다.');
                    isEmailAuth = false;
                }
            });
        }

        /* 아이디찾기 - 폼 전송 */
        formFindId.addEventListener('submit', function(e){

            console.log('아이디찾기 폼 전송 시도');

            if(!isEmailAuth){
                e.preventDefault();
                alert('이메일 인증을 먼저 완료해주세요.');
                return;
            }

            console.log('아이디찾기 폼 전송 진행');
        });

        /* 아이디찾기 - 취소 */
        if(btnCancel){

            btnCancel.addEventListener('click', function(){

                console.log('아이디찾기 취소');

                location.href = '/farmstory/user/login.do';
            });
        }
    }


    /* ======================================================
        비밀번호찾기 페이지
    ====================================================== */

    const formFindPassword = document.formFindPassword;

    if(formFindPassword){

        console.log('비밀번호찾기 페이지');

        const btnSendEmail = document.getElementById('btnSendEmail');
        const btnConfirm = document.getElementById('btnConfirm');
        const btnCancel = document.getElementById('btnCancel');
        const btnNext = document.getElementById('btnNext');

        let isEmailAuth = false;

        /* 비밀번호찾기 - 이메일 인증번호 발송 */
        if(btnSendEmail){

            btnSendEmail.addEventListener('click', async function(e){

                e.preventDefault();

                console.log('비밀번호찾기 이메일 인증번호 발송');

                const email = formFindPassword.email.value.trim();

                console.log('입력 이메일 : ', email);

                if(email === ''){
                    alert('이메일을 입력하세요.');
                    return;
                }

                const response = await fetch('/farmstory/user/email.do?email=' + email);
                const data = await response.json();

                console.log('이메일 인증 응답 : ', data);

                if(data.result){
                    alert('인증번호가 발송되었습니다.');
                }
            });
        }

        /* 비밀번호찾기 - 인증번호 확인 */
        if(btnConfirm){

            btnConfirm.addEventListener('click', async function(e){

                e.preventDefault();

                console.log('비밀번호찾기 인증번호 확인');

                const code = formFindPassword.code.value.trim();

                console.log('입력 인증번호 : ', code);

                if(code === ''){
                    alert('인증번호를 입력하세요.');
                    return;
                }

                const params = new URLSearchParams();
                params.append('code', code);

                const response = await fetch('/farmstory/user/email.do', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    },
                    body: params
                });

                const data = await response.json();

                console.log('인증 결과 : ', data);

                if(data.count === 0){
                    alert('인증되었습니다.');
                    isEmailAuth = true;
                }else{
                    alert('인증번호가 일치하지 않습니다.');
                    isEmailAuth = false;
                }
            });
        }

		/* 비밀번호찾기 - 다음 버튼 */
		if(btnNext){

		    btnNext.addEventListener('click', function(e){

		        e.preventDefault();

		        console.log('비밀번호찾기 다음 버튼 클릭');

		        if(!isEmailAuth){
		            alert('이메일 인증을 먼저 완료해주세요.');
		            return;
		        }

		        console.log('전송 직전 id : ', formFindPassword.id.value);
		        console.log('전송 직전 email : ', formFindPassword.email.value);
		        console.log('전송 직전 code : ', formFindPassword.code.value);

		        HTMLFormElement.prototype.submit.call(formFindPassword);
		    });
		}

		/* 비밀번호찾기 - 폼 전송 검사 */
		formFindPassword.addEventListener('submit', function(e){

		    console.log('비밀번호찾기 form submit 시도');

		    if(!isEmailAuth){
		        e.preventDefault();
		        alert('이메일 인증을 먼저 완료해주세요.');
		        return;
		    }

		    console.log('비밀번호찾기 form submit 진행');
		});
        

        /* 비밀번호찾기 - 취소 */
        if(btnCancel){

            btnCancel.addEventListener('click', function(){

                console.log('비밀번호찾기 취소');

                location.href = '/farmstory/user/login.do';
            });
        }
    }


    /* ======================================================
        비밀번호 변경 페이지
    ====================================================== */

    const formChangePassword = document.formChangePassword;

    if(formChangePassword){

        console.log('비밀번호 변경 페이지');

        const btnCancel = document.getElementById('btnCancel');

        /* 비밀번호 변경 - 검증 */
        formChangePassword.addEventListener('submit', function(e){

            console.log('비밀번호 변경 시도');

            const pass = formChangePassword.pass.value.trim();
            const passConfirm = formChangePassword.passConfirm.value.trim();

            if(pass === ''){
                e.preventDefault();
                alert('새 비밀번호를 입력하세요.');
                return;
            }

            if(passConfirm === ''){
                e.preventDefault();
                alert('새 비밀번호 확인을 입력하세요.');
                return;
            }

            if(pass !== passConfirm){
                e.preventDefault();
                alert('비밀번호가 일치하지 않습니다.');
                return;
            }

            console.log('비밀번호 검증 통과');
        });

        /* 비밀번호 변경 - 취소 */
        if(btnCancel){

            btnCancel.addEventListener('click', function(){

                console.log('비밀번호 변경 취소');

                location.href = '/farmstory/user/login.do';
            });
        }
    }

});