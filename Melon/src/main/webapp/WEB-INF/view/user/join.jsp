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
<link rel="stylesheet" href="${path}/css/user/member_join.css" />
<script type="text/javascript">
	$(function() {
		
		var noAgree = false;
		var noNameAgree = false;
		 
		//전체동의 체크 클릭시 아이콘 변경작업
		$(".input_label_all").click(function() {
			var checkbox = $(this).closest(".box-check").find(".input_check0");
			var isNotChecked = checkbox.prop("checked");
			
			$(".input_check1").prop("checked", !isNotChecked);
			
			var position = isNotChecked ? "" : " 0 -23px";
			$(".icon").css({
				background : "url(/Melon/img/user/join/bg_checkbox.png) no-repeat" + position
			});
		});
		
		//필수동의체크 클릭 아이콘 변경작업
		$(".input_label").click(function() {
			var checkbox = $(this).closest(".each_box-check").find(".input_check1");
			var isNotChecked = checkbox.prop("checked");
			
			var position = isNotChecked ? "" : " 0 -23px";
			$(this).find(".icon").css({
				background : "url(/Melon/img/user/join/bg_checkbox.png) no-repeat" + position
			});
			
			if ( isNotChecked ) {
				$(".input_check0").prop("checked", false);
				$(".input_label_all").find(".icon").css({
					background : "url(/Melon/img/user/join/bg_checkbox.png) no-repeat"
				});
			}
		});
		
		// 전화번호 있는지 확인하는곳
		$("#ph_number").blur(function(e) {
			var phone = $.trim($("#ph_number").val());
			
			if ($.isNumeric(phone) && phone.length > 9) {
				$.post("${path}/user/confirmPhone", {phone : phone}, function(data) {
					if (data != 'false') {
						var sub = data.substr(0, 2);
						for (var i = 2; i < data.length; i++) {
							sub += "*";
						}
						sub += " 로그인";
						
						$("#assigned_btn").val(sub);
						
						$(".attention").html("이미 등록된 휴대폰번호 입니다.<br/>입력한 휴대폰번호로 가입 완료시 다른 아이디에 등록<br/>된 휴대폰 정보는 삭제됩니다.");
						$(".attention").css({display:"block", color:"#333"});
						$(".assigned").css("display","block");
						$(".disappear").css("display","block");
					}
					else{
						phoneCheckFunc();
					}
				});
			}
			else {
				phoneCheckFunc();
			}
		});
		
	
		//이름체크
		$("#new_name").blur(function() {
			nameCheckFunc();
		});
		
		function nameCheckFunc() {
			noNameAgree = false;
			var ckName = $.trim($("#new_name").val());
			var blankPattern = /[\s]/g;
			var specialPattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
			
			if (ckName.length == 0) {
				$(".name_attention").css("display", "block");
				$(".input_name").css("border","1px solid red");
				return false;
 			}
			
			if (ckName.length < 2) {
				$(".name_attention").text("이름은 2~20자로 입력해 주세요.");
				$(".name_attention").css("display", "block");
				$(".input_name").css("border","1px solid red");
				return false;
			}
			
			if (blankPattern.test(ckName)) {
				$(".name_attention").text("공백없이 입력해 주세요.");
				$(".name_attention").css("display", "block");
				$(".input_name").css("border","1px solid red");
				return false;
			}
				
			if(specialPattern.test(ckName)){
				$(".name_attention").text("이름은 2~20자로 표준한글,영문,특수문자(-,_,.)만 사용가능합니다.");
				$(".name_attention").css("display", "block");
				$(".input_name").css("border","1px solid red");
				return false;
			}
			
			$(".name_attention").css("display", "none");
			$(".input_name").css("border","1px solid #e9e9e9");
			noNameAgree = true;
		}
		
		function phoneCheckFunc(){
			var phone = $.trim($("#ph_number").val());
			$("#new_next_phone").val("");
			
			if (phone.length == 0 || !$.isNumeric(phone) || phone.length <= 9) {
				$(".attention").html("휴대폰번호를 정확하게 입력해주세요").css("color", "red");
				$(".attention").css("display","block");
				$(".disappear").css("display","block");
				$(".input_phone_number").css("border","1px solid red");
				return false;
			}
			
			$(".attention").css("display","none");
			$(".disappear").css("display","none");
			$(".input_phone_number").css("border","1px solid #e9e9e9");
			$("#new_next_phone").val(phone);
		}
		
		//회원약관 동의 체크 알람창 작업
		function agreeCk(){
			noAgree = false;
			
			if(!$("#agree_check2").is(":checked")){
 				alert("멜론서비스 제공을 위해 반드시 회원님의 동의가 필요한 항목입니다. 이용약관에 동의해 주세요.");
 				return false;
 			}
			
 			if(!$("#agree_check3").is(":checked")){
 				alert("멜론서비스 제공을 위해 반드시 회원님의 동의가 필요한 항목입니다. 유료서비스약관에 동의해 주세요.");
 				return false;
 			}
 			
 			if(!$("#agree_check4").is(":checked")){
 				alert("멜론서비스 제공을 위해 반드시 회원님의 동의가 필요한 항목입니다. 개인정보 수집 및 이용에 동의해 주세요");
 				return false;
 			}
 			
 			noAgree = true;
		}
		
		// 약관체크 조건
 		$("#next_btn").click(function(e){
 			agreeCk();
 			nameCheckFunc();
 			phoneCheckFunc();
 			
 			if (noAgree && $("#new_next_phone").val().length > 0 && noNameAgree) {
				$("#new_next_name").val($("#new_name").val());
				$("#next_name").submit();
			}
 		});
		
		//약관보기
		var isClick = true;
		
		$(".content_arrow").click(function(){
			
			var arrowClick = $(this).closest(".botton_box").next(".hidden_info").find(".term");
			
			if( isClick ){
				arrowClick.show(); 
				isClick = !isClick;
				
				$(this).css("background", "url(/Melon/img/user/join/btn_caluse_more.png) no-repeat -25px 9px");
			}
			else{
				arrowClick.hide();
				isClick = !isClick;
				
				$(this).css("background", "url(/Melon/img/user/join/btn_caluse_more.png) no-repeat 10px 10px");
			}
			
		});
		
		//입력하면 x-icon 띄우게하기. 
		$("input[type='text']").keyup(function(e) {
			if ($.trim($(this).val()).length > 0) {
				$(this).next(".hideX").css("display", "inline-block");
			}
		});
		
		// 마우스 갖다대면 x-icon 바꾸기
		$(".x_box").mouseenter(function(e){
			$(this).css("background-position","0px -21px");
		});
		$(".x_box").mouseleave(function(e){
			$(this).css("background-position", "0 0");
		});
		
		//x-btn숨기기
		$(".hideX").click(function(e){
			$(this).closest(".x-div").find("input").val("");
			$(this).css("display", "none");
			$(".attention").text("");
			$(".attention").css("display", "none");
			$(".disappear").css("display","none");
			$(".assigned").css("display", "none");
 		});
		
		//폰넘버 연두색부분
		$("#ph_number").change(function(e) {
			$(".assigned").fadeOut();
			$(".assigned").prev(".disappear").fadeOut();
		});
		
	
		//input_창에 포커스들어왔을때 css변경
		$("input[type='text']").focusin(function(e){
			$(this).closest(".input_phone_number").css("border","1px solid #000");
			$(this).closest(".input_name").css("border","1px solid #000");
			
		});
		$("input[type='text']").focusout(function(e){
			$(this).closest(".input_phone_number").css("border","1px solid #ccc");
			$(this).closest(".input_name").css("border","1px solid #ccc");
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
					<a href="#" title="Melon 메인" ></a> 
					<img src="${path}/img/user/join/img_logo206x56.png" width="206"
						height="56" alt="Melon" id="logo"/>

				</h1>
			</div>
		</div>

		<div class="join_box">
			<h2 class="join_title">회원가입</h2>
			<div class="upper_block">
				<p class="join_p_text">입력한 휴대폰 번호로 인증 후 회원가입 됩니다.</p>
				<div class="join_phonAndname_box">
					<div class="phone_number">휴대폰번호</div>
					<div class="input_phone_number x-div">
						<input type="text" id="ph_number" title="휴대폰입력 편집창" maxlength="11"	placeholder="휴대번호 입력"/>
						<div class="x_box hideX"></div>
					</div>
				</div>
				
				<div class="disappear">
					<p class='attention' title='오류메세지'></p>
					<div class="assigned">
						<!--  <div class="join_assined_blank"></div> -->
						<div class="input_assigned">
							<input type="button" id="assigned_btn" onclick="javascript:location.href='${path}/user/login'" title="나중에 할것."/>
						</div>
					</div>
				</div>

				<div class="name_box">
					<div class="join_name">이름</div>
					<div class="input_name x-div">
						<input type="text" id="new_name" title="이름 입력 편집창" name="new_name" placeholder="이름 입력(2자 이상)"/>
						<div class="x_box hideX"></div>
					</div>
				</div>
				
				<div class="disappear2">
					<p class='name_attention' title='오류메시지'>이름을 입력해주세요.<br/>이름은 2~20자로 표준한글,영문,특수문자(-,_,.)만 사용가능합니다.</p>
				</div>
				
			</div>
		<div class="supper_block">
			<div class="bottom_check">
				<div class="botton_box">
					<div class="box-check">
						<input type="checkbox" id="agree_check1" class="input_check0" />
						<label for="agree_check1" class="input_label_all"> <span class="icon">전체동의<em class="gray_label">(선택사항포함)</em></span>
						</label> <a href="#" onclick="right_contents" ></a>
					</div>
				</div>

				<div class="botton_box">
					<div class="each_box-check">
						<div class="inline"> 
							<input type="checkbox" id="agree_check2" class="input_check1" />
							<label for="agree_check2" class="input_label"> 
								<span class="icon">
								이용약관<em class="yellowgreen_label">(필수)</em>
								</span>
							</label>
							<a href="javascript:void(0)" class="arrow_bottom under_arrow content_arrow"></a>
						</div>
						<div class="inline right">
							<a href="http://info.melon.com/terms/web/terms1_1.html" target="_blank" id="all_contents1">전문보기</a>
						</div>
					</div>
				</div>
				<div class="hidden_info">
						<!-- 이용약관 내용1 -->
					<div class="join_clause_content term" id="term1">
						<div class="content">
							<h3 class="title_rule">
								<strong>1.이용신청의 승낙 및 제한(약관 제 7조, 제 8조)</strong>
							</h3>
								<ul class="txt_rule">
									<li>- 가입신청 양식을 정확히 기재하고, 회사가 정한 인증절차를 완료한 고객에 한하여 서비스 이용신청
										승낙.</li>
									<li>- 회사가 정한 사유에 의해 이용신청에 대한 거절 또는 승낙 유보 등 가입을 제한하거나 사안의
										경중에 따라 손해배상 청구 가능</li>
									<li>- 회원의 자격 및 나이에 따라 서비스 이용 일부 제한 가능.</li>
								</ul>
									<h3 class="title_rule">
								<strong>2.서비스 이용(약관 제 17조, 제 15조, 제13조)</strong>
							</h3>
							<ul class="txt_rule">
								<li>- 회사는 상당한 이유가 있는 경우 운영상, 기술상 필요에 따라 서비스 변경가능, 이 경우 변경될
									서비스의 내용 및 제공일자를 정한 방법으로 회원에게 통지 후 서비스의 전부 또는 일부를 일시적으로 제한하거나 중지
									가능.</li>
								<li>- 회원이 게시하거나 전달하는 서비스의 내용물이 회사가 정한 게시물 제한 사유에 해당한다고 판단되는
									경우 사전통지 없이 게시물 삭제 가능하며, 이에 대해 회사는 어떠한 책임도 지지 않음.</li>
								<li>- 회원이 게시한 게시물의 저작권은 회원이 소유, 회사는 서비스 내에 게시물을 게시할 수 있는
									권리를 가지며, 회원의 동의 없이 게시물을 다른 목적으로 사용할 수 없음.</li>
							</ul>
							<h3 class="tit_rule">
								<strong>3. 계약해지 및 이용제한(약관 제25조)</strong>
							</h3>
							<ul class="txt_rule">
								<li>- 서비스 이용계약을 해지하고자 할 경우 본인이 서비스 사이트 상 또는 전화 등 회사가 제공하는
									방법으로 해지신청을 해야 함. 회사는 회원의 유료서비스 청약철회, 환불, 계약의 해지와 관련 회사의 “멜론
									유료서비스약관”에 그 절차 및 제반 사항을 안내함.</li>
								<li>- 회원이 계약을 해지할 경우 개인정보처리방침에 따라 회사가 회원정보를 보유하는 경우를 제외하고,
									회원의 모든 개인정보 및 데이터는 삭제됨.</li>
								<li>- 회원이 계약을 해지할 경우 개인정보처리방침에 따라 회사가 회원정보를 보유하는 경우를 제외하고,
									회원의 모든 개인정보 및 데이터는 삭제됨.</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="botton_box">
					<div class="each_box-check">
						<div class="inline">
							<input type="checkbox" id="agree_check3" class="input_check1" />
								<label for="agree_check3" class="input_label">
								 	<span class="icon">유료서비스약관<em class="yellowgreen_label">(필수)</em> 
									</span>
								</label>
							<a href="javascript:void(0)" class="arrow_bottom under_arrow content_arrow"></a>
						</div>
						<div class="inline right">
								<a href="http://info.melon.com/terms/web/terms1_2.html" target="_blank"  id="all_contents2">전문보기</a>
						</div> 
					</div>
				</div>
				<div class="hidden_info">
					<!-- 이용약관 내용2 -->
					<div class="join_clause_content term" id="term2">
						<div class="content">
								<h3 class="title_rule">
								<strong>1.이용신청의 승낙 및 제한(약관 제 7조, 제 8조)</strong>
							</h3>
								<ul class="txt_rule">
									<li>- 가입신청 양식을 정확히 기재하고, 회사가 정한 인증절차를 완료한 고객에 한하여 서비스 이용신청
										승낙.</li>
									<li>- 회사가 정한 사유에 의해 이용신청에 대한 거절 또는 승낙 유보 등 가입을 제한하거나 사안의
										경중에 따라 손해배상 청구 가능</li>
									<li>- 회원의 자격 및 나이에 따라 서비스 이용 일부 제한 가능.</li>
								</ul>
									<h3 class="title_rule">
								<strong>2.서비스 이용(약관 제 17조, 제 15조, 제13조)</strong>
							</h3>
							<ul class="txt_rule">
								<li>- 회사는 상당한 이유가 있는 경우 운영상, 기술상 필요에 따라 서비스 변경가능, 이 경우 변경될
									서비스의 내용 및 제공일자를 정한 방법으로 회원에게 통지 후 서비스의 전부 또는 일부를 일시적으로 제한하거나 중지
									가능.</li>
								<li>- 회원이 게시하거나 전달하는 서비스의 내용물이 회사가 정한 게시물 제한 사유에 해당한다고 판단되는
									경우 사전통지 없이 게시물 삭제 가능하며, 이에 대해 회사는 어떠한 책임도 지지 않음.</li>
								<li>- 회원이 게시한 게시물의 저작권은 회원이 소유, 회사는 서비스 내에 게시물을 게시할 수 있는
									권리를 가지며, 회원의 동의 없이 게시물을 다른 목적으로 사용할 수 없음.</li>
							</ul>
							<h3 class="tit_rule">
								<strong>3. 계약해지 및 이용제한(약관 제25조)</strong>
							</h3>
							<ul class="txt_rule">
								<li>- 서비스 이용계약을 해지하고자 할 경우 본인이 서비스 사이트 상 또는 전화 등 회사가 제공하는
									방법으로 해지신청을 해야 함. 회사는 회원의 유료서비스 청약철회, 환불, 계약의 해지와 관련 회사의 “멜론
									유료서비스약관”에 그 절차 및 제반 사항을 안내함.</li>
								<li>- 회원이 계약을 해지할 경우 개인정보처리방침에 따라 회사가 회원정보를 보유하는 경우를 제외하고,
									회원의 모든 개인정보 및 데이터는 삭제됨.</li>
								<li>- 회원이 계약을 해지할 경우 개인정보처리방침에 따라 회사가 회원정보를 보유하는 경우를 제외하고,
									회원의 모든 개인정보 및 데이터는 삭제됨.</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="botton_box">
					<div class="each_box-check">
					<div class="inline">
						<input type="checkbox" id="agree_check4" class="input_check1" />
								<label for="agree_check4" class="input_label">
									 <span class="icon">개인정보수집 및 이용<em class="yellowgreen_label">(필수)</em> 
									</span>
								</label>
										<a href="javascript:void(0)" class="arrow_bottom under_arrow content_arrow"></a>
					</div>
						<div class="inline right">
						<a href="http://info.melon.com/terms/web/terms3.html" target="_blank" id="all_contents3">전문보기</a>
						</div>
					</div>
				</div>
				
				<div class="hidden_info">
					<!-- 이용약관 내용3 -->
					<div class="join_clause_content term" id="term3">
						<div class="content">
								<h3 class="title_rule">
								<strong>1.이용신청의 승낙 및 제한(약관 제 7조, 제 8조)</strong>
							</h3>
								<ul class="txt_rule">
									<li>- 가입신청 양식을 정확히 기재하고, 회사가 정한 인증절차를 완료한 고객에 한하여 서비스 이용신청
										승낙.</li>
									<li>- 회사가 정한 사유에 의해 이용신청에 대한 거절 또는 승낙 유보 등 가입을 제한하거나 사안의
										경중에 따라 손해배상 청구 가능</li>
									<li>- 회원의 자격 및 나이에 따라 서비스 이용 일부 제한 가능.</li>
								</ul>
									<h3 class="title_rule">
								<strong>2.서비스 이용(약관 제 17조, 제 15조, 제13조)</strong>
							</h3>
							<ul class="txt_rule">
								<li>- 회사는 상당한 이유가 있는 경우 운영상, 기술상 필요에 따라 서비스 변경가능, 이 경우 변경될
									서비스의 내용 및 제공일자를 정한 방법으로 회원에게 통지 후 서비스의 전부 또는 일부를 일시적으로 제한하거나 중지
									가능.</li>
								<li>- 회원이 게시하거나 전달하는 서비스의 내용물이 회사가 정한 게시물 제한 사유에 해당한다고 판단되는
									경우 사전통지 없이 게시물 삭제 가능하며, 이에 대해 회사는 어떠한 책임도 지지 않음.</li>
								<li>- 회원이 게시한 게시물의 저작권은 회원이 소유, 회사는 서비스 내에 게시물을 게시할 수 있는
									권리를 가지며, 회원의 동의 없이 게시물을 다른 목적으로 사용할 수 없음.</li>
							</ul>
							<h3 class="tit_rule">
								<strong>3. 계약해지 및 이용제한(약관 제25조)</strong>
							</h3>
							<ul class="txt_rule">
								<li>- 서비스 이용계약을 해지하고자 할 경우 본인이 서비스 사이트 상 또는 전화 등 회사가 제공하는
									방법으로 해지신청을 해야 함. 회사는 회원의 유료서비스 청약철회, 환불, 계약의 해지와 관련 회사의 “멜론
									유료서비스약관”에 그 절차 및 제반 사항을 안내함.</li>
								<li>- 회원이 계약을 해지할 경우 개인정보처리방침에 따라 회사가 회원정보를 보유하는 경우를 제외하고,
									회원의 모든 개인정보 및 데이터는 삭제됨.</li>
								<li>- 회원이 계약을 해지할 경우 개인정보처리방침에 따라 회사가 회원정보를 보유하는 경우를 제외하고,
									회원의 모든 개인정보 및 데이터는 삭제됨.</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="botton_box">
					<div class="each_box-check">
						<input type="checkbox" id="agree_check5" class="input_check1" />
						<label for="agree_check5" class="input_label">
							<span class="icon">이벤트, 안내 수신<em class="gray_label">(선택)</em>
							</span>
						</label> <a href="#" onclick="right_contents" ></a>
						<a href="javascript:void(0)" class="arrow_bottom under_arrow content_arrow"></a>
					</div>
				</div>
				<div class="hidden_info">
					<!-- 이용약관 내용3 -->
					<div class="join_clause_content term" id="term4">
						<div class="content">
								<h3 class="title_rule">
								<strong>1.이용신청의 승낙 및 제한(약관 제 7조, 제 8조)</strong>
							</h3>
								<ul class="txt_rule">
									<li>- 가입신청 양식을 정확히 기재하고, 회사가 정한 인증절차를 완료한 고객에 한하여 서비스 이용신청
										승낙.</li>
									<li>- 회사가 정한 사유에 의해 이용신청에 대한 거절 또는 승낙 유보 등 가입을 제한하거나 사안의
										경중에 따라 손해배상 청구 가능</li>
									<li>- 회원의 자격 및 나이에 따라 서비스 이용 일부 제한 가능.</li>
								</ul>
									<h3 class="title_rule">
								<strong>2.서비스 이용(약관 제 17조, 제 15조, 제13조)</strong>
							</h3>
							<ul class="txt_rule">
								<li>- 회사는 상당한 이유가 있는 경우 운영상, 기술상 필요에 따라 서비스 변경가능, 이 경우 변경될
									서비스의 내용 및 제공일자를 정한 방법으로 회원에게 통지 후 서비스의 전부 또는 일부를 일시적으로 제한하거나 중지
									가능.</li>
								<li>- 회원이 게시하거나 전달하는 서비스의 내용물이 회사가 정한 게시물 제한 사유에 해당한다고 판단되는
									경우 사전통지 없이 게시물 삭제 가능하며, 이에 대해 회사는 어떠한 책임도 지지 않음.</li>
								<li>- 회원이 게시한 게시물의 저작권은 회원이 소유, 회사는 서비스 내에 게시물을 게시할 수 있는
									권리를 가지며, 회원의 동의 없이 게시물을 다른 목적으로 사용할 수 없음.</li>
							</ul>
							<h3 class="tit_rule">
								<strong>3. 계약해지 및 이용제한(약관 제25조)</strong>
							</h3>
							<ul class="txt_rule">
								<li>- 서비스 이용계약을 해지하고자 할 경우 본인이 서비스 사이트 상 또는 전화 등 회사가 제공하는
									방법으로 해지신청을 해야 함. 회사는 회원의 유료서비스 청약철회, 환불, 계약의 해지와 관련 회사의 “멜론
									유료서비스약관”에 그 절차 및 제반 사항을 안내함.</li>
								<li>- 회원이 계약을 해지할 경우 개인정보처리방침에 따라 회사가 회원정보를 보유하는 경우를 제외하고,
									회원의 모든 개인정보 및 데이터는 삭제됨.</li>
								<li>- 회원이 계약을 해지할 경우 개인정보처리방침에 따라 회사가 회원정보를 보유하는 경우를 제외하고,
									회원의 모든 개인정보 및 데이터는 삭제됨.</li>
							</ul>
						</div>
					</div>
				</div>
				
		</div>
		
		<form id="next_name" action="${path}/user/joinForm" method="post">
			<input type="hidden" id="new_next_name" name="new_name">
			<input type="hidden" id="new_next_phone" name="new_phone" />
		</form>

			<div class="buttom_button">
				<a href="javascript:void(0)" class="next_button" id ="next_btn">다음 단계</a>
			</div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/view/user/user_footer.jsp"/>
</div>
	
</body>
</html>