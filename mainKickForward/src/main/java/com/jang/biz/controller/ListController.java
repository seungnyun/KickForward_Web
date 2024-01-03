package com.jang.biz.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jang.biz.model.Admin;
import com.jang.biz.model.Board;
import com.jang.biz.model.Criteria;
import com.jang.biz.model.Kick;
import com.jang.biz.model.PageMaker;
import com.jang.biz.model.User;
import com.jang.biz.service.BoardService;
import com.jang.biz.service.KickService;
import com.jang.biz.service.UserService;
import com.jang.biz.session.SessionConst;

@Controller
public class ListController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private KickService kickService;
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "/admin/ulist", method = RequestMethod.GET)
	public String getList(Model model, HttpSession session) {
		Admin loginAdmin = (Admin) session.getAttribute(SessionConst.LOGIN_MEMBER);
		List<User> ulist = this.userService.getUserList();
		model.addAttribute("ulist", ulist);
		model.addAttribute("loginAdmin", loginAdmin);

		return "admin/userList";
		
	}
	
	// 세션은 유지되지만 안에 데이터는 안나옴
	//@RequestMapping(value = "/admin/ulist", method = RequestMethod.GET)
		//public String getList(Model model, HttpSession session) {
			//Admin loginAdmin = (Admin) session.getAttribute(SessionConst.LOGIN_MEMBER);		
			//model.addAttribute("loginAdmin", loginAdmin);
			//return "admin/userList";
		//}
	
	
	@RequestMapping(value = "/admin/klist", method = RequestMethod.GET)
	public String list(Model model, HttpSession session) {
		Admin loginAdmin = (Admin) session.getAttribute(SessionConst.LOGIN_MEMBER);
		List<Kick> gpsList = this.kickService.getKickList();
		model.addAttribute("gpsList", gpsList);
		model.addAttribute("loginAdmin", loginAdmin);

		return "kick/gps";
		
	}
	
	//@RequestMapping(value = "/admin/klist", method = RequestMethod.GET)
	//public String list(Model model) throws Exception {
		//List<Kick> klist = this.kickService.getKickList();
		//model.addAttribute("klist", klist);

		//return "kick/gps";
		
	//}
	
	
	//홈페이지에서 고객센터 메뉴 클릭시 이동
    @RequestMapping(value = "/support", method = RequestMethod.GET)
    public String gotohelpView(Model model, HttpSession session) {
        // 세션에서 회원 정보 가져오기
        User loginUser = (User) session.getAttribute(SessionConst.LOGIN_MEMBER);

        // 모델에 회원 정보 추가
        model.addAttribute("loginUser", loginUser);

        return "support";
    }
	
	
    // 고객게시판 페이지로 이동
    @RequestMapping(value = "/supportboard", method = RequestMethod.GET)
    public String gotosupportboard(Model model, HttpSession session) {
        // 세션에서 회원 정보 가져오기
        User loginUser = (User) session.getAttribute(SessionConst.LOGIN_MEMBER);

        // 모델에 회원 정보 추가
        model.addAttribute("loginUser", loginUser);

        return "redirect:list";
    }
    
  //홈페이지에서 서비스 메뉴 클릭시 이동
    @RequestMapping(value = "/service", method = RequestMethod.GET)
    public String gotoservice(Model model, HttpSession session) {
        // 세션에서 회원 정보 가져오기
        User loginUser = (User) session.getAttribute(SessionConst.LOGIN_MEMBER);

        // 모델에 회원 정보 추가
        model.addAttribute("loginUser", loginUser);

        return "service";
    }
    
  //홈페이지에서 팀 메뉴 클릭시 이동
    @RequestMapping(value = "/team", method = RequestMethod.GET)
    public String gototeam(Model model, HttpSession session) {
        // 세션에서 회원 정보 가져오기
        User loginUser = (User) session.getAttribute(SessionConst.LOGIN_MEMBER);

        // 모델에 회원 정보 추가
        model.addAttribute("loginUser", loginUser);

        return "team";
    }
		
		
	//고객센터페이지에서 고장문의 버튼눌렀을때 고장문의 페이지로 이동
			//@RequestMapping(value = "/supportbreakdown", method = RequestMethod.GET)
			//public String gotosupportbreakdown(Model model) {
				//model.addAttribute("user", new User());
				//return "view__breakdown/BreakdownBoardList";
			//}	
		
		
}
