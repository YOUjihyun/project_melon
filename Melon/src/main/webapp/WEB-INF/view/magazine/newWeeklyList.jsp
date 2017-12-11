<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/css/magazine/magazineList-style.css" />
</head>
<body>
	<jsp:include page="../header.jsp" />
	

	<div class="magazineWrapper2">
		<p>&nbsp;</p>
		<h2 class="ms_tit" style="padding: 0px; border: 0px; font-variant-numeric: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: 돋움, Dotum, '맑은 고딕', 'Malgun Gothic', 'Apple Gothic', sans-serif; vertical-align: baseline; color: #666666; margin: 0px !important 0px 0px 0px;">
			<span class="music_today"
				style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 0px; line-height: 0; font-family: inherit; vertical-align: top; display: inline-block; background: url('http://cdnimg.melon.co.kr/resource/image/web/musicstory/bg_h2_title_160712.png') 0px -106px repeat-y; width: 111px; height: 22px;">멜론매거진</span>
		</h2>
		<div id="d_wrap_tab_music" class="wrap_tab_music on"
			style="margin: 11px 0px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: 돋움, Dotum, '맑은 고딕', 'Malgun Gothic', 'Apple Gothic', sans-serif; vertical-align: baseline; position: relative; color: #666666;">
			<div class="wrap_tab03 type02"
				style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; position: relative; background-color: #ebf0ed;">
				<ul style="margin: 0px; padding: 0px; border-width: 2px 0px 1px; border-image: initial; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; position: relative; width: 1008px; border-color: #848484 initial #dbdbdb initial; border-style: solid initial solid initial;">
					<li class="first_child on" style="margin: 0px 0px 0px -1px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left;">
						<span id="d_link_tab1" class="link_tab" style="margin: 0px 0px -1px; padding: 10px 4px; border-width: 0px 1px 1px; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; line-height: 1.2em; font-family: inherit; vertical-align: baseline; display: block; position: relative; width: 157px; min-height: 16px; color: #6ea300; text-align: center; z-index: 3; background-color: #ffffff; border-color: initial #d9d9d9 #ffffff #ffffff; border-style: initial solid solid solid;">
							<span class="cntt" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; display: inline-block;">
								연재중 매거진
							</span>
						</span>
					</li>
