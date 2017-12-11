<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<jsp:useBean id="today" class="java.util.Date" />
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Melon::음악이 필요한 순간, 멜론</title>
	<link rel="shortcut icon" type="image/x-icon" href="${path }/img/main/favicon.ico" id="favicon"/>
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
	
	<link rel="stylesheet" href="${path }/css/main.css">
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	
	<script type="text/javascript">
	(function($) {
		$(function() {
			<c:if test="${not empty msg }">
				alert("${msg}");
			</c:if>
			
			/* album */
			var leftPx = 0;
			var ulCount = $(".mySlides").length;
			var albumPx = parseInt($(".mySlides").css("width"));
			var maxUl = (ulCount - 1) * albumPx;
			$(".album_list .pageNumber .pageTotal").text(ulCount);
			var pageStrong = 1;
			$("#prev").click(function(e) {
				if (leftPx != 0) {
					leftPx += albumPx;
					$(".mySlides").stop().animate({"left": leftPx+"px"}, 800);
					$(this).closest(".album_list").find(".pageNumber").children("strong").text(--pageStrong);
				}
			});
			
			$("#next").click(function(e) {
				if (leftPx != (maxUl * -1)) {
					leftPx -= albumPx;
					$(".mySlides").stop().animate({"left": leftPx+"px"}, 800);
					$(this).closest(".album_list").find(".pageNumber").children("strong").text(++pageStrong);
				}
			});
			
			/* issue */
			var issuePx = 0;
			var issueCount = $(".issue_div").length;
			var issueDiv = parseInt($(".issue_div").css("width"));
			var maxIssue = (issueCount - 1) * issueDiv;
			$(".hot_issue .pageNumber .pageTotal").text(issueCount);
			var issuePage = 1;
			$("#prev_issue").click(function(e) {
				if (issuePx != 0) {
					issuePx += issueDiv;
					$(".issue_div").stop().animate({"left": issuePx+"px"}, 800);
					$(this).closest(".hot_issue").find(".pageNumber").children("strong").text(--issuePage);
				}
			});
			
			$("#next_issue").click(function(e) {
				if (issuePx != (maxIssue * -1)) {
					issuePx -= issueDiv;
					$(".issue_div").stop().animate({"left": issuePx+"px"}, 800);
					$(this).closest(".hot_issue").find(".pageNumber").children("strong").text(++issuePage);
				}
			});

			/* bxslider */
			$('.bxslider').bxSlider({
				auto: true,
				autoControls: true,
				stopAutoOnClick: true,
				pager: true,
				slideWidth: 236
			});
			
			/* chart realtime mouse event */
			$(".typeRealtime > ul .rank_item").mouseenter(function(e) {
				$(".typeRealtime .rank_item").removeClass("active");
				$(this).addClass("active");
			});
			
			$(".typeRealtime > ul .rank_item").mouseleave(function(e) {
				$(".typeRealtime .rank_item").removeClass("active");
				$(this).addClass("active");
			});
			
			/* chart pot mouse event */
			$(".typePop .rank_item").mouseenter(function(e) {
				$(".typePop .rank_item").removeClass("active");
				$(this).addClass("active");
			});
			
			$(".typePop .rank_item").mouseleave(function(e) {
				$(".typePop .rank_item").removeClass("active");
				$(this).addClass("active");
			});
			
			/* chart artist mouse event */
			$(".typeArtist .rank_item").mouseenter(function(e) {
				$(".typeArtist .rank_item").removeClass("active");
				$(this).addClass("active");
			});
			
			$(".typeArtist .rank_item").mouseleave(function(e) {
				$(".typeArtist .rank_item").removeClass("active");
				$(this).addClass("active");
			});
			
			/* chart 카테고리 선택 */
			$(".wrap_chart_tab ul li").click(function(e) {
				$(".wrap_chart_tab ul li").removeClass("on");
				$(this).addClass("on");
			});
			
			
			// 인기글 / 최신글 버튼
			$(".mlog_without_page_change:first").css({color: "#000", fontWeight: "700"});
			$(".mlog_without_page_change").click(function(e) {
				$(".mlog_without_page_change").css({color: "#666", fontWeight: "400"});
				$(this).css({color: "#000", fontWeight: "700"});
				
				if ($(this).text() == "인기순") {
					$(".newest").css("display", "none");
					$(".popul").css("display", "block");
				}
				else {
					$(".popul").css("display", "none");
					$(".newest").css("display", "block");
				}
			});
			
			// 이건 어때요 페이지 버튼
			var themaCnt = $(".thema_list").length;
			$(".page .pageNumber .pageTotal").text(themaCnt);
			$(".btn_thema:first").click(function(e) {
				$(".thema_list:first").css("display", "block");
				$(".thema_list:last").css("display", "none");
				$(".page .pageNumber strong").text(1);
			});
			
			$(".btn_thema:last").click(function(e) {
				$(".thema_list:first").css("display", "none");
				$(".thema_list:last").css("display", "block");
				$(".page .pageNumber strong").text(2);
			});
			
		});
	})(jQuery);
	</script>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/view/header.jsp" />
		
		<div id="bodies">
			<div id="conts">
				<ul>
					<li><!-- 앨범 -->
						<div class="new_album">
							<div class="album_list">
								<div class="mySlides_div">
									<ul class="mySlides">
										<c:forEach var="albums" items="${albumPoster }" varStatus="index">
											<c:if test="${index.index % 6 == 0 && index.index != 0 }">
												</ul>
												<ul class="mySlides">
											</c:if>
											
											<li class="album_li">
												<a href="${path }/chart/albumInfo/${albums.MUSIC_ID }">
													<img alt="album poster" src="${path }/img/chart/albumPoster/${albums.ALBUM_POSTER }" width="156px" height="155px">
												</a>
												<span><a href="${path }/chart/albumInfo/${albums.MUSIC_ID }">${albums.ARTIST_NAME }</a></span>
											</li>
										</c:forEach>
									</ul>
								</div>
								
								<h2><a href="#" title="최신앨범">최신앨범</a></h2>
								
								<span class="pageNumber">
									<strong>1</strong>/<span class="pageTotal"></span>
								</span>
								
								<span class="pageBtn">
									<a href="javascript:void(0)" class="prev" id="prev"><span></span></a>
									<a href="javascript:void(0)" class="next" id="next"><span></span></a>
								</span>
							</div>
						</div>
					</li>
					
					<li><!-- 이벤트 -->
						<div class="event">
							<div class="bxslider">
								<c:forEach var="event" begin="1" end="4">
									<div><a href="#"><img src="${path }/img/main/event/event_${event }.png"></a></div>
								</c:forEach>
							</div>
						</div>
					</li>
					
					<li><!-- 로그인 -->
						<div class="login_wrap_mt">
							<c:if test="${empty sessionScope._USER_ }">
								<div class="login_mt">
									<button class="login_button" onclick="javascript:location.href='${path}/user/login'">
										<span></span>
									</button>
									
									<div class="login_area">
										<a href="${path }/user/find">아이디/비밀번호 찾기</a>
										<a href="${path }/user/join">회원가입</a>
									</div>
								</div>
							</c:if>
							
							<c:if test="${not empty sessionScope._USER_ }">
								<div class="logout_mt">
									<div class="mem_info">
										<strong>
											<a href="${path }/user/myInfo">${sessionScope._USER_.id }</a>님
										</strong>
										
										<a href="${path }/user/myInfo">내정보</a>
										
										<a class="btn_logout" href="${path }/user/logout">로그아웃</a>
									</div>
									
									<div class="mem_used">
										<div class="btn_buy">
											<strong class="product_name">보유중인 이용권이 없습니다.</strong>
											<span><a href="#">이용권 구매</a></span>
										</div>
										
										<ul>
											<li class="nth1"><a href="#"><span><span class="label">쿠폰</span><span class="nm">0</span></span></a></li>
											<li class="nth2"><a href="#"><span><span class="label">캐쉬</span><span class="nm">0</span></span></a></li>
											<li class="nth3"><a href="#"><span><span class="label">선물</span><span class="nm">0</span></span></a></li>
										</ul>
									</div>
								</div>
							</c:if>
							
							<div class="promotion_mt">
								<a href="#">
									<img alt="promotion" src="${path }/img/main/login/promotion_img.png">
								</a>
							</div>
						</div>
					</li>
				</ul>
				
				<!-- 메인배너 -->
				<div class="main_banner">
					<img alt="Main banner" src="${path }/img/main/banner/80.png">
				</div>
				
				
				<!-- 이슈 -->
				<ul class="issue">
					<li>
						<div class="hot_issue">
							<h2>
								<span class="title_link">인기 있어요</span>
								<span class="txt_intro">지금 이슈가 되는 아티스트의 인기 컨텐츠입니다.</span>
								<span class="pageNumber">
									<strong>1</strong>/<span class="pageTotal"></span>
								</span>
								<span class="btn_issue">
									<a href="javascript:void(0)" class="prev" id="prev_issue"><span></span></a>
									<a href="javascript:void(0)" class="next" id="next_issue"><span></span></a>
								</span>
							</h2>
							
							<ul>
								<li>
									<div class="issue_list">
										<div class="issue_div">
											<c:forEach var="magazine" items="${magazine }" varStatus="index">
												<c:if test="${index.index % 6 == 0 && index.index != 0 }">
													</div>
													<div class="issue_div">
												</c:if>
												
												<dl>
													<dd class="mov_area">
														<a href="${path }/magazine/read/2/${magazine.MAGAZINE_ID }" title="제목" class="mlog">
															<img width="223" height="148" src="${path }/img/magazine/poster/${magazine.MAGAZINE_PHOTO }" alt="매거진 포스터">
															<span class="bg_album_frame"></span>
														</a>
													</dd>
													<dt>
														<a href="${path }/magazine/read/2/${magazine.MAGAZINE_ID }" title="${magazine.MAGAZINE_SUBJECT }" class="mlog">
															<span class="title">${magazine.MAGAZINE_SUBJECT }</span>
															<span class="ellipsis">${magazine.MAGAZINE_CONTENT }</span>
														</a>
													</dt>
													<dd class="view_no">
														<!-- 140422_수정 -->
														<span><span class="bar">
																<a href="javascript:void(0)" title="멜론매거진">멜론매거진</a>
														</span><span class="inquiry">조회 <fmt:formatNumber value="${magazine.MAGAZINE_VIEW_COUNT }" pattern="#,###" /></span></span>
														<!-- //140422_수정 -->
													</dd>
												</dl>
											</c:forEach>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</li>
					
					<li>
						<div class="chart">
							<h2>
								<a href="#">멜론차트</a>
							</h2>
							
							<div class="wrap_chart_tab">
								<ul>
								
									<!-- 실시간 차트 -->
									<li class="on nth1">
										<a href="javascript:;" title="실시간 보기" class="d_link tab_link realtime"><span></span></a>
										<span class="none">실시간</span>
										
										<div class="list_wrap typeRealtime">
											<span class="txt_intro">
												<fmt:formatDate value="${today }" pattern="yyyy.MM.dd"/> <strong><fmt:formatDate value="${today }" pattern="HH"/>:00</strong> 기준
											</span>
											
											<ul>
												<c:forEach var="rank" items="${realChart }" varStatus="index">
													<li class="rank_item <c:if test="${index.index == 0 }">active</c:if>">
														<div class="rank_number nth${index.count }">
															<span class="rank">${index.count }</span><span class="none">위</span>
															<span class="ranking_num"><span class="num"></span><span class="icon">단계 상승</span></span>
														</div>
														
														<div class="rank_cntt">
															<div class="thumb">
																<a href="${path }/chart/albumInfo/${rank.MUSIC_ID }" title="앨범" class="mlog">
																	<img width="48" height="48" src="${path }/img/chart/albumPoster/${rank.ALBUM_POSTER }" alt="album_poster">
																	<span class="bg_album_frame"></span>
																</a>
															</div>
															
															<div class="rank_info">
																<p class="song" data-song-no="30514366">
																	<a href="${path }/chart/albumInfo/${rank.MUSIC_ID }" class="ellipsis mlog" title="${rank.MUSIC_SUBJECT }">${rank.MUSIC_SUBJECT }</a>
																</p>
																<div class="artist">
																	<div class="ellipsis"><a href="${path }/chart/albumInfo/${rank.MUSIC_ID }" title="${rank.ARTIST_NAME }" class="fc_mgray mlog">${rank.ARTIST_NAME }</a></div>
																</div>
															</div>
														</div>
													</li>
												</c:forEach>
											</ul>
												
											<div class="chart_btn_area">
												<button type="button" title="TOP 10 재생" onclick="" class="btn_base play d_listen mlog">
													<span class="odd_span">
														<span class="even_span">TOP10 듣기</span>
													</span>
												</button>
												
												<div class="all_view">
													<a href="#" title="멜론차트 더보기" class="mlog"><span>더보기</span></a>
												</div>
											</div>
										</div>
									</li>
									
									
									<!-- POP 차트 -->
									<li class="nth2">
										<a href="javascript:;" title="POP 보기" class="d_link tab_link pop"><span class=""></span></a>
										<span class="none">POP</span>
										
										<div class="list_wrap typePop">
											<span class="txt_intro">
												<fmt:formatDate value="${today }" pattern="yyyy.MM.dd"/> 기준
											</span>
											
											<ul>
												<c:forEach var="pop" items="${popChart }" varStatus="index">
													<li class="rank_item <c:if test="${index.index == 0 }">active</c:if>">
														<div class="rank_number nth${index.count }">
															<span class="rank">${index.count }</span><span class="none">위</span>
															<span class="ranking_num"><span class="num"></span><span class="icon">단계 상승</span></span>
														</div>
														
														<div class="rank_cntt">
															<div class="thumb">
																<a href="${path }/chart/albumInfo/${pop.MUSIC_ID }" title="앨범" class="mlog">
																	<img width="48" height="48" src="${path }/img/chart/albumPoster/${pop.ALBUM_POSTER }" alt="album_poster">
																	<span class="bg_album_frame"></span>
																</a>
															</div>
															
															<div class="rank_info">
																<p class="song" data-song-no="30514366">
																	<a href="${path }/chart/albumInfo/${pop.MUSIC_ID }" class="ellipsis mlog" title="${pop.MUSIC_SUBJECT }">${pop.MUSIC_SUBJECT }</a>
																</p>
																<div class="artist">
																	<div class="ellipsis"><a href="${path }/chart/albumInfo/${pop.MUSIC_ID }" title="${pop.ARTIST_NAME }" class="fc_mgray mlog">${pop.ARTIST_NAME }</a></div>
																</div>
															</div>
														</div>
													</li>
												</c:forEach>
											</ul>
											
											<div class="chart_btn_area">
												<button type="button" title="TOP 10 재생" onclick="" class="btn_base play d_listen mlog">
													<span class="odd_span">
														<span class="even_span">TOP10 듣기</span>
													</span>
												</button>
												
												<div class="all_view">
													<a href="#" title="멜론차트 더보기" class="mlog"><span>더보기</span></a>
												</div>
											</div>
										</div>
									</li>
									
									
									<!-- 아티스트 차트 -->
									<li class="nth3">
										<a href="javascript:;" title="아티스트 보기" class="d_link tab_link artist"><span></span></a>
										<span class="none">아티스트</span>
										<div class="list_wrap typeArtist">
											<span class="txt_intro"><fmt:formatDate value="${today }" pattern="yyyy.MM.dd"/> 기준</span>
											
											<ul class="d_artist_list">
												<c:forEach var="artist" items="${artist }" varStatus="index">
													<li class="rank_item <c:if test="${index.index == 0 }">active</c:if>">
														<div class="rank_number nth${index.count }">
															<span class="rank">${index.count }</span><span class="none">위</span>
															<span class="ranking_num static">
																<span class="num"></span>
																<span class="icon">순위 동일</span>
															</span>
														</div>
														
														<div class="rank_cntt">
															<div class="thumb">
																<a href="${path }/chart/albumInfo/${artist.MUSIC_ID }" title="앨범" class="mlog">
																	<img onerror="WEBPOCIMG.defaultArtistImg(this);" width="48" height="48" src="${path }/img/chart/albumPoster/${artist.ALBUM_POSTER }" alt="">
																	<span class="bg_album_frame"></span>
																</a>
															</div>
															<div class="rank_info" data-arist-no="647971">
																<div class="artist">
																	<div class="ellipsis">
																		<a href="${path }/chart/albumInfo/${artist.MUSIC_ID }" title="${artist.ARTIST_NAME }" class="mlog">${artist.ARTIST_NAME }</a>
																	</div>
																</div>
															</div>
															
															<button type="button" title="팬맺기"  class="btn_fan_b mlog"><span class="odd_span">팬맺기</span></button>
														</div>
													</li>
												</c:forEach>
											</ul>
											
											<div class="chart_btn_area">
												<div class="all_view">
													
													<a href="/artistplus/artistchart/index.htm" title="멜론차트 더보기" class="mlog"><span>더보기<span></span></span></a>
												</div>
											</div>
										</div>
									</li>
									<!-- //아티스트 차트 -->
								</ul>
							</div>
						</div>
					</li>
				</ul>
				
				
				<!-- 새로운 컨텐츠 -->
				<div class="new_conts">
					<h2>
						<a href="#" class="title_link" title="새로 나왔어요"></a>
						<span class="txt_intro"><strong>155</strong>개의 아티스트 컨텐츠가 업로드 되었습니다.</span>
					</h2>
					
					<!-- 인기글 / 최신글 -->
					<div class="section_na">
						<ul>
							<li>
								<a href="javascript:void(0)" title="인기순으로 보기" class="mlog_without_page_change">인기순</a>
							</li>
							
							<li>
								<a href="javascript:void(0)" title="최신순으로 보기" class="mlog_without_page_change">최신순</a>
							</li>
						</ul>
					</div>
					
					<!-- 내용 -->
					<div class="popul">
						<ul>
							<c:forEach var="popul" items="${newAlbum }">
								<li class="np_li">
									<div class="np_img">
										<a class="" href="${path }/chart/albumInfo/${popul.MUSIC_ID }">
											<img alt="앨범 포스터" src="${path }/img/chart/albumPoster/${popul.ALBUM_POSTER }" width="96px" height="96px">
										</a>
									</div>
									
									<div class="explanation">
										<p class="icon_mov">포토</p>
										
										<div>
											<a href="${path }/chart/albumInfo/${popul.MUSIC_ID }">
												<span class="ellipsis">${popul.SUBTITLE }</span>
											</a>
										</div>
									</div>
									
									<div class="artist_wrap">
										<a class="thum" href="#">
											<img alt="가수 이미지" src="${path }/img/chart/artistChannel/${popul.ARTIST_IMAGE }" width="32px" height="32px">
											<span class="bg_album_frame"></span>
										</a>
										
										<span class="artiname">
											<span class="ellipsis" title="${popul.ARTIST_NAME }"><a href="#">${popul.ARTIST_NAME }</a></span>
										</span>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
					
					<div class="newest">
						<ul>
							<c:forEach var="newLike" items="${newAlbumLike }">
								<li class="np_li">
									<div class="np_img">
										<a class="" href="${path }/chart/albumInfo/${newLike.MUSIC_ID }">
											<img alt="앨범 포스터" src="${path }/img/chart/artistChannel/${newLike.ARTIST_IMAGE }" width="96px" height="96px">
										</a>
									</div>
									
									<div class="explanation">
										<p class="icon_mov">포토</p>
										
										<div>
											<a href="${path }/chart/albumInfo/${newLike.MUSIC_ID }">
												<span class="ellipsis"><span class="ellipsis">${newLike.SUBTITLE }</span></span>
											</a>
										</div>
									</div>
									
									<div class="artist_wrap">
										<a class="thum" href="#">
											<img alt="가수 이미지" src="${path }/img/chart/artistChannel/${newLike.ARTIST_IMAGE }" width="32px" height="32px" />
											<span class="bg_album_frame"></span>
										</a>
										
										<span class="artiname">
											<span class="ellipsis" title="${popul.ARTIST_NAME }"><a href="#">${popul.ARTIST_NAME }</a></span>
										</span>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				
				<!-- 이건 어때요 -->
				<div class="recm_conts">
					<h2>
						<span class="title_link">이건 어때요</span>
					</h2>
					
					<ul class="sub_list thema_list" style="display: block;">
						<li class="recm_wrap">
							<div class="recm_thum3">
								<ul>
									<li>
										<span>
											<p>아이돌 네 고향은?</p>
											<span class="fc_gray2">이렇게나 멋진 내 가수..♡<br>어디서 태어났나 했더니! 나랑 똑같아!</span>
										</span>
									</li>
									<li class="thum">
										
										<a href="http://www.melon.com/theme/detail.htm?themeSeq=94" title="한국을 뒤집어 놓은 해외파!" class="mlog">
											<img width="248" height="148" src="http://cdnimg.melon.co.kr/svc/images/main/imgUrl20171019080913.jpg/melon/quality/80" alt="">
											<span class="bg_album_frame"></span>
											<span class="txt_thum">
												<span>한국을 뒤집어 놓은 해외파!</span>
											</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						
						<li class="recm_list">
							<ul>
								<li>
									<dl>
										<dd>
											<a href="http://www.melon.com/theme/detail.htm?themeSeq=86" title="고향 : 경기도" class="mlog">
												<img width="90" height="58" src="http://cdnimg.melon.co.kr/svc/images/main/imgUrl20171019080336.jpg/melon/quality/80" alt="">
												<span class="bg_album_frame"></span>
											</a>
										</dd>
										<dt>
											<a href="http://www.melon.com/theme/detail.htm?themeSeq=86" title="고향 : 경기도" class="mlog">
												<span class="f11">고향 : 경기도</span>
												<span class="title">살어리 살어리랏다..<br>이사 충동 욕구 주의</span>
											</a>
										</dt>
									</dl>
								</li>
								
								<li>
									<dl>
										<dd>
											<a href="http://www.melon.com/theme/detail.htm?themeSeq=92" title="고향 : 제주도" class="mlog">
												<img width="90" height="58" src="http://cdnimg.melon.co.kr/svc/images/main/imgUrl20171019080358.jpg/melon/quality/80" alt="">
												<span class="bg_album_frame"></span>
											</a>
										</dd>
										<dt>
											<a href="http://www.melon.com/theme/detail.htm?themeSeq=92" title="고향 : 제주도" class="mlog">
												<span class="f11">고향 : 제주도</span>
												<span class="title">돌, 바람, 여자만큼<br>많다는 끼쟁이들</span>
											</a>
										</dt>
									</dl>
								</li>
								
								<li>
									<dl>
										<dd>
											<a href="http://www.melon.com/theme/detail.htm?themeSeq=91" title="고향 : 충청도" class="mlog">
												<img width="90" height="58" src="http://cdnimg.melon.co.kr/svc/images/main/imgUrl20171019080418.jpg/melon/quality/80" alt="">
												<span class="bg_album_frame"></span>
											</a>
										</dd>
										<dt>
											<a href="http://www.melon.com/theme/detail.htm?themeSeq=91" title="고향 : 충청도" class="mlog">
												<span class="f11">고향 : 충청도</span>
												<span class="title">충청도에선 뭔일이<br>일어난거래유?</span>
											</a>
										</dt>
									</dl>
								</li>
							</ul>
						</li>
					</ul>
					
					<ul class="sub_list thema_list" style="display: none;">
						<li class="recm_wrap">
							<div class="recm_thum3">
								<ul>
									<li>
										<span>
											<p>아이돌 네 고향은?</p>
											<span class="fc_gray2">이렇게나 멋진 내 가수..♡<br>어디서 태어났나 했더니! 나랑 똑같아!</span>
										</span>
									</li>
									<li class="thum">
										
										<a href="http://www.melon.com/theme/detail.htm?themeSeq=84" title="서울에서 태어난 아이돌 손!" class="mlog">
											<img width="248" height="148" src="http://cdnimg.melon.co.kr/svc/images/main/imgUrl20171015053338.jpg/melon/quality/80" alt="">
											<span class="bg_album_frame"></span>
											<span class="txt_thum">
												<span>서울에서 태어난 아이돌 손!</span>
											</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						
						<li class="recm_list">
							<ul>
								<li>
									<dl>
										<dd>
											<a href="http://www.melon.com/theme/detail.htm?themeSeq=89" title="고향 : 부산" class="mlog">
												<img width="90" height="58" src="http://cdnimg.melon.co.kr/svc/images/main/imgUrl20171015053352.jpg/melon/quality/80" alt="">
												<span class="bg_album_frame"></span>
											</a>
										</dd>
										<dt>
											<a href="http://www.melon.com/theme/detail.htm?themeSeq=89" title="고향 : 부산" class="mlog">
												<span class="f11">고향 : 부산</span>
												<span class="title">부산에서 도대체<br>무슨 일이…? (입틀막)</span>
											</a>
										</dt>
									</dl>
								</li>
								
								<li>
									<dl>
										<dd>
											<a href="http://www.melon.com/theme/detail.htm?themeSeq=90" title="고향 : 광주" class="mlog">
												<img width="90" height="58" src="http://cdnimg.melon.co.kr/svc/images/main/imgUrl20171015053412.jpg/melon/quality/80" alt="">
												<span class="bg_album_frame"></span>
											</a>
										</dd>
										<dt>
											<a href="http://www.melon.com/theme/detail.htm?themeSeq=90" title="고향 : 광주" class="mlog">
												<span class="f11">고향 : 광주</span>
												<span class="title">끼와 흥의 도시를<br>증명하는 라인업★</span>
											</a>
										</dt>
									</dl>
								</li>
								
								<li>
									<dl>
										<dd>
											<a href="http://www.melon.com/theme/detail.htm?themeSeq=88" title="고향 : 강원도" class="mlog">
												<img width="90" height="58" src="http://cdnimg.melon.co.kr/svc/images/main/imgUrl20171015053453.jpg/melon/quality/80" alt="">
												<span class="bg_album_frame"></span>
											</a>
										</dd>
										<dt>
											<a href="http://www.melon.com/theme/detail.htm?themeSeq=88" title="고향 : 강원도" class="mlog">
												<span class="f11">고향 : 강원도</span>
												<span class="title">이야↗ 강원도 <br>친구들 모이라-아↗</span>
											</a>
										</dt>
									</dl>
								</li>
							</ul>
						</li>
					</ul>
					
					<div class="wrap_page">
						<div class="page">
							<span class="pageNumber">
								<strong>1</strong>/<span class="pageTotal"></span>
							</span>
							<span class="wrap_btn">
								<a class="btn_thema" title="이전" href="javascript:void(0);"><span class="odd_span">이전</span></a>
								<a class="btn_thema" title="다음" href="javascript:void(0);"><span class="odd_span">다음</span></a>
							</span>
						</div>
					</div>
				</div>
				
				<!-- 공지사항 -->
				<div class="notice_conts">
					<dl>
						<dt class="label">
							<a href="${path }/notice/list/init" title="공지사항">공지사항</a>
						</dt>
						
						<dd>
							<a href="${path }/notice/read/${notice.NOTICE_ID }" title="공지사항 제목">${notice.SUBJECT }</a>
						</dd>
						
						<dd class="date">
							${notice.NOTICE_DATE }
					 	</dd>
					</dl>
				</div>
			</div>
		</div>
		
		<jsp:include page="/WEB-INF/view/footer.jsp" />
	</div>
</body>
</html>