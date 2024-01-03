package com.jang.biz.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jang.biz.model.User;
import com.jang.biz.service.UserService;

@Controller
public class EditController {

	@Autowired
	private UserService userService;
	
	User user;
	
	@RequestMapping(value="/editU", method = RequestMethod.GET) //edit 사용자 요청이 get 방식으로 들어오면 사용자 정보를 읽어 수정 화면에 출력
	public String toUserEditView(@RequestParam("userId") String userId, Model model) {
		this.user = new User();
		try {
			user = this.userService.getUser(userId);   //사용자 정보 읽어오기
			model.addAttribute("user",user);
			return "editForm";
		}
		catch (EmptyResultDataAccessException e) {
			model.addAttribute("user",user);
			model.addAttribute("errMsg","사용자 정보가 존재하지 않습니다");
			return "editForm";
		}
	}
	
	@RequestMapping(value = "/editU", method = RequestMethod.POST)
	public String onSubmit(@Valid User user, BindingResult result, Model model) throws Exception{
		
		if (result.hasErrors()) {  //수정화면에서 전달된 데이터에 입력 되지 않은 항목이 하나라도있으면 editform으로 이동
			 model.addAllAttributes(result.getModel());
			 return "editForm";
		 }
		 if(this.userService.updateUser(user)!=0) {  //수정된 사용자 정보저장
			 model.addAttribute("user",user);
			 model.addAttribute("message", "다음과 같은 회원님의 정보가 수정 되었습니다.");
			 return "join/joinSuccess";
		 }
		 else {
			 model.addAttribute("errMsg","사용자 정보 수정에 실패하였습니다.");
			 return "editForm";
		 }
	}

}
