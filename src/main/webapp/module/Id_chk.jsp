<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color:black; color:white; text-align: center">
<%	
		
	
	
	%>
	

		<%%>
		<br>
			<h1>이미 가입된 <br>아이디입니다.</h1>
			<script>
			opener.document.frm.chk.value = "0";
			 opener.document.getElementById("hint").innerText = "이미 가입되어 있는 아이디입니다.";
			</script>
		<% %>
	<br>
		<h1>사용 가능한 <br>아이디입니다.</h1>
		<script>
			opener.document.frm.chk.value = "1";
			opener.document.frm.id_chk.value = <%=%>;
			 opener.document.getElementById("hint").innerText = "사용가능한 아이디 입니다";
			</script>
	
		<% %>	
		
		<br><br>
		<button style="width: 50%; height: 50px;" type="button" onclick="self.close()">닫기</button>
		
			
</body>
</html>