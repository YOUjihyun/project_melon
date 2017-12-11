<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${path }/css/user/mini_login.css" />
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		$(function () {
			$(".label_check").click(function(e) {
				var checkBox = $(this).closest(".box_check02").find("#inpSaveId");
				
				if (checkBox.prop("checked") == false) {
					$(this).find(".icon").css("background-position", "0 -15px");
				}
				else {
					$(this).find(".icon").css("background-position", "0 0");
				}
			});
			
			// 로그인 버튼
			$("#submitBtn").click(function(e) {
				var id = $.trim($("#id").val());
				var pw = $.trim($("#password").val());
				
				if (id.length != 0 && pw.length != 0) {
					$.post("${path}/user/miniLogin", $("#miniForm").serialize(), function(data) {
						if (data == "success") {
							$(".btn_close").click();
						}
						else {
							alert("아이디, 비밀번호를 확인하세요");
						}
					});
				}
			});
			
			// 로그인창 닫기
			$(".btn_close").click(function(e) {
				userId = $.trim($("#id").val());
				$("#miniWrapper").css("display", "none");
				$("#searchWarpper").prop('disabled', true).css({"pointer-events": "auto", opacity: "1"});
				$("#albumInfoWrapper").prop('disabled', true).css({"pointer-events": "auto", opacity: "1"});
			
				$(".wrap2").prop('disabled', true).css({"pointer-events": "auto", opacity: "1"});
			});
		});
	</script>
</head>
<body>
	
	<div id="miniWrapper">
		<h1><img alt="로그인" src="${path }/img/search/txt_login_layer.png" /></h1>
		
		<div class="cntt">
			<div class="login-input-area">
				<div class="login-input">
					<form id="miniForm" action="${path }/user/miniLogin" method="post">
						<div class="insertDiv">
							<input type="text" id="id" name="id" placeholder="아이디" />
							<input type="password" id="password" name="password" placeholder="비밀번호" />
							<div class="wrap_save">
				                <div class="box_check02">
				                    <input type="checkbox" id="inpSaveId" class="input_check">
				                    <label for="inpSaveId" class="label_check"><span class="icon"></span>아이디 저장</label>
				                </div>
							</div>
						</div>
						
						<div class="insertBtn">
							<input id="submitBtn" type="button" value="" />
						</div>
					</form>
					<div style="clear: both;"></div>
				</div>
				
				<div class="login-info">
					<a href="#">아이디 찾기</a>
					<span class="bar">|</span>
					<a href="#">비밀번호 찾기</a>
					<span class="bar">|</span>
					<a href="#">회원가입</a>
				</div>
				
				<div class="kakao">
					<button><span>카카오계정 로그인</span></button>
				</div>
			</div>
		</div>
		
		<button type="button" title="로그인 닫기" class="btn_close"><span></span></button>
	</div>
	
</body>
</html>