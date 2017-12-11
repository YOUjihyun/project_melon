<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value ="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /> -->
	<title>Melon::음악이 필요한 순간, 멜론</title>
	<meta name="keywords" content="SKT 음악서비스, 최신음악, 인기가요, 뮤직비디오, 앨범, 플레이어, 다운로드" />
	<meta name="description" content="300만 곡이 넘는 방대한 음악 데이터 베이스로 내가 원하는 최신 음악도 바로 업데이트. 세상의 모든 음악은 멜론에서 함께 즐기세요." />
	<meta name="viewport" content="width=device-width"/>
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" href="${path}/css/error/error.css" />
	<script type="text/javascript">

	var melonHome = 'http://localhost:8080/Melon/';

	$(function() {
		if(window.opener){
			$("body").addClass("scroll_dis");
			$("#popup_wrap").css("display", "block");
		} else {
			$("#wrap").css("display", "block");
		}
	});

	function goHomeNewPage(){
		opener.location.href = melonHome;

		window.close();
	}

	function goHome(){
		location.href = melonHome;
	}
	</script>
</head>
<body>
<div id="wrap" style="display: none;">
	<div id="cont_wrap" class="clfix">
			<div id="conts_section" class="pr_none">
			<!-- contents -->
				<div id="conts">
					<!-- 140521_수정 공통 소스 -->
                    <div class="sys_error">
                        <p class="txt_emphs">페이지를 찾을 수 없습니다.</p>
                        <p>요청하신 페이지를 찾을 수 없습니다.<br /><span class="fc_point">잘못된 경로로 접근</span> 하셨거나, <span class="fc_point">사용할 수 없는 웹사이트 주소</span>입니다.<br />이용에 불편을 드려 대단히 죄송합니다.</p>
                        <div class="wrap_btn_c line">
                            <a href="javascript:;" onclick="javascript:goHome();" title="멜론 홈으로 이동하기 " class="btn btn_emphs_small"><span class="odd_span"><span class="even_span">멜론 홈으로 이동하기</span></span></a>
                        </div>
                    </div>
                    <!-- //140521_수정 공통 소스 -->
				</div>
				<!-- //contents -->
			</div>
	</div>
</div>
<div id="popup_wrap" class="popup w560" style="display: none;">
<!-- //131210_수정 -->
	<h1 class="popup_title">페이지 오류 안내</h1>
	<div class="popup_cntt">
		<!-- 140521_수정 공통 소스 -->
        <div class="sys_error">
            <p class="txt_emphs">페이지를 찾을 수 없습니다.</p>
            <p>요청하신 페이지를 찾을 수 없습니다.<br /><span class="fc_point">잘못된 경로로 접근</span> 하셨거나, <span class="fc_point">사용할 수 없는 웹사이트 주소</span>입니다.<br />이용에 불편을 드려 대단히 죄송합니다.</p>
            <div class="wrap_btn_c line">
                <a href="javascript:;" onclick="javascript:goHome();" title="멜론 홈으로 이동하기 " class="btn btn_emphs_small"><span class="odd_span"><span class="even_span">멜론 홈으로 이동하기</span></span></a>
            </div>
        </div>
        <!-- //140521_수정 공통 소스 -->
	</div>
</div>
</body>
</html>