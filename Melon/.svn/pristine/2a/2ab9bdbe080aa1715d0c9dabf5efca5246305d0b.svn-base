<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Melon::음악이 필요한 순간, 멜론</title>
	<link rel="shortcut icon" type="image/x-icon" href="${path }/img/main/favicon.ico" id="favicon"/>
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" href="${path }/css/common.css" />
	<link rel="stylesheet" href="${path}/css/user/member_info.css" />
	
	<script type="text/javascript">  
		$(function() {
			
			//확인 버트은
			$(".green_btn").click(function(e) {
				var input_pwd = $("#memberPwd").val();
				var session_pwd = $("#session_pwd").val();
				
				if (input_pwd == session_pwd) {
					location.href = "${path}/user/changeInfo";
				}
				else {
					alert("비밀번호가 맞지 않습니다.\n다시 입력해 주세요.")
				}
				
			});
			
			// 보기 버튼 클릭
			$(".d_input_pw").click(function(e) {
				var inputType = $(this).closest(".dididi").find("input");
				
				if (inputType.attr("type") == 'password') {
					inputType.attr("type", "text");
					$(this).css("backgroundPosition", "0 -20px");
				}
				else {
					inputType.attr("type", "password");
					$(this).css("backgroundPosition", "0 0");
				}
			});
		});
	</script>
</head>
<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
	
	<div id="join_wrapper" class="join">
	
		<div class="upperCont">
			<div>
			</div>
		</div>  
		
		<div class="content">
			<div class="password_title">
			<h2 class="titlePw">비밀번호 확인</h2>
			</div>
			<div class="add_info_mem">
				<ul class="list_bullet">
					<li class="first_child">본인확인을 위해 비밀번호를 한 번 더 입력해 주세요.</li>
					<li>비밀번호는 타인에게 노출되지 않도록 주의해 주세요.</li>
				</ul>
			</div>
			<div class="myInfo_box">
				<dl class="my_info_mem">
					<dt class="first_child">아이디</dt>
					<dd>
						${sessionScope._USER_.id }
						<input type="hidden" id="session_pwd" value="${sessionScope._USER_.password }" />
					</dd>
					<dt>비밀번호</dt>
					<dd>
						<div class="dididi">
							<div class="di_pw_input">
								<input type="password" name="memberPwd" id="memberPwd" title="비밀번호입력 편집창" placeholder="비밀번호 입력" class="di_pw_key" style="width:240px;">
								<a href="javascript:void(0)" class="btn_pw_view d_input_pw" style="display:block;"><span>보기</span></a>
							</div>
						</div>
					</dd>
				</dl>
			</div>
			
			<div class="btn_check">
				<button type="button" title="확인" class="green_btn">
					확인
				</button>
				
				<button type="button" title="취소" class="white_btn" onclick="javascript:location.href='${path}'">
					취소
				</button>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/view/footer.jsp" />
</body>
</html>