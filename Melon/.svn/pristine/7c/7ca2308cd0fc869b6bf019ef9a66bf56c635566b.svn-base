package com.ktds.search.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.search.service.SearchService;

import io.github.seccoding.common.DownloadUtil;

@Controller
public class SearchController {

	private SearchService searchService;
	
	public void setSearchService(SearchService searchService) {
		this.searchService = searchService;
	}
	
	@RequestMapping("/search/search")
	public ModelAndView doSearch(String keyword, HttpSession session) {
		keyword = keyword.toUpperCase();
		ModelAndView view = new ModelAndView("search/searchList");
		
		List<Map<String, Object>> listMap = searchService.readSearchCheck(keyword);
		
		if (listMap.size() == 0) {
			searchService.createSearchKeyword(keyword);
		}
		else {
			searchService.updateSearchCount(keyword);
		}
		
		session.setAttribute("_REALRANK_", searchService.readReal());
		view.addObject("search", searchService.readReal());
		view.addObject("keyword", keyword);
	 	view.addObject("searchList", searchService.readSearch(keyword));
	 	view.addObject("searchCount", searchService.readSearchCount(keyword));
		
		return view;
	}
	
	@RequestMapping("/search/countUpdate/{musicId}")
	@ResponseBody
	public String countUpdate(@PathVariable int musicId, int count) {
		Map<String, Object> params = new HashMap<>();
		params.put("musicId", musicId);
		params.put("count", count);
		
		boolean isSuccess = searchService.updateCount(params);
		if (isSuccess) {
			return "success";
		}
		
		return "failed";
	}
	
	@RequestMapping("/search/downloadSong")
	public void downloadSong(HttpServletRequest request, HttpServletResponse response, String songName) {
		String path = request.getServletContext().getRealPath("/WEB-INF/static/img/mp3/");
		System.out.println(path + songName + " <<<<<<<<<<<<<<<<<<<<<<<<<");
		DownloadUtil downloadUtil = new DownloadUtil(path + songName);
		downloadUtil.download(request, response, songName);
	}
	
}
