<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Contact</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Lora:wght@600;700&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
	    <div id="header_div">
	    	<jsp:include page="header.jsp" flush="true"/>
	    </div>
    </header>
    <!-- ##### Header Area End ##### -->


    
   <!-- Page Header Start -->
    <div class="container-fluid page-header mb-5 wow fadeIn" data-wow-delay="0.1s" style="background:url(../img/contact.jpg) center no-repeat;background-position:80% 60%;">
        <div class="container">
            <h1 class="display-3 mb-3 animated slideInDown">문의하기</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb mb-0">
                    <!--<li class="breadcrumb-item"><a class="text-bodyX" style="color:white" href="#">About Banwol Big Church</a></li>  -->
                    <!-- <li class="breadcrumb-item"><a class="text-body" href="#">Pages</a></li>  -->
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
    

    <!-- Contact Start -->
    <div class="container-xxl py-6">
        <div class="container">
            <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h1 class="display-5 mb-3">문의하기</h1>
                <p>문의 글 남겨주시면 답변드리겠습니다.</p>
            </div>
            <div class="row g-5 justify-content-center">
            
            	<!-- directions 으로 이동
                <div class="col-lg-5 col-md-12 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="bg-primary text-white d-flex flex-column justify-content-center h-100 p-5">
                        <h5 class="text-white">연락처</h5>
                        <p class="mb-5"><i class="fa fa-phone-alt me-3"></i>02-345-6789</p>
                        <h5 class="text-white">Email</h5>
                        <p class="mb-5"><i class="fa fa-envelope me-3"></i>banwol@mail.com</p>
                        <h5 class="text-white">주소</h5>
                        <p class="mb-5"><i class="fa fa-map-marker-alt me-3"></i>경기도 안산시 상록구 건건5길 6 서해아파트상가 4층 401호</p>
                        <h5 class="text-white">교회소식</h5>
                        <div class="d-flex pt-2">
                            <a class="btn btn-square btn-outline-light rounded-circle me-1" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square btn-outline-light rounded-circle me-1" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square btn-outline-light rounded-circle me-1" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-square btn-outline-light rounded-circle me-0" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
                -->
                 
                 
                <!-- <div class="col-lg-7 col-md-12 wow fadeInUp" data-wow-delay="0.5s"> -->
                <div class="wow fadeInUp" data-wow-delay="0.5s">
                    <form action="inquire.do" method="post">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" name="name" id="name" placeholder="이름">
                                    <label for="name">이름</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input type="phone" class="form-control" name="phone" id="phone" placeholder="연락처">
                                    <label for="phone">연락처</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <input type="text" class="form-control" name="subject" id="subject" placeholder="제목">
                                    <label for="제목">제목</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <textarea class="form-control" name="contents" placeholder="내용" id="contents" style="height: 200px"></textarea>
                                    <label for="내용">내용</label>
                                </div>
                            </div>
                            <div class="col-12" style="text-align:center">
                                <button class="btn btn-primary rounded-pill py-3 px-5" type="submit">글 남기기</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->

     <!-- Footer Bottom Area -->
    <div id="footer_div">
    <jsp:include page="footer.jsp" flush="true"/>
    </div>
    <!-- Footer Bottom Area End ##### -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>