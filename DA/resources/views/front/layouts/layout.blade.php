<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    @yield('head')
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>Đồ gia dụng</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="/front/assets/images/LT.PNG" type="image/x-icon">
    <link rel="apple-touch-icon" href="/front/assets/images/longto.PNG">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/front/assets/css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="/front/assets/css/style.css">
    <!-- Responsive CSS -->

    <!-- Custom CSS -->
    <link rel="stylesheet" href="/front/assets/css/custom.css">
    @yield('style')
</head>

<body>
    <!-- Start Main Top -->
    <div class="main-top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

                    <div class="right-phone-box">
                        <p>Liên hệ :- <a href="#"> +11 900 800 100</a></p>
                    </div>
                    <div class="our-link">
                        <ul>
                            <li><a href="#"><i class="fa fa-user s_color"></i>Tài khoản</a></li>
                            <!-- <li><a href="#"><i class="fas fa-location-arrow"></i> Our location</a></li>
                            <li><a href="#"><i class="fas fa-headset"></i> Contact Us</a></li> -->
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="login-box">
                        <select id="basic" class="selectpicker show-tick form-control" data-placeholder="Sign In">
                            <option>Đăng ký</option>
                            <option>Đăng nhập</option>
                        </select>
                    </div>
                    <div class="text-slid-box">
                        <div id="offer-box" class="carouselTicker">
                            <ul class="offer-box">
                                <li>
                                    <i class="fab fa-opencart"></i> Giảm giá ưu đãi lên đến 80%
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> Bốc thăm trúng thưởng mừng sinh nhật Long Tơ
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> Thanh lí các loại mặt hàng giảm giá sốc
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> Hàng ngàn sản phẩm mới về
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> Chào mừng bạn đến với Long Tơ
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> Sự chuyên nghiệp và uy tín là tôn chỉ của chúng tôi
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> Khách hàng mới là người quyết định tương lai, phát
                                    triển của Long Tơ
                                </li>
                                <li>
                                    <i class="fab fa-opencart"></i> Luôn hướng tới khách hàng, lắng nghe ý kiến, nhu cầu
                                    của khách hàng
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @yield('main_top')

    <!-- End Main Top -->

    <!-- Start Main Top -->
    <header class="main-header">
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu"
                        aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="{{route('index')}}"><img src="/front/assets/images/LONGTO.png"
                            class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->

                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item active"><a class="nav-link" href="{{route('index')}}">Trang chủ</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{route('index.getAbout')}}">Giới thiệu</a></li>
                        <li class="dropdown">
                            <a href="#" class="nav-link" data-toggle="dropdown">Sản phẩm</a>
                            <ul class="dropdown-menu">
                                <li><a href="{{route('index.getProduct')}}">Tất cả sản phẩm</a></li>
                                <li><a href="{{route('index.getGallery')}}">Thư viện sản phẩm</a></li>
                                <li><a href="{{route('cart.index')}}">Giỏ hàng</a></li>
                                <li><a href="{{route('index.getCheckOut')}}">Thanh toán</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="{{route('index.getAccount')}}">Tài khoản</a></li>
                        <li class="nav-item"><a class="nav-link" href="{{route('index.getContact')}}">Liên hệ</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->

                <!-- Start Atribute Navigation -->
                <div class="attr-nav">
                    <ul>
                        <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                        <li class="side-menu">
                            <a href="{{route('cart.index')}}">
                                <i class="fa fa-shopping-bag"></i>
                                <span class="badge">3</span>
                                <p>Giỏ hàng</p>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- End Atribute Navigation -->
            </div>
            <!-- Start Side Menu -->
            <div class="side">
                <a href="#" class="close-side"><i class="fa fa-times"></i></a>
                <li class="cart-box">
                    <ul class="cart-list">
                        <li>
                            <a href="#" class="photo"><img src="/front/assets/images/img-pro-01.jpg" class="cart-thumb"
                                    alt="" /></a>
                            <h6><a href="#">Delica omtantur </a></h6>
                            <p>1x - <span class="price">$80.00</span></p>
                        </li>
                        <li>
                            <a href="#" class="photo"><img src="/front/assets/images/img-pro-02.jpg" class="cart-thumb"
                                    alt="" /></a>
                            <h6><a href="#">Omnes ocurreret</a></h6>
                            <p>1x - <span class="price">$60.00</span></p>
                        </li>
                        <li>
                            <a href="#" class="photo"><img src="/front/assets/images/img-pro-03.jpg" class="cart-thumb"
                                    alt="" /></a>
                            <h6><a href="#">Agam facilisis</a></h6>
                            <p>1x - <span class="price">$40.00</span></p>
                        </li>
                        <li class="total">
                            <a href="#" class="btn btn-default hvr-hover btn-cart">VIEW CART</a>
                            <span class="float-right"><strong>Total</strong>: $180.00</span>
                        </li>
                    </ul>
                </li>
            </div>
            <!-- End Side Menu -->
        </nav>
        <!-- End Navigation -->
    </header>
    <!-- End Main Top -->

    <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->

    <!-- Begin: Content -->
    <div id="content">
        @yield('mapping-layout')
        @yield('content')
    </div>
    <!-- End: Content -->

    <!-- Start Instagram Feed  -->
    <div class="instagram-box">
        <div class="main-instagram owl-carousel owl-theme">
            <div class="item">
                <div class="ins-inner-box">
                    <img src="/front/assets/images/instagram-img-01.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="/front/assets/images/instagram-img-02.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="/front/assets/images/instagram-img-03.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="/front/assets/images/instagram-img-04.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="/front/assets/images/instagram-img-05.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="/front/assets/images/instagram-img-06.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="/front/assets/images/instagram-img-07.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="/front/assets/images/instagram-img-08.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="/front/assets/images/instagram-img-09.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="/front/assets/images/instagram-img-05.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Instagram Feed  -->

    <!-- Start Footer  -->
    <footer>
        <div class="footer-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-top-box">
                            <h3>Thời gian làm việc</h3>
                            <ul class="list-time">
                                <li>Tất cả các ngày trong tuần</li>
                                <li>Mở cửa: 8.00am - 22.00pm</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-top-box">
                            <h3>Newsletter</h3>
                            <form class="newsletter-box">
                                <div class="form-group">
                                    <input class="" type="email" name="Email" placeholder="Email Address*" />
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <button class="btn hvr-hover" type="submit">Submit</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-top-box">
                            <h3>Xã hội</h3>
                            <p>Hãy theo dõi chúng tôi</p>
                            <ul>
                                <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-widget">
                            <h4>Thông tin về chúng tôi</h4>

                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link">
                            <h4>Thông tin</h4>
                            <ul>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Customer Service</a></li>
                                <li><a href="#">Our Sitemap</a></li>
                                <li><a href="#">Terms &amp; Conditions</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Delivery Information</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link-contact">
                            <h4>Liên hệ</h4>
                            <ul>
                                <li>
                                    <p><i class="fas fa-map-marker-alt"></i>Address: Michael I. Days 3756 <br>Preston
                                        Street Wichita,<br> KS 67213 </p>
                                </li>
                                <li>
                                    <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+1-888705770">+1-888 705
                                            770</a></p>
                                </li>
                                <li>
                                    <p><i class="fas fa-envelope"></i>Email: <a
                                            href="mailto:contactinfo@gmail.com">contactinfo@gmail.com</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer  -->

    <!-- Start copyright  -->

    <!-- End copyright  -->

    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

    <!-- ALL JS FILES -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="/front/assets/js/popper.min.js"></script>
    <script src="/front/assets/js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="/front/assets/js/jquery.superslides.min.js"></script>
    <script src="/front/assets/js/bootstrap-select.js"></script>
    <script src="/front/assets/js/inewsticker.js"></script>
    <script src="/front/assets/js/bootsnav.js."></script>
    <script src="/front/assets/js/images-loded.min.js"></script>
    <script src="/front/assets/js/isotope.min.js"></script>
    <script src="/front/assets/js/owl.carousel.min.js"></script>
    <script src="/front/assets/js/baguetteBox.min.js"></script>
    <script src="/front/assets/js/form-validator.min.js"></script>
    <script src="/front/assets/js/contact-form-script.js"></script>
    <script src="/front/assets/js/custom.js"></script>

    <!-- JavaScript -->
    <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

    <!-- CSS -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
    <!-- Default theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css" />

    <script>
    function addCart(id) {
        console.log(id)
        $.ajax({
            url: '/cart/add-cart/' + id,
            type: 'GET',
        }).done(function(response) {
            RenderLishCart(response);
            alertify.success('Thêm thành công vào giỏ hàng');
        })
    }

    function DeleteItemCart(id) {
        console.log(id)
        $.ajax({
            url: '/cart/delete-cart/' + id,
            type: 'GET',
        }).done(function(response) {
            RenderLishCart(response);
            alertify.success('Đã xóa sản phẩm thành công');
        })
    }
    
    function UpdateItemCart(id) {
        console.log($("#select-" + id).val())
        $.ajax({
            url: '/cart/update-cart/' + id + '/' + $("#select-" + id).val(),
            type: 'GET',
        }).done(function(response) {
            RenderLishCart(response);
            alertify.success('Đã cập nhật sản phẩm thành công');
        })
    }

    function RenderLishCart(response) {
        $("#list-cart").empty();
        $("#list-cart").html(response);
    }
    </script>
    @yield('script')
</body>

</html>