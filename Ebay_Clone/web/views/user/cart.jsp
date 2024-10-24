<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <title>Shopping Cart</title>
        <style>
            body {
                font-family: Arial, sans-serif;
            }
            .cart-container {
                width: 70%;
                margin: 0 auto;
            }
            h1 {
                font-size: 24px;
            }
            .seller-section {
                border: 1px solid #ccc;
                padding: 20px;
                margin-bottom: 20px;
            }
            .seller-header {
                font-size: 18px;
                font-weight: bold;
                margin-bottom: 15px;
            }
            .item-row {
                display: flex;
                justify-content: space-between;
                margin-bottom: 15px;
            }
            .item-info {
                display: flex;
                align-items: center;
            }
            .item-info img {
                width: 100px;
                height: auto;
                margin-right: 15px;
            }
            .item-details {
                font-size: 14px;
            }
            .actions {
                text-align: right;
            }
            .actions button {
                background-color: #0070ba;
                color: white;
                border: none;
                padding: 10px 15px;
                cursor: pointer;
            }
            .actions button:hover {
                background-color: #005a99;
            }
            .price-info {
                text-align: right;
                font-size: 16px;
                font-weight: bold;
            }
            .qty-select {
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .qty-select button {
                width: 30px;
                height: 30px;
                font-size: 18px;
                cursor: pointer;
            }
            .qty-select input {
                width: 40px;
                text-align: center;
                font-size: 16px;
                margin: 0 5px;
            }
            .total-section {
                border: 1px solid #ccc;
                padding: 20px;
                text-align: right;
                font-size: 18px;
            }
            .total-section .btn-checkout {
                background-color: #0070ba;
                color: white;
                padding: 15px 30px;
                font-size: 16px;
                border: none;
                cursor: pointer;
            }
            .total-section .btn-checkout:hover {
                background-color: #005a99;
            }
        </style>
        <title>Ebay</title>
    </head>
    <body class="cart">

        <!-- Add your site or application content here -->
        <!-- header-area-start -->
        <jsp:include page="../common/header.jsp"></jsp:include>
            <!-- header-area-end -->
            <!-- cart-main-area-start -->
            <div class="cart-container">
                <h1>Shopping Cart</h1>

                <!-- Seller 1 -->
                <div class="seller-section">
                    <div class="seller-header">
                        Seller <a href="#">perf_essential</a>
                    </div>

                    <div class="item-row">
                        <div class="item-info">
                            <img src="earbuds.jpg" alt="Earbuds">
                            <div class="item-details">
                                <p><strong>2023 Auriculares Auriculares Bluetooth 5.1 Inalámbricos...</strong></p>
                                <p>Nuevo</p>
                            </div>
                        </div>
                        <div class="price-info">
                            <p>US $12.99</p>
                            <p>Free shipping</p>
                        </div>
                        <div class="actions">
                            <div class="qty-select">
                                <button onclick="decreaseQty('qty1')">-</button>
                                <input type="text" id="qty1" value="1" readonly>
                                <button onclick="increaseQty('qty1')">+</button>
                            </div>
                            <br>
                            <a href="#">Save for later</a> | <a href="#">Remove</a>
                        </div>
                    </div>
                </div>

                <!-- Subtotal Section -->
                <div class="total-section">
                    <p>Item (1): <span id="item-price">US $12.99</span></p>
                    <p>Subtotal: <span id="subtotal">US $12.99</span></p>
                    <button class="btn-checkout">Go to checkout</button>
                </div>
            </div>

            <!-- cart-main-area-end -->
            <!-- footer-area-start -->
        <jsp:include page="../common/footer.jsp"></jsp:include> 
        <script src="${pageContext.request.contextPath}/public/js/js.js"></script>
        <!-- footer-area-end -->
        <script>
                                // Price of the item
                                const pricePerItem = 12.99;

                                // Function to increase quantity
                                function increaseQty(qtyId) {
                                    const qtyInput = document.getElementById(qtyId);
                                    let currentQty = parseInt(qtyInput.value);
                                    qtyInput.value = currentQty + 1;
                                    updateSubtotal();
                                }

                                // Function to decrease quantity
                                function decreaseQty(qtyId) {
                                    const qtyInput = document.getElementById(qtyId);
                                    let currentQty = parseInt(qtyInput.value);
                                    if (currentQty > 1) {
                                        qtyInput.value = currentQty - 1;
                                        updateSubtotal();
                                    }
                                }

                                // Function to update subtotal when quantity changes
                                function updateSubtotal() {
                                    const qty = parseInt(document.getElementById('qty1').value);
                                    const subtotal = pricePerItem * qty;
                                    document.getElementById('subtotal').textContent = `US $${subtotal.toFixed(2)}`;
                                }
        </script>
    </body>
</html>
