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

<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${context}/resources/css/style2.css">

    <link rel="stylesheet" href="${context}/resources/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${context}/resources/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="${context}/resources/css/style.css">




</head>
<style>
		ul {
			list-style: none;
			width : 30%;
			display: inline-block;
		}
		
		li {
			float: left;
			margin-left : 5px;
		}
	</style>



<body>
<% String id =(String)session.getAttribute("AA");
String chk = (String)request.getAttribute("UPDATE_RESULT");%>

<%
String extractedPart = request.getParameter("extractedPart");
System.out.println(extractedPart);
if (extractedPart == null) {
    extractedPart = ""; // 값이 없을 경우 빈 문자열로 초기화
}
%>

<jsp:include page="/module/header.jsp"></jsp:include>
	<div class="container">
		
      <!--**************************** 메인 ****************************-->
		<div id="main">
			 <div class="board">
        <h1>게시판 목록  </h1>
        <p style="color:black">전체 게시글 수 </p>
        <p style="color:black">${extractedPart}</p>
        <div class="search-bar">
        	<select name="searchType" id="searchType">
        		<option value="title">제목</option>
        		<option value="writer">작성자</option>
        	</select>
            <input type="text" id="searchInput" placeholder="검색어를 입력하세요...">
            <button type="button" id="searchButton">검색</button>
            <button type="button" id="allListButton" onclick="location.href='Entertain_board_list.do'">전체글</button>
        </div>
        <table class="table table-striped custom-table">
           <thead>
            <tr>
                <th scope="col">번호</th>
                <th scope="col">작성자</th>
                <th scope="col">제목</th>
                <th scope="col">생성일자</th>
                <th scope="col">조회수</th>
                
            </tr>
      </thead>
   <tbody>
            <c:forEach items="${boardList}" var="board">
        
            	<c:choose>
            	<c:when test="${total == 0}">
           		 <tr>
                	<td colspan="5">검색 결과가 없습니다</td>
           		 </tr>
        		</c:when>
            	<c:otherwise>
                <tr scope="row" class="boardList" onclick="window.location.href='getOneBoard.do?board_number=${board.Board_Number}'" style="cursor: pointer;">
                  	<td>${board.Board_Number}</td>
                    <td>${board.Board_User_Id}</td>
                    <td>${board.Board_Title}[${board.comment_count}]</td>
                    <td><fmt:formatDate value="${board.Board_Create_Date}" pattern="YY년 MM월 dd일 a HH시 mm분" /></td>
                	<td>${board.Board_View_Count}</td>
                </tr>
                </c:otherwise>
                </c:choose>
            </c:forEach>
  
</tbody>
        </table>
        <form action="Entertain_board_list.do" method="get" id="listForm">		
		</form>
        <button id="writeButton" type="button" onclick="location.href='boardWrite.do'">게시글 쓰기</button>
    </div>
<div>
    <ul class="btn-group pagination">
        <c:if test="${pageMaker.prev }">
            <li>
                <c:url value="/Entertain_board_list.do" var="prevUrl">
                    <c:param name="page" value="${pageMaker.startPage-1}"/>
                    <c:param name="searchType" value="${param.searchType}"/>
                    <c:param name="searchInput" value="${param.searchInput}"/>
                </c:url>
                <a href="${prevUrl}"><i class="fa fa-chevron-left"></i></a>
            </li>
        </c:if>
        
        <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
            <li>
                <c:url value="/Entertain_board_list.do" var="pageUrl">
                    <c:param name="page" value="${pageNum}"/>
                    <c:param name="searchType" value="${param.searchType}"/>
                    <c:param name="searchInput" value="${param.searchInput}"/>
                </c:url>
                <a href="${pageUrl}"><i class="fa">${pageNum}</i></a>
            </li>
        </c:forEach>
        
        <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
            <li>
                <c:url value="/Entertain_board_list.do" var="nextUrl">
                    <c:param name="page" value="${pageMaker.endPage+1}"/>
                    <c:param name="searchType" value="${param.searchType}"/>
                    <c:param name="searchInput" value="${param.searchInput}"/>
                </c:url>
                <a href="${nextUrl}"><i class="fa fa-chevron-right"></i></a>
            </li>
        </c:if>
    </ul>
</div>
	</div>
		</div>
<jsp:include page="/module/footer.jsp"></jsp:include>

<script>

var currentURL = window.location.href;
var baseURL = currentURL.split('?')[0];
var extractedPart = baseURL.substring(baseURL.lastIndexOf('/') + 1);

$(document).on('click', '#searchButton', function(e){
	e.preventDefault();
	var searchInput = $('#searchInput').val();
	var searchType = $('#searchType').val();
	if(searchInput == null || searchInput == ""){
		alert("내용을 입력해주세요");
		return;
	}
	var url = "Entertain_board_list.do";
	url += "?searchType=" + searchType
	url += "&searchInput=" + searchInput
	location.href = url;
	});
</script>
	
</body>
</html>
