<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/base/base.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/registerstyle.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"        />
        <title>Ebay</title>
    </head>

    <body>

        <div class="sign-in">
            Already have an account? <a href="${pageContext.request.contextPath}/login">Sign in</a>
        </div>

        <div class="logo-img">

            <div class="logo">
                <a href="${pageContext.request.contextPath}/home"><img src="${pageContext.request.contextPath}/public/images/icon/ebay_icon.png" alt=""></a>

            </div>
            <div class="image-section">
                <img src="${pageContext.request.contextPath}/public/images/banner/img_register.jpg" alt="eBay Banner">
            </div>
        </div>

        <div class="container">

            <div class="form-section">
                <h1 class="form-title">Create an account</h1>

                <form method="post" action="register">
                    <div class="username-input width-input">
                        <input type="text" placeholder="Username" name="username">
                    </div>
                    <div class="input-group width-input">
                        <input type="text" placeholder="First name" name="firstName">
                        <input type="text" placeholder="Last name" name="lastName">
                    </div>
                    <div class="email-input width-input">
                        <input type="email" placeholder="Email" name="email">
                    </div>

                    <div class="password-field width-input">
                        <input type="password" placeholder="Password" name="password">
                        <button type="button" class="toggle-password"></button>
                    </div>
                    <div class="password-field width-input">
                        <span style="color: red">${error}</span>
                    </div>
                    <p class="terms">By selecting Create personal account, you agree to our <a href="#">User Agreement</a>
                        and acknowledge reading our <a href="#">User Privacy Notice</a>.</p>
                    <button type="submit" class="create-btn">Create personal account</button>
                </form>

                <div class="social-load">
                    <div class="or-section">
                        <span></span>
                    </div>

                    <div class="social-icons">
                        <button class="google social-login">Google</button>
                        <button class="facebook social-login">Facebook</button>
                        <button class="apple social-login">Apple</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
