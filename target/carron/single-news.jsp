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

        <div style=" background-color: #99ff99; height: 135px; width: 100%; text-align: center" class="container-fluid text-center">
            <h5 style=" padding:50px; color: #ffffff"><b>SERVICES</b>
                <p>Home/Services<span style=" color: #ff0000">/Entertaimnent</span></p></h5>
        </div>
        <style>
            /* Remove the navbar's default margin-bottom and rounded borders */ 


            /* Set height of the grid so .sidenav can be 100% (adjust as needed) */


            /* Set gray background color and 100% height */
            .sidenav {
                padding-top: 20px;

                height: 100%;
            }
            .content{
                background-color: #ffffff;
            }
            /* Set black background color, white text and some padding */
            .picture{
                padding-bottom: 10px;
            }

            /* On small screens, set height to 'auto' for sidenav and grid */
            @media screen and (max-width: 767px) {
                .sidenav {
                    height: auto;
                    padding: 0;
                }

            }
        </style>
        <div class="container-fluid" style=" background-color: #f1f1f1;">  
            <div class="row">
                <div class="col-sm-2 sidenav">

                </div>
                <div class="col-sm-8 text-left content"> 

                    <div class=" text-center">
                        <h3>New Title</h3>
                        <i>This page shows the news on its own. Its optional to put the picture or not. We can put the logo for Src. Please see on the admin dashboard that I will send to you
                            you will use it to manage news and posts</i>
                    </div>
                    <hr class="raised line">
                    <div class="picture">
                        <div class=" card text-center">
                            <img src="img/login_background.jpg" width="100%" alt="login_background"/>

                        </div>
                    </div>
                    <div class="card-body">



                        <div class=" text-center">
                            <h4>Service Information and Details</h4>
                            <hr class="raised l-2">
                            <i>Don't read this (its useles) kkk</i>

                        </div>
                        <p>

                            Everything you will read in here they are not real. You may encouter spelling and english problem. Mr I was programming so I didn't have 
                            much time to add content in here .
                        </p>
                        <p>

                            The src have introduced this service to the students so that the student will do bluh bluh.
                            Hy Visitor here we just put everything about this service(one service) for example if this service is about carrier guidance we can put the little about it
                            if then from this page we can direc..........
                            sduf

                        </p>
                        <div class=" text-center">
                            <h4>Heading</h4>
                            <hr class="raised l-2">

                        </div>
                        <p>
                            A website need to attract people and have enough informatiion to convince a visitor to stay on the site. Therefor for a wesite to
                            grow up we should not just put one service but many of them. Please if you like  website show your frinds and this website will be own and controlled by you.

                            I will be only maintaining every technical issues.
                        </p>
                        <br>
                        <p>
                            All the text on this website are just made for examples , for this site to run and come live. You need to admit that we should work together to build this.
                            I built this website as a leaning purpose and by giving it into your hands I want to improve my skills and ...............
                        </p>

                    </div>
                    <div class="row">
                        <div class="col comment-section">
                            <div class=" text-center"><h4> <i class="fa fa-comments"></i>Recent comments(5)</h4></div>
                            <hr class="raised" style="height:4px; width:100px; border-width:0; color:red; background-color:red">

                            <div class="media">
                                <i class="align-self-start c1 fa fa-user-circle fa-2x"></i>
                                <div class="media-body p-2">
                                    <h6><b>Another Girl</b> said</h6>
                                    <span class="fa fa-calendar">3 hours ago</span>
                                    <p > <i class="fa fa-comment"></i>
                                        This is great keep it up<a class="reply btn btn-link">Reply</a>
                                    </p>
                                </div>
                            </div>

                            <div class="media ">
                                <i class=" align-self-start c1 fa fa-user-circle fa-2x"></i>
                                <div class="media-body p-2">
                                    <h6><b>Someone</b> Said</h6>
                                    <span class="fa fa-calendar">3 hours ago</span>
                                    <p > <i class="fa fa-comment"></i>
                                        Thank you SRC to put on this Service we are real happy about you
                                        <a class="reply btn btn-link">Reply</a>
                                    </p>
                                </div>
                            </div>
                            <div class="media">
                                <div class="media-body p-2  replying">
                                    <h6><b>Noone </b>replied <b>Someone</b></h6>
                                    <span class="fa fa-calendar">3 hours ago</span>
                                    <p> <i class="fa fa-comment"></i>Yea this is great mr <b>Someone</b> we are always standing to help you

                                        <a class="reply btn btn-link">Reply</a>
                                    </p>
                                </div>
                                <i class=" align-self-start r1 fa fa-user-circle fa-2x"></i>
                            </div>

                        </div>
                        <div class="col-md-5  comment-section">
                            <div class=" text-center"><h4>Leave a comment</h4></div>
                            <hr class="raised line">
                            <label class="comment-error"></label>
                            <input type=" text" class=" form-control" id="uname" placeholder="Enter your username">
                            <label class="u-error"></label>
                            <input type="email" class=" form-control"  id="email" placeholder="Enter your Email">
                            <label class="e-error"></label>
                            <textarea class="form-control" id="msg" rows="5" placeholder="Enter your Comment here"></textarea>
                            <label class="msg-error"></label>
                            <br>
                            <input class="btn btn-lg btn-danger"  onclick="comment()" value="Send" type="submit">
                        </div>
                    </div>

                </div>
                <div class="col-sm-2 sidenav">
                    <div class="well">
                        <p>ADS</p>
                    </div>
                    <div class="well">
                        <p>ADS</p>
                    </div>
                </div>


            </div>

            <!--start of Comment section-->


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