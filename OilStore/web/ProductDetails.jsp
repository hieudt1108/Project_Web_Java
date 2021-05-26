
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="components/head.jsp"%>
    <body>
        <%@include file="components/header.jsp"%>
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="single-slider slider-height2 d-flex align-items-center" data-background="assets/img/hero/anh1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2 style="color: beige; font-family: 'Poppins';">Products</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="product_list section_padding" style="padding: 100px">
            <div class="container">
                <div class="row">

                    <img src="${product.image}" class="w-50" />
                    <div class="col-lg-6" style="padding-top: 65px;">
                        <div class="single_product_text">
                            <h1>${product.name}</h1>
                            <p><fmt:formatNumber value = "${product.price}" type = "currency"/></p>
                            <p>${product.shortdesc}</p>
                            <p>Stock: ${product.stock}</p>
                            <div class="card_area"ss>
                                <div class="product_count_area">
                                    <form action="productdetail?id=${product.id}" method="POST">
                                        Quantity:
                                        <div class="product_count d-inline-block">
                                            <span class="product_count_item inumber-decrement"> <i class="ti-minus"></i></span>
                                            <input class="product_count_item input-number" name="quantity" type="text" value="1" min="1" max="100">
                                            <span class="product_count_item number-increment"> <i class="ti-plus"></i></span>
                                        </div>
                                        <c:choose>
                                            <c:when test="${product.stock=='Out Of Stock'}">
                                                <div class="add_to_cart">
                                                    <a href="contact" class="btn_disable" disabled="" style="cursor: pointer;">Contact Us</a>
                                                </div>
                                            </c:when>
                                            <c:when test="${product.stock=='Contact for Information'}">
                                                <div class="add_to_cart">
                                                    <a href="contact" class="btn_disable" disabled="" style="cursor: pointer;">Contact Us</a>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="add_to_cart">
                                                    <button type="submit" value="submit" class="btn_3">add to cart</button>
                                                </div>
                                            </c:otherwise>

                                        </c:choose>




                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-12" style="padding-top: 30px;">
                        <h2 class="single_product_text">Specifications</h2><br>                  
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget quam in libero consequat vehicula quis et diam. 
                            Nullam mollis diam ut massa porta, vitae rutrum nibh lacinia. Mauris ornare aliquam urna. Sed posuere dui ac ante finibus laoreet. Fusce ut elit euismod, luctus 
                            dolor eu, porta neque. Mauris id velit in sem mollis sodales luctus sollicitudin velit. Maecenas pellentesque tempus nunc, ac eleifend nulla. Mauris hendrerit velit 
                            sed leo congue, ut porttitor felis feugiat. Mauris odio eros, dapibus nec molestie a, bibendum pellentesque neque. Curabitur lobortis lacinia ipsum, ut euismod arcu 
                            mollis mollis. Integer at venenatis nisi.</p>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="components/footer.jsp"%>
        <%@include file="components/script.jsp"%>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
        <script src="assets/js/jquery.flexslider-min.js"></script>
        <script>
            // Can also be used with $(document).ready()
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide",
                    controlNav: "thumbnails"
                });
            });
        </script>
    </body>
</html>
