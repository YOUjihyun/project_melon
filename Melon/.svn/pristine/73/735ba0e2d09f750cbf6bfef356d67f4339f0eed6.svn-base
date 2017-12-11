package com.ktds.notice.web;

import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.notice.service.NoticeService;
import com.ktds.notice.vo.NoticeListVO;
import com.ktds.notice.vo.NoticeSearchVO;
import com.ktds.notice.vo.NoticeVO;

import io.github.seccoding.web.pager.PageExplorer;
import io.github.seccoding.web.pager.explorer.ClassicPageExplorer;

@Controller
public class NoticeController {

	private NoticeService noticeService;

	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}

	@RequestMapping("/notice/list/init")
	public String clearSearchSession(HttpSession session) {
		session.removeAttribute("_SEARCH_");
		return "redirect:/notice/list";
	}

	@RequestMapping("/notice/list")
	public ModelAndView viewAllPage(NoticeSearchVO noticeSearchVO, HttpSession session) {
		ModelAndView view = new ModelAndView();

		if (noticeSearchVO.getPageNo() == null || noticeSearchVO.getPageNo().length() == 0) {
			noticeSearchVO = (NoticeSearchVO) session.getAttribute("_SEARCH_");

			if (noticeSearchVO == null) {
				noticeSearchVO = new NoticeSearchVO();
			}
		}

		NoticeListVO noticeList = noticeService.readAllNotice(noticeSearchVO);

		PageExplorer pageExplorer2 = new ClassicPageExplorer(noticeList.getPager());

		String page2 = pageExplorer2.getPagingList("pageNo", " @ ", " < ", " > ", "noticeSearchForm");
		view.addObject("pager", page2);

		view.setViewName("notice/notice");
		view.addObject("noticeList", noticeList);
		view.addObject("noticeImportant", noticeService.readImportantNotice());
		view.addObject("noticeSearchVO", noticeSearchVO);
		session.setAttribute("_SEARCH_", noticeSearchVO);

		return view;
	}

	@RequestMapping("/notice/read/{noticeId}")
	public ModelAndView viewReadPage(@PathVariable int noticeId, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView view = new ModelAndView();
		
		Cookie[] cookies = request.getCookies();
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		if(cookies != null) {
			for(int i = 0; i < cookies.length; i++) {
				Cookie cookie = cookies[i];
				map.put(cookie.getName(), cookie.getValue());
			}
		}
		
		String readCount = (String)map.get("readCount");
		String newReadCount = "|" + noticeId;
		
		if(StringUtils.indexOfIgnoreCase(readCount, newReadCount) == -1) {
			Cookie cookie = new Cookie("readCount", readCount + newReadCount);
			response.addCookie(cookie);
			
			noticeService.updateNoticeCount(noticeId);
		}
		
		view.setViewName("notice/read");
		view.addObject("notice", noticeService.readOneNoticeVO(noticeId));

		return view;
	}

	@RequestMapping(value="/notice/write", method=RequestMethod.GET)
	public ModelAndView writeNoticePage(HttpServletRequest request) {
		ModelAndView view = new ModelAndView("notice/write");
		
		String noticeId = request.getParameter("noticeId");
		
		if (noticeId != null) {
			view.addObject("notice", noticeService.readOneNoticeVO(Integer.parseInt(noticeId)));
		}
		
		return view;
	}

	@RequestMapping(value="/notice/write", method=RequestMethod.POST)
	public String doWriteNotice(NoticeVO noticeVO) {
		noticeService.createNewNotice(noticeVO);
		
		return "redirect:/notice/list/init";
	}
	
	@RequestMapping("/notice/delete/{noticeId}")
	public String doDelete(@PathVariable int noticeId) {
		boolean isSuccess = noticeService.deleteNotice(noticeId);
		
		if (isSuccess) {
			return "redirect:/notice/list/init";
		}
		
		return "redirect:/notice/read/" + noticeId;
	}
	
	@RequestMapping("/notice/modify/{noticeId}")
	public String doModify(@PathVariable int noticeId, NoticeVO noticeVO) {
		noticeService.updateNotice(noticeVO);
		
		return "redirect:/notice/list/init";
	}
	
}
