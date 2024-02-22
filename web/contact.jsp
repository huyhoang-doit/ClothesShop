<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Contact</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets\img\favicon.png">

        <!-- all css here -->
        <%@include file="/common/web/add_css.jsp"%>
    </head>
    <body>
        <!-- Add your site or application content here -->

        <!--pos page start-->
        <div class="pos_page">
            <div class="container">
                <!--pos page inner-->
                <div class="pos_page_inner">  
                    <!--header area -->
                    <%@include file="/common/web/header.jsp"%>
                    <!--header end -->
                    <!--breadcrumbs area start-->
                    <div class="breadcrumbs_area">
                        <div class="row">
                            <div class="col-12">
                                <div class="breadcrumb_content">
                                    <ul>
                                        <li><a href="index.html">home</a></li>
                                        <li><i class="fa fa-angle-right"></i></li>
                                        <li>contact</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!--breadcrumbs area end-->

                    <!--contact area start-->
                    <div class="contact_area">
                        <div class="row">
                            <div class="col-lg-6 col-md-12">
                                <div class="contact_message">
                                    <h3>Tell us your project</h3>   
                                    <form id="contact-form" method="POST" action="assets/mail.php">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <input name="name" placeholder="Name *" type="text">    
                                            </div>
                                            <div class="col-lg-6">
                                                <input name="email" placeholder="Email *" type="email">    
                                            </div>
                                            <div class="col-lg-6">
                                                <input name="subject" placeholder="Subject *" type="text">   
                                            </div>
                                            <div class="col-lg-6">
                                                <input name="phone" placeholder="Phone *" type="text">   
                                            </div>

                                            <div class="col-12">
                                                <div class="contact_textarea">
                                                    <textarea placeholder="Message *" name="message" class="form-control2"></textarea>     
                                                </div>   
                                                <button type="submit"> Send Message </button>  
                                            </div> 
                                            <div class="col-12">
                                                <p class="form-messege">
                                            </div>
                                        </div>
                                    </form>    
                                </div> 
                            </div>

                            <div class="col-lg-6 col-md-12">
                                <div class="contact_message contact_info">
                                    <h3>contact us</h3>    
                                    <p>Chắc chắn! ClothesShop là điểm đến lý tưởng cho các quý ông đam mê thể thao và phong cách. Với một bộ sưu tập đa dạng từ quần áo, giày dép đến phụ kiện thể thao, chúng tôi cam kết mang đến cho quý khách hàng những sản phẩm chất lượng và thời trang nhất. Từ những bài tập nhẹ nhàng đến những buổi tập thể dục mạnh mẽ, ClothesShop luôn có những lựa chọn phù hợp để bạn tỏa sáng và thoải mái. Hãy khám phá ngay để trải nghiệm sự đẳng cấp và phong cách tại ClothesShop!</p>
                                    <ul>
                                        <li><i class="fa fa-fax"></i>  Address : Lô E2a-7, Đường D1, Khu Công nghệ cao, P.Long Thạnh Mỹ, Tp. Thủ Đức, TP.HCM.</li>
                                        <li><i class="fa fa-phone"></i> <a href="#">ThisTeamStrong@roadthemes.com</a></li>
                                        <li><i class="fa fa-envelope-o"></i> 0(1234) 567 890</li>
                                    </ul>        
                                    <h3><strong>Working hours</strong></h3>
                                    <p><strong>Monday – Saturday</strong>:  08AM – 22PM</p>       
                                </div> 
                            </div>
                        </div>
                    </div>

                    <!--contact area end-->

                    <!--contact map start-->
                    <div class="contact_map">
                        <div class="row">
                            <div class="col-12">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.6100105370224!2d106.8073080748058!3d10.84112758931163!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752731176b07b1%3A0xb752b24b379bae5e!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBGUFQgVFAuIEhDTQ!5e0!3m2!1svi!2s!4v1708621540719!5m2!1svi!2s" width="500" height="450" style="border:0" allowfullscreen=""></iframe>
                            </div>
                        </div>
                    </div>
                    <!--contact map end-->


                </div>
                <!--pos page inner end-->
            </div>
        </div>
        <!--pos page end-->

        <!--footer area start-->
        <%@include file="/common/web/footer.jsp"%>
        <!--footer area end-->






        <!-- all js here -->
        <%@include file="/common/web/add_js.jsp"%>
    </body>
</html>
