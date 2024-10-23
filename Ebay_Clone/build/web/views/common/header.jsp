<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/base/base.css" />
<nav>
    <div id="nav" class="clearfix">
        <div>
            <a href="${pageContext.request.contextPath}/login">Sign in or Register</a>
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
    <div id="categories-dropdown">
        <button class="dropbtn">Category
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="material-icons md-18">
            arrow_drop_down
        </div>
        <div class="dropdown-content">
            <a href="${pageContext.request.contextPath}/product">All categories</a>
            <a href="${pageContext.request.contextPath}/product?category=1">Electronics</a>
            <a href="${pageContext.request.contextPath}/product?category=2">Clothing</a>
            <a href="${pageContext.request.contextPath}/product?category=3">Home & Kitchen</a>
            <a href="${pageContext.request.contextPath}/product?category=4">Books</a>
            <a href="${pageContext.request.contextPath}/product?category=5">Toys</a>
            <a href="${pageContext.request.contextPath}/product?category=6">Sports</a>
            <a href="${pageContext.request.contextPath}/product?category=7">Beauty</a>
            <a href="${pageContext.request.contextPath}/product?category=8">Jewelry</a>
        </div>
    </div>
    <button type="submit" id="button-search">Search</button>
</header>
