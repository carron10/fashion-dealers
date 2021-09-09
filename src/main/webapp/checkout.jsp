<%-- 
    Document   : checkout
    Created on : Sep 9, 2021, 6:35:05 AM
    Author     : Muleya
--%>

<%@page contentType="text/html" pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="google-site-verification" content="U_AA9uVhETv3td8BslU7SMA-XOXdqo9zdrnkWnV72yY">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="scripts/cart.js"></script>
        <style>
            .navbar a{
                color: #000;
            }

            /*comment section styles*/
            .media .fa-user-circle{
                color: #00cccc;
            }

            /*Footer styles*/
            .site-footer a{
                color:  #000;
            }



            /* Link styles */

            a.r_more{
                border: 1px solid #d6d6d6;
                display: inline-block;
                margin-top: 5px;
                padding: 5px 10px;
            }

            .reply, a:hover{
                text-decoration: none;
                color: #00ff00;
            }

            a{
                color: #000;
            }
            .media-body a{
                color:#00ff00;
            }
            /*Other styles */
            .raised{
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }
            .line{
                height:4px; width:100px; border-width:0; color:red; background-color:red;
            }

            .l-2{
                height:2px; width:100px; border-width:0; color:red; background-color:red;
            }


            #loader {
                width: 100px;
                height: 100px;
                z-index: 999;


                position: fixed;
                opacity: 0.6;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                margin: auto;
            }

            @-webkit-keyframes spin {
                0% { -webkit-transform: rotate(0deg); }
                100% { -webkit-transform: rotate(360deg); }
            }

            @keyframes spin {
                0% { transform: rotate(0deg); }
                100% { transform: rotate(360deg); }
            }
            #button.show {
                opacity: 1;
                visibility: visible;
            }

            .min, .max{
                width: 30%;
                display: inline-block;
            }
            .too{
                display: inline-block;
                margin-left: 3%;
            }

            .f-{
                text-decoration: underline red;
            }

            /* Set gray background color and 100% height */
            .sidenav {
                padding-top: 20px;
                height: 100%;
            }
            .content{
                background-color: #ffffff;
            }
            .landlord-details .media{
                border-bottom: 1px solid #d6d6d6;
            }
            .items{
                height: 50px;
            }
            /* On small screens, set height to 'auto' for sidenav and grid */
            @media screen and (max-width: 767px) {
                .sidenav {
                    height: auto;
                    padding: 0;
                }
                .items{
                    height: 50px;
                }
            }
            .media-body i{
                font-size: small;
            }
            #button {
                display: inline-block;
                width: 50px;
                height: 50px;
                text-align: center;
                border-radius: 4px;
                position: fixed;
                bottom: 30px;
                right: 30px;
                transition: background-color .3s, 
                    opacity .5s, visibility .5s;
                visibility: hidden;
                z-index: 1000;
            }



            #button:hover {
                cursor: pointer;
                color: #cccc00;
            }

            .items{
                visibility: hidden;
            }
            .cart-basket {
                font-size: .6rem;
                position: absolute;

                width: 15px;
                height: 15px;
                color:  #ff0000;

                border-radius: 50% ;
            }
            .navbar-header .fa-shopping-cart{
                border: 1px red solid;
                padding-right: 30px;
                padding-left: 30px;

            }
        </style>


    </head>

    <body>
        <a id="button" href="#"><i class="fa fa-chevron-up"></i></a>


        <!--Start of Navigation bar -->
        <!--Start of Navigation bar -->
        <nav class="navbar navbar-expand-md navbar-light sticky-top" style=" background-color: #cccccc">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-header" style=" padding-top: 5px">
                <a class="nav-link fa fa-shopping-cart fa-lg" href="cart.jsp"><span class="cart-basket text-center" id="my_cart"></span></a>
            </div>

            <div class="collapse navbar-collapse float-right" id="collapsibleNavbar">
                <ul class="nav navbar-nav ml-auto">

                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">HOME</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle nav-link" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            CATEGORY
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item nav-link" href="products.jsp">All</a>
                            <a class="dropdown-item nav-link" href="women-wear.jsp">Women Wear</a>
                            <a class="dropdown-item nav-link" href="men-wear.jsp">Men Wear</a>
                            <a class="dropdown-item nav-link" href="kids-wear.jsp">Children Wear</a>
                        </div>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link " href="services.jsp">SERVICES</a>
                    </li>

                    <li class="nav-item ">
                        <a class="nav-link" href="contact.jsp">CONTACT</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="dropdown-toggle nav-link" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            MORE
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class=" dropdown-item nav-link" href="about.jsp">About</a>
                            <a class="dropdown-item nav-link" href="terms-and-conditions.jsp">Terms and Conditions</a>
                        </div>
                    </li>

                </ul>

            </div>

        </nav>

        <div class="col-auto mt-3 ml-3">
            <h4 class="fa fa-shopping-cart">PAYMENT ADRESS</h4>
            <hr>
        </div>
        <div class="row mb-3 ml-1">
            <div class=" col-md-7 shadow-lg p-3">
                <form name="adresses">
                    <div class="col-auto">
                        <div class="row">
                            <div class="col">
                                <label class="sr-only" for="inlineFormInputGroup">FIRST NAME</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa fa-user"></i></div>
                                    </div>
                                    <input type="text" class="form-control" name="fname" id="inlineFormInputGroup" placeholder="FIRST NAME">
                                </div>
                            </div>
                            <div class="col">
                                <label class="sr-only" for="inlineFormInputGroup">LAST NAME</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa fa-user"></i></div>
                                    </div>
                                    <input type="text" class="form-control"  name="uname" id="inlineFormInputGroup" placeholder="LAST NAME">
                                </div>
                            </div>
                        </div>


                        <label class="sr-only" for="inlineFormInputGroup">Address 1</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><i class="fa fa-address-card"></i></div>
                            </div>
                            <input type="text" class="form-control" name="address1" id="inlineFormInputGroup" placeholder="Address 1">
                        </div>

                        <label class="sr-only" for="inlineFormInputGroup">Address 2</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><i class="fa fa-address-card"></i></div>
                            </div>
                            <input type="text" class="form-control" name="address2" id="inlineFormInputGroup" placeholder="Address 2">

                        </div>


                        <div class="row">
                            <div class="col">
                                <label class="sr-only" for="inlineFormInputGroup">City</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa fa-institution"></i></div>
                                    </div>
                                    <input type="text" name="city" class="form-control" id="inlineFormInputGroup" placeholder="City">
                                </div>
                            </div>
                            <div class="col">
                                <label class="sr-only" for="inlineFormInputGroup">Username</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa fa-bars"></i></div>
                                    </div>
                                    <input type="text" name="postal-asdress" class="form-control" id="inlineFormInputGroup" placeholder="Postal Address">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label class="sr-only" for="inlineFormInputGroup">Zone</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa fa-bars"></i></div>
                                    </div>
                                    <select class="form-control input-lg" id="zone_id" name="zone"><option value="FALSE"> --- Please Select Province --- </option><option value="3832">Bulawayo</option><option value="3833">Harare</option><option value="3834">Manicaland</option><option value="3835">Mashonaland Central</option><option value="3836">Mashonaland East</option><option value="3837">Mashonaland West</option><option value="3838">Masvingo</option><option value="3839">Matabeleland North</option><option value="3840">Matabeleland South</option><option value="3841">Midlands</option></select>
                                </div>
                            </div>
                            <div class="col">
                                <label class="sr-only" for="inlineFormInputGroup">Country</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa fa-map"></i></div>
                                    </div>
                                    <select class="form-control input-lg" id="country_id" name="country">
                                        <option value="false"> --- Please Select --- </option><option value="1">Afghanistan</option><option value="2">Albania</option><option value="3">Algeria</option><option value="4">American Samoa</option><option value="5">Andorra</option><option value="6">Angola</option><option value="7">Anguilla</option><option value="8">Antarctica</option><option value="9">Antigua and Barbuda</option><option value="10">Argentina</option><option value="11">Armenia</option><option value="12">Aruba</option><option value="13">Australia</option><option value="14">Austria</option><option value="15">Azerbaijan</option><option value="16">Bahamas</option><option value="17">Bahrain</option><option value="18">Bangladesh</option><option value="19">Barbados</option><option value="20">Belarus</option><option value="21">Belgium</option><option value="22">Belize</option><option value="23">Benin</option><option value="24">Bermuda</option><option value="25">Bhutan</option><option value="26">Bolivia</option><option value="27">Bosnia and Herzegowina</option><option value="28">Botswana</option><option value="29">Bouvet Island</option><option value="30">Brazil</option><option value="31">British Indian Ocean Territory</option><option value="32">Brunei Darussalam</option><option value="33">Bulgaria</option><option value="34">Burkina Faso</option><option value="35">Burundi</option><option value="36">Cambodia</option><option value="37">Cameroon</option><option value="38">Canada</option><option value="39">Cape Verde</option><option value="40">Cayman Islands</option><option value="41">Central African Republic</option><option value="42">Chad</option><option value="43">Chile</option><option value="44">China</option><option value="45">Christmas Island</option><option value="46">Cocos (Keeling) Islands</option><option value="47">Colombia</option><option value="48">Comoros</option><option value="49">Congo</option><option value="50">Cook Islands</option><option value="51">Costa Rica</option><option value="52">Cote D'Ivoire</option><option value="53">Croatia</option><option value="54">Cuba</option><option value="55">Cyprus</option><option value="56">Czech Republic</option><option value="57">Denmark</option><option value="58">Djibouti</option><option value="59">Dominica</option><option value="60">Dominican Republic</option><option value="61">East Timor</option><option value="62">Ecuador</option><option value="63">Egypt</option><option value="64">El Salvador</option><option value="65">Equatorial Guinea</option><option value="66">Eritrea</option><option value="67">Estonia</option><option value="68">Ethiopia</option><option value="69">Falkland Islands (Malvinas)</option><option value="70">Faroe Islands</option><option value="71">Fiji</option><option value="72">Finland</option><option value="73">France</option><option value="74">France, Metropolitan</option><option value="75">French Guiana</option><option value="76">French Polynesia</option><option value="77">French Southern Territories</option><option value="78">Gabon</option><option value="79">Gambia</option><option value="80">Georgia</option><option value="81">Germany</option><option value="82">Ghana</option><option value="83">Gibraltar</option><option value="84">Greece</option><option value="85">Greenland</option><option value="86">Grenada</option><option value="87">Guadeloupe</option><option value="88">Guam</option><option value="89">Guatemala</option><option value="90">Guinea</option><option value="91">Guinea-bissau</option><option value="92">Guyana</option><option value="93">Haiti</option><option value="94">Heard and Mc Donald Islands</option><option value="95">Honduras</option><option value="96">Hong Kong</option><option value="97">Hungary</option><option value="98">Iceland</option><option value="99">India</option><option value="100">Indonesia</option><option value="101">Iran (Islamic Republic of)</option><option value="102">Iraq</option><option value="103">Ireland</option><option value="104">Israel</option><option value="105">Italy</option><option value="106">Jamaica</option><option value="107">Japan</option><option value="108">Jordan</option><option value="109">Kazakhstan</option><option value="110">Kenya</option><option value="111">Kiribati</option><option value="113">Korea, Republic of</option><option value="114">Kuwait</option><option value="115">Kyrgyzstan</option><option value="116">Lao People's Democratic Republic</option><option value="117">Latvia</option><option value="118">Lebanon</option><option value="119">Lesotho</option><option value="120">Liberia</option><option value="121">Libyan Arab Jamahiriya</option><option value="122">Liechtenstein</option><option value="123">Lithuania</option><option value="124">Luxembourg</option><option value="125">Macau</option><option value="126">Macedonia</option><option value="127">Madagascar</option><option value="128">Malawi</option><option value="129">Malaysia</option><option value="130">Maldives</option><option value="131">Mali</option><option value="132">Malta</option><option value="133">Marshall Islands</option><option value="134">Martinique</option><option value="135">Mauritania</option><option value="136">Mauritius</option><option value="137">Mayotte</option><option value="138">Mexico</option><option value="139">Micronesia, Federated States of</option><option value="140">Moldova, Republic of</option><option value="141">Monaco</option><option value="142">Mongolia</option><option value="143">Montserrat</option><option value="144">Morocco</option><option value="145">Mozambique</option><option value="146">Myanmar</option><option value="147">Namibia</option><option value="148">Nauru</option><option value="149">Nepal</option><option value="150">Netherlands</option><option value="151">Netherlands Antilles</option><option value="152">New Caledonia</option><option value="153">New Zealand</option><option value="154">Nicaragua</option><option value="155">Niger</option><option value="156">Nigeria</option><option value="157">Niue</option><option value="158">Norfolk Island</option><option value="112">North Korea</option><option value="240">Northern Ireland</option><option value="159">Northern Mariana Islands</option><option value="160">Norway</option><option value="161">Oman</option><option value="162">Pakistan</option><option value="163">Palau</option><option value="164">Panama</option><option value="165">Papua New Guinea</option><option value="166">Paraguay</option><option value="167">Peru</option><option value="168">Philippines</option><option value="169">Pitcairn</option><option value="170">Poland</option><option value="171">Portugal</option><option value="172">Puerto Rico</option><option value="173">Qatar</option><option value="174">Reunion</option><option value="175">Romania</option><option value="176">Russia</option><option value="177">Rwanda</option><option value="178">Saint Kitts and Nevis</option><option value="179">Saint Lucia</option><option value="180">Saint Vincent and the Grenadines</option><option value="181">Samoa</option><option value="182">San Marino</option><option value="183">Sao Tome and Principe</option><option value="184">Saudi Arabia</option><option value="185">Senegal</option><option value="186">Seychelles</option><option value="187">Sierra Leone</option><option value="188">Singapore</option><option value="189">Slovak Republic</option><option value="190">Slovenia</option><option value="191">Solomon Islands</option><option value="192">Somalia</option><option value="193">South Africa</option><option value="194">South Georgia &amp; South Sandwich Islands</option><option value="195">Spain</option><option value="196">Sri Lanka</option><option value="197">St. Helena</option><option value="198">St. Pierre and Miquelon</option><option value="199">Sudan</option><option value="200">Suriname</option><option value="201">Svalbard and Jan Mayen Islands</option><option value="202">Swaziland</option><option value="203">Sweden</option><option value="204">Switzerland</option><option value="205">Syrian Arab Republic</option><option value="206">Taiwan</option><option value="207">Tajikistan</option><option value="208">Tanzania, United Republic of</option><option value="209">Thailand</option><option value="210">Togo</option><option value="211">Tokelau</option><option value="212">Tonga</option><option value="213">Trinidad and Tobago</option><option value="214">Tunisia</option><option value="215">Turkey</option><option value="216">Turkmenistan</option><option value="217">Turks and Caicos Islands</option><option value="218">Tuvalu</option><option value="219">Uganda</option><option value="220">Ukraine</option><option value="221">United Arab Emirates</option><option value="222">United Kingdom</option><option value="223">United States</option><option value="224">United States Minor Outlying Islands</option><option value="225">Uruguay</option><option value="226">Uzbekistan</option><option value="227">Vanuatu</option><option value="228">Vatican City State (Holy See)</option><option value="229">Venezuela</option><option value="230">Viet Nam</option><option value="231">Virgin Islands (British)</option><option value="232">Virgin Islands (U.S.)</option><option value="233">Wallis and Futuna Islands</option><option value="234">Western Sahara</option><option value="235">Yemen</option><option value="236">Yugoslavia</option><option value="237">Zaire</option><option value="238">Zambia</option><option value="239" selected="">Zimbabwe</option></select>
                                </div>
                            </div>
                        </div>

                        <label class="sr-only" for="inlineFormInputGroup">Email</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><i class="fa fa-envelope"></i></div>
                            </div>
                            <input type="email" name="email" class="form-control" id="inlineFormInputGroup" placeholder="Your Email">
                        </div>


                        <label class="sr-only" for="inlineFormInputGroup">Phone</label>
                        <div class="input-group mb-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><i class="fa fa-phone"></i></div>
                            </div>
                            <input type="tel" name="phone" class="form-control" id="inlineFormInputGroup" placeholder="Your Phone">
                        </div>
                       
                        <button type="submit" class="btn btn-primary btn-block text-center" name="send">SUBMIT</button>
                    </div>

                </form>
            </div>
            <div class=" col-md-5">
                <div class="card rounded-0 shadow-lg">
                    <div class="card-header">
                        <div class="d-flex justify-content-between">
                        <div>ORDER SUMMARY</div>
                        <div>$23</div>
                        </div>
                    </div>
                    <div class="card-body d-flex justify-content-between">
                        
                        <div class="media">
                            <img src="image/women/images%20(35).jpeg" style="width:80px; height:80px;">
                            <div class="media-body pl-2">Women Shirt<br>Size: Medium</div>
                        </div>
                        
                        <div>$20</div>
                    </div>
                    <div class="card-footer">
                        <div class="d-flex justify-content-between">
                            <div>SUB TOTAL:</div>
                            <div>$20</div>
                        </div>
                        <hr>
                        <div class="d-flex justify-content-between">
                            <div>TOTAL:</div>
                            <div>$23</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <!--  start of the footer -->

        <jsp:include page="footer.jsp"></jsp:include>

        <!-- Footer Area End -->
        <script>
            $(document).ready(function () {
                // Listen to submit event on the <form> itself!
                $(document.adresses).submit(function (e) {
                    e.preventDefault();
                    var btn = $(document.adresses.send);
                    btn.attr("disabled", true);
                    btn.html(" <span class=\"spinner-grow spinner-grow-sm\" id=\"loader\" role=\"status\" aria-hidden=\"true\"></span>Submitting....");

                    var send = $.ajax({
                        url: "php/contact.php",
                        data: {name: "test"},
                        method: "post"
                    }).done(function () {
                        alert("success");
                        btn.attr("disabled", false);
                        btn.html("Send");
                    }).fail(function () {
                        window.alert("There is an error while sending data please try again");
                        btn.attr("disabled", false);
                        btn.html("Send");
                    });
                });

            });
        </script>
    </body>
</html>
