<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Melon::음악이 필요한 순간, 멜론</title>
	<link rel="shortcut icon" type="image/x-icon" href="${path }/img/main/favicon.ico" id="favicon"/>
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${path }/js/ticker/jquery.vticker-min.js"></script>
	<link rel="stylesheet" href="${path }/css/common.css">
	<link rel="stylesheet" href="${path }/css/header.css" />
	
	<script type="text/javascript">
		$(function () {
			rolling();
			
			// 게시판 뉴스 액션
			var height = $(".overlay").height();
			var licnt = $(".overlay ol li").length;
			
			var max = height * licnt;
			var movecnt = 0;
			
			var handler = setInterval(rolling, 2000);
			
			function rolling() {
				movecnt += height;
				
				$(".overlay ol").animate({"top":-movecnt}, 600, function() {
					if(movecnt >= max) {
						$(this).css("top", 0);
						movecnt = 0;
					}
				});
			}
			
			$(".overlay").append($(".overlay ol li").first().clone());
			
			$(".overlay").hover(function(e) {
				clearInterval(handler);
				
				$(".realRank").css("display", "block");
			}, function(e) {
				handler = setInterval(rolling, 2000);
			});
			
			$(".realRank").mouseleave(function(e) {
				$(".realRank").css("display", "none");
			});
			
			// 검색 버튼
			$("#searchBtn").click(function(e) {
				var keyword = $.trim($("#searchKeyword").val());
				location.href = "${path}/search/search?keyword=" + keyword;
			});
			
			// 검색창에서 엔터
			$("#searchKeyword").keyup(function(e) {
				if (e.keyCode == 13) {
					$("#searchBtn").click();
				}
			});
			
		});
	</script>
</head>
<body>
	<p class="first_line"></p>
	
	<div id="headerWrapper">
		<div id="gnb">
			<!-- 최상위 -->
			<div id="util_menu">
				<div class="top_left">
					<ul>
						<li><a href="#"><span>멜론티켓</span></a></li>
						<li><a href="#"><span>멜론 아지톡</span></a></li>
					</ul>
				</div>
				
				<div class="top_right">
					<ul>
						<li><a href="#"><span>이용권구매</span></a></li>
						<li><a href="#"><span>VIP혜택관</span></a></li>
						<li><a href="#"><span>이벤트</span></a></li>
					</ul>
				</div>
			</div>
			
			<!-- 메인로고/검색 -->
			<div id="main_logo">
				<div id="logo_line">
					<ul>
						<li><!-- 로고 -->
							<h1>
								<a href="${path }/" title="Melon 로고 - 홈으로 이동">
									<img alt="Melon 로고" src="${path }/img/header/logo_melon142x99.png">
								</a>
							</h1>
						</li>
						
						<li><!-- 검색 -->
							<div id="search">
								<input type="text" id="searchKeyword" name="keyword" />
								<button id="searchBtn"></button>
							</div>
						</li>
						
						<li><!-- 실시간 검색 순위 -->
							<div id="realtime">
								<a href="#" id="realtime_keyword"></a>
								
								<div class="overlay">
									<ol>
										<c:forEach begin="0" end="9" varStatus="st">
											<li>
												<c:if test="${st.index < 3 }">
													<strong style="color: green;">${st.count }.</strong>
												</c:if>
												<c:if test="${st.index >= 3 }">
													<strong>${st.count }.</strong>
												</c:if>
												<a href="">
													<c:if test="${not empty sessionScope._REALRANK_[st.index] }">${sessionScope._REALRANK_[st.index].SEARCH_KEYWORD }</c:if>
													<c:if test="${empty sessionScope._REALRANK_[st.index] }">-</c:if>
												</a>
												<span></span>
											</li>
										</c:forEach>
									</ol>
								</div>
							</div>
						</li>
						
						<li><!-- 배너 -->
							<div id="haader_banner">
								<img alt="banner" src="${path }/img/header/banner/banner.png">
							</div>
						</li>
					</ul>
					
					<div class="realRank">
						<ol>
							<c:forEach begin="0" end="9" varStatus="st">
								<li>
									<c:if test="${st.index < 3 }">
										<strong style="color: green;">${st.count }.</strong>
									</c:if>
									<c:if test="${st.index >= 3 }">
										<strong>${st.count }.</strong>
									</c:if>
									<a href="${path}/search/search?keyword=${sessionScope._REALRANK_[st.index].SEARCH_KEYWORD }">
										<c:if test="${not empty sessionScope._REALRANK_[st.index] }">${sessionScope._REALRANK_[st.index].SEARCH_KEYWORD }</c:if>
										<c:if test="${empty sessionScope._REALRANK_[st.index] }">-</c:if>
									</a>
									<span></span>
								</li>
							</c:forEach>
						</ol>
					</div>
					
					<!-- menu -->
					<div id="header_menu">
						<ul>
							<li><a href="${path }/chart/main/0"><span>멜론차트</span></a></li>
							<li><a href="${path }/magazine/list/2"><span>매거진</span></a></li>
							<li><a href="${path }/notice/list/init"><span>공지사항</span></a></li>
						</ul>
						
						<div id="mypage">
							<ul>
								<li><a href="#"><span>마이뮤직</span></a></li>
								<li><a href="#"><span>피드</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>