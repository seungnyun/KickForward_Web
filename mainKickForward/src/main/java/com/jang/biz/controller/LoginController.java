package com.jang.biz.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jang.biz.model.User;
import com.jang.biz.service.UserService;
import com.jang.biz.session.SessionConst;

@Controller
public class LoginController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
	public String Home(Model model, HttpSession session) {
		
		// 세션에서 회원 정보 가져오기
	    User loginUser = (User) session.getAttribute(SessionConst.LOGIN_MEMBER);

	    // 모델에 회원 정보 추가
	    model.addAttribute("loginUser", loginUser);
	   
	    return "home";
	}	
	
    //로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String toLoginView(Model model) {
		model.addAttribute("user", new User());
		return "login";
	}

	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String toLogin(@Valid User user, BindingResult result, Model model, HttpServletRequest request) {
	    if (result.hasFieldErrors("id") || result.hasFieldErrors("pass")) {
	        model.addAllAttributes(result.getModel());
	        return "login";
	    }

	    try {
	        User loginUser = this.userService.getUser(user.getId());
	        
	        System.out.println(loginUser);

	        if (loginUser != null && user.getPass().equals(loginUser.getPass())) {
	            model.addAttribute("loginUser", loginUser);
			    
	            //로그인 성공 처리
			    //세션이 있으면 있는 세션 반환, 없으면 신규 세션을 생성
			    HttpSession session = request.getSession();
			    //세션에 로그인 회원 정보 보관
			    session.setAttribute(SessionConst.LOGIN_MEMBER, loginUser);
			    			 
	            return "redirect:/home";
	        } else {
	        	result.rejectValue("pass", "error.pass.user", "비밀번호가 틀렸습니다.");
	            model.addAllAttributes(result.getModel());
	            return "login";
	        }
	    } catch (EmptyResultDataAccessException e) {
	    	result.rejectValue("id", "error.id.user","아이디가 존재하지 않습니다.");
	        model.addAllAttributes(result.getModel());
	        return "login";
	    }
	}
	
	//로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String LogOut(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) { // 세션이 있을 경우
			session.invalidate();// 세션 초기화
		} else {
		}
		return "home";
	}
	
	//회원정보
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String toProfile(Model model, HttpSession session) {
		
		// 세션에서 회원 정보 가져오기
	    User loginUser = (User) session.getAttribute(SessionConst.LOGIN_MEMBER);

	    // 모델에 회원 정보 추가
	    model.addAttribute("loginUser", loginUser);
	   
	    return "profile";
	}
	
	//아이디, 비밀번호 찾기
	@RequestMapping(value = "/findId", method = RequestMethod.GET)
	public String toFindIdForm(Model model) {
		model.addAttribute("user", new User());
		return "find/findIdForm";
	}

	
	@RequestMapping(value = "/findId", method = RequestMethod.POST)
	public String findIdSubmit(@Valid User user, BindingResult result, Model model) {
		if (result.hasFieldErrors("name") || result.hasFieldErrors("email")) {
			model.addAllAttributes(result.getModel());
			return "find/findIdForm";
		}

		try {
			User findUser = this.userService.findId(user.getName());

			if (findUser == null) {
				model.addAttribute("errMsg", "이름이 일치하지 않습니다.");
				return "find/findIdForm";
			}
			if (user.getEmail().equals(findUser.getEmail())) {
				model.addAttribute("findUser", findUser);
				return "find/findIdSuccess";
			} else {
				model.addAttribute("errMsg", "이메일이 일치하지 않습니다.");
				return "find/findIdForm";
			}

		} catch (EmptyResultDataAccessException e) {
			model.addAttribute("errMsg", "이름이나 이메일 정보가 일치하지 않습니다.");
			return "find/findIdForm";
		}
	}

	@RequestMapping(value = "/findPass", method = RequestMethod.GET)
	public String toFindPassForm(Model model) {
		model.addAttribute("user", new User());
		return "find/findPassForm";
	}

	@RequestMapping(value = "/findPass", method = RequestMethod.POST)
	public String findPassSubmit(@Valid User user, BindingResult result, Model model) {
		if (result.hasFieldErrors("id") || result.hasFieldErrors("email")) {
			model.addAllAttributes(result.getModel());
			return "find/findPassForm";
		}

		try {
			User findUser = this.userService.findPass(user.getId());

			if (findUser == null) {
				model.addAttribute("errMsg", "아이디가 일치하지 않습니다.");
				return "find/findPassForm";
			}
			if (user.getEmail().equals(findUser.getEmail())) {
				model.addAttribute("findUser", findUser);
				return "find/findPassSuccess";
			} else {
				model.addAttribute("errMsg", "이메일이 일치하지 않습니다.");
				return "find/findPassForm";
			}
		} catch (EmptyResultDataAccessException e) {
			model.addAttribute("errMsg", "아이디 또는 이메일 정보가 일치하지 않습니다.");
			return "find/findPassForm";
		}
	}

}