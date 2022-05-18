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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		MemberDTO dto = memberService.memberRead(user_id);
		System.out.println("dto: " + dto);
		model.addAttribute("dto", dto);
		return "/member/myPage";
	}

	@PostMapping("/memberUpdate")
	public String memberUpdateProcess(MemberDTO dto,HttpServletRequest request, RedirectAttributes rttr) {
		System.out.println(dto.toString());
		dto.setUser_pw(bCryptPasswordEncoder.encode(dto.getUser_pw()));
		dto.setUser_Rpw(bCryptPasswordEncoder.encode(dto.getUser_Rpw()));
		memberService.memberUpdate(dto);
		//수정했을때 로그인세션 다시 넣기 
		HttpSession session = request.getSession();
		dto = memberService.memberRead(dto.getUser_id());
		session.setAttribute("user_id", dto.getUser_id());
		session.setAttribute("user_no", dto.getUser_no());
		session.setAttribute("user_nick", dto.getUser_nick());
		return "redirect:/map";
	}
	
	@PostMapping("/memberDelete")
	public String memberDelete(@RequestParam("user_id") String user_id) {
		memberService.memberDelete(user_id);
		return "redirect:/map";
	}

}