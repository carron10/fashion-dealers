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
                        <img src="img/nust1.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>The SRC is there for you</h5>
                            <p>We put any motivation text here.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="img/nust2.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Studend Represented 24/7</h5>
                            <p>We put any motivation text here.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="img/nust3.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Get Libray Here</h5>
                            <p>We put any motivation text here.</p>
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
                    <h3>Our services</h3>
                    <hr  class="raised line">
                    <i>Our aim is to bring the nustians together</i>
                </div>

                <div class=" row">
                    <div class="col-md-4 col-sm-6">
                        <div class=" service-item">
                            <div class="media">
                                <div class="media-middle">
                                    <div class="sign mr-3">
                                        <i class=" fa fa-2x fa-home"></i>
                                    </div>
                                </div>

                                <div class="media-body">
                                    <h3><b>Find Accommodation</b></h3>
                                    <p>We have launched this wesite to help student get accommdation easly ....Here we just put the few lines about this service and when the user clicks see details ,he/she will see more.</p>

                                    <a href="accommodation-infor.jsp">See Details <i class=" fa fa-arrow-right"></i> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class=" service-item">
                            <div class="media">
                                <div class=" sign mr-3">
                                    <i class="fa fa-2x fa-book"></i>
                                </div>

                                <div class="media-body">
                                    <h3><b>Library</b></h3>
                                    <p>
                                        This is a place where students show their talents and etc.
                                        ...
                                        Here we just put the few lines about this service and when the user clicks see details ,he/she will see more.


                                    </p>
                                    <a href="library.jsp">See Details <i class=" fa fa-arrow-right"></i> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class=" service-item">
                            <div class="media">
                                <div class=" sign mr-3">
                                    <i class=" fa fa-2x fa-newspaper-o"></i>
                                </div>

                                <div class="media-body">
                                    <h3><b>News</b></h3>
                                    <p>
                                        :..If there are many service we just put them like this 
                                        Here we just put the few lines about this service and when the user clicks see details ,he/she will see more.


                                    </p>
                                    <a href="news.jsp">See Details <i class=" fa fa-arrow-right"></i> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-center" style=" padding: 20px;">
                    <h3>Latest Posts</h3>
                    <hr  class=" raised line">
                    <i>Put some text in here</i>
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <div class=" card">
                            <div class="card-header">
                                <img src="img/2.jpg" width="100%">
                                <a href="#" class="blog-info" ><i class="fa fa-user"></i>FirstName LastName</a>
                                <a href="#" class="blog-info"><i class="fa fa-calendar"></i>01 July 2021</a>
                                <a href="#" class="blog-info"><i class="fa fa-comment"></i>8</a>
                                <h4>Src Votes</h4> 
                            </div>
                            <div class="card-body">
                                <p> 

                                    Here we just put the few lines about this news and when the user clicks read more ,he/she will see more about this news.
                                </p>
                                <a href="#" class="r_more">Read more</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class=" card">
                            <div class="card-header">
                                <img src="img/4.jpg" width="100%">
                                <a href="#" class="blog-info" ><i class="fa fa-user"></i>Naison Ndlovu</a>
                                <a href="#" class="blog-info"><i class="fa fa-calendar"></i>01 Jun 2021</a>
                                <a href="#" class="blog-info"><i class="fa fa-comment"></i>8</a>
                                <h4>Postponation of Exam</h4> 
                            </div>
                            <div class="card-body">
                                <p> 
                                    Here we just put the few lines about this news and when the user clicks read more ,he/she will see more about this news.

                                </p>
                                <a href="#" class="r_more">Read more</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class=" card">
                            <div class="card-header">
                                <img src="img/5.jpg" width="100%">
                                <a href="#" class="blog-info" ><i class="fa fa-user"></i>Someone Ndlovu</a>
                                <a href="#" class="blog-info"><i class="fa fa-calendar"></i>01 Jan 2016</a>
                                <a href="#" class="blog-info"><i class="fa fa-comment"></i>8</a>

                                <h4>News Title</h4> 
                            </div>
                            <div class="card-body">
                                <p> 

                                    Here we just put the few lines about this news and when the user clicks read more ,he/she will see more about this news.
                                </p>
                                <a href="#" class="r_more">Read more</a>
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
