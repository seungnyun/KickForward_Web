package com.jang.biz.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jang.biz.model.Admin;
import com.jang.biz.model.Kick;
import com.jang.biz.model.User;

@Service(value= "adminService")
public interface AdminService {
	
	Admin getAdmin(String adminId);		
	
}