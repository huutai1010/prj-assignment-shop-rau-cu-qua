<%-- 
    Document   : createUser
    Created on : Mar 11, 2022, 3:18:17 PM
    Author     : maihuutai
--%>

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Create User</title>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <link
      href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,700"
      rel="stylesheet"
      type="text/css"
    />

    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />

    <link rel="stylesheet" href="css/style.css" />
  </head>
  <body>
    <%
        UserError userError = (UserError) request.getAttribute("USER_ERROR");
        if (userError == null) {
            userError = new UserError();
        }
    %>
    <section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-6 text-center mb-5">
            <h2 class="heading-section">Shop Organic Vegetable</h2>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-md-12">
            <div class="wrapper">
              <div class="row no-gutters">
                <div class="col-lg-6">
                  <div class="contact-wrap w-100 p-md-5 p-4">
                    <h3>Create User</h3>
                    
                    <div id="form-message-warning" class="mb-4"></div>
                   
                    <form method="POST" id="contactForm" name="contactForm" class="contactForm" action="MainController">
                      <div class="row">
                          
                        <div class="col-md-12">
                          <div class="form-group">
                            <input type="text" class="form-control" name="userID" placeholder="UserID"/>                           
                            <h5><%=userError.getUserIDError()%></h5>
                          </div>
                            
                        </div> 
                          
                        <div class="col-md-12">
                          <div class="form-group">
                            <input type="text" class="form-control" name="fullName" id="name" placeholder="FullName"/>
                            <h5><%=userError.getFullNameError()%></h5>
                          </div>
                        </div> 
                          
                        <div class="col-md-12">
                          <div class="form-group">
                            <input type="password" class="form-control" name="password" id="name" placeholder="password"/>             
                          </div>
                        </div> 
                          
                        <div class="col-md-12">
                          <div class="form-group">
                            <input type="password" class="form-control" name="confirm" id="name" placeholder="Confirm password"/>
                            <h5><%=userError.getConfirmError()%></h5>
                          </div>
                        </div> 
                          
                        <div class="col-md-12">
                          <div class="form-group">
                              <input type="text" class="form-control" name="roleName" id="name" value="US" readonly=""/>
                          </div>
                        </div> 
                          
                          
                        <div class="col-md-12">
                          <div class="form-group">
                            <input type="text" class="form-control" name="address" id="name" placeholder="Address"/>
                            <h5><%=userError.getAddressError()%></h5>
                          </div>
                        </div> 
                          
                        <div class="col-md-12">
                          <div class="form-group">
                            <input type="date" class="form-control" name="birthday" id="name" placeholder="Birthdate"/>
                          </div>
                        </div> 
                          
                        <div class="col-md-12">
                          <div class="form-group">
                            <input type="text" class="form-control" name="phone" id="name" placeholder="Phone"/>
                            <h5><%=userError.getPhoneError()%></h5>
                          </div>
                        </div> 
                          
                        <div class="col-md-12">
                          <div class="form-group">
                            <input type="text" class="form-control" name="email" id="name" placeholder="Email"/>
                            <h5><%=userError.getEmailError()%></h5>
                          </div>
                        </div> 
                         
                        <div class="col-md-12">
                          <div class="form-group">
                            <input type="submit" name="action" value="Create User" class="btn btn-primary"/>
                            <div class="submitting"></div>
                          </div>                                                                               
                        </div>
                          
                      </div>
                    </form>
                    
                  </div>
                </div>
                <div class="col-lg-6 d-flex align-items-stretch">
                  <div
                    class="info-wrap w-100 p-5 img"
                    style="background-image: url('https://cdn.muabannhanh.com/asset/frontend/img/cover/2021/05/26/60ae02532439d_1622016595.jpg');"
                  ></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
