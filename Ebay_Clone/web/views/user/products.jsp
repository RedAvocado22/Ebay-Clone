<%-- 
    Document   : product
    Created on : Oct 26, 2024, 8:49:58 PM
    Author     : Qanh
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/base/base.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/productsstyle.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <title>Ebay Product</title>
    </head>
    <body>
        <jsp:include page="/views/common/header.jsp"></jsp:include>
            <div class="container">
                <div class="sidebar">
                    <div class="category-filter">
                        <h3>Shop by Category</h3>
                        <form>
                            <ul>
                                <li><input type="checkbox" id="beauty"><label for="beauty">Beauty</label></li>
                                <li><input type="checkbox" id="book"><label for="book">Book</label></li>
                                <li><input type="checkbox" id="clothing"><label for="clothing">Clothing</label></li>
                                <li><input type="checkbox" id="electronic"><label for="electronic">Electronic</label></li>
                                <li><input type="checkbox" id="home-kitchen"><label for="home-kitchen">Home & Kitchen</label></li>
                                <li><input type="checkbox" id="jewelry"><label for="jewelry">Jewelry</label></li>
                                <li><input type="checkbox" id="sport"><label for="sport">Sport</label></li>
                                <li><input type="checkbox" id="toy"><label for="toy">Toy</label></li>
                            </ul>
                        </form>
                    </div>
                    <div class="price-filter">
                        <h3>Price</h3>
                        <form>
                            <ul>
                                <li><input type="checkbox" id="under-price"><label for="under-price">Under $888,200.00</label>
                                </li>
                                <li><input type="checkbox" id="range-price"><label for="range-price">$888,200.00 <br> to
                                        $3,806,400.00</label></li>
                                <li><input type="checkbox" id="over-price"><label for="over-price">Over $3,806,400.00</label>
                                </li>
                            </ul>

                            <div class="price-range">
                                <input type="number" id="min-price"> VND
                                <span>-</span>
                                <input type="number" id="max-price"> VND
                            </div>

                            <button class="apply-button"> <span class="material-icons">
                                    keyboard_arrow_right
                                </span></button>
                        </form>

                    </div>

                </div>

                <div class="product-content">
                    <div class="header-product">
                        <div class="sort-list-style">
                            <select class="sort-dropdown">
                                <option>Best Match</option>
                                <option>Lowest Price</option>
                                <option>Highest Price</option>
                                <option>Ending Soonest</option>
                            </select>

                        </div>
                    </div>

                    <div class="product-list">
                    <c:forEach var="product" items="${products}">
                        <div class="product-card">
                            <a href="product?id=${product.id}">
                                <img src="${pageContext.request.contextPath}${product.image}"
                                     alt="${product.name}" class="product-image">
                                <a href="product?id=${product.id}">
                                    <h2 class="product-title">${product.name}</h2>
                                </a>

                                <div class="product-price">$${product.price}</div>
                                <div class="shipping-info">Free shipping</div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <jsp:include page="/views/common/footer.jsp"></jsp:include>
    </body>
</html>

