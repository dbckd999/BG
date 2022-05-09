package study.projectBG.BG.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	//testest
	@GetMapping("/")
	public String main() {
		System.out.println("aaa");
		System.out.println("main call");
		System.out.println("bbb");
		return "index";
	}
}
