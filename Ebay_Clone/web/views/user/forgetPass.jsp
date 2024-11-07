<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/loginstyle.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <title>Ebay - Reset Password</title>
    </head>

    <body>
        <div class="logo">
            <a href="${pageContext.request.contextPath}/home">
                <img src="${pageContext.request.contextPath}/public/images/icon/ebay_icon.png" alt="eBay Logo">
            </a>
        </div>
        <div class="login-container">
            <form class="login-form" method="post" action="forgetPass">
                <h2>Reset your password</h2>
                <p>New to eBay? <a href="${pageContext.request.contextPath}/register">Create account</a></p>
                <input name="username" type="text" placeholder="Email or username" class="input-field" required>
                <input name="newPassword" type="password" placeholder="New Password" class="input-field" required>
                <input name="cfPassword" type="password" placeholder="Confirm New Password" class="input-field" required>
                <c:if test="${not empty error}">
                    <div style="color: red; margin-bottom: 15px; font-family: inherit">${error}</div>
                </c:if>
                <c:if test="${not empty message}">
                    <div style="color: blue; margin-bottom: 15px; font-family: inherit">${message}</div>
                </c:if>
                <button class="continue-btn" type="submit">Reset Password</button>
                <div class="or-section">
                    <span></span>
                </div>
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
