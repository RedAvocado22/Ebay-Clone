<%-- 
    Document   : account
    Created on : Oct 16, 2024, 3:24:07 PM
    Author     : ASUS
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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/account.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"        />
        <title>Ebay</title>
    </head>
    <body>
        <jsp:include page="/views/common/header.jsp"></jsp:include>
            <div class="profile">
                <div class="profile-header">
                    <div class="profile-info">
                        <img src="${pageContext.request.contextPath}/public/images/products/toys/toy_16_1.png" alt="Profile Picture" class="profile-image">
                    <h1>vudanh_1</h1>
                </div>
                <div class="edit-form">
                    <span class="material-icons md-light">mode_edit</span>
                    <button class="edit-profile-btn">Edit profile</button>
                </div>

            </div>

            <div class="profile-navigation">
                <div class="section-btn">
                    <a href="#" id="about-tab" class="active" onclick="showSection('about')">Shop</a>
                    <a href="#" id="feedback-tab" onclick="showSection('feedback')">Feedback</a>
                    <a href="#" id="order-tab" onclick="showSection('order')">Order</a>
                </div>
            </div>

            <div class="profile-content">
                <section id="shop-section">
                    <h2>Shop</h2>
                    <div class="product-list">
                        <c:forEach var="product" items="${products}">
                            <div class="product-card">
                                <a href="product?id=${product.id}">
                                    <img src="${pageContext.request.contextPath}${product.image}"
                                         alt="${product.name}" class="product-image">
                                    <a href="product?id=${product.id}">
                                        <h2 class="product-title">${product.name}</h2>
                                    </a>

                                    <div class="product-price">${product.price}</div>
                                    <div class="shipping-info">Free shipping</div>
                            </div>
                        </c:forEach>
                    </div>

                    <p><span style="color: #707070;">Location:</span> United States</p>
                    <p><span style="color: #707070;">Member since:</span> Oct 16, 2024</p>
                </section>

                <section id="feedback-section" style="display: none;">
                    <h2>Customer Feedback</h2>

                    <!-- Các nút chọn feedback -->
                    <div class="feedback-buttons">
                        <button class="btn-feedback" onclick="showFeedback('positive')">Positive: ${positive.size()}</button>
                        <button class="btn-feedback" onclick="showFeedback('negative')">Negative: ${negative.size()}</button>
                    </div>

                    <!-- Nội dung feedback sẽ hiển thị tại đây -->
                    <div class="feedback-content">
                        <!-- Positive feedback -->
                        <div id="positive-feedback" class="feedback-item hidden">
                            <c:forEach var="p" items="positive">
                                <div class="feedback-box">
                                    <div class="avatar">
                                        <img src="${pageContext.request.contextPath}${p.buyer.avatar}" alt="${p.buyer.name}">
                                    </div>
                                    <div class="feedback-content">
                                        <p><strong>User: ${p.buyer.name}</strong> <br>${p.content}</p>
                                        <div class="feedback-actions">
                                            <span class="material-icons like">thumb_up</span>
                                            <span class="material-icons dislike">thumb_down</span>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>

                        <!-- Negative feedback -->
                        <div id="negative-feedback" class="feedback-item hidden">
                            <div class="feedback-box">
                                <div class="avatar">
                                    <img src="${pageContext.request.contextPath}/public/images/products/toys/toy_12_1.png" alt="Avatar">
                                </div>
                                <div class="feedback-content">
                                    <p><strong>Người dùng 3:</strong> <br>Hàng như shit, không bao h mua nữa.</p>
                                    <div class="feedback-actions">
                                        <span class="material-icons like">thumb_up</span>
                                        <span class="material-icons dislike">thumb_down</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>


                <section id="order-section" style="display: none;">
                    <h2>Order History</h2>

                    <div class="order-navigation">
                        <div class="btn-control-order">
                            <a href="#" class="btn-order" id="order-sell" onclick="showSoldOrders()">Sold Orders</a>
                            <a href="#" class="btn-order" id="order-buy" onclick="showBoughtOrders()">Bought Orders</a>
                        </div>
                    </div>
                    <div class="order-container">
                        <div class="order-half" id="sold-orders">
                            <div class="order-list-item">
                                <img src="watch-image-placeholder.png" alt="Watch Image">
                                <a href="#" class="order-info">
                                    <h4>1</h4>
                                    <p>3,289,520.00 VND</p>
                                    <p>buyer</p>
                                    <p>seller</p>
                                    <p>completed</p>
                                    <p>Oct-29 07:37</p>
                                </a>
                            </div>
                            <!-- Thêm các đơn hàng khác ở đây -->
                        </div>

                        <div class="order-half" id="bought-orders">
                            <div class="order-list-item">
                                <img src="watch-image-placeholder.png" alt="Watch Image">
                                <a href="#" class="order-info">
                                    <h4>1</h4>
                                    <p>3,289,520.00 VND</p>
                                    <p>buyer</p>
                                    <p>seller</p>
                                    <p>completed</p>
                                    <p>Oct-29 07:37</p>
                                </a>
                            </div>
                            <!-- Thêm các đơn hàng khác ở đây -->
                        </div>
                    </div>
                </section>


            </div>
        </div>

        <footer>
            <div class="footer-links">
                <a href="#">About eBay</a>
                <a href="#">Announcements</a>
                <a href="#">Community</a>
                <a href="#">Security Center</a>
                <a href="#">Policies</a>
                <a href="#">Help & Contact</a>
                <a href="#">Site Map</a>
            </div>
            <p>Copyright © 1995-2024 eBay Inc. All Rights Reserved.</p>
        </footer>

        <script src="${pageContext.request.contextPath}/public/js/account.js""></script>
    </body>
</html>
