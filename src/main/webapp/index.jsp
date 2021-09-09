<%-- 
    Document   : index
    Created on : Jul 6, 2021, 8:18:20 PM
    Author     : Muleya
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
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
   
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="google-site-verification" content="U_AA9uVhETv3td8BslU7SMA-XOXdqo9zdrnkWnV72yY">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="scripts/cart.js"></script>
    <style>
        .navbar a{
            color: #000;
        }

        /*comment section styles*/
        .media .fa-user-circle{
            color: #00cccc;
        }

        /*Footer styles*/
        .site-footer a{
            color:  #000;
        }



        /* Link styles */

        a.r_more{
            border: 1px solid #d6d6d6;
            display: inline-block;
            margin-top: 5px;
            padding: 5px 10px;
        }

        .reply, a:hover{
            text-decoration: none;
            color: #00ff00;
        }

        a{
            color: #000;
        }
        .media-body a{
            color:#00ff00;
        }
        /*Other styles */
        .raised{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .line{
            height:4px; width:100px; border-width:0; color:red; background-color:red;
        }

        .l-2{
            height:2px; width:100px; border-width:0; color:red; background-color:red;
        }


        #loader {
            width: 100px;
            height: 100px;
            z-index: 999;


            position: fixed;
            opacity: 0.6;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
        }

        @-webkit-keyframes spin {
            0% { -webkit-transform: rotate(0deg); }
            100% { -webkit-transform: rotate(360deg); }
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
        #button.show {
            opacity: 1;
            visibility: visible;
        }

        .min, .max{
            width: 30%;
            display: inline-block;
        }
        .too{
            display: inline-block;
            margin-left: 3%;
        }

        .f-{
            text-decoration: underline red;
        }

        /* Set gray background color and 100% height */
        .sidenav {
            padding-top: 20px;
            height: 100%;
        }
        .content{
            background-color: #ffffff;
        }
        .landlord-details .media{
            border-bottom: 1px solid #d6d6d6;
        }
        .items{
            height: 50px;
        }
        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 0;
            }
            .items{
                height: 50px;
            }
        }
        .media-body i{
            font-size: small;
        }
        #button {
            display: inline-block;
            width: 50px;
            height: 50px;
            text-align: center;
            border-radius: 4px;
            position: fixed;
            bottom: 30px;
            right: 30px;
            transition: background-color .3s, 
                opacity .5s, visibility .5s;
            visibility: hidden;
            z-index: 1000;
        }



        #button:hover {
            cursor: pointer;
            color: #cccc00;
        }

        .items{
            visibility: hidden;
        }
        .cart-basket {
            font-size: .6rem;
            position: absolute;

            width: 15px;
            height: 15px;
            color:  #ff0000;

            border-radius: 50% ;
        }
        .navbar-header .fa-shopping-cart{
            border: 1px red solid;
            padding-right: 30px;
            padding-left: 30px;

        }
    </style>

   
</head>

<body>
    <a id="button" href="#"><i class="fa fa-chevron-up"></i></a>
  

    <!--Start of Navigation bar -->
    <!--Start of Navigation bar -->
    <nav class="navbar navbar-expand-md navbar-light sticky-top" style=" background-color: #cccccc">

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-header" style=" padding-top: 5px">
            <a class="nav-link fa fa-shopping-cart fa-lg" href="cart.jsp"><span class="cart-basket text-center" id="my_cart"></span></a>
        </div>

        <div class="collapse navbar-collapse float-right" id="collapsibleNavbar">
            <ul class="nav navbar-nav ml-auto">

                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">HOME</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="dropdown-toggle nav-link" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        CATEGORY
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item nav-link" href="products.jsp">All</a>
                        <a class="dropdown-item nav-link" href="women-wear.jsp">Women Wear</a>
                        <a class="dropdown-item nav-link" href="men-wear.jsp">Men Wear</a>
                        <a class="dropdown-item nav-link" href="kids-wear.jsp">Children Wear</a>
                    </div>
                </li>
                <li class="nav-item ">
                    <a class="nav-link " href="services.jsp">SERVICES</a>
                </li>

                <li class="nav-item ">
                    <a class="nav-link" href="contact.jsp">CONTACT</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="dropdown-toggle nav-link" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        MORE
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class=" dropdown-item nav-link" href="about.jsp">About</a>
                        <a class="dropdown-item nav-link" href="terms-and-conditions.jsp">Terms and Conditions</a>
                    </div>
                </li>

            </ul>

        </div>

    </nav>

    <!--End of Navigation bar -->
    <!-- Start of the body -->
    <div id="body">

        <style>
            .blog-info{
                padding:10px;
            }
            .service-item{
                background: #fafafa none repeat scroll 0 0;
                margin-bottom: 30px;
                padding: 16px;
            }
            .sign i{
                color: #ff3333;
            }
            .media-body a i.fa{
                padding-left: 3px;
            }
            .media-body a:hover{
                padding-left: 10px;
            }
           .category{
                width: 300px;
                float: left;
                padding: 2px;
             
            }
            .categories{
                margin: 30px;
            }
             @media screen and (max-width: 600px) {
                 .category{
                     width:100%;
                     padding-bottom: 20px;
                 } 
            }
            
        </style>




        <div id="ca" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#ca" data-slide-to="0" class="active"></li>
                <li data-target="#ca" data-slide-to="1"></li>
                <li data-target="#ca" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="image/jeans-2.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>The SRC is there for you</h5>
                        <p>We put any motivation text here.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="image/IMG-20210726-WA0125.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Studend Represented 24/7</h5>
                        <p>We put any motivation text here.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="image/IMG-20210726-WA0155.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Get Libray Here</h5>
                        <p>fdsa</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#ca" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#ca" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <div class="jumbotron" style=" margin: 0px">
            <div class="text-center" style=" padding-bottom: 20px;">
                <h3 style=" text-decoration: underline red">Categories</h3>
              
            </div>
            <div class=" row categories">
                <div class="category">
                    <a href="products.jsp">
                    <img src="image/images (36).jpeg" style=" height: 90%; width: 100%">
                     </a>
                    <div class=" card">
                        <div class=" card-footer">
                            <a href="products.jsp">All Wear </a>
                        </div>
                    </div>
                </div>
                <div class="category">
                    <a href="women-wear.jsp"><img src="image/IMG-20210729-WA0033.jpg" style=" height: 90%; width: 100%"></a>
                    <div class=" card">
                        <div class=" card-footer">
                            <a href="women-wear.jsp">Ladies Wear</a>
                        </div>
                    </div>        
                </div>
                <div class="category">

                    <a href="men-wear.jsp"><img src="image/men-wear.PNG" style=" height: 90%; width: 100%"></a>
                    <div class=" card">

                        <div class=" card-footer">
                            <a href="men-wear.jsp">Men Wear</a>
                        </div>

                    </div>
                </div>
                <div class="category">
                    <a href="kids-wear.jsp"><img src="image/kids.jpg" style=" height: 90%; width: 100%"></a>
                    <div class=" card">

                        <div class=" card-footer">
                            <a href="kids-wear.jsp">Kids Wear</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
   
    <jsp:include page="footer.jsp"></jsp:include>
    
</body>
</html>
