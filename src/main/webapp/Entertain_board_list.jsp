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
<link rel="stylesheet" type="text/css" href="${context}/resources/css/stylesheet_board_list.css" />
</head>
<body>
<% String id =(String)session.getAttribute("AA");
String chk = (String)request.getAttribute("UPDATE_RESULT");%>

<jsp:include page="/module/header.jsp"></jsp:include>
	<div class="container">
		
      <!--**************************** 메인 ****************************-->
		<div id="main">
			 <div class="board">
        <h1>게시판 목록</h1>
        <div class="search-bar">
        	<select name="searchType" id="searchType">
        		<option value="title">제목</option>
        		<option value="writer">작성자</option>
        	</select>
            <input type="text" id="searchInput" placeholder="검색어를 입력하세요...">
            <button type="button" id="searchButton">검색</button>
            <button type="button" id="allListButton" onclick="location.href='Entertain_board_list.do'">전체글</button>
        </div>
        <table class="post-table">
            <tr>
                <th style="width:10%">번호</th>
                <th style="width:30%">작성자</th>
                <th style="width:40%">제목</th>
                <th style="width:20%">생성일자</th>
            </tr>
            <c:choose>
        <c:when test="${empty boardList}">
            <tr>
                <td colspan="5">검색 결과가 없습니다</td>
            </tr>
        </c:when>
        <c:otherwise>
            <c:forEach items="${boardList}" var="board">
                <tr class="boardList" onclick="window.location.href='getOneBoard.do?board_number=${board.board_number}'" style="cursor: pointer;">
                    <td>${board.board_number}</td>
                    <td>${board.board_user_id}</td>
                    <td>${board.board_title}</td>
                    <td><fmt:formatDate value="${board.board_create_date}" pattern="YY년 MM월 dd일 a HH시 mm분" /></td>
                </tr>
            </c:forEach>
        </c:otherwise>
    </c:choose>
        </table>
        <button id="writeButton" type="button" onclick="location.href='boardWrite.do'">게시글 쓰기</button>
    </div>
       	
		</div>
		</div>
<jsp:include page="/module/footer.jsp"></jsp:include>

<script>



$(document).on('click', '#searchButton', function(e){
	e.preventDefault();
	var searchInput = $('#searchInput').val();
	var searchType = $('#searchType').val();
	if(searchInput == null || searchInput == ""){
		alert("내용을 입력해주세요");
		return;
	}
	var url = "getBoardSearch.do";
	url += "?searchType=" + searchType
	url += "&searchInput=" + searchInput
	location.href = url;
	});
</script>
	
</body>
</html>
