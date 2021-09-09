<%-- 
    Document   : index
    Created on : Jul 6, 2021, 8:18:20 PM
    Author     : Muleya
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
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
    <jsp:include page="header.jsp"></jsp:include>
 
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
           .category{
                width: 300px;
                float: left;
                padding: 2px;
             
            }
            .categories{
                margin: 30px;
            }
             @media screen and (max-width: 600px) {
                 .category{
                     width:100%;
                     padding-bottom: 20px;
                 } 
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
            <div class=" row categories">
                <div class="category">
                    <a href="products.jsp">
                    <img src="image/images (36).jpeg" style=" height: 90%; width: 100%">
                     </a>
                    <div class=" card">
                        <div class=" card-footer">
                            <a href="products.jsp">All Wear </a>
                        </div>
                    </div>
                </div>
                <div class="category">
                    <a href="women-wear.jsp"><img src="image/IMG-20210729-WA0033.jpg" style=" height: 90%; width: 100%"></a>
                    <div class=" card">
                        <div class=" card-footer">
                            <a href="women-wear.jsp">Ladies Wear</a>
                        </div>
                    </div>        
                </div>
                <div class="category">

                    <a href="men-wear.jsp"><img src="image/men-wear.PNG" style=" height: 90%; width: 100%"></a>
                    <div class=" card">

                        <div class=" card-footer">
                            <a href="men-wear.jsp">Men Wear</a>
                        </div>

                    </div>
                </div>
                <div class="category">
                    <a href="kids-wear.jsp"><img src="image/kids.jpg" style=" height: 90%; width: 100%"></a>
                    <div class=" card">

                        <div class=" card-footer">
                            <a href="kids-wear.jsp">Kids Wearz</a>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
   
    <jsp:include page="footer.jsp"></jsp:include>
    
</body>
</html>
