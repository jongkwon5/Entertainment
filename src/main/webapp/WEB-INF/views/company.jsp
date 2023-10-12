<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
<script src="https://kit.fontawesome.com/cd8f90f87a.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="${context}/resources/JS/jquery.fullPage.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="${context}/resources/css/stylesheet_company.css" />
<link rel="stylesheet" type="text/css" href="${context}/resources/css/jquery.fullPage.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
<script>
    $(() => {$(".swiper-slide").hover(function(){swiper1.autoplay.stop();},function(){
				swiper1.autoplay.start();
				$("#img_box").removeClass("active");
			});
  			$('.swiper-slide').on("click",function(){
        		var getId=$(this).attr("id");
        		$("#img_box").css({ visibility:"visible", opacity:1});
           		$("#img_box").css({background: 'url(${context}/resources/Image/company/slide2/background/'+getId+".jpg)",})
              		.css("background-size", "cover")
              		.css("background-position", "center");
         	});
         	$(document).mouseup("click", function(e){
				if($("#img_box").has(e.target).length === 0){
				$("#img_box").css({visibility:"hidden", opacity:0});
            }});
			$(document).ready(function(){
				$('.fullpage').css("display","block");
  			});
 			$(".fa-solid").click(function(){
				$.fn.fullpage.moveTo(1, 1500); // 이동하고싶은 페이지
				$.fn.fullpage.setScrollingSpeed(700);
			});
			$('#slide1_text2').fadeIn(2000,"swing");
			setTimeout(function(){
				$('.underline1').addClass('active');
			},900);
				$('.slide1_div > h1').hover(function(){
          			$('.slide1_div').css('background-image', 'linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)), url("../Image/company/slide1_top_inner_bg.jpg")');
        		});
			});
</script>
</head>
<body id="close">
<!-- ****************************하단**************************** -->
<div class="footer">
	<p>JK Entertainment(주)</p>
	<ul class="footer_box">
		<li class="footer_menu" >
			<a href="main">
				<p>HOME</p>
			</a>
		</li>
		<li class="footer_menu" >
			<a href="company">
				<p>COMPANY</p>
			</a>
		</li>
		<li class="footer_menu" >
			<a href="artist">
				<p>ARTIST</p>
			</a>
		</li>
		<li class="footer_menu" >
			<a href="boardList">
				<p>BOARD</p>
			</a>
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
        <li>
			<i class="fa-solid fa-arrows-up-to-line"></i>
        </li>
	</ul>
</div>
<div class="fullpage" style="display:none">
	<div class="section section1">
<!--****************************1Page****************************-->
		<div class="header">
			<ul>
				<li id="logo"></li>
	        </ul>
	        <ul class="header_menu">
				<li>
					<a class="btn btn_home" href="${context}/main" style="cursor: pointer" >
						<spring:message code="message.home"/>
					</a>
				</li>
				<li>
	            	<a class="btn btn_company" href="${context}/company" style="cursor: pointer">
	            		<spring:message code="message.company"/>
	            	</a>
				</li>
				<li>
	            	<a class="btn btn_artist" href="${context}/artist" style="cursor: pointer">
	            		<spring:message code="message.artist"/>
	            	</a>
				</li>
	          	<li>
		            <a class="btn btn_board" href="${context}/boardList" style="cursor: pointer">
		            	<spring:message code="message.board"/>
		           	</a>
	          	</li>
			</ul>
			<ul class="header_mypage">
				<c:choose>
					<c:when test="${empty user.user_name}">
						<div class="my_page_icon" style="background-image: url('resources/Image/Entire/default_2.png')"
							onclick="location.href='login'">
						</div>
					</c:when>
					<c:otherwise>
						<div class="my_page_icon" style="background-image: url('resources/Image/Entire/default_2.png')"
							onclick="location.href='main'">
						</div>
						<p id="hidden_name">${user.user_name}님</p>
						<button name="cmd" id="logout" type="submit" onclick="location.href='logOut'">logout</button>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	<!--****************************header****************************-->
        <div id="slide1_content">
			<div id="slide1_title">
				<span>꿈을  현실로 만들어가는</span>
            </div>
			<div id="slide1_text2">
				<p class="underline underline1">"JK Entertainment"</p>
			</div>
		</div>
	</div>
