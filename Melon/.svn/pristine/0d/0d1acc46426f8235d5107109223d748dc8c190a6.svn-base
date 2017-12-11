<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Melon::음악이 필요한 순간, 멜론</title>
	<link rel="shortcut icon" type="image/x-icon" href="${path }/img/main/favicon.ico" id="favicon"/>
	<link rel="stylesheet" href="${path }/css/common.css">
	<link rel="stylesheet" href="${path }/css/user/findOk.css" />
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
</head>
<body>
	
	<div id="findOkWrapper">
		<p id="top-line">
		
		<!-- 로고  -->
		<div class="find-logo">
			<a href="${path }/">
				<img alt="Melon 로고" src="${path}/img/user/login/img_logo206x56.png">
			</a>
		</div>
		
		<div id="member_cont_wrap">
			<div id="conts_section">
				<div class="wrap_tab_select02 d_join_tab">
					<ul>
						<li class="first_child on"><a href="${path }/user/find" title="아이디 찾기 - 페이지 이동">아이디 찾기</a></li>
						<li class="last_child "><a href="${path }/user/find?find=pw" title="비밀번호 찾기 - 페이지 이동">비밀번호 찾기</a></li>
					</ul>
				</div>

				<div class="box_mem_info">
					<div class="mem_info_cont type02 d_find_cont" id="idFind">
						<p class="txt_info02">입력하신 정보와 일치하는 아이디 목록입니다.</p>
						<p class="txt_info mt10">아이디 확인 후, 로그인 또는 비밀번호 찾기 버튼을 눌러주세요.</p><!--160201 수정 lyr-->
							<div class="box_id_check">
								<div class="id_find base">${userId }</div>
							</div>
						<div class="wrap_btn_c mt52">
							<a href="${path }/user/login" title="로그인 - 페이지 이동" class="btn btn_square_green68 btn_small">로그인</a>
							<a href="${path }/user/find?find=pw" title="비밀번호 찾기 - 페이지 이동" class="btn btn_square_white68 btn_small ml8">비밀번호 찾기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<jsp:include page="/WEB-INF/view/user/user_footer.jsp" />
	</div>
	
</body>
</html>