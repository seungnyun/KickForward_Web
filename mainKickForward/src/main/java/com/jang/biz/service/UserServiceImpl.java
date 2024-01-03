package com.jang.biz.service;

import java.util.List;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.jang.biz.mapper.UserMapper;
import com.jang.biz.model.User;

@Service(value= "userService")
public class UserServiceImpl implements UserService {	
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private JavaMailSender mailSender;

	private final String AUTHOR_EMAIL="dkswjddy1@naver.com";
	
	@Override
	public User getUser(String userId) {
		return this.userMapper.getUser(userId);
	}
	
	@Override
	public int insertUser(User user) {
		return this.userMapper.insert(user);
	}
	
	@Override
	public int updateUser(User user) {
		return this.userMapper.updateUser(user);
	}
	
	@Override
	public List<User> getUserList() {
		return this.userMapper.getUserList();
	}
	
	@Override
	public int deleteUser(String userId) {
		return this.userMapper.deleteUser(userId);
	}
	
	@Override
	public User findId(String name) {
		return this.userMapper.findId(name);
	}
	
	@Override
	public User findPass(String id) {
		return this.userMapper.findPass(id);
	}
	
	@Override
	public String findIdForCertification(String name) {
		return this.userMapper.findIdForCertification(name);
	}

	@Override
	public int findFormJoin (String id) {
		return this.userMapper.findFormJoin(id);
	}
	
	@Override
	public String sendEmail(String email) throws MessagingException {
		MimeMessage message = null;
		StringBuilder sb = new StringBuilder();
		sb.append("<h1> 인증번호입니다.</h1>").append("<br>");
		String certificationNumber = UUID.randomUUID().toString().replaceAll("-", "").substring(0, 6);
		sb.append(certificationNumber);
		message = mailSender.createMimeMessage();
		MimeMessageHelper mailHelper = new MimeMessageHelper(message, "UTF-8");
		mailHelper.setFrom(AUTHOR_EMAIL);
		mailHelper.setTo(email);
		mailHelper.setSubject("인증 메일");
		mailHelper.setText(sb.toString(), true);
		mailSender.send(message);

		mailSender.send(message);
		return certificationNumber;
	}

}