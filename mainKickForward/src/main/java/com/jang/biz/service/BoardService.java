package com.jang.biz.service;

import java.util.List;

import com.jang.biz.model.Board;
import com.jang.biz.model.Comment;
import com.jang.biz.model.Criteria;

public interface BoardService {

	List<Board> getBoardList();

	Board getBoard(int bno);

	int addBoard(Board board); // 글쓰기

	int deleteBoard(int bno); // 글삭제

	int updateBoard(Board board) throws Exception; // 게시물 글 수정

	public List<Board> getListPaging(Criteria cri); // 게시판 목록

	public int getTotal(Criteria cri); /* 게시판 총 갯수 */

	List<Comment> getCommentList(Long boardId); // 댓글 리스트 불러오기

	int addComment(Comment comment); // 댓글 추가	

}
