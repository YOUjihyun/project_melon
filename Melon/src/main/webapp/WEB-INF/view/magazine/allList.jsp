<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/css/magazine/magazineList-style.css"/>
<script type="text/javascript" src="${path}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
 	$().ready(function(){
 		$("#classifyName1").on("click", function(){
 			location.href = "${path}/magazine/list/2";
 		});
 		$("#classifyName2").on("click", function(){
 			location.href = "${path}/magazine/list/3";
 		});
 		$("#classifyName3").on("click", function(){
 			location.href = "${path}/magazine/list/4";
 		});
 		$("#classifyName4").on("click", function(){
 			location.href = "${path}/magazine/list/5";
 		});
 		$("#classifyName5").on("click", function(){
 			location.href = "${path}/magazine/list/6";
 		});
 		$("#classifyName6").on("click", function(){
 			location.href = "${path}/magazine/list/7";
 		});
 		
 		$("#writeBtn").on("click", function(){
 			location.href = "${path}/magazine/write/${magazineVO.categoryId}";
 		});
 		
/* 		var 
		$(".like_btn").on("click", function(){
			$.post('${path}/view/mmaUpdateLikeCount'){
				
			}
		}); */
	});
</script>
</head>
<body>
<jsp:include page="/WEB-INF/view/header.jsp" />

<div id="listWrap" class="listWrap">
	<div id="listWrap2" class="listWrap2">
		<div id="listWrap3" class="listWrap3">
			<div class="listWrap4">
				<h2 class="magazineTitleWrap">
					<span class="magazineTitle">멜론매거진</span>
				</h2>
				<div id="listWrap5" class="listWrap5">
					<div id="classifyWrap" class="classifyWrap">
						<ul class="classifyList">
							<li class="classify"><a id="classifyName1" class="classifyName" href="javascript:void(0)">전체</a></li>
							<li class="classify"><a id="classifyName2" class="classifyName" href="javascript:void(0)">2017 MMA 결산특집</a></li>
							<li class="classify"><a id="classifyName3" class="classifyName" href="javascript:void(0)">금주의 신보</a></li>
							<li class="classify"><a id="classifyName4" class="classifyName" href="javascript:void(0)">금주의 차트</a></li>
							<li class="classify"><a id="classifyName5" class="classifyName" href="javascript:void(0)">아티스트 갤러리</a></li>
							<li class="classify"><a id="classifyName6" class="classifyName" href="javascript:void(0)">이슈 포커스</a></li>
						</ul>
					</div>

					<div class="titleWrap">
						<h3 class="title">전체</h3>
					</div>
						
					<c:forEach var="mList" items="${magazineList}">
						<div id="pageList">
							<div class="ulWrap">
								<ul>
									<li>
										<div class="musicspecl_list">
											<div class="list_date">
												<span class="big_date">
													<%-- <fmt:formatDate value="${mList.MAGAZINE_DATE}" pattern="dd" /> --%>
													${fn:substring(mList.MAGAZINE_DATE, 8, 10) }
												</span>
												<span class="small_date">
													${fn:substring(mList.MAGAZINE_DATE, 0, 7) }
													<%-- <fmt:formatDate value="${mList.MAGAZINE_DATE}" pattern="yyyy.MM" /> --%>
												</span>
											</div>
										
											<p class="image">
												<a href="${path}/magazine/read/${mList.CATEGORY_ID}/${mList.MAGAZINE_ID}" id="viewPhoto" class="viewPhoto">
													<img style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0px; line-height: 0; font-family: inherit; vertical-align: top;" src="http://cdnimg.melon.co.kr/resource/image/cds/musicstory/imgUrl20171027122924421.jpg" width="240" height="135" />
												</a>
											</p>
											<dl class="dl">
												<dt style="margin: 0px 0px -3px -1px; padding: 15px 0px 7px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: inherit; vertical-align: baseline; overflow: hidden; color: #1a1a1a; width: 638px; white-space: nowrap; text-overflow: ellipsis;">
													<a href="${path}/magazine/read/${mList.CATEGORY_ID}/${mList.MAGAZINE_ID}" id="viewSubject" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">${mList.MAGAZINE_SUBJECT}</a>
												</dt>
												<dd class="sumry">
													<a class="viewContent" href="${path}/magazine/read/${mList.CATEGORY_ID}/${mList.MAGAZINE_ID}" id="viewContent">${mList.MAGAZINE_CONTENT}</a>
												</dd>
												<dd class="likeBtn">
													<p class="left" style="margin: 0px; padding: 3px 0px 0px 1px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; float: left; text-align: left;">
														<span class="colk1_like" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 1.2em; font-family: 돋움, dotum, 'Apple Gothic', sans-serif; vertical-align: middle;"><span class="heart"></span>&nbsp;${mList.MAGAZINE_LIKE_COUNT}</span>
															&nbsp;
														<span class="cnt_cmt" style="margin: 0px 0px 0px 3px; padding: 0px 0px 0px 8px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; background: url('http://cdnimg.melon.co.kr/resource/image/web/musicstory/bl_musictoday.jpg') 0px 50% no-repeat;">
														<span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: #888888;">댓글</span>&nbsp;0</span>
															&nbsp;
														<span class="cnt_view" style="margin: 0px 0px 0px 3px; padding: 0px 0px 0px 8px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; background: url('http://cdnimg.melon.co.kr/resource/image/web/musicstory/bl_musictoday.jpg') 0px 50% no-repeat;">
														<span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: #888888;">조회</span>&nbsp;${mList.MAGAZINE_VIEW_COUNT}</span>
													</p>
												</dd>
											</dl>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</c:forEach>
					<div id="pageObjNavgation">
						<div class="paginate">
							<c:if test="${sessionScope._USER_.id == 'admin'}">
								<input class="writeBtn" type="button" id="writeBtn" value="글쓰기">
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<jsp:include page="/WEB-INF/view/footer.jsp" />


</body>
</html>