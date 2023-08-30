<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<script src="https://kit.fontawesome.com/cd8f90f87a.js" crossorigin="anonymous"></script>
<link href="<c:url value="resources/css/stylesheet_audition.css"/>" rel='stylesheet' />
<% String id =(String)session.getAttribute("ID"); %>
<% String chk =(String)session.getAttribute("chk"); %>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	$(()=> {
		$(document).ready(function(){
			$(".fullpage").css("display", "block");
        });
        $(".fa-solid").click(function(){
			$.fn.fullpage.moveTo(1, 1500); // 이동하고싶은 페이지
			$.fn.fullpage.setScrollingSpeed(700);
        });
        $("#slide_click").hover(function(){
			$("#who").html("Next To You");
			$("#main_left div").css("filter", "grayscale(0%)")},
       	function(){
            $("#who").html("Who's Next?");
            $("#next").fadeTo(500, 0);
            $("#who").fadeTo(500, 1);
            $("#main_left div").css("filter", "grayscale(100%)");
        });
        $("#slide1_text2").fadeIn(2000, "swing");
        setTimeout(function(){
          $(".underline1").addClass("active");
        }, 900);
        $(".slide1_div > h1").hover(function(){
			$(".slide1_div").css("background-image",
            	'linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)), url("../Image/company/slide1_top_inner_bg.jpg")'
          	);
		});
	});
      // click on 라벨 추가 모달 열기
	$(document).on('click', '#slide_click', function(e){
		if((<%=chk%>) == "1"){
			alert("이미 지원하셨습니다.");
			return false;
		}else if ((<%=id%>) == null){
			alert("회원만 지원 가능합니다.");
		}else{
			console.log("click event");
	  		$('#modal').addClass('show');
		}});
// 모달 닫기
	$(document).on('click', '#close_btn', function(e){
		console.log("click event");
		$('#modal').removeClass('show');
	});

	function readURL(input) {
		if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e){
			document.getElementById('preview').src = e.target.result;
	    };
	    reader.readAsDataURL(input.files[0]);
	  	}else{
	    document.getElementById('preview').src = "";
	  	}};
</script>
</head>
<body>
<jsp:include page="/module/header.jsp"></jsp:include>
<div class="container">
	<div class="main">
		<div id="main_left">
			<div style="background-image: url('${context}resources/Image/company/slide4/back1.jpg')"></div>
			<div style="background-image: url('${context}resources/Image/company/slide4/back2.jpg')"></div>
          	<div style="background-image: url('${context}resources/Image/company/slide4/back3.jpg')"></div>
          	<div style="background-image: url('${context}resources/Image/company/slide4/back4.jpg')"></div>
          	<div style="background-image: url('${context}resources/Image/company/slide4/back5.jpg')"></div>
          	<div style="background-image: url('${context}resources/Image/company/slide4/back6.jpg')"></div>
          	<div style="background-image: url('${context}resources/Image/company/slide4/back7.jpg')"></div>
          	<div style="background-image: url('${context}resources/Image/company/slide4/back8.jpg')"></div>
          	<div style="background-image: url('${context}resources/Image/company/slide4/back9.jpg')"></div>
        </div>
		<div class="modal" id="modal">
			<div class="modal_body">
            	<div class="m_head">
					<div class="modal_title">JK Entertainment 오디션</div>
              		<div class="close_btn" id="close_btn">X</div>
            	</div>
            	<div class="m_body">
              		<form action="/parkJK/MemberController?cmd=member_audition" method="post" enctype="multipart/form-data">
                		<div id="m_top_text">
                  			<div id="m_top_left">
             					<img id="preview" src="/parkJK/Entertain/Image/Entire/default.jpg"></img><br>
                    			<label for="file-input" style="font-weight: 100;">프로필 사진 등록</label> 
                    			<input type="file" id="file-input" onchange="readURL(this);" name="audition_photo"></input>
                  			</div>
							<div id="m_top_right">
              					<div class="modal_label">이름</div>
              					<input type="text" class="input_box" id="name_box" name="audition_name"/>
              					<div class="modal_label">연락처</div>
              					<input type="text" class="input_box" id="des_box" name="audition_phone"/>
              					<div class="modal_label">E-mail</div>
              					<input type="text" class="input_box" id="des_box" name="audition_email"/>
             					<div></div>
            				</div>
            			</div>
             			<div class="modal_label" id="modal_text">내용</div>
            			<textarea class="text_box" name="audition_text"  style="resize: none;"></textarea>
            		</form>
            	</div>
            	<div class="m_footer">
              		<button class="modal_btn save" id="save_btn" type="submit" onclick="aud_chk()">지원하기</button>
           	 	</div>
			</div>
        </div>
        <div id="main_right">
			<ul>
     			<li id="who">Who's Next?</li>
            	<li id="top_2">
              		<p style="font-size: 50px">JK ENTERTAINMENT</p><br/> 
                	<p style="font-size: 38px">Online Audition</p>
            	</li>
            	<li id="top_3">
              		<p>차세대 스타를 찾고 있습니다.<br>지금 그 주인공이 되어보세요</p>
            	</li>
           	 	<li>
           	 		<button id="slide_click">오디션 지원하기</button>
           	 	</li>
          	</ul>
		</div>
	</div>
</div>
<jsp:include page="/module/footer.jsp"></jsp:include>
</body>
</html>