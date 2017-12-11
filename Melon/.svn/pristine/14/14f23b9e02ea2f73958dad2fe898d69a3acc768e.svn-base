<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/css/magazine/magazineList-style.css"/>
<script type="text/javascript" src="${path}/js/jquery-3.2.1.min.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/view/header.jsp" />

<script type="text/javascript">
	$().ready(function(){
		var 
		$(".like_btn").on("click", function(){
			$.post('${path}/view/mmaUpdateLikeCount'){
				
			}
		});
	});
</script>

<div class="wrap">
	<div class="wrap2">
		<div class="title_wrap2">
			<h3 class="title2">2017 MMA 결산특집</h3>
		</div>
		<div><img class="banner" src="http://cdnimg.melon.co.kr/resource/image/cds/musicstory/imgUrl20171016062224412.jpg" width="1008" height="92" /></div>
 		
 		<c:forEach var="mList" items="${magazineList}">
 		<div id="pageList" style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: 돋움, Dotum, '맑은 고딕', 'Malgun Gothic', 'Apple Gothic', sans-serif; vertical-align: baseline; color: #666666;">
			<div class="wrap_musicspecl line_top" style="margin: 0px; padding: 0px; border-width: 1px 0px 0px; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; border-color: #cccccc initial initial initial; border-style: solid initial initial initial;">
				<ul style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none;">
					<li style="margin: 0px; padding: 16px 0px; border-width: 0px 0px 1px; border-image: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; border-color: initial initial #e6e6e6 initial; border-style: initial initial solid initial;">
						<div class="musicspecl_list" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: top; position: relative; width: 1008px; display: inline-block;">
						<div class="list_date" style="margin: 0px; padding: 48px 0px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; float: left; width: 96px; text-align: center;">						
							<span class="big_date">
								<fmt:formatDate value="${mList.magazineDate}" pattern="dd" />
							</span>
							<span class="small_date">
								<fmt:formatDate value="${mList.magazineDate}" pattern="yyyy.MM" />
							</span>
							</div>
							<p class="image" style="margin: 0px 24px 0px 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; position: relative; float: left; width: 240px;">
								<a href="${path}/magazine/mmaRead/${mList.magazineId}" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: #1a1a1a;" title="Pt. 10 2017년에 우리 곁을 떠난 아티스트들 - 페이지 이동">
									<img style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0px; line-height: 0; font-family: inherit; vertical-align: top;" src="http://cdnimg.melon.co.kr/resource/image/cds/musicstory/imgUrl20170927052630413.jpg" alt="Pt. 10 2017년에 우리 곁을 떠난 아티스트들" width="240" height="135" />
								</a>
							</p>
							<dl style="width: 638px; float: left;">
								<dt style="margin: 0px 0px -3px -1px; padding: 15px 0px 7px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: inherit; vertical-align: baseline; overflow: hidden; color: #1a1a1a; width: 638px; white-space: nowrap; text-overflow: ellipsis;">
									<a href="${path}/magazine/mmaRead/${mList.magazineId}" style="color: black;font-weight: bold;">
										${mList.magazineSubject}
									</a>
								</dt>
								<dd class="sumry" style="margin: 0px 32px 16px 1px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 20px; font-family: inherit; vertical-align: baseline; min-height: 44px; word-wrap: break-word; word-break: break-all;">
									<a href="${path}/magazine/mmaRead/${mList.magazineId}" style="color: black;">
										${mList.magazineContent}
									</a>
								</dd>
								<dd class="like_btn" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: right; width: 638px; display: inline-block;">
								<p class="left" style="margin: 0px; padding: 3px 0px 0px 1px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; float: left; text-align: left;">
									<span class="heart"></span>
									<span>${mList.magazineLikeCount}</span>
									<span class="seperator"></span>
									<span>댓글 0</span>
									<span class="seperator"></span>
									<span>조회 ${mList.magazineViewCount}</span>
								</p>
								</dd>
							</dl>
						</div>
					</li>
				</ul>
			</div>
		</div>
		</c:forEach>
		
<%-- 		<c:if test="${sessionScope._USER_.id == 'admin'}"> --%>
			<div><a href="${path}/magazine/mmaWrite" class="writeBtn">글쓰기</a></div>
<%-- 		</c:if> --%>
		
		<div class="page">
			<a class="page_btn_first"></a>
			<a class="page_btn_pre"></a>
			<span class="page_num_wrap"><strong class="page_num">1</strong></span>
			<a class="page_btn_next"></a>
			<a class="page_btn_last"></a>
		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/view/footer.jsp" />

</body>
</html>