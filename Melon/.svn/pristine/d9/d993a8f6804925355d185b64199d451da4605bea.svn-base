<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<jsp:include page="/WEB-INF/view/user/mini_login.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Melon::음악이 필요한 순간, 멜론</title>
<link rel="shortcut icon" type="image/x-icon" href="${path }/img/main/favicon.ico" id="favicon"/>
<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="${path}/css/chart/albumInfo.css" />
<script type="text/javascript">
	$(function() {
		//재생
		$(".play_btn").click(function(e) {
			var play = $(this).closest(".song_name_list").find(".playAudio")[0];
			
			if (play.paused) {
				$(this).css("background-position", "-269px top");
				play.play();
			}
			else {
				$(this).css("background-position", "-168px top");
				play.pause();
			}
		});
		
		// 뮤직비디오
		$(".mv_td a").click(function(e) {
			$("#mvWrapper").find("#mv").attr("src", $(this).attr("data-mv"));
			$("html, body").stop().animate({scrollTop: "0px"});
			$("#mvWrapper").css("display", "block");
			$("#albumInfoWrapper").prop('disabled', true).css({"pointer-events": "none", opacity: "0.5"});
		});
		
		$("#mv_btn_close").click(function(e) {
			$("#mvWrapper").css("display", "none");
			$("#albumInfoWrapper").prop('disabled', true).css({"pointer-events": "auto", opacity: "1"});
		});
		
		// 다운로드
		$(".download_td a").click(function(e) {
			var songName = $(this).attr("data-songName");
			
			$.post("${path}/search/downloadSong", {songName : songName}, function(data) {
				
			});
		});
		
		// 좋아요
		$(".likeBtn").click(function(e) {
			var likeDiv = $(this).closest(".like_div");
			
			var userId = "${sessionScope._USER_.id}";
			if ( userId == "" ) {
				userId = "guest";
			}
			
			$.post("${path}/user/get/" + userId, {}, function(response) {
				if ( response == "false" ) {
					$("html, body").stop().animate({scrollTop: "0px"});
					$("#albumInfoWrapper").prop('disabled', true).css({"pointer-events": "none", opacity: "0.5"});
					$("#miniWrapper").css({display: "block"});
				}
				else {
					var like = parseInt(likeDiv.find(".likeImg").css("background-position"));
					
					var musicId = likeDiv.find(".likeBtn").attr("data-musicId");
					var count = parseInt(likeDiv.find(".likeCount").text());
					
					if (like == 0) {
						likeDiv.find(".likeImg").css("background", "url(/Melon/img/search/bg_sprite_red.png) no-repeat -56px top");
						likeDiv.find(".likeCount").text(++count);
					}
					else {
						likeDiv.find(".likeImg").css("background", "url(/Melon/img/search/bg_sprite_gray.png) no-repeat left top");
						likeDiv.find(".likeCount").text(--count);
					}
					
					$.post("${path}/search/countUpdate/" + musicId, {count : count}, function(data) {});
				}
			});
			
		});
		
		// 가사보기
		$(".lyrics_btn ").click(function(e) {
			$(".txtWrapper").css("display", "block");
			$(".txtWrapper").stop().animate({
				height: "500px",
				width: "500px"
			}, 800);
			
			$(".txtWrapper h1").text($(this).attr("data-songN"));
			$(".txtWrapper .song_lyrics").text($(this).attr("data-lyrics"));
		})
		
		$(".txtWrapper").mouseleave(function(e) {
			$(this).css({display: "none", height: "0"});
		});
		
		// 다운로드
		$(".download a").click(function(e) {
			var songName = $(this).attr("data-songName");
			
			$.post("${path}/search/downloadSong", {songName : songName}, function(data) {
				
			});
		});
		
		// 로그인 버튼
		$("#submitBtn").click(function(e) {
			var id = $.trim($("#id").val());
			var pw = $.trim($("#password").val());
			
			if (id.length != 0 && pw.length != 0) {
				$.post("${path}/user/miniLogin", $("#miniForm").serialize(), function(data) {
					if (data == "success") {
						$(".btn_close").click();
					}
					else {
						alert("아이디, 비밀번호를 확인하세요");
					}
				});
			}
		});
	});
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
	<div class="txtWrapper">
		<h1></h1>
		<div class="song_lyrics"></div>
	</div>
	
	<div id="mvWrapper">
		<h1>Music Video</h1>
		<iframe id="mv" width="560" height="315" src="" frameborder="0" allowfullscreen></iframe>
		<button type="button" title="로그인 닫기" id="mv_btn_close"><span></span></button>
	</div>
	
	 <div id="albumInfoWrapper">
		<div class="head_title">앨범 정보</div>
			<c:forEach var="album" items="${chartVOList }">  <!-- 강화된 for문 -->
				<div class="albumInfoBox">
					<div class="leftSide">
						<div>
							<img src="${path }/img/chart/albumPoster/${album.albumPoster}" width="216px"/>
						</div>
						<a href="javascript:void(0)" class="albumBoxBtn1"></a>
						<a href="javascript:void(0)" class="albumBoxBtn2"></a>
						<a href="javascript:void(0)" class="albumBoxBtn3"></a>
					</div>
					
					<div class="centralSide">
						[${album.genre}]
						<p>
							<span>${album.albumSubject}</span>
						</p>
						<div class="leftAlbumInfo inline">
							<div>아티스트</div>
							<div>발매일</div>
							<div>발매사</div>
							<div>기획사</div>
							<div>장르</div>
						</div>
						<div class="rightAlbumInfo inline">
							<div>${album.artistVO.artistName}</div>
							<div>${album.issueDate}</div>
							<div>${album.musicProduction}</div>
							<div>${album.musicLabel}</div>
							<div>${album.genre}</div>
						</div>
						
						<table>
							<tr>
								<td>공유하기</td>
								<td>
									<span class="suggest_to_frineds"></span>
									<span class="facebook inline"></span>
									<span class="tweeter inline"></span>
								</td>
							</tr>
							<tr>
								<td>선물하기</td>
								<td class="gift_btn">
									<span></span>
								</td>
							</tr>
						</table>
					</div>
					<div class="rightSide">
						<div class="rateMenu">
							<div class="inline rateAndReview">★평점</div>
							<div class="inline">
								<span>★★★★☆ </span>
								<h3 class="inline"> 4.2</h3>
							</div>
							<div class="raters">
								<div class="inline"><span>35,548명  </span></div>
							<!-- 	<div class="inline rateBtn"></div> -->
							</div>
						</div>
						<div class="rateMenu">
							<div class="inline rateAndReview"><span class="review_span"></span>리뷰</div>
							<div class="inline">11,498개<span class="reviewBtn_span"></span></div>
						</div>
						 
						<%-- <div>
							<div class="inline like_btn"></div>
							<div class="inline like_count">${album.likeCount}명</div>
						</div> --%>
						<div style="text-align: center">
							<div class="inline"><img src="${path }/img/chart/albumInfo/bg_thumb_54_170117.png" /></div>
							<div class="inline"><img src="${path }/img/chart/albumInfo/bg_thumb_54_170117.png" /></div>
							<div class="inline"><img src="${path }/img/chart/albumInfo/bg_thumb_54_170117.png" /></div>
							<div class="inline"><img src="${path }/img/chart/albumInfo/bg_thumb_54_170117.png" /></div>
						</div>
					</div>
				</div>
	
		 <div class="menu_title"><span>| </span> 수록곡</div>
		 <a class="select_all_green_btn"></a>
		 <a class="listen_green_btn"></a>
		 <a class="download_green_btn"></a>
		 <a class="flac_green_btn"></a>
		 <a class="add_green_btn"></a>
		 <a class="gift_green_btn"></a>
		 
		 <table style="width: 100%">
			<colgroup>
				<col width="29px"/>
				<col width="48px"/>
				<col width="100px"/>
				<col width="*"/>
				<col width="217px"/>
				<col width="89px"/>
				<col width="43px"/>
				<col width="27px"/>
				<col width="45px"/>
			</colgroup>
		
			<tr>
				<th><input type="checkbox" /></th>
				
				<th>NO</th>
				
				<th> </th>
				
				<th>곡명</th>
				
				<th>아티스트</th>
				
				<th>좋아요</th>
				
				<th>뮤비</th>
				
				<th>다운</th>
				
				<th>링/벨</th>
				
			</tr>
			
			<c:forEach var="musicList" items="${musicList }" varStatus="st">
			<tr>
				<td>
					<input type="checkbox" />
				</td>
				
				<td>${st.index+1 }</td>
				
				<td>
					<div class="song_name_list">
						<a class="play_btn" href="javascript:void(0)"></a> 
						<audio class="playAudio">
							<source src="${path }/img/mp3/${musicList.musicFileName }" type="audio/mpeg">	
						</audio>
					
						<a class="add_btn"></a>
						<a class="lyrics_btn" href="javascript:void(0)" data-lyrics="${musicList.lyrics }" data-songN="${musicList.musicSubject }"></a>
					</div>
				</td>
				
				<td>${musicList.musicSubject }</td>
			
				<td>${musicList.artistVO.artistName }</td>
				
				<td class="like">
					<div class="like_div">
						<a class="likeBtn" href="javascript:void(0)" data-musicId="${musicList.musicId }">
							<span class="likeImg"></span>
							<span class="likeCount">${musicList.likeCount }	</span>
						</a>
					</div>
				</td>
				
				
				<td class="mv_td">
					<a href="javascrip:void(0)" data-mv="${musicList.mvName }"></a>
				</td>
				
				<td class="download_td">
					<a href="${path}/search/downloadSong?songName=${musicList.musicFileName }"></a>
				</td>
				
				<td>
					<a class="ringNbell_td"></a>
				</td>
			
			</tr>
			</c:forEach> 
		 </table> 
		 
		 <div class="green_buttons">
			 <a class="select_all_green_btn"></a>
			 <a class="listen_green_btn"></a>
			 <a class="download_green_btn"></a>
			 <a class="flac_green_btn"></a>
			 <a class="add_green_btn"></a>
			 <a class="gift_green_btn"></a>
		</div>
		<div class="menu_title"><span>| </span>앨범소개</div>
		
		<div class="inline subtitle">
		 	<div class="inline" style="width: 850px"> ${album.subtitle}</div>
		 	<div class="inline" style="float:right"><img src="${path }/img/chart/albumPoster/${album.albumPoster}" width="150px;"/></div>
		</div>
		 </c:forEach>
	</div>
	<jsp:include page="/WEB-INF/view/footer.jsp" />
</body>
</html>