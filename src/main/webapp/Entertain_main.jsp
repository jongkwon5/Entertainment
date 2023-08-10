<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@page import="java.util.Enumeration"%>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<%request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/cd8f90f87a.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/stylesheet_main.css"/>
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
</head>
<body>
<div class="container">
<!--**************************** 헤더 ****************************-->
	<div class="header">
		<ul>
			<li id="logo"></li>
        </ul>
        <ul class="header_menu">
			<li>
				<a class="btn btn_home" href="Entertain_main.do" style="cursor: pointer" >
					<spring:message code="message.home"/>
				</a>
			</li>
			<li>
            	<a class="btn btn_company" href="Entertain_company.do" style="cursor: pointer">
            		<spring:message code="message.company"/>
            	</a>
			</li>
			<li>
            	<a class="btn btn_artist" href="Entertain_artist.do" style="cursor: pointer">
            		<spring:message code="message.artist"/>
            	</a>
			</li>
			<li>
	            <a class="btn btn_audition" href="Entertain_audition.do" style="cursor: pointer">
	            	<spring:message code="message.audition"/>
	            </a>
         	</li>
          	<li>
	            <a class="btn btn_board" href="Entertain_board_list.do" style="cursor: pointer">
	            	<spring:message code="message.board"/>
	           	</a>
          	</li>
		</ul>
		<ul class="header_mypage">
			<c:choose>
				<c:when test="${empty user.name}">
					<div class="my_page_icon" style="background-image: url('resources/Image/Entire/default_2.png')"
						onclick="location.href='login.do'">
					</div>
				</c:when>
				<c:otherwise>
					<div class="my_page_icon" style="background-image: url('resources/Image/Entire/default_2.png')"
						onclick="location.href='Entertain_mypage.do'">
					</div>
					<p id="hidden_name">${user.name}님</p>
					<button name="cmd" id="logout" type="submit" onclick="location.href='logOut.do'">logout</button>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
<!--**************************** 메인 ****************************-->
	<div class="main">
		<div class="num_box">
			<span class="current_num">[1 /</span>
			<span class="total_num">3]</span>
		</div>
		<div class="main_wrap">
		<!--************************** slide 1 ***********************-->
			<div class="mv_section active">
				<i class="up_1 fa-solid fa-angles-up fa-flip" style="--fa-animation-duration: 1.5s; cursor: pointer"></i>
				<div class="img_ive img"></div>
            	<video src="resources/Image/Home/mv_ive.mp4" preload="auto" autoplay="autoplay" loop="loop" muted="muted" volume="0"></video>
				<div class="text_box active">
					<div class="background_box background_box1"></div>
					<p class="top_text">
						<spring:message code="message.ive.top"/>
					</p>
					<p class="middle_text">&lt<spring:message code="message.ive.bottom"/>&gt
					</p>
				</div>
			</div>
		<!--************************** slide 2 ***********************-->
			<div class="mv_section active2">
				<i class="up_1 fa-solid fa-angles-up fa-flip" style="--fa-animation-duration: 1.5s; cursor: pointer"></i>
            	<div class="img_lessar img"></div>
            	<video src="resources/Image/Home/mv_lessar.mp4" preload="auto" autoplay="autoplay" loop="loop" muted="muted" volume="0"></video>
				<div class="text_box active2">
					<div class="background_box background_box2"></div>
              		<p class="top_text">
              			<spring:message code="message.lesser.top"/>
              		</p>
              		<p class="middle_text">&lt<spring:message code="message.lesser.bottom"/>&gt
              		</p>
            	</div>
			</div>
		<!--************************** slide 3 ***********************-->
			<div class="mv_section active3">
				<i class="up_1 fa-solid fa-angles-up fa-flip" style="--fa-animation-duration: 1.5s; cursor: pointer"></i>
				<div class="img_nmixx img"></div>
				<video src="resources/Image/Home/mv_nmixx.mp4" preload="auto" autoplay="autoplay" loop="loop" muted="muted" volume="0"></video>
            <div class="text_box active3">
				<div class="background_box background_box3"></div>
					<p class="top_text">
						<spring:message code="message.nmixx.top"/>
					</p>
					<p class="middle_text">&lt<spring:message code="message.nmixx.bottom"/>&gt
					</p>
				</div>
			</div>
		</div>
	</div>
<!-- ****************************하단**************************** -->
	<div class="footer">
		<c:choose>
			<c:when test="${user.id == 'admin'}">
				<span style="float:right;margin-right: 50px; color:red;">
					<a href="/parkJK/Entertain/view/admin_home.jsp">안녕하세요 관리자님! 환영합니다</a><br><br>
				</span>
			</c:when>
			<c:otherwise>
				<p>
					<spring:message code="message.company2"/>
				</p>
			</c:otherwise>
		</c:choose>
		<ul class="footer_box">
			<li class="footer_menu">
				<p>
					<a href="Entertain_main.do?lang=en">
						<spring:message code="message.language.en"/>
					</a>&nbsp;&nbsp;
				</p>
			</li>
			<li class="footer_menu">
      			 <p>
      			 	<a href="Entertain_main.do?lang=ko">
						<spring:message code="message.language.ko"/>
					
					</a>
				</p>
	
			</li>
		</ul>
        <ul id="footer_sns">
			<li>
				<a href="https://ko-kr.facebook.com/" target="_blank">
					<i class="fa-brands fa-square-facebook"></i>
            	</a>
			</li>
			<li>
				<a href="https://www.instagram.com/" target="_blank" >
					<i class="fa-brands fa-instagram"></i>
				</a>
			</li>
			<li>
            	<a href="https://twitter.com/" target="_blank">
            		<i class="fa-brands fa-square-twitter"></i>
            	</a>
			</li>
			<li>
				<a href="https://www.youtube.com/" target="_blank">
					<i class="fa-brands fa-square-youtube"></i>
				</a>
			</li>
		</ul>
	</div>
</div>
<!-- ******************************Swiper Slide JS************************** -->
<script>
	$(".main_wrap").slick({
		speed: 1000,
        slidesToShow: 1,
        infinite: true,
        slidesToScroll: 1,
        fade: true,
	});
	$(".main_wrap").on("afterChange", function (event, slick, currentSlide, nextSlide) {
		$(".current_num").text("[" + (currentSlide + 1) + " /");
		$(".mv_section").find($(".text_box").removeClass("active"));
		$(" .mv_section")
			.eq(currentSlide + 1)
            .find($(".text_box"))
            .addClass("active");
	});
</script>
</body>
</html>
