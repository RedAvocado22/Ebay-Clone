<%-- 
    Document   : views
    Created on : Sep 18, 2024, 11:12:35 PM
    Author     : Minh Cuong
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <jsp:include page="../common/header.jsp"></jsp:include>
            <div id="nav-categories">
                <a href="https://youtube.com/@ThongNhat-SSG104-FPTU">Explore(New!)</a>
            <c:forEach var="category" items="${categories}">
                <a href="${pageContext.request.contextPath}/products?category=${category.id}">${category.name}</a>
            </c:forEach>
            <a href="${pageContext.request.contextPath}/account">Sell</a>
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
                    <c:forEach var="product" items="${products}">
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}${product.image}"
                                />
                            <p>
                                <a style="color: black; text-decoration: none" href="${pageContext.request.contextPath}/product?id=${product.id}">
                                    ${product.name}
                                </a> 
                                <span class="right">${product.price}$</span>
                            </p>
                        </li>
                    </c:forEach>
                </ul>
            </div>

            <!--category-home-->

            <h1 class="category-h1">Explore Popular Categories</h1>
            <div class="categories">
                <a href="${pageContext.request.contextPath}/products?category=1">
                    <div class="category">
                        <img src="${pageContext.request.contextPath}/public/images/icon/icon_5.png" alt="beauty">
                        <p>Electronics</p>
                    </div>
                </a>
                <a href="${pageContext.request.contextPath}/products?category=2">
                    <div class="category">
                        <img src="${pageContext.request.contextPath}/public/images/icon/icon_4.png" alt="">
                        <p>Clothing</p>
                    </div>
                </a>
                <a href="${pageContext.request.contextPath}/products?category=3">
                    <div class="category">
                        <img src="${pageContext.request.contextPath}/public/images/icon/icon_6.jpg" alt="">
                        <p>Home & Kitchen</p>
                    </div>
                </a>
                <a href="${pageContext.request.contextPath}/products?category=4">
                    <div class="category">
                        <img src="${pageContext.request.contextPath}/public/images/icon/icon_3.png" alt="">
                        <p>Books</p>
                    </div>
                </a>
                <a href="${pageContext.request.contextPath}/products?category=5">
                    <div class="category">
                        <img src="${pageContext.request.contextPath}/public/images/icon/icon_2.png" alt="">
                        <p>Toys</p>
                    </div>
                </a>
                <a href="${pageContext.request.contextPath}/products?category=6">
                    <div class="category">
                        <img src="${pageContext.request.contextPath}/public/images/icon/icon_7.jpg" alt="">
                        <p>Sports</p>
                    </div>
                </a>
                <a href="${pageContext.request.contextPath}/products?category=7">
                    <div class="category">
                        <img src="${pageContext.request.contextPath}/public/images/icon/beauty_icon.png" alt="">
                        <p>Beauty</p>
                    </div>
                </a>
                <a href="${pageContext.request.contextPath}/products?category=8">
                    <div class="category">
                        <img src="${pageContext.request.contextPath}/public/images/icon/icon_1.png" alt="">
                        <p>Jewelry</p>
                    </div>
                </a>
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
        </main>
        <jsp:include page="../common/footer.jsp"></jsp:include> 
        <script src="${pageContext.request.contextPath}/public/js/js.js"></script>
    </body>
</html>
