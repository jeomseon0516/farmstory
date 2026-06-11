<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>farmstory::qna/qna-post-view</title>
    </head>
    <link rel="stylesheet" href="/global-style/reset.css">
    <link rel="stylesheet" href="/global-style/global-header.css">
    <link rel="stylesheet" href="/global-style/global-footer.css">
    <link rel="stylesheet" href="/global-style/global-main-style.css">
    <link rel="stylesheet" href="./calendar.css">

    <body>
        <div id="container">
            <%@ include file="/WEB-INF/views/global/_header.jsp" %>


            <section class="sub-banner">
                <img src="/farmstroy/images/sub_top_tit4.png" alt="Event">
            </section>
            <main>
                <aside class="sub-sidebar-aside">
                    <img src="/farmstroy/images/sub_aside_cate4_tit.png" alt="Event 이벤트">

                    <ul>
                        <li><a href="calendar.html"><img src="/farmstroy/images/sub_cate4_lnb1_ov.png" alt="이벤트"></a></li>
                    </ul>
                </aside>
                <article class="main-content">
                    <header class="main-content-header">
                        <img src="/farmstroy/images/sub_nav_tit_cate5_tit4.png" alt="1:1고객문의">
                        <section class="sub_nav_tit">
                            <nav>
                                <span>HOME > 이벤트 ></span>
                                <span class="sub_nav_select">이벤트</span>
                            </nav>
                        </section>
                    </header>
                    <section>
                        <div class="calender-head-info">
                            <h2 class="calendar-header-text">September 2024</h2>
                            <div class="calendar-button-area">
                                <a href="#" class="today-button">today</a>
                                <div class="paging-buttons">
                                    <a href="#"><</a>
                                    <a href="#">></a>
                                </div>
                            </div>
                        </div>
                        
                        <table class="calendar-table">
                            <tr>
                                <th>Sun</th>
                                <th>Mon</th>
                                <th>Tue</th>
                                <th>Wed</th>
                                <th>Thu</th>
                                <th>Fri</th>
                                <th>Sat</th>
                            </tr>
                            <tr>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>3</span></td>
                                <td><span>4</span></td>
                                <td><span>5</span></td>
                                <td><span>6</span></td>
                                <td><span>7</span></td>
                            </tr>
                            <tr>
                                <td><span>8</span></td>
                                <td><span>9</span></td>
                                <td class="today"><span>10</span></td>
                                <td><span>11</span></td>
                                <td><span>12</span></td>
                                <td><span>13</span></td>
                                <td><span>14</span></td>
                            </tr>
                            <tr>
                                <td><span>15</span></td>
                                <td>
                                    <span>16</span>
                                    <span class="chuseok">추석</span>
                                </td>
                                <td>
                                    <span>17</span>
                                    <span class="chuseok">추석</span>
                                </td>
                                <td>
                                    <span>18</span>
                                    <span class="chuseok">추석</span>
                                </td>
                                <td><span>19</span></td>
                                <td><span>20</span></td>
                                <td><span>21</span></td>
                            </tr>
                            <tr>
                                <td><span>22</span></td>
                                <td><span>23</span></td>
                                <td><span>24</span></td>
                                <td><span>25</span></td>
                                <td><span>26</span></td>
                                <td class="project-start">
                                    <span>27</span>
                                    <span>프로젝트 시작</span>
                                </td>
                                <td><span>28</span></td>
                            </tr>
                            <tr>
                                <td><span>29</span></td>
                                <td><span>30</span></td>
                                <td class="next-month"><span>1</span></td>
                                <td class="next-month"><span>2</span></td>
                                <td class="next-month"><span>3</span></td>
                                <td class="next-month"><span>4</span></td>
                                <td class="next-month"><span>5</span></td>
                            </tr>
                            <tr>
                                <td class="next-month"><span>6</span></td>
                                <td class="next-month"><span>7</span></td>
                                <td class="next-month"><span>8</span></td>
                                <td class="next-month"><span>9</span></td>
                                <td class="next-month"><span>10</span></td>
                                <td class="next-month"><span>11</span></td>
                                <td class="next-month"><span>12</span></td>
                            </tr>
                        </table>
                    </section>
                </article>
            </main>
                <%@ include file="/WEB-INF/views/global/_footer.jsp" %>

        </div>
    </body>

</html>