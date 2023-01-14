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
	    .details_btn {
	     	border: 0;
			outline: none;
			font-size: 1em;
			background: #3CB815;
			color: white;
			padding: 5px;
			cursor: pointer;
			border-radius: 2px;
	    	display:inline;
	    	margin:3px
	    }
	    .reverse_btn {
	    	background-color:white;
	    	border: 1px solid #3CB815;
	    	color: #3CB815;
	    	font-weight: bold;
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
         	
         	
         	<form action="modify_news.do" method="post" enctype="multipart/form-data">
         		<input type="hidden" name="seqNo" value="${newsDetails.seqNo}">
         		
	            <label for="subject">제목 :</label>
	            <input type="text" id="subject" name="subject" value="${newsDetails.subject}" style="width:95%;margin-bottom:2%" disabled>
	            
	            <label for="writer">글쓴이 :</label>
	            <input type="text" id="writer" name="writer" value="${newsDetails.userId}" style="width:25%;margin-bottom:2%;margin-right:9.5%" disabled> 
	            
	            <label for="createTime">작성일 :</label>
	            <input type="text" id="createTime" name="createTime" value="${newsDetails.createTime}" style="width:25%;margin-bottom:2%;margin-right:9.5%" disabled> 
	            
	            <label for="inquiryCnt">조회수 :</label>
	            <input type="text" id="inquiryCnt"name="inquiryCnt"  value="${newsDetails.inquiryCnt}" style="width:10%;margin-bottom:2%" disabled> 
	            
	            <textarea style="width:100%;height:300px" id="contents" name="contents" disabled>${newsDetails.contents}</textarea>
	            
	            <label for="file">파일첨부</label>	            
	            <input type="file" id="file" name="file" readonly="readonly" onchange="setFileNm()" disabled>
	            <input type="hidden" id="fileName" name="fileName">
	            
	            
	            <input type="submit" value="확인" id="modifyOk" class="details_btn" style="display:none">
			</form>
			
				<div style="text-align:center">
				    <button class="details_btn modify_btn reverse_btn" onclick="modifyNews()">수정</button>
				    <button class="details_btn reverse_btn" onclick="location.href='delete_news.do?seqNo=${newsDetails.seqNo}'">삭제</button>
				    <button class="details_btn do_modify_btn reverse_btn" onclick="doModifyNews()" disabled>확인</button>
				    <button class="details_btn" onclick="location.href='news.do'" style="background-color:rgb(59,125,0)">목록으로</button>
				</div>
			
	
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
	    //수정
		function modifyNews(){
			$("#subject").attr("disabled", false);
			$("#contents").attr("disabled", false);
			$("#file").attr("disabled", false);
			$(".do_modify_btn").attr("disabled", false);
			$(".modify_btn").css("background-color","gray");
			$(".modify_btn").attr("disabled", true);
		}
	    
		//파일이름 저장 
		function setFileNm(){
			let fileValue = $("#file").val().split("\\");
			let fileName = fileValue[fileValue.length-1]; 
			console.log("fileName: "+fileName);
			$("#fileName").val(fileName);
		}
		
		//수정서비스 호출
		function doModifyNews(){
			$("form").submit();
		}
    </script>
		
</body>

</html>