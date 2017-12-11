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
	<link rel="stylesheet" href="${path }/css/user/find.css" />
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		var mailNumber = 0;		// 메일에 발송된 인증번호를 담을 변수
		var check1 = false; 	// 인증번호 확인
		var check_name = null;
		var check_email = null;
		
		$(function() {
			$(".pw-body").hide();
			
			// 로그인 화면에서 비밀번호 찾기로 들어 왔을 때
			if ("${find}" == 'pw') {
				$(".section-body").hide();
				$(".pw-body").show();
				$("#pwFindBtn").closest("ul").find("#idFindBtn").css({
					color: "#575757",
					borderBottom: "none"
				});
				
				$("#pwFindBtn").css({
					color: "#00b423",
					borderBottom: "3px solid #00cd3c"
				});
			}
			
			// 아이디 찾기 버튼
			$("#idFindBtn").click(function(e) {
				$(".pw-body").hide();
				$(".section-body").show();
				$(this).closest("ul").find("#pwFindBtn").css({
					color: "#575757",
					borderBottom: "none"
				});
				
				$(this).css({
					color: "#00b423",
					borderBottom: "3px solid #00cd3c"
				});
			});
			
			// 비밀번호 찾기 버튼
			$("#pwFindBtn").click(function(e) {
				$(".section-body").hide();
				$(".pw-body").show();
				$(this).closest("ul").find("#idFindBtn").css({
					color: "#575757",
					borderBottom: "none"
				});
				
				$(this).css({
					color: "#00b423",
					borderBottom: "3px solid #00cd3c"
				});
			});
			
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
			
			// 아이디 찾기에서 다음단계 클릭
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
			
			
			
			// 비밀번호 찾기에서 다음단계 클릭
			var idPwCheck = false;
			$("#nextJoinBtn2").click(function(e) {
				idPw();
				
				if (idPwCheck) {
					var id = $.trim($("#id").val());
					var pwName = $.trim($("#pwName").val());
					
					$.post("${path}/user/pwFind", {id : id, name : pwName}, function(data) {
						if (data.email != null) {
							$("#pwfindEmail").val(data.email);
							$("#pwfindMiddle").submit();
						}
						else {
							alert("검색 결과가 없습니다.")
						}
					});
				}
			});
			
			// 아이디 비밀번호 체크			
			function idPw() {
				idPwCheck = false;
				var ipCk1 = false;
				var ipCk2 = false;
				
				var id = $.trim($("#id").val());
				var pwName = $.trim($("#pwName").val());
				
				if (id.length == 0) {
					$("#id").closest(".input_box").next("p").text("아이디를 입력해 주세요.");
					$("#id").closest(".input_box").css("border", "1px solid red");
					ipCk1 = false;
				}
				else {
					$("#id").closest(".input_box").next("p").text("");
					$("#id").closest(".input_box").css("border", "1px solid #ccc");
					ipCk1 = true;
					
				}
				
				if (pwName.length == 0) {
					$("#pwName").closest(".input_box").next("p").text("이름을 입력해주세요.");
					$("#pwName").closest(".input_box").css("border", "1px solid red");
					ipCk2 = false;
				}
				else {
					$("#pwName").closest(".input_box").next("p").text("");
					$("#pwName").closest(".input_box").css("border", "1px solid #ccc");
					ipCk2 = true;
				}
				
				if (ipCk1 && ipCk2) {
					idPwCheck = true;
				}
			}
		});
	</script>
</head>
<body>
	
	<div id="findWrapper">
		<p id="top-line">
		
		<!-- 로고  -->
		<div class="find-logo">
			<a href="${path }/">
				<img alt="Melon 로고" src="${path}/img/user/login/img_logo206x56.png">
			</a>
		</div>
		
		<div class="find-cont-wrap">
			<div class="cont-section">
				<div class="section-tab">
					<ul>
						<li>
							<a id="idFindBtn" href="javascript:void(0)">아이디 찾기</a>
						</li>
						
						<li>
							<a id="pwFindBtn" href="javascript:void(0)">비밀번호 찾기</a>
						</li>
					</ul>
				</div>
				
				<div id="find_page">
					<!-- 아이디 찾기 -->
					<div class="section-body">
						<div class="box_check_radio">
					        <input type="radio" id="emailCheckBtn">
					        <label for="emailCheckBtn"><span class="icon"></span>회원 정보에 등록된 이메일</label>
				        </div>
				        
				        <div class="user-info">
							<p>회원정보에 등록된 이메일과 입력하신 이메일이 같아야 인증번호를 받으실 수 있습니다.</p>
							
							<table>
								<colgroup>
								<col width="112px" />
								<col width="*"/>
								</colgroup>
									
								<tr>
									<td>이름</td>
									<td>
										<div class="input_box">
											<input type="text" id="name" placeholder="이름 입력 (2자 이상)" />
											<div class="x-box"></div>
										</div>
										<p></p>
									</td>
								</tr>
								
								<tr>
									<td>이메일</td>
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
						
						<div class="next-join">
							<p>아직 멜론 회원이 아닌가요? <a href="${path }/user/join">멜론 회원가입</a></p>
						</div>
						
						<div class="next-join-btn">
							<a id="nextJoinBtn1" href="javascript:void(0)">다음단계</a>
						</div>
					</div>
					
					<!-- 비밀번호 찾기 -->
					<div class="pw-body">
						<p>비밀번호를 찾고자 하는 회원정보를 입력해 주세요.</p>
						
						<div class="pw-info">
							<table>
								<colgroup>
									<col width="112px" />
									<col width="*" />
								</colgroup>
								
								<tr>
									<td>아이디</td>
									<td>
										<div class="input_box">
											<input type="text" id="id" placeholder="아이디 입력" />
											<div class="x-box"></div>
										</div>
										<p></p>
									</td>
								</tr>
								
								<tr>
									<td>이름</td>
									<td>
										<div class="input_box">
											<input type="text" id="pwName" placeholder="이름 입력 (2자 이상)" />
											<div class="x-box"></div>
										</div>
										<p></p>
									</td>
								</tr>
							</table>
						</div>
						
						<div class="pw-bullet">
							<ul>
								<li>카카오계정인 경우 멜론아이디를 등록해야만 비밀번호 재설정이<br/> 가능합니다.</li>
							</ul>
						</div>
						
						<div class="next-join-btn">
							<a id="nextJoinBtn2" href="javascript:void(0)">다음단계</a>
						</div>
					</div>
					
				</div>
				
			</div>
		</div>
		
		<form id="idFindForm" action="${path }/user/findOk/1" method="post">
			<input type="hidden" id="find_name" name="name">
			<input type="hidden" id="find_email" name="email">
		</form>
		
		<form id="pwfindMiddle" action="${path }/user/pwfindMiddle" method="post">
			<input type="hidden" id="pwfindEmail" name="email" />
		</form>
		
		<jsp:include page="/WEB-INF/view/user/user_footer.jsp" />
	</div>

</body>
</html>