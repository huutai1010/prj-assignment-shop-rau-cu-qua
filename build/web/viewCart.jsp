<%-- 
    Document   : viewCart
    Created on : Mar 11, 2022, 7:12:46 PM
    Author     : maihuutai
--%>

<%@page import="java.util.HashMap"%>
<%@page import="sample.shopping.ProductDTO"%>
<%@page import="sample.shopping.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>View Cart</title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css"
    />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  </head>
  <body>
    <!-- 
  Bootstrap docs: https://getbootstrap.com/docs
  Get more snippet on https://bootstraptor.com/snippets
-->
    <% 
        
        Cart cart = (Cart) session.getAttribute("CART");
        float total = 0;
        if (cart != null) {
            for (ProductDTO product : cart.getCart().values()) {
                total += product.getPrice() * product.getQuantity();
            }
        }
    %>
    <section class="pt-5 pb-5">
      <div class="container">
        <div class="row w-100">
          <div class="col-lg-12 col-md-12 col-12">
            <h3 class="display-5 mb-2 text-center">Shopping Cart</h3>
            <p class="mb-5 text-center">
              <i class="text-info font-weight-bold"><%= cart != null ? cart.getCart().size() : 0 %></i>
              items in your cart
            </p>
            
            <div class="col-sm-6 mb-3 mb-m-1 order-md-1 text-md-left">
            <a href="user.jsp">
              <i class="fas fa-arrow-left mr-2"></i>
              Continue Shopping
            </a>
          </div>
            
            <%
        
        if (cart != null) {
            if (cart.getCart().size() > 0) {
        %>
            <table
              id="shoppingCart"
              class="table table-condensed table-responsive"
            >
              <thead>
                <tr>
                  <th style="width: 60%;">Product</th>
                  <th style="width: 12%;">Price</th>
                  <th style="width: 10%;">Quantity</th>
                  <th style="width: 16%;"></th>
                </tr>
              </thead>
              <tbody>
                
                <%
                   for (ProductDTO product: cart.getCart().values()) {                     
                %>
                <tr>
                  <td data-th="Product">
                    <div class="row">
                      <div class="col-md-3 text-left">
                        <img
                            src="<%=product.getImage()%>"
                          alt=""
                          class="img-fluid d-none d-md-block rounded mb-2 shadow"
                        />
                      </div>
                      <div class="col-md-9 text-left mt-sm-2">
                        <h4><%=product.getProductName()%></h4>
                        <p class="font-weight-light"> 
                            Buy quantity: <%=product.getQuantity()%>
                        <%
                            HashMap<String, String> listErrorQuantityProduct = (HashMap<String, String>) request.getAttribute("LIST_ERROR_PRODUCT");
                            String message = "";
                            if (listErrorQuantityProduct != null) {
                                if (listErrorQuantityProduct.size() > 0) {
                                    for (String key: listErrorQuantityProduct.keySet()) {
                                        if (key.equals(product.getProductID())) {
                                            message = listErrorQuantityProduct.get(key);
                                        }
                                    }
                                }
                            }
                        %>
                        <h3><%=message%></h3>
                        
                        </p>
                      </div>
                    </div>
                  </td>
                  <td data-th="Price"><%=product.getPrice()%>đ</td>
              
               <!--Send Edit request-->
              <form action="MainController">
                  <td data-th="Quantity">                  
                    <input
                        type="number"
                        name ="quantity"
                        class="form-control form-control-lg text-center"
                        value="<%=product.getQuantity()%>"
                        />               
                  </td>
                  <td>
                      <a href="MainController?action=EditProductCart&productID=<%=product.getProductID()%>&quantity=">
                        <button class="btn btn-white border-secondary bg-white btn-md mb-2">                          
                            <i class="fas fa-sync"></i>                                                
                        </button>
                      </a>
                  </td>
                  <input type="hidden" name="productID" value="<%=product.getProductID()%>">
                  <input type="hidden" name="action" value="EditProductCart">
              </form>
                <!-- End Send Edit request-->  
                
                
                  <td class="actions" data-th="">
                    <div class="text-right">                                                          
                      <a href="MainController?action=RemoveProductCart&productID=<%=product.getProductID()%>">
                        <button class="btn btn-white border-secondary bg-white btn-md mb-2">                                                  
                            <i class="fas fa-trash"></i>                     
                        </button>
                      </a>
                    </div>
                  </td>
                </tr>
                <%
                    }
                %>
                
              </tbody>
            </table>
                
        <%
            }
        }
        %>
        <!-- Check if cart null then hide Subtotal-->
        <%
            if (cart != null) {
            if (cart.getCart().size() > 0) {
        %>
            <div class="float-right text-right">
              <h4>Subtotal: </h4>
              <h1><%=total%>đ</h1>
            </div>
            <%
                }
            }
            %>
          </div>
        </div>
        
        <!--Check if cart null hide Checkout Button-->
        <%
            if (cart != null) {
                if (cart.getCart().size() > 0) {
        %>
        <div class="row mt-4 d-flex align-items-center">
          <div class="col-sm-6 order-md-2 text-right">
            <a
              href="MainController?action=Checkout"
              class="btn btn-primary mb-4 btn-lg pl-5 pr-5"
            >
              Checkout
            </a>
          </div>           
          <div class="col-sm-6 mb-3 mb-m-1 order-md-1 text-md-left">
          </div>
        </div>  
        <%
            }
        }
        %>
      </div>
            
    </section>
  </body>
</html>
