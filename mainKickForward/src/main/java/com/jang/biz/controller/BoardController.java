package com.jang.biz.controller;

import com.jang.biz.model.Board;
import com.jang.biz.model.Comment;
import com.jang.biz.model.Criteria;
import com.jang.biz.model.PageMaker;
import com.jang.biz.model.User;
import com.jang.biz.service.BoardService;
import com.jang.biz.session.SessionConst;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller(value = "BoardController")
public class BoardController {

	@Autowired
	private BoardService boardService;

	// list-------------------------------------------------------------------------------------------------------------------
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model, Criteria cri, HttpSession session) throws Exception {

		// 세션에서 회원 정보 가져오기
		User loginUser = (User) session.getAttribute(SessionConst.LOGIN_MEMBER);

		List<Board> list = this.boardService.getListPaging(cri);
		model.addAttribute("list", list);

		int total = boardService.getTotal(cri);

		PageMaker pageMake = new PageMaker(cri, total);

		model.addAttribute("pageMaker", pageMake);

		// 모델에 회원 정보 추가
		model.addAttribute("loginUser", loginUser);

		return "view__supportview/BoardList";
	}
	

//view--------------------------------------------------------------------------------------------------------------------	

	@RequestMapping(value = "/view")
	public String viewform(@RequestParam(value = "bno", required = false, defaultValue = "0") int bno, Model model,
			HttpSession session) throws Exception {

		// 세션에서 회원 정보 가져오기
		User loginUser = (User) session.getAttribute(SessionConst.LOGIN_MEMBER);

		Board view = this.boardService.getBoard(bno);
		model.addAttribute("view", view);

		// 모델에 회원 정보 추가
		model.addAttribute("loginUser", loginUser);

		model.addAttribute("comment", this.boardService.getCommentList((long) bno));

		return "view__supportview/BoardView";

	}

	// 댓글----------------------------
	@PostMapping(value = "/saveComment")
	public String addComment(@Valid Comment comment, BindingResult bindingResult, RedirectAttributes rea) {

		System.out.println("comment = " + comment);
		if (bindingResult.hasErrors()) {
			rea.addFlashAttribute("comment", bindingResult.getModel());
			return "redirect:/view?bno=" + comment.getBno();
		}

		if (this.boardService.addComment(comment) == 1) {
			rea.addFlashAttribute("message", "댓글이 등록되었습니다.");
		} else {
			rea.addFlashAttribute("message", "댓글 등록에 실패하였습니다. 확인 후 다시 시도 해주세요");
		}
		return "redirect:/view?bno=" + comment.getBno();
	}

	// 댓글 목록
	@ResponseBody
	@PostMapping(value = "/commentList")
	public ResponseEntity<List<Comment>> getCommentList(Long boardId) {
		return ResponseEntity.ok().body(this.boardService.getCommentList(boardId));
	}

}
