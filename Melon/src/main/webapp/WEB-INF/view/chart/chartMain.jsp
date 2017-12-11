<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="today" class="java.util.Date" />
<c:set var="path" value="${pageContext.request.contextPath }" />
<jsp:include page="/WEB-INF/view/user/mini_login.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Melon::음악이 필요한 순간, 멜론</title>
<link rel="shortcut icon" type="image/x-icon" href="${path }/img/main/favicon.ico" id="favicon"/>
<link rel="stylesheet" href="${path}/css/chart/chartMain.css" />
<script type="text/javascript" src="<c:url value="/js/jquery-3.2.1.min.js"/>"></script>
<script type="text/javascript">
	$().ready(function() {
		 //재생 
		 var isPlay = false;
		 $(".playBtn").click(function(e) {
		 	var play = $(this).closest(".play_td").find(".playAudio")[0];
		 	
		 	if (play.paused) {
		 		$(this).css("background-position", "0 -57px");
				play.play();
			}
			else {
				$(this).css("background-position", "0 -30px");
				play.pause();
			}
		 });
		 
		// 다운로드
			$(".download_td a").click(function(e) {
				var songName = $(this).attr("data-songName");
				
				$.post("${path}/search/downloadSong", {songName : songName}, function(data) {
					
				});
			});
		
		// 뮤직비디오
		$(".mv_td a").click(function(e) {
			$("#mvWrapper").find("#mv").attr("src", $(this).attr("data-mv"));
			$("html, body").stop().animate({scrollTop: "0px"});
			$("#mvWrapper").css("display", "block");
			$(".melonChartWrapper").prop('disabled', true).css({"pointer-events": "none", opacity: "0.5"});
		});
		
		$("#mv_btn_close").click(function(e) {
			$("#mvWrapper").css("display", "none");
			$(".melonChartWrapper").prop('disabled', true).css({"pointer-events": "auto", opacity: "1"});
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
					$(".melonChartWrapper").prop('disabled', true).css({"pointer-events": "none", opacity: "0.5"});
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
	
	<div class="lay_menu">
		<ul>
			<li class="first_child on">
				<a href="#"><span class="menu_chart m1">멜론 TOP 100</span></a>
			</li>
			<li>
				<a href="#"><span class="menu_chart m2">주간 인기상</span></a>
			</li>
			<li>
				<a href="#"><span class="menu_chart m3">트렌드차트</span></a>
			</li>
			<li>
				<a href="#"><span class="menu_chart m4">스타일차트</span></a>
			</li>
			<li>
				<a href="#"><span class="menu_chart m5">시대별 차트</span></a>
			</li>
			
			<li>
				<div class="chart_finder">
					<button class="chart_finder_btn"></button>
				</div>
			</li>
		</ul>
	</div>
	<div class="melonChartWrapper">
		
	<div id="conts">
		<div class="page_header">
			<h2 class="title">멜론 TOP100</h2>
			<div class="tooltip">
				<button class="question_mark"></button>
			</div>
		</div>
		<div class="tab_menu">
			<ul>
				<li class="first_child on">
					<a href="#" class="link_tab"><span>실시간</span></a>
				</li>
				<li>
					<a href="#" class="link_tab"><span>급상승</span></a>
				</li>
				<li>
					<a href="#" class="link_tab"><span>일간</span></a>
				</li>
				<li>
					<a href="#" class="link_tab"><span>주간</span></a>
				</li>
				<li class="last_child">
					<a href="#" class="link_tab"><span>월간</span></a>
				</li>
			</ul>
		</div>
		<br/><br/>
		<div id="currentDateTime">
			<div>
				<fmt:formatDate value="${today }" pattern="yyyy.MM.dd"/>
				<fmt:formatDate value="${today }" pattern="HH" var="hour"/>
				<select>
					<c:forEach begin="0" end="${hour }" varStatus="st">
						<option>${hour - st.index }:00</option> 
					</c:forEach>
				</select>
			</div>
		</div>
		
		<div>
			<button class="button_rbox">
				<span class="button_icon">TOP 100 듣기</span>
			</button>
			
			<button class="button_rbox">
				<span class="button_icon">듣기</span>
			</button>
			
			<button class="button_rbox">
				<span class="button_icon">담기</span>
			</button>
			
			<button class="button_rbox">
				<span class="button_icon">다운</span>
			</button>
			
			<button class="button_rbox">
				<span class="button_icon">FLAC</span>
			</button>
			
			<button class="button_rbox">
				<span class="button_icon">선물</span>
			</button>
		</div>
		
		<div class="chartBody">
			<table>
				<colgroup>
					<col width="15px"/>
					<col width="62px"/>
					<col width="50px"/>
					<col width="60px"/>
					<col width="24px"/>
					<col width="219px"/>
					<col width="190px"/>
					<col width="135px"/>
					<col width="45px"/>
					<col width="52px"/>
					<col width="52px"/>
					<col width="52px"/>
					<col width="52px"/>
				</colgroup>
			
				<tr>
					<th><input type="checkbox" /></th>
					
					<th>순위	</th>
					
					<th></th>
					
					<th></th>
					
					<th></th>
					
					<th>곡정보</th>
					
					<th>앨범</th>
					
					<th>좋아요</th>
					
					<th>듣기</th>
					
					<th>담기</th>
					
					<th>다운</th>
					
					<th>뮤비</th>
					
					<th>링/벨</th>
				</tr>
				
				<c:forEach var="album" items="${chartVOList }" varStatus="st">
					<tr>
						<c:if test="${st.index == 0 }">
							<td class="check_td"></td>
							
							<td class="rank">
								<button></button>
							</td>
						</c:if>
						
						<c:if test="${st.index != 0 }">
							<td class="check_td">
								<input type="checkbox" />
							</td>
							
								
							<td class="rank">
								<span>${st.index }</span>
							</td>
						</c:if>
						
						<td><div class="rank_variation"></div></td>
						
						<td>
							<a href="${path }/chart/albumInfo/${album.musicId}"><img alt="앨범 포스터" src="${path }/img/chart/albumPoster/${album.albumPoster}" width="60px" height="60px"></a>
						</td>
						
						<td class="song_info">
							<a class="lyrics_btn" href="javascript:void(0)" data-lyrics="${album.lyrics }" data-songN="${album.musicSubject }"></a>
						</td>
						
						<td class="song">
							<div>
								<a href="${path }/chart/albumInfo/${album.musicId}">${album.musicSubject }</a>
							</div>
							
							<div>
								<a href="${path }/chart/artistChannel/${album.artistVO.artistId }">${album.artistVO.artistName }</a>
							</div>
						</td>
						
						<td class="album_info">
							<a href="${path }/chart/albumInfo/${album.musicId}">${album.albumSubject }</a>
						</td>
						
						<td class="like_td">
							<div class="like_div">
								<a class="likeBtn" href="javascript:void(0)" data-musicId="${album.musicId }">
									<span class="likeImg"></span>
									<span class="likeCount">${album.likeCount }	</span>
								</a>
							</div>
						</td>
						
						<td class="play_td">
							<button class="playBtn"></button>
							<audio class="playAudio">
								<source src="${path }/img/mp3/${album.musicFileName }" type="audio/mpeg">
							</audio>
						</td>
						
						<td class="contain_td">
							<button></button>
						</td>
						
						<td class="download_td">
							<a href="${path}/search/downloadSong?songName=${album.musicFileName }"></a>
						</td>
						
						<td class="mv_td">
							<a href="javascript:void(0)" data-mv="${album.mvName }"></a>
						</td>
						
						<td class="bell_td">
							<button></button>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/view/footer.jsp" />	
</body>
</html>