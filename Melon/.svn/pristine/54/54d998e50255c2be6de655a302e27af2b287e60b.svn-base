package com.ktds.magazine.web;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.magazine.service.MagazineService;
import com.ktds.magazine.vo.MagazineListVO;
import com.ktds.magazine.vo.MagazineVO;
import com.ktds.main.vo.UserVO;

import io.github.seccoding.common.DownloadUtil;
import io.github.seccoding.web.pager.PageExplorer;
import io.github.seccoding.web.pager.explorer.ClassicPageExplorer;

@Controller
public class MagazineController {
	
	private MagazineService magazineService;
	
	public void setMagazineService(MagazineService magazineService) {
		this.magazineService = magazineService;
	}
	
	@RequestMapping("/magazine/list/{categoryId}")
	public ModelAndView magazineList(@PathVariable int categoryId, MagazineVO magazineVO, HttpSession session) {
		
		magazineVO.setCategoryId(categoryId);
		
/*		String format = new SimpleDateFormat("yyyy/MM/dd hh:mm").format(new Date());
		Timestamp timestamp = format.format(format, args);*/
		
//		if(magazineVO.getPageNo() == null || magazineVO.getPageNo().length() == 0) {
//			magazineVO = (MagazineVO) session.getAttribute("_SEARCH_");
//			
//			if( magazineVO == null) {
//				magazineVO = new MagazineVO();
//			}
//		}
		
		MagazineListVO magazineList = magazineService.readAllMagazineByCategoryId(magazineVO);
		
//		PageExplorer pagenation = new ClassicPageExplorer(magazineList.getPager());
//		String pager = pagenation.getPagingList("pageNo", "[@]", "이전", "다음", "searchForm");
		
		ModelAndView view = new ModelAndView();
		
		if(categoryId == 1) {
			view.setViewName("magazine/mainList");	
			view.addObject("magazineList", magazineList.getMagazineListVO());
			view.addObject("magazineVO", magazineVO);
//			view.addObject("pager", pager);
			
//			session.setAttribute("_SEARCH_", magazineVO);
			
			return view;
		}
		else if(categoryId == 2){
			magazineList = magazineService.readAllMagazine(magazineVO);
			view.setViewName("magazine/allList");	
			view.addObject("magazineList", magazineList.getMagazineListVO());
			view.addObject("magazineVO", magazineVO);
//			view.addObject("pager", pager);
			
//			session.setAttribute("_SEARCH_", magazineVO);
			
			return view;
		}
		else {
			view.setViewName("magazine/list");	
			view.addObject("magazineList", magazineList.getMagazineListVO());
			view.addObject("magazineVO", magazineVO);
//			view.addObject("pager", pager);
			
//			session.setAttribute("_SEARCH_", magazineVO);
			
			return view;
		}
	}
	
	
	@RequestMapping("/magazine/mainList/{categoryId}")
	public ModelAndView magazineMainList(@PathVariable int categoryId, MagazineVO magazineVO, HttpSession session) {
		
		magazineVO.setCategoryId(categoryId);
		
/*		String format = new SimpleDateFormat("yyyy/MM/dd hh:mm").format(new Date());
		Timestamp timestamp = format.format(format, args);*/
		
		if(magazineVO.getPageNo() == null || magazineVO.getPageNo().length() == 0) {
			magazineVO = (MagazineVO) session.getAttribute("_SEARCH_");
			
			if( magazineVO == null) {
				magazineVO = new MagazineVO();
			}
		}
		
		MagazineListVO magazineList = magazineService.readAllMagazine(magazineVO);
		
		PageExplorer pagenation = new ClassicPageExplorer(magazineList.getPager());
		String pager = pagenation.getPagingList("pageNo", "[@]", "이전", "다음", "searchForm");
		
		ModelAndView view = new ModelAndView();
		
		if(categoryId == 3) {
			System.out.println("111111111111111111");
			System.out.println(magazineList.getMagazineListVO().get(1));	
		}
		
		
		view.setViewName("magazine/mainList");
		view.addObject("magazineList", magazineList.getMagazineListVO());
		view.addObject("magazineVO", magazineVO);
		view.addObject("pager", pager);
		
		session.setAttribute("_SEARCH_", magazineVO);
		
		return view;
	}
	
	
	@RequestMapping("/magazine/mmaList")
	public ModelAndView mmaList(MagazineVO magazineVO, HttpSession session) {
		
		if(magazineVO.getPageNo() == null || magazineVO.getPageNo().length() == 0) {
			magazineVO = (MagazineVO) session.getAttribute("_SEARCH_");
			
			if( magazineVO == null) {
				magazineVO = new MagazineVO();
			}
		}
		
		MagazineListVO magazineList = magazineService.readAllMagazine(magazineVO);
		
		System.out.println("1defaeawgawe" + magazineList);
		
		PageExplorer pagenation = new ClassicPageExplorer(magazineList.getPager());
		String pager = pagenation.getPagingList("pageNo", "[@]", "이전", "다음", "searchForm");
		
		ModelAndView view = new ModelAndView();
		
		view.setViewName("magazine/mmaList");
		view.addObject("magazineList", magazineList.getMagazineListVO());
		view.addObject("magazineVO", magazineVO);
		view.addObject("pager", pager);
		
		session.setAttribute("_SEARCH_", magazineVO);
		
		return view;
	}
	
