package com.jang.biz.controller;

import com.jang.biz.model.Board;
import com.jang.biz.model.Criteria;
import com.jang.biz.model.PageMaker;
import com.jang.biz.model.User;
import com.jang.biz.service.BreakdownBoardService;
import com.jang.biz.session.SessionConst;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import java.io.File;
import java.util.List;
import java.util.UUID;

@Controller(value = "BreakdownBoardController")
public class BreakdownBoardController {

	@Autowired
	private BreakdownBoardService breakdownboardService;

	// 게시글 리스트로
	// 이동-------------------------------------------------------------------------------------------------------------------

	@RequestMapping(value = "/Breakdownlist", method = RequestMethod.GET)
	public String list(Model model, Criteria cri, HttpSession session) throws Exception {

		// 세션에서 회원 정보 가져오기
		User loginUser = (User) session.getAttribute(SessionConst.LOGIN_MEMBER);

		List<Board> list = this.breakdownboardService.getListPaging(cri);
		model.addAttribute("list", list);

		int total = breakdownboardService.getTotal();

		PageMaker pageMake = new PageMaker(cri, total);

		model.addAttribute("pageMaker", pageMake);

		// 모델에 회원 정보 추가
		model.addAttribute("loginUser", loginUser);

		return "view__breakdown/BreakdownBoardList";
	}

	// 게시글
	// 등록--------------------------------------------------------------------------------------------------------------------

	@RequestMapping(value = "/Breakdownadd", method = RequestMethod.GET)
	public String addForm(Model model, HttpSession session) {

		// 세션에서 회원 정보 가져오기
		User loginUser = (User) session.getAttribute(SessionConst.LOGIN_MEMBER);

		// 모델에 회원 정보 추가
		model.addAttribute("loginUser", loginUser);

		model.addAttribute("board", new Board());
		return "view__breakdown/BreakdownAddForm";
	}

	// 게시글 등록
	@RequestMapping(value = "/BreakdownaddSave", method = RequestMethod.POST)
	public String add(@Valid Board board, BindingResult result, RedirectAttributes rea) throws Exception {

		String fileName = null;
		MultipartFile uploadFile = board.getUploadFile();

		if (result.hasErrors()) {
			rea.addFlashAttribute("board", result.getModel());
			return "view__breakdown/BreakdownAddForm";
		}

		if (!uploadFile.isEmpty()) {
			String originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName);
			UUID uuid = UUID.randomUUID();
			fileName = uuid + "." + ext;
			uploadFile.transferTo(new File("C:\\Users\\Admin\\Desktop" + fileName));
		}
		board.setFile_name(fileName);

		board.setrepair("수리준비"); // 글썻을때 기본으로 "수리준비"값이 넣어짐.

		if (this.breakdownboardService.addBoard(board) == 1) {
			rea.addFlashAttribute("message", "신규 등록되었습니다.");
			return "redirect:/Breakdownlist";

		} else {
			rea.addFlashAttribute("message", "신규 등록에 실패하였습니다. 확인 후 다시 시도 해주세요");
			return "redirect:/Breakdownlist";
		}

	}

//게시글보기--------------------------------------------------------------------------------------------------------------------	
	@RequestMapping(value = "/Breakdownview")
	public String viewform(@RequestParam(value = "bno", required = false, defaultValue = "0") int bno, Model model,
			HttpSession session) throws Exception {

		// 세션에서 회원 정보 가져오기
		User loginUser = (User) session.getAttribute(SessionConst.LOGIN_MEMBER);

		Board view = this.breakdownboardService.getBoard(bno);
		model.addAttribute("Breakdownview", view);

		// 모델에 회원 정보 추가
		model.addAttribute("loginUser", loginUser);

		return "view__breakdown/BreakdownBoardView";
	}

	// 게시글
	// 삭제-------------------------------------------------------------------------------------------------------------

	@RequestMapping(value = "/Breakdowndelete", method = RequestMethod.POST)
	public String delete(@RequestParam(value = "bno", required = false) int bno, RedirectAttributes rea)
			throws Exception {
		if (this.breakdownboardService.deleteBoard(bno) == 1) {
			rea.addFlashAttribute("message", "글이 삭제되었습니다.");
		} else {
			rea.addFlashAttribute("message", "글 삭제에 실패하였습니다.");
		}
		return "redirect:/Breakdownlist";

	}

	// 게시글 수정
	@RequestMapping(value = "/Breakdownedit", method = RequestMethod.GET)
	public String editForm(@RequestParam(value = "bno", required = false, defaultValue = "0") int bno, Model model,
			HttpSession session) throws Exception {
		// 세션에서 회원 정보 가져오기
		User loginUser = (User) session.getAttribute(SessionConst.LOGIN_MEMBER);

		Board view = this.breakdownboardService.getBoard(bno);
		model.addAttribute("Breakdownview", view);

		// 모델에 회원 정보 추가
		model.addAttribute("loginUser", loginUser);
		Board board = this.breakdownboardService.getBoard(bno);
		model.addAttribute("board", board);
		return "view__breakdown/BreakdownBoardEdit";
	}

	@RequestMapping(value = "/BreakeditSave", method = RequestMethod.POST)
	public String editSave(@Valid Board board, BindingResult result, RedirectAttributes rea) throws Exception {
		if (result.hasErrors()) {
			rea.addFlashAttribute("board", result.getModel());
			return "view__breakdown/BreakdownBoardEdit";
		}

		if (this.breakdownboardService.updateBoard(board) == 1) {
			rea.addFlashAttribute("message", "게시물이 수정되었습니다.");
			return "redirect:/Breakdownview?bno=" + board.getBno(); // Redirect to the view page after edit
		} else {
			rea.addFlashAttribute("message", "게시물 수정에 실패하였습니다. 확인 후 다시 시도 해주세요");
			return "redirect:/Breakdownview?bno=" + board.getBno(); // Redirect to the view page even if there's an
																	// error
		}
	}

	// 수리준비버튼

	@RequestMapping(value = "/updateRepairStatus/{bno}/{status}", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Void> updateRepairStatus(@PathVariable int bno, @PathVariable String status) {
		try {
			this.breakdownboardService.updateRepairStatus(bno, status);
			return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

}
