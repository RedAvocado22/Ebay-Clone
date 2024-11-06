<%-- 
    Document   : orderDetail
    Created on : Nov 4, 2024, 6:59:28 PM
    Author     : ASUS
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/base/base.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/order.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <title>Ebay</title>
    </head>
    <body>
        <jsp:include page="/views/common/header.jsp"></jsp:include>
            <div class="body-style">
                <div class="cart-container">
                    <div class="container-seller">
                        <div class="seller-section">
                            <a href="account?username=${order.seller.username}">${order.seller.username}</a>
                        <p>50.9% positive feedback</p>
                        <c:forEach var="item" items="${order.items}">
                            <c:set var="productTotal" value="${item.product.price * item.quantity}" />
                            <div class="product">
                                <img src="${pageContext.request.contextPath}/${item.product.image}" alt="${item.product.name}">
                                <div class="product-details">
                                    <div class="info-detail">
                                        <a href="#">${item.product.name}</a>
                                        <p>Seller: ${item.product.seller.fullname} </p> 
                                        <p>Price: $${item.product.price}</p>
                                    </div>
                                    <div class="quantity-product">
                                        <label>Quantity: <input type="number" value="${item.quantity}" readonly></label>
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
                        <div class="subtotal-price">
                            <h3>SubTotal:</h3>
                            <h3 class="price">US$${order.total}</h3>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="/views/common/footer.jsp"></jsp:include>
    </body>
</html>
