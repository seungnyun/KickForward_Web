package com.jang.biz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.biz.mapper.AdminMapper;
import com.jang.biz.mapper.KickMapper;
import com.jang.biz.model.Admin;
import com.jang.biz.model.Kick;

@Service(value= "adminService")
public class AdminServiceImpl implements AdminService {	
	
	@Autowired
	private AdminMapper adminMapper;	
	
	@Override
	public Admin getAdmin(String adminId) {
		return this.adminMapper.getAdmin(adminId);
	}	
	
	
}