package com.jang.biz.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.jang.biz.model.Board;
import com.jang.biz.model.Criteria;

@Mapper
public interface BreakdownBoardMapper {
	
	List<Board> getBoardList();
	
	Board getBoard(int bno);
	
	int addBoard(Board board); //글작성
	
	int deleteBoard(int bno); //글삭제

	int updateBoard(Board board); // 게시물 글 수정	
	
	/* 게시판 목록(페이징 적용) */
	public List<Board> getListPaging(Criteria cri);	
	
	/* 게시판 총 갯수 */
    public int getTotal();
    
    int updateRepairStatus(@Param("bno") int bno, @Param("status") String status);
	
}
