package com.ktds.artist.web;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.artist.service.ArtistService;
import com.ktds.artist.vo.ArtistVO;

@Controller
public class ArtistController {
	
	private ArtistService artistService;
	
	public void setArtistService(ArtistService artistService) {
		this.artistService = artistService;
	}

	@RequestMapping("/chart/artistChannel/{artistId}")
	public ModelAndView viewArtistInfo(@PathVariable int artistId) {
		ArtistVO artistVO = artistService.readOneArtist(artistId);
		
		ModelAndView view = new ModelAndView();
		view.setViewName("chart/artistChannel");
		view.addObject("artistVO", artistVO);
		
		return view;
	}
	
	/*@RequestMapping("/chart/albumInfo/{artistId}")
	public ModelAndView viewAllmusicOfOneArtist(@PathVariable int artistId) {
		List<ChartVO> musicList = artistService.readAllMusicOfOneArtist(artistId);
		
		ModelAndView view = new ModelAndView();
		view.setViewName("chart/albumInfo");
		view.addObject("musicList", musicList);
		
		return view;
	}*/

}
