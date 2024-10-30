<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/productstyle.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/base/base.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    </head>

    <body>
        <jsp:include page="/views/common/header.jsp"></jsp:include>
            <div class="container">
                <div class="product-image">
                    <img src="${pageContext.request.contextPath}/${product.image}" 
                     alt="">
            </div>

            <div class="product-details">
                <h1>${product.name}</h1>
                <div class="seller">
                    <div class="avatar">
                        <img src="${pageContext.request.contextPath}/${seller.avatar}" alt="${seller.avatar}">
                    </div>
                    <div class="seller-infor">
                        <a class="seller-name" href="#">${seller.fullname} (${seller.username})</a>
                        <br>
                        <a class="contact-seller" href="#">Contact seller</a>
                    </div>

                </div>
                <div class="price-infor">
                    <p class="price">${product.price}</p>
                </div>
                <p class="status-info">
                    Stock: <b style="color: black;"> ${product.quantity} </b>
                </p>

                <label class="quantity">Quantity:</label>
                <form action="cart?action=add" method="post">
                    <input type="number" id="quantity" value="1" min="1" max="${product.quantity}" name="quantity" class="quantity-input">
                    <input value="${product.id}" type="text" name="id" hidden>
                    <button class="buy-now-btn" type="submit">Add to cart</button>
                </form>
                <button class="add-to-watchlist-btn"> Add to watchlist</button>

                <div class="shipping-info">
                    <div class="shipping">
                        <p>Shipping:</p>
                        <p class="shipping-fee">Free delivery in 2-3 days
                            Get it between Wed, Oct 30 and Thu, Oct 31 to default. See detailsfor shipping
                            Located in: Clifton Park, New York, United States</p>
                    </div>

                    <div class="shipping">
                        <p>Returns:</p>
                        <p class="shipping-fee2">Seller does not accept returns. If the item you received doesn't match the listing description, your
                            purchase may be eligible for eBay Money Back Guarantee if the return request is made within 3 days
                            from delivery. See details- for more information about returns</p>
                    </div>

                    <div class="shipping">
                        <p>Payment:</p>
                        <img src="${pageContext.request.contextPath}/public/images/others/img_payment.png" alt="">
                    </div>
                </div>
            </div>
        </div>
        <div class="container" style="margin-bottom: 50px">
            <div class="similar-items">
                <h2>Similar Items</h2>
                <div class="similar-items-grid">
                    <c:forEach var="p" items="${products}">
                        <div class="item">
                            <a href="product?id=${p.id}">
                                <img src="${pageContext.request.contextPath}${p.image}" alt="${p.name}" class="product-image">
                            </a>
                            <a href="product?id=${p.id}">
                                <p class="item-title">${p.name}</p>
                            </a>
                            <p class="item-price">${p.price}$</p>
                            <p class="item-shipping">Free 2-3 day shipping</p>
                            <p class="item-sold">Stock: ${p.quantity}</p>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <jsp:include page="/views/common/footer.jsp"></jsp:include>
    </body>

</html>
