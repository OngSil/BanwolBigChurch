<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Banwol Big Church's News</title>
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
    
    
    <!-- ##### Load More Album Ajax START ##### -->
    <script type="text/javascript"  src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>                                         
        <script>
        function formatDate(date) {
            
            var d = new Date(date),
            
            month = '' + (d.getMonth() + 1) , 
            day = '' + d.getDate(), 
            year = d.getFullYear();
            
            if (month.length < 2) month = '0' + month; 
            if (day.length < 2) day = '0' + day; 
            
            return [year, month, day].join('-');
            
        }

        function getAllAlbum(){
            $.ajax({ 
                url: "allAlbum.do", 
                type: "GET",
                async: true,
                dataType: "json",
                contentType: "application/json; charset=UTF-8", //?????? ?????? ?????? ??????????????????
                error:function(request,status,error){
                       alert("??????"+"code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)     
                },
                success: function(responseData){
                	var jsonData = JSON.stringify(responseData);
                    var allAlbum = JSON.parse(jsonData);
                    

                    
                    var html = "";
                    for(var i=0; i<allAlbum.length; i++) {
    		  	        var date1 = new Date(allAlbum[i].albumDate);
    		  	        var create_date = formatDate(date1);  
    		  	        
                    	html += "<div class='col-lg-4 col-md-6 wow fadeInUp' data-wow-delay='0.1s'>";
		  	            html += "<img class='img-fluid' src='img/"+allAlbum[i].image+"' alt=''>";
		  	            html += "<div class='bg-light p-4'>";
		  	            html += "<a class='d-block h5 lh-base mb-4' href=''>"+allAlbum[i].subject+"</a>";
		  	            html += "<div class='text-muted border-top pt-4'>";
		  	            html += "<small class='me-3'><i class='fa fa-user text-primary me-2'></i>"+allAlbum[i].userId+"</small>";
		  	            

		  	          
		  	            html += "<small class='me-3'><i class='fa fa-calendar text-primary me-2'></i>"+create_date+"</small>";
		  	            html += "</div>";
		  	            html += "</div>";
		  	            html += "</div>";
		  	          
                    }
                    $("#albumFrame").append(html);
                    $("#moreAlbum").css("display","none");
                }
             
           });                   
        }
    </script>
    <!-- ##### Load More Album Ajax END ##### -->
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
    <div class="container-fluid page-header wow fadeIn" data-wow-delay="0.1s" style="background:url(../img/smartphone.jpg) center no-repeat; background-position:20% 40%;">
        <div class="container">
            <h1 class="display-3 mb-3 animated slideInDown" style="color:white">????????????</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item"><a class="text-bodyX" style="color:white" href="#">??????1</a></li>
                    <li class="breadcrumb-item"><a class="text-bodyX"  style="color:white" href="#">??????2</a></li>
                    <li class="breadcrumb-item text-darkX active" style="color:white" aria-current="page">??????3</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Blog Start -->
    <div class="container-xxl py-6">
        <div class="container">
            <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;"  >
                <h1 class="display-5 mb-3">????????????</h1>
                <p>??????????????? ??????</p>
            </div>
            <div id="albumFrame" class="row g-4">
             	<c:forEach var="album" items="${albumList}" varStatus="status">
					<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
	                    <img class="img-fluid" src="img/${album.image}" alt="">
	                    <div class="bg-light p-4">
	                        <a class="d-block h5 lh-base mb-4" href="">${album.subject}</a>
	                        <div class="text-muted border-top pt-4">
	                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>${album.userId}</small>
	                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>${album.albumDate}</small>
	                        </div>
	                    </div>
                	</div>
				</c:forEach>           
            
            
            	<!--  
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <img class="img-fluid" src="img/pray.jpg" alt="">
                    <div class="bg-light p-4">
                        <a class="d-block h5 lh-base mb-4" href="">1??? ???????????? ?????????</a>
                        <div class="text-muted border-top pt-4">
                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>
                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 Jan, 2022</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <img class="img-fluid" src="img/worship.jpg" alt="">
                    <div class="bg-light p-4">
                        <a class="d-block h5 lh-base mb-4" href="">??????????????? ????????? Praise</a>
                        <div class="text-muted border-top pt-4">
                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>
                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>22 March, 2022</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <img class="img-fluid" src="img/service.jpg" alt="">
                    <div class="bg-light p-4">
                        <a class="d-block h5 lh-base mb-4" href="">???????????? ?????? ??????</a>
                        <div class="text-muted border-top pt-4">
                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>
                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>17 May, 2022</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <img class="img-fluid" src="img/testimonial.jpg" alt="">
                    <div class="bg-light p-4">
                        <a class="d-block h5 lh-base mb-4" href="">??? ?????? ????????????</a>
                        <div class="text-muted border-top pt-4">
                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>
                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>06 June, 2022</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <img class="img-fluid" src="img/sea_cross.jpg" alt="">
                    <div class="bg-light p-4">
                        <a class="d-block h5 lh-base mb-4" href="">2022 ?????? ?????????</a>
                        <div class="text-muted border-top pt-4">
                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>
                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>01 August, 2022</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <img class="img-fluid" src="img/christmas.jpg" alt="">
                    <div class="bg-light p-4">
                        <a class="d-block h5 lh-base mb-4" href="">2022 ?????? ?????????</a>
                        <div class="text-muted border-top pt-4">
                            <small class="me-3"><i class="fa fa-user text-primary me-2"></i>Admin</small>
                            <small class="me-3"><i class="fa fa-calendar text-primary me-2"></i>25 December, 2022</small>
                        </div>
                    </div>
                </div>
                 -->
           
            </div>
            
            <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.1s">
                <a id="moreAlbum" class="btn btn-primary rounded-pill py-3 px-5" onclick="getAllAlbum()">Load More</a>
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