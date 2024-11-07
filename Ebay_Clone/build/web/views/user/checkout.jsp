<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/base/base.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/checkoutstyle.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <title>Ebay Product</title>
    </head>
    <body>
        <jsp:include page="/views/common/header.jsp"></jsp:include>
            <div class="body-style">
                <div class="cart-container">
                    <!-- Seller Section -->
                    <div class="container-seller">
                        <c:forEach var="order" items="${orders}">
                            <div class="seller-section">
                                <a href="#">${order.seller.fullname}</a>
                                <p>99.3% positive feedback</p>
                                <c:forEach items="${order.items}" var="item">
                                    <c:set var="productTotal" value="${item.product.price * item.quantity}" />
                                    <div class="product">
                                        <img src="${pageContext.request.contextPath}/${item.product.image}" alt="${item.product.name}">
                                        <div class="product-details">
                                            <div class="info-detail">
                                                <a href="#">${item.product.name}</a>
                                                <p>Price: $<fmt:formatNumber value="${productTotal}" type="number" maxFractionDigits="2"></fmt:formatNumber></p>
                                                </div>
                                                <div class="quantity-product">
                                                    <label>Quantity: <input type="number" value="${item.quantity}"></label>
                                            </div>
                                            <div class="price-product">
                                                <p>$<fmt:formatNumber value="${productTotal}" type="number" maxFractionDigits="2"></fmt:formatNumber></p>
                                                <p style="font-size: 12px; font-weight: normal; color: #555555;">
                                                    (£<fmt:formatNumber value="${productTotal * 0.77}" type="number" maxFractionDigits="2"></fmt:formatNumber>)
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </c:forEach>
                    </div>

                <!-- Subtotal Section -->
                    <div class="subtotal-section">
                        <div class="price-flex">
                            <div class="label-item">
                                <p>Items: 
                                    <c:set var="totalItems" value="0" />
                                    <c:forEach var="order" items="${orders}">
                                        <c:forEach var="item" items="${order.items}">
                                            <c:set var="totalItems" value="${totalItems + item.quantity}" />
                                        </c:forEach>
                                    </c:forEach>
                                    ${totalItems}
                                </p>
                                <p>Shipping:</p>
                            </div>
                            <div class="price-total">
                                <p>
                                    Subtotal: US$ 
                                    <c:set var="subtotal" value="0" />
                                    <c:forEach var="order" items="${orders}">
                                        <c:forEach var="item" items="${order.items}">
                                            <c:set var="subtotal" value="${subtotal + (item.product.price * item.quantity)}" />
                                        </c:forEach>
                                    </c:forEach>
                                    <fmt:formatNumber value="${subtotal}" type="number" minFractionDigits="2" maxFractionDigits="2" />
                                </p>
                            </div>
                        </div>
                        <hr>
                        <div class="subtotal-price">
                            <h3>Grand Total:</h3>
                            <h3>US$ 
                                <c:set var="grandTotal" value="${subtotal}" />
                                <fmt:formatNumber value="${grandTotal}" type="number" minFractionDigits="2" maxFractionDigits="2" />
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
        <jsp:include page="/views/common/footer.jsp"></jsp:include>\
    </body>
</html>
