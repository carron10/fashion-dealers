<%-- 
    Document   : index
    Created on : Jul 6, 2021, 8:18:20 PM
    Author     : Muleya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link href="css/styles.css" rel="stylesheet" />
        <!--<script src="/scripts/loader.js"></script> -->
        <style>

            i{
                padding-top:  0;
                color: red;
            }
            #loader {
                width: 200px;
                height: 30px;
                z-index: 999;
                display: none;
                position: fixed;
                opacity: 0.6;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                margin: auto;
            }
        </style>
        <script>
            document.onreadystatechange = function () {
                var em = document.getElementById("email");
                var pswd = document.getElementById("pswd");
                var rem = document.getElementById("rem").value;
                var r2 = document.getElementById("r2");
                var r1 = document.getElementById("r1");
                var r3 = document.getElementById("r3");
                var btn = document.getElementById("login");

                em.onfocus = function () {
                    r1.style.display = "none";
                    r2.style.display = "none";
                };

                pswd.onfocus = function () {
                    r1.style.display = "none";
                    r3.style.display = "none";
                };


                btn.onclick = function () {

                    var url = '/login';
                    if (ValidateEmail(em.value) === false) {

                        r2.style.display = "block";
                        r2.innerHTML = "Invalid or null email!";
                    } else if (pswd.value === "" || pswd.value.length < 4 || pswd.value.length > 20) {

                        r3.style.display = "block";
                        r3.innerHTML = "Invalid or null password!";
                    } else {
                        document.getElementById("loader").style.display="block";
                        var data = "email=" + em.value + "&pswd=" + pswd.value + "&rem=" + rem;
                        var request = new XMLHttpRequest();
                        request.open('POST', url);
                        request.addEventListener('readystatechange', handleResponse);
                        request.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                        request.send(data);
                    }
                };

            };
            function ValidateEmail(email)
            {
                var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
                if (email.match(mailformat))
                {
                    return true;
                } else
                {
                    return false;
                }
            }

            function handleResponse() {

                var request = this;

                if (request.readyState !== 4) {
                    return;
                }

                if (request.status === 200) {
                    var ajaxResponse = request.responseText;
                    var res = ajaxResponse;
                    document.getElementById("r1").style.display = "block";
                    document.getElementById("r1").innerHTML = ajaxResponse;
                    document.getElementById("loader").style.display="none";
                }
            }

        </script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div id="loader">
                                    <button class="btn btn-success" type="button" disabled>
                                        <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                                       Sending...
                                    </button>
                                </div>
                                <div class="card shadow-lg border-0 rounded-sm mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Login</h3></div>
                                    <div class="card-body ">

                                        <i id="r1"></i>
                                        <div class="form-floating mb-3">
                                            <label for="email">Email address</label>
                                            <input class="form-control" id="email" type="email" placeholder="name@example.com" />
                                            <i id="r2"></i>
                                        </div>

                                        <div class="form-floating mb-3">
                                            <label for="pswd">Password</label>
                                            <input class="form-control" id="pswd" type="password" placeholder="Password" />
                                            <i id="r3"></i>
                                        </div>

                                        <div class="form-check mb-3">
                                            <input class="form-check-input" id="rem" type="checkbox" value="" />
                                            <label class="form-check-label" for="inputRememberPassword">Remember Password</label>
                                        </div>
                                        <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                            <a class="small" href="reset-password.jsp">Forgot Password?</a>
                                            <a class="btn btn-primary" id="login">Login</a>

                                        </div>


                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="register.jsp">Need an account? Sign up!</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer" >
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    </body>
</html>
