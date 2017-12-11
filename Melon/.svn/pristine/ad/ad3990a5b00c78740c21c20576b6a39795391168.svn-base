<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value ="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Melon::음악이 필요한 순간, 멜론</title>
	<link rel="shortcut icon" type="image/x-icon" href="${path }/img/main/favicon.ico" id="favicon"/>
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" href="${path }/css/common.css" />
	<link rel="stylesheet" href="${path }/css/user/changeAlter.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>
	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
	
	<script type="text/javascript">
	(function($) {
		$(function() {
			
			// 전화번호 변경
			$(".p_btn").click(function(e) {
				$("#alterPhoneWrapper").css("display", "block");
				
				var pNumber = $("#span_ph").text();
				
				var newPNumber = pNumber.substring(0, 3);
				newPNumber += " - ";
				newPNumber += pNumber.substring(3, pNumber.length - 4);
				newPNumber += " - ";
				newPNumber += pNumber.substring(pNumber.length - 4, pNumber.length);
				
				$("#alterPhoneWrapper .cnt_txt1").text(newPNumber);
			});
			
			
			$("#changePhoneButton").click(function(e) {
				var c_phone = $.trim($("#changePhoneNumber").val());
				
				$.post("${path}/user/phoneNumberUpdate", {phoneNo : c_phone, id : "${sessionScope._USER_.id}"}, function(data) {
					if (data != 'failed') {
						$("#span_ph").text(data);
						$(".p_closeBtn").click();
					}
					else {
						alert("잠시후 다시 시도해 주세요.");
					}
				});
			});
			
			//이메일변경클릭
			$("#changeEmailButton").click(function(e) {
				var c_email = $.trim($("#changeEmail").val());
				
				$.post("${path}/user/emailUpdate", {email : c_email, id : "${sessionScope._USER_.id}"}, function(data) {
					if (data != 'failed') {
						$("#span_email").text(data);
						$(".e_closeBtn").click();
					}
					else {
						alert("잠시후 다시 시도해 주세요.");
					}
				});
			});
			
			// 이메일 변경
			$(".e_btn").click(function(e) {
				$("#alterEmailWrapper2").css("display", "block");
				
				var eNumber = $("#span_email").text();
				
				$("#alterEmailWrapper2 .cnt_txt1").text(eNumber);
		
			});
			
			$(".p_closeBtn").click(function(e) {
				$("#alterPhoneWrapper").css("display", "none");
			});
			
			$(".e_closeBtn").click(function(e) {
				$("#alterEmailWrapper2").css("display", "none");
			});
			
			// 회원탈퇴
			$(".withdraw").click(function(e) {
				$.confirm({
				    title: '회원탈퇴!',
				    content: '정말 탈퇴 하시겠습니까?',
				    boxWidth: '300px',
				    useBootstrap: false,
				    type: 'red',
				    icon: 'icon-remove',
				    buttons: {
				        탈퇴: function () {
				            location.href = "${path}/user/withraw";
				        },
				        취소: function () {
				            
				        }
				    }
				});
			});
		});
	})(jQuery);
	</script>
</head>
<body>

	<jsp:include page="/WEB-INF/view/header.jsp" />
	
	<div id="alterPhoneWrapper">
		<h1>연락처 관리</h1>
		
		<div class="cntt">
			<p class="cnt_txt1"></p>
			
			<p class="cnt_txt2">아이디, 비밀번호 찾기 등 본인확인이 필요한 경우 또는 유료결제 등 멜론 패밀리 서비스로부터 알림을 받을 때사용합니다.</p>
			
			<table>
				<colgroup>
					<col width="112px" />
					<col />
				</colgroup>
				
				<tr>
					<td>휴대폰 번호</td>
					<td>
						<input type="text" id="changePhoneNumber" maxlength="11" placeholder="휴대폰 번호 입력" />
					</td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<button id="changePhoneButton">확인</button>
					</td>				
				</tr>
			</table>
		</div>
		
		<button class="close_btn p_closeBtn"><span></span></button>
	</div>
	<!-- 이메일변경  -->
		<div id="alterEmailWrapper2">
		<h1>연락처 관리</h1>
		
		<div class="cntt">
			<p class="cnt_txt1"></p>
			
			<p class="cnt_txt2">아이디, 비밀번호 찾기 등 본인확인이 필요한 경우 또는 유료결제 등 멜론 패밀리 서비스로부터 알림을 받을 때사용합니다.</p>
			
			<table>
				<colgroup>
					<col width="112px" />
					<col />
				</colgroup>
				
				<tr>
					<td>이메일</td>
					<td>
						<input type="text" id="changeEmail"  placeholder="이메일 입력" />
					</td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<button id="changeEmailButton">확인</button>
					</td>				
				</tr>
			</table>
		</div>
		
		<button class="close_btn e_closeBtn"><span></span></button>
	</div>
	
	
	
	
	
	
	
	
	
	

	<div class="myInfo">
		<div class="myContents" id="MyContents">
			<div class="titleMember">
				<h2 class="h2_title">내 정보</h2>
			</div>
			<div class="my_info_list">
				<ul class="inline">
					<li class="lilili">
						<div class="gate_info">
							<h3>이름/나이확인/개명</h3>
							<a href=javascript:void(0) class="alterBtn right">변경 &gt;</a>
						</div>
						
						<div class="txt_list">
							<ul>
								<li >
									<strong>이름&nbsp;&nbsp;<span class="col">:&nbsp;</span></strong>
									<span id="spanName">${sessionScope._USER_.name }</span>
									<span id="niceId">(본인확인완료)</span>
								</li>
								<li>
									<strong id="stong_birth">생년&nbsp;&nbsp;<span class="col">:&nbsp;</span></strong>
									<span id="span_birth">${fn:substring(sessionScope._USER_.memberBirthday, 0, 4) }년</span>
								</li>
							</ul>					
						</div>
						<p class="txt_second_info">이름, 생년월일 변경을 위해서는 본인확인이 필요합니다.</p>
					</li>
					<li class="lilili">
						<div class="gate_info">
							<h3>연락처</h3>
						</div>
						<div class="txt_list">
							<ul>
								<li>
									<p><strong>휴대폰번호&nbsp;&nbsp;<span class="col">:&nbsp;</span></strong>
										<a href="#" class="altbtn p_btn">변경</a>
									<span id="span_ph">${sessionScope._USER_.phoneNo }</span>
									</p>
									<span class="btn_list">
									</span>
								</li>
								<li>
									<p>
										<strong>이메일&nbsp;&nbsp;<span class=col>:&nbsp;</span></strong>
											<a href="#" class="altbtn e_btn">변경</a>
										<span id="span_email">${sessionScope._USER_.email }</span>
									
									</p>
									<span class="btn_list">
									</span>
								</li>
							</ul>
						</div>
						<p class="txt_second_info">휴대폰번호와 이메일이 변경되면 반드시 수정해 주세요.</p>
					</li>
				</ul>
			</div>
			<div class="bottom_line">
				<ul>
					<li>
						멜론 서비스(멜론, 멜론티켓, 쇼윙, 아지톡)를 더 이상 이용하지 않는다면, 
						<a href="javascript:void(0)" class="withdraw">회원탈퇴</a>
					</li>
				</ul>
			</div>
		</div>
	
	</div>
		
	<jsp:include page="/WEB-INF/view/footer.jsp" />
	
</body>
</html>