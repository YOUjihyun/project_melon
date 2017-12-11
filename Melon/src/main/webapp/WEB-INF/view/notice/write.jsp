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
	<link rel="stylesheet" href="${path }/css/notice/write.css" />
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${path }/js/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
	<script type="text/javascript">
		(function($) {
			$(function() {
				var oEditors = [];
				var classCnt = 1;
				
				// 에디터
				nhn.husky.EZCreator.createInIFrame({
					oAppRef: oEditors,
					elPlaceHolder: "content",
					//SmartEditor2Skin.html 파일이 존재하는 경로
					sSkinURI: "${path}/js/se2/SmartEditor2Skin.html",	
					htParams : {
						// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
						bUseToolbar : true,
						// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
						bUseVerticalResizer : true,		
						// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
						bUseModeChanger : true,			
						fOnBeforeUnload : function(){
							
						}
					}, 
					fCreator: "createSEditor2"
				});
				
				// submit 체크
				$("#writeSubmitBtn").click(function(e) {
					oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
					
					if ($("#classifyOption").val().length == 0) {
						alert("분류를 선택해 주세요.");
						return false;
					}
					
					if ($.trim($("#subject").val()).length == 0) {
						alert("제목을 입력해 주세요.");
						return false;
					}

					$("#noticeWriteForm").submit();
				});
				
			});
		})(jQuery);
	</script>
</head>
<body>

	<jsp:include page="/WEB-INF/view/header.jsp" />
	
	<div id="writeWrapper">
		<div class="write-conts">
			<form id="noticeWriteForm" action="<c:if test='${empty notice }'>${path }/notice/write</c:if><c:if test='${not empty notice }'>${path }/notice/modify/${notice.noticeId }</c:if>" method="post">
				<table>
					<colgroup>
						<col width="160xp" />
						<col width="*" />
					</colgroup>
				
					<tr>
						<td>
							<select id="classifyOption" name="category" title="공지사항 분류 선택">
							    <option value="" selected>분류</option>
							    <option value="서비스 소식" ${notice.category == '서비스 소식' ? 'selected' : '' }>서비스 소식</option>
							    <option value="서비스 오픈" ${notice.category == '서비스 오픈' ? 'selected' : '' }>서비스 오픈</option>
							    <option value="서비스 종료" ${notice.category == '서비스 종료' ? 'selected' : '' }>서비스 종료</option>
							    <option value="서비스 점검" ${notice.category == '서비스 점검' ? 'selected' : '' }>서비스 점검</option>
							    <option value="안내" ${notice.category == '안내' ? 'selected' : '' }>안내</option>
							</select>
						</td>
						
						<td>
							<input type="text" name="subject" id="subject" value="${notice.subject }" placeholder="공지사항 제목" />
						</td>
					</tr>
					
					<tr>
						<td colspan="2">
							<div class="writeContent">
								<textarea id="content" name="content" rows="30" style="width: 1000px; margin-top: 20px;">${notice.content }</textarea>
							</div>
						</td>
					</tr>
					
					<tr>
						<td colspan="2" align="right">
							<c:if test="${empty notice }">
								<input type="button" id="writeSubmitBtn" value="공지등록">
							</c:if>
							
							<c:if test="${not empty notice }">
								<input type="button" id="writeSubmitBtn" value="변경하기">
							</c:if>
							<input type="hidden" name="id" value="${sessionScope._USER_.id }">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>

	<jsp:include page="/WEB-INF/view/footer.jsp" />
	
</body>
</html>