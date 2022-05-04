package study.projectBG.BG.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import study.projectBG.BG.model.MemberDTO;
import study.projectBG.BG.service.MemberService;

@Controller
public class LoginController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/login")
	public String login() {
		
		return "/map/login";
	}
	
	  @PostMapping("/login")
	 public String login(MemberDTO dto, HttpServletRequest request, RedirectAttributes rttr) {
	  
		  System.out.println(dto.getUser_id());
		  System.out.println(dto.getUser_pw());
		  
		  int result = memberService.login(dto);
		  if(result == 1) {
			  HttpSession session = request.getSession();
				session.setAttribute("user_id", dto.getUser_id());
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
			  
			
		  
//		  System.out.println(result);
		
//		  if(result != null) {
//			  System.out.println("로그인 성공");
//			  return "/map/map";
//		  } else {
//			 System.out.println("없는 아이디 또는 비밀번호");
//			 return "/login";
//		  }
		
		  
//		  if("Success".equals(result)) {
//			  HttpSession session = request.getSession();
//			  session.setAttribute("user_id",dto.getUser_id());
//			  System.out.println("로그인 성공");
//			  return "map/map";
//		  } else {
//			  rttr.addFlashAttribute("msg", false);
//			  System.out.println("로그인 실패");
//			  return "redirect:/login";
//		  }
	  }
}
