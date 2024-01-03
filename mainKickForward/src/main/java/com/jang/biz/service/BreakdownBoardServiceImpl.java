package com.jang.biz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.biz.mapper.BreakdownBoardMapper;
import com.jang.biz.model.Board;
import com.jang.biz.model.Criteria;

@Service(value = "BreakdownboardService")
public class BreakdownBoardServiceImpl implements BreakdownBoardService {

	@Autowired
	private BreakdownBoardMapper BreakdownboardMapper;

	@Override
	public List<Board> getBoardList() {
		return this.BreakdownboardMapper.getBoardList();
	}

	@Override
	public Board getBoard(int bno) {
		return this.BreakdownboardMapper.getBoard(bno);

	}

	@Override
	public int addBoard(Board board) {
		return this.BreakdownboardMapper.addBoard(board);
	}

	// 게시물 삭제
	@Override
	public int deleteBoard(int bno) {
		return this.BreakdownboardMapper.deleteBoard(bno);

	}

	// 게시물 글 수정
	@Override
	public int updateBoard(Board board) throws Exception {
		return BreakdownboardMapper.updateBoard(board);
	}

	// 게시판 목록(페이징 적용)
	@Override
	public List<Board> getListPaging(Criteria cri) {

		return BreakdownboardMapper.getListPaging(cri);
	}

	/* 게시물 총 갯수 */
	@Override
	public int getTotal() {

		return BreakdownboardMapper.getTotal();
	}
	
	//수리현황 업뎃
	@Override
    public int updateRepairStatus(int bno, String status) throws Exception {
        return BreakdownboardMapper.updateRepairStatus(bno, status);
    }

}
