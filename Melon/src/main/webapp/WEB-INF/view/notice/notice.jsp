<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>고객센터>공지사항>멜론</title>
	<link rel="shortcut icon" type="image/x-icon" href="${path }/img/main/favicon.ico" id="favicon"/>
	<link rel="stylesheet" href="${path }/css/common.css">
	<link rel="stylesheet" href="${path }/css/notice/notice.css" />
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#noticeSearchBtn").click(function(e) {
				movePage(0);
			});
		});
	</script>
</head>
<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
	
	<div id="noticeWrapper">
		<div class="conts">
			<h2 class="customCenter">고객지원센터</h2>
			
			<div class="conts_tab">
				<ul>
					<li>
						<a href="http://faqs2.melon.com/customer/index.htm" class="link_tab" title="홈 ">홈</a>
					</li>
					
					<li>
						<a href="${path }/notice/list/init" class="link_tab" title="공지사항">공지사항</a>
					</li>
					
					<li>
						<a href="javascript:void(0)" class="link_tab" title="자주하는 질문">자주하는 질문</a>
					</li>
					
					<li>
						<a href="javascript:void(0)" class="link_tab" title="나의 문의 내역">나의 문의 내역</a>
					</li>
					
					<li>
						<a href="javascript:void(0)" class="link_tab" title="DCF 지원기기">DCF 지원기기</a>
					</li>
				</ul>
			</div>
			
			<div class="search_head">
				<select id="classifyOption" title="공지사항 분류 선택">
				    <option selected="selected" value="">분류</option>
				    <option value="서비스 소식">서비스 소식</option>
				    <option value="서비스 오픈">서비스 오픈</option>
				    <option value="서비스 종료">서비스 종료</option>
				    <option value="서비스 점검">서비스 점검</option>
				    <option value="안내">안내</option>
				</select>
		   	</div>
		
			<div class="pageList">
				<table>
					<colgroup>
						<col width="60px" />
						<col width="120px" />
						<col width="*" />
						<col width="80px" />
						<col width="100px" />
					</colgroup>
				
					<tr>  
						<th>NO.</th>
						<th>분류</th>
						<th>제목</th>
						<th>조회</th>
						<th>등록일</th>
					</tr>
					
					<c:if test="${empty noticeImportant }">
						<tr>
							<td colspan="5" height="50px">
								<div class="wrap" style="height: 150px;">검색 결과가 없습니다.</div>
							</td>
						</tr>
					</c:if>
					
					<c:if test="${not empty noticeImportant }">
						<c:forEach var="noticeImp" items="${noticeImportant }">
							<tr>
								<td>
									<div class="wrap">
										<span class="importImg"></span>
									</div>
								</td>
								
								<td>
									<div class="wrap cate">${noticeImp.category }</div>
								</td>
								
								<td>
									<div class="wrap">
										<span class="icon-new"></span>
										
										<a href="${path }/notice/read/${noticeImp.noticeId}">${noticeImp.subject}</a>
									</div>
								</td>
								
								<td class="textMid">
									<div class="wrap">
										<fmt:formatNumber value="${noticeImp.viewCount}" pattern="#,###" />
									</div>
								</td>
								
								<td>
									<div class="wrap"><fmt:formatDate value="${noticeImp.noticeDate}" pattern="yyyy.MM.dd"/></div>
								</td>
							</tr>
						</c:forEach>
					</c:if>
					
					<c:forEach var="notice" items="${noticeList.noticeListVO }" varStatus="st">
						<tr>
							<td>
								<div class="wrap no">
									${notice.noticeId}
								</div>
							</td>
							
							<td>
								<div class="wrap cate">${notice.category }</div>
							</td>
							
							<td>
								<div class="wrap">
									<a href="${path }/notice/read/${notice.noticeId}">${notice.subject}</a>
								</div>
							</td>
							
							<td class="textMid">
								<div class="wrap">
									<fmt:formatNumber value="${notice.viewCount}" pattern="#,###" />
								</div>
							</td>
							
							<td>
								<div class="wrap"><fmt:formatDate value="${notice.noticeDate}" pattern="yyyy.MM.dd"/></div>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			
			<div class="searchWrapper">
				<form id="noticeSearchForm" action="${path }/notice/list" method="post">
					<div class="pagingWrapper">
						<span class="noticeGoFirstPageBtn"></span>
						<span class="noticeGoPrePageBtn"></span>
						${pager }
						<span class="noticeGoNextPageBtn"></span>
						<span class="noticeGoLastPageBtn"></span>
					</div>
					
					<input type="text" name="searchKeyword" id="noticeSearchKeyword" value="${noticeSearchVO.searchKeyword }" placeholder="검색어를 입력해 주세요">
					<input type="button" id="noticeSearchBtn" value="검색" />
				</form>
			</div>
			
			<c:if test="${sessionScope._USER_.id == 'admin' }">
				<div class="write-btn">
					<a href="${path }/notice/write"><span>글쓰기</span></a>
				</div>
			</c:if>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/view/footer.jsp" />
</body>
</html>