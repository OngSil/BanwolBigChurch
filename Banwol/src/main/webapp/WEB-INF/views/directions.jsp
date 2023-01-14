<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Directions</title>
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
    
    
    
	<!-- 네이버 지도 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=jt2in1x1xj"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=jt2in1x1xj&callback=CALLBACK_FUNCTION"></script>
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
    <div class="container-fluid page-header mb-5 wow fadeIn" data-wow-delay="0.1s" style="background:url(../img/directions.jpg) center no-repeat;background-position:30% 40%;">
        <div class="container">
            <h1 class="display-3 mb-3 animated slideInDown" style="color:white">찾아오시는 길</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb mb-0">
                    <!--<li class="breadcrumb-item"><a class="text-bodyX" style="color:white" href="#">About Banwol Big Church</a></li>  -->
                    <!-- <li class="breadcrumb-item"><a class="text-body" href="#">Pages</a></li>  -->
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

   <div class="container-xxl py-6">
       <div class="container">
       		<div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h1 class="display-5 mb-3">찾아오시는 길</h1>
            </div>
            
       		 <div class="row g-5 justify-content-center">
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
                <div class="col-lg-7 col-md-12 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="row g-3">
                            <div class="col-12">
                               <p style="font-weight:bold;font-size:1.3em;margin-bottom:2px">지하철 → 버스</p>
                               <p>한대앞역 하차후 3번 출구로 323번, 52번, 66번, 101번, 125번, 511번 이용
				    		   </p>
                            </div>
                            
                            <div class="col-12">
                               <p style="font-weight:bold;font-size:1.3em;margin-bottom:2px">지하철 → 도보</p>
                               <p>중앙역 ← → 안산시청 약 1.4km (약 20분 소요) <br/>
								    고잔역 ← → 안산시청 약 1.3km (약 18분 소요)
				    		   </p>
                            </div>
                            
                            <div class="col-12">
                               <p style="font-weight:bold;font-size:1.3em;margin-bottom:2px">고속도로</p>
                               <p>안산IC - 성호주유소(1.2㎞) - 중앙초등학교(3.5㎞) - 안산시청(4.4㎞)<br/>
				    			    서안산IC - 안산역(3㎞) - 고잔역(6.7㎞) - 안산시청(7.6㎞)
				    		   </p>
                            </div>
                            <div class="col-12">
                               <p style="font-weight:bold;font-size:1.3em;margin-bottom:2px">시내버스</p>
                               <p>22번, 30번, 30-2번, 30-7번, 52번, 62번, 62-1번, 70번, <br/>
                                  99번, 99-1번, 101번, 123번, 125번, 350번, 707번, 909번
				    		   </p>
                            </div>
                            <div class="col-12">
                               <p style="font-weight:bold;font-size:1.3em;margin-bottom:2px">주차장 이용안내</p>
                               <p>안산시청 부설주차장 : 최초 20분 무료<br/>
								  30분 500원 (민원 방문후 확인도장 제출시 1시간 무료)
				    		   </p>
                            </div>
                        </div>
                </div>
                
                <div id="map" style="width:95%;height:350px;"></div>
   		 </div>
    </div>         

	<!-- 네이버 지도
	<div class="container-xxl px-0 wow fadeIn" data-wow-delay="0.1s" style="margin-bottom: -6px;">
   		<div id="map" style="width:100%;height:400px;"></div>
	</div>
	 -->
	 
	<script>
		var mapOptions = {
		    center: new naver.maps.LatLng(37.3067, 126.9041),
		    zoom: 22
		};
		var map = new naver.maps.Map('map', mapOptions);
		
		<!-- Marker -->
		var marker = new naver.maps.Marker({
		    position: new naver.maps.LatLng(37.3067, 126.9041),
		    map: map
		});
	</script>
	
	<!-- 네이버 지도 -->

	
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