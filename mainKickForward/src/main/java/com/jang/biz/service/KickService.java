package com.jang.biz.service;

import java.util.List;

import com.jang.biz.model.Board;
import com.jang.biz.model.Criteria;
import com.jang.biz.model.Kick;

public interface KickService {

	List<Kick> getKickList();

	int addKick(Kick kick);

	int updateKick(Kick kick);

	int deleteKick(int no);

	Kick getKick(int no);
	
	public List<Kick> getListPaging(Criteria cri); // 게시판 목록

	public int getTotal(Criteria cri); /* 게시판 총 갯수 */
	
	
}
