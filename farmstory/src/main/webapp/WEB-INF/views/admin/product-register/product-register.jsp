<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>farmstory::admin/product-register</title>

    <link rel="stylesheet" href="/farmstory/css/global-style/reset.css">
    <link rel="stylesheet" href="/farmstory/css/admin/product-register/product-register.css">
</head>

<body>
<div id="container">

    <!-- 헤더 -->
    <header>
        <a href="./dashboard.html">
            <img src="./images/admin/admin_logo.jpg" alt="logo">
        </a>

        <div class="top-menu">
            <a href="#">HOME | </a> 
            <a href="#">로그아웃 | </a> 
            <a href="#">고객센터</a>
        </div>
        
    </header>

    <!-- 메인 -->
    <main>

        <!-- 좌측 메뉴 -->
        <aside>

            <h3>주요기능</h3>

            <div class="menu">
                <span>상품관리</span>
                <ul>
                    <li><a href="#">ㄴ 상품목록</a></li>
                    <li><a href="#">ㄴ 상품등록</a></li>
                </ul>
            </div>

            <div class="menu">
                <span>주문관리</span>
                <ul>
                    <li><a href="#">ㄴ 주문목록</a></li>
                </ul>
            </div>

            <div class="menu">
                <span>회원관리</span>
                <ul>
                    <li><a href="#">ㄴ 회원목록</a></li>
                </ul>
            </div>

        </aside>


        <!-- 우측 컨텐츠 -->
        <section>

            <h3>상품등록</h3>

            <article class="product-reg">

                <form action="#" method="post" enctype="multipart/form-data">

                    <table>

                        <tbody>

                        <tr>
                            <td>상품명</td>
                            <td>
                                <input type="text" name="prodName">
                            </td>
                        </tr>

                        <tr>
                            <td>종류</td>
                            <td>
                                <select name="type">
                                    <option>종류</option>
                                    <option>과일</option>
                                    <option>채소</option>
                                    <option>곡물</option>
                                </select>
                            </td>
                        </tr>

                        <tr>
                            <td>가격</td>
                            <td>
                                <input type="text" name="price">
                            </td>
                        </tr>

                        <tr>
                            <td>포인트</td>
                            <td>
                                <input type="text" name="point">
                                <span>포인트는 가격의 1%</span>
                            </td>
                        </tr>

                        <tr>
                            <td>할인</td>
                            <td>
                                <select name="discount">
                                    <option>5%</option>
                                    <option>10%</option>
                                    <option>15%</option>
                                    <option>20%</option>
                                </select>
                            </td>
                        </tr>

                        <tr>
                            <td>배송비</td>
                            <td>
                                <label>
                                    <input type="radio" name="delivery" value="2000">
                                    2,000원
                                </label>

                                <label>
                                    <input type="radio" name="delivery" value="3000">
                                    3,000원
                                </label>

                                <label>
                                    <input type="radio" name="delivery" value="5000">
                                    5,000원
                                </label>

                                <label>
                                    <input type="radio" name="delivery" value="0">
                                    무료
                                </label>
                            </td>
                        </tr>

                        <tr>
                            <td>재고</td>
                            <td>
                                <input type="text" name="stock">
                            </td>
                        </tr>

                        <tr>
                            <td>상품이미지</td>
                            <td>

                                <div class="file-box">
                                    <p>상품목록 이미지(약 120 x 120)</p>
                                    <input type="file" name="listImg">
                                </div>

                                <div class="file-box">
                                    <p>기본정보 이미지(약 240 x 240)</p>
                                    <input type="file" name="basicImg">
                                </div>

                                <div class="file-box">
                                    <p>상품설명 이미지(약 750 x Auto)</p>
                                    <input type="file" name="detailImg">
                                </div>

                            </td>
                        </tr>

                        <tr>
                            <td>기타</td>
                            <td>
                                <input type="text" name="etc">
                            </td>
                        </tr>

                        </tbody>

                    </table>

                    <div class="btns">
                        <button type="reset">취소</button>
                        <button type="submit">상품등록</button>
                    </div>

                </form>

            </article>

        </section>

    </main>

    <!-- 푸터 -->
    <footer>
        <p>
            Copyright(C)Farmstory All rights reserved.
            FARMSTORY ADMINISTRATOR Version 1.0.1
        </p>
    </footer>

</div>
</body>
</html>