<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/admin.css" />
<h1>Account Management</h1>

<table class="account-table">
    <thead>
        <tr>
            <th>Username</th>
            <th>Password</th>
            <th>FullName</th>
            <th>Email</th>
            <th>Role</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${accounts}" var="a">
        <tr>
            <td>${a.username}</td>
            <td>${a.password}</td>
            <td>${a.fullname}</td>
            <td>${a.email}</td>
            <td>${a.role}</td>
            <td>
                <a href="admin?section=feedback&username=${a.username}">view</a>
                <button class="btn-manage">Edit</button>
                <button class="btn-delete">Delete</button>
            </td>
        </tr>
    </c:forEach>    
        <!-- Add more accounts as needed -->
    </tbody>
</table>
