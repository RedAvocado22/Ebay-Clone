<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/base/base.css" />
<nav>
    <div id="nav" class="clearfix">
        <div>
            <a>Sign in or Register</a>
            <a>Helps and Contact</a>
        </div>
        <div class="right">
            <a id="dropdown-myebuy">My Ebay</a>
            <a id="bell" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">
                <span class="material-icons md-18">notifications_none</span>
            </a>
            <a href="https://www.youtube.com/@ChayPham" id="cart">
                <span class="material-icons md-18">
                    shopping_cart
                </span>
            </a>
        </div>
    </div>
</nav>
<header class="logo-body">
    <div id="logo">
        <img src="${pageContext.request.contextPath}/public/images/icon/ebay_icon.png" alt="">
    </div>

    <form id="search">
        <div class="material-icons magnification-glass md-18">
            search
        </div>
        <input type="text" name="btAction" placeholder="Search for anything " />
    </form>
    <div id="categories-dropdown">
        <button class="dropbtn">Category
            <i class="fa fa-caret-down"></i>
        </button>
        <div class="material-icons md-18">
            arrow_drop_down
        </div>
        <div class="dropdown-content">
            <a href="#">All categories</a>
            <a href="#">Computers</a>
            <a href="#">Mobiles</a>
            <a href="#">Books</a>
            <a href="#">Sports</a>
            <a href="#">Fashion</a>
            <a href="#">Electronics</a>
            <a href="#">Home</a>
            <a href="#">Beauty</a>
            <a href="#">Toys</a>
            <a href="#">Sports</a>
            <a href="#">Others</a>
            <a href="#">Cellphones</a>
        </div>
    </div>
    <button type="submit" id="button-search">Search</button>
</header>
