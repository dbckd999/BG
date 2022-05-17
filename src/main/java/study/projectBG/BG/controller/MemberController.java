package study.projectBG.BG.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import study.projectBG.BG.model.MemberDTO;
import study.projectBG.BG.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@GetMapping("/memberInsert")
	public String memberInsert() {
		System.out.println("in Memberinsert Controller");
		return "member/memberInsert";
	}
	
	@PostMapping("/memberInsert")
	public String memberInsertProcess(MemberDTO dto) {
		dto.setUser_pw(bCryptPasswordEncoder.encode(dto.getUser_pw()));
		dto.setUser_Rpw(bCryptPasswordEncoder.encode(dto.getUser_Rpw()));
		memberService.memberInsert(dto);
		return "redirect:/map";
	}

	@PostMapping("/check_id")
	@ResponseBody
	public int check_id(@RequestParam("user_id") String user_id) {
		System.out.print("checkid called");
		int checkCount = memberService.check_id(user_id);
		return checkCount;
	}

	@PostMapping("/check_nick")
	@ResponseBody
	public int check_nick(@RequestParam("user_nick") String user_nick) {
		System.out.println("dddd");
		int checkCount = 0;
		checkCount = memberService.check_nick(user_nick);
		return checkCount;
	}

	@PostMapping("/check_email")
	@ResponseBody
	public int check_email(@RequestParam("user_email") String user_email) {
		int checkCount = 0;
		checkCount = memberService.check_email(user_email);
		return checkCount;
	}

	@GetMapping("/delete_fin")
	public String memberDelete(@RequestParam("user_no") String user_no, HttpServletRequest request) {

		System.out.println("user_no");
		memberService.memberDelete(user_no);
		HttpSession session = request.getSession();
		session.invalidate();

		return "map/map";
	}
	
	
	

}