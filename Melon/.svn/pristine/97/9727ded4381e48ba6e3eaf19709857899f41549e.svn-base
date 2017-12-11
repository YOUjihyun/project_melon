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
	<script type="text/javascript">
		$(function() {
			var pcCk = new Array;
			
			// 포커스 이벤트
			$(".pwdInput").focusin(function(e) {
				$(this).closest(".input_box").css("border", "1px solid #000");
			});
			
			$(".pwdInput").focusout(function(e) {
				$(this).closest(".input_box").css("border", "1px solid #ccc");
			});
			
			// 비밀번호 유효성 검사
			$(".pwdInput").blur(function(e) {
				pwdCheckFunc();
			});
			
			$(".pwdInput").keyup(function(e) {
				
			});
			
			// X 버튼 이벤트
			$("input").keyup(function() {
				var inputLength = $.trim($(this).val().length);
				
				if (inputLength > 0) {
					$(this).closest(".input_box").find(".x-box").css("display", "inline-block");
				}
				else {
					$(this).closest(".input_box").find(".x-box").css("display", "none");
				}
			});
			
			// X 버튼 클릭 이벤트
			$(".x-box").click(function(e) {
				$(this).closest(".input_box").find("input").val("");
				$(this).css("display", "none");
				$(this).closest(".input_box").next("p").text("");
			});
			
			// 보기 버튼 클릭
			$(".d_input_pw").click(function(e) {
				var inputType = $(this).closest(".input_box").find("input");
				
				if (inputType.attr("type") == 'password') {
					inputType.attr("type", "text");
					$(this).css("backgroundPosition", "0 -26px");
				}
				else {
					inputType.attr("type", "password");
					$(this).css("backgroundPosition", "0 0");
				}
			});
			
			// 비밀번호 변경 완료
			$(".btn_square_green66").click(function(e) {
				pwdCheckFunc();
				
				if (pcCk[0] && pcCk[1]) { // 체크 완료
					var pwd1 = $.trim($("#pwd1").val());
					var pwd2 = $.trim($("#pwd2").val());
					
					if (pwd1 != pwd2) {
						$(".notEqual").css("display", "block");
					}else {
						$(".notEqual").css("display", "none");
						
						$("#changePw").val(pwd1);
						$("#pwChangeForm").submit();
					}
				}
			});
			
			function pwdCheckFunc() {
				$(".pwdInput").each(function(i, element) {
					if ($.trim($(this).val()).length >= 8 && $.trim($(this).val()).length <= 20) {
						$(this).closest(".input_box").css("border", "1px solid #ccc");
						$(this).closest("td").find("p").css("display", "none");
						pcCk[i] = true;
					}
					else {
						$(this).closest(".input_box").css("border", "1px solid red");
						$(this).closest("td").find("p").css("display", "block");
						pcCk[i] = false;
					}
				});
				
			}
		});
	</script>
</head>
<body>
	
	<div id="findPwWrapper">
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
						<li class="first_child"><a href="${path }/user/find" title="아이디 찾기 - 페이지 이동">아이디 찾기</a></li>
						<li class="last_child on"><a href="${path }/user/find?find=pw" title="비밀번호 찾기 - 페이지 이동">비밀번호 찾기</a></li>
					</ul>
				</div>

				<div class="box_mem_info">
					<div class="mem_info_cont type02 d_find_cont" id="idFind">
						<p class="txt_info02">새 비밀번호를 입력해 주세요.</p>
						<p class="txt_info">본인확인 절차가 모두 완료되었습니다. 비밀번호를 새로 설정해 주세요.</p>
		                
		                <div class="user_nameCheck">
		                	<table>
								<colgroup>
								<col width="112px" />
								<col width="*"/>
								</colgroup>
									
								<tr>
									<th>아이디</th>
									<td>
										<div class="userId">${userId }</div>
									</td>
								</tr>
								
								<tr>
									<th>새 비밀번호</th>
									<td>
										<div class="input_box">
											<input type="password" class="pwdInput" id="pwd1" maxlength="20" placeholder="새 비밀번호 입력" />
											<a href="javascript:void(0)" class="btn_pw_view d_input_pw" style="display:block;"><span>보기</span></a>
											<div class="x-box"></div>
										</div>
										<div class="pwInvali">8자 ~ 20자, 영문, 숫자, 특수문자 사용</div>
										<p class="pwErrorMsg">
											사용불가 : 비밀번호 재작성 필요<br/>
											비밀번호는 영문+숫자+특수문자를 혼합하여 8자~20자 이용이 가능합니다.
										</p>
									</td>
								</tr>
								
								<tr>
									<td>&nbsp;</td>
									<td>
										<div class="input_box">
											<input type="password" class="pwdInput" id="pwd2" maxlength="20" placeholder="새 비밀번호 확인" />
											<a href="javascript:void(0)" class="btn_pw_view d_input_pw" style="display:block;"><span>보기</span></a>
											<div class="x-box"></div>
										</div>
										<p class="notEqual" style="color: red;">비밀번호가 일치하지 않습니다. 다시 확인해 주세요.</p>
									</td>
								</tr>
							</table>
		                </div>
		                
						<div class="pw_set_info mt25">
							<ul class="list_bullet05">
								<li class="first_child"><span>개인정보(연락처/생일)와 관련된 숫자 등 다른 사람이 알아낼 수 있는 비밀번호는 사용하지 마세요.</span></li>
								<li><span>영문, 특수문자를 혼합하면 더욱 안전한 비밀번호를 만들 수 있습니다.</span></li>
								<li class="point"><span>비밀번호를 변경하면 PC, PC Player, 모바일 웹/ APP(3.0 이상 버전)에 로그인 되어 있는 모든 계정이 로그아웃 됩니다.</span></li>
							</ul>
						</div>
						
						<div class="wrap_btn_c mt40">
							<a href="javascript:void(0)" class="btn btn_square_green66">비밀번호 변경 완료</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<form id="pwChangeForm" action="${path }/user/passwordChange" method="post">
			<input type="hidden" name="id" value="${userId }"/>
			<input type="hidden" id="changePw" name="password"/>
		</form>
		
		<jsp:include page="/WEB-INF/view/user/user_footer.jsp" />
	</div>
	
</body>
</html>