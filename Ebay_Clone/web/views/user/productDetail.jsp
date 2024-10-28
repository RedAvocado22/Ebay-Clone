<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product Page - Magic the Gathering</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/productDetailstyle.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/base/base.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    </head>

    <body>
        <jsp:include page="/views/common/header.jsp"></jsp:include>
            <div class="container">
                <div class="product-image">
                    <img src="${pageContext.request.contextPath}/public/images/products/toys/toy_16_1.png" alt="Magic the Gathering Lord of the Rings Set Booster">
            </div>

            <div class="product-details">
                <h1>Set Booster Box Lord of the Rings Tales of Middle Earth LTR MTG</h1>
                <div class="seller">
                    <div class="avatar">

                        <img src="${pageContext.request.contextPath}/public/images/avatar/user1.png" alt="Avatar">
                    </div>
                    <div class="seller-infor">
                        <a class="seller-name" href="#">FlipSide Gaming (228642)</a>
                        <br>
                        <a class="contact-seller" href="#">Contact seller</a>
                    </div>

                </div>
                <div class="price-infor">
                    <p class="price">$154.99</p>
                </div>
                <p class="status-info">
                    Condition: <b style="color: black;"> New/Factory Sealed </b>
                </p>

                <label class="quantity">Quantity:</label>
                <input type="number" id="quantity" value="1" min="1" class="quantity-input">

                <button class="buy-now-btn">Buy It Now</button>
                <button class="add-to-cart-btn">Add to cart</button>
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
                </div>
            </div>
        </div>

        <div class="similar-items">
            <h2>Similar Items</h2>
            <div class="similar-items-grid">
                <div class="item">
                    <img src="${pageContext.request.contextPath}/public/images/products/electronics/computers/pc_1_1.png" alt="Canon PowerShot" class="product-image">
                    <p class="item-title">Set of 4 - 1 of Each Type - Scene Box Lord of the Rings Tales Vol 2 LTR MTG</p>
                    <p class="item-price">2,407,421.00 VND</p>
                    <p class="item-shipping">Free 2-3 day shipping</p>
                    <p class="item-sold">626 sold</p>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/public/images/products/electronics/computers/pc_2_2.png" alt="Canon PowerShot" class="product-image">
                    <p class="item-title">Lord of The Rings Tales of Middle-Earth Magic The Gathering Draft Booster Box</p>
                    <p class="item-price">4,212,162.00 VND</p>
                    <p class="item-shipping">+ shipping</p>
                    <p class="item-feedback">Seller with 100% positive feedback</p>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/public/images/products/electronics/tv/tv_3_1.png" alt="Canon PowerShot" class="product-image">
                    <p class="item-title">MTG The One Ring The Lord of the Rings: Tales of Middle-earth 451 Foil Mythic</p>
                    <p class="item-price">1,294,176.00 VND</p>
                    <p class="item-auction">7 bids</p>
                    <p class="item-shipping">+ 101,504.00 VND shipping</p>
                    <p class="item-feedback">Seller with 99.3% positive feedback</p>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/public/images/products/electronics/cellphones/phone_4_1.png" alt="Canon PowerShot" class="product-image">
                    <p class="item-title">Draft Booster Box Lord of the Rings Tales of Middle Earth LTR MTG</p>
                    <p class="item-price">3,933,026.00 VND</p>
                    <p class="item-shipping">Free 2-3 day shipping</p>
                    <p class="item-sold">308 sold</p>
                </div>
            </div>
        </div>
        <jsp:include page="/views/common/footer.jsp"></jsp:include>
    </body>

</html>