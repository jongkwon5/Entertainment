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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${context}/resources/css/stylesheet_board_read.css" />
</head>
<body>
<jsp:include page="/module/header.jsp"></jsp:include>
	<div class="container">
		<div id="main">
    		<h1>게시글</h1><hr />
  	  		<form class="post-form">
   		 		<input type="hidden" value="${board.board_user_id}" name="board_user_id">
      			<div id="board_top">
     				<p>${board.board_title}</p>
     		 		<button type="button" id="allListBT" onclick="location.href='boardList'">전체글</button>
    		 		<c:if test="${board.board_user_id eq user.id}">
    		  			<button type="button" id="deleteBT" onclick="deleteButton(event)">글삭제</button>
    		   			<button type="button" id="updateBT" onclick="location.href='getBoardUpdate?board_number=${board.board_number}'">글수정</button>
    		 		</c:if>
      			</div>
        		<div id="board_middle">${board.board_user_id}&nbsp;&nbsp; | &nbsp;&nbsp;
        			<fmt:formatDate value="${board.board_create_date}" pattern="MM월 dd일 a HH시 mm분" />
				</div>
      			<div id="board_bottom">${board.board_text}</div>
			</form>
   			<div class="comments">
    			<p>댓글 (${getOneCommentCount})</p><hr/>
  				<table cellpadding="0" cellspacing="0">
					<c:choose>
	            		<c:when test="${empty comment}">
				            <tr>
				            	<td colspan="4" style="height: 580px; text-align: center;">작성된 댓글이 없습니다.</td>
							</tr>
	            		</c:when>
	           			<c:otherwise>
							<c:forEach items="${comment}" var="comment">
				            	<tr>            			
				            		<td>${comment.board_number_count}</td>
				            		<td>${comment.comment_user_id}</td>
				            		<td id="commentText_${comment.comment_number}">${comment.comment_text}</td>
				            		<td>
				            			<fmt:formatDate value="${comment.comment_create_date}" pattern="MM월 dd일 a HH시 mm분" />
				            			<c:if test="${comment.comment_update_count == 1}">(수정됨)</c:if>
			   						</td>
				            		<c:if test="${comment.comment_user_id eq user.id}">
				            			<td><button id="commentUpdate_${comment.comment_number}" onclick="updateComment(${comment.comment_number})">수정하기</button></td>
				            			<td><button id="commentDelete_${comment.comment_number}" onclick="deleteComment(${comment.comment_number})">삭제하기</button></td>
				            		</c:if>
				            	</tr> 
				           	</c:forEach>
				        </c:otherwise>
					</c:choose>
				</table>
			</div>
			<div class="comment-form">
			    <h2>댓글 작성</h2>
			    <form action="createComment.do" method="get">
			    	<input type="hidden" value="${board.board_number}" name="board_number">
			    	<input type="hidden" value="${user.id}" name="comment_user_id">
			        <div class="form-group">
			            <textarea id="comment-text" name="comment_text" placeholder="댓글 내용" required></textarea>
			        </div>
			        <button type="submit" id="addCommentButton">댓글 추가</button>
			    </form>
			</div> 
		</div>
	<jsp:include page="/module/footer.jsp"></jsp:include>
</div>

<script>
var userPassword = "${user.password}";
var board_number = "${board.board_number}";
var isCommentChk = false;
function updateComment(comment_number) {
    var commentTextElement = document.querySelector("#commentText_" + comment_number);
    var commentUpdateElement = document.querySelector("#commentUpdate_" + comment_number);
    var commentText = commentTextElement.textContent.trim();
    var inputElement = document.createElement("input");
    inputElement.type = "text";
    inputElement.value = commentText;
    commentTextElement.innerHTML = "";
    commentUpdateElement.innerHTML = "수정완료";
    commentTextElement.appendChild(inputElement);
    commentUpdateElement.onclick = function() {
		if (isCommentChk) {
            alert("동시에 수정은 불가능합니다.");
            return;
        }
	    let comment_text = inputElement.value;
		commentUpdateElement.innerHTML = "수정하기";
		$.ajax({
			type : "post",
	    	contentType : "application/json; charset=UTF-8",
	    	data : JSON.stringify({"comment_text": comment_text, "board_number": board_number, "comment_number": comment_number}),
	    	dataType : "json",
	    	url:"<c:url value='updateComment'/>", 
	    	success:function(data){ 
				console.log(data);
	    		alert("성공");
	    		commentTextElement.innerHTML = comment_text;
	    		isCommentChk = false;
	  	    },        
	  	    error:function(request,status,error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	  	        isCommentChk = false;
	  	    }
		});  
	   	isCommentChk = false;
    };
};

function deleteButton(event){
	var passwordChk = prompt("게시글을 삭제하시려면 회원 비밀번호를 입력하세요")
	if(passwordChk === userPassword){
		location.href = "deleteBoard?board_number=" + board_number; 
	}else{
		alert("비밀번호 불일치");}
	}

function deleteComment(comment_number){
	var passwordChk = prompt("댓글을 삭제하시려면 회원 비밀번호를 입력하세요")
	if(passwordChk === userPassword){
		location.href = "deleteComment?comment_number=" + comment_number + "&board_number=" + board_number; 
		alert("일치");
	}else{
		alert("비밀번호 불일치");}
	}
</script>	
</body>
</html>
