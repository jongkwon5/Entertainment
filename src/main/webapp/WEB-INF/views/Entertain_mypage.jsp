<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Enumeration"%>
<% request.setCharacterEncoding("utf-8"); %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/cd8f90f87a.js" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="resources/css/stylesheet_mypage.css" />
</head>
<body>
	<% String id =(String)session.getAttribute("ID");
	String password =(String)session.getAttribute("Password");
   	String phota = (String)session.getAttribute("login_photo"); 
	String photo = (String)session.getAttribute("photo"); %>
<script>
	function button1_click() {
		if(confirm("회원탈퇴 하시겠습니까?")) {
			pwd = prompt("회원탈퇴를 하실려면 비밀번호를 입력해주세요");
			if(pwd == <%= password %>){
				var form = document.querySelector('form[name="frm"]');
				form.action = "/parkJK/MemberController?cmd=member_delete";
  			    form.submit();
  			}else{
  				alert("비밀번호가 다릅니다.");
  			}
  			} else {
  		 
  		 }
  	}
  		
  	 var hint = document.getElementById("hint");
  		function update_check(){
  			if(confirm("회원수정 하시겠습니까?")){
  				 pwd = prompt("회원수정을 위해 기존 비밀번호를 입력해주세요");
  					if(pwd == <%= password %>){
  						if(!password_name.value){
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
  		  	 			}else if(!email.value){
  		  	  				alert("이메일을 입력하세요");
  		  	  				document.getElementById("hint").innerText = "이메일을 입력하세요.";
  		  	  				return false;
  		  	  			}else if(!phone_name.value){
  		  	  				alert("전화번호를 입력하세요");
  		  	  				document.getElementById("hint").innerText = "전화번호를 입력하세요.";
  		  	  				return false;
  		  	  			}else{
  							form.submit();
  							return true;}
  					}else{
  						alert("비밀번호가 틀립니다");
  	  	  	  			return false;
  					}
  			
  			}
  		}
  	  	
  	  
  	  	
  		
  	  			
  	  			
  	  			
  				
  	
  		function readURL(input) {
  		  if (input.files && input.files[0]) {
  		    var reader = new FileReader();
  		    reader.onload = function(e) {
  		      document.getElementById('preview').src = e.target.result;
  		    };
  		    reader.readAsDataURL(input.files[0]);
  		  } else {
  		    document.getElementById('preview').src = "";
  		  }
  		}

  		

  		
  	</script>
  	<jsp:include page="/module/header.jsp"></jsp:include>
    <div class="container">
      <!--**************************** 상단 ****************************-->
       
      <!--**************************** 메인 ****************************-->
      <div class="main">
     
        <h2>개인정보수정
        
        ${sessionScope.id};
       ${user_info.id};
  	${user_info.getId};
        
        
        </h2>
        <form action="/parkJK/MemberController?cmd=member_update" method="post" enctype="multipart/form-data" name="frm">
          <input type='hidden' name='cmd' value='member_update'>
          <ul id="signup_top">
            <div id="signup_box1">
	    		<div id="img_box">
	  <% if (photo == null) { %>
    <img id="preview" src="/parkJK/Entertain/Image/Entire/default_2.png"
     style="width:200px; height:200px; margin-bottom:8px;"></img><br>
    <% } else { %>
    <img id="preview" src="<%=phota%>"
     style="width:200px; height:200px; margin-bottom:8px;"></img><br>
    <% } %>
  
                 </div>
                    <label for="file-input" style="font-weight: 100;">프로필 사진 수정</label> 
                    <input type="file" id="file-input" onchange="readURL(this);" name="file_photo"
                    
                    onchange="readURL(this)"></input>
            
   
            
            </div>
            <li>
            <label>
           	  수정할 비밀번호
            <input type="password" placeholder="비밀번호" id="password_name"
                name="password" value = "<%=password%>"/>
             </label>
            </li>
            <li>
             <label>
         	    비밀번호 재확인
         	      
            <input type="password" placeholder="비밀번호재확인" id="password_name2"
                name="password2" value = "<%=password%>"/>
           </label>
            </li>
           
           
            
            <div id="signup_box2">
              <li>
              <label>
         	   이메일
  
                <input type="text" placeholder="이메일" name="email"
              value = '' >
             </label>
              </li>
            </div>
            
            <div id="signup_box3">
              <li>
               <label>
        	전화번호
        	
                <input type="text" placeholder="전화번호" id="phone_name"
                name="phone" value = ""/>
                </label>
              </li>
            </div>
            <li>

              <div id="hint"></div>
            </li>
            <li id="signup_box4">
             <button id="mypage_delete" name='cmd' value='member_delete' onclick="button1_click(); return false;"><span>회원탈퇴</span></button>

              <button id="mypage_update" name='cmd' value='member_update' onclick="update_check(); return false;" > 
<!--     <button id="mypage_update"  type="submit">  -->
             <span>수정하기</span></button>
            </li>
          </ul>
        </form>
     
      </div>
      <!--**************************** 하단 ****************************-->
              <jsp:include page="/module/footer.jsp"></jsp:include>
       </div>
         
 
    <!--**************** 라이브러리 ******************-->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
  </body>
</html>

