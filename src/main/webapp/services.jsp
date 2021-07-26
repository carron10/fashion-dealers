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
    <jsp:include page="header.jsp?active=services"></jsp:include>
    <%}%>
    <div id="body">
        <!-- Start of the body -->
        <style>
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
        <div style=" background-color: #99ff99; height: 135px; width: 100%; text-align: center" class="container-fluid text-center">
            <h5 style=" padding:50px; color: #ffffff"><b>SERVICES</b>
                <p>Home/<span style=" color: #ff0000">services</span></p></h5>
        </div>
        <div class="jumbotron" style=" margin: 0px">
            <div class="text-center">
                <h3>Our services</h3>
                <hr class=" line raised">
                <i>This page list all the services we will be providing. This is for example only</i>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class=" service-item">
                        <div class="media">
                            <div class="media-middle">
                                <div class="sign mr-3">
                                    <i class=" fa fa-2x fa-newspaper-o"></i>
                                </div>
                            </div>

                            <div class="media-body">
                                <h3><b>News</b></h3>
                                <p>:..If there are many service we just put them like this 
                                    Here we just put the few lines about this service and when the user clicks see details ,he/she will see more.</p>


                                <a href="news.jsp">See Details <i class=" fa fa-arrow-right"></i> </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class=" service-item">
                        <div class="media">
                            <div class="media-middle">
                                <div class="sign mr-3">
                                    <i class=" fa fa-2x fa-calendar"></i>
                                </div>
                            </div>

                            <div class="media-body">
                                <h3><b>Entertaiment</b></h3>
                                <p>:..If there are many service we just put them like this 
                                    Here we just put the few lines about this service and when the user clicks see details ,he/she will see more.</p>


                                <a href="entertaimnet.jsp">See Details <i class=" fa fa-arrow-right"></i> </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class=" service-item">
                        <div class="media">
                            <div class="media-middle">
                                <div class="sign mr-3">
                                    <i class=" fa fa-2x fa-home"></i>
                                </div>
                            </div>

                            <div class="media-body">
                                <h3><b>Carrier Guidance</b></h3>
                                <p>:..If there are many service we just put them like this 
                                    Here we just put the few lines about this service and when the user clicks see details ,he/she will see more.</p>


                                <a href="carrier-guidance.jsp">See Details <i class=" fa fa-arrow-right"></i> </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class=" service-item">
                        <div class="media">
                            <div class="media-middle">
                                <div class="sign mr-3">
                                    <i class=" fa fa-2x fa-home"></i>
                                </div>
                            </div>

                            <div class="media-body">
                                <h3><b>Accommodation</b></h3>
                                <p>:..If there are many service we just put them like this 
                                    Here we just put the few lines about this service and when the user clicks see details ,he/she will see more.</p>


                                <a href="accommodation-infor.jsp">See Details <i class=" fa fa-arrow-right"></i> </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class=" service-item">
                        <div class="media">
                            <div class="media-middle">
                                <div class="sign mr-3">
                                    <i class=" fa fa-2x fa-home"></i>
                                </div>
                            </div>

                            <div class="media-body">
                                <h3><b>Another Service Name</b></h3>
                                <p>:..If there are many service we just put them like this 
                                    Here we just put the few lines about this service and when the user clicks see details ,he/she will see more.</p>

                                <a href="service-description.jsp">See Details <i class=" fa fa-arrow-right"></i> </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class=" service-item">
                        <div class="media">
                            <div class="media-middle">
                                <div class="sign mr-3">
                                    <i class=" fa fa-2x fa-home"></i>
                                </div>
                            </div>

                            <div class="media-body">
                                <h3><b>Another Service Name</b></h3>
                                <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat</p>

                                <a href="service-description.jsp">See Details <i class=" fa fa-arrow-right"></i> </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--The end of the body-->

    <!--  start of the footer -->
    <% if (n == null) { %>
    <jsp:include page="footer.jsp"></jsp:include>
    <% }%>
    <!-- Footer Area End -->

</body>
</html>