	@RequestMapping("/magazine/newWeeklyList")
	public ModelAndView newWeeklyList(MagazineVO magazineVO, HttpSession session) {
		
		if(magazineVO.getPageNo() == null || magazineVO.getPageNo().length() == 0) {
			magazineVO = (MagazineVO) session.getAttribute("_SEARCH_");
			
			if( magazineVO == null) {
				magazineVO = new MagazineVO();
			}
		}
		
		MagazineListVO magazineList = magazineService.readAllMagazine(magazineVO);
		
		PageExplorer pagenation = new ClassicPageExplorer(magazineList.getPager());
		String pager = pagenation.getPagingList("pageNo", "[@]", "이전", "다음", "searchForm");
		
		ModelAndView view = new ModelAndView();
		
		view.setViewName("magazine/newWeeklyList");
		view.addObject("magazineList", magazineList.getMagazineListVO());
		view.addObject("magazineVO", magazineVO);
		view.addObject("pager", pager);
		
		session.setAttribute("_SEARCH_", magazineVO);
		
		return view;
	}
	
	@RequestMapping("/magazine/like")
	@ResponseBody
	public String updateLikeCount(int magazineId) {
		boolean isSuccess = magazineService.updateLikeCount(magazineId);
		if (isSuccess) {
			return "success";
		}
		
		return "failed";
	}
	
	@RequestMapping("/magazine/read/{categoryId}/{magazineId}")
	public ModelAndView read(@PathVariable(value="categoryId") int categoryId, @PathVariable(value="magazineId") int magazineId) {		
		
		
//		System.out.println("왜안나오지? " + categoryId + "ddd " + magazineId);
		
		MagazineVO magazineVO = new MagazineVO();
		magazineVO.setCategoryId(categoryId);
		magazineVO.setMagazineId(magazineId);
		magazineVO.setId("admin");
		magazineService.updateViewCount(magazineVO);
		//magazineService.updateLikeCount(magazineVO);
		
		MagazineVO magazine = magazineService.readOneMagazine(magazineVO);
		
		ModelAndView view = new ModelAndView();
		view.addObject("magazineVO", magazine);
		view.setViewName("magazine/read");
		
//		System.out.println("왜안나오지? 11 " + magazineVO.getCategoryId() + "ddd 22 " + magazineVO.getMagazineId());
		
		return view;
	}
	
	@RequestMapping("/magazine/read2/{categoryId}/{magazineId}")
	public ModelAndView read2(@PathVariable(value="categoryId") int categoryId, @PathVariable(value="magazineId") int magazineId) {		
		
		
		System.out.println("왜안나오지? " + categoryId + "ddd " + magazineId);
		
		MagazineVO magazineVO = new MagazineVO();
		magazineVO.setCategoryId(categoryId);
		magazineVO.setMagazineId(magazineId);
		magazineService.updateViewCount(magazineVO);
		
		MagazineVO magazine = magazineService.readOneMagazine(magazineVO);
		
		ModelAndView view = new ModelAndView();
		view.addObject("magazine", magazine);
		view.setViewName("magazine/mmaRead");
		
		System.out.println("왜안나오지? 11 " + magazineVO.getCategoryId() + "ddd 22 " + magazineVO.getMagazineId());
		
		return view;
	}
	
	
/*	@RequestMapping("/magazine/newWeeklyWrite")
	public String viewWritePage() {
		return "magazine/newWeeklyWrite";
	}*/
	
