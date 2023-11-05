<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="https://kit.fontawesome.com/cd8f90f87a.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${context}/resources/css/stylesheet_signup.css"/>
</head>
<body>
<div class="container">
    <jsp:include page="/module/header.jsp"></jsp:include>
    <div class="main">
        <div id="background_box"></div>
        <h2>회원가입</h2>
        <form action="singUp" method="get" id="frm" name="frm">
            <input type='hidden' id='chk' value="0">
            <ul id="signup_top">
                <div id="signup_box1">
                    <li>
                        <input type="text" placeholder="아이디" id="id" name="user_id" oninput="checkId()"/>
                        <span class="id_help">최대 10자까지 입력 가능합니다.</span>
                        <span class="id_ok">사용 가능한 아이디입니다.</span>
                        <span class="id_already">이미 사용중인 아이디입니다.</span>
                    </li>
                </div>
                <li>
                    <input type="password" placeholder="비밀번호" id="pw" name="user_password"/>
                    <span class="password_help">특수문자를 포함하여 최대 10자까지 입력 가능합니다.</span>
                </li>
                <li>
                    <input type="password" placeholder="비밀번호 재확인" id="pw2" name="pw2" required/>
                    <span class="pw_chk">비밀번호가 다릅니다.</span>
                </li>
                <li>
                    <input type="password" placeholder="이름" name="user_name" required/>
                </li>
                <li>
                    <label>
                        <input type="checkbox" id="checkbox"/>개인정보 제공동의
                    </label>
                    <div id="hint"></div>
                </li>
                <li>
                    <button id="signup_button" type="submit" onclick="signUp_check();return false">
                        <span>가입하기</span>
                    </button>
                </li>
            </ul>
        </form>
    </div>
</div>
<jsp:include page="/module/footer.jsp"></jsp:include>
<script>
    function checkId() {
        var id = $('#id').val();
        $.ajax({
            url: './idCheck',
            type: 'post',
            data: {id: id},
            success: function (cnt) { //컨트롤러에서 넘어온 cnt값을 받는다
                if (cnt == 0) { //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디
                    $('.id_ok').css("display", "inline-block");
                    $('.id_already').css("display", "none");
                    $('#chk').val(1);
                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                    $('.id_already').css("display", "inline-block");
                    $('.id_ok').css("display", "none");
                    alert("이미 사용중인 아이디입니다.");
                    $('#id').val('');
                }
            },
            error: function () {
                alert("에러입니다");
            }
        });
    };

    $(function () {
        $('#pw2').blur(function () {
            if ($('#pw').val() != $('#pw2').val()) {
                if ($('#pw2').val() != '') {
                    alert("비밀번호가 일치하지 않습니다.");
                    $('.pw_chk').css("display", "inline-block");
                    $('#pw2').val('');
                    $('#chk').val(0);
                    $('#pw2').focus();
                }
            } else {
                $('.pw_chk').css("display", "none");
                var currentValue = parseInt($('#chk').val());
                $('#chk').val(1);
            }
        })
    });

    function signUp_check() {
        if ($('#chk').val() != 1) {
            alert("다시 입력해주세요.");
            return;
        } else {
            document.frm.submit();
        }
    };

</script>
</body>
</html>