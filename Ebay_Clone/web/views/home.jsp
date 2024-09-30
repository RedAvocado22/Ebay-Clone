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
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
            />
        <title>Ebay</title>
    </head>
    <body>
        <jsp:include page="common/header.jsp"></jsp:include>
            <div id="nav-categories">
                <a href="https://youtube.com/@ThongNhat-SSG104-FPTU">Explore</a>
                <a>Saved</a>
                <a>Electronics</a>
                <a>Motors</a>
                <a>Fashion</a>
                <a>Collectibles and Art</a>
                <a>Health & Beauty</a>
                <a>Sports</a>
                <a>Home & Garden</a>
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
                        <h1>Geschenkideen</h1>
                        <ul id="geschenkideen">
                            <li>
                                <img
                                    class="image-product"
                                    src="${pageContext.request.contextPath}/public/images/products/Straykidsalbum20€.jpg"
                                />
                            <p>
                                EUR 20
                                <a
                                    href="https://www.youtube.com/watch?v=TxU07WQVkko"
                                    ><span class="right">Yeetou</span></a
                                >
                            </p>
                        </li>
                        <li>
                            <img class="image-product" src="${pageContext.request.contextPath}/public/images/products/cat.jpg" />
                            <p>
                                EUR 69,69 <span class="right">FloofyFoxy</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/pizza.jpg"
                                />
                            <p>
                                EUR 4,20 <span class="right">FloofyFoxy</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/doener.jpg"
                                />
                            <p>
                                EUR 6,66 <span class="right">FloofyFoxy</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/money.jpg"
                                />
                            <p>
                                EUR 694,20 <span class="right">FloofyFoxy</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/creepytree.jpg"
                                />
                            <p>
                                EUR 1,99 <span class="right">FloofyFoxy</span>
                            </p>
                        </li>
                    </ul>
                </div>

                <div id="advert">
                    <a id="anchor-garage"
                       >Nutze My Garage <img id="arrow-right"
                                          /></a>
                    <h1>Ersatzteile, die passen</h1>
                    <div>
                        <p>
                            Fahrzeugdaten einmalig angeben und immer das
                            Richtige finden.
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
                    <h1>WOW! Des Tages!</h1>
                    <ul id="wow">
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/sunset.jpg"
                                />
                            <p>
                                EUR 1899,55 <span class="right">Asecave</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/klöße.jpg"
                                />
                            <p>EUR 101,10 <span class="right">~Lyte~</span></p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/keyboard.png"
                                />
                            <p>EUR 23,33 <span class="right">Asecave</span></p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/camera.jpg"
                                />
                            <p>
                                EUR 30,00 VB
                                <span class="right">BraveBoyB...</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/printer.jpg"
                                />
                            <p>
                                EUR 30,00 VB
                                <span class="right">BraveBoyB...</span>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/coin.jpg"
                                />
                            <p>
                                EUR 2,98
                                <span class="right">BraveBoyBackfisch</span>
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
                    <h1>Kracher Angebote!</h1>
                    <ul id="kracher">
                        <li>
                            <img class="image-product" src="${pageContext.request.contextPath}/public/images/products/anh the.jpg" />
                            <p>
                                VND ???  
                                <a href="https://www.youtube.com/@ChayPham">
                                    <span class="right">CHAYPHAM</span>
                                </a>
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/shroom.jpeg"
                                />
                            <p>EUR 90,69 <span class="right">Tobi</span></p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/rubiks.png"
                                />
                            <p>EUR 23,33 <span class="right">Asecave</span></p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/schnauzer.jpg"
                                />
                            <p>
                                EUR 12,99
                                <span class="right">BraveBoyBackfisch</span>
                            </p>
                        </li>
                        <li>
                            <img class="image-product" src="${pageContext.request.contextPath}/public/images/products/ice.jpg" />
                            <p>
                                EUR 2,00
                                <a
                                    href="https://www.youtube.com/watch?v=TxU07WQVkko"
                                    ><span class="right">Yeetou</span></a
                                >
                            </p>
                        </li>
                        <li>
                            <img
                                class="image-product"
                                src="${pageContext.request.contextPath}/public/images/products/spoodaalien.jpg"
                                />
                            <p>
                                EUR 5069
                                <span class="right">BraveBoyBackfisch</span>
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
