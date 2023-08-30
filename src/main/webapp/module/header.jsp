<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/cd8f90f87a.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel='stylesheet' href="${path}/resources/css/stylesheet_header.css"/>
</head>
<body>
<div class="header">
		<ul>
			<li id="logo"></li>
        </ul>
        <ul class="header_menu">
			<li>
				<a class="btn btn_home" href="Entertain_main" style="cursor: pointer" >
					<spring:message code="message.home"/>
				</a>
			</li>
			<li>
            	<a class="btn btn_company" href="Entertain_company" style="cursor: pointer">
            		<spring:message code="message.company"/>
            	</a>
			</li>
			<li>
            	<a class="btn btn_artist" href="Entertain_artist" style="cursor: pointer">
            		<spring:message code="message.artist"/>
            	</a>
			</li>
			<li>
	            <a class="btn btn_audition" href="Entertain_audition" style="cursor: pointer">
	            	<spring:message code="message.audition"/>
	            </a>
         	</li>
          	<li>
	            <a class="btn btn_board" href="Entertain_board_list" style="cursor: pointer">
	            	<spring:message code="message.board"/>
	           	</a>
          	</li>
		</ul>
		<ul class="header_mypage">
			<c:choose>
				<c:when test="${empty user.name}">
					<div class="my_page_icon" style="background-image: url('resources/Image/Entire/default_2.png')"
						onclick="location.href='login.do'">
					</div>
				</c:when>
				<c:otherwise>
					<div class="my_page_icon" style="background-image: url('resources/Image/Entire/default_2.png')"
						onclick="location.href='Entertain_mypage.do'">
					</div>
					<p id="hidden_name">${user.name}님</p>
					<button name="cmd" id="logout" type="submit" onclick="location.href='logOut.do'">logout</button>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
</body>
</html>
