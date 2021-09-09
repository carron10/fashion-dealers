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
    <jsp:include page="header.jsp?active=tcs"></jsp:include>
    <% }%>

    <!--End of Navigation bar -->
    <!-- Start of the body -->
    <div id="body">
        <div style=" background-color: #666666; height: 135px; width: 100%; text-align: center" class="container-fluid text-center">
            <h5 style=" padding:50px; color: #ffffff"><b>Terms and conditions</b>
                <p>Home/<span style=" color: #ff0000">terms-and-conditions</span></p></h5>
        </div>

        <style>
           
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
                <div class="col-sm-2 sidenav"></div>
                 
                <div class="col-sm-8 text-left content"> 
                    <div class=" text-center">
                        <h3>Our terms and Conditions</h3>
                        <i>Please read our terms and conditions below</i>
                    </div>
                    <hr class="raised line">
                    <!-- wp:heading -->
                    <h3>Who we are</h3>
                    <!-- /wp:heading -->

                    <!-- wp:paragraph -->
                    <p>Our website address is: https://fashion-delears.herokuapp.com/</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:heading -->
                    <h4>Comments</h4>
                    <!-- /wp:heading -->

                    <!-- wp:paragraph -->
                    <p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:paragraph -->
                    <p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service Privacy Policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:heading -->
                    <h4>Media</h4>
                    <!-- /wp:heading -->

                    <!-- wp:paragraph -->
                    <p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:heading -->
                    <h4>Cookies</h4>
                    <!-- /wp:heading -->

                    <!-- wp:paragraph -->
                    <p>If you leave a comment on our site you may opt in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:paragraph -->
                    <p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:paragraph -->
                    <p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select "Remember Me", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:paragraph -->
                    <p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:heading -->
                    <h4>Embedded content from other websites</h4>
                    <!-- /wp:heading -->

                    <!-- wp:paragraph -->
                    <p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:paragraph -->
                    <p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:heading -->
                    <h4>Who we share your data with</h4>
                    <!-- /wp:heading -->

                    <!-- wp:paragraph -->
                    <p>If you request a password reset, your IP address will be included in the reset email.</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:heading -->
                    <h4>How long we retain your data</h4>
                    <!-- /wp:heading -->

                    <!-- wp:paragraph -->
                    <p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:paragraph -->
                    <p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:heading -->
                    <h4>What rights you have over your data</h4>
                    <!-- /wp:heading -->

                    <!-- wp:paragraph -->
                    <p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>
                    <!-- /wp:paragraph -->

                    <!-- wp:heading -->
                    <h4>Where we send your data</h4>
                    <!-- /wp:heading -->

                    <!-- wp:paragraph -->
                    <p>Visitor comments may be checked through an automated spam detection service.</p>
                    <!-- /wp:paragraph -->
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