<!--****************************2Page****************************-->
<div class="section section2" id="close">
	<div id="img_box"></div>
	<div class="slide_top_text">
		<span id="slide_top_text1"></span>
		<h3>CREATIVE</h3>
	</div>
	<div class="slide2_main">
		<div id="slide2_top">
			<div id="slide2_top_inner2">
           		<span style="font-size: 40px">"Creative JK Entertainment"</span>
           		<p>다양한 아티스트와 함께 차별화된 프로듀싱 시스템을 통해 글로벌 음악시장을 선도해 가고 있습니다.</p>
			</div>
			<div id="slide2_middle">
				<div id ="line2">
             		<span>ALBUM</span>
         		</div>
			</div>
		</div>
       	<div id="slide2_bottom">
			<div class="swiper mySwiper">
        		<!-- 가로 작은 슬라이더 -->
				<div class="swiper-wrapper">
					<button class="swiper-slide" id="v1"
	                	style="background-image: url('${context}/resources/Image/company/slide2/album/album1.jpg');cursor: pointer;"></button>
					<button class="swiper-slide" id="v2"
	                	style="background-image: url('${context}/resources/Image/company/slide2/album/album2.jpg'); cursor: pointer;"></button>
					<button class="swiper-slide" id="v3"
	               		style="background-image: url('${context}/resources/Image/company/slide2/album/album3.jpg'); cursor: pointer;"></button>
		            <button class="swiper-slide" id="v4" 
		                style="background-image: url('${context}/resources/Image/company/slide2/album/album4.jpg'); cursor: pointer;"></button>
		            <button class="swiper-slide" id="v5"
		                style="background-image: url('${context}/resources/Image/company/slide2/album/album5.jpg'); cursor: pointer;"></button>
		            <button class="swiper-slide" id="v6" 
		              	style="background-image: url('${context}/resources/Image/company/slide2/album/album6.jpg'); cursor: pointer;" ></button>
		            <button class="swiper-slide" id="v7"
		                style="background-image: url('${context}/resources/Image/company/slide2/album/album7.jpg'); cursor: pointer;"></button>
		            <button class="swiper-slide" id="v8"
		                style="background-image: url('${context}/resources/Image/company/slide2/album/album8.jpg'); cursor: pointer;"></button>
		            <button class="swiper-slide" id="v9"
		                style="background-image: url('${context}/resources/Image/company/slide2/album/album9.jpg'); cursor: pointer;"></button>
		            <button class="swiper-slide" id="v10"
		                style="background-image: url('${context}/resources/Image/company/slide2/album/album10.jpg'); cursor: pointer;"></button>
				</div>
			</div>
		</div>
	</div>
</div>
<!--****************************3Page****************************-->
<div class="section section3">
	<div id="slide3_top">
		<div class="slide_top_text" id="slide_top_text2">
			<span></span>
			<h3>VALUABLE</h3>
           </div>
         	<div id="slide3_top_inner2">
          		<span style="font-size: 40px; color: black; text-shadow: 4px 4px 4px white;">
            		"Leader In JK Entertainment"
            	</span><br/>
           	<p>이를 모토로 엔터테인먼트 산업의 변화를 선도하는 기업이 되기 위해  노력합니다.</p>
		</div>
	</div>
	<div id="slide3_bottom">
		<div id="slide3_bottom_text">
			<p>Change For</p>
		</div>
        <div id="slide3_bottom_image">
			<div id="slide3_bottom_box1" class="slide3_box">
				<h1 class = "slide3_box_text">The Dreamers</h1>
                <p class="slide3_box_text2">모두의 꿈이 이루어지는 세상을 만듭니다</p>
            </div>
            <div id="slide3_bottom_box2" class="slide3_box">
				<h1 class = "slide3_box_text">The Planet</h1>
				<p class="slide3_box_text2">지구 환경 보전에 힘쓰고 친환경 가치를 전파합니다.</p>
			</div>
            <div id="slide3_bottom_box3" class="slide3_box">
				<h1 class = "slide3_box_text">The Value</h1>
				<p class="slide3_box_text2">다양한 가치가 공유되며 상생할 수 있는 사회를 만듭니다.</p>
			</div>
		</div>
	</div>
