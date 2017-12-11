<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/css/magazine/magazine-style.css"/>

<script type="text/javascript" src="${path}/js/jquery-3.2.1.min.js"></script>
<!-- <script type="text/javascript">
 	$().ready(function(){
		<c:if test="${not empty sessionScope._USER_}">
	 		var params = {
	 				categoryId: "${categoryId}",
	 				magzineId: "${magazineId}",
	 				content: reply_content,
	 				parentId: reply_id,
	 				likeCount: reply_like_count,
	 				dislikeCount: reply_dislike_count
	 		};
			$("#reply_btn").on("click", ""){
				$.post("${path}/reply/list", params, function(response){
					modifyMode = false;
					$("#reply_content").val("");
					$("#reply_content").focus();
				})
			}
		</c:if>		
	});
</script> -->

</head>
<body>

<jsp:include page="/WEB-INF/view/header.jsp" />

<div class="wrap">
	<div class="wrap2">		
		<div class="" style="float: left;width: 736px;min-height: 500px; border-right: 1px solid silver;">
			내용
 			<div style="width: 716px;">
				<h4><span class="reply_write_header">리뷰</span></h4>
				<div style="margin-bottom: 25px;display: block;">
				<div>
					<textarea id="reply_content" rows="5" cols="5"></textarea>
					<button id="reply_btn" ></button>
				</div>
					<div>
						<span style="float:left;font-weight: bold;">
							총<span style="font-weight: bold;"> 2</span>개</span>
					</div>
					<div style="float:right;">
						<span style="margin-right: 4px;" title="최신순으로 보기">최신순</span>
						<span class="reply_seperator"></span>
						<span style="margin-right: 4px;" title="추천순으로 보기">추천순</span>
						<span class="reply_seperator"></span>
						<span style="margin-right: 4px;" title="답글순으로 보기">답글순</span>
					</div>
				</div>
				<div style="clear: both;width: 690px;padding: 15px 0 7px 25px;height: 100px;border-top: 1px solid silver;border-bottom: 1px solid silver;position: absolute;">
					<div style="position: relative;display: inline-block;">
						<a style="display: inline-block;"><img style="border: 0;position: absolute;" src="http://cdnimg.melon.co.kr/resource/image/cmt/web/common/noArtist02_300.jpg/melon/resize/120" width="54" height="54">
							<span style="display: inline-block;position: relative;width: 54px;height: 54px; 
						    background: url(http://cdnimg.melon.co.kr/resource/image/cmt/web/common/bg_frame_54.png) no-repeat;"></span>
						</a>
<!-- 						<div style="position: relative;"> -->
							<span style="padding-left:25px; padding-bottom: 20px;vertical-align: top;">aaa</span>
<!-- 						</div> -->
					</div>
					<div style="position: relative;display: inline-block;vertical-align: top;margin-left: 100px;">
						<span style="color: #555;display: block;">댓글1</span>
						<span style="font-size: 11px;color: #999;display: block;margin-bottom: 10px;">3시간 전</span>
						<span style="font-size: 12px;line-height: 1.4em;color: #555;">답글</span>
						<span style="font-size: 12px;font-weight: bold;">0</span>
    					<span style="font-size: 12px;line-height: 1.4em;color: #555;">개</span>
    					<span style="width: 5px;
						    height: 3px;
						    display: inline-block;
						    background: url(http://cdnimg.melon.co.kr/resource/image/cmt/web/common/bg_btn_icon.png) no-repeat -291px top;
						    vertical-align: 3px;"></span>
					</div>
					<div style="position: relative;display: inline-block;margin-left: 300px;">
						<span style="display: block;margin-right:10px;
						    position: absolute;
						    left: 0;
						    top: 0;
						    width: 27px;
						    height: 27px;
						    background: url(http://cdnimg.melon.co.kr/resource/image/cmt/web/common/bg_cmt_recm.png) no-repeat 0 0;
						    font-size: 0;
						    line-height: 0;"></span>
    					<span>33</span>
    					<span style="    display: block;
						    position: absolute;
						    left: 0;
						    top: 0;
						    width: 27px;
						    height: 27px;
						    background: url(http://cdnimg.melon.co.kr/resource/image/cmt/web/common/bg_cmt_recm.png) no-repeat 0 0;
						    font-size: 0;
						    line-height: 0;"></span>
    					<span>34</span>
					</div>
				</div>
			</div>
		</div>
		<div style="float: left;width: 224px;">
			<div style="padding-left: 15px;">
				<h4 class="new_title" style="font-weight: bold;font-size: 100%;margin-bottom: 12px;">최신 매거진</h4>
			</div>
			<ul>
				<li>
					<a><img src="${path}/img/magazine/magazine_all1.JPG" style="padding-left: 15px;"></a>
					<dl>
						<dt>
							<a style="padding-left: 15px;color: #1a1a1a;text-decoration: none;font-weight: bold;">
								dd
							</a>
						</dt>
						<dd style="margin-bottom: 12px;">
							<a style="padding-left: 15px;color: #1a1a1a;text-decoration: none;">
								dd
							</a>
						</dd>
					</dl>
				</li>
				<li>
					<a><img src="${path}/img/magazine/magazine_all1.JPG" style="padding-left: 15px;"></a>
					<dl>
						<dt>
							<a style="padding-left: 15px;color: #1a1a1a;text-decoration: none;font-weight: bold;">
								dd
							</a>
						</dt>
						<dd>
							<a style="padding-left: 15px;color: #1a1a1a;text-decoration: none;">
								dd
							</a>
						</dd>
					</dl>
				</li>
			</ul>
		</div>
		
		<c:if test="${sessionScope._USER_.id == 'admin'}">
			<div><a id="modify_mag" href="javascript:void(0)" class="modify_btn">수정</a></div>
			<div><a id="delete_mag" href="javascript:void(0)" class="delete_btn">삭제</a></div>
 		</c:if>

		<div id="replies"></div>		
		
	</div>
</div>


<jsp:include page="/WEB-INF/view/footer.jsp" />

</body>
</html>