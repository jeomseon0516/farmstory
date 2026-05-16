🌾 Farmstory 프로젝트 폴더 구조 가이드
Git 충돌 방지를 위해 [상위 도메인 > 페이지별 독립 폴더] 구조를 채택하고 있습니다. 각 페이지 폴더 내부에는 해당 페이지에 대응하는 .html 파일과 .css 파일을 함께 생성하여 관리합니다.

📁 대분류(상위 폴더) 요약
admin/: 관리자 전용 기능 (대시보드, 상품/주문/회원 관리)

community/: 커뮤니티 게시판 기능 (공지사항, 식단, 요리사 등)

event/: 이벤트 기능

find/: 계정 찾기 기능

intro/: 팜스토리 소개 페이지

main/: 메인 화면 관련

market/: 장보기(쇼핑몰) 기능

mypage/: 사용자 마이페이지 기능

story/: 농작물 이야기 관련 게시판

user/: 사용자 계정 관련 (로그인, 가입, 약관)

images/: 프로젝트 전역 공통 이미지 자원

📄 페이지별 상세 매핑 구조
1. 메인 화면

📂 main/

📄 팜스토리 메인

2. 팜스토리 소개

📂 intro/

📂 greeting/ ➔ 📄 팜스토리소개 > 인사말

📂 location/ ➔ 📄 팜스토리소개 > 찾아오시는길

3. 장보기 (마켓)

📂 market/

📂 product-list/ ➔ 📄 장보기 > 상품목록

📂 product-view/ ➔ 📄 장보기 > 상품상세보기

📂 cart/ ➔ 📄 장보기 > 장바구니

📂 checkout/ ➔ 📄 장보기 > 주문하기

4. 농작물 이야기

📂 story/

📂 story-list/ ➔ 📄 농작물이야기 > 농작물이야기

📂 gardening/ ➔ 📄 농작물이야기 > 텃밭가꾸기

📂 farming-school/ ➔ 📄 농작물이야기 > 귀농학교

5. 이벤트

📂 event/

📂 calendar/ ➔ 📄 이벤트 > 이벤트 달력

6. 커뮤니티 (게시판류)

📂 community/

📂 notice-list/ ➔ 📄 커뮤니티 > 공지사항(글목록)

📂 menu-write/ ➔ 📄 커뮤니티 > 오늘의식단(글쓰기)

📂 chef-view/ ➔ 📄 커뮤니티 > 나도요리사(글보기)

📂 qna-modify/ ➔ 📄 커뮤니티 > 고객문의(글수정)

📂 faq-list/ ➔ 📄 커뮤니티 > 자주묻는질문(글목록)

7. 사용자 계정 및 찾기

📂 user/

📂 login/ ➔ 📄 사용자 > 로그인

📂 terms/ ➔ 📄 사용자 > 이용약관

📂 register/ ➔ 📄 사용자 > 회원가입

📂 find/

📂 id/ ➔ 📄 찾기 > 아이디 찾기

📂 id-result/ ➔ 📄 찾기 > 아이디 찾기 결과

📂 password/ ➔ 📄 찾기 > 비밀번호 찾기

📂 password-change/ ➔ 📄 찾기 > 비밀번호 변경

8. 나의 정보 (마이페이지)

📂 mypage/

📂 cart/ ➔ 📄 나의정보 > 장바구니

📂 order-list/ ➔ 📄 나의정보 > 주문내역

📂 profile-edit/ ➔ 📄 나의정보 > 정보수정

9. 관리자 시스템

📂 admin/

📂 dashboard/ ➔ 📄 관리자 메인

📂 product-list/ ➔ 📄 관리자 상품관리 > 상품목록

📂 product-register/ ➔ 📄 관리자 상품관리 > 상품등록

📂 order-list/ ➔ 📄 관리자 주문관리 > 주문목록

📂 user-list/ ➔ 📄 관리자 회원관리 > 회원목록

🛠️ 작업 시 유의사항 (팀 약속)
파일 명명 규칙

각 폴더 내의 HTML, CSS 파일명은 해당 폴더명과 동일하게 작성합니다. (main페이지는 예외)

예시 (community/notice-list/ 폴더 내부 작업 시):

HTML: notice-list.html

CSS: notice-list.css

경로 참조 주의

이미지나 전역 공통 CSS(common.css 등)를 불러올 때 상위 폴더 구조 단계를 정확하게 계산하여 상대 경로(../../)를 지정해 주세요.