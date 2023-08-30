<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/cd8f90f87a.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link href="<c:url value="/resources/css/stylesheet_signup.css"/>" rel='stylesheet' />
</head>
<body>
<% String id =(String)session.getAttribute("ID");
   	String namea = (String)request.getAttribute("NAMER");
	String ab = (String)request.getAttribute("UPDATE_RESULT");
  	String id_chk = (String)request.getAttribute("id");%>
<script>
	var hint = document.getElementById("hint");
	function login_check(){
		if(!id_name.value){
  				alert("아이디를 입력하세요");
  				document.getElementById("hint").innerText = "아이디를 입력하세요.";
  				return false;
  			}else if(!password_name.value){
  				alert("비밀번호를 입력하세요");
  				document.getElementById("hint").innerText = "비밀번호를 입력하세요.";
  				return false;
  			}else if(!password_name2.value){
				alert("비밀번호를 입력하세요");
				document.getElementById("hint").innerText = "비밀번호를 입력하세요.";
				return false;
			}else if(password_name.value != password_name2.value){
 				alert("비밀번호를 동일하게 입력하세요");
 				document.getElementById("hint").innerText = "비밀번호를 동일하게 입력하세요.";
 				return false;
 			}else if(!name_singup.value){
  				alert("이름을 입력하세요");
  				document.getElementById("hint").innerText = "이름을 입력하세요.";
  				return false;
  			}else if(!email.value){
  				alert("이메일을 입력하세요");
  				document.getElementById("hint").innerText = "이메일을 입력하세요.";
  				return false;
  			}else if(!phone_name.value){
  				alert("전화번호를 입력하세요");
  				document.getElementById("hint").innerText = "전화번호를 입력하세요.";
  				return false;
  			}else if(chk.value=="0"){
  				alert("아이디 중복체크를 해주세요");
  				document.getElementById("hint").innerText = "아이디 중복체크를 해주세요";
  				return false;
  			}else if(id_name.value != id_chk.value){
  				alert("아이디가 변경되었습니다. 다시 아이디 중복체크를 해주세요");
  				document.getElementById("hint").innerText = "다시 아이디 중복체크를 해주세요";
  				return false;
  			}
  			else if(!checkbox.checked){
  				alert("개인정보 제공동의를 체크해주세요");
  				document.getElementById("hint").innerText = "개인정보 제공동의를 체크해주세요.";
  				return false;
  			}else{
  				if(chk.value=="1"){
  				 document.getElementById("frm").submit();
  			      return true;	
  				}
  			}
  		}
  	</script>  
<div class="container">
	<jsp:include page="/module/header.jsp"></jsp:include>
	<div class="main">
		<div id="background_box"></div>
        <h2>회원가입</h2>
    	<form action="/parkJK/MemberController" method="post" id="frm" name="frm">
          	<input type='hidden' name='cmd' value='member_signup'>
          	<input type='hidden' id='chk' value="0">
			<input type='hidden' id='id_chk' value="0">
			<ul id="signup_top">
            	<div id="signup_box1">
					<li>
                		<input type="text" placeholder="아이디" id="id_name" name="id"/>
                		<button type="button" id="main_bt" onclick="openIdChk()">중복확인 </button>
             		</li>
            	</div>
            	<li>
            		<input type="password" placeholder="비밀번호" id="password_name" name="password"/>
                </li>
            	<li>
            		<input type="password" placeholder="비밀번호재확인" id="password_name2" name="password2"/>
            	</li>
           	 	<li>
           	 		<input type="text" placeholder="이름" id="name_singup" name="name"/>
           	 	</li>
            	<div id="signup_box2">
              		<li>
                		<input type="text" placeholder="이메일" name="email" id="email"/>
              		</li>
				</div>
            	<div id="signup_box3">
              		<li>
                		<input type="number" placeholder="전화번호" id="phone_name" name="phone"/>
                		<button id="main_bt">인증번호발송</button>
              		</li>
				</div>
            	<li>
              		<label>
              			<input type="checkbox" id="checkbox" />개인정보 제공동의
              		</label>
             		<div id="hint"></div>
             	</li>
            	<li>
              		<button id="signup_button"  type="submit" onclick="login_check();return false">
              			<span>가입하기</span>
              		</button>
           		</li>
			</ul>
		</form>
	</div>
</div>
<jsp:include page="/module/footer.jsp"></jsp:include>
</body>
</html>