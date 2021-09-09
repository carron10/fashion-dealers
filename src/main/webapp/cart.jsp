<%-- 
    Document   : index
    Created on : Jul 6, 2021, 8:18:20 PM
    Author     : Muleya
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



        <div id="body">
            <style>
                .not-found.text-center i.fa {
                    color: #f41c54;
                    font-size: 100px;
                    margin: 0;
                }
                .not-found h1 {
                    color: #f41c54;
                    font-size: 150px;
                    font-weight: 900;
                    margin: 0 0 10px;
                    text-shadow: 7px 6px 0 #000, 0 2px 0 #000, 1px 0 0 #000, 0 1px 0 #000, 1px 1px 0 #000;
                }
                .not-found h2 {
                    color: #f41c54;
                    font-weight: 900;
                    text-transform: uppercase;
                }
                .discover-btn {
                    background: #f41c54 none repeat scroll 0 0;
                    border: 2px solid #f41c54;
                    color: #fff;
                    display: inline-block;
                    font-size: 16px;
                    font-weight: 600;
                    margin: 20px 0 0;
                    padding: 10px 25px;
                    text-transform: uppercase;
                    -webkit-transition: all 0.3s ease 0s;
                    transition: all 0.3s ease 0s;
                }
            </style>
            <!-- Start of the body -->
            <div style=" background-color: #666666; height: 135px; width: 100%; text-align: center" class="container-fluid text-center">
                <h5 style=" padding:50px; color: #ffffff"><b><i class=" fa fa-shopping-cart"></i> Shopping Cart</b>
                    <p>Home/<span style=" color: #ff0000">cart</span></p></h5>
            </div>
            <div class=" container">
                <br>

                <h4 class="fa fa-shopping-cart"> SHOPPING CART</h4>
                <hr>
                <table class="table table-bordered" id="summary-table" style=" display: none">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">Image</th>
                            <th scope="col">Name</th>
                            <th scope="col">Model</th>
                            <th scope="col">Unit Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Total</th>
                            <th scope="col">Remove</th>
                        </tr>
                    </thead>
                    <tbody id="contents">

                    </tbody>
                </table>
                <div id="msg"></div>
                <div class=" row">
                    <div class="col-sm-4">

                    </div>
                    <div class="col-sm-4">

                    </div>
                    <div class="col-sm-4">
                        <table class="table table-bordered " id="totals-table" style=" display: none">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col">Sub total</th>
                                    <th scope="col">$20</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Delivery Fee</td>
                                    <td>$3</td>
                                </tr>
                                <tr class="trow-light">
                                    <td>TOTAL:</td>
                                    <td>$23</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="d-flex  justify-content-between mb-5" style=" width: 100%">
                            <div><a href="products.jsp" class=" border p-2">Continue Shopping</a></div>
                            <div><a href="checkout.jsp" class="border p-2 bg-danger"> <i class="fa fa-shopping-cart"></i> Check Out</a></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!--The end of the body-->

        <!--  start of the footer -->

        <jsp:include page="footer.jsp"></jsp:include>

            <!-- Footer Area End -->
            <script>
                function load_data(data) {
                    const x = JSON.parse(data);

                    var content = "";

                    for (var i = 0; i < x.products.length; i++) {
                        var size = x.products[i].size;
                        var price = x.products[i].price;
                        var years = x.products[i].years;
                        var name = x.products[i].name;
                        var time = x.products[i].time;
                        var cateory = x.products[i].category;
                        var picture = x.products[i].picture;
                        var product_id = x.products[i].p_id;
                        var description = x.products[i].description;
                        var data = "";
                        data += "<tr>" +
                                "<td><img src=\"image/" + picture + "\" alt=\"" + name + "\" style=\"width:80px; height:80px;\"></td>"
                                + "<td>" + name + "</td>"
                                + "<td>" + product_id + "</td>"
                                + "<td>" + price + "</td>"
                                + "<td><input type=\"text\" class=\"form-control form-control-sm\"  value=\"1\" </td>"
                                + "<td>" + price + "</td>"
                                + "<td><button class=\"btn btn-link fa fa-remove\"></button></td>" +
                                "</tr>";

                        content += data;
                    }
                    if (content !== "") {
                        $("#contents").html(content);
                        $("#totals-table").css("display", "block");
                        $("#summary-table").css("display", "block");
                    }
                }
                $(document).ready(function () {
                    var data = get_products_on_cart();
                    if (data !== null) {
                        var request = $.ajax({
                            url: "/get_product_list",
                            method: "POST",
                            data: {ids: data},
                            dataType: "html"
                        });
                        request.done(function (msg) {
                            load_data(msg);
                        });
                    } else {
                        $("#msg").text("There is nothing on the cart");
                    }
                });


                function get_products_on_cart() {
            <% Cookie cookies[] = request.getCookies(); %>
            <% String data = "";%>
            <% for (int i = 0; i < cookies.length; i++) { %>
            <% Cookie c = cookies[i]; %>
            <%if (c.getName().startsWith("product")) {
                    int n = Integer.parseInt(c.getName().replace("product", ""));
                    data += n + ",";
                }%>
            <%}%>
                    return "<%= data %>";
                }

        </script>
    </body>
</html>
