package study.projectBG.BG.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import study.projectBG.BG.model.MemberDTO;
import study.projectBG.BG.service.MemberService;

@Controller
public class LoginController {

	@Autowired
	private MemberService memberService;

	@GetMapping("/login")
	public String login() {
		return "/member/login";
	}

	@PostMapping("/login")
	public String login(MemberDTO dto, HttpServletRequest request, RedirectAttributes rttr) {

		//System.out.println(dto.getUser_id());
		//System.out.println(dto.getUser_pw());
		System.out.println("로그인 할떄 불러오는 dto = "+dto);
		int result = memberService.login(dto);
                        		             
		
		if(result == 1) {
			HttpSession session = request.getSession();
		   dto = memberService.memberRead(dto.getUser_id());
			session.setAttribute("user_id", dto.getUser_id());
	       session.setAttribute("user_nick", dto.getUser_nick());
	     
	       return "map/map";
			
		}; 

		if(result == 0){
			rttr.addFlashAttribute("msgID", false);
			return "redirect:/login";
		}; 

		if(result == -1) {
			rttr.addFlashAttribute("msgPW", false);
			return "redirect:/login";
		} else {
			return "redirect:/login";
		}
	
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "map/map";

	}

}
