package com.jang.biz.service;

import java.util.List;

import com.jang.biz.model.Board;
import com.jang.biz.model.Criteria;

public interface BreakdownBoardService {

	List<Board> getBoardList();

	Board getBoard(int bno); // 글가져오기

	int addBoard(Board board); // 글쓰기

	int deleteBoard(int bno); // 글삭제

	int updateBoard(Board board) throws Exception; // 게시물 글 수정

	public List<Board> getListPaging(Criteria cri); // 게시판 목록

	public int getTotal(); /* 게시판 총 갯수 */
	
	int updateRepairStatus(int bno, String repair) throws Exception; // 수리 버튼

}
