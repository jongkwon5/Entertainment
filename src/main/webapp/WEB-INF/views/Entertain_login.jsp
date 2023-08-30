<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" session="true"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/cd8f90f87a.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/stylesheet_login.css" />
</head>
<body>
<% String id =(String)session.getAttribute("AA");
String chk = (String)request.getAttribute("UPDATE_RESULT");%>
<script>
function login_check(){
	if(chk=="0"){
		aleft("비밀번호가 다릅니다");
	}else if(chk=="-1"){
		alert("존재하지 않는 아이디입니다.");
	}
}

</script>
	<div class="container">
		<jsp:include page="/module/header.jsp"></jsp:include>
      <!--**************************** 메인 ****************************-->
		<div id="main">
			<div class="main_box">
				<div id="background_box"></div>
        		<h2>로그인</h2>
        		<ul id="login_top">
          			<form action="login_chk" method="post" name="frm" onsubmit="">
          				<input type="hidden" name="cmd" value="member_login">
						<li>
							<input type="text" placeholder="아이디" id="id_name" name="id" />
           				</li>
          				<li>
              				<input type="password" placeholder="비밀번호" id="password_name" name="password"/>
 						</li>
            			<li id="save">
              				<label>
              					<input type="checkbox"/>아이디저장
              				</label>
              				<div id="hint"></div>
            			</li>
           				<li>
              				<button onclick="login_check()" type="submit" id="login_button">
                				<span>Login</span>
              				</button>
            			</li>
          			</form>
        		</ul>
				<div id="login_bottom">
          			<a href="Entertain_signup">회원가입</a>
          			<a href="">아이디 찾기</a>
          			<a href="">비밀번호 찾기</a>
        		</div>
       		</div>
		</div>
		<jsp:include page="/module/footer.jsp"></jsp:include>
	</div>
</body>
</html>
