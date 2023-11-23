<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>3TRILLION MALL</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- gLightbox gallery-->
    <!--link rel="stylesheet" href="vendor/glightbox/css/glightbox.min.css"-->
    <!-- Range slider-->
    <!--link rel="stylesheet" href="vendor/nouislider/nouislider.min.css"-->
    <!-- Choices CSS-->
    <link rel="stylesheet" href="vendor/choices.js/public/assets/styles/choices.min.css">
    <!-- Swiper slider-->
    <link rel="stylesheet" href="vendor/swiper/swiper-bundle.min.css">
    <!-- Google fonts-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
    <!--theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/favicon.png">
  </head>
 
 <body>
 
 
   <c:url var="context" value="/"/>
 
     
 <!-- navbar-->
      <header class="header bg-white">
        <div class="container px-lg-3">
          <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="${context }index"><span class="fw-bold text-uppercase text-dark">3 Trillion</span></a>
            <button class="navbar-toggler navbar-toggler-end" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto">
                <li class="nav-item">
                  <!-- Link--><a class="nav-link " href="${context }index">HOME</a>
                </li>
              </ul>

              <ul class="navbar-nav ms-auto">         
                	<c:choose>
						<c:when test="${empty sessionScope.id }">
							<li class="nav-item"><a class="nav-link" href="${context }login"> <i class="fas fa-user me-1 text-gray fw-normal"></i>로그인</a></li>
							<li class="nav-item"><a class="nav-link" href="${context }regist">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li class="nav-item"><a class="nav-link" href="${context }memberInfo" onclick="location.href='userInfo2?id=${member.id }&currentPage=${currentPage }'"><i class="fas fa-user me-1 text-gray fw-normal"></i>${sessionScope.id } 님</a></li>
							<li class="nav-item"><a class="nav-link" href="${context }logout">로그아웃</a></li>
						</c:otherwise>
					</c:choose>
					<li class="nav-item"><a class="nav-link" href="${context }boardForm">고객센터</a></li>              
                	<li class="nav-item"><a class="nav-link" href="index.jsp"> <i class="fas fa-dolly-flatbed me-1 text-gray"></i>장바구니<small class="text-gray fw-normal">(2)</small></a></li>
              </ul>
            </div>
          </nav>
        </div>
        
        
      </header>
      