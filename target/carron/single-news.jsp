<html>
    <head>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <!-- FontAwesome -->
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <style>
            .navigation {
                width: 100%;
                height: 90px;
                display: flex;
                align-items: center;
                border-top: 6px solid #d60e96;
            }

            .logo {
                max-height: 70px;
            }

            li {
                list-style: none;
            }

            .fa,
            .fas {
                font-family: 'FontAwesome';
            }

            ul li a {
                font-size: 1.1rem;
                color: #343a40;
            }

            ul li a.cart:hover {
                text-decoration: none;
                color: #d60e96;
            }

            ul li a.cart .cart-basket {
                font-size: .6rem;
                position: absolute;
                top: -6px;
                right: -5px;
                width: 15px;
                height: 15px;
                color: #fff;
                background-color: #418deb;
                border-radius: 50%;
            }
        </style>
    </head>
    <body>
        <div class="header navigation">
            <div class="col-xl-3 col-lg-2 col-sm-4 col-5">
                <a href="/">
                    <img alt="Logo" class="img-fluid py-3 logo" src="https://raw.githubusercontent.com/solodev/shopping-cart-items-number/master/images/lunar-xp-logo.png" aria-role="logo">
                </a>
            </div>
            <div class="col-xl-9 col-lg-10 col-sm-8 col-7">

                <ul class="navbar-nav flex-row justify-content-end flex-wrap align-items-center mr-lg-4 mr-xl-0">

                    <li class="nav-item px-3 text-uppercase mb-0 position-relative d-lg-flex">
                        <a class="d-block w-100 h-100 text-black py-4 position-relative top-link" href="/locations/"><strong>Locations</strong></a>

                    </li>
                    <li class="nav-item px-3 text-uppercase mb-0 position-relative d-lg-flex">
                        <a class="d-block w-100 h-100 text-black py-4 position-relative top-link" href="/products/"><strong>Products</strong></a>

                    </li>
                    <li class="nav-item px-3 text-uppercase mb-0 position-relative d-lg-flex">
                        <a class="d-block w-100 h-100 text-black py-4 position-relative top-link" href="/shop/"><strong>Shop</strong></a>
                    </li>
                    <li class="nav-item px-3 text-uppercase mb-0 position-relative d-lg-flex">
                        <a class="d-block w-100 h-100 text-black py-4 position-relative top-link" href="/contact/"><strong>Contact</strong></a>
                    </li>
                    <li class="nav-item px-3 text-uppercase mb-0 position-relative d-lg-flex">
                        <div id="cart" class="d-none">

                        </div>
                        <a href="/store/cart.stml" class="cart position-relative d-inline-flex" aria-label="View your shopping cart">
                            <i class="fas fa fa-shopping-cart fa-lg"></i>
                            <span class="cart-basket d-flex align-items-center justify-content-center">
                                0
                            </span>
                        </a>
                    </li>
                    <button id="sidenav-open-btn" class="menu-hamburger position-absolute pointer p-0">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </ul>
            </div>
        </div>
    </body>

</html>