package com.jang.biz.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jang.biz.model.License;
import com.jang.biz.model.User;
import com.jang.biz.service.CertificationService;
import com.jang.biz.service.UserService;
import com.jang.biz.session.SessionConst;

@Controller
public class CertificationController {
	
	@Autowired
	private CertificationService certificationService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/Certification", method= RequestMethod.GET)
	public String Certification(Model model) {
		model.addAttribute("license",new License());
		return "join/Certification";
	}
	
	@RequestMapping(value="/Certification", method = RequestMethod.POST)
	public String checkLicense(@Valid License license, BindingResult result, RedirectAttributes rea, Model model, HttpSession session) throws Exception {
	    if (result.hasErrors()) {
	        rea.addFlashAttribute("license", license);
	        return "join/Certification";
	    }
	    
	    try {
	    	
	    	User loginUser = (User) session.getAttribute(SessionConst.LOGIN_MEMBER);
	    	
	    	if (this.userService.findIdForCertification(license.getUserName()) == null || !loginUser.getName().equals(license.getUserName())) {
	    		model.addAttribute("message", "회원명과 일치하지않는 운전면허 입니다.");
	    		model.addAllAttributes(result.getModel());
	    		return "join/Certification";
	    	}
	    	
		    HashMap<String, Object> parameterMap = new HashMap<>();
		    parameterMap.put("userName", license.getUserName());
		    parameterMap.put("birthDate", license.getBirthDate());
		    parameterMap.put("licenseNo01", license.getLicenseNo01());
		    parameterMap.put("licenseNo02", license.getLicenseNo02());
		    parameterMap.put("licenseNo03", license.getLicenseNo03());
		    parameterMap.put("licenseNo04", license.getLicenseNo04());
		    parameterMap.put("serialNo", license.getSerialNo());
	
		    if(certificationService.licenseCertification(parameterMap) == 1) {
		    	System.out.println("인증완료");
		    	certificationService.insertLicense(userService.findIdForCertification(license.getUserName()));
		    }else {
		    	model.addAttribute("message", "오류가 발생하였습니다. 다시 시도하여 주십시요.");
	    		model.addAllAttributes(result.getModel());
	    		return "join/Certification";
		    }
		    return "redirect:/profile";
	    }catch(Exception e) {
	    	model.addAttribute("message", "오류가 발생하였습니다. 다시 시도하여 주십시요.");
    		model.addAllAttributes(result.getModel());
    		return "join/Certification";
	    }
	}
	
}
