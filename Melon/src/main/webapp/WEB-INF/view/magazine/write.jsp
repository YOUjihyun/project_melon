<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${path}/css/magazine/magazineWrite-style.css"/>
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${path }/js/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
	
	<script type="text/javascript">
// 		(function($) {
// 			$(function() {
// 				var oEditors = [];
// 				var classCnt = 1;
				
// 				// 에디터
// 				nhn.husky.EZCreator.createInIFrame({
// 					oAppRef: oEditors,
// 					elPlaceHolder: "content",
// 					//SmartEditor2Skin.html 파일이 존재하는 경로
// 					sSkinURI: "${path}/js/se2/SmartEditor2Skin.html",	
// 					htParams : {
// 						// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
// 						bUseToolbar : true,
// 						// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
// 						bUseVerticalResizer : true,		
// 						// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
// 						bUseModeChanger : true,			
// 						fOnBeforeUnload : function(){
							
// 						}
// 					}, 
// 					fCreator: "createSEditor2"
// 				});
				
// 				// submit 체크
// 				$("#boardSubmit").click(function(e) {
// 					oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
// 					$("#boardForm").submit();
// 				});
				
// 			});
// 		})(jQuery);

$().ready(function(){
	$("#registBtn").on("click", function(){
		
		if(!$("input[name=magazineSubject]").val()){
			alert("제목을 입력하세요!");			
			return false;
		}
		if($("textarea[name=magazineContent]").val()==""){
			alert("내용을 입력하세요!");			
			return false;
		}
		
		$("#writeForm").attr({
			method: "post",
			action: "${path}/magazine/doWrite"
		});
		
// 		<c:if test="${not empty magazineVO}">
// 			$("#writeForm").attr("action", "${path}/magazine/doUpdateMaazine/${magazineVO.categoryId}/${magazineVO.magazineId}");				
// 		</c:if>
		
		$("#writeForm").submit();
	});
	
	$("#cancelBtn").on("click", function(){
		location.href = "${path}/magazine/list/${magazineVO.categoryId}";
	});
});
	
	</script>
</head>
<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
	
	<div class="wrap1">	
		<div class="wrap2">	
	
<%-- 			<form id="boardForm" action="${path}/magazine/doWrite" enctype="multipart/form-data" method="post"> --%>
<!-- 				<div style="border: 1px solid silver;padding: 10px;height: "> -->
<!-- 					<div style="border-bottom: 1px thin silver;margin-bottom: 10px;display: block;"> -->
<!-- 						<div style="float: left;"><span>제목:&nbsp;&nbsp;</span></div> -->
<%-- 						<div><input type="text" id="magazineSubject" name="magazineSubject" value="${magazineVO.magazineSubject}"></div> --%>
<!-- 					</div> -->

<!-- 					<textarea id="content" name="magazineContent" style="width: 980px; min-height: 500px;"> -->
<%-- 						${magazineVO.magazineContent} --%>
<!-- 					</textarea> -->
<!-- 				</div> -->
<!-- 				<div><input type="submit" id="writeBtn" value="등록"></div> -->
<!-- 				<div><input type="reset" id="resetBtn" value="초기화"></div> -->
<!-- 			</form> -->

<!-- 			<form id="writeForm"> -->
<%-- 				<input type="hidden" id="categoryId" name="categoryId" value="${magazineVO.categoryId}"> --%>
<!-- 				<div style="border: 1px solid silver;padding: 10px;"> -->
<!-- 					<div style="border-bottom: 1px thin silver;margin-bottom: 10px;display: block;"> -->
<!-- 						<div style="float: left;"><span>제목:&nbsp;&nbsp;</span></div> -->
<%-- 						<div><input placeholder="제목을 입력하세요." type="text" id="magazineSubject" name="magazineSubject" value="${magazineVO.magazineSubject}"></div> --%>
<%-- 					sdfaew${magazineVO.categoryId} --%>
<!-- 					</div> -->
<!-- 					<div style="border-bottom: 1px thin silver;margin-bottom: 10px;display: block;"> -->
<!-- 						<div style="display: block;"><span>내용:</span></div> -->
<%-- 						<textarea placeholder="내용을 입력하세요." id="magazineContent" name="magazineContent" style="width: 950px; min-height: 500px;">${magazineVO.magazineContent}</textarea> --%>
<!-- 					</div> -->
<!-- 				</div> -->
				
<!-- 				<div style="text-align: center;margin-top: 10px;"> -->
<!-- 					<input type="reset" id="resetBtn" value="초기화"> -->
<%-- 					<c:if test="${empty magazineVO.magazineContent}"> --%>
<!-- 						<input type="button" id="registBtn" value="등록"> -->
<%-- 					</c:if> --%>
<%-- 					<c:if test="${not empty magazineVO.magazineContent}"> --%>
<!-- 						<input type="button" id="modifyBtn" value="수정"> -->
<%-- 					</c:if> --%>
<!-- 					<input type="button" id="cancelBtn" value="취소" style="float: right;"> -->
<!-- 				</div> -->
<!-- 			</form> -->

				
		<div style="border: 1px solid silver;padding: 10px;">			
			<form id="writeForm">
				<input type="hidden" id="categoryId" name="categoryId" value="${magazineVO.categoryId}">
				<table class="writeTable" border="1">
					<caption class="caption">&nbsp;</caption>
					<colgroup>
						<col style="width: 167px;" /><col />
						<col style="width: 167px;" /><col />
					</colgroup>
					<tbody class="tbady">					
						<tr class="tr1">
							<th class="th1">
								<div class="wrap">
									<span class="subject">필수 입력사항입니다.</span>제목
								</div>
							</th>
							<td class="td1" colspan="3">
								<div class="wrap">
									<input id="inputSubject" class="inputSubject" title="제목을 입력해주세요. - 100자이내 가능" name="magazineSubject" type="text" value="${magazineVO.magazineSubject}" />
								</div>
							</td>
						</tr>
						<tr class="tr1">
							<th class="th1">
								<div class="wrap">
									<span class="subject">필수 입력사항입니다.</span>내용
								</div>
							</th>
							<td class="td1" colspan="3">
								<div class="wrap">
									<textarea id="contents" class="textarea" cols="30" name="magazineContent" rows="5">${magazineVO.magazineContent}</textarea>
<%-- 									<span style="color: red;"><form:errors path="magazineVO.magazineContent" delimiter="//"/></span> --%>
								</div>
							</td>
						</tr>
						<tr class="tr1">
							<th class="th1">
								<div class="wrap">
									메인 이미지
								</div>
							</th>
							<td class="td1" colspan="3">
								<div class="wrap">
									<div class="fileWrap">
										<input id="fileName" class="fileName" name="filename" type="file" />
									</div>
									<div class="file">&nbsp;</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
					<div class="btns">						
						<c:if test="${empty magazineVO.magazineContent}">
							<input type="button" id="registBtn" class="registBtn" value="등록">
						</c:if>
						<c:if test="${not empty magazineVO.magazineContent}">
							<input type="button" id="modifyBtn" class="registBtn" value="수정">
						</c:if>
						<input type="button" id="cancelBtn" value="취소">
						<input type="reset" id="resetBtn" class="resetBtn" value="초기화">
					</div>
				</form>
			</div>		
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/view/footer.jsp" />
	
</body>
</html>