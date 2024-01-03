package com.jang.biz.service;

import java.util.List;

import javax.mail.MessagingException;

import org.springframework.stereotype.Service;

import com.jang.biz.model.User;


@Service(value= "userService")
public interface UserService {
	
	User getUser(String userId);
	
	int insertUser(User user); 
	
	int updateUser(User user); //회원 정보 수정
	
	List<User> getUserList();
	
	int deleteUser(String userId); //회원정보 삭제
	
	User findId(String name); //id찾기
	
	String findIdForCertification(String name); //운전면허 입력을 위한 ID찾기

	User findPass(String id); //비번 찾기
	
	int findFormJoin(String id);
	
	String sendEmail(String email) throws MessagingException; //이메일 보내기
	
}