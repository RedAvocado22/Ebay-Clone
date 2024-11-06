<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/base/base.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/adminstyle.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/admin.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <title>Ebay Dashboard</title>
    </head>
    <body>
        <jsp:include page="../common/header.jsp"></jsp:include>
            <div class="dashboard-wrapper">
                <div class="sidebar-admin">
                    <a href="${pageContext.request.contextPath}/admin?section=management" class="sidebar-title d-flex align-items-center mb-3 text-decoration-none">
                    <i class="fas fa-tachometer-alt me-2"></i>
                    <span class="fs-4">Management Page</span>
                </a>
                <hr>
                <ul class="nav flex-column mb-auto">
                    <a href="${pageContext.request.contextPath}/admin?section=account" class="nav-link"><i class="fas fa-user"></i> Account Management</a></li>
                    <a href="${pageContext.request.contextPath}/admin?section=product" class="nav-link"><i class="fas fa-tags"></i> Product Management</a></li>
                    <a href="${pageContext.request.contextPath}/admin?section=order" class="nav-link"><i class="fas fa-box"></i> Order Management</a></li>
                </ul>
                <hr>
                <div class="dropdown">
                    <div class="d-flex justify-content-center">
                        <a href="#" class="d-flex align-items-center text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            <strong>${sessionScope.user.fullName}</strong>
                        </a>
                    </div>
                    <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
                        <a class="dropdown-item" href="./logout"><i class="fas fa-sign-out-alt me-2"></i> Log Out</a></li>
                    </ul>
                </div>
            </div>

            <!-- Main Content -->
            <div class="main-content">
                <nav class="breadcrumb-nav">
                    <a href="./home" class="breadcrumb-item">Home</a>
                    <span class="breadcrumb-separator">&gt;</span>
                    <a href="./my-ebay" class="breadcrumb-item">My eBay</a>
                    <span class="breadcrumb-separator">&gt;</span>

                    <c:choose>
                        <c:when test="${param.section == 'order'}">
                            <a href="${pageContext.request.contextPath}/admin?section=order" class="breadcrumb-item">Order Management</a>
                        </c:when>
                        <c:when test="${param.section == 'product'}">
                            <a href="${pageContext.request.contextPath}/admin?section=product" class="breadcrumb-item">Product Management</a>
                        </c:when>
                        <c:when test="${param.section == 'account'}">
                            <a href="${pageContext.request.contextPath}/admin?section=account" class="breadcrumb-item">Account Management</a>
                        </c:when>
                        <c:when test="${param.section == 'feedback'}">
                            <a href="${pageContext.request.contextPath}/admin?section=feedback" class="breadcrumb-item">Feedback Management</a>
                        </c:when>
                        <c:otherwise>
                            <a href="${pageContext.request.contextPath}/admin" class="breadcrumb-item">Dashboard</a>
                        </c:otherwise>
                    </c:choose>
                </nav>

                <c:choose>
                    <c:when test="${param.section == 'order'}">
                        <jsp:include page="order.jsp" />
                    </c:when>
                    <c:when test="${param.section == 'product'}">
                        <jsp:include page="product.jsp" />
                    </c:when>
                    <c:when test="${param.section == 'account'}">
                        <jsp:include page="account.jsp" />
                    </c:when>
                    <c:when test="${param.section == 'feedback'}">
                        <jsp:include page="feedback.jsp" />
                    </c:when>
                    <c:otherwise>
                        <jsp:include page="management.jsp" />
                    </c:otherwise>
                </c:choose>
            </div>
        </div>

        <jsp:include page="../common/footer.jsp"></jsp:include>
        <script src="${pageContext.request.contextPath}/public/js/js.js"></script>
    </body>
</html>
