<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<jsp:include page="/WEB-INF/view/user/mini_login.jsp" />
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Melon::음악이 필요한 순간, 멜론</title>
	<link rel="shortcut icon" type="image/x-icon" href="${path }/img/main/favicon.ico" id="favicon"/>
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
	
	<link rel="stylesheet" href="${path }/css/search/search.css">
	
	<script type="text/javascript">
		var userId = "${sessionScope._USER_.id}";
		$(function() {
			// 노래듣기
			$(".playBtn").click(function(e) {
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
			
			// 좋아요
			$(".likeBtn").click(function(e) {
				var likeDiv = $(this).closest(".like_div");
				
				if ( userId == "" ) {
					userId = "guest";
				}
				
				$.post("${path}/user/get/" + userId, {}, function(response) {
					if ( response == "false" ) {
						$("html, body").stop().animate({scrollTop: "0px"});
						$("#searchWarpper").prop('disabled', true).css({"pointer-events": "none", opacity: "0.5"});
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
			$(".txtBtn").click(function(e) {
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
				
				$.post("${path}/search/downloadSong", {songName : songName}, function(data) {});
			});
			
			
			// 뮤직비디오
			$(".mv a").click(function(e) {
				$("#mvWrapper").find("#mv").attr("src", $(this).attr("data-mv"));
				$("html, body").stop().animate({scrollTop: "0px"});
				$("#mvWrapper").css("display", "block");
				$("#searchWarpper").prop('disabled', true).css({"pointer-events": "none", opacity: "0.5"});
				
			});
			
			$("#mv_btn_close").click(function(e) {
				$("#mvWrapper").css("display", "none");
				$("#searchWarpper").prop('disabled', true).css({"pointer-events": "auto", opacity: "1"});
				
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
	
	<div id="searchWarpper">
		<div class="search_phrse" id="search_phrse">
		    <p>
		        <strong class="fc_serch">‘${keyword }’</strong>에 대한 검색 결과입니다.
		    </p>
		</div>
		
		<c:if test="${empty searchList }">
			<div class="section_no_data">
				<div class="t_center">
					<p class="text_emphs"><strong>‘<span class="fc_point noline">${keyword }</span>’(으)로 검색한 결과가 없습니다.</strong></p>
				</div>
				
				<ul class="list_bullet">
					<li>검색어의 <strong>철자</strong>와 <strong>띄어쓰기</strong>가 정확한지 확인해 주세요.</li>
					<li>검색어의 단어수를 줄이거나, 보다 일반적인 단어 등 <strong>다른 검색어</strong>를 입력해 보세요.</li>
				</ul>
			</div>
		</c:if>
		
		<c:if test="${not empty searchList }">
			<div class="section_atist">
				<h3 class="title first">아티스트</h3>
	
				<div class="artist-info">
					<!-- 이미지 -->
					<div class="artist-img">
						<a href="${path }/chart/albumInfo/${searchList[0].MUSIC_ID }">
							<img alt="아티스트 이미지" src="${path }/img/chart/artistChannel/${searchList[0].ARTIST_IMAGE }" width="208px" height="208px" />
						</a>
					</div>
					
					<!-- 정보 -->
					<ul>
						<li>
							<div class="artist-name">
								<a href="${path }/chart/albumInfo/${searchList[0].MUSIC_ID }">${searchList[0].ARTIST_NAME }</a>
							</div>
						</li>
						
						<li>
							<table>
								<tr>
									<td width="70px">국적</td>
									<td>${searchList[0].NATIONALITY }</td>
								</tr>
								
								<tr>
									<td>활동유형</td>
									<td>${searchList[0].ACTIVITY_TYPE }</td>
								</tr>
								
								<tr>
									<td>활동년대</td>
									<td>${searchList[0].ACTIVITY_GENERATION }</td>
								</tr>
								
								<tr>
									<td>활동장르</td>
									<td>${searchList[0].ACTIVITY_GENRE }</td>
								</tr>
								
								<tr>
									<td>생일</td>
									<td>${searchList[0].ARTIST_BIRTHDAY }</td>
								</tr>
							</table>
						</li>
					</ul>
					
					<div style="clear: both;"></div>
				</div>		
						
			</div>
			
			<div class="section_song">
				<table>
					<colgroup>
						<col width="29px">
						<col width="48px">
						<col width="*">
						<col width="152px">
						<col width="146px">
						<col width="80px">
						<col width="43px">
						<col width="27px">
						<col width="45px">
					</colgroup>
					<tr>
						<th>
							<div class="wrap pd_none left">
								<input type="checkbox" title="곡 목록 전체 선택" class="input_check d_checkall">
							</div>
						</th>
						<th><div class="wrap">NO</div></th>
						<th><div class="wrap">곡명</div></th>
						<th class="t_left"><div class="wrap">아티스트</div></th>
						<th class="t_left"><div class="wrap">앨범</div></th>
						<th class="t_left"><div class="wrap right_none">좋아요</div></th>
						<th><div class="wrap pd_none left">뮤비</div></th>
						<th><div class="wrap pd_none">다운</div></th>
						<th><div class="wrap pd_none right">링/벨</div></th>
					</tr>
					
					<c:forEach var="song" items="${searchList }" varStatus="st">
					<tr>
						<td>
							<input type="checkbox" class="chkbox">
						</td>
						
						<td class="no">
							${st.count }
						</td>
						
						<td class="song_name">
							<div class="song_name_list">
								<a class="playBtn" href="javascript:void(0)"></a>
								<audio class="playAudio">
									<source src="${path }/img/mp3/${song.MUSIC_FILE_NAME }" type="audio/mpeg">
								</audio>
								<a class="addBtn" href="javascript:void(0)"></a>
								<a class="txtBtn" href="javascript:void(0)" data-lyrics="${song.LYRICS }" data-songN="${song.MUSIC_SUBJECT }"></a>
								
								<a class="song_title" href="javascript:void(0)">${song.MUSIC_SUBJECT }</a>
							</div>
						</td>
						
						<td class="artist">
							<div class="artist_div">
								${song.ARTIST_NAME }
							</div>
						</td>
						
						<td class="album_name">
							<div class="album_name_div">
								${song.ALBUM_SUBJECT }
							</div>
						</td>
						
						<td class="like">
							<div class="like_div">
								<a class="likeBtn" href="javascript:void(0)" data-musicId="${song.MUSIC_ID }">
									<span class="likeImg"></span>
									<span class="likeCount">${song.LIKE_COUNT }</span>
								</a>
							</div>
						</td>
						
						<td class="mv">
							<a href="javascript:void(0)" data-mv="${song.MV_NAME }">${song.MV_NAME }</a>
						</td>
						
						<td class="download">
							<a href="${path}/search/downloadSong?songName=${song.MUSIC_FILE_NAME }"></a>
						</td>
						
						<td class="ringbell">
							<a href="javascript:void(0)"></a>
						</td>
					</tr>
					</c:forEach>
				</table>
			</div>
			
			<div class="btn-wrap">
				<button title="전체선택">
					<span></span>전체선택
				</button>
				
				<button title="듣기">
					<span></span>듣기
				</button>
				
				<button title="다운">
					<span></span>다운
				</button>
				
				<button title="담기">
					<span></span>담기
				</button>
				
				<button title="선물">
					<span></span>선물
				</button>
			</div>
		</c:if>
	
	</div>
	<jsp:include page="/WEB-INF/view/footer.jsp" />
</body>
</html>