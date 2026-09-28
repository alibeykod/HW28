
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Order</title>
</head>
<body>
<form action="submit-order" border="1" style="border: 1px">
    <label for="customerName">Customer Name : </label>
        <input type="text" name="customerName" placeholder="for e.g < Ali > "><br> <br>

    <label for="productName">Product Name : </label>
    <input type="text" name="productName" placeholder="for e.g < Laptop >"> <br> <br>

    <label for="productPrice">Product Price : </label>
    <input type="number" name="productPrice" placeholder="1500 (Max = 10'000)" step="2" max="10000"> <br> <br>

    <label for="quantity">Quantity : </label>
    <input type="number" name="quantity" placeholder="2 (Max = 5)" step="1" max="5"> <br> <br>

    <button type="submit"> Create </button>

</form>
</body>
</html>