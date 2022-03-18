<%-- 
    Document   : createProduct
    Created on : Mar 9, 2022, 10:06:11 PM
    Author     : maihuutai
--%>

<%@page import="sample.shopping.ProductError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Product</title>
    </head>
    <body>
        <h1>Create new Product</h1>
        <%
            ProductError productError= (ProductError) request.getAttribute("PRODUCT_ERROR");
            if (productError == null) {
                productError = new ProductError();
            }
        %>
        <form action="MainController" method="GET"></br>
            productID   <input type="text" name="productID" required=""/>
            <%=productError.getProductIDError()%></br>
            productName <input type="text" name="productName" required=""/>
            <%=productError.getProductNameError()%></br>
            image       <input type="text" name="image" required=""/></br>
            price       <input type="text" name="price" required=""/>
            <%=productError.getPriceError()%></br>
            quantity    <input type="text" name="quantity" required=""/>
            <%=productError.getQuantityError()%></br>
            categoryID  <input type="text" name="categoryID" required=""/>
            <%=productError.getCategoryIDError()%></br>
            importDate <input type="date" name="importDate" required=""/>
            <%=productError.getImportDateError()%></br>
            usingDate   <input type="date" name="usingDate" required=""/>
            <%=productError.getUsingDateError()%></br>
            <input type="submit" name="action" value="CreateProduct"/></br>
            <input type="hidden" name="search" value="">
            <input type="reset" name="Reset" required=""/>
        </form>
    </body>
</html>
