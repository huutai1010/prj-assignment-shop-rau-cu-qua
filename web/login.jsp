<%-- 
    Document   : login
    Created on : Mar 7, 2022, 12:43:58 PM
    Author     : maihuutai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login</title>
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>       
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--===============================================================================================-->
        <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
        <!--===============================================================================================-->
        <link
            rel="stylesheet"
            type="text/css"
            href="vendor/bootstrap/css/bootstrap.min.css"
            />
        <!--===============================================================================================-->
        <link
            rel="stylesheet"
            type="text/css"
            href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"
            />
        <!--===============================================================================================-->
        <link
            rel="stylesheet"
            type="text/css"
            href="fonts/iconic/css/material-design-iconic-font.min.css"
            />
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css" />
        <!--===============================================================================================-->
        <link
            rel="stylesheet"
            type="text/css"
            href="vendor/css-hamburgers/hamburgers.min.css"
            />
        <!--===============================================================================================-->
        <link
            rel="stylesheet"
            type="text/css"
            href="vendor/animsition/css/animsition.min.css"
            />
        <!--===============================================================================================-->
        <link
            rel="stylesheet"
            type="text/css"
            href="vendor/select2/select2.min.css"
            />
        <!--===============================================================================================-->
        <link
            rel="stylesheet"
            type="text/css"
            href="vendor/daterangepicker/daterangepicker.css"
            />
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css" />
        <link rel="stylesheet" type="text/css" href="css/main.css" />
        <!--===============================================================================================-->
    </head>
    <body>
        <div class="limiter">
            <div
                class="container-login100"
                style="background-image: url('images/rau-cu-background.jpg');"
                >
                <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                    <form class="login100-form validate-form" action="MainController" method="POST" id="myform">
                        <span class="login100-form-title p-b-49">
                            Login
                        </span>

                        <div
                            class="wrap-input100 validate-input m-b-23"
                            data-validate="UserID is required"
                            >
                            <span class="label-input100">UserID</span>
                            <input
                                class="input100"
                                type="text"
                                name="userID"
                                required=""
                                placeholder="Type your userID"
                                />
                            <span class="focus-input100" data-symbol="&#xf206;"></span>
                        </div>

                        <div
                            class="wrap-input100 validate-input"
                            data-validate="Password is required"
                            >
                            <span class="label-input100">Password</span>
                            <input
                                class="input100"
                                type="password"
                                name="password"
                                required=""
                                placeholder="Type your password"
                                />
                            <input type="hidden" name ="action" value="Login"/>
                            <span class="focus-input100" data-symbol="&#xf190;"></span>
                        </div>
                        
                        <div class="wrap-input100">
                            <div class="g-recaptcha" data-sitekey="6LcmftIeAAAAAJmE9jX9E0ejzjlPIV2OiQ60WcI7"></div>
                            <div id="error"></div>
                        </div>

                        <div class="text-right p-t-8 p-b-31">
                            <%
                                String error = (String) request.getAttribute("ERROR");
                                if (error == null) {
                                    error = "";
                                }
                            %>
                            <%= error%>
                        </div>

                        <div class="container-login100-form-btn">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button type="submit" class="login100-form-btn">
                                    Login
                                </button>
                            </div>
                        </div>

                        
                    </form>  
                                           
                    <div>
                        <div class="txt1 text-center p-t-54 p-b-20">
                            <span>
                                Or Sign Up Using
                            </span>
                        </div>

                        <div class="flex-c-m">
                            <a href="#" class="login100-social-item bg3">
                                <i class="fa fa-google"></i>
                            </a>
                        </div>

                        <div class="flex-col-c p-t-155">
                            <span class="txt1 p-b-17">
                                Or Sign Up Using
                            </span>

                            <a href="createUser.jsp" class="txt2">
                                Create account
                            </a>
                        </div>
                    </div>
                        
            <script>
                window.onload = function () {
                   let isValid = false;
                   const form = document.getElementById("myform");
                   const error = document.getElementById("error");
                
                   form.addEventListener("click", function(event) {
                        event.preventDefault();
                        const response = grecaptcha.getResponse();
                        console.log(response); 
                   if (response) {
                       form.submit();
                   } else {
                       error.innerHTML = "Please check your recaptcha";
                   }
                });
            };
            </script> 
                        
                </div>
            </div>
        </div>
        <div id="dropDownSelect1"></div>

        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>
        
        
            
    </body>
</html>

