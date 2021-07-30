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
                            <div class=" text-center"><i>Fill the form below to add a product</i></div>
                            <hr class="raised line">
                            <i id="error"></i>
                            <label for="email">Product name</label>
                            <input type="text" class=" form-control"  id="name" required>
                            <div class="invalid-feedback">Please fill out this field.</div>

                            <label for="email">Price</label>
                            <input type="text" class=" form-control"  id="price" required>

                            <div class="invalid-feedback">Please fill out this field.</div>
                            <label for="subject">Size</label>
                            <input type="text" class=" form-control" id="size">
                            <label for="msg">Years</label>
                            <input type="text" class=" form-control" id="years">
                            <div class="invalid-feedback">Please fill out this field.</div>
                            <label for="email">Category</label>
                            <input type="text" class="form-control"  id="category" required>
                            <div class="invalid-feedback">Please fill out this field.</div>
                            <label for="email">Picture name</label>
                            <input type="text" class=" form-control"  id="picture" required>
                            <div class="invalid-feedback">Please fill out this field.</div>
                            <label for="msg">Discription</label>
                            <textarea class="form-control" id="disc" rows="6"></textarea>

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
            var name = document.getElementById("name").value;
            var price = document.getElementById("price").value;
            var years = document.getElementById("years").value;
            var size = document.getElementById("size").value;
            var category = document.getElementById("category").value;

            var disc = document.getElementById("disc").value;
            var picture = document.getElementById("picture").value;
            var data = "name=" + name + "&size=" + size + "&category=" + category + "&picture=" + picture + "&years=" + years + "&price=" + price + "&disc=" + disc;
            xhttp.onreadystatechange = function () {
                if (this.readyState === 4 && this.status === 200) {
                    document.getElementById("error").innerHTML = xhttp.responseText;
                }
            };
            xhttp.open("Get", "store_product?" + data, true);
            xhttp.send();
        }
    </script>

    <div id="demo"></div> 
    <% if (n == null) { %>
    <jsp:include page="footer.jsp"></jsp:include>
    <% }%>
</body>
</html>
