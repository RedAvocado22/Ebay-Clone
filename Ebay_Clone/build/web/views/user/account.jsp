<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/base/base.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/account.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <title>Ebay</title>
    </head>
    <body>
        <jsp:include page="/views/common/header.jsp"></jsp:include>
            <div class="profile">
                <div class="profile-header">
                    <div class="profile-info">
                        <img src="${pageContext.request.contextPath}${account.avatar}" alt="Profile Picture" class="profile-image">
                    <h1>${account.fullname}</h1>
                </div>
                <div class="edit-form">
                    <c:if test="${account.username == sessionScope.account.username}">
                        <span class="material-icons md-light">mode_edit</span>
                        <button class="edit-profile-btn">Edit profile</button>
                    </c:if>
                </div>
            </div>

            <div class="profile-navigation">
                <div class="section-btn">
                    <a href="?section=about" id="about-tab" class="${section == 'about' ? 'active' : ''}">Shop</a>
                    <a href="?section=feedback" id="feedback-tab" class="${section == 'feedback' ? 'active' : ''}">Feedback</a>
                    <a href="?section=order" id="order-tab" class="${section == 'order' ? 'active' : ''}">Order</a>
                </div>
            </div>

            <div class="profile-content">
                <!-- Shop Section -->
                <c:if test="${section == 'about'}">
                    <section id="shop-section">
                        <h2>Shop</h2>
                        <div class="product-list">
                            <c:forEach var="product" items="${products}">
                                <div class="product-card">
                                    <a href="product?id=${product.id}">
                                        <img src="${pageContext.request.contextPath}${product.image}" alt="${product.name}" class="product-image">
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
                        <p><span style="color: #707070;">Location:</span> United States</p>
                        <p><span style="color: #707070;">Member since:</span> Oct 16, 2024</p>
                    </section>
                </c:if>

                <!-- Feedback Section -->
                <c:if test="${section == 'feedback'}">
                    <section id="feedback-section">
                        <h2>Customer Feedback</h2>
                        <div class="feedback-content">
                            <div class="feedback-item">
                                <h3>Positive: ${positive.size()}</h3>
                                <c:forEach var="p" items="${positive}">
                                    <div class="feedback-box">
                                        <div class="avatar">
                                            <img src="${pageContext.request.contextPath}${p.buyer.avatar}" alt="${p.buyer.username}">
                                        </div>
                                        <div class="feedback-content">
                                            <p><strong>${p.buyer.username}</strong> <br>${p.content}</p>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <div class="feedback-item">
                                <h3>Negative: ${negative.size()}</h3>
                                <c:forEach var="n" items="${negative}">
                                    <div class="feedback-box">
                                        <div class="avatar">
                                            <img src="${pageContext.request.contextPath}${n.buyer.avatar}" alt="${n.buyer.username}">
                                        </div>
                                        <div class="feedback-content">
                                            <p><strong>${n.buyer.username}</strong> <br>${n.content}</p>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </section>
                </c:if>

                <!-- Order Section -->
                <c:if test="${section == 'order'}">
                    <section id="order-section">
                        <h2>Order History</h2>
                        <!-- Order Content Goes Here -->
                    </section>
                </c:if>
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
    </body>
</html>
