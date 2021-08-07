<%-- 
    Document   : learn
    Created on : Aug 6, 2021, 9:01:29 PM
    Author     : Muleya
--%>

<%@page contentType="text/html" pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
        <style>
            .navbar-nav .nav li{
                padding: 7px;
                list-style: none;
                float: right;
                margin: 5px;
            }
            .nav-link:hover{
                cursor: pointer;
                color: #ff0000;
            }
            .navbar-toggler{
                position: absolute;
                background-color: #ffffff;
                border: 1px  black solid;
                border-radius: 5px;
                margin: 5px;
                visibility: hidden;
            }
            .navbar-toggler hr{
                width: 30px;
                height: 1px;
            }

            nav{
                background-color: red;
                height: 50px;
                margin: 0;
            }
            @media screen and (max-width:600px){
                .navbar-toggler{
                    visibility: visible;
                }
                .navbar-nav .nav li{
                    padding: 7px;
                    float: none;
                    position: relative;
                    margin: 5px;
                }
            }

        </style>
        <script>
            
            $(document).ready(
                    function () {
                        $(".navbar-toggler").click(function(){
                            if($(".collapse").collapse()===true){
                                $('.navbar-collapse').collapse('hide');
                            }else{
                                $('.navbar-collapse').collapse('show');
                            }
                        });
                    }
            );
        </script>
    </head>
    <body>
        <nav class="navbar navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapse">
                <span class="navbar-toggler-icon">
                    <hr>
                    <hr>
                    <hr>
                </span>
            </button> 
            <div class="collapse navbar-nav" id="collapse">
                <ul class="nav">
                    <li class=" nav-item">
                        <a class=" nav-link">Home</a>
                    </li>
                    <li class=" nav-item">
                        <a class=" nav-link">Home</a>
                    </li>
                    <li class=" nav-item">
                        <a class=" nav-link">Home</a>
                    </li>
                    <li class=" nav-item">
                        <a class=" nav-link">Home</a>
                    </li>
                    <li class=" nav-item">
                        <a class=" nav-link">Home</a>
                    </li>
                </ul>
            </div>

        </nav>
    </body>
</html>
