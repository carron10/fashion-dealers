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
        <link href="/css/styles.css" rel="stylesheet" />

        <style>

            i{
                padding-top:  0;
                color: red;
            }

        </style>
        <script>
            var em, r1, r2, r3, r4, r5, pswd, cpswd, un, lname, fname;
            function hid(r) {
                r1.style.display = "none";
                r.style.display = "none";
            }
            document.onreadystatechange = function () {
                em = document.getElementById("email");
                pswd = document.getElementById("pswd");
                cpswd = document.getElementById("cpswd");
                r2 = document.getElementById("r2");
                r1 = document.getElementById("r1");
                r3 = document.getElementById("r3");
                r4 = document.getElementById("r4");
                r5 = document.getElementById("r5");
                var btn = document.getElementById("register");
                un = document.getElementById("uname");
                lname = document.getElementById("lname").value;
                fname = document.getElementById("fname").value;

                un.onfocus = function () {
                    hid(r2);
                };
                em.onfocus = function () {
                    hid(r3);
                };
                pswd.onfocus = function () {
                    hid(r4);
                };
                cpswd.onfocus = function () {
                    hid(r5);
                };
                btn.onclick = function () {
                    if (un.value === "") {
                        r2.style.display = "block";
                        r2.innerHTML = "please enter your username!";
                    }else if (ValidateEmail(em.value) === false) {
                        r2.style.display = "block";
                        r2.innerHTML = "Invalid or null email!";
                    } else if (pswd.value.length < 4) {
                        r4.style.display = "block";
                        r4.innerHTML = "password must be more than 3!";
                    } else if (pswd.value.length > 20) {
                        r4.style.display = "block";
                        r4.innerHTML = "password must be less than 21!";
                    } else if (pswd.value !== cpswd.value) {
                        r5.innerHTML = "passwords don't match!";
                    } else {
                        const data = "email=" + em.value + "&pswd=" + pswd.value + "&cpswd=" + cpswd.value + "&uname=" + un.value + "&lname=" + lname + "&fname=" + fname;
                        var url = "/register";

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
                    r1.style.display = "block";
                    r1.innerHTML = ajaxResponse;
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
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Account</h3>

                                    </div>

                                    <div class="card-body">
                                        <i id="r1"></i>
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3 mb-md-0">
                                                    <label for="inputFirstName">First name</label>
                                                    <input class="form-control" id="fname" type="text" placeholder="Enter your first name" />

                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-floating">
                                                    <label for="inputLastName">Last name</label>
                                                    <input class="form-control" id="lname" type="text" placeholder="Enter your last name" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3 mb-md-0">
                                                    <label for="username">User name</label>
                                                    <input class="form-control" id="uname" type="text" placeholder="Enter your user name" />
                                                    <i id="r2"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-floating">
                                                    <label for="email">Email</label>
                                                    <input  class="form-control" id="email" type="text" placeholder="Enter your email" />
                                                    <i id="r3"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3 mb-md-0">
                                                    <label for="inputPassword">Password</label>
                                                    <input  class="form-control" id="pswd" type="password" placeholder="Create a password" />
                                                    <i id="r4"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-floating mb-3 mb-md-0">
                                                    <label for="inputPasswordConfirm">Confirm Password</label>
                                                    <input class="form-control" id="cpswd" type="password" placeholder="Confirm password" />
                                                    <i id="r5"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mt-4 mb-0">
                                            <div class="d-grid"><a class="btn btn-primary btn-block" id="register">Create Account</a></div>
                                        </div>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="login.jsp">Have an account? Go to login</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
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
