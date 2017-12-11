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
			var mailNumber = 0;		// 메일에 발송된 인증번호를 담을 변수
			var check1 = false; 	// 인증번호 확인
			var check_name = null;
			var check_email = null;
			
			// 포커스 이벤트
			$("input[type='text']").focusin(function(e) {
				$(this).closest(".input_box").css("border", "1px solid #000");
			});
			
			$("input[type='text']").focusout(function(e) {
				$(this).closest(".input_box").css("border", "1px solid #ccc");
				//nameEmail();
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
			
			// 인증번호 요청 버튼
			$("#btn_auth").click(function(e) {
				mailNumber = 0;
				check_name = null;
				check_email = null;
				
				var name = $.trim($("#name").val());
				var emailAddr = $.trim($("#email").val());
				
				if (name.length > 0 && emailAddr.length > 0) {
					$.post("${path}/user/mail", {
						name : name,
						email : emailAddr
					}, function(response) {
						if(response != 'fail') {
							$(".singKey_check").css("display", "block");
							mailNumber = response;
							nameEmail();
							check_name = name;
							check_email = emailAddr;
							
							$(".singKey_check").find(".input_box").css("border", "1px solid #ccc");
							$(".singKey_check").find("#emailSignKey_msg").css("display", "none");
						}
						else {
							$("#name").closest(".input_box").css("border", "1px solid red");
							$("#email").closest(".input_box").css("border", "1px solid red");
							$("#email").closest(".input_box").next("p").text("정확한 정보를 입력해주세요.");
						}
					});
				}
				else {
					nameEmail();
				}
			});
			
			// 인증번호 체크
			$("#emailSignKey").keyup(function(e) {
				var signKey = $.trim($(this).val());
				
				if (signKey == mailNumber) {
					$(this).closest(".singKey_check").find(".x-box").css({
						backgroundPosition: "0 -42px"
					});
					
					$(this).closest(".singKey_check").find(".input_box").css("border", "1px solid #ccc");
					$(this).closest(".singKey_check").find("#emailSignKey_msg").css("display", "none");
					
					check1 = true;
				}
				else {
					$(this).closest(".singKey_check").find(".x-box").css({
						backgroundPosition: "0 0"
					});
					
					$(this).closest(".singKey_check").find(".input_box").css("border", "1px solid red");
					$(this).closest(".singKey_check").find("#emailSignKey_msg").css("display", "block");
					
					check1 = false;
				}
			});
			
			// 다음단계 버튼
			$("#nextJoinBtn1").click(function(e) {
				nameEmail();
				
				var name = $.trim($("#name").val());
				var emailAddr = $.trim($("#email").val());
				
				if (mailNumber != 0 && check1 == true) {
					if (check_name == name && check_email == emailAddr) {
						$("#find_name").val(check_name);
						$("#find_email").val(check_email);
						
						$("#idFindForm").submit();
					}
					else {
						alert("정확한 정보를 입력해 주세요.");
					}
				}
				else {
					return false;
				}
			});
			
			// 이름 이메일 체크
			function nameEmail() {
				check1 = false;
				var nCheck = false;
				var eCheck = false;
				
				var name = $.trim($("#name").val());
				var email = $.trim($("#email").val());
				
				if (name.length == 0) {
					$("#name").closest(".input_box").next("p").text("이름을 입력해 주세요.");
					$("#name").closest(".input_box").css("border", "1px solid red");
					nCheck = false;
				}
				else {
					$("#name").closest(".input_box").next("p").text("");
					$("#name").closest(".input_box").css("border", "1px solid #ccc");
					nCheck = true;
				}
				
				if (email.length == 0) {
					$("#email").closest(".input_box").next("p").text("정확한 이메일을 입력해주세요.");
					$("#email").closest(".input_box").css("border", "1px solid red");
					eCheck = false;
				}
				else {
					$("#email").closest(".input_box").next("p").text("");
					$("#email").closest(".input_box").css("border", "1px solid #ccc");
					eCheck = true;
				}
				
				if (nCheck && eCheck) {
					check1 = true;
				}
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
						<p class="txt_info">본인확인 가능한 연락처를 선택한 후, 연락처 전체를 입력해 주세요. 개인정보 보호를 위해 연락처는 일부분만 보여드리며, *가 무작위로 표기됩니다.</p>
						<div class="box_check_radio">
		                    <input type="radio" name="namecheck" id="nameCheck02" class="input_check">
		                    <label for="nameCheck02" class="label_check"><span class="icon"></span>회원 정보에 등록된 이메일 <span class="check_sub">(${email })</span></label>
		                </div>
		                
		                <div class="user_nameCheck">
		                	<p class="namecheck_info">회원정보에 등록된 이메일과 입력하신 이메일이 같아야 인증번호를 받으실 수 있습니다.</p>
		                	
		                	<table>
								<colgroup>
								<col width="112px" />
								<col width="*"/>
								</colgroup>
									
								<tr>
									<th>이름</th>
									<td>
										<div class="input_box">
											<input type="text" id="name" placeholder="이름 입력 (2자 이상)" />
											<div class="x-box"></div>
										</div>
										<p></p>
									</td>
								</tr>
								
								<tr>
									<th>이메일</th>
									<td>
										<div class="input_box">
											<input type="text" id="email" placeholder="이메일 입력" />
											<div class="x-box"></div>
										</div>
										<p></p>
									</td>
								</tr>
								
								<tr>
									<td>&nbsp;</td>
									<td>
										<div class="auth">
											<button id="btn_auth">
												인증번호 요청
											</button>
										</div>
										
										<div class="singKey_check">
											<p id="emailSignKey_info">해당 이메일로 인증번호를 발송했습니다.</p>
											<div id="emailSignKey_tr">
												<div class="input_box">
													<input type="text" id="emailSignKey" name="emailSignKey" placeholder="인증번호 입력"  maxlength="6">
													<div class="x-box"></div>
												</div>
											</div>
											<p id="emailSignKey_msg" class="txt_error02" style="display:none;">인증번호를 정확히 입력해 주세요.</p>
										</div>
									</td>
								</tr>
							</table>
		                </div>
		                
						<div class="next-join-btn">
							<a id="nextJoinBtn1" href="javascript:void(0)">다음단계</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<form id="idFindForm" action="${path }/user/findOk/2" method="post">
			<input type="hidden" id="find_name" name="name">
			<input type="hidden" id="find_email" name="email">
		</form>
		
		<jsp:include page="/WEB-INF/view/user/user_footer.jsp" />
	</div>
	
</body>
</html>