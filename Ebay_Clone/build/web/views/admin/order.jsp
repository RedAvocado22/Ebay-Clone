<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Order Management</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/admin.css" />
    </head>
    <body>

        <div class="table-container">
            <h1>Order Management</h1>
            <table>
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer Name</th>
                        <th>Total Amount</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${orders}" var="o">
                        <tr>
                            <td>${o.id}</td>
                            <td>${o.buyer.username}</td>
                            <td>${o.total}</td>
                            <td>${o.status}</td>
                            <td>
                                <a href="admin?section=product&id=${o.id}">view</a>
                            </td>
                        </tr>
                    </c:forEach>
                    <!-- Add more orders as needed -->
                </tbody>
            </table>
        </div>

    </body>
</html>
