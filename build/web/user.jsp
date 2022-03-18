<%-- 
    Document   : user
    Created on : Mar 7, 2022, 12:44:23 PM
    Author     : maihuutai
--%>

<%@page import="sample.shopping.ProductDTO"%>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <!-- meta data -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!--font-family-->
    <link
      href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
      rel="stylesheet"
    />

    <!-- title of site -->
    <title>Shopping</title>

    <!-- For favicon png -->
    <link
      rel="shortcut icon"
      type="image/icon"
      href="assets/logo/favicon.png"
    />

    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />

    <!--linear icon css-->
    <link rel="stylesheet" href="assets/css/linearicons.css" />

    <!--animate.css-->
    <link rel="stylesheet" href="assets/css/animate.css" />

    <!--owl.carousel.css-->
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css" />

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />

    <!-- bootsnav -->
    <link rel="stylesheet" href="assets/css/bootsnav.css" />

    <!--style.css-->
    <link rel="stylesheet" href="assets/css/style.css" />

    <!--responsive.css-->
    <link rel="stylesheet" href="assets/css/responsive.css" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an
        <strong>outdated</strong>
        browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a>
        to improve your experience and security.
      </p>
    <![endif]-->

    <!--welcome-hero start -->
    <header id="home" class="welcome-hero">
      <div
        id="header-carousel"
        class="carousel slide carousel-fade"
        data-ride="carousel"
      >
        <!--/.carousel-indicator -->
        <ol class="carousel-indicators">
          <li data-target="#header-carousel" data-slide-to="0" class="active">
            <span class="small-circle"></span>
          </li>
          <li data-target="#header-carousel" data-slide-to="1">
            <span class="small-circle"></span>
          </li>
          <li data-target="#header-carousel" data-slide-to="2">
            <span class="small-circle"></span>
          </li>
        </ol>
        <!-- /ol-->
        <!--/.carousel-indicator -->

        <!--/.carousel-inner -->
        <div class="carousel-inner" role="listbox">
          <!-- .item -->
          <div class="item active">
            <div class="single-slide-item slide1">
              <div class="container">
                <div class="welcome-hero-content">
                  <div class="row">
                    <div class="col-sm-7">
                      <div class="single-welcome-hero">
                        <div class="welcome-hero-txt">
                          <h4>Chào mừng đến với shop rau củ Organic Food</h4>
                          <h2>Rau củ sạch 100%<h2>
                          <p>
                            Cửa hàng rau sạch Organic Food bán các sản phẩm hữu cơ được đầy đủ chứng nhận trong nước và quốc tế, 
                            mang đến cho gia đình bạn một bữa cơm an toàn, chất lượng và đầy đủ giá trị.
                          </p>
                          <div class="packages-price">
                            <p>
                              Luôn mang đến cho khách hàng nguồn thực phẩm dồi dào dinh dưỡng, phong phú, an toàn và nhanh chóng
                            </p>
                          </div>
                        </div>
                        <!--/.welcome-hero-txt-->
                      </div>
                      <!--/.single-welcome-hero-->
                    </div>
                    <!--/.col-->
                    <div class="col-sm-5">
                      <div class="single-welcome-hero">
                        <div class="welcome-hero-img">
                          <img
                            src="https://images.unsplash.com/photo-1587049633312-d628ae50a8ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHZlZ2V0YWJsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60"
                            alt="slider image"
                          />
                        </div>
                        <!--/.welcome-hero-txt-->
                      </div>
                      <!--/.single-welcome-hero-->
                    </div>
                    <!--/.col-->
                  </div>
                  <!--/.row-->
                </div>
                <!--/.welcome-hero-content-->
              </div>
              <!-- /.container-->
            </div>
            <!-- /.single-slide-item-->
          </div>
          <!-- /.item .active-->

          <div class="item">
            <div class="single-slide-item slide2">
              <div class="container">
                <div class="welcome-hero-content">
                  <div class="row">
                    <div class="col-sm-7">
                      <div class="single-welcome-hero">
                        <div class="welcome-hero-txt">
                          <h4>Chào mừng đến với shop rau củ</h4>
                          <h2>Rau củ sạch 100%</h2>
                          <p>
                            Cửa hàng rau sạch Organic Food bán các sản phẩm hữu cơ được đầy đủ chứng nhận trong nước và quốc tế, 
                            mang đến cho gia đình bạn một bữa cơm an toàn, chất lượng và đầy đủ giá trị.
                          </p>
                          <div class="packages-price">
                            <p>
                              Luôn mang đến cho khách hàng nguồn thực phẩm dồi dào dinh dưỡng, phong phú, an toàn và nhanh chóng
                              
                            </p>
                          </div>
                        </div>
                        <!--/.welcome-hero-txt-->
                      </div>
                      <!--/.single-welcome-hero-->
                    </div>
                    <!--/.col-->
                    <div class="col-sm-5">
                      <div class="single-welcome-hero">
                        <div class="welcome-hero-img">
                          <img
                            src="https://images.pexels.com/photos/11334016/pexels-photo-11334016.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
                            alt="slider image"
                          />
                        </div>
                        <!--/.welcome-hero-txt-->
                      </div>
                      <!--/.single-welcome-hero-->
                    </div>
                    <!--/.col-->
                  </div>
                  <!--/.row-->
                </div>
                <!--/.welcome-hero-content-->
              </div>
              <!-- /.container-->
            </div>
            <!-- /.single-slide-item-->
          </div>
          <!-- /.item .active-->

          <div class="item">
            <div class="single-slide-item slide3">
              <div class="container">
                <div class="welcome-hero-content">
                  <div class="row">
                    <div class="col-sm-7">
                      <div class="single-welcome-hero">
                        <div class="welcome-hero-txt">
                          <h4>Chào mừng đến với shop rau củ</h4>
                          <h2>Rau củ sạch 100%</h2>
                          <p>
                            Cửa hàng rau sạch Organic Food bán các sản phẩm hữu cơ được đầy đủ chứng nhận trong nước và quốc tế, 
                            mang đến cho gia đình bạn một bữa cơm an toàn, chất lượng và đầy đủ giá trị.
                          </p>
                          <div class="packages-price">
                            <p>
                              Luôn mang đến cho khách hàng nguồn thực phẩm dồi dào dinh dưỡng, phong phú, an toàn và nhanh chóng
                              
                            </p>
                          </div>
                        </div>
                        <!--/.welcome-hero-txt-->
                      </div>
                      <!--/.single-welcome-hero-->
                    </div>
                    <!--/.col-->
                    <div class="col-sm-5">
                      <div class="single-welcome-hero">
                        <div class="welcome-hero-img">
                          <img
                            src="https://images.pexels.com/photos/142520/pexels-photo-142520.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
                            alt="slider image"
                          />
                        </div>
                        <!--/.welcome-hero-txt-->
                      </div>
                      <!--/.single-welcome-hero-->
                    </div>
                    <!--/.col-->
                  </div>
                  <!--/.row-->
                </div>
                <!--/.welcome-hero-content-->
              </div>
              <!-- /.container-->
            </div>
            <!-- /.single-slide-item-->
          </div>
          <!-- /.item .active-->
        </div>
        <!-- /.carousel-inner-->
      </div>
      <!--/#header-carousel-->

      <!-- top-area Start -->
      <div class="top-area">
        <div class="header-area">
          <!-- Start Navigation -->
          <nav
            class="navbar navbar-default bootsnav navbar-sticky navbar-scrollspy"
            data-minus-value-desktop="70"
            data-minus-value-mobile="55"
            data-speed="1000"
          >
            <!-- Start Top Search -->
            <form action="MainController" method="GET">
            <div class="top-search">
              <div class="container">
                <div class="input-group">                
                  <span class="input-group-addon">
                    <i class="fa fa-search"></i>
                  </span>                   
                  <input            
                    type="text"
                    class="form-control"
                    placeholder="Search"
                    name="search"
                  />
                  <input type="hidden" name="action" value="UserSearch"/>
                  <span class="input-group-addon close-search">
                    <i class="fa fa-times"></i>
                  </span>
                </div>
              </div>
            </div>
            </form>
            <!-- End Top Search -->

            <div class="container">
              <!-- Start Atribute Navigation -->
              <div class="attr-nav">
                <ul>
                  <li class="search">
                    <a href="#"><span class="lnr lnr-magnifier"></span></a>
                  </li>
                  <!--/.search-->
                  <li class="nav-setting">
                    <a href="MainController?action=Logout">Log out</a>
                  </li>
                  <!--/.search-->
                  <li class="dropdown">
                    <a href="viewCart.jsp" class="dropdown-toggle" data-toggle="dropdown">
                      <span class="lnr lnr-cart"></span>
                      <span class="badge badge-bg-1">!</span>
                    </a>
                      
                  </li>
                  <!--/.dropdown-->
                </ul>
              </div>
              <!--/.attr-nav-->
              <!-- End Atribute Navigation -->

              <!-- Start Header Navigation -->
              <div class="navbar-header">
                <button
                  type="button"
                  class="navbar-toggle"
                  data-toggle="collapse"
                  data-target="#navbar-menu"
                >
                  <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="user.jsp">
                    <%
                        String search = request.getParameter("search");
                        UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
                        if (loginUser == null || !loginUser.getRoleName().equals("US")) {
                            response.sendRedirect("login.jsp");
                            return;
                        }
                    %>
                    Welcome <%= loginUser.getFullName()%>
                </a>
              </div>
              <!--/.navbar-header-->
              <!-- End Header Navigation -->

              <!-- Collect the nav links, forms, and other content for toggling -->
              <div
                class="collapse navbar-collapse menu-ui-design"
                id="navbar-menu"
              >
                <ul
                  class="nav navbar-nav navbar-center"
                  data-in="fadeInDown"
                  data-out="fadeOutUp"
                >
                  <li class="scroll active"><a href="#rau-cu">Rau củ</a></li>
                  <li class="scroll"><a href="#rau-la">Rau lá</a></li>
                  <li class="scroll"><a href="#trai-cay">Trái cây</a></li>
                </ul>
                <!--/.nav -->
              </div>
              <!-- /.navbar-collapse -->
            </div>
            <!--/.container-->
          </nav>
          <!--/nav-->
          <!-- End Navigation -->
        </div>
        <!--/.header-area-->
        <div class="clearfix"></div>
      </div>
      <!-- /.top-area-->
      <!-- top-area End -->
    </header>
    <!--/.welcome-hero-->
    <!--welcome-hero end -->

    <% 
        List<ProductDTO> listSearchProduct = null;
        List<ProductDTO> listProduct = (List<ProductDTO>) session.getAttribute("LIST_PRODUCT");
        listSearchProduct = (List<ProductDTO>) request.getAttribute("LIST_SEARCH_PRODUCT");
       if (listSearchProduct != null && listProduct.size() != listSearchProduct.size()) { 
    %>
    
        <!--new-arrivals start -->
    <section id="rau-cu" class="new-arrivals">
      <div class="container">
        <div class="section-header">
            
          <h2>Kết quả tìm kiếm <%=search%></h2>
        </div>
        <!--/.section-header-->
        <div class="new-arrivals-content">
          <div class="row">
              <%
                 for(ProductDTO searchProduct: listSearchProduct) {
              %>
            <div class="col-md-3 col-sm-4">
              <div class="single-new-arrival">
                <div class="single-new-arrival-bg">
                  <img
                    src="<%= searchProduct.getImage() %>"
                    alt="new-arrivals images"
                  />
                  <div class="single-new-arrival-bg-overlay"></div>
                  <div class="sale bg-1">
                    <p>sale</p>
                  </div>
                  <div class="new-arrival-cart">
                    <p>
                      <span class="lnr lnr-cart"></span>
                      <a href="MainController?action=AddToCart&productID=<%=searchProduct.getProductID()%>" onclick="alert('Thêm sản phẩm <%=searchProduct.getProductName()%> thành công')">
                        add
                        <span>to</span>
                        cart
                      </a>
                    </p>
                    <p class="arrival-review pull-right">
                      <span class="lnr lnr-heart"></span>
                      <span class="lnr lnr-frame-expand"></span>
                    </p>
                  </div>
                </div>
                <h4><a href="#"><%=searchProduct.getProductName()%></a></h4>
                <p class="arrival-product-price"><%= searchProduct.getPrice()%>đ</p>
              </div>
            </div>
              <%
                  }
              %>
          </div>
        </div>
      </div>
      <!--/.container-->
      
    </section>
    <!--/.new-arrivals-->
    <!--new-arrivals end -->
    <%
            
        } else {
        
  %>  
  
    <!--new-arrivals start -->
    <section id="rau-cu" class="new-arrivals">
      <div class="container">
        <div class="section-header">
          <h2>Rau củ</h2>
        </div>
        <!--/.section-header-->
        <div class="new-arrivals-content">
          <div class="row">
              <% 
                
                for (ProductDTO product: listProduct) {
                    if (product.getCategoryID().equals("2")) {
                        %>
              
            <div class="col-md-3 col-sm-4">
              <div class="single-new-arrival">
                <div class="single-new-arrival-bg">
                  <img
                    src="<%= product.getImage() %>"
                    alt="new-arrivals images"
                  />
                  <div class="single-new-arrival-bg-overlay"></div>
                  <div class="sale bg-1">
                    <p>sale</p>
                  </div>
                  <div class="new-arrival-cart">
                    <p>
                      <span class="lnr lnr-cart"></span>
                      <a href="MainController?action=AddToCart&productID=<%=product.getProductID()%>" onclick="alert('Thêm sản phẩm <%=product.getProductName()%> thành công')">
                        add
                        <span>to</span>
                        cart
                      </a>
                    </p>
                    <p class="arrival-review pull-right">
                      <span class="lnr lnr-heart"></span>
                      <span class="lnr lnr-frame-expand"></span>
                    </p>
                  </div>
                </div>
                <h4><a href="#"><%=product.getProductName()%></a></h4>
                <p class="arrival-product-price"><%= product.getPrice()%>đ</p>
              </div>
            </div>
              
              <%
                    }
                }
              %>
          </div>
        </div>
      </div>
      <!--/.container-->
      
    </section>
    <!--/.new-arrivals-->
    <!--new-arrivals end -->
    
    
    <!--new-arrivals start -->
    <section id="rau-la" class="new-arrivals">
      <div class="container">
        <div class="section-header">
          <h2>Rau lá</h2>
        </div>
        <!--/.section-header-->
        <div class="new-arrivals-content">
          <div class="row">
              <% 
                for (ProductDTO product: listProduct) {
                    if (product.getCategoryID().equals("1")) {
                        %>
            <div class="col-md-3 col-sm-4">
              <div class="single-new-arrival">
                <div class="single-new-arrival-bg">
                  <img
                    src="<%=product.getImage()%>"
                    alt="new-arrivals images"
                  />
                  <div class="single-new-arrival-bg-overlay"></div>
                  <div class="sale bg-1">
                    <p>sale</p>
                  </div>
                  <div class="new-arrival-cart">
                    <p>
                      <span class="lnr lnr-cart"></span>
                      <a href="MainController?action=AddToCart&productID=<%=product.getProductID()%>" onclick="alert('Thêm sản phẩm <%=product.getProductName()%> thành công')">
                        add
                        <span>to</span>
                        cart
                      </a>
                    </p>
                    <p class="arrival-review pull-right">
                      <span class="lnr lnr-heart"></span>
                      <span class="lnr lnr-frame-expand"></span>
                    </p>
                  </div>
                </div>
                <h4><a href="#"><%=product.getProductName()%></a></h4>
                <p class="arrival-product-price"><%=product.getPrice()%>đ</p>
              </div>
            </div>
            <%
                }
            }
            %>
          </div>
        </div>
      </div>
      <!--/.container-->
      
    </section>
    <!--/.new-arrivals-->
    <!--new-arrivals end -->
    
    
    <!--new-arrivals start -->
    <section id="trai-cay" class="new-arrivals">
      <div class="container">
        <div class="section-header">
          <h2>Trái cây</h2>
        </div>
        <!--/.section-header-->
        <div class="new-arrivals-content">
          <div class="row">
              <% 
                for (ProductDTO product: listProduct) {
                    if (product.getCategoryID().equals("3")) {
                %>
            <div class="col-md-3 col-sm-4">
              <div class="single-new-arrival">
                <div class="single-new-arrival-bg">
                  <img
                    src="<%=product.getImage()%>"
                    alt="new-arrivals images"
                  />
                  <div class="single-new-arrival-bg-overlay"></div>
                  <div class="sale bg-1">
                    <p>sale</p>
                  </div>
                  <div class="new-arrival-cart">
                    <p>
                      <span class="lnr lnr-cart"></span>
                      <a href="MainController?action=AddToCart&productID=<%=product.getProductID()%>" onclick="alert('Thêm sản phẩm <%=product.getProductName()%> thành công')">
                        add
                        <span>to</span>
                        cart
                      </a>
                    </p>
                    <p class="arrival-review pull-right">
                      <span class="lnr lnr-heart"></span>
                      <span class="lnr lnr-frame-expand"></span>
                    </p>
                  </div>
                </div>
                <h4><a href="#"><%=product.getProductName()%></a></h4>
                <p class="arrival-product-price"><%=product.getPrice()%>đ</p>
              </div>
            </div>
            <%
                }
            }
            %>
          </div>
        </div>
      </div>
      <!--/.container-->
      
    </section>
    <!--/.new-arrivals-->
    <!--new-arrivals end -->
    <%
        }
    %>  
    
    

    <!-- Include all js compiled plugins (below), or include individual files as needed -->

    <script src="assets/js/jquery.js"></script>

    <!--modernizr.min.js-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>

    <!--bootstrap.min.js-->
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- bootsnav js -->
    <script src="assets/js/bootsnav.js"></script>

    <!--owl.carousel.js-->
    <script src="assets/js/owl.carousel.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

    <!--Custom JS-->
    <script src="assets/js/custom.js"></script>
  </body>
</html>
