package com.jang.biz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jang.biz.mapper.BoardMapper;
import com.jang.biz.model.Board;
import com.jang.biz.model.Comment;
import com.jang.biz.model.Criteria;

@Service(value = "boardService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper boardMapper;

	//////////////////////////////////////
	@Override
	public List<Board> getBoardList() {
		return this.boardMapper.getBoardList();
	}

	/////////////////////////////////////////
	@Override
	public Board getBoard(int bno) {
		return this.boardMapper.getBoard(bno);

	}

	////////////////////////////////////////////
	@Override
	public int addBoard(Board board) {
		return this.boardMapper.addBoard(board);
	}

	// 게시물 삭제
	@Override
	public int deleteBoard(int bno) {
		return this.boardMapper.deleteBoard(bno);

	}

	// 게시물 글 수정
	@Override
	public int updateBoard(Board board) throws Exception {
		return boardMapper.updateBoard(board);
	}

	// 게시판 목록(페이징 적용)
	@Override
	public List<Board> getListPaging(Criteria cri) {

		return boardMapper.getListPaging(cri);
	}

	/* 게시물 총 갯수 */
	@Override
	public int getTotal(Criteria cri) {

		return boardMapper.getTotal(cri);
	}

	// 댓글 리스트 불러오기
	@Override
	public List<Comment> getCommentList(Long boardId) {
		return boardMapper.getCommentList(boardId);
	}

	// 댓글 추가
	@Override
	public int addComment(Comment comment) {
		return boardMapper.addComment(comment);
	}

}
