<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>


<head>
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <div class="container-fluid fixed-top px-0 wowX fadeIn" data-wow-delay="0.1s">
		 
        <nav class="navbar navbar-expand-lg navbar-light py-lg-0 px-lg-5 wow fadeIn" data-wow-delay="0.1s" style="background-color:white;">
            <a href="index.do" class="navbar-brand ms-4 ms-lg-0">
           		 <img class="w-100" src="img/banwol_logo.png" alt="Image" style="height:70px;">
                <!-- <h1 class="fw-bold text-primary m-0">F<span class="text-secondary">oo</spa
                n>dy</h1> -->
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="/" class="nav-item nav-link active">Home</a>
                    
                    <!-- <a href="about.html" class="nav-item nav-link">About Us</a> -->
                    <!-- <a href="product.html" class="nav-item nav-link">Products</a> -->
                    
                    <!-- 교회소개 -->
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">교회소개</a>
                        <div class="dropdown-menu m-0">
                            <a href="about.do?seq_no=1" class="dropdown-item">교회소개</a>
                            <a href="vision.do" class="dropdown-item">교회비전</a>
                            <a href="welcome.do" class="dropdown-item">환영인사</a>
                            <!-- <a href="404.html" class="dropdown-item">404 Page</a> -->
                        </div>
                    </div>
                    
                    <!-- 교회소식 -->
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">교회소식</a>
                        <div class="dropdown-menu m-0">
                            <a href="news.do?page=1&size=10" class="dropdown-item">교회소식</a>
                            <a href="album.do" class="dropdown-item">교회앨범</a>
                            <a href="sermon.do" class="dropdown-item">설교영상</a>
                        </div>
                    </div>
                    
                    <!-- 문의하기 -->
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">문의하기</a>
                        <div class="dropdown-menu m-0">
                            <a href="contact.do" class="dropdown-item">문의하기</a>
                            <a href="directions.do" class="dropdown-item">찾아오시는 길</a>
                        </div>
                    </div>
                    <!-- <a href="contact.html" class="nav-item nav-link">Contact Us</a> -->
                    
                </div>
                
                <!-- 
                <div class="d-none d-lg-flex ms-2">
                    <a class="btn-sm-square bg-white rounded-circle ms-3" href="">
                        <small class="fa fa-search text-body"></small>
                    </a>
                    <a class="btn-sm-square bg-white rounded-circle ms-3" href="">
                        <small class="fa fa-user text-body"></small>
                    </a>
                    <a class="btn-sm-square bg-white rounded-circle ms-3" href="">
                        <small class="fa fa-shopping-bag text-body"></small>
                    </a>
                </div>
                 -->
                
            </div>
        </nav>
    </div>
    <!-- Navbar End -->
</body>

</html>