<!-- 					<li class=""
						style="float:left; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left;"><a
						id="d_link_tab2" class="link_tab"
						style="margin: 0px; padding: 10px 4px; border-width: 0px 1px; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 1.2em; font-family: inherit; vertical-align: baseline; color: #333333; display: block; position: relative; width: 158px; min-height: 16px; text-align: center; border-color: initial #d9d9d9 initial #ffffff; border-style: initial solid initial solid;"></a><span
						class="cntt" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; display: inline-block; text-decoration-line: underline;">완결된
							매거진
						</span>
					</li> -->
				</ul>
			</div>
			<div id="d_gnr_list1" class="gnr_list"
				style="margin: 0px; padding: 0px; border-top: none; border-right: 0px; border-bottom: 1px solid #b9b9b9; border-left: 0px; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 1008px; overflow: hidden; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_tab_gnr.png') repeat;">
				<ul
					style="margin: 0px 0px -1px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: top; list-style: none; width: 1058.39px; display: inline-block; overflow: hidden;">
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">전체</a></li>
					<li style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;">
						<a style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">2017
							MMA 결산특집</a></li>
					<li class="on"
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #6ea301; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px -17px no-repeat; letter-spacing: -1px;">금주의
							신보</a></li>
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">금주의
							차트</a></li>
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">아티스트
							갤러리</a></li>
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">이슈
							포커스</a></li>
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">멜론
							스테이지</a></li>
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">HIPHOPLE</a></li>
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">원더풀
							재즈</a></li>
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">스쿨
							오브 록</a></li>
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">클래식
							AtoZ</a></li>
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">EDM
							Floor</a></li>
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">인디
							스트리트</a></li>
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">TV별책부록</a></li>
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">아이돌
							탐구생활</a></li>
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">SM
							STATION</a></li>
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">Hi-Fi
							가이드</a></li>
					<li
						style="margin: 0px 0px 0px -1px; padding: 0px 9px 0px 13px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; float: left; width: 151px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_gnr_list2.png') 0px 10px no-repeat;"><a
						style="margin: 0px; padding: 7px 0px 6px 12px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; color: #333333; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 145px; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_btn_icon_arrow.png') 0px 13px no-repeat;">뮤직툰</a></li>
				</ul>
			</div>
			<button id="d_btn_expose" class="btn_tab"
				style="display: block;margin: 0px; padding: 0px; background-image: url('http://cdnimg.melon.co.kr/resource/image/web/musicstory/btn_tab.jpg'); background-position: -27px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: middle; white-space: nowrap; cursor: pointer; position: absolute; right: 6px; top: 8px; width: 27px; height: 25px; overflow: hidden; font-size: 0px; line-height: 0; text-indent: -9999px; border: 0px initial initial;"
				type="button" data-control="expose" data-expose-type="display"
				data-expose-target="#d_wrap_tab_music">
				리스트<span class="text"
					style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">접기</span>
			</button>
		</div>
		<div class="title_wrap02"
			style="margin: 25px 0px 0px; padding: 0px 0px 6px; border-width: 0px 0px 1px; border-image: initial; font-variant-numeric: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: 돋움, Dotum, '맑은 고딕', 'Malgun Gothic', 'Apple Gothic', sans-serif; vertical-align: baseline; overflow: hidden; color: #666666; border-color: initial initial #848484 initial; border-style: initial initial solid initial;">
			<h3 class="f_tit f_tit3"
				style="font-weight: bold; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 18px; line-height: 30px; font-family: '맑은 고딕', 'Malgun Gothic', 돋움, Dotum, 'Apple Gothic', sans-serif; vertical-align: baseline; color: #1a1a1a; letter-spacing: -2px; float: left;">금주의
				신보</h3>
		</div>
		<div class="ms_wrap_banner"
			style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 0px; line-height: 0; font-family: 돋움, Dotum, '맑은 고딕', 'Malgun Gothic', 'Apple Gothic', sans-serif; vertical-align: baseline; color: #666666;">
			<img
				style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 0; font-family: inherit; vertical-align: baseline;"
				src="http://cdnimg.melon.co.kr/resource/image/cds/musicstory/imageUrl20160111055851.jpg"
				alt="" width="1008" height="92" />
		</div>
		<c:forEach var="mList" items="${magazineList}">
			<div id="pageList"
				style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: 돋움, Dotum, '맑은 고딕', 'Malgun Gothic', 'Apple Gothic', sans-serif; vertical-align: baseline; color: #666666;">
				<div class="wrap_musicspecl line_top"
					style="margin: 0px; padding: 0px; border-width: 1px 0px 0px; border-image: initial; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; border-color: #cccccc initial initial initial; border-style: solid initial initial initial;">
					<ul
						style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none;">
						<li
							style="margin: 0px; padding: 16px 0px; border-width: 0px 0px 1px;font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; list-style: none; border-color: initial initial #e6e6e6 initial; border-style: initial initial solid initial;">
							<div class="musicspecl_list"
								style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: top; position: relative; width: 1008px; display: inline-block;">
								<div class="list_date"
									style="margin: 0px; padding: 48px 0px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; float: left; width: 96px; text-align: center;">
									<span class="wrap_number_big" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; height: 17px; display: block;"> </span>
									<span class="wrap_number_small"style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; height: 9px; display: inline-block;">
										<span class="text" style="margin: 0px -4px 0px 0px; padding: 0px; border: 0px; font-stretch: normal; line-height: 18px; font-family: arial, dotum; vertical-align: middle; background: 0px center; width: auto; height: auto; display: inline-block;">2017.10</span></span>
								</div>
								<p class="image"
									style="margin: 0px 24px 0px 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; position: relative; float: left; width: 240px;">
									<a
										style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: #1a1a1a;"
										title="위클리 초이스: 10월 셋째 주 [웹진웨이브] - 페이지 이동">
										<img style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0px; line-height: 0; font-family: inherit; vertical-align: top;"
										src="http://cdnimg.melon.co.kr/resource/image/cds/musicstory/imgUrl20171019031948438.jpg"
										alt="위클리 초이스: 10월 셋째 주 [웹진웨이브]" width="240" height="135" /></a>
								</p>
								<dl
									style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; width: 638px; float: left;">
									<dt
										style="margin: 0px 0px -3px -1px; padding: 15px 0px 7px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: inherit; vertical-align: baseline; overflow: hidden; color: #1a1a1a; width: 638px; white-space: nowrap; text-overflow: ellipsis;">
										<a
											style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;"
											title="위클리 초이스: 10월 셋째 주 [웹진웨이브] - 페이지 이동">위클리 초이스: 10월
											셋째 주 [웹진웨이브]</a>
									</dt>
									<dd class="sumry"
										style="margin: 0px 32px 16px 1px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 20px; font-family: inherit; vertical-align: baseline; min-height: 44px; word-wrap: break-word; word-break: break-all;">
										<a
											style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">한
											주간 발표된 수많은 곡들 중 주목할 만한 음악들을 소개하는 코너, 위클리 초이스입니다. 금주는 원더걸스 이후
											자기만의 음악세계를 보여주고 있는 핫펠트(예은)와 음악으로 이미지를 만드는 밴드 끝없는잔..</a>
									</dd>
									<dd class="like_btn"
										style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-align: right; width: 638px; display: inline-block;">
										<p class="left"
											style="margin: 0px; padding: 3px 0px 0px 1px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; float: left; text-align: left;">
											<span class="heart"></span>
											<span>${mList.magazineLikeCount} </span>
											<span class="seperator"></span>
											<span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: #888888;">댓글 0</span>
											<span class="cnt_view" style="margin: 0px 0px 0px 3px; padding: 0px 0px 0px 8px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; background: url('http://cdnimg.melon.co.kr/resource/image/web/musicstory/bl_musictoday.jpg') 0px 50% no-repeat;"></span>
											<span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: #888888;">조회 ${mList.magazineViewCount}</span>
										</p>
									</dd>
								</dl>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</c:forEach>

	<div id="pageObjNavgation" style="">
		<div class="paginate">
			<p><a class="btn_first disabled" style="margin: 0px -2px 0px 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: 돋움, Dotum, '맑은 고딕', 'Malgun Gothic', 'Apple Gothic', sans-serif; vertical-align: middle; color: #1a1a1a; display: inline-block; position: relative; width: 24px; height: 24px; background-image: url('http://cdnimg.melon.co.kr/resource/image/web/common/btn_paginate.png'); background-position: 0px -108px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: center;">
			<span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0px; line-height: 0; font-family: inherit; vertical-align: baseline;">맨처음</span>
			</a>
			<span style="color: #666666; font-family: 돋움, Dotum, '맑은 고딕', 'Malgun Gothic', 'Apple Gothic', sans-serif; font-size: 12px; text-align: center;">&nbsp;</span>
			<a class="btn_pre disabled" style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: 돋움, Dotum, '맑은 고딕', 'Malgun Gothic', 'Apple Gothic', sans-serif; vertical-align: middle; color: #1a1a1a; display: inline-block; position: relative; width: 24px; height: 24px; background-image: url('http://cdnimg.melon.co.kr/resource/image/web/common/btn_paginate.png'); background-position: -26px -108px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: center;">
			<span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0px; line-height: 0; font-family: inherit; vertical-align: baseline;">이전</span>
			</a>
			<span style="color: #666666; font-family: 돋움, Dotum, '맑은 고딕', 'Malgun Gothic', 'Apple Gothic', sans-serif; font-size: 12px; text-align: center;">&nbsp;</span>
			<span class="page_num" style="margin: 0px 0px 0px 2px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 12px; line-height: 1.2em; font-family: 돋움, dotum, sans-serif, 'Apple Gothic', sans-serif; vertical-align: middle; display: inline-block; color: #666666; text-align: center;"><strong style="position: relative; display: inline-block; padding: 5px 6px 3px; border: 1px solid #80ba00; min-width: 10px; margin-left: -1px; color: #80ba00; vertical-align: middle; z-index: 2;">1</strong><a style="margin: 0px 0px 0px -1px; padding: 5px 7px 3px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; display: inline-block; position: relative; width: auto; height: auto; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_paginate.png') 0px 4px no-repeat; min-width: 18px;">2</a><a style="margin: 0px 0px 0px -1px; padding: 5px 7px 3px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; display: inline-block; position: relative; width: auto; height: auto; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_paginate.png') 0px 4px no-repeat; min-width: 18px;">3</a><a style="margin: 0px 0px 0px -1px; padding: 5px 7px 3px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; display: inline-block; position: relative; width: auto; height: auto; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_paginate.png') 0px 4px no-repeat; min-width: 18px;">4</a><a style="margin: 0px 0px 0px -1px; padding: 5px 7px 3px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; display: inline-block; position: relative; width: auto; height: auto; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_paginate.png') 0px 4px no-repeat; min-width: 18px;">5</a><a style="margin: 0px 0px 0px -1px; padding: 5px 7px 3px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; display: inline-block; position: relative; width: auto; height: auto; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_paginate.png') 0px 4px no-repeat; min-width: 18px;">6</a><a style="margin: 0px 0px 0px -1px; padding: 5px 7px 3px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; display: inline-block; position: relative; width: auto; height: auto; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_paginate.png') 0px 4px no-repeat; min-width: 18px;">7</a><a style="margin: 0px 0px 0px -1px; padding: 5px 7px 3px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; display: inline-block; position: relative; width: auto; height: auto; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_paginate.png') 0px 4px no-repeat; min-width: 18px;">8</a><a style="margin: 0px 0px 0px -1px; padding: 5px 7px 3px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; display: inline-block; position: relative; width: auto; height: auto; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_paginate.png') 0px 4px no-repeat; min-width: 18px;">9</a><a style="margin: 0px 0px 0px -1px; padding: 5px 7px 3px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: middle; display: inline-block; position: relative; width: auto; height: auto; background: url('http://cdnimg.melon.co.kr/resource/image/web/common/bg_paginate.png') 0px 4px no-repeat; min-width: 18px;">10</a></span>
			<span style="color: #666666; font-family: 돋움, Dotum, '맑은 고딕', 'Malgun Gothic', 'Apple Gothic', sans-serif; font-size: 12px; text-align: center;">&nbsp;</span>
			<a class="btn_next" style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: 돋움, Dotum, '맑은 고딕', 'Malgun Gothic', 'Apple Gothic', sans-serif; vertical-align: middle; color: #1a1a1a; display: inline-block; position: relative; width: 24px; height: 24px; background-image: url('http://cdnimg.melon.co.kr/resource/image/web/common/btn_paginate.png'); background-position: -84px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: center;">
			<span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0px; line-height: 0; font-family: inherit; vertical-align: baseline;">다음</span>
			</a>
			<span style="color: #666666; font-family: 돋움, Dotum, '맑은 고딕', 'Malgun Gothic', 'Apple Gothic', sans-serif; font-size: 12px; text-align: center;">&nbsp;</span>
			<a class="btn_last" style="margin: 0px 0px 0px -2px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 12px; line-height: inherit; font-family: 돋움, Dotum, '맑은 고딕', 'Malgun Gothic', 'Apple Gothic', sans-serif; vertical-align: middle; color: #1a1a1a; display: inline-block; position: relative; width: 24px; height: 24px; background-image: url('http://cdnimg.melon.co.kr/resource/image/web/common/btn_paginate.png'); background-position: -110px 0px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: center;">
			<span style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 0px; line-height: 0; font-family: inherit; vertical-align: baseline;">맨끝</span>
			</a>
			</p>
				<form id="searchForm" style="text-align: center;">${pager}</form>
		</div>
	</div>

</body>
</html>