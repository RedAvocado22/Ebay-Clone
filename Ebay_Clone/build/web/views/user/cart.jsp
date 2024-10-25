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
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0&icon_names=add" />
        <title>Shopping Cart</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }
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
            .seller-section {
                border: 1px solid #ddd;
                padding: 20px;
                margin-bottom: 20px;
                border-radius: 8px;
                background-color: #fafafa;
            }
            .seller-header {
                font-size: 18px;
                font-weight: bold;
                margin-bottom: 15px;
                color: #0070ba;
            }
            .item-row {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
            }
            .item-info {
                display: flex;
                align-items: center;
            }
            .item-info img {
                width: 120px;
                height: auto;
                margin-right: 20px;
                border-radius: 8px;
            }
            .item-details p {
                margin: 0;
                font-size: 14px;
                color: #555;
            }
            .price-info {
                text-align: right;
                font-size: 16px;
                font-weight: bold;
                color: #333;
            }
            .actions {
                text-align: right;
            }
            .actions button {
                background-color: #0070ba;
                color: white;
                border: none;
                padding: 8px 12px;
                border-radius: 4px;
                cursor: pointer;
                transition: background-color 0.3s;
            }
            .actions button:hover {
                background-color: #005a99;
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
            }
            .qty-select button {
                width: 30px;
                height: 30px;
                font-size: 18px;
                cursor: pointer;
                border: 1px solid #ccc;
                background-color: #f8f8f8;
                border-radius: 50%;
                margin: 0 5px;
            }
            .qty-select svg {
                transform: translate(-40%, -25%); 
            }
            .qty-select button:hover {
                background-color: #eee;
            }
            .qty-select input {
                width: 50px;
                text-align: center;
                font-size: 16px;
                border: 1px solid #ccc;
                border-radius: 4px;
                padding: 4px 0;
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
            @media (max-width: 768px) {
                .cart-container {
                    width: 95%;
                }
                .item-row {
                    flex-direction: column;
                    text-align: center;
                }
                .price-info {
                    margin-top: 10px;
                }
                .actions {
                    margin-top: 10px;
                }
            }
        </style>
    </head>
    <body class="cart">

        <!-- header-area-start -->
        <jsp:include page="../common/header.jsp"></jsp:include>
            <!-- header-area-end -->

            <!-- cart-main-area-start -->
            <div class="cart-container">
                <h1>Shopping Cart</h1>

                <!-- Seller Section -->
                <div class="seller-section">
                    <div class="seller-header">
                        Seller <a href="#">perf_essential</a>
                    </div>

                    <div class="item-row">
                        <div class="item-info">
                            <img src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_10_1.png" alt="Earbuds">
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
                            <button onclick="decreaseQty('qty1')">
                                <svg xmlns="http://www.w3.org/2000/svg" 
                                     height="24px" viewBox="0 -960 960 960" width="24px" fill="#000000">
                                <path d="M200-440v-80h560v80H200Z"/>
                                </svg>
                            </button>
                            <input type="text" id="qty1" value="1" readonly>
                            <button onclick="increaseQty('qty1')">
                                <svg xmlns="http://www.w3.org/2000/svg" 
                                     height="24px" viewBox="0 -960 960 960" width="24px" fill="#000000">
                                <path d="M440-440H200v-80h240v-240h80v240h240v80H520v240h-80v-240Z"/>
                                </svg>
                            </button>
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
            <!-- footer-area-end -->

            <script src="${pageContext.request.contextPath}/public/js/js.js"></script>

        <script>
                                const pricePerItem = 12.99;

                                function increaseQty(qtyId) {
                                    const qtyInput = document.getElementById(qtyId);
                                    let currentQty = parseInt(qtyInput.value);
                                    qtyInput.value = currentQty + 1;
                                    updateSubtotal();
                                }

                                function decreaseQty(qtyId) {
                                    const qtyInput = document.getElementById(qtyId);
                                    let currentQty = parseInt(qtyInput.value);
                                    if (currentQty > 1) {
                                        qtyInput.value = currentQty - 1;
                                        updateSubtotal();
                                    }
                                }

                                function updateSubtotal() {
                                    const qty = parseInt(document.getElementById('qty1').value);
                                    const subtotal = pricePerItem * qty;
                                    document.getElementById('subtotal').textContent = `US $${subtotal.toFixed(2)}`;
                                }
        </script>
    </body>
</html>
