<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/cd8f90f87a.js" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="${context}/resources/css/stylesheet_footer.css" />
</head>
<body>
	<div class="footer">
		<c:choose>
			<c:when test="${user.user_id == 'admin'}">
				<span style="float:right;margin-right: 50px; color:red;">
					<a href="/parkJK/Entertain/view/admin_home.jsp">안녕하세요 관리자님! 환영합니다</a><br><br>
				</span>
			</c:when>
			<c:otherwise>
				<p>
					<spring:message code="message.company2"/>
				</p>
			</c:otherwise>
		</c:choose>
		<ul class="footer_box">
			<li class="footer_menu">
				<p>
					<a href="main?lang=en">
						<spring:message code="message.language.en"/>
					</a>&nbsp;&nbsp;
				</p>
			</li>
			<li class="footer_menu">
      			 <p>
      			 	<a href="main?lang=ko">
						<spring:message code="message.language.ko"/>
					</a>
				</p>
			</li>
		</ul>
        <ul id="footer_sns">
			<li>
				<a href="https://ko-kr.facebook.com/" target="_blank">
					<i class="fa-brands fa-square-facebook"></i>
            	</a>
			</li>
			<li>
				<a href="https://www.instagram.com/" target="_blank" >
					<i class="fa-brands fa-instagram"></i>
				</a>
			</li>
			<li>
            	<a href="https://twitter.com/" target="_blank">
            		<i class="fa-brands fa-square-twitter"></i>
            	</a>
			</li>
			<li>
				<a href="https://www.youtube.com/" target="_blank">
					<i class="fa-brands fa-square-youtube"></i>
				</a>
			</li>
			<li>
            	<i class=""></i>
 			</li>
		</ul>
	</div>
</body>
</html>