<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<jsp:include page="/WEB-INF/view/user/mini_login.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/css/magazine/magazine-style.css"/>

<script type="text/javascript" src="${path}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

	<c:if test="${not empty sessionScope._USER_}">
	 	$(function() {
			$(".btn_like_m").click(function(e) {
				var viewCount = $("#d_like_count").text();
				var magazineId = "${magazineVO.magazineId}";
				
				$.post("${path}/magazine/like", {magazineId : magazineId}, function(response) {
					if (response == 'success') {
						$("#d_like_count").text(++viewCount);
					}
				});			
			});
		});
	 	
	 	$(function() {
	 		$("#modifyBtn").on("click", function(){
	 			location.href = "${path}/magazine/update/${magazineVO.magazineId}";
	 		});
	 		$("#deleteBtn").on("click", function(){
	 			location.href = "${path}/magazine/delete/${magazineVO.magazineId}";
	 		});
		});
	 	
 	</c:if>
 
</script>

</head>
<body>

<jsp:include page="/WEB-INF/view/header.jsp" />

<div class="wrap">
	<div class="wrap2">		
	asdf ${magazineVO.categoryId}
		<div class="" style="float: left;width: 736px;min-height: 500px; border-right: 1px solid silver;">
			<div style="border:1px solid gray;height:30px;margin: 15px;">
				<div style="float: left;font-size: 20px;line-height: 20px;font-weight: bold;">${magazineVO.magazineSubject}</div>
				<div style="float: right;">
					<span class="wrap_like" style="margin: 2px 0px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: 돋움, Dotum, '맑은 고딕', 'Malgun Gothic', 'Apple Gothic', sans-serif; vertical-align: baseline; display: inline-block; color: #666666; text-align: right;">
						<button class="btn_like_m" style="zoom: 1; margin: 0px; padding: 0px; background-image: initial; background-position: 0px center; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: middle; white-space: nowrap; cursor: pointer; width: 90px; height: 22px; border: 0px initial initial;" title="시즌 2 30th: 강타 x 웬디 x 슬기 '인형 (Doll)' 좋아요" type="button" data-musicstory-no="5647" data-musicstory-menuid="32" data-target-id="d_like_count">
							<span class="odd_span" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: block; position: relative; width: 90px; height: 22px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/btn_like_m.png') 0px 0px no-repeat; text-indent: -9999px;">
								좋아요
							</span>
						</button>
						<span class="odd_span cnt_like_m" style="margin: 0px; padding: 0px 0px 0px 10px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; display: inline-block; height: 22px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/btn_like_m.png') 1px -120px no-repeat;">
							<span id="d_like_count" class="cnt_span even_span" style="margin: 0px; padding: 5px 6px 0px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 1.2em; font-family: inherit; vertical-align: baseline; display: inline-block; height: 17px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/btn_like_m.png') right -120px no-repeat; color: #333333; text-align: center; min-width: 64px;">
								${magazineVO.magazineLikeCount}
							</span>
						</span>
					</span>
				</div>
			</div>
<!-- 			<div class="like_div"> -->
<%-- 				<a class="likeBtn" href="javascript:void(0)" data-musicId="${musicList.musicId }"> --%>
<!-- 					<span class="likeImg"></span> -->
<%-- 					<span class="likeCount">${musicList.likeCount }	</span> --%>
<!-- 				</a> -->
<!-- 			</div> -->
			<div style="clear: both;margin-top: 100px;border:1px solid gray;min-height:300px;margin: 15px;">${magazineVO.magazineContent}</div>
			<c:if test="${sessionScope._USER_.id == 'admin'}">
				<input type="hidden" id="categoryId" name="categoryId" value="${magazineVO.categoryId}">

				<div><input class="modifyBtn" type="button" id="modifyBtn" value="수정" style="float: right;margin-right: 15px;"></div>
				<div><input class="deleteBtn" type="button" id="deleteBtn" value="삭제" style="float: right;margin-right: 15px;"></div>
	 		</c:if>
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

		<div id="replies"></div>		
		
	</div>
</div>


<jsp:include page="/WEB-INF/view/footer.jsp" />

</body>
</html>