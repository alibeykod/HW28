<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Order</title>
</head>
<body>
<h2>Create New Order</h2>
<% if (request.getCookies() != null) {
    for (Cookie c : request.getCookies()) {
        if ("customerName".equals(c.getName())) { %>
<h3 style="color: green;">Welcome Back <%= c.getValue() %></h3>
<%         }
}
} %>
<form action="${pageContext.request.contextPath}/calculator" method="post">

    <label for="customerName">Customer Name:</label>
    <input type="text" id="customerName" name="customerName"
           value="${cookie.customerName.value}"
           placeholder="e.g. Ali" required><br><br>

    <label for="productName">Product Name:</label>
    <input type="text" id="productName" name="productName"
           placeholder="e.g. Laptop" required><br><br>

    <label for="productPrice">Product Price:</label>
    <input type="number" id="productPrice" name="productPrice"
           placeholder="1500" step="0.01" min="1" max="10000" required><br><br>

    <label for="quantity">Quantity:</label>
    <input type="number" id="quantity" name="quantity"
           placeholder="2" step="1" min="1" max="5" required><br><br>

    <button type="submit">Create Order</button>
</form>
</body>
</html>
