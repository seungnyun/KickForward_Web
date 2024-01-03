package com.jang.biz.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jang.biz.model.Admin;
import com.jang.biz.model.Board;
import com.jang.biz.model.Comment;
import com.jang.biz.model.Criteria;
import com.jang.biz.model.Kick;
import com.jang.biz.model.PageMaker;
import com.jang.biz.model.User;
import com.jang.biz.service.AdminService;
import com.jang.biz.service.BoardService;
import com.jang.biz.service.BreakdownBoardService;
import com.jang.biz.service.KickService;
import com.jang.biz.service.UserService;
import com.jang.biz.session.SessionConst;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@Autowired
	private KickService kickService;

	@Autowired
	private UserService userService;

	@Autowired
	private BoardService boardService;

	@Autowired
	private BreakdownBoardService breakdownboardService;

	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String Home(Model model, HttpSession session) {

		// 세션에서 회원 정보 가져오기
		Admin loginAdmin = (Admin) session.getAttribute(SessionConst.LOGIN_MEMBER);

		// 모델에 회원 정보 추가
		model.addAttribute("loginAdmin", loginAdmin);

		return "admin/home";
	}

	// 관리자 로그인 페이지로 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String adminLogin(Model model) {
		model.addAttribute("admin", new Admin());
		return "admin/login";
	}

	// 관리자 로그인 처리
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String toLogin(@Valid Admin admin, BindingResult result, Model model, HttpServletRequest request) {

		if (result.hasFieldErrors("id") || result.hasFieldErrors("pass")) {
			model.addAllAttributes(result.getModel());
			return "admin/login";
		}

		try {

			Admin loginAdmin = this.adminService.getAdmin(admin.getId());

			System.out.println(loginAdmin);

			if (loginAdmin != null && admin.getPass().equals(loginAdmin.getPass())) {
				model.addAttribute("loginAdmin", loginAdmin);

				// 로그인 성공 처리
				// 세션이 있으면 있는 세션 반환, 없으면 신규 세션을 생성
				HttpSession session = request.getSession();

				// 세션에 로그인 회원 정보 보관
				session.setAttribute(SessionConst.LOGIN_MEMBER, loginAdmin);

				return "redirect:/admin/home";
			} else {
				result.rejectValue("pass", "error.password.admin", "비밀번호가 틀렸습니다.");
				model.addAllAttributes(result.getModel());
				return "admin/login";
			}

		} catch (EmptyResultDataAccessException e) {
			result.rejectValue("id", "error.id.admin", "아이디가 존재하지 않습니다.");
			model.addAllAttributes(result.getModel());
			return "admin/login";
		}

	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String LogOut(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null) { // 세션이 있을 경우
			session.invalidate();// 세션 초기화
		} else {
		}
		return "admin/home";
	}

	
	//홈페이지에서 고객센터 메뉴 클릭시 // 고객센터 페이지로 이동
    @RequestMapping(value = "/support", method = RequestMethod.GET)
    public String gotohelpView(Model model, HttpSession session) {
        // 세션에서 회원 정보 가져오기
        Admin loginAdmin = (Admin) session.getAttribute(SessionConst.LOGIN_MEMBER);

        // 모델에 회원 정보 추가
        model.addAttribute("loginAdmin", loginAdmin);

        return "admin/support";
    }
    
  //홈페이지에서 서비스 메뉴 클릭시 이동
    @RequestMapping(value = "/service", method = RequestMethod.GET)
    public String gotoservice(Model model, HttpSession session) {
        // 세션에서 회원 정보 가져오기
        Admin loginAdmin = (Admin) session.getAttribute(SessionConst.LOGIN_MEMBER);

        // 모델에 회원 정보 추가
        model.addAttribute("loginAdmin", loginAdmin);

        return "admin/service";
    }
    
  //홈페이지에서 팀 메뉴 클릭시 이동
    @RequestMapping(value = "/team", method = RequestMethod.GET)
    public String gototeam(Model model, HttpSession session) {
        // 세션에서 회원 정보 가져오기
    	Admin loginAdmin = (Admin) session.getAttribute(SessionConst.LOGIN_MEMBER);

        // 모델에 회원 정보 추가
        model.addAttribute("loginAdmin", loginAdmin);

        return "admin/team";
    }

 // list-------------------------------------------------------------------------------------------------------------------
 	@RequestMapping(value = "/list", method = RequestMethod.GET)
 	public String list(Model model, Criteria cri, HttpSession session) throws Exception {

 		// 세션에서 회원 정보 가져오기
 		Admin loginAdmin = (Admin) session.getAttribute(SessionConst.LOGIN_MEMBER);

 		List<Board> list = this.boardService.getListPaging(cri);
 		model.addAttribute("list", list);

 		int total = boardService.getTotal(cri);

 		PageMaker pageMake = new PageMaker(cri, total);

 		model.addAttribute("pageMaker", pageMake);

 		// 모델에 회원 정보 추가
 		model.addAttribute("loginAdmin", loginAdmin);

 		return "admin_view__supportview/BoardList";
 	}

 	/// add--------------------------------------------------------------------------------------------------------------------

 	@RequestMapping(value = "/add", method = RequestMethod.GET)
 	public String addForm(Model model, HttpSession session) {

 		// 세션에서 회원 정보 가져오기
 		Admin loginAdmin = (Admin) session.getAttribute(SessionConst.LOGIN_MEMBER);

 		// 모델에 회원 정보 추가
 		model.addAttribute("loginAdmin", loginAdmin);

 		model.addAttribute("board", new Board());
 		return "admin_view__supportview/AddForm";
 	}

 	@RequestMapping(value = "/addSave", method = RequestMethod.POST)
 	public String add(@Valid Board board, BindingResult result, RedirectAttributes rea) throws Exception {

 		if (result.hasErrors()) {
 			rea.addFlashAttribute("board", result.getModel());
 			return "admin_view__supportview/AddForm";
 		}

 		if (this.boardService.addBoard(board) == 1) {
 			rea.addFlashAttribute("message", "신규 등록되었습니다.");
 			return "redirect:list";

 		} else {
 			rea.addFlashAttribute("message", "신규 등록에 실패하였습니다. 확인 후 다시 시도 해주세요");
 			return "redirect:list";
 		}

 	}

 //view--------------------------------------------------------------------------------------------------------------------	

 	@RequestMapping(value = "/view")
 	public String viewform(@RequestParam(value = "bno", required = false, defaultValue = "0") int bno, Model model,
 			HttpSession session) throws Exception {

 		// 세션에서 회원 정보 가져오기
 		Admin loginAdmin = (Admin) session.getAttribute(SessionConst.LOGIN_MEMBER);

 		Board view = this.boardService.getBoard(bno);
 		model.addAttribute("view", view);

 		// 모델에 회원 정보 추가
 		model.addAttribute("loginAdmin", loginAdmin);

 		model.addAttribute("comment", this.boardService.getCommentList((long) bno));

 		return "admin_view__supportview/BoardView";

 	}

 // 게시판 글 삭제-------------------------------------------------------------------------------------------------------------

 	@RequestMapping(value = "/delete", method = RequestMethod.POST)
 	public String delete(@RequestParam(value = "bno", required = false) int bno, RedirectAttributes rea)
 			throws Exception {
 		if (this.boardService.deleteBoard(bno) == 1) {
 			rea.addFlashAttribute("message", "글이 삭제되었습니다.");
 		} else {
 			rea.addFlashAttribute("message", "글 삭제에 실패하였습니다.");
 		}
 		return "redirect:list";
 	}

 	@RequestMapping(value = "/edit", method = RequestMethod.GET)
 	public String editForm(@RequestParam(value = "bno", required = false, defaultValue = "0") int bno, Model model, HttpSession session)
 			throws Exception {
 		
 		// 세션에서 회원 정보 가져오기
 	 	Admin loginAdmin = (Admin) session.getAttribute(SessionConst.LOGIN_MEMBER);
 		Board board = this.boardService.getBoard(bno);
 		model.addAttribute("board", board);
 		// 모델에 회원 정보 추가
 		model.addAttribute("loginAdmin", loginAdmin);
 		model.addAttribute("comment", this.boardService.getCommentList((long) bno));
 		return "admin_view__supportview/BoardEdit";
 	}

 	// Add this method to handle the board edit form submission
 	@RequestMapping(value = "/editSave", method = RequestMethod.POST)
 	public String editSave(@Valid Board board, BindingResult result, RedirectAttributes rea) throws Exception {
 		if (result.hasErrors()) {
 			rea.addFlashAttribute("board", result.getModel());
 			return "admin_view__supportview/BoardEdit";
 		}

 		if (this.boardService.updateBoard(board) == 1) {
 			rea.addFlashAttribute("message", "게시물이 수정되었습니다.");
 			return "redirect:view?bno=" + board.getBno(); // Redirect to the view page after edit
 		} else {
 			rea.addFlashAttribute("message", "게시물 수정에 실패하였습니다. 확인 후 다시 시도 해주세요");
 			return "redirect:view?bno=" + board.getBno(); // Redirect to the view page even if there's an error
 		}
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

	@RequestMapping(value = "/Breakdownlist", method = RequestMethod.GET)
	public String list1(Model model, Criteria cri, HttpSession session) throws Exception {

		// 세션에서 회원 정보 가져오기
		Admin loginAdmin = (Admin) session.getAttribute(SessionConst.LOGIN_MEMBER);

		List<Board> list = this.breakdownboardService.getListPaging(cri);
		model.addAttribute("list", list);

		int total = breakdownboardService.getTotal();

		PageMaker pageMake = new PageMaker(cri, total);

		model.addAttribute("pageMaker", pageMake);

		// 모델에 회원 정보 추가
		model.addAttribute("loginAdmin", loginAdmin);

		return "admin_view__breakdown/BreakdownBoardList";
	}

	@RequestMapping(value = "/Breakdownview")
	public String viewform1(@RequestParam(value = "bno", required = false, defaultValue = "0") int bno, Model model,
			HttpSession session) throws Exception {

		// 세션에서 회원 정보 가져오기
		Admin loginAdmin = (Admin) session.getAttribute(SessionConst.LOGIN_MEMBER);

		Board view = this.breakdownboardService.getBoard(bno);
		model.addAttribute("Breakdownview", view);

		// 모델에 회원 정보 추가
		model.addAttribute("loginAdmin", loginAdmin);

		return "admin_view__breakdown/BreakdownBoardView";
	}

	@RequestMapping(value = "fileDownload.do")
	public void fileDownload4(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// String path = request.getSession().getServletContext().getRealPath("저장경로");

		String filename = request.getParameter("fileName");
		String realFilename = "C:\\Users\\Admin\\Desktop" + filename;
		System.out.println(filename);

		try {
			String browser = request.getHeader("User-Agent");
			// 파일 인코딩
			if (browser.contains("MSIE") || browser.contains("Trident") || browser.contains("Chrome")) {
				filename = URLEncoder.encode(filename, "UTF-8").replaceAll("\\+", "%20");
			} else {
				filename = new String(filename.getBytes("UTF-8"), "ISO-8859-1");
			}
		} catch (UnsupportedEncodingException ex) {
			System.out.println("UnsupportedEncodingException");
		}
		realFilename = "C:\\Users\\Admin\\Desktop" + filename;
		System.out.println(realFilename);
		File file1 = new File(realFilename);
		if (!file1.exists()) {
			return;
		}

		// 파일명 지정
		response.setContentType("application/octer-stream");
		response.setHeader("Content-Transfer-Encoding", "binary;");
		response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
		
		try {
			OutputStream os = response.getOutputStream();
			FileInputStream fis = new FileInputStream(realFilename);

			int ncount = 0;
			byte[] bytes = new byte[512];

			while ((ncount = fis.read(bytes)) != -1) {
				os.write(bytes, 0, ncount);
			}
			fis.close();
			os.close();
		} catch (Exception e) {
			System.out.println("FileNotFoundException : " + e);
		}
	}
	
	//수리준비버튼
	
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