</div>
<!--****************************4Page****************************-->
<div class="section section4">
	<div class="slide4_top">
		<div class="slide_top_text" id="slide_top_text3">
			<span></span>
			<h3>CONTACT</h3>
		</div>
	</div>
	<div id="slide4_left"></div>
	<div id="slide4_right">
		<div class="kakaomap">
			<div id="daumRoughmapContainer1683632645677" class="root_daum_roughmap root_daum_roughmap_landing"></div>
           	</div>
           	<div id="slide4_middle_text">
			<ul>
				<li class="top_app">(주)JK ENTERTAINMENT</li>
               	<li class="app m1">서울특별시 구로구 공원로</li>
              	 	<li class="app">6나길 17-18번지</li>
              	 	<li class="sm1 m3">17-18, Gongwon-ro 6na-gil,</li>
               	<li class="sm1">Guro-gu, Seoul, Korea (06042)</li>
               	<li class="sm2 m2">P. +82-2-1111-1111</li>
               	<li class="sm2">T. +82-2-2222-2222</li>
               	<li class="sm2">E. jongkwong@naver.com</li>
			</ul>
		</div>
	</div>
	<div class="slide4_bottom"></div>
	<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
		<script charset="UTF-8">
			new daum.roughmap.Lander({
           	"timestamp" : "1683632645677",
           	"key" : "2epsy",}).render();
		</script>
	</div>
</div>
<!-- **********************라이브러리*************************** -->
<script>
     $(document).ready(function () {
       $("[inner]").hide;
       $(".fullpage").fullpage({
		autoScrolling: true,
        	scrollHorizontally: true,
         	verticalCentered: false,
         	navigation: true,
         // 페이지 이동할 때
		onLeave: function (destination, index, nextIndex, direction) {
           	var leavingSection = this;
          	 	if (index == 1){
             		$("#slide2_top_inner1").removeClass("active");
             		$("#slide2_top_inner2").removeClass("active");
             		$(".footer").css("color", "white").css("background-color","transparent");
             		$(".footer p, .fa-brands").css("background-color", "transparent");
             		$(".footer_box").css("opacity", "0");
            		$("#slide1_title").addClass("slide1_title:before");
            	}else if(index == 2){
             		$("#slide2_top_inner1").addClass("active");
             		$("#slide2_top_inner2").addClass("active");
             		$(".footer").css("color", "white").css("background-color","transparent");
             		$(".footer p, .fa-brands").css("background-color", "transparent");
            		$(".footer_box").css("opacity", "1");
          		}else if(index == 3){
             		$("#slide2_top_inner1").removeClass("active");
             		$("#slide2_top_inner2").removeClass("active");
             		$("h1").addClass("active");
             		$(".footer").css("color", "white").css("background-color","transparent");
            		$(".footer p, .fa-brands").css("background-color", "transparent");
             		$(".footer_box").css("opacity", "1");
           	}else if(index == 4){
             		$(".footer").css("color", "black").css("background-color","rgb(0, 0, 0, 0.8)");
            		$(".footer p").css("color", "white");
             		$(".fa-brands").css("background", "black");
            		$("#slide2_top_inner1").removeClass("active");
             		$(".footer_box").css("opacity", "1");      
         		}},
		});
	});
     
	var swiper1 = new Swiper(".mySwiper", {
		speed: 1000,
       	slidesPerView: 5,
       	loop: true,
       	autoplay: { speed: 100, delay: 1000, disableOnInteraction: false },
       	pagination: false,
     	});
</script>
</body>
</html>
