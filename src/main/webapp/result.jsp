<%--
  Created by IntelliJ IDEA.
  User: pasargad
  Date: 9/29/2026
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result Page</title>
</head>
<body>
<%
    if (session == null || session.getAttribute("customerName") == null) {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
        return;
    }
%>
<p>Customer Name : ${sessionScope.customerName}</p> <br>
<p>Product Name : ${sessionScope.productName}</p><br>
<p>Product Price : ${sessionScope.productPrice}</p><br>
<p>Quantity : ${sessionScope.quantity}</p><br>
<p>Final Price : ${sessionScope.finalPrice}</p><br>

<a href="${pageContext.request.contextPath}/index.jsp">Create New Order</a>

</body>
</html>
