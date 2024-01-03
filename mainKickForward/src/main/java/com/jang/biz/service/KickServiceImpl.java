package com.jang.biz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.biz.mapper.KickMapper;
import com.jang.biz.model.Board;
import com.jang.biz.model.Criteria;
import com.jang.biz.model.Kick;

@Service(value = "kickService")
public class KickServiceImpl implements KickService {

	@Autowired
	private KickMapper kickMapper;

	@Override
	public List<Kick> getKickList() {
		return this.kickMapper.getKickList();
	}

	@Override
	public Kick getKick(int no) {
		return this.kickMapper.getKick(no);
	}

	@Override
	public int updateKick(Kick kick) {
		return this.kickMapper.updateKick(kick);
	}

	@Override
	public int deleteKick(int no) {
		return this.kickMapper.deleteKick(no);
	}

	@Override
	public int addKick(Kick kick) {
		return this.kickMapper.addKick(kick);
	}
	
	// 게시판 목록(페이징 적용)
	@Override
	public List<Kick> getListPaging(Criteria cri) {
		return kickMapper.getListPaging(cri);
	}

	/* 게시물 총 갯수 */
	@Override
	public int getTotal(Criteria cri) {
		return kickMapper.getTotal(cri);
	}

}
