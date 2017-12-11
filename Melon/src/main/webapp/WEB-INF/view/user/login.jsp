<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Melon::음악이 필요한 순간, 멜론</title>
	<link rel="shortcut icon" type="image/x-icon" href="${path }/img/main/favicon.ico" id="favicon"/>
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" href="${path }/css/common.css">
	<link rel="stylesheet" href="${path }/css/user/login.css" />
	
	<script type="text/javascript">
		$(function() {
			var isCheck = false;
			// 아이디 저장 이미지 변경
			$("#login_label").click(function(e) {
				if (!isCheck) {
					isCheck = !isCheck;
					$(this).find("span").css({backgroundPosition: "0 -15px"});
				}
				else {
					isCheck = !isCheck;
					$(this).find("span").css({backgroundPosition: "0 0"});
				}
			});
			
			// 엔터키 입력
			$("input[type='text'], input[type='password']").keyup(function(e) {
				if (e.keyCode == 13) {
					$("#loginBtn").click();
				}
			});
			
			// 로그인
			$("#loginBtn").click(function(e) {
				var id = $.trim($("#id").val());
				var pw = $.trim($("#password").val());
				
				if (id.length == 0) {
					alert("아이디를 입력해 주세요.");
					return false;
				}
				
				if (pw.length == 0) {
					alert("비밀번호를 입력해 주세요.");
					return false;
				}
				
				$("#loginForm").attr({
					action: "${path}/user/doLogin",
					method: "post"
				}).submit();
			});
		});
	</script>
</head>
<body>
	
	<div id="loginWrapper">
		<p id="top-line">
		
		<!-- 로고  -->
		<div class="login-logo">
			<a href="${path }/">
				<img alt="Melon 로고" src="${path }/img/user/login/img_logo206x56.png">
			</a>
		</div>
		
		<!-- 로그인 -->
		<div class="login-login">
			<div class="login-div">
				<c:if test="${error == 'fail' }"><!-- 로그인 실패시 -->
					<p class="txt_error">
						<span class="ico_cau15_red"></span>
						Melon에 등록되지 않은 아이디이거나, 아이디 또는 비밀번호를 잘못 입력 하셨습니다.
					</p>
				</c:if>
				
				<div class="login-area">
					<form id="loginForm">
						<input type="text" name="id" id="id" placeholder="아이디" />
						<input type="password" name="password" id="password" placeholder="비밀번호" />
					</form>
				</div>
				
				<!-- 회원가입 -->
				<div class="login-save">
					<div>
						<input type="checkbox" id="login-checkbox" />
						<label for="login-checkbox" id="login_label">
							<span></span>
							아이디 저장
						</label>
					</div>
					
					<div>
						<a href="${path }/user/find">아이디 찾기</a><span class="bar">|</span>
						<a href="${path }/user/find?find=pw">비밀번호 찾기</a><span class="bar">|</span>
						<a href="${path }/user/join">회원가입</a>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 로그인버튼 -->
		<div class="login-button">
			<button id="loginBtn">로그인</button>
		</div>
		
		<!-- 카카오계정 로그인 -->
		<div class="kakao-button">
			<button id="kakaoBtn">
				<span>카카오계정 로그인</span>
			</button>
		</div>
		
		<jsp:include page="/WEB-INF/view/user/user_footer.jsp" />
	</div>
	
</body>
</html>