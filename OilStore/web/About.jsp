<%-- 
    Document   : About
    Created on : Feb 12, 2021, 7:02:45 PM
    Author     : Doan Trung Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="components/head.jsp"%>
    <body>
        <!-- Preloader Start -->
<!--        <div id="preloader-active">
            <div class="preloader d-flex align-items-center justify-content-center">
                <div class="preloader-inner position-relative">
                    <div class="preloader-circle"></div>
                    <div class="preloader-img pere-text">
                        <img src="assets/img/logo/logo.png" alt="">
                    </div>
                </div>
            </div>
        </div>-->
        <!-- Preloader End -->
        <%@include file="components/header.jsp"%>
        <!-- slider Area Start-->
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="single-slider slider-height2 d-flex align-items-center" data-background="assets/img/hero/anh1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>About</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->

        <!-- product list part start-->
        <section class="about_us padding_top">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="about_us_content">
                            <h5>Our Mission</h5>
                            <h3>Donec imperdiet congue orci consequat mattis. Donec rutrum porttitor sollicitudin. Pellentesque id dolor tempor sapien feugiat ultrices nec sed neque.</h3>
                            <div class="about_us_video">
                                
                                <a class="about_video_icon popup-youtube" href=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- product list part end-->

        <!-- feature part here -->
        <section class="feature_part section_padding">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-lg-6">
                        <div class="feature_part_tittle">
                            <h3>Credibly innovate granular
                                internal or organic sources
                                whereas standards.</h3>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="feature_part_content">
                            <p>Seamlessly empower fully researched growth strategies and interoperable internal or “organic” sources. Credibly innovate granular internal or “organic” sources whereas high standards in web-readiness.</p>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-3 col-sm-6">
                        <div class="single_feature_part">
                            <img src="assets/img/icon/feature_icon_1.svg" alt="#">
                            <h4>Credit Card Support</h4>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="single_feature_part">
                            <img src="assets/img/icon/feature_icon_2.svg" alt="#">
                            <h4>Online Order</h4>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="single_feature_part">
                            <img src="assets/img/icon/feature_icon_3.svg" alt="#">
                            <h4>Free Delivery</h4>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="single_feature_part">
                            <img src="assets/img/icon/feature_icon_4.svg" alt="#">
                            <h4>Product with Gift</h4>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- feature part end -->

        <!-- subscribe part here -->
        <section class="subscribe_part section_padding">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="subscribe_part_content">
                            <h2>Get promotions & updates!</h2>
                            <p>Seamlessly empower fully researched growth strategies and interoperable internal or “organic” sources credibly innovate granular internal .</p>
                            <div class="subscribe_form">
                                <input type="email" placeholder="Enter your mail">
                                <a href="#" class="btn_1">Subscribe</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- subscribe part end -->

        <%@include file="components/footer.jsp"%>
        <%@include file="components/script.jsp"%>
    </body>
</html>