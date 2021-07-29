<%-- 
    Document   : header
    Created on : Jul 9, 2021, 8:43:07 AM
    Author     : Muleya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
    <%
        String n = request.getParameter("active");
    %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="google-site-verification" content="U_AA9uVhETv3td8BslU7SMA-XOXdqo9zdrnkWnV72yY" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>


        /* navbar styles */
        .site-footer, .navbar {
            opacity: 0.8;
        }
        .navbar a{
            color: #000;
        }

        /*comment section styles*/
        .media .fa-user-circle{
            color: #00cccc;
        }
        .msg-error, .e-error ,.u-error{
            color: red;
        }
        .comment-section{
            padding: 16px; margin: 10px; background-color: #cccccc;
        }
        .comment-section .media-body{
            margin-bottom: 10px;
            background-color: #f7f7d0;
            border-radius: 5px;
        }
        .comment-section .media-body.replying{
            background-color: #ffffff;
        }

        .comment-section .media-body .fa-comment{
            color: #00ff00;
        }
        .c1{
            margin-right: 10px;
        }
        .r1{
            margin-left: 10px;
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

    </style>

    <script>
        var prv;

        $(document).ready(function () {
            $(".nav-item [href],.link").click(function () {
                loader("start");
                $('.navbar-collapse').collapse('hide');
                var n = this.id;
                var request = $.ajax({
                    url: n,
                    method: "POST",
                    data: {content: "true"},
                    dataType: "html"
                });
                request.done(function (msg) {
                    $("#body").html(msg);
                    loader("stop");
                });
                if (history.pushState) {
                    window.history.pushState("", n, n);
                } else {
                    document.location.href = n + ".jsp";
                }
            });
        });


        document.onreadystatechange = function () {
            if (document.readyState !== "complete") {
                loader("start");
            } else {
                loader("stop");
            }
        };

        function loader(nn) {
            if (nn === "start") {

                $("#loader").show();
                $(".loader").show();
            } else {
                $("#loader").hide();
                $(".loader").hide();
                //  $(".body").show();
            }
        }
    </script>

</head>

<body>
    <div id="loader" class="center">
        <button class="btn btn-success" type="button" disabled>
            <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
            Loading...
        </button>
    </div>
    <div class="body">
        <!--Start of Navigation bar -->
        <nav class="navbar navbar-expand-md navbar-light sticky-top" style=" background-color: #cccccc">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="nav navbar-nav mr-auto">

                    <li class="nav-item active">
                        <a class="nav-link" href="#!" id="index.jsp" >HOME</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle nav-link" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            CATEGORY
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class=" dropdown-item nav-link" href="#!" id="about.jsp" >Women Wear</a>
                            <a class="dropdown-item nav-link"  href="#!" id="terms-and-conditions.jsp" >Men Wear</a>
                            <a class=" dropdown-item nav-link" href="#!" id="about.jsp" >Children Wear</a>
                        </div>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="#!" id="services.jsp" >SERVICES</a>
                    </li>

                    <li class="nav-item ">
                        <a class="nav-link" href="#!"  id="contact.jsp">CONTACT</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle nav-link" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            MORE
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class=" dropdown-item nav-link" href="#!" id="about.jsp" >About</a>
                            <a class="dropdown-item nav-link"  href="#!" id="terms-and-conditions.jsp" >Terms and Conditions</a>
                        </div>
                    </li>

                </ul>

            </div>
            <form class="form-inline">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="search" aria-label="search" aria-describedby="button-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="button" id="button-addon2"><i class=" fa fa-search"></i></button>
                    </div>
                </div>
            </form>

        </nav>







        <!--End of Navigation bar -->
