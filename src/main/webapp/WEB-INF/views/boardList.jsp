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
	
			display: inline-block;
		}
		
		li {
			float: left;
			margin-left : 5px;
			align-self: center;
		}
		
</style>

<body>
<jsp:include page="/module/header.jsp"></jsp:include>
	<div class="container">
		<div id="main">
			<div class="board" style="min-height: 100%;">
        		<h1 style="padding-top:20px; text-align: center;">BOARD</h1>
        		<div class="search-bar">
        			<select name="searchType" id="searchType">
        				<option value="title">제목</option>
        				<option value="writer">작성자</option>
        			</select>
            		<input type="text" id="searchInput" placeholder="검색어를 입력하세요...">
           			<button type="button" id="searchButton"><i class="fa-solid fa-magnifying-glass"></i></button>
      			</div>
        		<table class="table table-striped custom-table">
           			<thead>
            			<tr>
			                <th scope="col" style="width:7%;">번호</th>
			                <th scope="col" style="width:15%;">작성자</th>
			                <th scope="col" style="width:25%;">제목</th>
			                <th scope="col" style="width:15%;">생성일자</th>
			                <th scope="col" style="width:5%;">조회수</th>
            			</tr>
      				</thead>
   					<tbody>
	            		<c:choose>
	            			<c:when test="${total == 0}">
				           		<tr style="background-color: rgba(0, 0, 0, 0.0);">
				           		<td style="text-align: center;" colspan="6">
					                <div style="display: table; width: 100%; height: 67vh;">
					               		<div style="display: table-cell; vertical-align: middle; text-align: center;">
					                   		<p style="font-size:40px; maring:0px; font-weight: bold;"> 게시글이 없습니다.</p>
										</div>
									</div>
	           					 </td>
	        					</tr>
							</c:when>
	            			<c:otherwise>
								<c:forEach items="${boardList}" var="board" varStatus="loop">
									<tr scope="row" class="boardList" onclick="window.location.href='getOneBoard?board_number=${board.Board_Number}'" style="cursor: pointer;">
						                <td>${board.Board_Number}</td>
						                <td>${board.Board_User_Id}</td>
						                <td>${board.Board_Title}[${board.comment_count}]</td>
						                <td><fmt:formatDate value="${board.Board_Create_Date}" pattern="YY년 MM월 dd일 a HH시 mm분" /></td>
						                <td>${board.Board_View_Count}</td>
						            </tr>
						            <c:if test="${loop.index + 1 == boardList.size() && loop.index < 9}">
						                <c:forEach begin="${loop.index + 1}" end="9">
						                    <tr>
						                        <td colspan="6">&nbsp;</td>
						                    </tr>
						                </c:forEach>
						            </c:if>
						        </c:forEach>
							</c:otherwise>
               			 </c:choose>
					</tbody>
        		</table>
        		<form action="boardList" method="get" id="listForm"></form>   
		 		<div id="bottomButton">
        			<button type="button" id="allListButton" onclick="location.href='boardList'">전체글</button>
        			<div id="navi">
					    <ul class="btn-group pagination">
					        <c:if test="${pageMaker.prev }">
					            <li>
					                <c:url value="/boardList" var="prevUrl">
					                    <c:param name="page" value="${pageMaker.startPage-1}"/>
					                    <c:param name="searchType" value="${param.searchType}"/>
					                    <c:param name="searchInput" value="${param.searchInput}"/>
					                </c:url>
					                <a href="${prevUrl}"><i class="fa-solid fa-circle-chevron-left fa-lg"></i></a>
					            </li>
					        </c:if>
					        <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
					            <li>
					                <c:url value="/boardList" var="pageUrl">
					                    <c:param name="page" value="${pageNum}"/>
					                    <c:param name="searchType" value="${param.searchType}"/>
					                    <c:param name="searchInput" value="${param.searchInput}"/>
					                </c:url>
					                <a href="${pageUrl}"><p class="pageNum">${pageNum}</p></a>
					            </li>
					        </c:forEach>
					        <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					            <li>
					                <c:url value="boardList" var="nextUrl">
					                    <c:param name="page" value="${pageMaker.endPage+1}"/>
					                    <c:param name="searchType" value="${param.searchType}"/>
					                    <c:param name="searchInput" value="${param.searchInput}"/>
					                </c:url>
					                <a href="${nextUrl}"><i class="fa-solid fa-circle-chevron-right fa-lg"></i></a>
					            </li>
					        </c:if>
					    </ul>
					</div>
					<button id="writeButton" type="button" onclick="location.href='boardWrite'">게시글 쓰기</button>
				</div>  
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
	var url = "boardList";
	url += "?searchType=" + searchType
	url += "&searchInput=" + searchInput
	location.href = url;
	});
</script>
</body>
</html>
