<%-- 
    Document   : views
    Created on : Sep 18, 2024, 11:12:35 PM
    Author     : Minh Cuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/base/base.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"        />
        <title>Ebay</title>
    </head>
    <body>
        <jsp:include page="common/header.jsp"></jsp:include>
            <div id="nav-categories">
                <a href="https://youtube.com/@ThongNhat-SSG104-FPTU">Explore(New!)</a>
                <a>Electronics</a>
                <a>Clothing</a>
                <a>Home & Kitchen</a>
                <a href="#">Books</a>
                <a href="#">Toys</a>
                <a href="#">Sports</a>
                <a href="#">Beauty</a>
                <a href="#">Jewelry</a>
                <a href="#">Sell</a>
            </div>
            <main>

                <div class="body-slide">
                    <div class="slide-show">
                        <div class="list-images">
                        <img class="img-banners" src="${pageContext.request.contextPath}/public/images/banner/banner_14.png" alt="">
                        <img class="img-banners" src="${pageContext.request.contextPath}/public/images/banner/Banner_15_sua.png" alt="">
                    </div>
                    <div class="btns">
                        <span class="btn-left btn material-icons md-36">
                            keyboard_arrow_left
                        </span>
                        <span class="btn-right btn material-icons md-36">
                            keyboard_arrow_right
                        </span>
                    </div>
                </div>
            </div> 

            <div class="product-list">
                <span
                    class="material-symbols-outlined arrow-left"
                    onclick="scrollb('wow', 'left')"
                    >
                    arrow_back
                </span>
                <span
                    class="material-symbols-outlined arrow-right"
                    onclick="scrollb('wow', 'right')"
                    >
                    arrow_forward
                </span>
                <h1>WOW! Offer of the day!</h1>
                <ul id="wow">
                    <li>
                        <img
                            class="image-product"
                            src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_1_1.png"
                            />
                        <p>
                            USD 20 <span class="right">camera</span>
                        </p>
                    </li>
                    <li>
                        <img
                            class="image-product"
                            src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_2_1.png"
                            />
                        <p>USD 69,69 <span class="right">camera</span></p>
                    </li>
                    <li>
                        <img
                            class="image-product"
                            src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_3_1.png"
                            />
                        <p>USD 4,20 <span class="right">camera</span></p>
                    </li>
                    <li>
                        <img
                            class="image-product"
                            src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_4_1.png"
                            />
                        <p>
                            USD 6,66
                            <span class="right">camera</span>
                        </p>
                    </li>
                    <li>
                        <img
                            class="image-product"
                            src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_5_1.png"
                            />
                        <p>
                            USD 694,20
                            <span class="right">camera</span>
                        </p>
                    </li>
                    <li>
                        <img
                            class="image-product"
                            src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_6_1.png"
                            />
                        <p>
                            USD 1,99
                            <span class="right">camera</span>
                        </p>
                    </li>
                    <li>
                        <img
                            class="image-product"
                            src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_7_1.png"
                            />
                        <p>
                            USD 1,99
                            <span class="right">camera</span>
                        </p>
                    </li>
                    <li>
                        <img
                            class="image-product"
                            src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_8_1.png"
                            />
                        <p>
                            USD 2,98
                            <span class="right">camera</span>
                        </p>
                    </li>
                    <li>
                        <img
                            class="image-product"
                            src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_9_1.png"
                            />
                        <p>
                            USD 2,98
                            <span class="right">camera</span>
                        </p>
                    </li>
                </ul>
            </div>

            <!--category-home-->

            <h1 class="category-h1">Explore Popular Categories</h1>
            <div class="categories">
                <div class="category">
                    <img src="${pageContext.request.contextPath}/public/images/icon/icon_5.png" alt="beauty">
                    <p>Luxury</p>
                </div>
                <div class="category">
                    <img src="${pageContext.request.contextPath}/public/images/icon/icon_4.png" alt="">
                    <p>Sneakers</p>
                </div>
                <div class="category">
                    <img src="${pageContext.request.contextPath}/public/images/icon/icon_6.jpg" alt="">
                    <p>Pre-loved Luxury</p>
                </div>
                <div class="category">
                    <img src="${pageContext.request.contextPath}/public/images/icon/icon_3.png" alt="">
                    <p>P&A</p>
                </div>
                <div class="category">
                    <img src="${pageContext.request.contextPath}/public/images/icon/icon_2.png" alt="">
                    <p>Trading cards</p>
                </div>
                <div class="category">
                    <img src="${pageContext.request.contextPath}/public/images/icon/icon_7.jpg" alt="">
                    <p>Refurbished</p>
                </div>
                <div class="category">
                    <img src="${pageContext.request.contextPath}/public/images/icon/icon_1.png" alt="">
                    <p>Toys</p>
                </div>

            </div>


            <div class="footer-slide">
                <div class="slide-footer">
                    <div class="list-footer">
                        <img class="footer-banners" src="${pageContext.request.contextPath}/public/images/banner/banner_2.png" alt="">
                        <img class="footer-banners" src="${pageContext.request.contextPath}/public/images/banner/banner_4.png" alt="">
                        <img class="footer-banners" src="${pageContext.request.contextPath}/public/images/banner/banner_5.png" alt="">
                        <img class="footer-banners" src="${pageContext.request.contextPath}/public/images/banner/banner_6.png" alt="">
                    </div>
                </div>
            </div> 
        </div>
    </main>
    <hr />
    <jsp:include page="common/footer.jsp"></jsp:include> 
    <script src="${pageContext.request.contextPath}/public/js/js.js"></script>
</body>
</html>
