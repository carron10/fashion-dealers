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
        <style>
            i{
                padding-top:  0;
                color: red;
            }
        </style>
        <script>
            document.onreadystatechange = function () {
                var em = document.getElementById("email");
                var r2 = document.getElementById("r2");
                var r1 = document.getElementById("r1");
                var btn = document.getElementById("reset");
                em.onfocus = function () {
                    r1.style.display = "none";
                    r2.style.display = "none";
                };
                btn.onclick = function () {

                    var url = '/reset-password';
                    if (ValidateEmail(em.value) === true) {
                        var data = "email=" + em;
                        var request = new XMLHttpRequest();
                        request.open('POST', url);
                        request.addEventListener('readystatechange', handleResponse);
                        request.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                        request.send(data);
                    } else {
                        r2.style.display = "block";
                        r2.innerHTML = "Invalid or null email!";
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
                    document.getElementById("r1").style.display = "block";
                    document.getElementById("r1").innerHTML = ajaxResponse;
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
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Password Recovery</h3></div>
                                    <div class="card-body">
                                        <div class="small mb-3 text-muted">Enter your email address and we will send you a link to reset your password.</div>

                                        <i id="r1"></i>
                                        <div class="form-floating mb-3">
                                            <label for="inputEmail">Email address</label>
                                            <input class="form-control" id="email" type="email" placeholder="name@example.com" />
                                            <i id="r2"></i>
                                        </div>
                                        <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                            <a class="small" href="login.jsp">Return to login</a>
                                            <a  class="btn btn-primary" id="reset">Reset Password</a>
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
                <footer class="py-4 bg-light">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy;Fashion Delears 2021</div>
                            <div>
                                <a href="terms-and-conditions.jsp">Privacy Policy</a>
                                &middot;
                                <a href="terms-and-conditions.jsp">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        
    </body>


</html>
