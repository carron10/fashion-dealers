<%-- 
    Document   : index
    Created on : Jul 6, 2021, 8:18:20 PM
    Author     : Muleya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% String n = request.getParameter("content");%>
    <% if (n == null) { %>
    <jsp:include page="header.jsp?active=index"></jsp:include>
    <%}%>
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
            <div class="row mb-5">

                <div class="col" style=" margin: 0; padding: 1px;">
                    <img src="image/Fashion.jpg" style=" height: 90%; width: 100%">
                    <div class=" card">
                        <div class=" card-footer">
                            Men Wear
                        </div>
                    </div>
                </div>
                <div class="col" style=" margin: 0; padding: 1px;">
                    <img src="image/IMG-20210729-WA0033.jpg" style=" height: 90%; width: 100%">
                    <div class=" card">


                        <div class=" card-footer">
                            Ladies Wear

                        </div>
                    </div>        
                </div>
                <div class="col" style=" margin: 0; padding: 1px;">

                    <img src="image/men-wear.PNG" style=" height: 90%; width: 100%">
                    <div class=" card">

                        <div class=" card-footer">
                            Men Wear
                        </div>

                    </div>
                </div>
                <div class="col" style=" margin: 0; padding: 1px;">
                    <img src="image/kids.jpg" style=" height: 90%; width: 100%">
                    <div class=" card">

                        <div class=" card-footer">
                            Kids Wear

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--The end of the body-->
    <% if (n == null) { %>
    <jsp:include page="footer.jsp"></jsp:include>
    <% }%>
</body>
</html>
