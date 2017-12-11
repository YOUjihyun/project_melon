<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="${path}/css/user/member_joinForm.css" />
<script type="text/javascript">

	$().ready(function(){

		// 닉네임 있는지 확인하는곳
		$("#member_nick").blur(function(e) {
			var nickName = $.trim($(this).val());
			
			if (nickName.length > 2) {
				$.post("${path}/user/confirmNick", {nickName : nickName}, function(data) {
					if (data != 'false') {
						$(".nick_attention").html("이미 사용중인 닉네임 입니다.").css("color","red");
						$(".nick_attention").css("display", "block"); 
					}
					else{
						nickCheckFunc();
					}
				});
			}
			else {
				var ckNick = $.trim($("#member_nick").val());
				
				if (ckNick.length != 0) {
					//$(".nick_attention").html("닉네임값을 정확히 입력해주세요.").css("color", "red");
					//$(".nick_attention").css("display","block");
					nickCheckFunc();
				}
				
			}
			
		});

		// 아이디 있는지 확인하는곳
		$("#memberId").blur(function(e) {
			var id = $.trim($(this).val());
			
			if (id.length > 6) {
				$.post("${path}/user/confirmId", {id : id}, function(data) {
					if (data != 'false') {
						$(".id_attention").html("이미 사용중인 아이디 입니다.");
						$(".id_attention").css("display", "block"); 
					}
					else{
						idCheckFunc();
					}
				});
			}
			else {
				var ckId = $.trim($("#memberId").val());
				
				if (ckId.length != 0) {
					//$(".id_attention").html("아이디값을 정확히 입력해주세요.").css("color", "red");
					//$(".id_attention").css("display","block");
					idCheckFunc();
					//alert(idCheckFunc());
				}
				
			}
			
		});
		
		
		//성별체크 (radioBtn)
		$(".label_check").click(function() {
			var checkbox = $(this).closest(".radio_box2").find(".input_radio");
			var isNotChecked = checkbox.prop("checked"); //체크하면 false나옴
			
			$(this).closest(".radio_box2").find(".input_radio").prop("checked", true);
			$(".icon2").css("backgroundPosition", "0 0");
			$(this).find(".icon2").css("backgroundPosition", "0 -20px");
			
		});

		
// 		//포커스 이벤트 비밀번호
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
			
		//아이디 체크
		$("#memberId").blur(function() {
			idCheckFunc(); 
		});
		
		function idCheckFunc() {
			noIdAgree = false;
			var ckId = $.trim($("#memberId").val());
			var blankPattern = /[\s]/g;
			var specialPattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
			
			if (ckId.length == 0) {
				$(".id_attention").css("display", "block");
				$(".input_id").css("border","1px solid red");
				return false;
 			}
			
			if (ckId.length < 6) {
				$(".id_attention").text("이름은 6~30자로 입력해 주세요.");
				$(".id_attention").css("display", "block");
				$(".input_id").css("border","1px solid red");
				return false;
			}
			
			if (blankPattern.test(ckId)) {
				$(".id_attention").text("공백없이 입력해 주세요.");
				$(".id_attention").css("display", "block");
				$(".input_id").css("border","1px solid red");
				return false;
			}
				
			if(specialPattern.test(ckId)){
				$(".id_attention").text("이름은 2~20자로 표준한글,영문,특수문자(-,_,.)만 사용가능합니다.");
				$(".id_attention").css("display", "block");
				$(".input_id").css("border","1px solid red");
				return false;
			}
			
			$(".id_attention").css("display", "none");
			$(".input_id").css("border","1px solid #e9e9e9");
			noNameAgree = true;
		}
		
		//닉네임 체체크
		$("#member_nick").blur(function() {
			nickCheckFunc();
		});
		
		function nickCheckFunc() {
			noNickAgree = false;
			var ckNick = $.trim($("#member_nick").val());
			var blankPattern = /[\s]/g;
			var specialPattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
			
			if (ckId.length == 0) {
				$("nick_attention").css("display", "block");
				$(".nick_input").css("border","1px solid red");
				return false;
 			}
			
			if (ckId.length < 2) {
				$(".nick_attention").text("닉네임은 2~15자로 입력해 주세요.");
				$(".nick_attention").css("display", "block");
				$(".nick_input").css("border","1px solid red");
				return false;
			}
			
			if (blankPattern.test(ckNick)) {
				$(".nick_attention").text("공백없이 입력해 주세요.");
				$(".nick_attention").css("display", "block");
				$(".nick_input").css("border","1px solid red");
				return false;
			}
				
			if(specialPattern.test(ckNick)){
				$(".nick_attention").text("닉네임은은 2~15자로 표준한글,영문,특수문자(-,_,.)만 사용가능합니다.");
				$(".nick_attention").css("display", "block");
				$(".nick_input").css("border","1px solid red");
				return false;
			}
			
			$(".id_attention").css("display", "none");
			$(".nick_input").css("border","1px solid #e9e9e9");
			noNameAgree = true;
		}
		
		
		
 			
	
		
	
 		
		//완료버튼
		$("#complete_btn").click(function(e){
			
			$("#next_complete").submit();
			
		});
		//포커스 이벤트
		$("input").focusin(function(e) {
			$(this).closest(".input_box").css("border", "1px solid #000");
		});
	
		$("input").focusout(function(e) {
			$(this).closest(".input_box").css("border", "1px solid #ccc");
		});
		
		
	
		// x-icon 클릭 이벤트
		$("input").keyup(function() {
			var inputLength = $.trim($(this).val().length);
			
			if (inputLength > 0) {
				$(this).closest(".input_box").find(".x_box").css("display", "inline-block");
				$(this).closest(".input_box").find(".pwX_box").css("display", "inline-block");
			}
			else {
				$(this).closest(".input_box").find(".x_box").css("display", "none");
				$(this).closest(".input_box").find(".pwX_box").css("display","none");
			}
		});
	
		// x-icon 클릭 이벤트
		$(".pwX_box").click(function(e){
			$(this).closest(".input_box").find("input").val("");
			$(this).css("display", "none");
			$(this).closest(".input_box").next().text("");
			$(this).closest(".input_box").css("border", "1px solid #000");
			$(this).closest(".input_box").next().css("display","none");
		});
		$(".x_box").click(function(e) {
			$(this).closest(".input_box").find("input").val("");
			$(this).css("display", "none");
			$(this).closest(".input_box").next().text("");
			$(this).closest(".input_box").css("border", "1px solid #000");
			$(this).closest(".input_box").next().css("display","none");
			
		});
		
		// 마우스 갖다대면 x-icon 바꾸기
		$(".pwX_box").mouseenter(function(e){
			$(this).css("background-position","0px -21px");
		});
		$(".pwX_box").mouseleave(function(e){
			$(this).css("background-position", "0 0");
		});
		
		$(".x_box").mouseenter(function(e){
			$(this).css("background-position","0px -21px");
		});
		$(".x_box").mouseleave(function(e){
			$(this).css("background-position", "0 0");
		});
		
		var mailNumber = 0;
		// 인증번호 요청 버튼
		$("#btn_auth").click(function(e) {
			mailNumber = 0;
			var emailAddr = $.trim($("#email").val());
			
			if (emailAddr.length > 0) {
				$.post("${path}/user/joinMail", {
					email : emailAddr
				}, function(response) {
					if(response != 'fail') {
						$(".singKey_check").css("display", "block");
						$(".singKey_check").find(".input_box").css("border", "1px solid #ccc");
						$(".singKey_check").find("#emailSignKey_msg").css("display", "none");
						
						mailNumber = response;
					}
					else {
						
					}
				});
			}
			else { // 이메일 입력이 되지 않았다면
			
			
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
				$(this).closest(".singKey_check").find("#emailSuccess_msg").css("display", "block");
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
		
		//x-버튼 숨기기
		$(".hideX").click(function(e){
			$(this).closest(".x-div").find("input").val("");
			$(this).css("display", "none");
			$(".attention").text("");
			$(".attention").css("display","none");
 		});
		
	
 		var pcCk = new Array;
		
		// 포커스 이벤트
		$(".pwdInput").focusin(function(e) {
			$(this).closest(".input_box").css("border", "1px solid #ccc");
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
		
		$("#pwd2").blur(function(e) {
			pwdCheckFunc();
			
			if (pcCk[0] && pcCk[1]) { // 체크 완료
				var pwd1 = $.trim($("#password").val());
				var pwd2 = $.trim($("#pwd2").val());
				
				if (pwd1 != pwd2) {
					$(".notEqual").css("display", "block");
				}else {
					$(".notEqual").css("display", "none");
					
				
				}
			}
		});
		//비밀번호 조건 체크
			function pwdCheckFunc() {
				$(".pwdInput").each(function(i, element) {
					if ($.trim($(this).val()).length >= 8 && $.trim($(this).val()).length <= 20) {
						$(this).closest(".input_box").css("border","1px solid #ccc");
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
		

	  
	 		// 가입완료 조건
	 		$("#complete_btn").click(function(e){
		 		$("#next_complete").submit();
	 		});
			
	});

</script> 
</head>
<body>
	<div id="join_wrapper" class="join">
		<p id="top_line"></p>
		<div id="member_header">
			<div id="gnb">
				<h1>
					<a href="#" title="Melon 메인"></a> 
					<img src="${path}/img/user/join/img_logo206x56.png" width="206" height="56" alt="Melon" />
				</h1>
			</div>
		</div>
  <div class="joinForm_box"> 
	<form id="next_complete" action="${path}/user/join_complete" method="post">
		<input type="hidden" name="name" value="${name }">
		<input type="hidden" name="phoneNo" value="${phone }">
	 <div class="sendPage">
		<h2 class="join_title">회원가입</h2>
		<div class="info_start">
			<div class="receive_name">
				<span class="send_id">${name } 님</span>
			</div>
			<div id="receivenumber_box">  
				<p>이메일 주소를 입력해주세요.</p>
			</div>
			     <div class="user-info">
					<p>이메일 작성후 인증번호 요청을 눌러주세요.</p>
					<table>
						<colgroup>
							<col width="112px" />
							<col width="*"/>
						</colgroup>
							<tr>
								<td><div class="email" >이메일</div></td>
								<td>
								<div class="input_box cert_input_write border-input">
									<input type="text" class="style_input_text " style="width:276px;" name="email" id="email" placeholder="예) 이메일아이디@이메일주소" />
									<div class="x_box hideX"></div>
								</div>
									<p></p>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>
									<div class="auth">
										<a href="javascript:void(0)" id="btn_auth">
											인증번호 요청
										</a>
									</div>
								
									<div class="singKey_check ">
										<p id="emailSignKey_info">해당 이메일로 인증번호를 발송했습니다.</p>
										<div id="emailSignKey_tr">
											<div class="input_box">
												<input type="text" id="emailSignKey" class="style_input_text" name="emailSignKey" placeholder="인증번호 입력"  maxlength="6">
												<div class="x_box hideX "></div>
											</div>
										</div>
										<p id=emailSuccess_msg class="txt_susccess" style="display:none;">인증되었습니다.</p>
										<p id="emailSignKey_msg" class="txt_error02" style="display:none;">인증번호를 정확히 입력해 주세요.</p>
									</div>
								</td>
							</tr>
						</table>
						
					</div>
		</div>
	<div>
		<div class="info-div info-css">
			<table style="width:100%">
			
			 <colgroup>
			 	<col style="width:94px">
			 	<col>
			 </colgroup>

			</table>
		
		</div>
	</div>
		<div class="write_info">
			<div class="info_table info-div">
				<table border="1" style="width:100%">
					<colgroup>
						<col style="width:94px">
						<col>
					</colgroup>
					<tbody>
					 <tr>
					 	<th scope="row">
					 		<div class="id info-css">아이디</div>
					 	</th>
					 	<td>
					 		<div class="id">
					 			<div id="member_id_table" class="meber_id_input" style="width:331px;">
					 				<div class="input_box input_id  border-input">
					 					<input type="text" class="style_input_text" id="memberId" name="id" title="아이디 입력 편집창" placeholder="6~30자로 입력" style="width:276px;" maxlength="30">
					 					<div class="x_box hideX"></div>
					 				</div>
									<p class='id_attention' title='오류메시지'>아이디는 6~30자 이내로 입력해주세요.</p>
					 			</div>
					 		</div>
					 	</td>
					 </tr>
					
					<tr>
						<th>
						<div class="id info-css">비밀번호</div>
						</th>
							<td>
							
							<div class="input_box">
							<input type="password" class="pwdInput" id="password" maxlength="20" placeholder="비밀번호 입력" name="password"/>
								<a href="javascript:void(0)" class="btn_pw_view d_input_pw" style="display:block;"><span>보기</span></a>
								<div class="hideX pwX_box "></div>
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
							<div class="input_box border-input">
								<input type="password" class="pwdInput" id="pwd2" maxlength="20" placeholder=" 비밀번호 확인" name="password" />
									<a href="javascript:void(0)" class="btn_pw_view d_input_pw" style="display:block;"><span>보기</span></a>
									<div class="hideX pwX_box"></div>
							</div>
								<p class="notEqual" style="color: red">비밀번호가 일치하지 않습니다. 다시 확인해 주세요.</p>
								
						</td>
						
					</tr>
					
					 <tr>
					 	<th scope="row">
					 		<div class="nickName info-css">닉네임</div>
					 	</th>
					 	<td>
					 		<div class="nick">
					 			<div id="member_nick_table" class="nick_write" style="width:331px;">
					 				<div class="input_box nick_input  border-input">
					 					<input type="text"  class="member_nickName style_input_text" id="member_nick" name="nickName" title="닉네임 입력 편집창" placeholder="한글, 영문  2~15자" style="width:276px;"/>
					 					<div class="x_box hideX"></div>
					 				</div>
					 				<p class='nick_attention' title='오류메시지'>닉네임은2~15자 이내로 입력해주세요.</p>
					 			<div class="input_check">
					 			<a href="#" class="nick_btn_input_check" style="display:none;">삭제</a>
					 			</div>
					 			</div>
					 			<p class="nick_msg" style="display:none;"></p>
					 		</div>
					 	</td>
					 </tr>
					 <tr class="gender_table">
					 	<th scope="row" class="gen">
					 		<div class="gender ">성별</div>
					 	</th>
					 	<td>
					 		<div class="select_gender">
					 			<div class="gender_box">
					 			<ul class="gender_radio">
						 			<li class="input_genderLi">
					 					<div class="radio_box2">
					 						<input type="radio" name="gender" id="genderMan" class="input_radio" value="male"/>
					 						<label for="genderMan" class="label_check">
					 							<span class="icon2"></span>남자
					 						</label>
					 					</div>
					 				</li>
					 				<li class="input_genderLi">
					 					<div class="radio_box2">
					 						<input type="radio" name="gender" id="genderWoman" class="input_radio" value="female"/>
					 						<label for="genderWoman" class="label_check">
					 							<span class="icon2"></span>여자
					 						</label>
					 					</div>
					 				</li>
					 			</ul>
					 			</div>
					 			<p id="genderMsg" style="display:none;"></p>
					 		</div>
					 	</td>
					 </tr>
				 <tr>
					 	<th scope="row">
					 		<div class="Birthday info-css">생년월일</div>
					 	</th>
					 	<td>
					 		<div class="birth">
					 			<div id="member_birth_table" class="birth_write" style="width:331px;">
					 				<div class="input_box birth_input  border-input">
					 					<input type="text"  class="member_birth style_input_text" name="memberBirthday" title="생년월일 입력 편집창" placeholder="예시) 20171023" style="width:276px;"/>
					 					<div class="x_box hideX"></div>
					 				</div>
					 			<div class="input_check">
					 			<a href="#" class="birth_btn_input_check" style="display:none;">삭제</a>
					 			</div>
					 			</div>
					 			<p id="birth_msg" style="display:none;">
					 			</p>
					 		</div>
					 	</td>
					 </tr>
					
					</tbody>
				</table>
			</div>    
		</div>
		
		<div class="buttom_button">
			<a href="javascript:void(0)" class="next_button" id ="complete_btn">가입 완료</a>
		</div>
  </div>
	</form>

	</div>
			<jsp:include page="/WEB-INF/view/user/user_footer.jsp"/>
</div>
	
</body>
</html>