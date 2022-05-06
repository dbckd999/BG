package study.projectBG.BG.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import study.projectBG.BG.model.MemberDTO;
import study.projectBG.BG.service.MemberService;

@Controller
public class MyPageController {

	@Autowired
	private MemberService memberService;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@GetMapping("/myPage")
	public String myPage(String user_id, Model model) {
		System.out.println("11111");
		MemberDTO dto = memberService.memberRead(user_id);
		model.addAttribute("dto", dto);
		return "/map/myPage";

	}

}
