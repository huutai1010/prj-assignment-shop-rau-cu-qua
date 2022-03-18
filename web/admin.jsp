<%-- 
    Document   : admin
    Created on : Feb 16, 2022, 8:15:54 AM
    Author     : ADMIN
--%>

<%@page import="sample.shopping.ProductDTO"%>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>

        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !loginUser.getRoleName().equals("AD")) {
                response.sendRedirect("login.jsp");
                return;
            }

            String search = request.getParameter("search");
            if (search == null) {
                search = "";
            }
        %>
        Welcome: <h1><%= loginUser.getFullName()%></h1>

        <!-- Logout -->
        <a href="MainController?action=Logout">Logout</a>
        <form action="MainController">
            <input type="submit" name="action" value="Logout"/>
        </form><br>

        <form action="createProduct.jsp" method="GET">
            <input type="submit" name="create" value="Create new product"/>
        </form></br>
        
        <!-- Get all product -->
        <form action="MainController" method="GET">
            <input type="submit" name="all" value="Get all product"/>
            <input type="hidden" name="action" value="Search"/>
            <input type="hidden" name="search" value=""/>
        </form></br>
        
        <!-- Search Product -->
        <form action="MainController">
            Search<input type="text" name="search" required="" value="<%= search%>"/>
            <input type="submit" name="action" value="Search"/>

        </form></br>
        
        
        <%
            List<ProductDTO> listProduct = (List<ProductDTO>) session.getAttribute("LIST_PRODUCT");
            if (listProduct != null) {
                if (listProduct.size() > 0) {
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>productID</th>
                    <th>productName</th>
                    <th>image</th>
                    <th>price</th>
                    <th>quantity</th>
                    <th>categoryID</th>
                    <th>importDate</th>
                    <th>usingDate</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 1;
                    for (ProductDTO product : listProduct) {
                %> 
            <form action="MainController">
                <tr>
                    <td><%= count++%></td>
                    <td>
                        <input type="text" name="productID" value="<%=product.getProductID()%>" readonly=""/>
                    </td>
                    <td>
                        <input type="text" name="productName" value="<%=product.getProductName()%>" required="" />
                    </td>
                    <td>
                        <input type="text" name="image" value="<%=product.getImage()%>" required="" />
                    </td>
                    <td>
                        <input type="text" name="price" value="<%=product.getPrice()%>" required="" />
                    </td>
                    <td>
                        <input type="text" name="quantity" value="<%=product.getQuantity()%>" required="" />
                    </td>
                    <td>
                        <input type="text" name="categoryID" value="<%=product.getCategoryID()%>" required=""/>
                    </td>
                    <td>
                        <input type="date" name="importDate" value="<%=product.getImportDate()%>" required="" />
                    </td>
                    <td>
                        <input type="date" name="usingDate" value="<%=product.getUsingDate()%>" required="" />
                    </td>
                    <td>
                        <input type="submit" name="action" value="Update" required="" />
                        <input type="hidden" name="search" value="<%= search%>">
                    </td>
                    <td>
                        <a type="text" href="MainController?action=Delete&productID=<%=product.getProductID()%>&search=<%= search%>">Delete</a>
                    </td>                 
                </tr>
            </form>
            <%
                }
            %>

        </tbody>
    </table>
    <%
            }
        }
    %>
</body>
</html>
