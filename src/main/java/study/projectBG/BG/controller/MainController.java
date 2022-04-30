package study.projectBG.BG.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping
	public String main() {
		System.out.println("대충 치명적인 코드");
		System.out.println("main call");
		return "index";
	}
}
