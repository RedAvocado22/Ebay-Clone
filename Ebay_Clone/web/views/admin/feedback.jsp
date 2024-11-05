<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Feedback Management</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/admin.css" />
    </head>
    <body>

        <div class="table-container">
            <h1>Feedback Management</h1>
            <table>
                <thead>
                    <tr>
                        <th>Feedback ID</th>
                        <th>Customer Name</th>
                        <th>Feedback</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${feedbacks}" var="f">
                        <tr>
                            <td>${f.id}</td>
                            <td>${f.buyer.username}</td>
                            <td>${f.content}</td>
                            <td>${f.status}</td>
                            <td>
                                <button class="btn-view">View</button>
                                <c:if test="${f.status == 1}">
                                    <a href="admin?section=feedback&username=${f.seller.username}&action=delete&id=${f.id}" class="button-delete"
                                       class="btn btn-danger" 
                                       onclick="return confirm('Are you sure you want to delete this user?')">
                                        Delete
                                    </a>
                                </c:if>
                                <c:if test="${f.status == 0}">
                                    <a href="admin?section=feedback&username=${username}&action=active&id=${f.id}" class="button-delete"
                                       class="btn btn-danger" 
                                       onclick="return confirm('Are you sure you want to delete this user?')">
                                        Active
                                    </a>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                    <!-- Add more feedback entries as needed -->
                </tbody>
            </table>
        </div>

    </body>
</html>
