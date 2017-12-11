<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>고객센터>공지사항>멜론</title>
	<link rel="shortcut icon" type="image/x-icon" href="${path }/img/main/favicon.ico" id="favicon"/>
	<link rel="stylesheet" href="${path }/css/common.css">
	<link rel="stylesheet" href="${path }/css/notice/read.css" />
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#noticeDelete").click(function(e) {
				if (confirm("현재 공지사항을 삭제 하시겠습니까?")) {
					location.href = "${path}/notice/delete/${notice.noticeId}";
				}
			});
			
			$("#noticeModify").click(function(e) {
				$("#modifyForm").submit();
			});
		});
	</script>
</head>
<body>

	<jsp:include page="/WEB-INF/view/header.jsp" />

	<div id="readWrapper">
		<div class="read-conts">
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
		</div>
		
		<div class="read-table">
			<table>
				<colgroup>
					<col width="60px" />
					<col width="120px" />
					<col width="*" />
					<col width="80px" />
					<col width="100px" />
				</colgroup>
				
				<tr>
					<th>
						<div class="wrap">
							${notice.noticeId }
						</div>
					</th>
					
					<th>
						<div class="wrap cate">
							${notice.category }
						</div>
					</th>
					
					<th>
						<div class="wrap">
							${notice.subject }
						</div>
					</th>
					
					<th>
						<div class="wrap">
							<fmt:formatNumber value="${notice.viewCount }" pattern="#,###"/>
						</div>
					</th>
					
					<th>
						<div class="wrap">
							<fmt:formatDate value="${notice.noticeDate }" pattern="yyyy.MM.dd"/>
						</div>
					</th>
				</tr>
				
				<tr>
					<td colspan="5">
						<div class="dtl">${notice.content }</div>
					</td>
				</tr>
			</table>
			
		</div>
		
		<div class="listBtn">
			<a href="${path }/notice/list">목록</a>
			
			<c:if test="${sessionScope._USER_.id == 'admin' }">
				<a id="noticeModify" href="javascript:void(0)">변경</a>
				<a id="noticeDelete" href="javascript:void(0)">삭제</a>
			</c:if>
		</div>
		
	</div>
	
	<form id="modifyForm" action="${path }/notice/write" style="display: none;">
		<input type="hidden" name="noticeId" value="${notice.noticeId }"/>
	</form>

	<jsp:include page="/WEB-INF/view/footer.jsp" />
</body>
</html>