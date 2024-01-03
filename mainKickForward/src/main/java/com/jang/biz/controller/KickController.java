package com.jang.biz.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jang.biz.model.Admin;
import com.jang.biz.model.Kick;
import com.jang.biz.service.KickService;
import com.jang.biz.session.SessionConst;

@Controller(value = "kickController")
@RequestMapping("/admin")
public class KickController {
	
	@Autowired
	private KickService kickService;	
	
	@RequestMapping(value = "/kadd", method = RequestMethod.GET)
	public String addForm(Model model) {
		model.addAttribute("kick", new Kick());
		return "kick/AddForm";
	}

	@RequestMapping(value = "/kaddSave", method = RequestMethod.POST)
	public String add(@Valid Kick kick, BindingResult result, RedirectAttributes rea) throws Exception {

		if (result.hasErrors()) {
			rea.addFlashAttribute("kick", result.getModel());
			return "kick/AddForm";
		}

		if (this.kickService.addKick(kick) == 1) {
			rea.addFlashAttribute("message", "신규 등록 되었습니다");
			return "redirect:/admin/kgps";
		}

		else {
			rea.addFlashAttribute("message", "신규 등록에 실패했습니다 다시 시도해주세요");
			return "redirect:/admin/kgps";
		}
	}

	@RequestMapping(value = "/kedit")
	public String form(@RequestParam(value = "no", required = false, defaultValue = "0") int no, Model model)
			throws Exception {
		Kick kick = this.kickService.getKick(no);
		model.addAttribute("kick", kick);
		return "kick/kickEdit";
	}

	@RequestMapping(value = "/keditSave", method = RequestMethod.POST)
	public String update(@ModelAttribute("kick") @Valid Kick kick, BindingResult result, RedirectAttributes rea)
			throws Exception {

		if (result.hasErrors()) {
			rea.addFlashAttribute("kick", result.getModel());
			return "kick/kickView";
		}

		if (this.kickService.updateKick(kick) == 1) {
			rea.addFlashAttribute("message", "수정 되었습니다");
			return "redirect:/admin/kgps";
		}

		else {
			rea.addFlashAttribute("message", "수정에 실패했습니다 다시 시도해주세요");
			return "redirect:/admin/kgps";
		}
	}

	@RequestMapping(value = "/kdelete", method = RequestMethod.POST)
	public String delete(@RequestParam(value = "no", required = false) int no, RedirectAttributes rea)
			throws Exception {

		if (this.kickService.deleteKick(no) == 1) {
			rea.addFlashAttribute("message", "삭제되었습니다");
			return "redirect:/admin/kgps";
		}

		else {
			rea.addFlashAttribute("message", "삭제에 실패했습니다 다시 시도해주세요");
			return "redirect:/admin/kgps";
		}
	}	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/kgps", method = RequestMethod.GET)
	public String list(Model model, HttpSession session) {
		Admin loginAdmin = (Admin) session.getAttribute(SessionConst.LOGIN_MEMBER);
		
		ObjectMapper objectMapper = new ObjectMapper();
		
		List<Kick> kickList = this.kickService.getKickList();		
		
		List<Map<String, Object>> gpsList = new ArrayList<>();
		
		try {
			kickList.forEach(kick -> {
				gpsList.add((Map<String, Object>) objectMapper.convertValue(kick, org.json.simple.JSONObject.class));
			});	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("gpsList", gpsList);
		model.addAttribute("loginAdmin", loginAdmin);
		return "kick/gps";
		
		
	}	
	
}
