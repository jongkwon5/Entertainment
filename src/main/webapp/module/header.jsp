<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/cd8f90f87a.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel='stylesheet' href="${context}/resources/css/stylesheet_header.css"/>
</head>
<body>
	<% String name =(String)session.getAttribute("NAME"); 
	String login_chk = (String)request.getAttribute("UPDATE_RESULT"); 
 	String phota = (String)session.getAttribute("login_photo"); 
 	String photo = (String)session.getAttribute("photo"); %>
	<div class="header">
		<ul>
			<li id="logo"></li>
        </ul>
        <ul class="header_menu">
			<li>
				<a class="btn btn_home" href="Entertain_main.do" style="cursor: pointer" >
					<spring:message code="message.home"/>
				</a>
			</li>
			<li>
            	<a class="btn btn_company" href="Entertain_company.do" style="cursor: pointer">
            		<spring:message code="message.company"/>
            	</a>
			</li>
			<li>
            	<a class="btn btn_artist" href="Entertain_artist.do" style="cursor: pointer">
            		<spring:message code="message.artist"/>
            	</a>
			</li>
			<li>
	            <a class="btn btn_audition" href="Entertain_audition.do" style="cursor: pointer">
	            	<spring:message code="message.audition"/>
	            </a>
         	</li>
          	<li>
	            <a class="btn btn_board" href="Entertain_board_list.do" style="cursor: pointer">
	            	<spring:message code="message.board"/>
	           	</a>
          	</li>
		</ul>
		<ul class="header_mypage">
			<a href="login.do">
				<c:choose>
					<c:when test="${empty name || empty photo}">
						<div class="my_page_icon" style="background-image: url('resources/Image/Entire/default_2.png')"></div>
					</c:when>
					<c:otherwise>
						<div class="my_page_icon" style="background-image: url(<%=phota%>)"></div>
							<p id="hidden_name"><%= name+"님"%></p>
							<form action="logOut.do" method="post" id="logout">
								<button name="cmd" id="logout" type="submit"  value="member_logout">logout</button>
							</form>
					</c:otherwise>
				</c:choose>
    		</a>
		</ul>
	</div>
</body>
</html>
