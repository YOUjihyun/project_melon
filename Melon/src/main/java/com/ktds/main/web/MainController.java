package com.ktds.main.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.chart.service.ChartService;
import com.ktds.magazine.service.MagazineService;
import com.ktds.main.common.SessionStore;
import com.ktds.main.service.UserService;
import com.ktds.main.vo.UserVO;
import com.ktds.notice.service.NoticeService;
import com.ktds.search.service.SearchService;

@Controller
public class MainController {
	
	private UserService userService;
	private SearchService searchService;
	private ChartService chartService;
	private NoticeService noticeService;
	private MagazineService magazineService;
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public void setSearchService(SearchService searchService) {
		this.searchService = searchService;
	}
	
	public void setChartService(ChartService chartService) {
		this.chartService = chartService;
	}
	
	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}
	
	public void setMagazineService(MagazineService magazineService) {
		this.magazineService = magazineService;
	}

	@RequestMapping("/")
	public ModelAndView main(@RequestParam(required=false) String msg, HttpSession session) {
		ModelAndView view = new ModelAndView("main");
		
		if (msg != null) {
			if (msg.equals("1")) {
				view.addObject("msg", "비밀번호 변경 완료");
			}
			else if (msg.equals("2")) {
				view.addObject("msg", "비밀번호 변경 실패\n잠시후 다시 시도해 주세요.");
			}
		}
		
		session.setAttribute("_REALRANK_", searchService.readReal());
		view.addObject("search", searchService.readReal());
		view.addObject("albumPoster", chartService.readMainPoster());
		view.addObject("notice", noticeService.readMainNotice());
		view.addObject("realChart", chartService.readRealTimeChart());
		view.addObject("popChart", chartService.readPopChart());
		view.addObject("artist", chartService.readRandomArtist());
		view.addObject("magazine", magazineService.readMainMagazine());
		view.addObject("newAlbum", chartService.readNewAlbum());
		view.addObject("newAlbumLike", chartService.readNewAlbumLike());
		
		return view;
	}
	
	@RequestMapping("/user/join")
	public String viewJoinPage() {
		return "user/join";
	}
	
	@RequestMapping("/user/myInfo")
	public String viewMyInfo() {
		return "user/myInfo";
	}
	@RequestMapping("/user/changeInfo")
	public String viewchangeInfo() {
		return "user/changeInfo";
	}
	
	
	@RequestMapping("/user/login")
	public void viewLoginPage() {}
	
	@RequestMapping("/user/find")
	public ModelAndView viewFindPage(String find) {
		ModelAndView view = new ModelAndView("/user/user_find");
		view.addObject("find", find);
		return view;
	}
	
	@RequestMapping("/user/findOk/{type}")
	public ModelAndView findOk(UserVO userVO, @PathVariable int type) {
		ModelAndView view = new ModelAndView();
		
		if (type == 1) {
			view.setViewName("/user/user_findOk");
		}
		else if(type == 2) {
			view.setViewName("/user/user_findPwOk");
		}
		
		view.addObject("userId", userService.readIdFind(userVO).getId());
		
		return view;
	}
	
	@RequestMapping("/user/pwFind")
	@ResponseBody
	public UserVO pwFind(UserVO userVO) {
		return userService.readFindPw(userVO);
	}
	
	@RequestMapping("/user/pwfindMiddle")
	public ModelAndView pwfindOk(String email) {
		ModelAndView view = new ModelAndView("user/user_findPw");
		
		String em = email.split("@")[0];
		String em1 = em.substring(0, 2);
		
		for (int i = 0; i < em.length()-2; i++) {
			em1 += "*";
		}
		em1 += "@";
		em1 += email.split("@")[1];
		
		view.addObject("email", em1);
		
		return view;
	}
	
	@RequestMapping("/user/joinForm")
	public ModelAndView viewJoinFormPage(String new_name, String new_phone) {
		ModelAndView view = new ModelAndView("/user/joinForm");
		view.addObject("name", new_name);
		view.addObject("phone", new_phone);
		return view;
	}
	
	@RequestMapping("/user/join_complete")
	public ModelAndView viewJoinComplete(UserVO userVO) {
		ModelAndView view = new ModelAndView("user/join_complete");
		
		boolean isSuccess = userService.createNewMember(userVO);
		if(isSuccess) {
			UserVO user = userService.readUserInfo(userVO.getId());
			view.addObject("user", user);
		}
		
		return view;
	}
	
	@RequestMapping("/user/phoneNumberUpdate")
	@ResponseBody
	public String phoneNumberUpdate(UserVO userVO) {
		boolean isSuccess = userService.updatePhoneNumber(userVO);
		
		if (isSuccess) {
			return userVO.getPhoneNo();
		}
		
		return "failed";
	}
	@RequestMapping("/user/emailUpdate")
	@ResponseBody
	public String emailUpdate(UserVO userVO) {
		boolean isSuccess = userService.updateEmail(userVO);
		if (isSuccess) {
			return userVO.getEmail();
		}
		return "failed";
	}
	
	
	@RequestMapping("/user/get/{userId}")
	public void getLoggedUser(@PathVariable String userId, HttpServletResponse response) {
		
		boolean isLogged = SessionStore.getInstance().get(userId) != null;
		
		PrintWriter out = null;
		try {
			out = response.getWriter();
			out.write(isLogged + "");
			out.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
		finally {
			if ( out != null ) {
				out.close();
			}
		}
	}
	
	@RequestMapping("/user/miniLogin")
	@ResponseBody
	public String miniLogin(UserVO userVO, HttpSession session) {
		UserVO user = userService.readUser(userVO);
		
		if (user != null) {
			session.setAttribute("_USER_", user);
			SessionStore.getInstance().add(user.getId(), session);
			return "success";
		}
		
		return "failed";
	}
	
	@RequestMapping("/user/doLogin")
	public ModelAndView doLogin(UserVO userVO, HttpSession session) {
		UserVO user = userService.readUser(userVO);
		
		if (user != null) {
			session.setAttribute("_USER_", user);
			SessionStore.getInstance().add(user.getId(), session);
			
			return new ModelAndView("redirect:/");
		}
		
		return new ModelAndView("user/login").addObject("error", "fail");
	}
	
	@RequestMapping("/user/logout")
	public String doLogout(HttpSession session) {
		
		UserVO user = (UserVO) session.getAttribute("_USER_");
		
		session.invalidate();
		SessionStore.getInstance().remove(user.getId());
		
		return "redirect:/";
	}
	
	@RequestMapping("/user/confirmPhone")
	@ResponseBody
	public String doConfirmPhone(String phone) {
		UserVO userVO = userService.readConfirmPhone(phone);
		
		if (userVO != null) {
			return userVO.getId();
		}
		
		return "false";
	}
	
	@RequestMapping("/user/confirmId")
	@ResponseBody
	public String doConfirmId(String id) {
		UserVO userVO = userService.readConfirmId(id);
		
		if( userVO != null ) {
			return userVO.getId();
		}
		return "false";
	}
	
	@RequestMapping("/user/confirmNick")
	@ResponseBody
	public String doConfirmNick(String nickName) {
		UserVO userVO = userService.readConfirmNick(nickName);
		if( userVO != null ) {
			return userVO.getId();
		}
		return "false";
	}
	
	@RequestMapping("/user/mail")
	@ResponseBody
	public String mail(String name, String email) {
		UserVO userVO = new UserVO();
		userVO.setName(name);
		userVO.setEmail(email);
		
		UserVO mailUser = userService.readIdFind(userVO);
		
		if (mailUser != null) {
			return mailing(mailUser.getEmail());
		}
		
		return "fail";
	}
	
	@RequestMapping("/user/joinMail")
	@ResponseBody
	public String joinMail(String email) {
		String certiNumber = mailing(email);
		if (certiNumber != null) {
			return certiNumber;
		}
		return "fail";
	}
	
	@RequestMapping("/user/passwordChange")
	public String passwordChange(UserVO userVO) {
		boolean isSuccess = userService.updateChangePassword(userVO);
		int msgCode = 0;
		
		if (isSuccess) {
			msgCode = 1;
		}
		else {
			msgCode = 2;
		}
		
		return "redirect:/?msg=" + msgCode;
	}
	
	// 회원탈퇴
	@RequestMapping("/user/withraw")
	public String withraw(HttpSession session) {
		UserVO user = (UserVO) session.getAttribute("_USER_");
		String id = user.getId();
		
		boolean isSuccess = userService.deleteUser(id);
		if (isSuccess) {
			session.invalidate();
		}
		
		return "redirect:/";
	}
	
	// mail 발송 메소드
	private String mailing(String mail) {
		int result = (int) Math.floor(Math.random() * 1000000) + 100000;
		if(result > 1000000){
			result = result - 100000;
		}
		
		String authNumber = result + "";
		
		// 메일 관련 정보
		String host = "smtp.naver.com";
		int port = 465;
		
		// 메일 내용
		String recipient = mail;
		String subject = "[멜론] 인증번호를 알려드립니다. ";
		String body = "<!DOCTYPE html>\r\n" + 
				"<html>\r\n" + 
				"<head>\r\n" + 
				"	\r\n" + 
				"</head>\r\n" + 
				"<body>\r\n" + 
				"	<div id=\"readFrame\" style=\"padding-left: 39px;\">\r\n" + 
				"		<xmeta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n" + 
				"\r\n" + 
				"		<table width=\"600\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#ffffff\">\r\n" + 
				"			<tbody><tr><td style=\"padding:40px 20px 24px 20px;\">\r\n" + 
				"					<table width=\"600\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n" + 
				"						<tbody><!-- header --><tr><td valign=\"top\">\r\n" + 
				"								<table width=\"600\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n" + 
				"									<tbody><tr><td width=\"92\" style=\"font-size:0;\"><a href=\"http://www.melon.com\" target=\"_blank\"><img src=\"http://cdnimg.melon.co.kr/resource/image/web/ems/img_logo2.png\" style=\"border:none;\" alt=\"Melon\" width=\"100\" height=\"39\"></a></td><td><p width=\"714\" style=\"margin:0 0 0 0; padding:11px 0 10px 0; font-family:Malgun Gothic, Dotum; font-size:16px; color:#000; text-align:right;\">인증번호 안내</p></td></tr></tbody>\r\n" + 
				"								</table>\r\n" + 
				"							</td></tr><!-- //header --><!-- content --><tr><td style=\"padding:43px 7px 50px 10px; border-top:2px solid #00cd3c\">\r\n" + 
				"								<table width=\"580\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n" + 
				"									<tbody><tr><td><p style=\"margin:0 0 0 0; font-family:Malgun Gothic, Dotum; font-size:30px; color:#000; line-height:42px; letter-spacing:-3px;\">멜론에서 요청하신 인증번호를<br>발송해 드립니다.</p></td></tr><tr><td height=\"47\" style=\"font-size:0;\"></td></tr><tr><td style=\"padding:18px 0 24px 0; border:2px solid #ddd;\">\r\n" + 
				"											<table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"text-align:center;\">\r\n" + 
				"												<tbody><tr><td><p style=\"margin:0 0 0 0; padding-left:26px; font-family:Malgun Gothic, Dotum; font-size:16px; color:#606060; line-height:38px; letter-spacing:-1px;\">아래 인증번호 6자리를 인증번호 입력창에 입력해주세요</p></td></tr><tr><td><p style=\"margin:0 0 0 0; padding-left:8px; font-family:Malgun Gothic, Dotum; font-size:30px; font-weight:bold; color:#00b423; line-height:38px;\">" + authNumber + "</p></td></tr></tbody></table>\r\n" + 
				"										</td></tr><tr height=\"99\" style=\"font-size:0;\"><td></td></tr></tbody>\r\n" + 
				"								</table>\r\n" + 
				"							</td></tr><!-- //content --><!-- footer --><tr><td>\r\n" + 
				"								<table width=\"600\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"padding:24px 0 0 0; background:#fafafa\">\r\n" + 
				"									<tbody><tr><td style=\"font-family:Dotum; font-size:12px; color:#333; line-height:20px; text-align:center\">본 메일은 발신전용 메일입니다. 해당 메일관련 문의는 멜론 <a href=\"http://faqs2.melon.com/customer/index.htm\" target=\"_blank\" style=\"font-weight:bold; color:#1a1a1a; text-decoration:underline;\">고객지원센터</a>를 이용해 주시기 바랍니다</td></tr><tr><td height=\"22\" style=\"margin:0 0 0 0; padding:0 0 0 0; font-size:0;\"></td></tr><tr><td style=\"padding:0 0 0 47px; font-family:Dotum; font-size:12px; color:#333; line-height:20px; text-align:left\">서울시 강남구 테헤란로 103길 17 <span style=\"display:inline-block; margin:0 3px 0 2px; color:#e2e6e5;\">|</span> 대표이사 : 신원수, 박성훈 <span style=\"display:inline-block; margin:0 4px 0 3px; color:#e2e6e5;\">|</span> 사업자등록번호 138-81-05876<br>통신판매업 신고번호 제2011-서울강남-02008호 <span style=\"display:inline-block; margin:0 4px 0 3px; color:#e2e6e5;\">|</span> 문의전화(평일 09:00~18:00) 1566-7727 (유료)<br>© LOEN Entertainment, Inc. ALL RIGHTS RESERVED.\r\n" + 
				"										</td></tr><tr><td height=\"24\" style=\"margin:0 0 0 0; padding:0 0 0 0; font-size:0;\"></td></tr></tbody>\r\n" + 
				"								</table>\r\n" + 
				"							</td></tr><!-- //footer --></tbody>\r\n" + 
				"					</table>\r\n" + 
				"				</td></tr></tbody>\r\n" + 
				"		</table>\r\n" + 
				"		</xmeta>\r\n" + 
				"	</div>\r\n" + 
				"</body>\r\n" + 
				"</html>";
			
			Properties props = System.getProperties();
			
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", port);
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.ssl.enable", "true");
			props.put("mail.smtp.ssl.trust", host);
			
			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("jhkwak6089", "Rkfm6089!");
				}
			});
			session.setDebug(true); //for debug
			
			Message mimeMessage = new MimeMessage(session);
			try {
				mimeMessage.setFrom(new InternetAddress("jhkwak6089@naver.com"));
				mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
				mimeMessage.setSubject(subject);
				mimeMessage.setContent(body, "text/html;charset=UTF-8");
				Transport.send(mimeMessage);
			} catch (MessagingException e) {
				e.printStackTrace();
				return null;
			}
			
			return authNumber;
	 }
	
}
