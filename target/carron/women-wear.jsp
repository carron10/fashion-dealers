<%-- 
    Document   : women-wear
    Created on : Jul 29, 2021, 12:36:37 PM
    Author     : Muleya
--%>

<%@page contentType="text/html" pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="header.jsp"></jsp:include>

    <div class="container-fluid landlord-details" >  
        <div  id="contents" style=" margin: 0">

        </div>
        <div class="text-muted text-center bg-light " style="height: 40px;">
            <div style="top: 20%">  
                <div class="spinner-border spinner-border-sm mt-3" role="status">
                    <span class="sr-only">Loading...</span>
                </div>                            
            </div>
        </div>
    </div>


    <div class="col-sm-2 sidenav">

    </div>


</div>

<div id="layoutAuthentication_footer" >
        <footer class="py-4 bg-light">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; Your Fashion Delears 2021</div>
                    <div>
                        <a href="terms-and-conditions.jsp">Privacy Policy</a>
                        &middot;
                        <a href="terms-and-conditions.jsp">Terms &amp; Conditions</a>
                    </div>
                </div>
            </div>
        </footer>
    </div>
<script>
    function load_data(data) {
        const x = JSON.parse(data);

        var content = "";

        for (var i = 0; i < x.products.length; i++) {
            var size = x.products[i].size;
            var price = x.products[i].price;
            var years = x.products[i].years;
            var name = x.products[i].name;
            var time = x.products[i].time;
            var cateory = x.products[i].category;
            var picture = x.products[i].picture;
            var product_id = x.products[i].p_id;
            var description = x.products[i].description;
            var data = "";
            if ((i + 1) % 2 === 0) {

                data += "<div class=\"col-md\">\n" +
                        "                                <div class=\"media p-3\">\n" +
                        "                                    <img src=\"image/" + picture + "\" alt=\"" + name + "\" class=\" align-self-start mr-3 mt-3\" style=\"width:150px; height:150px;\">\n" +
                        "                                    <div class=\"media-body\">\n" +
                        "                                        <i>\n" +
                        "                                            <strong>" + name + "</strong>\n" +
                        "                                            <br><b>Available Sizes:</b>" + size + "\n" +
                        "                                            <br><b>Years:</b>" + years + "\n" +
                        "                                            <br><b>Price:</b>" + price + "\n" +
                        "                                            <br><b>Item-description:</b> " + description + "..\n" +
                        "                                            <br>\n" +
                        "                                            <a href=\"product.jsp?product=" + product_id + "\">View item</a>\n" +
                        "                                        </i>\n" +
                        "                                    </div>\n" +
                        "                                </div>\n" +
                        "                            </div>\n" +
                        "                        </div>";
            } else {
                data += "<div class=\"row\">\n" +
                        "                            <div class=\"col-md\">\n" +
                        "                                <div class=\"media p-3\">\n" +
                        "                                    <img src=\"image/" + picture + "\" alt=\"" + name + "\" class=\" align-self-start mr-3 mt-3\" style=\"width:150px; height:150px;\">\n" +
                        "                                    <div class=\"media-body\">\n" +
                        "                                        <i>\n" +
                        "                                            <strong>" + name + "</strong>\n" +
                        "                                            <br><b>Available Sizes:</b>" + size + "\n" +
                        "                                            <br><b>Years:</b>" + years + "\n" +
                        "                                            <br><b>Price:</b>" + price + "\n" +
                        "                                            <br><b>Item-description:</b> " + description + "..\n" +
                        "                                            <br>\n" +
                        "                                            <a href=\"product.jsp?product=" + product_id + "\">View item</a>\n" +
                        "                                        </i>\n" +
                        "                                    </div>\n" +
                        "                                </div>\n" +
                        "                            </div>\n";
            }
            content += data;
        }
        if (content !== "") {

            $("#contents").html(content);

        }
    }
    $(document).ready(function () {
        loader("start");
        var request = $.ajax({
            url: "/get_products",
            method: "POST",
            data: {category: "women", number: "20"},
            dataType: "html"
        });
        request.done(function (msg) {
            load_data(msg);
        });
        // Initialize Tooltip
        $('[data-toggle="tooltip"]').tooltip();
        // Add smooth scrolling to all links in navbar + footer link
        $("#button").on('click', function (event) {

            // Make sure this.hash has a value before overriding default behavior
            if (this.hash !== "") {

                // Prevent default anchor click behavior
                event.preventDefault();
                // Store hash
                var hash = this.hash;
                // Using jQuery's animate() method to add smooth page scroll
                // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                $('html, body').animate({
                    scrollTop: $(hash).offset().top
                }, 1000, function () {

                    // Add hash (#) to URL when done scrolling (default click behavior)
                    window.location.hash = hash;
                });
            } // End if
        });
    });

    var btn = $('#button');
    $(window).scroll(function () {
        hh();
    });
    function hh() {
        if ($(window).scrollTop() > 300) {
            btn.addClass('show');
        } else {
            btn.removeClass('show');
        }
    }
</script>
</body>
</html>
