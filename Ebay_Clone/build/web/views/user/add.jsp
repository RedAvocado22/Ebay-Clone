<%-- 
    Document   : add
    Created on : Nov 4, 2024, 4:54:20 PM
    Author     : Qanh
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/base/base.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <title>Ebay - Add New Product</title>
    <style>
        .form-section {
            max-width: 600px;
            margin: auto;
        }
        .form-section label {
            font-weight: bold;
            margin-top: 10px;
        }
        .form-section input, .form-section select, .form-section button {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        .form-section button {
            background-color: #0070f3;
            color: white;
            cursor: pointer;
            font-weight: bold;
        }
        .form-section button:hover {
            background-color: #005bb5;
        }
        /* Custom styles for drag-and-drop upload */
        .upload-container {
            border: 2px dashed #ccc;
            padding: 30px;
            text-align: center;
            border-radius: 8px;
            color: #555;
            max-width: 600px;
            margin: auto;
        }
        .upload-container input[type="file"] {
            display: none;
        }
        .upload-container label {
            cursor: pointer;
            color: #0070f3;
            font-weight: bold;
        }
        .upload-instructions {
            font-size: 14px;
            color: #888;
        }
    </style>
</head>
<body>
    <jsp:include page="../common/header.jsp"></jsp:include>

    <div class="form-section">
        <h2>Complete Your Upload Product</h2>
        
        <form action="AddProductServlet" method="post" enctype="multipart/form-data">
            <!-- Product Title -->
            <label for="productName">Item Title</label>
            <input type="text" id="productName" name="productName" maxlength="80" placeholder="Enter item title" required>

            <!-- Product Price -->
            <label for="price">Price</label>
            <input type="number" step="0.01" id="price" name="price" placeholder="Enter item price" required>

            <!-- Product Quantity -->
            <label for="quantity">Quantity</label>
            <input type="number" id="quantity" name="quantity" placeholder="Enter quantity" required>

            <!-- Product Category -->
            <label for="category">Category</label>
            <select id="category" name="category" required>
                <option value="1">Electronics</option>
                <option value="2">Clothing</option>
                <option value="3">Home & Kitchen</option>
                <option value="4">Books</option>
                <option value="5">Toys</option>
                <option value="6">Sports</option>
                <option value="7">Beauty</option>
                <option value="8">Jewelry</option>
                <!-- Add more categories as needed -->
            </select>

            <!-- Image Upload Section -->
            <div class="upload-container">
                <span class="material-icons" style="font-size: 48px;">cloud_upload</span>
                <p>Drag and drop photos here or</p>
                <label for="productImage">Upload from computer</label>
                <input type="file" id="productImage" name="productImage" accept="image/*" multiple required>
                <p class="upload-instructions">You can add up to 24 photos and 1-minute video. Buyers want to see all details and angles.</p>
            </div>

            <!-- Submit button -->
            <button type="submit">Add Product</button>
        </form>
    </div>

    <jsp:include page="../common/footer.jsp"></jsp:include>
    <script src="${pageContext.request.contextPath}/public/js/js.js"></script>
</body>
</html>
