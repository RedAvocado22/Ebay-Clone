<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/base/base.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <title>Shopping Cart</title>
        <style>
            .cart-container {
                width: 80%;
                max-width: 1200px;
                margin: 40px auto;
                background-color: #fff;
                padding: 20px;
                box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
            }
            h1 {
                font-size: 26px;
                margin-bottom: 20px;
                color: #333;
            }
            .item-row {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
                border-bottom: 1px solid #ddd;
                padding-bottom: 20px;
            }
            .item-info {
                display: flex;
                align-items: center;
                flex: 2;
            }
            .item-info img {
                width: 120px;
                height: auto;
                margin-right: 20px;
                border-radius: 8px;
            }
            .item-details {
                font-size: 16px;
                color: #333;
                display: flex;
                flex-direction: column;
            }
            .item-details p {
                margin: 5px 0;
            }
            .item-details .product-name {
                font-size: 18px;
                font-weight: bold;
            }
            .item-details .product-seller {
                font-size: 14px;
                color: #888;
            }
            .item-details .product-price {
                font-size: 16px;
                color: #0070ba;
                font-weight: bold;
            }
            .price-info {
                text-align: right;
                font-size: 16px;
                font-weight: bold;
                color: #333;
                flex: 1;
            }
            .actions {
                text-align: right;
                flex: 1;
            }
            .actions a {
                margin: 0 10px;
                color: #0070ba;
                text-decoration: none;
                font-size: 14px;
            }
            .actions a:hover {
                text-decoration: underline;
            }
            .qty-select {
                display: flex;
                align-items: center;
                justify-content: center;
                gap: 10px;
            }
            .qty-select button {
                width: 30px;
                height: 30px;
                font-size: 18px;
                cursor: pointer;
                border: 1px solid #ccc;
                background-color: #f8f8f8;
                border-radius: 50%;
            }
            .qty-select input {
                width: 50px;
                text-align: center;
                font-size: 16px;
                border: 1px solid #ccc;
                border-radius: 4px;
                padding: 4px;
            }
            .total-price {
                text-align: right;
                font-size: 16px;
                color: #0070ba;
                font-weight: bold;
                flex: 1;
            }
            .total-section {
                border-top: 1px solid #ddd;
                padding-top: 20px;
                text-align: right;
                font-size: 18px;
                color: #333;
            }
            .total-section .btn-checkout {
                background-color: #ff6600;
                color: white;
                padding: 15px 30px;
                font-size: 16px;
                border: none;
                cursor: pointer;
                border-radius: 8px;
                transition: background-color 0.3s;
            }
            .total-section .btn-checkout:hover {
                background-color: #e65c00;
            }
        </style>
    </head>
    <body class="cart">
        <jsp:include page="../common/header.jsp" />

        <div class="cart-container">
            <h1>Shopping Cart</h1>

            <c:set var="total" value="0" scope="page" />
            <c:forEach var="item" items="${cart}">
                <c:set var="lineTotal" value="${item.product.price * item.quantity}" />
                <c:set var="total" value="${total + lineTotal}" />
                <div class="item-row">
                    <div class="item-info">
                        <img src="${pageContext.request.contextPath}${item.product.image}" alt="${item.product.name}">
                        <div class="item-details">
                            <p class="product-name">${item.product.name}</p>
                            <p class="product-seller">Sold by: ${item.product.seller.username}</p>
                            <p class="product-price">Unit price: ${item.product.price}$</p>
                        </div>
                    </div>
                    <div class="qty-select">
                        <form action="cart?action=change" method="post" style="display: inline;">
                            <input type="hidden" name="id" value="${item.product.id}">
                            <input type="hidden" name="change" value="-1">
                            <button type="submit">-</button>
                        </form>
                        <input type="text" value="${item.quantity}" readonly>
                        <form action="cart?action=change" method="post" style="display: inline;">
                            <input type="hidden" name="id" value="${item.product.id}">
                            <input type="hidden" name="change" value="1">
                            <button type="submit">+</button>
                        </form>
                    </div>
                    <div class="total-price">
                        Total: ${lineTotal}$
                    </div>
                    <div class="actions">
                        <a href="#">Save for later</a> | <a href="#">Remove</a>
                    </div>
                </div>
            </c:forEach>
            <div class="total-section">
                <p>Subtotal: <span id="subtotal">US $<c:out value="${total}" /></span></p>
                <form action="checkout" method="get" style="display: inline;">
                    <button class="btn-checkout" type="submit">Go to checkout</button>
                </form>
            </div>
        </div>

        <jsp:include page="../common/footer.jsp" />
    </body>
</html>
