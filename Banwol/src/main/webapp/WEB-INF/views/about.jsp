<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>


<head>
    <meta charset="utf-8">
    <title>About Banwol Big Church</title>
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
    <div class="container-fluid page-header mb-5 wow fadeIn" data-wow-delay="0.1s" style="background:url(../img/intro.jpg) center no-repeat;background-position:10% 30%;">
        <div class="container">
            <h1 class="display-3 mb-3 animated slideInDown" style="color:white">교회소개</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item"><a class="text-bodyX" style="color:white" href="#">About Banwol Big Church</a></li>
                    <!-- <li class="breadcrumb-item"><a class="text-body" href="#">Pages</a></li>  -->
                    <!-- <li class="breadcrumb-item text-dark active" aria-current="page">About Us</li>  -->
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <div class="about-img position-relative overflow-hidden p-5 pe-0">
                        <img class="img-fluid w-100" src="img/bible.jpg">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <h1 class="display-5 mb-4">${about.subject}</h1>
                    <p class="mb-4">${about.contents}</p>
                    
                    <!-- 
                    <p><i class="fa fa-check text-primary me-3"></i>은혜가 충만한 교회</p>
                    <p><i class="fa fa-check text-primary me-3"></i>사랑으로 하나되는 교회</p>
                    <p><i class="fa fa-check text-primary me-3"></i>믿고 순종하는 교회</p>
                    <a class="btn btn-primary rounded-pill py-3 px-5 mt-3" href="">Read More</a>
                    -->
                     
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->



    <!-- Feature Start -->
    <div class="container-fluid bg-light py-6">
        <div class="container">
            <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h1 class="display-5 mb-3">교회발자취</h1>
                <p>반월큰교회는 이런 길을 걸어왔습니다.</p>
            </div>
            <div class="row g-4">
            	<table class="table table-hover table-striped">
					<thead  style="background-color:rgb(219, 219, 219);">
						<tr>
							<th>No</th>
							<th>날짜</th>
							<th>내용</th>
						</tr>
					</thead>
					<tbody style="background-color:white">
							<c:forEach var="history" items="${history}" varStatus="status">
								<tr>
									<td style="width:5%">${history.seqNo}</td>
									<td style="width:10%">${history.historyDate}</td>
									<td style="width:50%">${history.contents}</td>
								</tr>
							</c:forEach>

							<!-- 
							<tr>
								<td>2</td>
								<td><a href="# ">Title</a></td>
								<td>쓰니2</td>
								<td>###</td>
								<td>$$$$</td>
							</tr>
							 -->
							 
					</tbody>
				</table>
				
				<!-- 
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="bg-white text-center h-100 p-4 p-xl-5">
                        <img class="img-fluid mb-4" src="img/icon-1.png" alt="">
                        <h4 class="mb-3">Natural Process</h4>
                        <p class="mb-4">Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed vero dolor duo.</p>
                        <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="">Read More</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="bg-white text-center h-100 p-4 p-xl-5">
                        <img class="img-fluid mb-4" src="img/icon-2.png" alt="">
                        <h4 class="mb-3">Organic Products</h4>
                        <p class="mb-4">Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed vero dolor duo.</p>
                        <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="">Read More</a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="bg-white text-center h-100 p-4 p-xl-5">
                        <img class="img-fluid mb-4" src="img/icon-3.png" alt="">
                        <h4 class="mb-3">Biologically Safe</h4>
                        <p class="mb-4">Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed vero dolor duo.</p>
                        <a class="btn btn-outline-primary border-2 py-2 px-4 rounded-pill" href="">Read More</a>
                    </div>
                </div>
                 -->
                 
            </div>
            
        </div>
    </div>
    <!-- Feature End -->


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