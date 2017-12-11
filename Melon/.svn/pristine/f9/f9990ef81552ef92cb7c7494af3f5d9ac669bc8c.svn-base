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
<link rel="stylesheet" href="${path}/css/common.css" />
<link rel="stylesheet" href="${path}/css/user/member_join_complete.css" />
<script type="text/javascript">


</script>	
<body>
</body>
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
	  <div class="bigName">
		<h2 class="join_title">멜론  회원가입 완료<br/><span class="recieve_name">${user.name }</span> 님,환영합니다.</h2>
	  </div>
	  <div class="content_info">
	  	<div class="info">
	  		<table border="1" style="width:100%">
	  		  <colgroup>
	  		  	<col style="width:169px;">
	  		  	<col>
	  		  </colgroup>
	  		  <tbody>
	  		  	<tr class="first_cont">
	  		  		<th scope="row">
	  		  			<div class="melonId melonWrap">멜론 아이디</div>
	  		  		</th>
	  		  		<td class="melonWrap">
	  		  			<div class="first_right_cont">
	  		  				<span class="first_right_content point melonWrap">${user.id }</span>
	  		  			</div>
	  		  		</td>
	  		  	</tr>
	  		  	<tr class="sencond_cont">
	  		  		<th scope="row">
	  		  			<div class="melonNick melonWrap">닉네임</div>
	  		  		</th>
	  		  		<td class="melonId melonWrap">
	  		  			<div class="second_right_cont">
	  		  				<span class="second_right_content melonWrap">${user.nickName }</span>
	  		  			</div>
	  		  		</td>
	  		  	</tr>
	  		  	 <tr class="third_cont">
	  		  		<th scope="row">
	  		  			<div class="melonName melonWrap">이름</div>
	  		  		</th>
	  		  		<td class="melonId melonWrap">
	  		  			<div class="third_right_cont">
	  		  				<span class="third_right_content melonWrap">${user.name }</span>
	  		  			</div>
	  		  		</td>
	  		  	</tr>
	  		  	 <tr class="fourth_cont">
	  		  		<th scope="row">
	  		  			<div class="melonPhone melonWrap">휴대폰 번호</div>
	  		  		</th>
	  		  		<td class=" melonWrap">
	  		  			<div class="fourth_right_cont">
	  		  				<span class="fourth_right_content melonWrap">${user.phoneNo }</span>
	  		  			</div>
	  		  		</td>
	  		  	</tr>
	  		  	 <tr class="fifth_cont">
	  		  		<th scope="row">
	  		  			<div class="melonEmail melonWrap melonWrap">이메일</div>
	  		  		</th>
	  		  		<td class="melonWrap">
	  		  			<div class="fifth_right_cont">
	  		  				<span class="fifth_right_content">${user.email }</span>
	  		  			</div>
	  		  		</td>
	  		  	</tr>
	  		  </tbody>
	  		</table>
	  	</div>
	  </div>
	  <ul class="bottom_list">
	  	<li class="dote">
	  		<span class="first-li">닉네임은 회원정보/글작성 시 수정할 수 있습니다.
	  		</span>
	  	<p> </p>
	  	</li>
	  	
	  	<li class="dote">
	  		<span class="second-li">휴대폰번호와 이메일이 변경되면, 회원정보에서 휴대폰정보와<br/>  이메일을 변경해주세요.
	  		</span>
	  	</li>
	  </ul>
	  <div class="buttom_button">
			<a href="${path }/" class="next_button" id ="next_btn">확인</a>
		</div>
	
	 </div>
	<jsp:include page="/WEB-INF/view/user/user_footer.jsp"/>
</div>




</html>