<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="https://kit.fontawesome.com/cd8f90f87a.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${context}/resources/css/stylesheet_artist.css"/>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"/>
    </script>
</head>
<body>
<script>
    $(() => {
        $('.grid').hover(
            function () {
                $(this).find('.grid_text').fadeIn(400);
            },
            function () {
                $(this).find('.grid_text').fadeOut(0);
            }
        );
    });
</script>
<jsp:include page="/module/header.jsp"></jsp:include>
<div class="container">
    <!--**************************** main ****************************-->
    <div class="main">
        <div id="main_grid">
            <div id="grid_top">
                <h1>Music of JK Ent embodies each artists' lifestyle.<br>
                    We discover the value of music with different artists and their lifestyle.</h1>
                <hr>
                <p style="color: grey; font-size: 16px;">
                    JK Ent 음악은 아티스트들의 라이프스타일이 담겨있습니다. 그들의 각기 다른 모습을 통해 JK Ent의 음악의 가치를 발견합니다.</p>
            </div>
            <div class="grid" id="grid_1"
                 style="background-image: url('${context}/resources/Image/Artist/a1.jpg'); background-size:cover; background-position:right 20%;">
                <div class="grid_text">LE SSERAFIM</div>
            </div>
            <div class="grid" id="grid_2"
                 style="background-image: url('${context}/resources/Image/Artist/a2.jpg')">
                <div class="grid_text">Zion.T</div>
            </div>
            <div class="grid" id="grid_3"
                 style="background-image: url('${context}/resources/Image/Artist/a3.jpg')">
                <div class="grid_text">IU</div>
            </div>
            <div class="grid" id="grid_4"
                 style="background-image: url('${context}/resources/Image/Artist/a4.jpg')">
                <div class="grid_text">Baek yerin</div>
            </div>
            <div class="grid" id="grid_5"
                 style="background-image: url('${context}/resources/Image/Artist/a5.jpg');background-position:right 40%;">
                <div class="grid_text">NMIXX</div>
            </div>
            <div class="grid" id="grid_6"
                 style="background-image: url('${context}/resources/Image/Artist/a6.jpg')">
                <div class="grid_text">Yang DaIl</div>
            </div>
            <div class="grid" id="grid_7"
                 style="background-image: url('${context}/resources/Image/Artist/a7.jpg');background-position:right 10%;">
                <div class="grid_text">NewJeans</div>
            </div>
            <div class="grid" id="grid_8"
                 style="background-image: url('${context}/resources/Image/Artist/a8.jpg');background-position:right 0%;">
                <div class="grid_text">IVE</div>
            </div>
            <div class="grid" id="grid_9"
                 style="background-image: url('${context}/resources/Image/Artist/a9.jpg');background-position:right 10%;">
                <div class="grid_text">SUZY</div>
            </div>
            <div class="grid" id="grid_10"
                 style="background-image: url('${context}/resources/Image/Artist/a10.jpg')">
                <div class="grid_text">Jeon Somi</div>
            </div>
        </div>
    </div>
    <jsp:include page="/module/footer.jsp"></jsp:include>
</div>

</body>
</html>
