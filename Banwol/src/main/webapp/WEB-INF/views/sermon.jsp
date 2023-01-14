<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Banwol Big Church's Sermon</title>
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
    <div class="container-fluid page-header wow fadeIn" data-wow-delay="0.1s" style="background:url(../img/white_bible.jpg) center no-repeat;background-position:10% 53%;">
        <div class="container">
            <h1 class="display-3 mb-3 animated slideInDown">설교영상</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item"><a class="text-body" href="#">영상1</a></li>
                    <li class="breadcrumb-item"><a class="text-body" href="#">영상2</a></li>
                    <li class="breadcrumb-item text-dark active" aria-current="page">영상3</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Testimonial Start -->
    <div class="container-fluid py-6">
        <div class="container">
            <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h1 class="display-5 mb-3">설교영상</h1>
                <p>Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed rebum vero dolor duo.</p>
            </div>
            
            <div class="link">
  				<p style="text-align:center">
           			 <iframe width="560" height="315" src="https://www.youtube.com/embed/${sermon.address}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            	</p>
            	<p style="text-align:center;font-weight:bold;font-size:1.5em">${sermon.subject}</p>
            	<p style="text-align:center">${sermon.contents}</p>
            </div>
            
            
                
            </div>
        </div>
    </div>
    <!-- Testimonial End -->


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