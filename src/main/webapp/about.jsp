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
    <jsp:include page="header.jsp?active=about"></jsp:include>
    <%}%>
    <div id="body">
        <div style=" background-color: #99ff99; height: 135px; width: 100%; text-align: center" class="container-fluid text-center">
            <h5 style=" padding:50px; color: #ffffff"><b>ABOUT</b>
                <p>Home/<span style=" color: #ff0000">About</span></p></h5>
        </div>

        <div class=" jumbotron" style=" border-radius: 0; margin: 0">

            <style>


                .discover-about-area {
                    background: #f1f1f1 none repeat scroll 0 0;
                }
                .about-box {
                    background: #fff none repeat scroll 0 0;
                    padding: 50px 20px 20px;
                    position: relative;
                }
                .about{
                    margin-top: 40px;
                }
                .about-icon-box {
                    background: #fff none repeat scroll 0 0;
                    border: 1px solid #f5f5f5;
                    font-size: 18px;
                    height: 60px;
                    left: 20px;
                    line-height: 57px;
                    position: absolute;
                    text-align: center;
                    top: -30px;
                    -webkit-transition: all 0.3s ease 0s;
                    transition: all 0.3s ease 0s;
                    width: 60px;
                }
                .about-box:hover .about-icon-box {
                    background: #f41c54 none repeat scroll 0 0;
                    border: 1px solid #f41c54;
                    color: #fff;
                }
                .about-box h3 {
                    margin: 0 0 10px;
                }
                .about-box p {
                    margin: 0;
                }

                .toggle-icon i {
                    color: #f41c54;
                }
                .toggle-icon{
                    float: right;
                    right: 0px;
                }
                .to{
                    width: 100%;
                    color: black;
                }
                .to:hover{
                    color: #999999;
                    text-decoration: none;
                }
                .card{
                    margin: 2px;
                }

                .single-team-item {
                    border: 3px solid #009966;
                    overflow: hidden;
                    position: relative;
                    margin-top: 10px;
                }
                .team-desc {
                    bottom: -80%;
                    display: block;
                    height: 100%;
                    left: 0;
                    position: absolute;
                    -webkit-transition: all 0.3s ease 0s;
                    transition: all 0.3s ease 0s;
                    width: 100%;
                    z-index: 1;
                }
                .single-team-item:hover .team-desc {
                    bottom: 0;
                }
                .team-desc:after {
                    background: #3300ff none repeat scroll 0 0;
                    content: "";
                    height: 100%;
                    left: 0;
                    opacity: 0.8;
                    -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=80)";
                    position: absolute;
                    top: 0;
                    width: 100%;
                    z-index: -1;
                }
                .team-desc h3 {
                    color: #fff;
                    font-size: 22px;
                    font-weight: 700;
                    margin: 0 0 10px;
                    text-transform: uppercase;
                }
                .team-desc {
                    color: #fff;
                }
                .team-desc span {
                    display: block;
                    font-size: 14px;
                    font-weight: 700;
                    margin: 0 0 100px;
                    text-transform: uppercase;
                }
                .team-desc a {
                    border: 1px solid #fff;
                    color: #fff;
                    display: inline-block;
                    font-size: 15px;
                    height: 30px;
                    line-height: 27px;
                    margin: 10px 5px 16px 0;
                    text-align: center;
                    -webkit-transition: all 0.3s ease 0s;
                    transition: all 0.3s ease 0s;
                    width: 30px;
                }
                .team-desc a:hover {
                    background: #000 none repeat scroll 0 0;
                    border: 1px solid #000;
                }
                .pd {
                    padding: 50px 0;
                }
                
                .team-image img {
                    vertical-align: middle;
                     border: 0;
                     max-width: 100%;
                }
                .ads .raised{
                    height: 100%;
                }
                
            </style>
            <div class=" text-center">
                <h3>About Fashion Dealers</h3>
                <hr class="raised line">
                <i>Get to know Fashion Delears</i>
                <hr class="raised" style="height:1px; width:100%; border-width:0; color:red; background-color:red">
            </div>

            <div class="row">
                <div class="col-md-4 col-sm-6 about">
                    <div class="about-box raised">
                        <div class="about-icon-box raised">
                            <i class="fa fa-building-o"></i>
                        </div>
                        <h5>History of  Fashion Dealers</h5>
                        <p>Here we tell the infornmation about the above fashion delears . We just put the history , the present and any infor we need to put here</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 about">
                    <div class="about-box raised">
                        <div class="about-icon-box raised">
                            <i class="fa fa-building-o"></i>
                        </div>
                        <h5>Were are we today</h5>
                        <p>Here we tell the infornmation about the above Fashion Delears. We just put the history , the present and any infor we need to put here
                       </p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 about">
                    <div class="about-box raised">
                        <div class="about-icon-box raised">
                            <i class="fa fa-building-o"></i>
                        </div>
                        <h5> Our mession in future</h5>
                        <p>Here we tell the infornmation about the above heading. We just put the history , the present and any infor we need to put here</p>
                    </div>
                </div>
            </div>

            <div class=" text-center" style=" padding: 10px;">
                <h3>Meet Our Team</h3>
                <hr class="raised line">
                <i>Here is our team..</i>
                
            </div>
            
            <div class="discover-team-area pd">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="single-team-item">
                                <div class="team-image">
                                    <img src="img/3.jpg" alt="">
                                </div>
                                <div class="team-desc">
                                    <h3>Nyasha</h3>
                                    <span>Founder</span>
                                    <a href="#" class=""><i class="fa fa-facebook"></i></a>
                                    <a href="#" class=""><i class="fa fa-twitter"></i></a>
                                    <a href="#" class=""><i class="fa fa-linkedin"></i></a>
                                    <a href="#" class=""><i class="fa fa-instagram"></i></a>
                                    <a href="#" class=""><i class="fa fa-dribbble"></i></a>
                                    <p>Nyasha is    ------</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-team-item">
                                <div class="team-image">
                                    <img src="img/3.jpg" alt="">
                                </div>
                                <div class="team-desc">
                                    <h3>Cynthia</h3>
                                    <span>Core Founder</span>
                                    <a href="#" class=""><i class="fa fa-facebook"></i></a>
                                    <a href="#" class=""><i class="fa fa-twitter"></i></a>
                                    <a href="#" class=""><i class="fa fa-linkedin"></i></a>
                                    <a href="#" class=""><i class="fa fa-instagram"></i></a>
                                    <a href="#" class=""><i class="fa fa-dribbble"></i></a>
                                    <p>Cynthia is a business women..........</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-team-item">
                                <div class="team-image">
                                    <img src="img/3.jpg" alt="">
                                </div>
                                <div class="team-desc">
                                    <h3>Someone SSS</h3>
                                    <span>CEO</span>
                                    <a href="#" class=""><i class="fa fa-facebook"></i></a>
                                    <a href="#" class=""><i class="fa fa-twitter"></i></a>
                                    <a href="#" class=""><i class="fa fa-linkedin"></i></a>
                                    <a href="#" class=""><i class="fa fa-instagram"></i></a>
                                    <a href="#" class=""><i class="fa fa-dribbble"></i></a>
                                    <p>Here put the bio of the above mentioned person .</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-team-item">
                                <div class="team-image">
                                    <img src="img/3.jpg" alt="">
                                </div>
                                <div class="team-desc">
                                    <h3>Noone M</h3>
                                    <span>Human Resources Manager</span>
                                    <a href="#" class=""><i class="fa fa-facebook"></i></a>
                                    <a href="#" class=""><i class="fa fa-twitter"></i></a>
                                    <a href="#" class=""><i class="fa fa-linkedin"></i></a>
                                    <a href="#" class=""><i class="fa fa-instagram"></i></a>
                                    <a href="#" class=""><i class="fa fa-dribbble"></i></a>
                                    <p>Here put the bio of the above mentioned person </p>
                                </div>
                            </div>
                        </div>
                    </div>
                 </div>
           
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="single-team-item">
                                <div class="team-image">
                                    <img src="img/3.jpg" alt="">
                                </div>
                                <div class="team-desc">
                                    <h3>Naison Ndlovu</h3>
                                    <span>Finanace Manager</span>
                                    <a href="#" class=""><i class="fa fa-facebook"></i></a>
                                    <a href="#" class=""><i class="fa fa-twitter"></i></a>
                                    <a href="#" class=""><i class="fa fa-linkedin"></i></a>
                                    <a href="#" class=""><i class="fa fa-instagram"></i></a>
                                    <a href="#" class=""><i class="fa fa-dribbble"></i></a>
                                    <p>Am happy to be part of Src...Hey Naison(Here you put your BIO  kkkkk)</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-team-item">
                                <div class="team-image">
                                    <img src="img/3.jpg" alt="">
                                </div>
                                <div class="team-desc">
                                    <h3>Desire KKKKKK</h3>
                                    <span>Information and this this</span>
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                    <a href="#" class=""><i class="fa fa-instagram"></i></a>
                                    <a href="#" class=""><i class="fa fa-dribbble"></i></a>
                                    <p>Here put the bio of the above mentioned person ..Enjoy</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-team-item">
                                <div class="team-image">
                                    <img src="img/3.jpg" alt="">
                                </div>
                                <div class="team-desc">
                                    <h3>Someone SSS</h3>
                                    <span>Just a Student</span>
                                    <a href="#" class=""><i class="fa fa-facebook"></i></a>
                                    <a href="#" class=""><i class="fa fa-twitter"></i></a>
                                    <a href="#" class=""><i class="fa fa-linkedin"></i></a>
                                    <a href="#" class=""><i class="fa fa-instagram"></i></a>
                                    <a href="#" class=""><i class="fa fa-dribbble"></i></a>
                                    <p>Here put the bio of the above mentioned person .</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-team-item">
                                <div class="team-image">
                                    <img src="img/3.jpg" alt="">
                                </div>
                                <div class="team-desc">
                                    <h3>Noone M</h3>
                                    <span>Class Rep(kkk)</span>
                                    <a href="#" class=""><i class="fa fa-facebook"></i></a>
                                    <a href="#" class=""><i class="fa fa-twitter"></i></a>
                                    <a href="#" class=""><i class="fa fa-linkedin"></i></a>
                                    <a href="#" class=""><i class="fa fa-instagram"></i></a>
                                    <a href="#" class=""><i class="fa fa-dribbble"></i></a>
                                    <p>Here put the bio of the above mentioned person </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
           
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="single-team-item">
                                <div class="team-image">
                                    <img src="img/3.jpg" alt="">
                                </div>
                                <div class="team-desc">
                                    <h3>Naison Ndlovu</h3>
                                    <span>Students Affairs</span>
                                    <a href="#" class=""><i class="fa fa-facebook"></i></a>
                                    <a href="#" class=""><i class="fa fa-twitter"></i></a>
                                    <a href="#" class=""><i class="fa fa-linkedin"></i></a>
                                    <a href="#" class=""><i class="fa fa-instagram"></i></a>
                                    <a href="#" class=""><i class="fa fa-dribbble"></i></a>
                                    <p>Am happy to be part of Src...Hey Naison(Here you put your BIO  kkkkk)</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-team-item">
                                <div class="team-image">
                                    <img src="img/3.jpg" alt="">
                                </div>
                                <div class="team-desc">
                                    <h3>Desire KKKKKK</h3>
                                    <span>Information and this this</span>
                                    <a href="#" class=""><i class="fa fa-facebook"></i></a>
                                    <a href="#" class=""><i class="fa fa-twitter"></i></a>
                                    <a href="#" class=""><i class="fa fa-linkedin"></i></a>
                                    <a href="#" class=""><i class="fa fa-instagram"></i></a>
                                    <a href="#" class=""><i class="fa fa-dribbble"></i></a>
                                    <p>Here put the bio of the above mentioned person ..Enjoy</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-team-item">
                                <div class="team-image">
                                    <img src="img/3.jpg" alt="">
                                </div>
                                <div class="team-desc">
                                    <h3>Someone SSS</h3>
                                    <span>Human Resouser</span>
                                    <a href="#" class=""><i class="fa fa-facebook"></i></a>
                                    <a href="#" class=""><i class="fa fa-twitter"></i></a>
                                    <a href="#" class=""><i class="fa fa-linkedin"></i></a>
                                    <a href="#" class=""><i class="fa fa-instagram"></i></a>
                                    <a href="#" class=""><i class="fa fa-dribbble"></i></a>
                                    <p>Here put the bio of the above mentioned person .</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-team-item">
                                <div class="team-image">
                                    <img src="img/3.jpg" alt="">
                                </div>
                                <div class="team-desc">
                                    <h3>Carron Muleya</h3>
                                    <span>Finance Manager</span>
                                    <a href="#" class=""><i class="fa fa-facebook"></i></a>
                                    <a href="#" class=""><i class="fa fa-twitter"></i></a>
                                    <a href="#" class=""><i class="fa fa-linkedin"></i></a>
                                    <a href="#" class=""><i class="fa fa-instagram"></i></a>
                                    <a href="#" class=""><i class="fa fa-dribbble"></i></a>
                                    <p>Think in other terms</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            

        </div>

    </div>


    <% if (n == null) { %>
    <jsp:include page="footer.jsp"></jsp:include>
    <% }%>
</body>
</html>
