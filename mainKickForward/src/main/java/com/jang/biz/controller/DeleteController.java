package com.jang.biz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jang.biz.model.User;
import com.jang.biz.service.UserService;

@Controller
public class DeleteController {
	
	@Autowired
	private UserService userService;
	

	//회원탈퇴===========================================================
	@RequestMapping(value = "/deleteU", method = RequestMethod.POST)
	public String onSubmit(User user, Model model) throws Exception {
		System.out.println(user.getId());
		
		if(this.userService.deleteUser(user.getId()) !=0) {
			model.addAttribute("message", "탈퇴되었습니다.");
		}
		
		return "deleteSuccess";
		
	}
	
	@RequestMapping(value = "/admin/udelete", method = RequestMethod.POST)
	public String delete(@RequestParam(value = "id", required = false) String userId, RedirectAttributes rea)
			throws Exception {

		if (this.userService.deleteUser(userId) == 1) {
			
			return "redirect:/admin/ulist";
		}

		else {
			
			return "redirect:/admin/ulist";
		}
	}

}

