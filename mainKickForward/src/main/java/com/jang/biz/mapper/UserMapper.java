package com.jang.biz.mapper;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jang.biz.model.User;

@Repository(value="userMapper")
public class UserMapper {
	
	@Autowired
	private SqlSessionTemplate sqlSession; 
	
	public User getUser(String userId) {
		return sqlSession.selectOne("com.jang.biz.mapper.UserMapper.getUser", userId);
	}
	
	public int insert(User user) {
		return sqlSession.insert("com.jang.biz.mapper.UserMapper.insert", user);
	}
	
	public int updateUser(User user) {
		return sqlSession.update("com.jang.biz.mapper.UserMapper.updateUser", user);
	}
	
	public List<User> getUserList(){
		return sqlSession.selectList("com.jang.biz.mapper.UserMapper.getUserList");
	}
	
	public int deleteUser(String userId) {
		return sqlSession.delete("com.jang.biz.mapper.UserMapper.deleteUser", userId);
	}
	
	public User findId(String name){
		return sqlSession.selectOne("com.jang.biz.mapper.UserMapper.findId", name);
	}
	
	public String findIdForCertification(String name) {
		return sqlSession.selectOne("com.jang.biz.mapper.UserMapper.findIdForCertification", name);
	}

	public User findPass(String id) {
		return sqlSession.selectOne("com.jang.biz.mapper.UserMapper.findPass", id);
	}
	
	public int findFormJoin(String id) {
		return sqlSession.selectOne("com.jang.biz.mapper.UserMapper.findFormJoin",id);
	}
	
	public int insertLicense(String id) {
		return sqlSession.update("com.jang.biz.mapper.UserMapper.insertLicense", id);
	}
	
}

