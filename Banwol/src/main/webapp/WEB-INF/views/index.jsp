<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Banwol Big Church</title>
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
    
    
    <!-- ##### About Ajax START ##### -->
    <script type="text/javascript"  src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>                                         
        <script>
        window.onload = function() {
        	getIndexAbout();
        	getIndexAlbum();
        	getIndexSermon();
        }
        
        function getIndexAbout(){
            $.ajax({ 
                url: "indexAbout.do", 
                type: "GET",
                async: true,
                dataType: "json",
                contentType: "application/json; charset=UTF-8", //★★ 요놈 절대 빼먹으면안됨
                error:function(request,status,error){
                       alert("실패"+"code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)     
                },
                success: function(responseData){
                	var jsonData = JSON.stringify(responseData);
                    var indexAbout = JSON.parse(jsonData);
                    console.log("indexAbout: "+indexAbout);

                    var html = "";
  	               	    html +=  "<div class='container'>";
  	               	    html +=  "<div class='row g-5 align-items-center'>";
  	               	    html +=  "<div class='col-lg-6 wow fadeIn' data-wow-delay='0.1s'>";
  	               	    html +=  "<div class='about-img position-relative overflow-hidden p-5 pe-0'>";
  	               	    html +=  "<img class='img-fluid w-100' src='img/bible.jpg'>";
  	               	    html +=  "</div>";
  	               	    html +=  "</div>";
  	               	    html +=  "<div class='col-lg-6 wow fadeIn' data-wow-delay='0.5s'>";
  	               	    html +=  "<h1 class='display-5 mb-4'>"+indexAbout.subject+"</h1>";
  	               	    html +=  "<p class='mb-4'>"+indexAbout.contents+"</p>";
  	               	    html +=  "</div>";
  	               	    html +=  "</div>";
  	               	    html +=  "</div>";
                 	    $("#indexAboutFrame").html(html);
                }
             
           });                   
        }
        
        
		function formatDate(date) {
            
            var d = new Date(date),
            
            month = '' + (d.getMonth() + 1) , 
            day = '' + d.getDate(), 
            year = d.getFullYear();
            
            if (month.length < 2) month = '0' + month; 
            if (day.length < 2) day = '0' + day; 
            
            return [year, month, day].join('-');
            
        }

        function getIndexAlbum(){
            $.ajax({ 
                url: "indexAlbum.do", 
                type: "GET",
                async: true,
                dataType: "json",
                contentType: "application/json; charset=UTF-8", //★★ 요놈 절대 빼먹으면안됨
                error:function(request,status,error){
                       alert("실패"+"code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)     
                },
                success: function(responseData){
                	var jsonData = JSON.stringify(responseData);
                    var indexAlbum = JSON.parse(jsonData);

                    var html = "";
                    for(var i=0; i<indexAlbum.length; i++) {
    		  	        var date1 = new Date(indexAlbum[i].albumDate);
    		  	        var create_date = formatDate(date1);  
    		  	        
                    	html += "<div class='col-lg-4 col-md-6 wow fadeInUp' data-wow-delay='0.1s'>";
		  	            html += "<img class='img-fluid' src='img/"+indexAlbum[i].image+"' alt=''>";
		  	            html += "<div class='bg-light p-4'>";
		  	            html += "<a class='d-block h5 lh-base mb-4' href=''>"+indexAlbum[i].subject+"</a>";
		  	            html += "<div class='text-muted border-top pt-4'>";
		  	            html += "<small class='me-3'><i class='fa fa-user text-primary me-2'></i>"+indexAlbum[i].userId+"</small>";
		  	            

		  	          
		  	            html += "<small class='me-3'><i class='fa fa-calendar text-primary me-2'></i>"+create_date+"</small>";
		  	            html += "</div>";
		  	            html += "</div>";
		  	            html += "</div>";
		  	          
                    }
                    $("#indexAlbumFrame").append(html);
                }
             
           });     
        }
        
        function getIndexSermon(){
            $.ajax({ 
                url: "indexSermon.do", 
                type: "GET",
                async: true,
                dataType: "json",
                contentType: "application/json; charset=UTF-8", //★★ 요놈 절대 빼먹으면안됨
                error:function(request,status,error){
                       alert("실패"+"code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)     
                },
                success: function(responseData){
                	var jsonData = JSON.stringify(responseData);
                    var indexSermon = JSON.parse(jsonData);

                    var html = "";
	                   	html += "<p style='text-align:center'>";
		  	            html += "<iframe width='560' height='315' src='https://www.youtube.com/embed/"+indexSermon.address+"' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>";
		  	            html += "</p>";
		  	            html += "<p style='text-align:center;font-weight:bold;font-size:1.5em'>"+indexSermon.subject+"</p>";
		  	            html += "<p style='text-align:center'>"+indexSermon.contents+"</p>";
                    $("#indexSermonFrame").append(html);
                }
             
           });     
        }
        
    </script>
    <!-- ##### About Ajax END ##### -->
</head>

<body>
    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
	    <div id="header_div">
	    	<jsp:include page="header.jsp" flush="true"/>
	    </div>
    </header>
    <!-- ##### Header Area End ##### -->


    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="img/cross-gaa1a6c3bd_1920.jpg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-lg-7">
                                    <h1 class="display-2 mb-5 animated slideInDown" style="color:white;">반월큰교회</h1>
                                    <!-- 
                                    <a href="" class="btn btn-primary rounded-pill py-sm-3 px-sm-5">Products</a>
                                    <a href="" class="btn btn-secondary rounded-pill py-sm-3 px-sm-5 ms-3">Services</a>
                                     -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="img/prayer-2544994_1920.jpg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-lg-7">
                                    <h1 class="display-2 mb-5 animated slideInDown" style="color:white;">Banwol Big Church</h1>
                                    <!-- 
                                    <a href="" class="btn btn-primary rounded-pill py-sm-3 px-sm-5">Products</a>
                                    <a href="" class="btn btn-secondary rounded-pill py-sm-3 px-sm-5 ms-3">Services</a>
                                     -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="carousel-item">
                    <img class="w-100" src="img/light-g7956786fe_1920.jpg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-lg-7">
                                    <h1 class="display-2 mb-5 animated slideInDown" style="color:white;">Banwol Big Church</h1>
                                    <!-- 
                                    <a href="" class="btn btn-primary rounded-pill py-sm-3 px-sm-5">Products</a>
                                    <a href="" class="btn btn-secondary rounded-pill py-sm-3 px-sm-5 ms-3">Services</a>
                                     -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="carousel-item">
                    <img class="w-100" src="img/good_cross.jpg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-lg-7">
                                    <h1 class="display-2 mb-5 animated slideInDown" style="color:white;">Banwol Big Church</h1>
                                    <!-- 
                                    <a href="" class="btn btn-primary rounded-pill py-sm-3 px-sm-5">Products</a>
                                    <a href="" class="btn btn-secondary rounded-pill py-sm-3 px-sm-5 ms-3">Services</a>
                                     -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!-- Carousel End -->
     
    <!-- About -->
    <div id="indexAboutFrame" class="container-xxl py-5">
    </div>
    

    <!-- Vision Start -->
    <div class="container-fluid bg-light bg-iconX py-6">
        <div class="container">        
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="bg-white text-center h-100 p-4 p-xl-5">
                        <img class="img-fluid mb-4 w-50" src="img/color_bible.png" alt="">
                        <h4 class="mb-3">복음을 전하는 교회</h4>
                        <p class="mb-4">Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed vero dolor duo.</p>
                        <!-- <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="">Read More</a> -->
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="bg-white text-center h-100 p-4 p-xl-5">
                        <img class="img-fluid mb-4 w-50" src="img/color_prayer.png" alt="">
                        <h4 class="mb-3">사람을 세우는 교회</h4>
                        <p class="mb-4">Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed vero dolor duo.</p>
                        <!-- <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="">Read More</a> -->
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="bg-white text-center h-100 p-4 p-xl-5">
                        <img class="img-fluid mb-4 w-50" src="img/color_family.png" alt="">
                        <h4 class="mb-3">가정을 행복하게 하는 교회</h4>
                        <p class="mb-4">Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed vero dolor duo.</p>
                        <!-- <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="">Read More</a> -->
                    </div>
                </div>
            </div>
            
            <div class="row g-4" style="margin-top:3%">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="bg-white text-center h-100 p-4 p-xl-5">
                        <img class="img-fluid mb-4 w-50" src="img/color_christianity.png" alt="">
                        <h4 class="mb-3">다음 세대를 키우는 교회</h4>
                        <p class="mb-4">Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed vero dolor duo.</p>
                        <!-- <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="">Read More</a> -->
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="bg-white text-center h-100 p-4 p-xl-5">
                        <img class="img-fluid mb-4 w-50" src="img/color_worldwide.png" alt="">
                        <h4 class="mb-3">세상을 섬기는 교회</h4>
                        <p class="mb-4">Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed vero dolor duo.</p>
                        <!-- <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="">Read More</a> -->
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="bg-white text-center h-100 p-4 p-xl-5">
                        <img class="img-fluid mb-4 w-50" src="img/color_holy-spirit.png" alt="">
                        <h4 class="mb-3">성령충만한 교회</h4>
                        <p class="mb-4">Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed vero dolor duo.</p>
                        <!-- <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="">Read More</a> -->
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    <!-- Vision End -->
    
    
    
    <!-- Product Start -->
    <div class="container-xxl py-5">
        <div class="container">
        
        
            <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h1 class="display-5 mb-3">Welcome!</h1>
                <p>저희 반월큰교회를 찾아 주신 여러분들을 진심으로 환영하고 사랑하고 축복합니다.</p>
            </div>
            
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <div class="about-img position-relative overflow-hidden p-5 pe-0">
                        <img class="img-fluid" style="width:60%" src="img/banwol_paster.jpg">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <p style="font-weight:bold">담임 목사 &ensp;&ensp;&ensp;<span style="font-size:2em">김 성 준</span></p>
                    <hr>
                    <p class="mb-4"><br>
									서울신학대학교 신학과 졸업 <br>
									서울신학대학교 신학대학원 졸업 <br>
									기독교대한성결교회 목사 안수 2011년<br>
									현 반월큰교회 담임목사 
					</p>
					
					
                </div>
            </div>
            
        </div>
    </div>
    <!-- Product End -->


    <!-- Firm Visit Start -->
    <div class="container-fluid bg-primary bg-icon mt-5 py-6">
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-md-7 wow fadeIn" data-wow-delay="0.1s">
                    <h1 class="display-5 text-white mb-3">2023 반월큰교회 소식</h1>
                    <p class="text-white mb-0">반월큰교회의 다양한 소식을 만나보세요</p>
                </div>
                <div class="col-md-5 text-md-end wow fadeIn" data-wow-delay="0.5s">
                    <a class="btn btn-lg btn-secondary rounded-pill py-3 px-5" href="news.do?page=1&size=10">보러가기 ></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Firm Visit End -->


    <!-- Testimonial Start -->
    <div class="container-fluid bg-light py-6 mb-5">
        <div class="container">
        
        	<div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h1 class="display-5 mb-3">설교영상</h1>
                <p>Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed rebum vero dolor duo.</p>
            </div>
            
            <div id="indexSermonFrame"  class="link">
  				
            </div>
            
            <!-- 
            <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h1 class="display-5 mb-3">Customer Review</h1>
                <p>Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed rebum vero dolor duo.</p>
            </div>
            <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                <div class="testimonial-item position-relative bg-white p-5 mt-4">
                    <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                    <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    <div class="d-flex align-items-center">
                        <img class="flex-shrink-0 rounded-circle" src="img/testimonial-1.jpg" alt="">
                        <div class="ms-3">
                            <h5 class="mb-1">Client Name</h5>
                            <span>Profession</span>
                        </div>
                    </div>
                </div>
                <div class="testimonial-item position-relative bg-white p-5 mt-4">
                    <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                    <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    <p style="text-align:center">
           			 <iframe width="560" height="315" src="https://www.youtube.com/embed/${sermon.address}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            	</p>
  
                    <div class="d-flex align-items-center">
                        <img class="flex-shrink-0 rounded-circle" src="img/testimonial-2.jpg" alt="">
                        <div class="ms-3">
                            <h5 class="mb-1">Client Name</h5>
                            <span>Profession</span>
                        </div>
                    </div>
                </div>
                <div class="testimonial-item position-relative bg-white p-5 mt-4">
                    <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                    <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    <div class="d-flex align-items-center">
                        <img class="flex-shrink-0 rounded-circle" src="img/testimonial-3.jpg" alt="">
                        <div class="ms-3">
                            <h5 class="mb-1">Client Name</h5>
                            <span>Profession</span>
                        </div>
                    </div>
                </div>
                <div class="testimonial-item position-relative bg-white p-5 mt-4">
                    <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                    <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    <div class="d-flex align-items-center">
                        <img class="flex-shrink-0 rounded-circle" src="img/testimonial-4.jpg" alt="">
                        <div class="ms-3">
                            <h5 class="mb-1">Client Name</h5>
                            <span>Profession</span>
                        </div>
                    </div>
                </div>
                 -->
                
            </div>
        </div>
    </div>
    <!-- Testimonial End -->


    <!-- Blog Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h1 class="display-5 mb-3">교회앨범</h1>
                <p>반월큰교회 앨범</p>
            </div>
            
             
            <div id="indexAlbumFrame" class="row g-4">
            
            	<!--
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <img class="img-fluid" src="img/blog-1.jpg" alt="">
                    <div class="bg-light p-4">
                        <a class="d-block h5 lh-base mb-4" href="">How to cultivate organic fruits and vegetables in own firm</a>
                        <div class="text-muted border-top pt-4">
                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>
                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 Jan, 2045</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <img class="img-fluid" src="img/blog-2.jpg" alt="">
                    <div class="bg-light p-4">
                        <a class="d-block h5 lh-base mb-4" href="">How to cultivate organic fruits and vegetables in own firm</a>
                        <div class="text-muted border-top pt-4">
                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>
                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 Jan, 2045</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <img class="img-fluid" src="img/blog-3.jpg" alt="">
                    <div class="bg-light p-4">
                        <a class="d-block h5 lh-base mb-4" href="">How to cultivate organic fruits and vegetables in own firm</a>
                        <div class="text-muted border-top pt-4">
                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>
                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 Jan, 2045</small>
                        </div>
                    </div>
                </div>
                 -->
                 
            </div>
            
            
        </div>
    </div>
    <!-- Blog End -->

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