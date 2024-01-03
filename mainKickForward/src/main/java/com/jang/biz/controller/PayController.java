package com.jang.biz.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jang.biz.model.User;
import com.jang.biz.service.PayService;
import com.jang.biz.session.SessionConst;


@Controller
public class PayController {
	
	@Autowired
	private PayService payService;

	@RequestMapping(value="/Pay", method= RequestMethod.GET)
	public String Pay() {
		return "join/Pay";
	}
	
	@RequestMapping(value="/Pay", method= RequestMethod.POST)
	public String PayInsert(@RequestParam("receipt_id") String receiptId,  HttpSession session) {
		User loginUser = (User) session.getAttribute(SessionConst.LOGIN_MEMBER);
		
		System.out.println(loginUser.getId()+" "+receiptId);
		
	    payService.getToken();
	    payService.addBillingKey(loginUser.getId(),payService.getBillingKey(receiptId));
	    return "home";
	}
}
