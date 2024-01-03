package com.jang.biz.mapper;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jang.biz.model.Criteria;
import com.jang.biz.model.Kick;

@Repository(value = "kickMapper")
public class KickMapper {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Kick> getKickList() {
		return sqlSession.selectList("com.jang.biz.mapper.KickMapper.getKickList");
	}
	
	public Kick getKick(int no) {
		return sqlSession.selectOne("com.jang.biz.mapper.KickMapper.getKick", no);
	}
	
	public int addKick(Kick kick) {
		return sqlSession.insert("com.jang.biz.mapper.KickMapper.addKick", kick);
	}
	
	public int updateKick(Kick kick) {
		return sqlSession.update("com.jang.biz.mapper.KickMapper.updateKick", kick);
	}
	
	public int deleteKick(int no) {
		return sqlSession.delete("com.jang.biz.mapper.KickMapper.deleteKick", no);
	}
	
	public List<Kick> getListPaging(Criteria cri) {
		return sqlSession.selectList("com.jang.biz.mapper.KickMapper.getListPaging");
	}
	
	public int getTotal(Criteria cri) {
		return sqlSession.selectOne("com.jang.biz.mapper.KickMapper.getTotal", cri);
	}
	

}
