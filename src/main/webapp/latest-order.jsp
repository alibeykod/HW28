<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Latest Order</title>
</head>
<body>

<% if (session.getAttribute("customerName") == null) { %>

<p style="color: red;">There is no order!</p>
<a href="${pageContext.request.contextPath}/index.jsp">Go to Order Form</a>

<% } else { %>

<p>Customer Name: ${sessionScope.customerName}</p>
<p>Product Name: ${sessionScope.productName}</p>
<p>Product Price: ${sessionScope.productPrice}</p>
<p>Quantity: ${sessionScope.quantity}</p>
<p>Final Price: ${sessionScope.finalPrice}</p>

<hr>
<a href="${pageContext.request.contextPath}/index.jsp">Order Again</a>

<% } %>
</body>
</html>
