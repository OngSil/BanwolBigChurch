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
    
    <style>
    .write_btn {
  	  border: 0;
	  outline: none;
	  font-size: 1em;
	  background: #3CB815;
	  color: white;
	  padding: 4px;
	  cursor: pointer;
	  border-radius: 5px;
    }
    </style>
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
    <div class="container-fluid page-header wow fadeIn" data-wow-delay="0.1s" style="background:url(../img/people_hand.jpg) center no-repeat;background-position:10% 30%;">
        <div class="container">
            <h1 class="display-3 mb-3 animated slideInDown" style="color:white">교회소식</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item"><a class="text-bodyX" style="color:white" href="#">소식1</a></li>
                    <li class="breadcrumb-item"><a class="text-bodyX" style="color:white" href="#">소식2</a></li>
                    <li class="breadcrumb-item text-darkX active" style="color:white" aria-current="page">소식3</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Testimonial Start -->
    <div class="container-fluid bg-light py-6">
        <div class="container">

            <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h1 class="display-5 mb-3">교회소식</h1>
                <p>교회소식에 대해 알려드립니다.</p>
            </div>
         
            <table class="table table-hover table-striped">
				<thead  style="background-color:rgb(219, 219, 219);">
					<tr>
						<th>No</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody style="background-color:white">
						<c:forEach var="news" items="${news}" varStatus="status">
							<tr>
								<td style="width:5%">${news.seqNo}</td>
								<td style="width:40%"><a href="news_detail.do?seqNo=${news.seqNo}" style="color:black">${news.subject}</a></td>
								<td style="width:10%">${news.userId}</td>
								<td style="width:10%">${news.createTime}</td>
								<td style="width:5%">${news.inquiryCnt}</td>
							</tr>
						</c:forEach>
				</tbody>
		    </table>
		    
		  
		   
		    <!-- 페이징 -->
		    <div>
				<ul class="pagination pagination-primary float-end dataTable-pagination">
					<li class="page-item pager"><a href="#" class="page-link" data-page="1">‹</a></li>
					
					<!-- 페이징처리 
					<c:forEach var="i" begin="1" end="${totalCnt}">
						<c:choose> 
							<c:when test="${currentPage eq i}"> 
								<li class="page-item active"><a href="news.do?page=${i}&size=10" class="page-link" data-page=${i} >${i}</a></li>
							</c:when> 
							<c:otherwise> 
								<li class="page-item"><a href="news.do?page=${i}&size=10" class="page-link" data-page=${i} >${i}</a></li>
							</c:otherwise> 
						</c:choose> 		
					</c:forEach>
						-->
						
						<li class="page-item"><a href="news.do?page=1&size=10" class="page-link" data-page="1" >1</a></li>
					<li class="page-item pager"><a href="#" class="page-link" data-page="2">›</a></li>
				</ul>
				
				<button class="write_btn"><a href="go_news_write.do" style="color:white;font-weight:bold">글쓰기</a></button> 
		    </div>
		    
			<c:if test="${not empty writeOk}"> <!-- if 조건 선언 -->
		    	<span id="writeOk" style="display:none">${writeOk}</span>
		    </c:if>
		</div>
		
			
	</div> 


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
    
    <script type="text/javascript">
    	let writeOk = $("#writeOk").text();
    	if (writeOk == "Y") {
    		alert("작성이 완료되었습니다");
    	}
    </script>
</body>

</html>