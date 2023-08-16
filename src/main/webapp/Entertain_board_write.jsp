<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/cd8f90f87a.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel="stylesheet" type="text/css" href="${context}/resources/css/stylesheet_board_write.css" />
</head>
<body>
<% String id =(String)session.getAttribute("AA");
String chk = (String)request.getAttribute("UPDATE_RESULT");%>

<jsp:include page="/module/header.jsp"></jsp:include>
	 <div class="container">
	 	<div id="main">
	 
    <h1>게시판</h1>
    <form class="post-form" action="createBoard.do" method="get">
    <input type="hidden" value="${user.id}" name="board_user_id">
      <div class="form-group">
        <label for="title">제목</label>
        <input type="text" id="title" name="board_title" placeholder="제목을 입력하세요" required>
      </div>
      
      <div class="form-group">
        <label for="content">내용</label>
        <textarea id="content" name="board_text" placeholder="내용을 입력하세요" required></textarea>
      </div>
      
    
      <button type="submit" id="createButton">글쓰기</button>
    </form>
  </div>
  </div>

<jsp:include page="/module/footer.jsp"></jsp:include>

<script>



$(document).on('click', '#createButton', function(e){
	e.preventDefault();
	var title = $('#title').val();
	var content = $('#content').val();
	if(title == null || content == ""){
		alert("내용을 입력해주세요");
		return;
	}
	 $('.post-form').submit();
	});
</script>
	
</body>
</html>
