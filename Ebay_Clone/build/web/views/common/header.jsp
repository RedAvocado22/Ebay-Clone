<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/base/base.css" />
<nav>
    <div id="nav" class="clearfix">
        <div>
            <!-- Check if the account is stored in the session -->
            <c:choose>
                <c:when test="${not empty sessionScope.account}">
                    <!-- Display Hello, account.name if account exists in session -->
                    <a href="${pageContext.request.contextPath}/account">Hello, ${sessionScope.account.fullname}</a>
                </c:when>
                <c:otherwise>
                    <!-- Default sign in or register if no account in session -->
                    <a href="${pageContext.request.contextPath}/login">Sign in or Register</a>
                </c:otherwise>
            </c:choose>
            <a href="#">Helps and Contact</a>
        </div>
        <div class="right">
            <a id="dropdown-myebuy" href="${pageContext.request.contextPath}/account">My Ebay</a>
            <a id="bell" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">
                <span class="material-icons md-18">notifications_none</span>
            </a>
            <a href="${pageContext.request.contextPath}/cart" id="cart">
                <span class="material-icons md-18">
                    shopping_cart
                </span>
            </a>
        </div>
    </div>
</nav>
<header class="logo-body">
    <div id="logo">
        <a href="${pageContext.request.contextPath}/home">
            <img src="${pageContext.request.contextPath}/public/images/icon/ebay_icon.png" alt="">
        </a>
    </div>

        <form id="search" action="product" method="post">
        <div class="material-icons magnification-glass md-18">
            search
        </div>
        <input type="text" name="search" placeholder="Search for anything " />
    </form>
    <select id="categories-dropdown">
        <option class="dropbtn">Category
            <i class="fa fa-caret-down"></i>
        </option>
        <div class="material-icons md-18">
            arrow_drop_down
        <div class="dropdown-content">
            <option href="${pageContext.request.contextPath}/product">All categories</option>
            <option href="${pageContext.request.contextPath}/product?category=1">Electronics</option>
            <option href="${pageContext.request.contextPath}/product?category=2">Clothing</option>
            <option href="${pageContext.request.contextPath}/product?category=3">Home & Kitchen</option>
            <option href="${pageContext.request.contextPath}/product?category=4">Books</option>
            <option href="${pageContext.request.contextPath}/product?category=5">Toys</option>
            <option href="${pageContext.request.contextPath}/product?category=6">Sports</option>
            <option href="${pageContext.request.contextPath}/product?category=7">Beauty</option>
            <option href="${pageContext.request.contextPath}/product?category=8">Jewelry</option>
        </div>
    </select>
    <button type="submit" id="button-search">Search</button>
</header>
