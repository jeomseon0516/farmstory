document.addEventListener('DOMContentLoaded', function(){

    console.log('find.js 로드 완료');

    /* 아이디찾기, 비밀번호찾기 폼 */
    const form =
        document.formFindId ||
        document.formFindPassword;

    console.log('form : ', form);

    /* 공통 버튼 */
    const btnSendEmail = document.getElementById('btnSendEmail');
    const btnConfirm = document.getElementById('btnConfirm');
    const btnCancel = document.getElementById('btnCancel');

    /* 이메일 인증 여부 */
    let isEmailAuth = false;

    /* 이메일 인증번호 발송 */
    if(form && btnSendEmail){

        btnSendEmail.addEventListener('click', async function(e){

            e.preventDefault();

            const email = form.email.value.trim();

            console.log('입력 이메일 : ', email);

            if(email === ''){
                alert('이메일을 입력하세요.');
                return;
            }

            const response =
                await fetch('/farmstory/user/email.do?email=' + email);

            const data = await response.json();

            console.log('이메일 인증 응답 : ', data);

            if(data.result){
                alert('인증번호가 발송되었습니다.');
            }
        });
    }

    /* 인증번호 확인 */
    if(form && btnConfirm){

        btnConfirm.addEventListener('click', async function(e){

            e.preventDefault();

            console.log('확인 버튼 클릭');

            const code = form.code.value.trim();

            console.log('입력 인증번호 : ', code);

            if(code === ''){
                alert('인증번호를 입력하세요.');
                return;
            }

            const params = new URLSearchParams();
            params.append('code', code);

            const response = await fetch('/farmstory/user/email.do', {
                method:'POST',
                headers:{
                    'Content-Type':'application/x-www-form-urlencoded'
                },
                body:params
            });

            const data = await response.json();

            console.log('인증 결과 : ', data);

            if(data.count === 0){

                console.log('이메일 인증 성공');

                alert('인증되었습니다.');
                isEmailAuth = true;

            }else{

                console.log('이메일 인증 실패');

                alert('인증번호가 일치하지 않습니다.');
                isEmailAuth = false;
            }
        });
    }

    /* 제출 전 이메일 인증 검사 */
    if(form){

        form.addEventListener('submit', function(e){

            console.log('폼 전송 시도');

            if(!isEmailAuth){

                console.log('이메일 인증 안됨');

                e.preventDefault();

                alert('이메일 인증을 먼저 완료해주세요.');
                return;
            }

            console.log('폼 전송 진행');
        });
    }

    /* 비밀번호 변경 폼 */
    const formChangePassword =
        document.formChangePassword;

    if(formChangePassword){

        formChangePassword.addEventListener('submit', function(e){

            console.log('비밀번호 변경 시도');

            const pass =
                formChangePassword.pass.value.trim();

            const passConfirm =
                formChangePassword.passConfirm.value.trim();

            console.log('새 비밀번호 입력');
            console.log('비밀번호 길이 : ', pass.length);

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

                console.log('비밀번호 불일치');

                e.preventDefault();

                alert('비밀번호가 일치하지 않습니다.');
                return;
            }

            console.log('비밀번호 검증 통과');
        });
    }

    /* 취소 버튼 */
    if(btnCancel){

        btnCancel.addEventListener('click', function(){

            console.log('취소 버튼 클릭');

            location.href = '/farmstory/user/login.do';

        });
    }
});