	@RequestMapping("/magazine/write/{categoryId}")
	public ModelAndView viewWritePage(@PathVariable int categoryId) {
		
		MagazineVO magazineVO = new MagazineVO();
		magazineVO.setCategoryId(categoryId);
		
		ModelAndView view = new ModelAndView();
		view.setViewName("magazine/write");
		view.addObject("magazineVO", magazineVO);
		
		return view;
	}
	
	private final String PATH = "D:/upload";
	
	@RequestMapping("/magazine/fileUpload")
	public void fileUpload(HttpServletRequest request, HttpServletResponse response) {
		
		String fileName = request.getHeader("file-name");
		String extName = fileName.split("\\.")[1];
		
		List<String> exts = Arrays.asList("jpg","png","bmp","gif", "jpeg", "mp3");
		
		if ( !exts.contains(extName.toLowerCase()) ) {
			sendMessage(response, "NOTALLOW_"+fileName);
		}
		else {
			File imageDir = new File(PATH);
			if ( !imageDir.exists() ) {
				imageDir.mkdirs();
			}
			
			String realFileName = UUID.randomUUID().toString();
			
			File imageFile = new File(imageDir.getAbsolutePath() + File.separator + realFileName);
			InputStream is = null;
			OutputStream os = null;
			try {
				is = request.getInputStream();
				os = new FileOutputStream(imageFile);
				
				IOUtils.copy(is, os);
				
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				if ( is != null ) {
					try {
						is.close();
					} catch (IOException e) {}
				}
				if ( os != null ) {
					try {
						os.close();
					} catch (IOException e) {}
				}
			}
			
			// 정보 출력
			String sFileInfo = "&bNewLine=true";
			//sFileInfo += "&sFileName="+ realFileNm;;
			// img 태그의 title 속성을 원본파일명으로 적용시켜주기 위함
			sFileInfo += "&sFileName="+ fileName;
			//sFileInfo += "&sFileURL="+"/upload/"+realFileNm;
			sFileInfo += "&sFileURL="+ request.getContextPath() + "/magazine/fileDownload/" + realFileName;
			
			sendMessage(response, sFileInfo);
		}
	}
	
	@RequestMapping("/magazine/fileDownload/{realFileName}")
	public void fileDownload(@PathVariable String realFileName, HttpServletRequest request, HttpServletResponse response) {
		DownloadUtil download = new DownloadUtil(PATH + File.separator + realFileName);
		download.download(request, response, realFileName);
	}
	
	@RequestMapping("/magazine/doWrite")
	public String doWrite(MagazineVO magazineVO) {
		
		System.out.println("카테코리아이디: " + magazineVO.getCategoryId());
		
		magazineService.createNewMagazine(magazineVO);
		
		return "redirect:/magazine/list/" + magazineVO.getCategoryId();
	}
	
	@RequestMapping("/magazine/update/{magazineId}")
	public ModelAndView viewUpdatePage(@PathVariable int magazineId, HttpSession session) {

			return new ModelAndView("redirect:/magazine/read/" + magazineId);
	}

	@RequestMapping("/magazine/doUpdateMagazine/{magazineId}")
	public String doUpdateMagazine(@PathVariable int categoryId, @PathVariable int magazineId, MagazineVO magazineVO, HttpSession session) {
		
		UserVO userVO = (UserVO) session.getAttribute("_USER_");
		String id = userVO.getId();
		
		magazineVO.setCategoryId(categoryId);
		
		MagazineVO magazine = magazineService.readOneMagazine(magazineVO);
		
		return "redirect:/magazine/read/" + magazineId;
	}
	
	@RequestMapping("/magazine/delete/{magazineId}")
	public String deleteBoard(@PathVariable int magazineId, MagazineVO magazineVO, HttpSession session) {
//		UserVO userVO = (UserVO) session.getAttribute("_USER_");
//		String id = userVO.getId();
			return "redirect:/magazine/list/" + magazineVO.getCategoryId();		
	}
	
	private void sendMessage(HttpServletResponse response, String message) {
		PrintWriter out = null;
		try {
			out = response.getWriter();
			out.write(message);
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if ( out != null ) {
				out.close();
			}
		}
		
	}
	
}

