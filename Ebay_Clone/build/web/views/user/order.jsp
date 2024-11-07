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
                        <div class="order-actions">
                            <div class="subtotal-price">
                                <h3>Subtotal:</h3>
                                <h3 class="price">$${order.total}</h3>
                            </div>
                            <div class="buttons">
                                <c:if test="${order.seller.username == sessionScope.account.username}">
                                    <c:if test="${order.status != 'Feedbacked' && order.status != 'Shipped' && order.status != 'Received'}">
                                        <form method="post" action="order?id=${order.id}">
                                            <input hidden value="accept" type="text" name="action">
                                            <button type="submit" class="btn btn-primary">Accept</button>
                                        </form>
                                        <form method="post" action="order?id=${order.id}">
                                            <input hidden value="decline" type="text" name="action">
                                            <button type="submit" class="btn btn-secondary">Decline</button>
                                        </form>
                                    </c:if>
                                </c:if>
                                <c:if test="${order.status == 'Shipped' && sessionScope.account.username == order.buyer.username}">
                                    <form method="post" action="order?id=${order.id}">
                                        <input hidden value="received" type="text" name="action">
                                        <button type="submit" class="btn btn-primary">Received</button>
                                    </form>
                                    <form method="post" action="order?id=${order.id}">
                                        <input hidden value="decline" type="text" name="action">
                                        <button type="submit" class="btn btn-secondary">Decline</button>
                                    </form>
                                </c:if>
                                <c:if test="${order.status == 'Received' && sessionScope.account.username == order.buyer.username}">
                                    <form method="post" action="order?id=${order.id}">
                                        <input hidden value="feedback" type="text" name="action">
                                        <div style="display: flex; flex-direction: column; gap: 20px; justify-content: flex-end">
                                            <input type="textarea" name="content" placeholder="Enter your feedback" style="width: 450px; height: 250px">
                                            <select name="type">
                                                <option value="positive">Positive</option>
                                                <option value="negative">Negative</option>
                                            </select>
                                            <button type="submit" class="btn btn-primary">Feedback</button>
                                        </div>
                                    </form>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="/views/common/footer.jsp"></jsp:include>
    </body>
</html>
