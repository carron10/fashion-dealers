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
        <div style=" background-color: #99ff99; height: 135px; width: 100%; text-align: center" class="container-fluid text-center">
            <h5 style=" padding:50px; color: #ffffff"><b>CONTACT US</b>
                <p>Home/<span style=" color: #ff0000">Contact</span></p></h5>
        </div>
        <style>
            .info {
                height:176px;
                margin-bottom: 25px;
            }

            .media-body .social-link i.fa {
                color: #f41c54;
                font-size: 20px;
                margin: 0 0 10px;
            }
            .media-body .social-link i.fa:hover {
                color: #00ff00;
            }
            .pd-bottom-50 {
                padding-bottom: 50px;
            }

            .pd-top-80 {
                padding-top: 80px;
            }
            .ads{
                height: 580px;
            }
            .ads .ad{
                height:176px;
                margin-bottom: 25px;
            }
            @media only screen and (max-width: 767px){
                .contact-form {
                    margin-bottom: 20px;
                } 
            }
            .media-body .qoute{
                color: #00ff00;
            }
            .media-body .fa-comment{
                color: #ff0000;
            }

        </style>

        <div class="container center">
            <div class="row justify-content-center">
                <div class="col-md-5 col-md-offset-1 col-sm-6 ">
                    <div class="contact-form raised" style=" padding: 20px; margin: 10px;">
                        <form onsubmit="loadDoc()" class="needs-validation" novalidate>
                            <div class=" text-center"><i>We are waiting to here from you,fill the form below</i></div>
                            <hr class="raised line">
                            <label for="email">Phone</label>
                            <input type="Phone" class=" form-control"  id="phone" required>
                            <div class="invalid-feedback">Please fill out this field.</div>
                            <label for="email">Email</label>
                            <input type="email" class=" form-control"  id="email" required>
                            <div class="invalid-feedback">Please fill out this field.</div>
                            <label for="subject">Subject</label>
                            <input type="text" class=" form-control" id="subject">
                            <label for="msg">Comment</label>
                            <textarea class="form-control" id="msg" rows="6" required></textarea>
                            <div class="invalid-feedback">Please fill out this field.</div>
                            <br>
                            <input class="btn btn-sm btn-danger"  value="Send" type="submit">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Disable form submissions if there are invalid fields
        (function () {
            'use strict';
            window.addEventListener('load', function () {
                // Get the forms we want to add validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function (form) {
                    form.addEventListener('submit', function (event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();

        function loadDoc() {
            var xhttp = new XMLHttpRequest();
            var email = document.getElementById("email").value;
            xhttp.onreadystatechange = function () {
                if (this.readyState === 4 && this.status === 200) {
                    document.getElementById("demo").innerHTML = email;
                }
            };
            xhttp.open("Post", "learn.jsp", true);
            xhttp.send("");
        }
    </script>

 <div id="demo"></div> 
    
    <jsp:include page="footer.jsp"></jsp:include>
    
</body>
</html>
