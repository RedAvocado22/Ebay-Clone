<%-- 
    Document   : views
    Created on : Sep 18, 2024, 11:12:35 PM
    Author     : Minh Cuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"        />
        <title>Ebay</title>
    </head>
    <body>
        <jsp:include page="common/header.jsp"></jsp:include>
            <div id="nav-categories">
                <a href="https://youtube.com/@ThongNhat-SSG104-FPTU">Explore(New!)</a>
                <a>Saved</a>
                <a>Electronics</a>
                <a>Clothing</a>
                <a>Home & Kitchen</a>
                <a>Books</a>
                <a>Toys</a>
                <a>Sports</a>
                <a>Beauty</a>
                <a>Jewelry</a>
                <a>Deals</a>
                <a>Sell</a>
            </div>
            <main>
                <div id="products">
                    <div class="product-list">
                        <span
                            id="le"
                            class="material-symbols-outlined arrow-left"
                            onclick="scrollb('geschenkideen', 'left')"
                            >
                            arrow_back
                        </span>
                        <span
                            id="ri"
                            class="material-symbols-outlined arrow-right"
                            onclick="scrollb('geschenkideen', 'right')"
                            >
                            arrow_forward
                        </span>
                        <h1>Your Recently viewed Items</h1>
                        <ul id="geschenkideen">
                            <li>
                                <img
                                    class="image-product"
                                    src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_1_1.png" 
                                />
                            <p>
                                USD 20
                                <a
                                    href="https://www.youtube.com/watch?v=TxU07WQVkko"
                                    ><span class="right">camera</span></a
                                >
                            </p>
                        </li>
                        <li>
                            <img class="image-product" src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_2_1.png" />
                            <p>
                                USD 69,69 <span class="right">camera</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_3_1.png"
                                />
                            <p>
                                USD 4,20 <span class="right">camera</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_4_1.png"
                                />
                            <p>
                                USD 6,66 <span class="right">camera</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_5_1.png"
                                />
                            <p>
                                USD 694,20 <span class="right">camera</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_6_1.png"
                                />
                            <p>
                                USD 1,99 <span class="right">camera</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_7_1.png"
                                />
                            <p>
                                USD 1,99 <span class="right">camera</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_8_1.png"
                                />
                            <p>
                                USD 1,99 <span class="right">camera</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_9_1.png"
                                />
                            <p>
                                USD 1,99 <span class="right">camera</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cameras/camera_10_1.png"
                                />
                            <p>
                                USD 1,99 <span class="right">camera</span>
                            </p>
                        </li>
                    </ul>
                </div>

                <div id="advert">
                    <a id="anchor-garage"
                       >Shop now <img id="arrow-right"
                                        /></a>
                    <h1>Hunt down your next card</h1>
                    <img
                                class="image-banner"
                                src="${pageContext.request.contextPath}/public/images/banner/banner_12.png"
                                />
                    <div>
                        <p>
                            Each bid brings you closer to completing your collection.
                        </p>
                    </div>
                </div>

                <div class="product-list">
                    <span
                        class="material-symbols-outlined arrow-left"
                        onclick="scrollb('wow', 'left')"
                        >
                        arrow_back
                    </span>
                    <span
                        class="material-symbols-outlined arrow-right"
                        onclick="scrollb('wow', 'right')"
                        >
                        arrow_forward
                    </span>
                    <h1>WOW! Offer of the day!</h1>
                    <ul id="wow">
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cellphones/phone_1_1.png"
                                />
                            <p>
                                USD 1899,55 <span class="right">cellphones</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cellphones/phone_2_1.png"
                                />
                            <p>USD 101,10 <span class="right">cellphones</span></p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cellphones/phone_3_1.png"
                                />
                            <p>USD 23,33 <span class="right">cellphones</span></p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cellphones/phone_4_1.png"
                                />
                            <p>
                                USD 30,00
                                <span class="right">cellphones</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cellphones/phone_5_1.png"
                                />
                            <p>
                                USD 30,00 VB
                                <span class="right">cellphones</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cellphones/phone_6_1.png"
                                />
                            <p>
                                USD 2,98
                                <span class="right">cellphones</span>
                            </p>
                        </li>
                                                <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cellphones/phone_7_1.png"
                                />
                            <p>
                                USD 2,98
                                <span class="right">cellphones</span>
                            </p>
                        </li>
                                                <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cellphones/phone_8_1.png"
                                />
                            <p>
                                USD 2,98
                                <span class="right">cellphones</span>
                            </p>
                        </li>
                                                <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/cellphones/phone_9_1.png"
                                />
                            <p>
                                USD 2,98
                                <span class="right">cellphones</span>
                            </p>
                        </li>
                    </ul>
                </div>

                <div class="product-list">
                    <span
                        class="material-symbols-outlined arrow-left"
                        onclick="scrollb('kracher', 'left')"
                        >
                        arrow_back
                    </span>
                    <span
                        class="material-symbols-outlined arrow-right"
                        onclick="scrollb('kracher', 'right')"
                        >
                        arrow_forward
                    </span>
                    <h1>Great offers!</h1>
                    <ul id="kracher">
                        <li>
                            <img class="image-product" src="${pageContext.request.contextPath}/public/images/products/electronics/computers/pc_1_1.png" />
                            <p>
                                USD 999  
                                <a href="https://www.youtube.com/@ChayPham">
                                    <span class="right">computers</span>
                                </a>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/computers/pc_2_1.png"
                                />
                            <p>
                                USD 90,69 <span class="right">computers</span></p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/computers/pc_3_1.png"
                                />
                            <p>
                                USD 23,33 <span class="right">computers</span></p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/computers/pc_4_1.png"
                                />
                            <p>
                                USD 12,99
                                <span class="right">computers</span>
                            </p>
                        </li>
                        <li>
                            <img class="image-product" src="${pageContext.request.contextPath}/public/images/products/electronics/computers/pc_5_1.png" />
                            <p>
                                USD 2,00
                                <a
                                    href="https://www.youtube.com/watch?v=TxU07WQVkko"
                                    ><span class="right">computers</span></a
                                >
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/electronics/computers/pc_6_1.png"
                                />
                            <p>
                                USD 5069
                                <span class="right">computers</span>
                            </p>
                        </li>
                        <li>
                            <img class="image-product" src="${pageContext.request.contextPath}/public/images/products/electronics/computers/pc_7_1.png" />
                            <p>
                                USD 2,00
                                <a
                                    href="https://www.youtube.com/watch?v=TxU07WQVkko"
                                    ><span class="right">computers</span></a
                                >
                            </p>
                        </li>
                        <li>
                            <img class="image-product" src="${pageContext.request.contextPath}/public/images/products/electronics/computers/pc_8_1.png" />
                            <p>
                                USD 2,00
                                <a
                                    href="https://www.youtube.com/watch?v=TxU07WQVkko"
                                    ><span class="right">computers</span></a
                                >
                            </p>
                        </li>
                        <li>
                            <img class="image-product" src="${pageContext.request.contextPath}/public/images/products/electronics/computers/pc_9_1.png" />
                            <p>
                                USD 2,00
                                <a
                                    href="https://www.youtube.com/watch?v=TxU07WQVkko"
                                    ><span class="right">computers</span></a
                                >
                            </p>
                        </li>
                        <li>
                            <img class="image-product" src="${pageContext.request.contextPath}/public/images/products/electronics/computers/pc_10_1.png" />
                            <p>
                                USD 2,00
                                <a
                                    href="https://www.youtube.com/watch?v=TxU07WQVkko"
                                    ><span class="right">computers</span></a
                                >
                            </p>
                        </li>
                    </ul>
                </div>
            </div>
        </main>
        <hr />
        <jsp:include page="common/footer.jsp"></jsp:include> 
        <script>
            document.querySelector(".arrow-left:nth-child(1)").oncl;
            document
                    .querySelector(".arrow-left:nth-child(1)")
                    .addEventListener("click", scrollb("geschenkideen", "left"));

            document
                    .querySelector(".arrow-left:nth-child(1)")
                    .addEventListener("click", scrollb("geschenkideen", "right"));

            function scrollb(list, direction) {
                let scrollAmount = 0;

                let distance = 0;
                let screenwidth = window.screen.width;
                if (screenwidth <= 1300) {
                    distance = screenwidth;
                } else {
                    distance = 1300;
                }
                let step = distance / 50;
                let time = 5;
                e = document.getElementById(list);
                let slideTimer = setInterval(function () {
                    if (direction == "right") {
                        e.scrollLeft += step;
                    } else {
                        e.scrollLeft -= step;
                    }
                    scrollAmount += step;
                    if (scrollAmount >= distance) {
                        window.clearInterval(slideTimer);
                    }
                }, time);
            }
        </script>
    </body>
</html>
