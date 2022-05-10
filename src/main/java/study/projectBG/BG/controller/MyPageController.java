package study.projectBG.BG.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import study.projectBG.BG.model.MemberDTO;
import study.projectBG.BG.service.MemberService;

@Controller
public class MyPageController {

	@Autowired
	private MemberService memberService;

//	@Autowired
//	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@GetMapping("/myPage")
	public String myPage(String user_id, Model model) {
		MemberDTO dto = memberService.memberRead(user_id);
		System.out.println("dto: " + dto);
		model.addAttribute("dto", dto);
		return "/map/myPage";

	}

	@PostMapping("/memberUpdate")
	public String memberUpdateProcess(MemberDTO dto) {
		System.out.println(dto.toString());
		memberService.memberUpdate(dto);
		return "redirect:/myPage";
	}
	
	@PostMapping("/memberDelete")
	public String memberDelete(@RequestParam("user_id") String user_id) {
		memberService.memberDelete(user_id);
		return "redirect:/map";
	}

}
