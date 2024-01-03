package com.jang.biz.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jang.biz.model.User;
import com.jang.biz.service.UserService;

@Controller
public class JoinController {

	@Autowired
	private UserService userService;
	
	//회원가입
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String toUserEntryView(Model model) {
		model.addAttribute("user", new User());
		return "join/joinForm";
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String onSubmit(@Valid User user, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAllAttributes(result.getModel());
			return "join/joinForm";
		}

		if (!user.getPass().equals(user.getPass2())) { // 입력한 비밀번호와 재확인 비밀번호가 다른 경우
			result.rejectValue("pass2", "error.user", "비밀번호가 다릅니다."); // pass2 필드에 대한 에러 메시지 추가
			return "join/joinForm";
		}

		try {
			if (this.userService.insertUser(user) != 0) {
				model.addAttribute("message", "다음과 같이 회원이 완료되었습니다.");
				model.addAttribute("user", user);
				return "join/joinSuccess";
			} else {
				model.addAttribute("errMsg", "회원가입이 완료되지 못했습니다. 다시 시도하여주세요.");
				model.addAllAttributes(result.getModel());
				return "join/joinForm";
			}
		} catch (Exception e) {
			model.addAttribute("errMsg", "아이디를 다시 확인해주세요.");
			model.addAllAttributes(result.getModel());
			return "join/joinForm";
		}
	}

	// 이메일 인증
	@RequestMapping(value = "/email-sender", method = RequestMethod.GET)
	public ResponseEntity<Void> emailSender(@RequestParam String email, HttpSession session)
			throws MessagingException, UnsupportedEncodingException {
		String decodeEmail = URLDecoder.decode(email, "UTF-8");
		String certificationNumber = userService.sendEmail(decodeEmail);
		session.setAttribute(decodeEmail, certificationNumber);
		session.setMaxInactiveInterval(3 * 60);
		return ResponseEntity.status(200).build();
	}

	@RequestMapping(value = "/email-check", method = RequestMethod.GET)
	public ResponseEntity<Void> emailCheck(@RequestParam String email, @RequestParam String certificationNumber,
			HttpSession session) throws UnsupportedEncodingException {
		String decodeEmail = URLDecoder.decode(email, "UTF-8");

		if (session.getAttribute(decodeEmail) == null) {
			return ResponseEntity.status(400).build();
		}

		String verificationAuthenticationNumber = (String) session.getAttribute(decodeEmail);

		if (!verificationAuthenticationNumber.equals(certificationNumber)) {

			return ResponseEntity.status(400).build();

		}
		session.removeAttribute(decodeEmail);
		return ResponseEntity.status(200).build();
	}
	
	//아이디 증복여부1

	   @RequestMapping("/idcheck.do") //매핑 주소 경로
	   @ResponseBody  //메세지를 전달할 수 있음 ajax형태 비동기전송방식으로 실행이 되서 success쪽으로 데이터를 전송하려면 ResponseBody가 있어야 메세지를 화면으로 전달할 수 있음
	   public ResponseEntity<Void> findFormJoin(@RequestParam("id") String id) throws Exception {  //실행 매소드에서 id를 받아야함

	      //결과 값을 ajax를 통해 다시 보내줘야함
	      String message = "";//메세지값을 셋팅해서 ajax로 다시 보내줘야함

	      //service 실행 시켜서 그것에 대한 결과를 얻기
	      int count = userService.findFormJoin(id); // 이쪽으로 결과값이 리턴됨 0 또는 1 결과값
	      if (count == 0) {
	         return ResponseEntity.ok().build();
	      }
	      return ResponseEntity.badRequest().build();
	   }

}

		
	