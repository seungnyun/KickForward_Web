package com.jang.biz.mapper;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jang.biz.model.Admin;
import com.jang.biz.model.Kick;


@Repository(value = "adminMapper")
public class AdminMapper {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public Admin getAdmin(String adminId) {
		return sqlSession.selectOne("com.jang.biz.mapper.AdminMapper.getAdmin", adminId);
	}
	
	public int deleteUser(String userId) {
		return sqlSession.delete("com.jang.biz.mapper.UserMapper.deleteUser", userId);
	}
	
	public int deleteKick(int no) {
		return sqlSession.delete("com.jang.biz.mapper.KickMapper.deleteKick", no);
	}

}
