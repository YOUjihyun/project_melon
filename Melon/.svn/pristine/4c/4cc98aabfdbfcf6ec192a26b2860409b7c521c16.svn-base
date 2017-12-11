package com.ktds.chart.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.chart.service.ChartService;
import com.ktds.chart.vo.ChartVO;

@Controller
public class ChartController {
	
	private ChartService chartService;
	
	public void setChartService(ChartService chartService) {
		this.chartService = chartService;
	}
		
	/*@RequestMapping("/chart/main/{startNumber}")
	public ModelAndView viewMelonChart(@PathVariable int startNumber) {
		//ChartVO chartVO = chartService.readMelonChart();
		
		List<ChartVO> chartVOList = chartService.readAllMelonChart(startNumber);
		
		for (ChartVO chartVO2 : chartVOList) {
			System.out.println(chartVO2.getMusicId());
		}
		
		ModelAndView view = new ModelAndView();
		view.setViewName("chart/main");
		//view.addObject("chartVO", chartVO);
		view.addObject("chartVOList", chartVOList);
		
		return view;
	}*/
	
	@RequestMapping("/chart/albumInfo/{musicId}")
	public ModelAndView viewOneAlbumInfo(@PathVariable int musicId) {
		List<ChartVO> chartVOList = chartService.readOneAlbum(musicId);
		int artistId = chartService.readOneAlbum(musicId).get(0).getArtistId();
		List<ChartVO> musicList = chartService.readAllMusicOfOneArtist(artistId);

		ModelAndView view = new ModelAndView();
		view.setViewName("chart/albumInfo");
		view.addObject("chartVOList", chartVOList);
		view.addObject("musicList", musicList);

		return view;
	}
	
	/*@RequestMapping("/chart/albumInfo/{musicId}")
	public ModelAndView viewAllMusicOfOneArtist() {
		List<ChartVO> musicList = chartService.readAllMusicOfOneArtist(3);
		
		ModelAndView view = new ModelAndView();
		view.setViewName("chart/albumInfo");
		view.addObject("musicList", musicList);

		return view;
	}*/
	
	
	@RequestMapping("/chart/like/{musicId}")
	public String updateLikeCount(@PathVariable int musicId) {
		Boolean isSuccess = chartService.updateLikeCount(musicId);
		return "redirect:/chart/main/0";
	}
	
	
	
	
	
	
	/*@RequestMapping("/chart/artistChannel")
	public ModelAndView viewArtistChannel() {
		ArtistChannelVO artistChannelVO = chartService.readOneArtist();
		
		ModelAndView view = new ModelAndView();
		view.setViewName("chart/artistChannel");
		view.addObject("artistChannelVO", artistChannelVO);
		
		return view;
	}*/
	
	@RequestMapping("/chart/main/{startNumber}")
	public ModelAndView viewMelonChart(@PathVariable int startNumber) {
		//ChartVO chartVO = chartService.readMelonChart();
		
		List<ChartVO> chartVOList = chartService.readAllMelonChart(startNumber);
		
		/*for (ChartVO chartVO2 : chartVOList) {
			System.out.println(chartVO2.getMusicId());
		}*/
		
		ModelAndView view = new ModelAndView();
		view.setViewName("chart/chartMain");
		//view.addObject("chartVO", chartVO);
		view.addObject("chartVOList", chartVOList);
		
		return view;
	}
	
}
