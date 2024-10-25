<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/base/base.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/loginstyle.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"        />
        <title>Ebay</title>
    </head>

<body>
    <div class="logo">
        <a href="${pageContext.request.contextPath}/views/home.jsp"><img src="${pageContext.request.contextPath}/public/images/icon/ebay_icon.png" alt=""></a>

    </div>
    <div class="login-container">
        <form class="login-form" method="post" action="login">
            <h2>Sign in to your account</h2>
            <p>New to eBay? <a href="${pageContext.request.contextPath}/views/user/register.jsp">Create account</a></p>
            <input name="username" type="text" placeholder="Email or username" class="input-field">
            <input name="password" type="password" placeholder="Password" class="input-field">
            <c:if test="${not empty error}">
                <div style="color: red; margin-bottom: 15px; font-family: inherit">${error}</div>
            </c:if>
            <button class="continue-btn" type="submit">Sign in</button>
            <div class="or-section">
                <span></span>
            </div>
            <button class="social-login google">Continue with Google</button>
            <button class="social-login facebook">Continue with Facebook</button>
            <button class="social-login apple">Continue with Apple</button>
        </form>
    </div>
    <footer>
        <p>Copyright © 1995-2024 eBay Inc. All Rights Reserved.</p>
        <ul class="footer-links">
            <li><a href="#">Accessibility</a></li>
            <li><a href="#">User Agreement</a></li>
            <li><a href="#">Privacy</a></li>
            <li><a href="#">Cookies</a></li>
        </ul>
    </footer>
</body>

</html>
