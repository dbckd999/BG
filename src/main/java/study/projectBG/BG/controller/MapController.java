package study.projectBG.BG.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MapController {

	
	@GetMapping("/map")
	public String mainMap() {
		return "/map/map";
	}
	
	@GetMapping("/myPage")
	public String myPage() {

		return "/map/myPage";
	
	}
	
}
