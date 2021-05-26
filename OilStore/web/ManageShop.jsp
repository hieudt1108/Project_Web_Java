<%-- 
    Document   : ManageShop
    Created on : Feb 13, 2021, 5:09:45 PM
    Author     : Doan Trung Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="components/head.jsp"%>
    <body>
        <%@include file="components/header.jsp"%>

        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="single-slider slider-height2 d-flex align-items-center" data-background="https://www.vaporesso.com/hs-fs/hubfs/Blogs/blog_2019/vape-shop-2.png?width=1720&name=vape-shop-2.png">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Shop Management</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="cart_area section_padding">
            <div class="container">
                <div class="cart_inner">
                    <div class="form-box">
                        <form action="searchproduct" method="GET" >
                            <input type="text" name="resultmanage" placeholder="Search products" required="">
                            <div class="search-icon">
                                <button type="submit" value="submit" class="btn-cartsearch"><i class="fas fa-search special-tag"></i></button>                                                
                            </div>
                        </form>
                    </div>
                    <br>
                    <div class="col-lg-4 col-md-4 f-left"><a class="btn_1" href="addproduct" style="margin-left: -13px; padding: 12px 50px;">Add New Product</a></div>
                    <div class="col-lg-1 col-md-1 f-right" style="padding-bottom: 25px; margin-right: 19px;">                        
                        <ul class="pagination"></ul>
                    </div>
                    <br>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Product</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Stock</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <c:forEach var="p" items="${products}">
                                <tr>
                                    <td>
                                        <div class="media">
                                            <div class="d-flex"> 
                                                <img src="${p.image}" alt="" />
                                            </div>
                                            <div class="media-body">
                                                <a href="productdetail?id=${p.id}" style="color: #506172;">${p.name}</a>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <p><fmt:formatNumber value = "${p.price}" type = "currency"/></p>
                                    </td>                                    
                                    <td>
                                        <h5>${p.stock}</h5>
                                    </td>
                                    <td>
                                        <a href="editproduct?id=${p.id}" style="cursor: pointer; border: none; background: none;"><img src="assets/img/icon/edit.svg" alt="" style="max-width: 40px;"/></a>                                    
                                        <a href="deleteproduct?id=${p.id}" style="cursor: pointer; border: none; background: none;"><img src="assets/img/icon/delete.png" alt=""/></a>
                                    </td>                                       
                                </tr> 
                            </c:forEach>


                        </table>
                    </div>
                    <div class="f-right">
                        <ul class="pagination"></ul>
                    </div>
                </div>
            </div>>
        </section>

        <%@include file="components/footer.jsp"%>
        <%@include file="components/script.jsp"%>
        <script src="assets/js/pagger.js"></script>


    </body>
</html>
