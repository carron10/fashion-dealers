<%-- 
    Document   : index
    Created on : Jul 6, 2021, 8:18:20 PM
    Author     : Muleya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!--Import header -->
    <% String n = request.getParameter("content");%>
    <% if (n == null) { %>
    <jsp:include page="header.jsp?active=contact"></jsp:include>
    <% }%>
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
    <% if (n == null) { %>
    <jsp:include page="footer.jsp"></jsp:include>
    <% }%>
</body>
</html>
