<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>farmstory::admin/product-register</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global-style/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/product-register/product-register.css">
</head>

<body>
<div id="container">

    <!-- 헤더 -->
    <header>
        <a href="${pageContext.request.contextPath}/admin/productList.do">
            <img src="${pageContext.request.contextPath}/images/admin/admin_logo.jpg" alt="logo">
        </a>

        <div class="top-menu">
            <a href="${pageContext.request.contextPath}/main/main.do">HOME | </a> 
            <a href="${pageContext.request.contextPath}/user/logout.do">로그아웃 | </a> 
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
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/productList.do">ㄴ 상품목록</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/productRegister.do">ㄴ 상품등록</a>
                    </li>
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

               <form action="${pageContext.request.contextPath}/admin/productRegister.do" method="post" enctype="multipart/form-data">

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
                                <select name="prodType">
                                    <option value="과일">과일</option>
                                    <option value="채소">채소</option>
                                    <option value="곡물">곡물</option>
                                </select>
                            </td>
                        </tr>

                        <tr>
                            <td>가격</td>
                            <td>
                                <input type="text" name="prodPrice">
                            </td>
                        </tr>

                        <tr>
                            <td>포인트</td>
                            <td>
                                <input type="text" name="prodPoint">
                                <span>포인트는 가격의 1%</span>
                            </td>
                        </tr>

                        <tr>
                            <td>할인</td>
                            <td>
                                <select name="prodDiscount">
                                    <option value="5">5%</option>
                                    <option value="10">10%</option>
                                    <option value="15">15%</option>
                                    <option value="20">20%</option>
                                </select>
                            </td>
                        </tr>

                        <tr>
                            <td>배송비</td>
                            <td>
                                <label>
                                    <input type="radio" name="prodDeliveryCost" value="2000">
                                    2,000원
                                </label>

                                <label>
                                    <input type="radio" name="prodDeliveryCost" value="3000">
                                    3,000원
                                </label>

                                <label>
                                    <input type="radio" name="prodDeliveryCost" value="5000">
                                    5,000원
                                </label>

                                <label>
                                    <input type="radio" name="prodDeliveryCost" value="0" checked>
                                    무료
                                </label>
                            </td>
                        </tr>

                        <tr>
                            <td>재고</td>
                            <td>
                                <input type="text" name="prodStock">
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
                                <input type="text" name="prodRemark">
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